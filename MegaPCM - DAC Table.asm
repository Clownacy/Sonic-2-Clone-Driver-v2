; ---------------------------------------------------------------
; DAC Samples Table
; ---------------------------------------------------------------

MegaPCM_DAC_Table:
	if SMPS_S1DACSamples||SMPS_S2DACSamples
		; Sonic 1 & 2
ptr_dac81:	DAC_Entry	17h+2, Kick,		dpcm	; $81	- Kick
ptr_dac82:	DAC_Entry	01h+2, Snare,		dpcm	; $82	- Snare
ptr_dac85:	DAC_Entry	1Bh+2, Timpani,		dpcm	; $85	- Timpani
ptr_dac88:	DAC_Entry	12h+2, Timpani,		dpcm	; $88	- Hi-Timpani
ptr_dac89:	DAC_Entry	15h+2, Timpani,		dpcm	; $89	- Mid-Timpani
ptr_dac8A:	DAC_Entry	1Ch+2, Timpani,		dpcm	; $8A	- Low-Timpani
ptr_dac8B:	DAC_Entry	1Dh+2, Timpani,		dpcm	; $8B	- Very Low-Timpani
	endif

	if SMPS_S2DACSamples
		; Sonic 2
ptr_dac83:	DAC_Entry	06h+2, Clap,		dpcm	; $83	- Clap
ptr_dac84:	DAC_Entry	08h+2, Scratch,		dpcm	; $84	- Scratch
ptr_dac86:	DAC_Entry	0Ah+2, Tom,		dpcm	; $86	- Hi-Tom
ptr_dac87:	DAC_Entry	1Bh+2, Bongo,		dpcm	; $87	- Very Low-Bongo
ptr_dac8C:	DAC_Entry	02h+2, Tom,		dpcm	; $8C	- Mid-Tom
ptr_dac8D:	DAC_Entry	05h+2, Tom,		dpcm	; $8D	- Low-Tom
ptr_dac8E:	DAC_Entry	08h+2, Tom,		dpcm	; $8E	- Floor-Tom
ptr_dac8F:	DAC_Entry	08h+2, Bongo,		dpcm	; $8F	- Hi-Bongo
ptr_dac90:	DAC_Entry	0Bh+2, Bongo,		dpcm	; $90	- Mid-Bongo
ptr_dac91:	DAC_Entry	12h+2, Bongo,		dpcm	; $91	- Low-Bongo
	endif

	if SMPS_S3DACSamples||SMPS_SKDACSamples||SMPS_S3DDACSamples
		; Sonic 3 & K & 3D
