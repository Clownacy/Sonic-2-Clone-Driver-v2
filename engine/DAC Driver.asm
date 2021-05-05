	save
	!org	0							; z80 Align, handled by the build process
	CPU Z80
	listing purecode

zMixBuffer:		equ 0000h	; 100h bytes long - yes, it overwrites the driver's init code (it's not like it will be needed after startup)
zSampleLookup:		equ 1000h
zRequestChannel1:	equ 0FF0h	; 6 bytes long
zRequestChannel2:	equ 0FF6h	; 6 bytes long
zSample1Bank:		equ 0FFCh
zSample2Bank:		equ 0FFDh
zStack:			equ 0FF0h
zVariablesStart:	equ 0FE0h	; Safety net to catch code overlapping variables


zYM2612_A0:	equ 4000h
zYM2612_D0:	equ 4001h
zYM2612_A1:	equ 4002h
zYM2612_D1:	equ 4003h
zBankRegister:	equ 6001h
zROMWindow:	equ 8000h

zmake68kPtr  function addr,zROMWindow+(addr&7FFFh)
zmake68kBank function addr,(((addr&0FF8000h)/zROMWindow))

; The number of samples to batch at once
zBatchSize:	equ 32

; The number of cycles between zOutputSample macros
zCyclesPerSample:	equ 176

; B   - 80h
; C   - Sample advance remainder
; DE  - YM2612 port D0
; HL  - Sample pointer
; SP  - Sample advance quotient

; AF' - Sample advance accumulator remainder
; BC' - Sample lookup table pointer
; DE' - Mixer read pointer
; HL' - Mixer write pointer

; This is a macro that inserts code to output a sample when a certain number
; of cycles have passed. The 'pCyclesToNextMacro' parameter is the number of
; cycles until the next zCheckOutputSample macro.
zCheckOutputSample macro pAltRegs,pCyclesToNextMacro
	; Get the number of cycles until the next sample is due (relative to this macro)
zCurrentCycleDelta := zNextSampleCycle - zTotalCycles
    if zCurrentCycleDelta < 0
zCurrentCycleDelta := -zCurrentCycleDelta
    endif

	; Get the number of cycles until the next sample is due (relative to the next zCheckOutputSample macro)
zNextCycleDelta := zNextSampleCycle - (zTotalCycles + pCyclesToNextMacro)
    if zNextCycleDelta < 0
zNextCycleDelta := -zNextCycleDelta
    endif

	; If the sample is due closer to this macro than the next, then output a sample now
    if (zCurrentCycleDelta < zNextCycleDelta) && (zSamplesWritten < zBatchSize)
zSamplesWritten := zSamplesWritten + 1
zNextSampleCycle := zNextSampleCycle + zCyclesPerSample	; Move onto the next sample output
	zOutputSample pAltRegs	; Output a sample
    endif

zTotalCycles := zTotalCycles + pCyclesToNextMacro
    endm

; Macro to output a single sample
zOutputSample macro pAltRegs
    if pAltRegs=0
	exx				; 4
    endif

	; Read sample from mix buffer
	ld	a,(de)			; 7
	inc	e			; 4

	exx				; 4

	; Convert sample to unsigned and send it to DAC
	xor	b			; 4
	ld	(de),a			; 7

    if pAltRegs=1
	exx				; 4
    endif
	; Total: 30 cycles
    endm

; Macro to read a single sample from ROM
zDoIteration macro pSample2,pCheckForEnd
    if pCheckForEnd=1
	zCheckOutputSample 0,7+4+10+4+4
    else
	zCheckOutputSample 0,7+4+4
    endif

	; Read byte from cartridge
	ld	a,(hl)			; 7
    if pCheckForEnd=1
	or	a			; 4
	jp	nz,.sample_not_done	; 10

	; If we've reached the end of the sample, then mute the channel
	ld	sp,zStack
    if pSample2=1
	call	zSample2Ended
    else
	call	zSample1Ended
    endif
	ld	sp,0	; Clear sample advance quotient

.sample_not_done:
    endif

	exx				; 4

	; Convert sample to signed and perform volume adjustment
	ld	c,a			; 4
    if pSample2=1
	zCheckOutputSample 1,7+7+10+7
    else
	zCheckOutputSample 1,7+7
    endif
	ld	a,(bc)			; 7

    if pSample2=1
	; Perform mixing and clamping
	add	a,(hl)			; 7
	jp	po,.no_overflow		; 10
	sbc	a,a
	xor	7Fh
