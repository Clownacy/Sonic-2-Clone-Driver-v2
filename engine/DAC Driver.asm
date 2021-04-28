	save
	!org	0							; z80 Align, handled by the build process
	CPU Z80
	listing purecode

zMixBuffer:		equ 0000h	; 100h bytes long - yes, it overwrites the driver's init code (it's not like it will be needed after startup)
zSampleLookup:		equ 1000h
zRequestFlag:		equ 0FFFh	; A flag to say when samples are pending
zRequestSample1:	equ 0FFEh	; The ID of the sample to play on channel 1
zRequestSample2:	equ 0FFDh	; The ID of the sample to play on channel 2
zVariablesStart:	equ 0FFDh	; Safety net to catch code overlapping variables


zYM2612_A0:	equ 4000h
zYM2612_D0:	equ 4001h
zYM2612_A1:	equ 4002h
zYM2612_D1:	equ 4003h
zBankRegister:	equ 6000h
zROMWindow:	equ 8000h

zmake68kPtr  function addr,zROMWindow+(addr&7FFFh)
zmake68kBank function addr,(((addr&0FF8000h)/zROMWindow))

; The number of samples to batch at once
zBatchSize:	equ 18

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

	; Set the sample incrementers to 0
	ld	c,a			; 4
	ld	sp,0			; 10
    if pSample2=1
	ld	(zSample2AdvanceRemainder),a	; 13
	ld	(zSample2AdvanceQuotient),a	; 13
    else
	ld	(zSample1AdvanceRemainder),a	; 13
	ld	(zSample1AdvanceQuotient),a	; 13
    endif
	; Point to a single silent sample
	ld	hl,zMuteSample		; 10
	; Set the current value to silence, to prevent audio popping
	ld	a,80h			; 7
	; Total: 57

.sample_not_done:

	exx				; 4

	; Convert sample to signed (will perform volume adjustment in the future as well)
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

	ld	sp,100h	; The end of zMixBuffer

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

	; Clear the four bytes the stack was using, so the DAC doesn't play garbage data briefly on startup
	ld	c,b	; c and b are 0 now
	push	bc
	push	bc

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
	ld	ix,zPCM_Table
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
	ld	ix,zPCM_Table
	add	ix,de
	add	ix,de
	add	ix,de
	add	ix,de
	add	ix,de
	ex	de,hl

	; Initialise channel 1 for this new sample
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


zMuteSample:
	db	80h	; The transistors that make up this particular byte of memory are going to hate me so much

; Formula: 108 + 67 + ((78 + 100) * a) + 61 + 108 + 67 + ((95 + 117) * a) + 61 + 27
; 499 + (390 * a)

; Target
;3579545 / 223 = 16052
; Current speed
;(3579545 * 18 * 2) / (499 + (390 * 18)) = 17138

PCMEntry macro pSampleRate,pStart
	dw	zmake68kPtr(pStart)			; Pointer into bank
	dw	(pSampleRate*100h)/17138		; Playback increment (8.8 format)
	db	zmake68kBank(pStart)			; Bank value
    endm


zPCM_Table:
	if SMPS_S1DACSamples||SMPS_S2DACSamples
		; Sonic 1 & 2
ptr_dac81:	PCMEntry	 8201, Kick		; $81	- Kick
ptr_dac82:	PCMEntry	23784, Snare		; $82	- Snare
ptr_dac85:	PCMEntry	 7328, Timpani		; $85	- Timpani
ptr_dac88:	PCMEntry	 9635, Timpani		; $88	- Hi-Timpani
ptr_dac89:	PCMEntry	 8720, Timpani		; $89	- Mid-Timpani
ptr_dac8A:	PCMEntry	 7138, Timpani		; $8A	- Low-Timpani
ptr_dac8B:	PCMEntry	 6957, Timpani		; $8B	- Very Low-Timpani
	endif

	if SMPS_S2DACSamples
		; Sonic 2
ptr_dac83:	PCMEntry	17127, Clap		; $83	- Clap
ptr_dac84:	PCMEntry	15232, Scratch		; $84	- Scratch
ptr_dac86:	PCMEntry	13714, Tom		; $86	- Hi-Tom
ptr_dac87:	PCMEntry	 7426, Bongo		; $87	- Very Low-Bongo
ptr_dac8C:	PCMEntry	22799, Tom		; $8C	- Mid-Tom
ptr_dac8D:	PCMEntry	18262, Tom		; $8D	- Low-Tom
ptr_dac8E:	PCMEntry	15232, Tom		; $8E	- Floor-Tom
ptr_dac8F:	PCMEntry	15232, Bongo		; $8F	- Hi-Bongo
ptr_dac90:	PCMEntry	13064, Bongo		; $90	- Mid-Bongo
ptr_dac91:	PCMEntry	 9806, Bongo		; $91	- Low-Bongo
	endif

	if SMPS_S3DACSamples||SMPS_SKDACSamples||SMPS_S3DDACSamples
		; Sonic 3 & K & 3D
