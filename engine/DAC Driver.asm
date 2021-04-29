	save
	!org	0							; z80 Align, handled by the build process
	CPU Z80
	listing purecode

zMixBuffer:		equ 0000h	; 100h bytes long - yes, it overwrites the driver's init code (it's not like it will be needed after startup)
zSampleLookup:		equ 1000h
zRequestFlag:		equ 0FFFh	; A flag to say when samples are pending
zRequestSample1:	equ 0FFEh	; The ID of the sample to play on channel 1
zRequestSample2:	equ 0FFDh	; The ID of the sample to play on channel 2
zStack:			equ 0FF0h
zVariablesStart:	equ 0FE0h	; Safety net to catch code overlapping variables


zYM2612_A0:	equ 4000h
zYM2612_D0:	equ 4001h
zYM2612_A1:	equ 4002h
zYM2612_D1:	equ 4003h
zBankRegister:	equ 6000h
zROMWindow:	equ 8000h

zmake68kPtr  function addr,zROMWindow+(addr&7FFFh)
zmake68kBank function addr,(((addr&0FF8000h)/zROMWindow))

; The number of samples to batch at once
zBatchSize:	equ 24

; B   - 80h
; C   - Sample advance remainder
; DE  - YM2612 port D0
; HL  - Sample pointer
; SP  - Sample advance quotient

; AF' - Sample advance accumulator remainder
; BC' - Sample lookup table pointer
; DE' - Mixer read pointer
; HL' - Mixer write pointer

DoIteration macro pSample2,pWriteByte
	; Read byte from cartridge
	ld	a,(hl)			; 7
	or	a			; 4
	jp	nz,.sample_not_done	; 10
	; Total: 21

	; If we've reached the end of the sample, then mute the channel
	ld	sp,zStack
    if pSample2=1
	call	zSample2Ended
    else
	call	zSample1Ended
    endif
	ld	sp,0

.sample_not_done:

	exx				; 4

	; Convert sample to signed and perform volume adjustment
	ld	c,a			; 4
	ld	a,(bc)			; 7
	; Total: 11

    if pSample2=1
	; Perform mixing and clamping
	add	a,(hl)			; 7
	jp	po,.no_overflow		; 10
	sbc	a,a			; 4
	xor	7Fh			; 7
.no_overflow:
	; Total: 17 best, 28 worse
    endif

	; Write sample to mix buffer
	ld	(hl),a			; 7
	inc	l			; 4
	; Total: 11

    if pWriteByte=1
	; Read sample from mix buffer
	ld	a,(de)			; 7
	inc	e			; 4
	; Total: 11
    endif

	exx				; 4

    if pWriteByte=1
	; Convert sample to unsigned and send it to DAC
	xor	b			; 4
	ld	(de),a			; 7
	; Total: 11
    endif

	; Increment pointer to next sample value
	; (performs nearest-neighbour resampling)
	ex	af,af'			; 4
	add	a,c			; 4
	adc	hl,sp			; 15
	ex	af,af'			; 4
	; Total 27
    endm
	; So...
	; mix = 0, write_byte = 0 - 78
	; mix = 0, write_byte = 1 - 100 - Write occurs around 62 cycles in
	; mix = 1, write_byte = 0 - 95
	; mix = 1, write_byte = 1 - 117 - Write occurs around 79 cycles in
	;DoIteration 0,0 ; 78
	;DoIteration 0,1 ; 100 - Write occurs around 62 cycles in
	;DoIteration 1,0 ; 95
	;DoIteration 1,1 ; 117 - Write occurs around 79 cycles in



;Z80Driver_Start:
zEntryPoint:
	; This code exists *inside* zMixBuffer, and will be overwritten by it

	; Disable interrupts because we don't need them, and set the interrupt mode to a sane value
	di
	di	; Pretty much every Z80 driver does this twice or more and I don't know why
	im	1	; Setting this to anything else is bad (breaks certain early models of Mega Drive)

	ld	sp,zStack

	; Let's build the sample lookup table. This table handles volume
	; control and converting the samples from unsigned to signed.

	; First, we construct the 80h-0FFh values of each volume level
	ld	iy,zVolumeDeltas
	ld	de,zSampleLookup+80h
	ld	b,10h		; Volume level counter

-	push	bc
	ld	hl,0000h	; Volume accumulator (this is 0000h instead of 8000h so that unsigned->signed conversion is achieved)
	ld	b,80h		; Index counter

