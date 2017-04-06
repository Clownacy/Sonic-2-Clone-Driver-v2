; ---------------------------------------------------------------
; DAC Samples Table
; ---------------------------------------------------------------

MegaPCM_DAC_Table:
	if SMPS_S1DACSamples||SMPS_S2DACSamples
		; Sonic 1 & 2
ptr_dac81:	DAC_Entry	 8201, Kick,		MegaPCM_dpcm|MegaPCM_panLR	; $81	- Kick
ptr_dac82:	DAC_Entry	23784, Snare,		MegaPCM_dpcm|MegaPCM_panLR	; $82	- Snare
ptr_dac85:	DAC_Entry	 7328, Timpani,		MegaPCM_dpcm|MegaPCM_panLR	; $85	- Timpani
ptr_dac88:	DAC_Entry	 9635, Timpani,		MegaPCM_dpcm|MegaPCM_panLR	; $88	- Hi-Timpani
ptr_dac89:	DAC_Entry	 8720, Timpani,		MegaPCM_dpcm|MegaPCM_panLR	; $89	- Mid-Timpani
ptr_dac8A:	DAC_Entry	 7138, Timpani,		MegaPCM_dpcm|MegaPCM_panLR	; $8A	- Low-Timpani
ptr_dac8B:	DAC_Entry	 6957, Timpani,		MegaPCM_dpcm|MegaPCM_panLR	; $8B	- Very Low-Timpani
	endif

	if SMPS_S2DACSamples
		; Sonic 2
ptr_dac83:	DAC_Entry	17127, Clap,		MegaPCM_dpcm|MegaPCM_panLR	; $83	- Clap
ptr_dac84:	DAC_Entry	15232, Scratch,		MegaPCM_dpcm|MegaPCM_panLR	; $84	- Scratch
ptr_dac86:	DAC_Entry	13714, Tom,		MegaPCM_dpcm|MegaPCM_panLR	; $86	- Hi-Tom
ptr_dac87:	DAC_Entry	 7426, Bongo,		MegaPCM_dpcm|MegaPCM_panLR	; $87	- Very Low-Bongo
ptr_dac8C:	DAC_Entry	22799, Tom,		MegaPCM_dpcm|MegaPCM_panLR	; $8C	- Mid-Tom
ptr_dac8D:	DAC_Entry	18262, Tom,		MegaPCM_dpcm|MegaPCM_panLR	; $8D	- Low-Tom
ptr_dac8E:	DAC_Entry	15232, Tom,		MegaPCM_dpcm|MegaPCM_panLR	; $8E	- Floor-Tom
ptr_dac8F:	DAC_Entry	15232, Bongo,		MegaPCM_dpcm|MegaPCM_panLR	; $8F	- Hi-Bongo
ptr_dac90:	DAC_Entry	13064, Bongo,		MegaPCM_dpcm|MegaPCM_panLR	; $90	- Mid-Bongo
ptr_dac91:	DAC_Entry	 9806, Bongo,		MegaPCM_dpcm|MegaPCM_panLR	; $91	- Low-Bongo
	endif

	if SMPS_S3DACSamples||SMPS_SKDACSamples||SMPS_S3DDACSamples
		; Sonic 3 & K & 3D