ptr_dac92:	PCMEntry	19090, SnareS3		; $92	- Snare (S3)
ptr_dac93:	PCMEntry	11274, TomS3		; $93	- Hi-Tom (S3)
ptr_dac94:	PCMEntry	 9050, TomS3		; $94	- Mid-Tom (S3)
ptr_dac95:	PCMEntry	 7599, TomS3		; $95	- Low Tom (S3)
ptr_dac96:	PCMEntry	 6490, TomS3		; $96	- Floor-Tom (S3)
ptr_dac97:	PCMEntry	19090, KickS3		; $97	- Kick (S3)
ptr_dac98:	PCMEntry	19090, MuffledSnare	; $98	- Muffled Snare
ptr_dac99:	PCMEntry	16766, CrashCymbal	; $99	- Crash Cymbal 
ptr_dac9A:	PCMEntry	13482, RideCymbal	; $9A	- Ride Cymbal
ptr_dac9B:	PCMEntry	 9050, MetalHit		; $9B	- Low-Metal Hit
ptr_dac9C:	PCMEntry	 7357, MetalHit		; $9C	- Metal Hit
ptr_dac9D:	PCMEntry	14945, MetalHit2	; $9D	- High-Metal Hit
ptr_dac9E:	PCMEntry	12852, MetalHit3	; $9E	- Higher-Metal Hit
ptr_dac9F:	PCMEntry	10040, MetalHit3	; $9F	- Mid-Metal Hit
ptr_dacA0:	PCMEntry	14945, ClapS3		; $A0	- Clap (S3)
ptr_dacA1:	PCMEntry	20513, ElectricTom	; $A1	- Electric High-Tom
ptr_dacA2:	PCMEntry	15803, ElectricTom	; $A2	- Electric Mid-Tom
ptr_dacA3:	PCMEntry	13482, ElectricTom	; $A3	- Electric Low-Tom
ptr_dacA4:	PCMEntry	11274, ElectricTom	; $A4	- Electric Floor-Tom
ptr_dacA5:	PCMEntry	16766, SnareS32		; $A5	- Mid-Pitch Snare
ptr_dacA6:	PCMEntry	13482, SnareS32		; $A6	- Tight Snare
ptr_dacA7:	PCMEntry	11755, SnareS32		; $A7	- Loose Snare
ptr_dacA8:	PCMEntry	 9687, SnareS32		; $A8	- Looser Snare
ptr_dacA9:	PCMEntry	12852, TimpaniS3	; $A9	- Hi-Timpani (S3)
ptr_dacAA:	PCMEntry	 9358, TimpaniS3	; $AA	- Low-Timpani (S3)
ptr_dacAB:	PCMEntry	 8492, TimpaniS3	; $AB	- Mid-Timpani (S3)
ptr_dacAC:	PCMEntry	12279, SnareS33		; $AC	- Quick Loose Snare
ptr_dacAD:	PCMEntry	13482, Click		; $AD	- Click
ptr_dacAE:	PCMEntry	 7998, PowerKick	; $AE	- Power Kick
ptr_dacAF:	PCMEntry	 7998, QuickGlassCrash	; $AF	- Quick Glass Crash
	endif

	if SMPS_S3DACSamples||SMPS_SKDACSamples
		; Sonic 3 & K
