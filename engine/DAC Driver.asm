	save
	!org	0							; z80 Align, handled by the build process
	CPU Z80
	listing purecode

zMixBuffer:		equ 0F00h	; 100h bytes long
zRequestFlag:		equ 0EFFh	; A flag to say when samples are pending
zRequestSample1:	equ 0EFEh	; The ID of the sample to play on channel 1
zRequestSample2:	equ 0EFDh	; The ID of the sample to play on channel 2
zVariablesStart:	equ 0EF0h	; Safety net to catch code overlapping variables

zYM2612_A0:	equ 4000h
zYM2612_D0:	equ 4001h
zYM2612_A1:	equ 4002h
zYM2612_D1:	equ 4003h
zBankRegister:	equ 6000h
zROMWindow:	equ 8000h

zmake68kPtr  function addr,zROMWindow+(addr&7FFFh)
zmake68kBank function addr,(((addr&0FF8000h)/zROMWindow))

; The number of samples to batch at once
zBatchSize:	equ 15

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
	di
	di
	im	1

	; Set up registers for later (these never change)
	ld	b,80h
	ld	de,zYM2612_D0

	exx
	ld	b,(zSampleLookup>>8)&0FFh ; This won't be constant in the future
	ld	de,zMixBuffer+(100h-zBatchSize)&0FFh ; Lag behind the mixer so not to read unfinished samples
	exx

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
	exx			; 4

	ex	af,af'		; 4
zSample1AccumulatorRemainder = $+1
	ld	a,0		; 7 ; Sample advance accumulator remainder
	ex	af,af'		; 4
	; Total: 60

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
	exx			; 4

	ex	af,af'		; 4
zSample2AccumulatorRemainder = $+1
	ld	a,0		; 7 ; Sample advance accumulator remainder
	ex	af,af'		; 4
	; Total: 60

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

; Formula: 108 + 60 + ((78 + 100) * a) + 61 + 108 + 60 + ((95 + 117) * a) + 61 + 27
; 485 + (390 * a)

; Target
;3579545 / 223 = 16052
; Current speed
;(3579545 * 32) / (485 + (390 * 16)) = 17033

PCMEntry macro pSampleRate,pStart,junk
	dw	zmake68kPtr(pStart)			; Pointer into bank
	dw	(pSampleRate*100h)/17033		; Playback increment (8.8 format)
	db	zmake68kBank(pStart)			; Bank value
    endm


zPCM_Table:
	if SMPS_S1DACSamples||SMPS_S2DACSamples
		; Sonic 1 & 2
ptr_dac81:	PCMEntry	 8201, Kick,		MegaPCM_dpcm	; $81	- Kick
ptr_dac82:	PCMEntry	23784, Snare,		MegaPCM_dpcm	; $82	- Snare
ptr_dac85:	PCMEntry	 7328, Timpani,		MegaPCM_dpcm	; $85	- Timpani
ptr_dac88:	PCMEntry	 9635, Timpani,		MegaPCM_dpcm	; $88	- Hi-Timpani
ptr_dac89:	PCMEntry	 8720, Timpani,		MegaPCM_dpcm	; $89	- Mid-Timpani
ptr_dac8A:	PCMEntry	 7138, Timpani,		MegaPCM_dpcm	; $8A	- Low-Timpani
ptr_dac8B:	PCMEntry	 6957, Timpani,		MegaPCM_dpcm	; $8B	- Very Low-Timpani
	endif

	if SMPS_S2DACSamples
		; Sonic 2