ptr_dac92:	DAC_Entry	19090, SnareS3,		MegaPCM_dpcm|MegaPCM_panLR	; $92	- Snare (S3)
ptr_dac93:	DAC_Entry	11274, TomS3,		MegaPCM_dpcm|MegaPCM_panLR	; $93	- Hi-Tom (S3)
ptr_dac94:	DAC_Entry	 9050, TomS3,		MegaPCM_dpcm|MegaPCM_panLR	; $94	- Mid-Tom (S3)
ptr_dac95:	DAC_Entry	 7599, TomS3,		MegaPCM_dpcm|MegaPCM_panLR	; $95	- Low Tom (S3)
ptr_dac96:	DAC_Entry	 6490, TomS3,		MegaPCM_dpcm|MegaPCM_panLR	; $96	- Floor-Tom (S3)
ptr_dac97:	DAC_Entry	19090, KickS3,		MegaPCM_dpcm|MegaPCM_panLR	; $97	- Kick (S3)
ptr_dac98:	DAC_Entry	19090, MuffledSnare,	MegaPCM_dpcm|MegaPCM_panLR	; $98	- Muffled Snare
ptr_dac99:	DAC_Entry	16766, CrashCymbal,	MegaPCM_dpcm|MegaPCM_panLR	; $99	- Crash Cymbal 
ptr_dac9A:	DAC_Entry	13482, RideCymbal,	MegaPCM_dpcm|MegaPCM_panLR	; $9A	- Ride Cymbal
ptr_dac9B:	DAC_Entry	 9050, MetalHit,	MegaPCM_dpcm|MegaPCM_panLR	; $9B	- Low-Metal Hit
ptr_dac9C:	DAC_Entry	 7357, MetalHit,	MegaPCM_dpcm|MegaPCM_panLR	; $9C	- Metal Hit
ptr_dac9D:	DAC_Entry	14945, MetalHit2,	MegaPCM_dpcm|MegaPCM_panLR	; $9D	- High-Metal Hit
ptr_dac9E:	DAC_Entry	12852, MetalHit3,	MegaPCM_dpcm|MegaPCM_panLR	; $9E	- Higher-Metal Hit
ptr_dac9F:	DAC_Entry	10040, MetalHit3,	MegaPCM_dpcm|MegaPCM_panLR	; $9F	- Mid-Metal Hit
ptr_dacA0:	DAC_Entry	14945, ClapS3,		MegaPCM_dpcm|MegaPCM_panLR	; $A0	- Clap (S3)
ptr_dacA1:	DAC_Entry	20513, ElectricTom,	MegaPCM_dpcm|MegaPCM_panLR	; $A1	- Electric High-Tom
ptr_dacA2:	DAC_Entry	15803, ElectricTom,	MegaPCM_dpcm|MegaPCM_panLR	; $A2	- Electric Mid-Tom
ptr_dacA3:	DAC_Entry	13482, ElectricTom,	MegaPCM_dpcm|MegaPCM_panLR	; $A3	- Electric Low-Tom
ptr_dacA4:	DAC_Entry	11274, ElectricTom,	MegaPCM_dpcm|MegaPCM_panLR	; $A4	- Electric Floor-Tom
ptr_dacA5:	DAC_Entry	16766, SnareS32,	MegaPCM_dpcm|MegaPCM_panLR	; $A5	- Mid-Pitch Snare
ptr_dacA6:	DAC_Entry	13482, SnareS32,	MegaPCM_dpcm|MegaPCM_panLR	; $A6	- Tight Snare
ptr_dacA7:	DAC_Entry	11755, SnareS32,	MegaPCM_dpcm|MegaPCM_panLR	; $A7	- Loose Snare
ptr_dacA8:	DAC_Entry	 9687, SnareS32,	MegaPCM_dpcm|MegaPCM_panLR	; $A8	- Looser Snare
ptr_dacA9:	DAC_Entry	12852, TimpaniS3,	MegaPCM_dpcm|MegaPCM_panLR	; $A9	- Hi-Timpani (S3)
ptr_dacAA:	DAC_Entry	 9358, TimpaniS3,	MegaPCM_dpcm|MegaPCM_panLR	; $AA	- Low-Timpani (S3)
ptr_dacAB:	DAC_Entry	 8492, TimpaniS3,	MegaPCM_dpcm|MegaPCM_panLR	; $AB	- Mid-Timpani (S3)
ptr_dacAC:	DAC_Entry	12279, SnareS33,	MegaPCM_dpcm|MegaPCM_panLR	; $AC	- Quick Loose Snare
ptr_dacAD:	DAC_Entry	13482, Click,		MegaPCM_dpcm|MegaPCM_panLR	; $AD	- Click
ptr_dacAE:	DAC_Entry	 7998, PowerKick,	MegaPCM_dpcm|MegaPCM_panLR	; $AE	- Power Kick
ptr_dacAF:	DAC_Entry	 7998, QuickGlassCrash,	MegaPCM_dpcm|MegaPCM_panLR	; $AF	- Quick Glass Crash
	endif

	if SMPS_S3DACSamples||SMPS_SKDACSamples
		; Sonic 3 & K
