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
zBatchSize:	equ 16

; B   - 80h
; C   - Sample advance remainder
; DE  - YM2612 port D0
; HL  - Sample pointer
; SP  - Sample advance quotient

; AF' - Sample advance accumulator remainder
; BC' - Sample lookup table pointer
; DE' - Mixer read pointer
; HL' - Mixer write pointer

zOutputSample macro pAltRegs
    if pAltRegs=0
	exx
    endif

	; Read sample from mix buffer
	ld	a,(de)			; 7
	inc	e			; 4
	; Total: 11

	exx				; 4

	; Convert sample to unsigned and send it to DAC
	xor	b			; 4
	ld	(de),a			; 7
	; Total: 11

    if pAltRegs=1
	exx
    endif
    endm

; 1 - 0 cycles
; pCheckForEnd adds 14 cycles from here on
; 2 - 15 cycles (7+4+4)
; pSample2 adds 17 cycles from here on
; 3 - 29 cycles (7+4+4+7+7)
; 4 - 33 cycles (7+4+4+7+7+4)
; 5 - 37 cycles (7+4+4+7+7+4+4)

zDoIteration macro pSample2,pWriteByte,pCheckForEnd,pOutputIndex
    if pOutputIndex=1
	zOutputSample 0	; 0 cycles
    endif
	; Read byte from cartridge
	ld	a,(hl)			; 7
    if pCheckForEnd=1
	or	a			; 4
	jp	nz,.sample_not_done	; 10
	; Total: 14

	; If we've reached the end of the sample, then mute the channel
	ld	sp,zStack
    if pSample2=1
	call	zSample2Ended
    else
	call	zSample1Ended
    endif
	ld	sp,0

.sample_not_done:
    endif

	exx				; 4

	; Convert sample to signed and perform volume adjustment
	ld	c,a			; 4

    if pOutputIndex=2
	zOutputSample 1	; 15 cycles
    endif

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

    if pOutputIndex=3
	zOutputSample 1	; 29 cycles
    endif

	inc	l			; 4
	; Total: 11

    if pOutputIndex=4
	zOutputSample 1	; 33 cycles
    endif

	exx				; 4

    if pOutputIndex=5
	zOutputSample 0	; 37 cycles
    endif

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
	; Total 37
    endm
	; So...
	;zDoIteration 0,0,0 ; 74
	;zDoIteration 0,0,1 ; 88
	;zDoIteration 1,0,0 ; 91
	;zDoIteration 1,0,1 ; 105



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

	ex	af,af'		; 4
zSample1AccumulatorRemainder = $+1
	ld	a,0		; 7 ; Sample advance accumulator remainder
	ex	af,af'		; 4

	exx			; 4
zSample1Volume = $+1
	ld	b,zSampleLookup>>8	; 7
	exx			; 4

	; Total: 57

	; Process sample 1
	; 130
	zDoIteration 0,0,0,5 ; 74
	; 204
	zDoIteration 0,0,0,0 ; 74
	; 278
	zDoIteration 0,0,0,0 ; 74
	; 352
	zDoIteration 0,0,0,1 ; 74
	; 426
	zDoIteration 0,0,0,0 ; 74
	; 500
	zDoIteration 0,0,0,3 ; 74
	; 574
	zDoIteration 0,0,0,0 ; 74
	; 648
	zDoIteration 0,0,0,0 ; 74
	; 722
	zDoIteration 0,0,0,1 ; 74
	; 796
	zDoIteration 0,0,0,0 ; 74
	; 870
	zDoIteration 0,0,0,2 ; 74
	; 944
	zDoIteration 0,0,0,0 ; 74
	; 1018
	zDoIteration 0,0,0,5 ; 74
	; 1092
	zDoIteration 0,0,0,0 ; 74
	; 1166
	zDoIteration 0,0,0,0 ; 74
	; 1240
	zDoIteration 0,0,0,1 ; 74
	; 1314
	zDoIteration 0,0,0,0 ; 74
	; 1388
	zDoIteration 0,0,0,3 ; 74
	; 1462
	zDoIteration 0,0,0,0 ; 74
	; 1536
	zDoIteration 0,0,0,0 ; 74
	; 1610
	zDoIteration 0,0,0,1 ; 74
	; 1684
	zDoIteration 0,0,0,0 ; 74
	; 1758
	zDoIteration 0,0,0,2 ; 74
	; 1832
	zDoIteration 0,0,0,0 ; 74
	; 1906
	zDoIteration 0,0,0,5 ; 74
	; 1980
	zDoIteration 0,0,0,0 ; 74
	; 2054
	zDoIteration 0,0,0,0 ; 74
	; 2128
	zDoIteration 0,0,0,1 ; 74
	; 2202
	zDoIteration 0,0,0,0 ; 74
	; 2276
	zDoIteration 0,0,0,3 ; 74
	; 2350
	zDoIteration 0,0,0,0 ; 74
	; 2424
	zDoIteration 0,0,1,5 ; 88
	; 2512

	; Save sample 1 data
	ld	(zSample1Pointer),hl		; 16
	ex	af,af'				; 4
	ld	(zSample1AccumulatorRemainder),a	; 13
	ex	af,af'				; 4
	; Total: 37

	; 2549

zSample2SelfModifiedCode:
	; Bankswitch to sample 2
	ld	hl,zBankRegister	; 10
zSample2Bankswitch:
    rept 9
	ld	(hl),h			; 7
    endm
	; Total: 73

	; 2622

	; Bootstrap sample 2
zSample2Pointer = $+1
	ld	hl,zMuteSample	; 10 ; Sample address