.no_overflow:
    endif

	; Write sample to mix buffer
	ld	(hl),a			; 7
	zCheckOutputSample 1,4
	inc	l			; 4

	zCheckOutputSample 1,4

	exx				; 4

	zCheckOutputSample 0,4+4+15+10+4

	; Increment pointer to next sample value
	; (performs nearest-neighbour resampling)
	ex	af,af'			; 4
	add	a,c			; 4
	adc	hl,sp			; 15
	jp	nc,.no_bankswitch	; 10
	ld	sp,zStack
    if pSample2=1
	call	zSample2NextBank
	ld	sp,(zSample2AdvanceQuotient)
    else
	call	zSample1NextBank
	ld	sp,(zSample1AdvanceQuotient)
    endif
.no_bankswitch:
	ex	af,af'			; 4
    endm
	; So...
	;zDoIteration 0,0 ; 74 cycles
	;zDoIteration 0,1 ; 88 cycles
	;zDoIteration 1,0 ; 91 cycles
	;zDoIteration 1,1 ; 105 cycles



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
	ld	b,80h-1		; Index counter

-	dec	de
	ld	a,(hl)	; Get value
	cpl	a	; Invert it
	ld	(de),a	; Send it
	inc	hl
	djnz	-

	; Skip the value at index 00h, leaving it as 0 (silence).
	; This is because 00h in the PCM data marks the end of the sample, and when it's
	; interpreted as a sample, it needs to be silent to prevent strange sounds.
	inc	hl

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
	ld	hl,zMixBuffer	; Mix buffer address
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

zNextSampleCycle := 0
zTotalCycles := 0
zSamplesWritten := 0
	zCheckOutputSample 0,73+53-4

zSample1SelfModifiedCode:
	; Bankswitch to sample 1
	ld	hl,zBankRegister	; 10
zSample1Bankswitch:
    rept 9
	ld	(hl),h			; 7
    endm
	; Total: 73

	; Bootstrap sample 1
zSample1Pointer = $+1
	ld	hl,zMuteSample	; 10 ; Sample address
zSample1AdvanceRemainder = $+1
	ld	c,0		; 7  ; Sample advance remainder
zSample1AdvanceQuotient = $+1
	ld	sp,0		; 10 ; Sample advance quotient

zSample1AccumulatorRemainder = $+1
	ld	a,0		; 7 ; Sample advance accumulator remainder
	ex	af,af'		; 4

	exx			; 4
zSample1Volume = $+1
	ld	b,zSampleLookup>>8	; 7
	zCheckOutputSample 1,4
	exx			; 4

	; Total: 53

	; Process sample 1
    rept zBatchSize-1
	zDoIteration 0,0 ; 74
    endm
	zDoIteration 0,1 ; 88

	zCheckOutputSample 0,16

	; Save sample 1 data
	ld	(zSample1Pointer),hl		; 16
	zCheckOutputSample 0,4+13
	ex	af,af'				; 4
	ld	(zSample1AccumulatorRemainder),a	; 13

	zCheckOutputSample 0,73+68-4-4-7-4

zSample2SelfModifiedCode:
	; Bankswitch to sample 2
	ld	hl,zBankRegister	; 10
zSample2Bankswitch:
    rept 9
	ld	(hl),h			; 7
    endm
	; Total: 73

	; Bootstrap sample 2
zSample2Pointer = $+1
	ld	hl,zMuteSample	; 10 ; Sample address
zSample2AdvanceRemainder = $+1
	ld	c,0		; 7  ; Sample advance remainder
zSample2AdvanceQuotient = $+1
	ld	sp,0		; 10 ; Sample advance quotient

	;zCheckOutputSample 0,XXXX ; Disabled until these offsets are un-hardcoded

zSample2AccumulatorRemainder = $+1
	ld	a,0		; 7 ; Sample advance accumulator remainder
	ex	af,af'		; 4

	exx			; 4