-	push	bc

	; Send volume value to LUT
	ex	de,hl
	ld	(hl),d
	inc	hl
	ex	de,hl
	; Get delta, and add it to accumulator
	ld	c,(iy+0)
	ld	b,(iy+1)
	add	hl,bc

	pop	bc
	djnz	-

	; Next delta
	inc	iy
	inc	iy
	; Next volume LUT
	ld	bc,80h
	ex	de,hl
	add	hl,bc
	ex	de,hl

	pop	bc
	djnz	--

	; Now we make the 00h-7Fh values (we cheat, and just invert the 80h-0FFh values)
	ld	hl,zSampleLookup+80h	; hl = source
	ld	b,10h		; Volume level counter

-	push	bc
	ld	d,h
	ld	e,l		; de = destination
	ld	b,80h		; Index counter

-	dec	de
	ld	a,(hl)	; Get value
	cpl	a	; Invert it
	ld	(de),a	; Send it
	inc	hl
	djnz	-

	; Next volume LUT
	ld	bc,80h
	add	hl,bc

	pop	bc
	djnz	--

	; We are now done constructing the sample lookup table

	; Set up some registers for later (these never change)
	ld	b,80h
	ld	de,zYM2612_D0

	exx
	ld	de,zMixBuffer+(100h-zBatchSize)&0FFh ; Lag behind the mixer so not to read unfinished samples
	exx

	jp	zPCMLoop

zVolumeDeltas:
	; Non-linear volume curve (logarithmic?).
	; Fun fact: if you remove the unsigned->signed conversion, and make this delta table linear,
	; then the generated table will exactly match the one from SMPS 32X's DAC driver. Indeed, that
	; table is what this code was originally designed to produce: I've just modified it since.
	dw	100h*100h/100h, 0F0h*0F0h/100h, 0E0h*0E0h/100h, 0D0h*0D0h/100h
	dw	0C0h*0C0h/100h, 0B0h*0B0h/100h, 0A0h*0A0h/100h, 090h*090h/100h
	dw	080h*080h/100h, 070h*070h/100h, 060h*060h/100h, 050h*050h/100h
	dw	040h*040h/100h, 030h*030h/100h, 020h*020h/100h, 010h*010h/100h


	align 100h
zPCMLoop:
	; Bankswitch to sample 1
zSample1Bank = $+1
	ld	a,0			; 7

	ld	hl,zBankRegister	; 10
	ld	(hl),a			; 7
    rept 7
	rra				; 4
	ld	(hl),a			; 7
    endm
	ld	(hl),l			; 7
	; Total: 108

	; Bootstrap sample 1
zSample1Pointer = $+1
	ld	hl,zMuteSample	; 10 ; Sample address
zSample1AdvanceRemainder = $+1
	ld	c,0		; 7  ; Sample advance remainder
zSample1AdvanceQuotient = $+1
	ld	sp,0		; 10 ; Sample advance quotient

	exx			; 4
zSample1MixPointer = $+1
	ld	hl,zMixBuffer	; 10 ; Mix buffer address
zSample1Volume = $+1
	ld	b,zSampleLookup>>8	; 7
	exx			; 4

	ex	af,af'		; 4
zSample1AccumulatorRemainder = $+1
	ld	a,0		; 7 ; Sample advance accumulator remainder
	ex	af,af'		; 4
	; Total: 67

	; Process sample 1
    rept zBatchSize
	DoIteration 0,0 ; 78
	DoIteration 0,1 ; 100 - Write occurs around 62 cycles in
    endm

	; Save sample 1 data
	ld	(zSample1Pointer),hl		; 16
	exx					; 4
	ld	(zSample1MixPointer),hl		; 16
	exx					; 4
	ex	af,af'				; 4
	ld	(zSample1AccumulatorRemainder),a	; 13
	ex	af,af'				; 4
	; Total: 61

	; Bankswitch to sample 2
zSample2Bank = $+1
	ld	a,0			; 7

	ld	hl,zBankRegister	; 10
	ld	(hl),a			; 7
    rept 7
	rra				; 4
	ld	(hl),a			; 7
    endm
	ld	(hl),l			; 7
	; Total: 108

	; Bootstrap sample 2
zSample2Pointer = $+1
	ld	hl,zMuteSample	; 10 ; Sample address
zSample2AdvanceRemainder = $+1
	ld	c,0		; 7  ; Sample advance remainder
zSample2AdvanceQuotient = $+1
	ld	sp,0		; 10 ; Sample advance quotient

	exx			; 4
zSample2MixPointer = $+1
	ld	hl,zMixBuffer	; 10 ; Mix buffer address
zSample2Volume = $+1
	ld	b,zSampleLookup>>8	; 7
	exx			; 4

	ex	af,af'		; 4