ptr_dac83:	PCMEntry	17127, Clap,		MegaPCM_dpcm	; $83	- Clap
ptr_dac84:	PCMEntry	15232, Scratch,		MegaPCM_dpcm	; $84	- Scratch
ptr_dac86:	PCMEntry	13714, Tom,		MegaPCM_dpcm	; $86	- Hi-Tom
ptr_dac87:	PCMEntry	 7426, Bongo,		MegaPCM_dpcm	; $87	- Very Low-Bongo
ptr_dac8C:	PCMEntry	22799, Tom,		MegaPCM_dpcm	; $8C	- Mid-Tom
ptr_dac8D:	PCMEntry	18262, Tom,		MegaPCM_dpcm	; $8D	- Low-Tom
ptr_dac8E:	PCMEntry	15232, Tom,		MegaPCM_dpcm	; $8E	- Floor-Tom
ptr_dac8F:	PCMEntry	15232, Bongo,		MegaPCM_dpcm	; $8F	- Hi-Bongo
ptr_dac90:	PCMEntry	13064, Bongo,		MegaPCM_dpcm	; $90	- Mid-Bongo
ptr_dac91:	PCMEntry	 9806, Bongo,		MegaPCM_dpcm	; $91	- Low-Bongo
	endif

	if SMPS_S3DACSamples||SMPS_SKDACSamples||SMPS_S3DDACSamples
		; Sonic 3 & K & 3D
ptr_dac92:	PCMEntry	19090, SnareS3,		MegaPCM_dpcm	; $92	- Snare (S3)
ptr_dac93:	PCMEntry	11274, TomS3,		MegaPCM_dpcm	; $93	- Hi-Tom (S3)
ptr_dac94:	PCMEntry	 9050, TomS3,		MegaPCM_dpcm	; $94	- Mid-Tom (S3)
ptr_dac95:	PCMEntry	 7599, TomS3,		MegaPCM_dpcm	; $95	- Low Tom (S3)
ptr_dac96:	PCMEntry	 6490, TomS3,		MegaPCM_dpcm	; $96	- Floor-Tom (S3)
ptr_dac97:	PCMEntry	19090, KickS3,		MegaPCM_dpcm	; $97	- Kick (S3)
ptr_dac98:	PCMEntry	19090, MuffledSnare,	MegaPCM_dpcm	; $98	- Muffled Snare
ptr_dac99:	PCMEntry	16766, CrashCymbal,	MegaPCM_dpcm	; $99	- Crash Cymbal 
ptr_dac9A:	PCMEntry	13482, RideCymbal,	MegaPCM_dpcm	; $9A	- Ride Cymbal
ptr_dac9B:	PCMEntry	 9050, MetalHit,	MegaPCM_dpcm	; $9B	- Low-Metal Hit
ptr_dac9C:	PCMEntry	 7357, MetalHit,	MegaPCM_dpcm	; $9C	- Metal Hit
ptr_dac9D:	PCMEntry	14945, MetalHit2,	MegaPCM_dpcm	; $9D	- High-Metal Hit
ptr_dac9E:	PCMEntry	12852, MetalHit3,	MegaPCM_dpcm	; $9E	- Higher-Metal Hit
ptr_dac9F:	PCMEntry	10040, MetalHit3,	MegaPCM_dpcm	; $9F	- Mid-Metal Hit
ptr_dacA0:	PCMEntry	14945, ClapS3,		MegaPCM_dpcm	; $A0	- Clap (S3)
ptr_dacA1:	PCMEntry	20513, ElectricTom,	MegaPCM_dpcm	; $A1	- Electric High-Tom
ptr_dacA2:	PCMEntry	15803, ElectricTom,	MegaPCM_dpcm	; $A2	- Electric Mid-Tom
ptr_dacA3:	PCMEntry	13482, ElectricTom,	MegaPCM_dpcm	; $A3	- Electric Low-Tom
ptr_dacA4:	PCMEntry	11274, ElectricTom,	MegaPCM_dpcm	; $A4	- Electric Floor-Tom
ptr_dacA5:	PCMEntry	16766, SnareS32,	MegaPCM_dpcm	; $A5	- Mid-Pitch Snare
ptr_dacA6:	PCMEntry	13482, SnareS32,	MegaPCM_dpcm	; $A6	- Tight Snare
ptr_dacA7:	PCMEntry	11755, SnareS32,	MegaPCM_dpcm	; $A7	- Loose Snare
ptr_dacA8:	PCMEntry	 9687, SnareS32,	MegaPCM_dpcm	; $A8	- Looser Snare
ptr_dacA9:	PCMEntry	12852, TimpaniS3,	MegaPCM_dpcm	; $A9	- Hi-Timpani (S3)
ptr_dacAA:	PCMEntry	 9358, TimpaniS3,	MegaPCM_dpcm	; $AA	- Low-Timpani (S3)
ptr_dacAB:	PCMEntry	 8492, TimpaniS3,	MegaPCM_dpcm	; $AB	- Mid-Timpani (S3)
ptr_dacAC:	PCMEntry	12279, SnareS33,	MegaPCM_dpcm	; $AC	- Quick Loose Snare
ptr_dacAD:	PCMEntry	13482, Click,		MegaPCM_dpcm	; $AD	- Click
ptr_dacAE:	PCMEntry	 7998, PowerKick,	MegaPCM_dpcm	; $AE	- Power Kick
ptr_dacAF:	PCMEntry	 7998, QuickGlassCrash,	MegaPCM_dpcm	; $AF	- Quick Glass Crash
	endif

	if SMPS_S3DACSamples||SMPS_SKDACSamples
		; Sonic 3 & K