zSample2Volume = $+1
	ld	b,zSampleLookup>>8	; 7

	zCheckOutputSample 1,4+7+4+4

	ld	a,l		; 4
	sub	zBatchSize	; 7  ; Move back to start of this batch's mixer data
	ld	l,a		; 4
	exx			; 4

	; Total: 68

	; Process sample 2
    rept zBatchSize-1
	zDoIteration 1,0 ; 91
    endm
	zDoIteration 1,1 ; 105

	zCheckOutputSample 0,16

	; Save sample 2 data
	ld	(zSample2Pointer),hl		; 16
	zCheckOutputSample 0,4+13
	ex	af,af'				; 4
	ld	(zSample2AccumulatorRemainder),a	; 13

	zCheckOutputSample 0,4+10

	; Loop if there aren't any commands to process
zRequestFlag:
	or	a			; 4  ; This instruction is self-modified code, and can also be a 'scf'
	jp	nc,zPCMLoop		; 10
	; Total: 27

	;;;;;;;;;;;;;;;;;;;
	; COMMAND HANDLER ;
	;;;;;;;;;;;;;;;;;;;

	; Effectively clear the "request flag"
	ld	a,0B7h	; or a
	ld	(zRequestFlag),a

	; We need a working stack for some 'call' instructions
	ld	sp,zStack

	; Back up registers that we'll be overwriting
	push	bc
	push	de

	; Process the waiting channel 1 command
	ld	ix,zSample1SelfModifiedCode
	ld	de,zSample1Bank
	ld	hl,zRequestChannel1
	call	zDoCommand

	; Process the waiting channel 2 command
	ld	ix,zSample2SelfModifiedCode
	ld	de,zSample2Bank
	ld	hl,zRequestChannel2
	call	zDoCommand

	; Restore registers
	pop	de
	pop	bc

	; Return to the PCM playback loop
	jp	zPCMLoop

zDoCommand:
	; Quit if there is no command waiting
	ld	a,(hl)
	dec	a
	ret	m

	; Clear command byte
	ld	(hl),0

	; Jump to the appropriate command handler
	add	a,a
	ld	(.jump_offset),a
.jump_offset = $+1
	jr	$
	jr	.play_sample	; 01h
	jr	.stop_channel	; 02h

.play_sample:
	; Copy data from the request struct to the channel's state variables

	; Copy address high byte
	inc	hl
	ld	a,(hl)
	ld	(ix+zSample1Pointer+1-zSample1SelfModifiedCode),a

	; Copy address low byte
	inc	hl
	ld	a,(hl)
	ld	(ix+zSample1Pointer-zSample1SelfModifiedCode),a

	; Copy advance quotient
	inc	hl
	ld	a,(hl)
	ld	(ix+zSample1AdvanceQuotient-zSample1SelfModifiedCode),a

	; Copy advance remainder
	inc	hl
	ld	a,(hl)
	ld	(ix+zSample1AdvanceRemainder-zSample1SelfModifiedCode),a

	; Clear advance accumulator remainder
	ld	(ix+zSample1AccumulatorRemainder-zSample1SelfModifiedCode),0

	; Copy bank
	inc	hl
	ld	a,(hl)
	ld	(de),a

	; Self-modify the bankswitch code to suit this new bank value
	jr	zChangeBankswitch

.stop_channel:
	; Back-up the channel state to the request struct, allowing it to be resubmitted
	; by a 'play sample' command, allowing the stopped sample to be resumed

	; Copy address high byte
	ld	a,(ix+zSample1Pointer+1-zSample1SelfModifiedCode)
	inc	hl
	ld	(hl),a

	; Copy address low byte
	ld	a,(ix+zSample1Pointer-zSample1SelfModifiedCode)
	inc	hl
	ld	(hl),a

	; Copy bank
	ld	a,(de)
	inc	hl
	inc	hl
	inc	hl
	ld	(hl),a

	; Now stop the channel

	; Point channel to silent sample
	ld	(ix+zSample1Pointer+1-zSample1SelfModifiedCode),zMuteSample&0FFh
	ld	(ix+zSample1Pointer-zSample1SelfModifiedCode),(zMuteSample>>8)&0FFh

	; Stop the channel from advancing past said sample
	xor	a
	ld	(ix+zSample1AdvanceQuotient-zSample1SelfModifiedCode),a
	ld	(ix+zSample1AdvanceRemainder-zSample1SelfModifiedCode),a

	ret