zSample2AdvanceRemainder = $+1
	ld	c,0		; 7  ; Sample advance remainder
zSample2AdvanceQuotient = $+1
	ld	sp,0		; 10 ; Sample advance quotient

	; 2649
	;zOutputSample 0 ; Moved below until these offsets are un-hardcoded

	ex	af,af'		; 4
zSample2AccumulatorRemainder = $+1
	ld	a,0		; 7 ; Sample advance accumulator remainder
	ex	af,af'		; 4

	exx			; 4
zSample2Volume = $+1
	ld	b,zSampleLookup>>8	; 7

	ld	a,l		; 4
	sub	zBatchSize*2	; 7  ; Move back to start of this batch's mixer data
	ld	l,a		; 4
	exx			; 4

	; Total: 72

	zOutputSample 0 ; TODO - get rid of me soon

	; Process sample 2
	; 2694
	zDoIteration 1,0,0,0 ; 91
	; 2785
	zDoIteration 1,0,0,3 ; 91
	; 2876
	zDoIteration 1,0,0,0 ; 91
	; 2967
	zDoIteration 1,0,0,3 ; 91
	; 3058
	zDoIteration 1,0,0,0 ; 91
	; 3149
	zDoIteration 1,0,0,3 ; 91
	; 3240
	zDoIteration 1,0,0,0 ; 91
	; 3331
	zDoIteration 1,0,0,3 ; 91
	; 3422
	zDoIteration 1,0,0,0 ; 91
	; 3513
	zDoIteration 1,0,0,2 ; 91
	; 3604
	zDoIteration 1,0,0,0 ; 91
	; 3695
	zDoIteration 1,0,0,2 ; 91
	; 3786
	zDoIteration 1,0,0,0 ; 91
	; 3877
	zDoIteration 1,0,0,2 ; 91
	; 3968
	zDoIteration 1,0,0,0 ; 91
	; 4059
	zDoIteration 1,0,0,2 ; 91
	; 4150
	zDoIteration 1,0,0,0 ; 91
	; 4241
	zDoIteration 1,0,0,1 ; 91
	; 4332
	zDoIteration 1,0,0,0 ; 91
	; 4423
	zDoIteration 1,0,0,1 ; 91
	; 4514
	zDoIteration 1,0,0,0 ; 91
	; 4605
	zDoIteration 1,0,0,1 ; 91
	; 4696
	zDoIteration 1,0,0,0 ; 91
	; 4787
	zDoIteration 1,0,0,1 ; 91
	; 4878
	zDoIteration 1,0,0,0 ; 91
	; 4969
	zDoIteration 1,0,0,1 ; 91
	; 5060
	zDoIteration 1,0,0,0 ; 91
	; 5151
	zDoIteration 1,0,0,1 ; 91
	; 5242
	zDoIteration 1,0,0,5 ; 91
	; 5333
	zDoIteration 1,0,0,0 ; 91
	; 5424
	zDoIteration 1,0,0,5 ; 91
	; 5515
	zDoIteration 1,0,1,0 ; 105
	; 5620

	; Save sample 2 data
	ld	(zSample2Pointer),hl		; 16
	ex	af,af'				; 4
	ld	(zSample2AccumulatorRemainder),a	; 13
	ex	af,af'				; 4
	; Total: 37

	zOutputSample 0

	; Loop if there aren't any commands to process
zRequestFlag:
	or	a			; 4  ; This instruction is self-modified code, and can also be a 'scf'
	jp	nc,zPCMLoop		; 10
	; Total: 27

	;;;;;;;;;;;;;;;;;;;
	; COMMAND HANDLER ;
	;;;;;;;;;;;;;;;;;;;

	ld	a,0B7h	; or a
	ld	(zRequestFlag),a

	ld	sp,zStack

	push	bc
	push	de

	; Check if there's a command for channel 1 waiting
	ld	ix,zSample1SelfModifiedCode
	ld	de,zSample1Bank
	ld	hl,zRequestChannel1
	call	zDoCommand

	; Check if there's a command for channel 2 waiting
	ld	ix,zSample2SelfModifiedCode
	ld	de,zSample2Bank
	ld	hl,zRequestChannel2
	call	zDoCommand

	pop	de
	pop	bc

	jp	zPCMLoop

zDoCommand:
	ld	a,(hl)
	dec	a
	ret	m
	ld	(hl),0

	add	a,a
	ld	(.jump_offset),a
.jump_offset = $+1
	jr	$
	jr	.play_sample	; 01h
	jr	.stop_channel	; 02h

.play_sample:
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

	jr	zChangeBankswitch

.stop_channel:
	; Back-up the channel state to the request struct, allowing them to be resubmitted
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

	ld	(hl),l
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

; Formula: 73 + 57 + ((74 + 96) * (a - 1)) + (74 + 110) + 37 + 73 + 72 + ((91 + 113) * (a - 1)) + (91 + 127) + 37 + 14
; 765 + (374 * a - 1)

; Target
;3579545 / 223 = 16052
; Current speed
;(3579545 * 16 * 2) / (781 + (390 * 15)) = 17274


;(3579545 * 16 * 2) / (721 + (330 * 15)) = 20198
;3579545 / 20198 = 177 (177 cycles between outputs)




	if MOMPASS==2
		if $ > zVariablesStart
			fatal "The driver is too big; the maximum size it can take is \{zVariablesStart}h. It currently takes \{$}h bytes. You won't be able to use this thing."
		else
			message "Uncompressed driver size: \{$}h bytes."
		endif
	endif

	restore
	padding off