ptr_dacB0:	PCMEntry	12279, GlassCrashSnare	; $B0	- Glass Crash Snare
ptr_dacB1:	PCMEntry	12279, GlassCrash	; $B1	- Glass Crash
ptr_dacB2:	PCMEntry	13482, GlassCrashKick	; $B2	- Glass Crash Kick
ptr_dacB3:	PCMEntry	13482, QuietGlassCrash	; $B3	- Quiet Glass Crash
ptr_dacB4:	PCMEntry	 7998, SnareKick	; $B4	- Snare + Kick
ptr_dacB5:	PCMEntry	 7998, KickBass		; $B5	- Bassy Kick
ptr_dacB6:	PCMEntry	12279, ComeOn		; $B6	- "Come On!"
ptr_dacB7:	PCMEntry	14176, DanceSnare	; $B7	- Dance Snare
ptr_dacB8:	PCMEntry	 7998, LooseKick	; $B8	- Loose Kick
ptr_dacB9:	PCMEntry	 7998, LooseKick2	; $B9	- Mod Loose Kick
ptr_dacBA:	PCMEntry	12279, Woo		; $BA	- "Woo!"
ptr_dacBB:	PCMEntry	13482, Go		; $BB	- "Go!"
ptr_dacBC:	PCMEntry	11755, SnareGo		; $BC	- Snare (S3) + "Go!"
ptr_dacBD:	PCMEntry	16766, PowerTom		; $BD	- Power Tom
ptr_dacBE:	PCMEntry	10420, WoodBlock	; $BE	- Hi-Wood Block
ptr_dacBF:	PCMEntry	 7998, WoodBlock	; $BF	- Low-Wood Block
ptr_dacC0:	PCMEntry	14176, HitDrum		; $C0	- Hi-Hit Drum
ptr_dacC1:	PCMEntry	 9687, HitDrum		; $C1	- Low-Hit Drum
ptr_dacC2:	PCMEntry	 7998, MetalCrashHit	; $C2	- Metal Crash Hit
ptr_dacC3:	PCMEntry	 8492, EchoedClapHit	; $C3	- Echoed Clap Hit
ptr_dacC4:	PCMEntry	 6520, EchoedClapHit	; $C4	- Lower Echoed Clap Hit
ptr_dacC5:	PCMEntry	12279, HipHopHitKick	; $C5	- HipHop Hit Kick
ptr_dacC6:	PCMEntry	12279, HipHopPowerKick	; $C6	- HipHop Hit Power Kick
ptr_dacC7:	PCMEntry	12279, BassHey		; $C7	- Bass + "Hey!"
ptr_dacC8:	PCMEntry	 7998, DanceStyleKick	; $C8	- Dance-Style Kick
ptr_dacC9:	PCMEntry	12279, HipHopHitKick2	; $C9	- HipHop Hit Kick 2
ptr_dacCA:	PCMEntry	 7998, RevFadingWind	; $CA	- Reverse Fading Wind
ptr_dacCB:	PCMEntry	 7998, ScratchS3	; $CB	- Scratch (S3)
ptr_dacCC:	PCMEntry	 7998, LooseSnareNoise	; $CC	- Loose-Snare Noise
ptr_dacCD:	PCMEntry	12279, PowerKick2	; $CD	- Power Kick 2
ptr_dacCE:	PCMEntry	12279, CrashNoiseWoo	; $CE	- Crash Noise + "Woo!"
ptr_dacCF:	PCMEntry	 7166, QuickHit		; $CF	- Quick Hit
ptr_dacD0:	PCMEntry	12852, KickHey		; $D0	- Kick (S3) + "Hey!"
ptr_dacD1:	PCMEntry	10830, HipHopHitKick	; $D1	- Power Kick Hit
ptr_dacD2:	PCMEntry	10040, HipHopHitKick	; $D2	- Low Power Kick Hit
ptr_dacD3:	PCMEntry	 9687, HipHopHitKick	; $D3	- Lower Power Kick Hit
ptr_dacD4:	PCMEntry	12852, HipHopHitKick	; $D4	- Lowest Power Kick Hit
	endif

	if SMPS_S3DDACSamples
		; Sonic 3D
ptr_dacD5:	PCMEntry	24104, MetalCrashS3D	; $D5	- Final Fight Metal Crash
ptr_dacD6:	PCMEntry	 9687, IntroKickS3D	; $D6	- Intro Kick
	endif

	if SMPS_S3DACSamples
		; Sonic 3
ptr_dacD7:	PCMEntry	 8492, EchoedClapHitS3	; $D7	- Echoed Clap Hit (S3)
ptr_dacD8:	PCMEntry	 6490, EchoedClapHitS3	; $D8	- Lower Echoed Clap Hit(S3)
	endif

	if SMPS_SCDACSamples
		; Sonic Crackers
ptr_dacD9:	PCMEntry	 4728, Beat		; $D9	- Beat
ptr_dacDA:	PCMEntry	13610, SnareSC		; $DA	- Snare (SC)
ptr_dacDB:	PCMEntry	13610, TimTom		; $DB	- Hi Timpani/Tom (SC)
ptr_dacDC:	PCMEntry	11363, TimTom		; $DC	- Mid Timpani/Tom (SC)
ptr_dacDD:	PCMEntry	10497, TimTom		; $DD	- Low Timpani/Tom (SC)
ptr_dacDE:	PCMEntry	13610, LetsGo		; $DE	- "Let's Go!"
ptr_dacDF:	PCMEntry	13610, Hey		; $DF	- "Hey!"
	endif

ptr_dacE0:	PCMEntry	16270, SegaPCM		; $E0	- Sega!





	if MOMPASS==2
		if $ > zVariablesStart
			fatal "The driver is too big; the maximum size it can take is \{zVariablesStart}h. It currently takes \{$}h bytes. You won't be able to use this thing."
		else
			message "Uncompressed driver size: \{$}h bytes."
		endif
	endif

	restore
	padding off