ptr_dac92:	DAC_Entry	04h+1, SnareS3,		dpcm	; $92	- Snare (S3)
ptr_dac93:	DAC_Entry	0Eh+1, TomS3,		dpcm	; $93	- Hi-Tom (S3)
ptr_dac94:	DAC_Entry	14h+1, TomS3,		dpcm	; $94	- Mid-Tom (S3)
ptr_dac95:	DAC_Entry	1Ah+1, TomS3,		dpcm	; $95	- Low Tom (S3)
ptr_dac96:	DAC_Entry	20h+1, TomS3,		dpcm	; $96	- Floor-Tom (S3)
ptr_dac97:	DAC_Entry	04h+1, KickS3,		dpcm	; $97	- Kick (S3)
ptr_dac98:	DAC_Entry	04h+1, MuffledSnare,	dpcm	; $98	- Muffled Snare
ptr_dac99:	DAC_Entry	06h+1, CrashCymbal,	dpcm	; $99	- Crash Cymbal 
ptr_dac9A:	DAC_Entry	0Ah+1, RideCymbal,	dpcm	; $9A	- Ride Cymbal
ptr_dac9B:	DAC_Entry	14h+1, MetalHit,	dpcm	; $9B	- Low-Metal Hit
ptr_dac9C:	DAC_Entry	1Bh+1, MetalHit,	dpcm	; $9C	- Metal Hit
ptr_dac9D:	DAC_Entry	08h+1, MetalHit2,	dpcm	; $9D	- High-Metal Hit
ptr_dac9E:	DAC_Entry	0Bh+1, MetalHit3,	dpcm	; $9E	- Higher-Metal Hit
ptr_dac9F:	DAC_Entry	11h+1, MetalHit3,	dpcm	; $9F	- Mid-Metal Hit
ptr_dacA0:	DAC_Entry	08h+1, ClapS3,		dpcm	; $A0	- Clap (S3)
ptr_dacA1:	DAC_Entry	03h+1, ElectricTom,	dpcm	; $A1	- Electric High-Tom
ptr_dacA2:	DAC_Entry	07h+1, ElectricTom,	dpcm	; $A2	- Electric Mid-Tom
ptr_dacA3:	DAC_Entry	0Ah+1, ElectricTom,	dpcm	; $A3	- Electric Low-Tom
ptr_dacA4:	DAC_Entry	0Eh+1, ElectricTom,	dpcm	; $A4	- Electric Floor-Tom
ptr_dacA5:	DAC_Entry	06h+1, SnareS32,	dpcm	; $A5	- Mid-Pitch Snare
ptr_dacA6:	DAC_Entry	0Ah+1, SnareS32,	dpcm	; $A6	- Tight Snare
ptr_dacA7:	DAC_Entry	0Dh+1, SnareS32,	dpcm	; $A7	- Loose Snare
ptr_dacA8:	DAC_Entry	12h+1, SnareS32,	dpcm	; $A8	- Looser Snare
ptr_dacA9:	DAC_Entry	0Bh+1, TimpaniS3,	dpcm	; $A9	- Hi-Timpani (S3)
ptr_dacAA:	DAC_Entry	13h+1, TimpaniS3,	dpcm	; $AA	- Low-Timpani (S3)
ptr_dacAB:	DAC_Entry	16h+1, TimpaniS3,	dpcm	; $AB	- Mid-Timpani (S3)
ptr_dacAC:	DAC_Entry	0Ch+1, SnareS33,	dpcm	; $AC	- Quick Loose Snare
ptr_dacAD:	DAC_Entry	0Ah+1, Click,		dpcm	; $AD	- Click
ptr_dacAE:	DAC_Entry	18h+1, PowerKick,	dpcm	; $AE	- Power Kick
ptr_dacAF:	DAC_Entry	18h+1, QuickGlassCrash,	dpcm	; $AF	- Quick Glass Crash
	endif

	if SMPS_S3DACSamples||SMPS_SKDACSamples
		; Sonic 3 & K