zSample1Ended:
	; Set the sample incrementers to 0
	ld	(zSample1AdvanceRemainder),a
	ld	(zSample1AdvanceQuotient),a
	jr	zSample2Ended.go

zSample2Ended:
	; Set the sample incrementers to 0
	ld	(zSample2AdvanceRemainder),a
	ld	(zSample2AdvanceQuotient),a
.go:
	; Clear sample advance remainder
	ld	c,a
	; Point to a single silent sample
	ld	hl,zMuteSample
	; Set the current value to silence, to prevent audio popping
	ld	a,b	; b is 80h
	ret

zSample1NextBank:
	ex	af,af'
	push	hl
	ld	hl,zSample1Bank
	ld	ix,zSample1SelfModifiedCode
	jr	zSample2NextBank.go

zSample2NextBank:
	ex	af,af'
	push	hl
	; Grab bank value and increment it
	ld	hl,zSample2Bank
	ld	ix,zSample2SelfModifiedCode
.go:
	push	bc
	inc	(hl)
	; Self-modify the bankswitch code to suit the new bank value
	ld	a,(hl)
	call	zChangeBankswitch
	; Switch to the new bank
	ld	a,(hl)
	ld	hl,zBankRegister
	ld	b,8
.loop:
	ld	(hl),a
	rra
	djnz	.loop

	ld	(hl),h
	; Restore backed-up registers
	pop	bc
	pop	hl
	; HL has wrapped around to 0000h, so bump it back to the 68k window
	set	7,h
	ex	af,af'
	ret

zChangeBankswitch:
	ld	b,8
.loop:
	ld	(ix+zSample1Bankswitch-zSample1SelfModifiedCode),74h	; ld (hl),h
	rrca
	jr	nc,.skip
	inc	(ix+zSample1Bankswitch-zSample1SelfModifiedCode)	; ld (hl),l
.skip:
	inc	ix
	djnz	.loop
	ret

zMuteSample:
	db	80h	; The transistors that make up this particular byte of memory are going to hate me so much

zDriverSampleRate = (3579545 * zBatchSize) / (zTotalCycles + zBatchSize * 30)	; 30 is the number of cycles per zOutputSample
zActualCyclesPerSample = zTotalCycles / zBatchSize

	if MOMPASS==2
		; Make sure both channels' self-modified code is aligned
		if zSample1Bankswitch - zSample1SelfModifiedCode <> zSample2Bankswitch - zSample2SelfModifiedCode
			error "zSample1Bankswitch and zSample2Bankswitch are misaligned"
		endif
		if zSample1Pointer - zSample1SelfModifiedCode <> zSample2Pointer - zSample2SelfModifiedCode
			error "zSample1Pointer and zSample2Pointer are misaligned"
		endif
		if zSample1AdvanceRemainder - zSample1SelfModifiedCode <> zSample2AdvanceRemainder - zSample2SelfModifiedCode
			error "zSample1AdvanceRemainder and zSample2AdvanceRemainder are misaligned"
		endif
		if zSample1AdvanceQuotient - zSample1SelfModifiedCode <> zSample2AdvanceQuotient - zSample2SelfModifiedCode
			error "zSample1AdvanceQuotient and zSample2AdvanceQuotient are misaligned"
		endif
		if zSample1AccumulatorRemainder - zSample1SelfModifiedCode <> zSample2AccumulatorRemainder - zSample2SelfModifiedCode
			error "zSample1AccumulatorRemainder and zSample2AccumulatorRemainder are misaligned"
		endif
		if zSample1Volume - zSample1SelfModifiedCode <> zSample2Volume - zSample2SelfModifiedCode
			error "zSample1Volume and zSample2Volume are misaligned"
		endif

		; Make sure the zCyclesPerSample value is correct
		if zCyclesPerSample<>zActualCyclesPerSample
			warning "You need to set zCyclesPerSample to \{zActualCyclesPerSample}h"
		endif

		; Make sure the driver's code isn't too big
		if $ > zVariablesStart
			fatal "The driver is too big; the maximum size it can take is \{zVariablesStart}h. It currently takes \{$}h bytes. You won't be able to use this thing."
		;else
			;message "Uncompressed driver size: \{$}h bytes."
		endif
	endif

	restore
	padding off