zSample2AccumulatorRemainder = $+1
	ld	a,0		; 7 ; Sample advance accumulator remainder
	ex	af,af'		; 4
	; Total: 67

	; Process sample 2
    rept zBatchSize
	DoIteration 1,0 ; 95
	DoIteration 1,1 ; 117 - Write occurs around 79 cycles in
    endm

	; Save sample 2 data
	ld	(zSample2Pointer),hl		; 16
	exx					; 4
	ld	(zSample2MixPointer),hl		; 16
	exx					; 4
	ex	af,af'				; 4
	ld	(zSample2AccumulatorRemainder),a	; 13
	ex	af,af'				; 4
	; Total: 61

	; Loop if there aren't any commands to process
	ld	a,(zRequestFlag)	; 13
	or	a			; 4
	jp	z,zPCMLoop		; 10
	; Total: 27

	xor	a
	ld	(zRequestFlag),a

	; Check if we need to play a new sample on channel 1
	ld	a,(zRequestSample1)
	sub	81h
	jr	c,.no_sample_1

	ld	(zRequestSample1),a

	; Get pointer to PCM metadata
	ex	de,hl
	ld	d,0
	ld	e,a
	ld	ix,zPCMMetadataTable
	add	ix,de
	add	ix,de
	add	ix,de
	add	ix,de
	add	ix,de
	ex	de,hl

	; Initialise channel 1 for this new sample
	ld	l,(ix+0)
	ld	h,(ix+1)
	ld	(zSample1Pointer),hl
	ld	a,(ix+2)
	ld	(zSample1AdvanceRemainder),a
	ld	a,(ix+3)
	ld	(zSample1AdvanceQuotient),a
	xor	a
	ld	(zSample1AccumulatorRemainder),a
	ld	a,(ix+4)
	ld	(zSample1Bank),a

.no_sample_1:
	; Check if we need to play a new sample on channel 2
	ld	a,(zRequestSample2)
	sub	81h
	jr	c,.no_sample_2

	ld	(zRequestSample2),a

	; Get pointer to PCM metadata
	ex	de,hl
	ld	d,0
	ld	e,a
	ld	ix,zPCMMetadataTable
	add	ix,de
	add	ix,de
	add	ix,de
	add	ix,de
	add	ix,de
	ex	de,hl

	; Initialise channel 2 for this new sample
	ld	l,(ix+0)
	ld	h,(ix+1)
	ld	(zSample2Pointer),hl
	ld	a,(ix+2)
	ld	(zSample2AdvanceRemainder),a
	ld	a,(ix+3)
	ld	(zSample2AdvanceQuotient),a
	xor	a
	ld	(zSample2AccumulatorRemainder),a
	ld	a,(ix+4)
	ld	(zSample2Bank),a

.no_sample_2:
	jp	zPCMLoop

zSample1Ended:
	; Set the sample incrementers to 0
	ld	c,a			; 4
	ld	(zSample1AdvanceRemainder),a	; 13
	ld	(zSample1AdvanceQuotient),a	; 13
	; Point to a single silent sample
	ld	hl,zMuteSample		; 10
	; Set the current value to silence, to prevent audio popping
	ld	a,80h			; 7
	ret

zSample2Ended:
	; Set the sample incrementers to 0
	ld	c,a			; 4
	ld	(zSample2AdvanceRemainder),a	; 13
	ld	(zSample2AdvanceQuotient),a	; 13
	; Point to a single silent sample
	ld	hl,zMuteSample		; 10
	; Set the current value to silence, to prevent audio popping
	ld	a,80h			; 7
	ret

zMuteSample:
	db	80h	; The transistors that make up this particular byte of memory are going to hate me so much

; Formula: 108 + 67 + ((78 + 100) * a) + 61 + 108 + 67 + ((95 + 117) * a) + 61 + 27
; 499 + (390 * a)

; Target
;3579545 / 223 = 16052
; Current speed
;(3579545 * 18 * 2) / (499 + (390 * 18)) = 17138

zPCMEntry macro pSampleRate,pStart
	dw	zmake68kPtr(pStart)			; Pointer into bank
	dw	(pSampleRate*100h)/17138		; Playback increment (8.8 format)
	db	zmake68kBank(pStart)			; Bank value
    endm

	include "Sonic-2-Clone-Driver-v2/DAC Metadata.asm"





	if MOMPASS==2
		if $ > zVariablesStart
			fatal "The driver is too big; the maximum size it can take is \{zVariablesStart}h. It currently takes \{$}h bytes. You won't be able to use this thing."
		else
			message "Uncompressed driver size: \{$}h bytes."
		endif
	endif

	restore
	padding off