ptr_dacB0:	PCMEntry	12279, GlassCrashSnare,	MegaPCM_dpcm	; $B0	- Glass Crash Snare
ptr_dacB1:	PCMEntry	12279, GlassCrash,	MegaPCM_dpcm	; $B1	- Glass Crash
ptr_dacB2:	PCMEntry	13482, GlassCrashKick,	MegaPCM_dpcm	; $B2	- Glass Crash Kick
ptr_dacB3:	PCMEntry	13482, QuietGlassCrash,	MegaPCM_dpcm	; $B3	- Quiet Glass Crash
ptr_dacB4:	PCMEntry	 7998, SnareKick,	MegaPCM_dpcm	; $B4	- Snare + Kick
ptr_dacB5:	PCMEntry	 7998, KickBass,	MegaPCM_dpcm	; $B5	- Bassy Kick
ptr_dacB6:	PCMEntry	12279, ComeOn,		MegaPCM_dpcm	; $B6	- "Come On!"
ptr_dacB7:	PCMEntry	14176, DanceSnare,	MegaPCM_dpcm	; $B7	- Dance Snare
ptr_dacB8:	PCMEntry	 7998, LooseKick,	MegaPCM_dpcm	; $B8	- Loose Kick
ptr_dacB9:	PCMEntry	 7998, LooseKick2,	MegaPCM_dpcm	; $B9	- Mod Loose Kick
ptr_dacBA:	PCMEntry	12279, Woo,		MegaPCM_dpcm	; $BA	- "Woo!"
ptr_dacBB:	PCMEntry	13482, Go,		MegaPCM_dpcm	; $BB	- "Go!"
ptr_dacBC:	PCMEntry	11755, SnareGo,		MegaPCM_dpcm	; $BC	- Snare (S3) + "Go!"
ptr_dacBD:	PCMEntry	16766, PowerTom,	MegaPCM_dpcm	; $BD	- Power Tom
ptr_dacBE:	PCMEntry	10420, WoodBlock,	MegaPCM_dpcm	; $BE	- Hi-Wood Block
ptr_dacBF:	PCMEntry	 7998, WoodBlock,	MegaPCM_dpcm	; $BF	- Low-Wood Block
ptr_dacC0:	PCMEntry	14176, HitDrum,		MegaPCM_dpcm	; $C0	- Hi-Hit Drum
ptr_dacC1:	PCMEntry	 9687, HitDrum,		MegaPCM_dpcm	; $C1	- Low-Hit Drum
ptr_dacC2:	PCMEntry	 7998, MetalCrashHit,	MegaPCM_dpcm	; $C2	- Metal Crash Hit
ptr_dacC3:	PCMEntry	 8492, EchoedClapHit,	MegaPCM_dpcm	; $C3	- Echoed Clap Hit
ptr_dacC4:	PCMEntry	 6520, EchoedClapHit,	MegaPCM_dpcm	; $C4	- Lower Echoed Clap Hit
ptr_dacC5:	PCMEntry	12279, HipHopHitKick,	MegaPCM_dpcm	; $C5	- HipHop Hit Kick
ptr_dacC6:	PCMEntry	12279, HipHopPowerKick,	MegaPCM_dpcm	; $C6	- HipHop Hit Power Kick
ptr_dacC7:	PCMEntry	12279, BassHey,		MegaPCM_dpcm	; $C7	- Bass + "Hey!"
ptr_dacC8:	PCMEntry	 7998, DanceStyleKick,	MegaPCM_dpcm	; $C8	- Dance-Style Kick
ptr_dacC9:	PCMEntry	12279, HipHopHitKick2,	MegaPCM_dpcm	; $C9	- HipHop Hit Kick 2
ptr_dacCA:	PCMEntry	 7998, RevFadingWind,	MegaPCM_dpcm	; $CA	- Reverse Fading Wind
ptr_dacCB:	PCMEntry	 7998, ScratchS3,	MegaPCM_dpcm	; $CB	- Scratch (S3)
ptr_dacCC:	PCMEntry	 7998, LooseSnareNoise,	MegaPCM_dpcm	; $CC	- Loose-Snare Noise
ptr_dacCD:	PCMEntry	12279, PowerKick2,	MegaPCM_dpcm	; $CD	- Power Kick 2
ptr_dacCE:	PCMEntry	12279, CrashNoiseWoo,	MegaPCM_dpcm	; $CE	- Crash Noise + "Woo!"
ptr_dacCF:	PCMEntry	 7166, QuickHit,	MegaPCM_dpcm	; $CF	- Quick Hit
ptr_dacD0:	PCMEntry	12852, KickHey,		MegaPCM_dpcm	; $D0	- Kick (S3) + "Hey!"
ptr_dacD1:	PCMEntry	10830, HipHopHitKick,	MegaPCM_dpcm	; $D1	- Power Kick Hit
ptr_dacD2:	PCMEntry	10040, HipHopHitKick,	MegaPCM_dpcm	; $D2	- Low Power Kick Hit
ptr_dacD3:	PCMEntry	 9687, HipHopHitKick,	MegaPCM_dpcm	; $D3	- Lower Power Kick Hit
ptr_dacD4:	PCMEntry	12852, HipHopHitKick,	MegaPCM_dpcm	; $D4	- Lowest Power Kick Hit
	endif

	if SMPS_S3DDACSamples
		; Sonic 3D