ptr_dacB0:	DAC_Entry	12279, GlassCrashSnare,	MegaPCM_dpcm|MegaPCM_panLR	; $B0	- Glass Crash Snare
ptr_dacB1:	DAC_Entry	12279, GlassCrash,	MegaPCM_dpcm|MegaPCM_panLR	; $B1	- Glass Crash
ptr_dacB2:	DAC_Entry	13482, GlassCrashKick,	MegaPCM_dpcm|MegaPCM_panLR	; $B2	- Glass Crash Kick
ptr_dacB3:	DAC_Entry	13482, QuietGlassCrash,	MegaPCM_dpcm|MegaPCM_panLR	; $B3	- Quiet Glass Crash
ptr_dacB4:	DAC_Entry	 7998, SnareKick,	MegaPCM_dpcm|MegaPCM_panLR	; $B4	- Snare + Kick
ptr_dacB5:	DAC_Entry	 7998, KickBass,	MegaPCM_dpcm|MegaPCM_panLR	; $B5	- Bassy Kick
ptr_dacB6:	DAC_Entry	12279, ComeOn,		MegaPCM_dpcm|MegaPCM_panLR	; $B6	- "Come On!"
ptr_dacB7:	DAC_Entry	14176, DanceSnare,	MegaPCM_dpcm|MegaPCM_panLR	; $B7	- Dance Snare
ptr_dacB8:	DAC_Entry	 7998, LooseKick,	MegaPCM_dpcm|MegaPCM_panLR	; $B8	- Loose Kick
ptr_dacB9:	DAC_Entry	 7998, LooseKick2,	MegaPCM_dpcm|MegaPCM_panLR	; $B9	- Mod Loose Kick
ptr_dacBA:	DAC_Entry	12279, Woo,		MegaPCM_dpcm|MegaPCM_panLR	; $BA	- "Woo!"
ptr_dacBB:	DAC_Entry	13482, Go,		MegaPCM_dpcm|MegaPCM_panLR	; $BB	- "Go!"
ptr_dacBC:	DAC_Entry	11755, SnareGo,		MegaPCM_dpcm|MegaPCM_panLR	; $BC	- Snare (S3) + "Go!"
ptr_dacBD:	DAC_Entry	16766, PowerTom,	MegaPCM_dpcm|MegaPCM_panLR	; $BD	- Power Tom
ptr_dacBE:	DAC_Entry	10420, WoodBlock,	MegaPCM_dpcm|MegaPCM_panLR	; $BE	- Hi-Wood Block
ptr_dacBF:	DAC_Entry	 7998, WoodBlock,	MegaPCM_dpcm|MegaPCM_panLR	; $BF	- Low-Wood Block
ptr_dacC0:	DAC_Entry	14176, HitDrum,		MegaPCM_dpcm|MegaPCM_panLR	; $C0	- Hi-Hit Drum
ptr_dacC1:	DAC_Entry	 9687, HitDrum,		MegaPCM_dpcm|MegaPCM_panLR	; $C1	- Low-Hit Drum
ptr_dacC2:	DAC_Entry	 7998, MetalCrashHit,	MegaPCM_dpcm|MegaPCM_panLR	; $C2	- Metal Crash Hit
ptr_dacC3:	DAC_Entry	 8492, EchoedClapHit,	MegaPCM_dpcm|MegaPCM_panLR	; $C3	- Echoed Clap Hit
ptr_dacC4:	DAC_Entry	 6520, EchoedClapHit,	MegaPCM_dpcm|MegaPCM_panLR	; $C4	- Lower Echoed Clap Hit
ptr_dacC5:	DAC_Entry	12279, HipHopHitKick,	MegaPCM_dpcm|MegaPCM_panLR	; $C5	- HipHop Hit Kick
ptr_dacC6:	DAC_Entry	12279, HipHopPowerKick,	MegaPCM_dpcm|MegaPCM_panLR	; $C6	- HipHop Hit Power Kick
ptr_dacC7:	DAC_Entry	12279, BassHey,		MegaPCM_dpcm|MegaPCM_panLR	; $C7	- Bass + "Hey!"
ptr_dacC8:	DAC_Entry	 7998, DanceStyleKick,	MegaPCM_dpcm|MegaPCM_panLR	; $C8	- Dance-Style Kick
ptr_dacC9:	DAC_Entry	12279, HipHopHitKick2,	MegaPCM_dpcm|MegaPCM_panLR	; $C9	- HipHop Hit Kick 2
ptr_dacCA:	DAC_Entry	 7998, RevFadingWind,	MegaPCM_dpcm|MegaPCM_panLR	; $CA	- Reverse Fading Wind
ptr_dacCB:	DAC_Entry	 7998, ScratchS3,	MegaPCM_dpcm|MegaPCM_panLR	; $CB	- Scratch (S3)
ptr_dacCC:	DAC_Entry	 7998, LooseSnareNoise,	MegaPCM_dpcm|MegaPCM_panLR	; $CC	- Loose-Snare Noise
ptr_dacCD:	DAC_Entry	12279, PowerKick2,	MegaPCM_dpcm|MegaPCM_panLR	; $CD	- Power Kick 2
ptr_dacCE:	DAC_Entry	12279, CrashNoiseWoo,	MegaPCM_dpcm|MegaPCM_panLR	; $CE	- Crash Noise + "Woo!"
ptr_dacCF:	DAC_Entry	 7166, QuickHit,	MegaPCM_dpcm|MegaPCM_panLR	; $CF	- Quick Hit
ptr_dacD0:	DAC_Entry	12852, KickHey,		MegaPCM_dpcm|MegaPCM_panLR	; $D0	- Kick (S3) + "Hey!"
ptr_dacD1:	DAC_Entry	10830, HipHopHitKick,	MegaPCM_dpcm|MegaPCM_panLR	; $D1	- Power Kick Hit
ptr_dacD2:	DAC_Entry	10040, HipHopHitKick,	MegaPCM_dpcm|MegaPCM_panLR	; $D2	- Low Power Kick Hit
ptr_dacD3:	DAC_Entry	 9687, HipHopHitKick,	MegaPCM_dpcm|MegaPCM_panLR	; $D3	- Lower Power Kick Hit
ptr_dacD4:	DAC_Entry	12852, HipHopHitKick,	MegaPCM_dpcm|MegaPCM_panLR	; $D4	- Lowest Power Kick Hit
	endif

	if SMPS_S3DDACSamples
		; Sonic 3D