ptr_dacB0:	DAC_Entry	0Ch+1, GlassCrashSnare,	dpcm	; $B0	- Glass Crash Snare
ptr_dacB1:	DAC_Entry	0Ch+1, GlassCrash,	dpcm	; $B1	- Glass Crash
ptr_dacB2:	DAC_Entry	0Ah+1, GlassCrashKick,	dpcm	; $B2	- Glass Crash Kick
ptr_dacB3:	DAC_Entry	0Ah+1, QuietGlassCrash,	dpcm	; $B3	- Quiet Glass Crash
ptr_dacB4:	DAC_Entry	18h+1, SnareKick,	dpcm	; $B4	- Snare + Kick
ptr_dacB5:	DAC_Entry	18h+1, KickBass,	dpcm	; $B5	- Bassy Kick
ptr_dacB6:	DAC_Entry	0Ch+1, ComeOn,		dpcm	; $B6	- "Come On!"
ptr_dacB7:	DAC_Entry	09h+1, DanceSnare,	dpcm	; $B7	- Dance Snare
ptr_dacB8:	DAC_Entry	18h+1, LooseKick,	dpcm	; $B8	- Loose Kick
ptr_dacB9:	DAC_Entry	18h+1, LooseKick2,	dpcm	; $B9	- Mod Loose Kick
ptr_dacBA:	DAC_Entry	0Ch+1, Woo,		dpcm	; $BA	- "Woo!"
ptr_dacBB:	DAC_Entry	0Ah+1, Go,		dpcm	; $BB	- "Go!"
ptr_dacBC:	DAC_Entry	0Dh+1, SnareGo,		dpcm	; $BC	- Snare (S3) + "Go!"
ptr_dacBD:	DAC_Entry	06h+1, PowerTom,	dpcm	; $BD	- Power Tom
ptr_dacBE:	DAC_Entry	10h+1, WoodBlock,	dpcm	; $BE	- Hi-Wood Block
ptr_dacBF:	DAC_Entry	18h+1, WoodBlock,	dpcm	; $BF	- Low-Wood Block
ptr_dacC0:	DAC_Entry	09h+1, HitDrum,		dpcm	; $C0	- Hi-Hit Drum
ptr_dacC1:	DAC_Entry	12h+1, HitDrum,		dpcm	; $C1	- Low-Hit Drum
ptr_dacC2:	DAC_Entry	18h+1, MetalCrashHit,	dpcm	; $C2	- Metal Crash Hit
ptr_dacC3:	DAC_Entry	16h+1, EchoedClapHit,	dpcm	; $C3	- Echoed Clap Hit
ptr_dacC4:	DAC_Entry	20h+1, EchoedClapHit,	dpcm	; $C4	- Lower Echoed Clap Hit
ptr_dacC5:	DAC_Entry	0Ch+1, HipHopHitKick,	dpcm	; $C5	- HipHop Hit Kick
ptr_dacC6:	DAC_Entry	0Ch+1, HipHopPowerKick,	dpcm	; $C6	- HipHop Hit Power Kick
ptr_dacC7:	DAC_Entry	0Ch+1, BassHey,		dpcm	; $C7	- Bass + "Hey!"
ptr_dacC8:	DAC_Entry	18h+1, DanceStyleKick,	dpcm	; $C8	- Dance-Style Kick
ptr_dacC9:	DAC_Entry	0Ch+1, HipHopHitKick2,	dpcm	; $C9	- HipHop Hit Kick 2
ptr_dacCA:	DAC_Entry	18h+1, RevFadingWind,	dpcm	; $CA	- Reverse Fading Wind
ptr_dacCB:	DAC_Entry	18h+1, ScratchS3,	dpcm	; $CB	- Scratch (S3)
ptr_dacCC:	DAC_Entry	18h+1, LooseSnareNoise,	dpcm	; $CC	- Loose-Snare Noise
ptr_dacCD:	DAC_Entry	0Ch+1, PowerKick2,	dpcm	; $CD	- Power Kick 2
ptr_dacCE:	DAC_Entry	0Ch+1, CrashNoiseWoo,	dpcm	; $CE	- Crash Noise + "Woo!"
ptr_dacCF:	DAC_Entry	1Ch+1, QuickHit,	dpcm	; $CF	- Quick Hit
ptr_dacD0:	DAC_Entry	0Bh+1, KickHey,		dpcm	; $D0	- Kick (S3) + "Hey!"
ptr_dacD1:	DAC_Entry	0Fh+1, HipHopHitKick,	dpcm	; $D1	- Power Kick Hit
ptr_dacD2:	DAC_Entry	11h+1, HipHopHitKick,	dpcm	; $D2	- Low Power Kick Hit
ptr_dacD3:	DAC_Entry	12h+1, HipHopHitKick,	dpcm	; $D3	- Lower Power Kick Hit
ptr_dacD4:	DAC_Entry	0Bh+1, HipHopHitKick,	dpcm	; $D4	- Lowest Power Kick Hit
	endif

	if SMPS_S3DDACSamples
		; Sonic 3D
ptr_dacD5:	DAC_Entry	01h+1, MetalCrashS3D,	dpcm	; $D5	- Final Fight Metal Crash
ptr_dacD6:	DAC_Entry	12h+1, IntroKickS3D,	dpcm	; $D6	- Intro Kick
	endif

	if SMPS_S3DACSamples
		; Sonic 3
ptr_dacD7:	DAC_Entry	16h+1, EchoedClapHitS3,	dpcm	; $D7	- Echoed Clap Hit (S3)
ptr_dacD8:	DAC_Entry	20h+1, EchoedClapHitS3,	dpcm	; $D8	- Lower Echoed Clap Hit(S3)	; Clownacy | Good golly, we're close to reaching Mega PCM's limit...
	endif

	if SMPS_SCDACSamples
		; Sonic Crackers
ptr_dacD9:	DAC_Entry	30h+1, Beat,		dpcm	; $D9	- Beat
ptr_dacDA:	DAC_Entry	0Ah+1, SnareSC,		dpcm	; $DA	- Snare (SC)
ptr_dacDB:	DAC_Entry	0Ah+1, TimTom,		dpcm	; $DB	- Hi Timpani/Tom (SC)
ptr_dacDC:	DAC_Entry	0Eh+1, TimTom,		dpcm	; $DC	- Mid Timpani/Tom (SC)
ptr_dacDD:	DAC_Entry	10h+1, TimTom,		dpcm	; $DD	- Low Timpani/Tom (SC)
ptr_dacDE:	DAC_Entry	0Ah+1, LetsGo,		dpcm	; $DE	- "Let's Go!"
ptr_dacDF:	DAC_Entry	0Ah+1, Hey,		dpcm	; $DF	- "Hey!"	; Clownacy | X_X Extending the DAC range is going to take some creativity...
	endif

	if SMPS_SegaPCM_68k = 0
ptr_dacE0:	DAC_Entry	08h, SegaPCM,		pcm	; $E0	- Sega!
	endif