ptr_dacD5:	PCMEntry	24104, MetalCrashS3D,	MegaPCM_dpcm	; $D5	- Final Fight Metal Crash
ptr_dacD6:	PCMEntry	 9687, IntroKickS3D,	MegaPCM_dpcm	; $D6	- Intro Kick
	endif

	if SMPS_S3DACSamples
		; Sonic 3
ptr_dacD7:	PCMEntry	 8492, EchoedClapHitS3,	MegaPCM_dpcm	; $D7	- Echoed Clap Hit (S3)
ptr_dacD8:	PCMEntry	 6490, EchoedClapHitS3,	MegaPCM_dpcm	; $D8	- Lower Echoed Clap Hit(S3)
	endif

	if SMPS_SCDACSamples
		; Sonic Crackers
ptr_dacD9:	PCMEntry	 4728, Beat,		MegaPCM_dpcm	; $D9	- Beat
ptr_dacDA:	PCMEntry	13610, SnareSC,		MegaPCM_dpcm	; $DA	- Snare (SC)
ptr_dacDB:	PCMEntry	13610, TimTom,		MegaPCM_dpcm	; $DB	- Hi Timpani/Tom (SC)
ptr_dacDC:	PCMEntry	11363, TimTom,		MegaPCM_dpcm	; $DC	- Mid Timpani/Tom (SC)
ptr_dacDD:	PCMEntry	10497, TimTom,		MegaPCM_dpcm	; $DD	- Low Timpani/Tom (SC)
ptr_dacDE:	PCMEntry	13610, LetsGo,		MegaPCM_dpcm	; $DE	- "Let's Go!"
ptr_dacDF:	PCMEntry	13610, Hey,		MegaPCM_dpcm	; $DF	- "Hey!"
	endif