ptr_dacD5:	DAC_Entry	24104, MetalCrashS3D,	MegaPCM_dpcm|MegaPCM_panLR	; $D5	- Final Fight Metal Crash
ptr_dacD6:	DAC_Entry	 9687, IntroKickS3D,	MegaPCM_dpcm|MegaPCM_panLR	; $D6	- Intro Kick
	endif

	if SMPS_S3DACSamples
		; Sonic 3
ptr_dacD7:	DAC_Entry	 8492, EchoedClapHitS3,	MegaPCM_dpcm|MegaPCM_panLR	; $D7	- Echoed Clap Hit (S3)
ptr_dacD8:	DAC_Entry	 6490, EchoedClapHitS3,	MegaPCM_dpcm|MegaPCM_panLR	; $D8	- Lower Echoed Clap Hit(S3)	; Clownacy | Good golly, we're close to reaching Mega PCM's limit...
	endif

	if SMPS_SCDACSamples
		; Sonic Crackers
ptr_dacD9:	DAC_Entry	 4728, Beat,		MegaPCM_dpcm|MegaPCM_panLR	; $D9	- Beat
ptr_dacDA:	DAC_Entry	13610, SnareSC,		MegaPCM_dpcm|MegaPCM_panLR	; $DA	- Snare (SC)
ptr_dacDB:	DAC_Entry	13610, TimTom,		MegaPCM_dpcm|MegaPCM_panLR	; $DB	- Hi Timpani/Tom (SC)
ptr_dacDC:	DAC_Entry	11363, TimTom,		MegaPCM_dpcm|MegaPCM_panLR	; $DC	- Mid Timpani/Tom (SC)
ptr_dacDD:	DAC_Entry	10497, TimTom,		MegaPCM_dpcm|MegaPCM_panLR	; $DD	- Low Timpani/Tom (SC)
ptr_dacDE:	DAC_Entry	13610, LetsGo,		MegaPCM_dpcm|MegaPCM_panLR	; $DE	- "Let's Go!"
ptr_dacDF:	DAC_Entry	13610, Hey,		MegaPCM_dpcm|MegaPCM_panLR	; $DF	- "Hey!"	; Clownacy | X_X Extending the DAC range is going to take some creativity...
	endif

ptr_dacE0:	DAC_Entry	16270, SegaPCM,		MegaPCM_pcm|MegaPCM_panLR	; $E0	- Sega!