ptr_dacE0:	PCMEntry	16270, SegaPCM,		MegaPCM_pcm	; $E0	- Sega!

; This converts samples from unsigned to signed (for mixing).
; It will also handle volume levels in the future.
	align 100h
zSampleLookup:
	db	 80h, 81h, 82h, 83h, 84h, 85h, 86h, 87h, 88h, 89h, 8Ah, 8Bh, 8Ch, 8Dh, 8Eh, 8Fh
	db	 90h, 91h, 92h, 93h, 94h, 95h, 96h, 97h, 98h, 99h, 9Ah, 9Bh, 9Ch, 9Dh, 9Eh, 9Fh
	db	0A0h,0A1h,0A2h,0A3h,0A4h,0A5h,0A6h,0A7h,0A8h,0A9h,0AAh,0ABh,0ACh,0ADh,0AEh,0AFh
	db	0B0h,0B1h,0B2h,0B3h,0B4h,0B5h,0B6h,0B7h,0B8h,0B9h,0BAh,0BBh,0BCh,0BDh,0BEh,0BFh
	db	0C0h,0C1h,0C2h,0C3h,0C4h,0C5h,0C6h,0C7h,0C8h,0C9h,0CAh,0CBh,0CCh,0CDh,0CEh,0CFh
	db	0D0h,0D1h,0D2h,0D3h,0D4h,0D5h,0D6h,0D7h,0D8h,0D9h,0DAh,0DBh,0DCh,0DDh,0DEh,0DFh
	db	0E0h,0E1h,0E2h,0E3h,0E4h,0E5h,0E6h,0E7h,0E8h,0E9h,0EAh,0EBh,0ECh,0EDh,0EEh,0EFh
	db	0F0h,0F1h,0F2h,0F3h,0F4h,0F5h,0F6h,0F7h,0F8h,0F9h,0FAh,0FBh,0FCh,0FDh,0FEh,0FFh
	db	 00h, 01h, 02h, 03h, 04h, 05h, 06h, 07h, 08h, 09h, 0Ah, 0Bh, 0Ch, 0Dh, 0Eh, 0Fh
	db	 10h, 11h, 12h, 13h, 14h, 15h, 16h, 17h, 18h, 19h, 1Ah, 1Bh, 1Ch, 1Dh, 1Eh, 1Fh
	db	 20h, 21h, 22h, 23h, 24h, 25h, 26h, 27h, 28h, 29h, 2Ah, 2Bh, 2Ch, 2Dh, 2Eh, 2Fh
	db	 30h, 31h, 32h, 33h, 34h, 35h, 36h, 37h, 38h, 39h, 3Ah, 3Bh, 3Ch, 3Dh, 3Eh, 3Fh
	db	 40h, 41h, 42h, 43h, 44h, 45h, 46h, 47h, 48h, 49h, 4Ah, 4Bh, 4Ch, 4Dh, 4Eh, 4Fh
	db	 50h, 51h, 52h, 53h, 54h, 55h, 56h, 57h, 58h, 59h, 5Ah, 5Bh, 5Ch, 5Dh, 5Eh, 5Fh
	db	 60h, 61h, 62h, 63h, 64h, 65h, 66h, 67h, 68h, 69h, 6Ah, 6Bh, 6Ch, 6Dh, 6Eh, 6Fh
	db	 70h, 71h, 72h, 73h, 74h, 75h, 76h, 77h, 78h, 79h, 7Ah, 7Bh, 7Ch, 7Dh, 7Eh, 7Fh




	if MOMPASS==2
		if $ > zVariablesStart
			fatal "The driver is too big; the maximum size it can take is \{zVariablesStart}h. It currently takes \{$}h bytes. You won't be able to use this thing."
		else
			message "Uncompressed driver size: \{$}h bytes."
		endif
	endif

	restore
	padding off
