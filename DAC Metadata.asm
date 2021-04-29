; The numbers you see are sample rates. If you don't know what those are... get help.

zPCMMetadataTable:
	if SMPS_S1DACSamples||SMPS_S2DACSamples
		; Sonic 1 & 2
ptr_dac81:	zPCMEntry	 8201, Kick		; $81	- Kick
ptr_dac82:	zPCMEntry	23784, Snare		; $82	- Snare
ptr_dac85:	zPCMEntry	 7328, Timpani		; $85	- Timpani
ptr_dac88:	zPCMEntry	 9635, Timpani		; $88	- Hi-Timpani
ptr_dac89:	zPCMEntry	 8720, Timpani		; $89	- Mid-Timpani
ptr_dac8A:	zPCMEntry	 7138, Timpani		; $8A	- Low-Timpani
ptr_dac8B:	zPCMEntry	 6957, Timpani		; $8B	- Very Low-Timpani
	endif

	if SMPS_S2DACSamples
		; Sonic 2
ptr_dac83:	zPCMEntry	17127, Clap		; $83	- Clap
ptr_dac84:	zPCMEntry	15232, Scratch		; $84	- Scratch
ptr_dac86:	zPCMEntry	13714, Tom		; $86	- Hi-Tom
ptr_dac87:	zPCMEntry	 7426, Bongo		; $87	- Very Low-Bongo
ptr_dac8C:	zPCMEntry	22799, Tom		; $8C	- Mid-Tom
ptr_dac8D:	zPCMEntry	18262, Tom		; $8D	- Low-Tom
ptr_dac8E:	zPCMEntry	15232, Tom		; $8E	- Floor-Tom
ptr_dac8F:	zPCMEntry	15232, Bongo		; $8F	- Hi-Bongo
ptr_dac90:	zPCMEntry	13064, Bongo		; $90	- Mid-Bongo
ptr_dac91:	zPCMEntry	 9806, Bongo		; $91	- Low-Bongo
	endif

	if SMPS_S3DACSamples||SMPS_SKDACSamples||SMPS_S3DDACSamples
		; Sonic 3 & K & 3D
ptr_dac92:	zPCMEntry	19090, SnareS3		; $92	- Snare (S3)
ptr_dac93:	zPCMEntry	11274, TomS3		; $93	- Hi-Tom (S3)
ptr_dac94:	zPCMEntry	 9050, TomS3		; $94	- Mid-Tom (S3)
ptr_dac95:	zPCMEntry	 7599, TomS3		; $95	- Low Tom (S3)
ptr_dac96:	zPCMEntry	 6490, TomS3		; $96	- Floor-Tom (S3)
ptr_dac97:	zPCMEntry	19090, KickS3		; $97	- Kick (S3)
ptr_dac98:	zPCMEntry	19090, MuffledSnare	; $98	- Muffled Snare
ptr_dac99:	zPCMEntry	16766, CrashCymbal	; $99	- Crash Cymbal 
ptr_dac9A:	zPCMEntry	13482, RideCymbal	; $9A	- Ride Cymbal
ptr_dac9B:	zPCMEntry	 9050, MetalHit		; $9B	- Low-Metal Hit
ptr_dac9C:	zPCMEntry	 7357, MetalHit		; $9C	- Metal Hit
ptr_dac9D:	zPCMEntry	14945, MetalHit2	; $9D	- High-Metal Hit
ptr_dac9E:	zPCMEntry	12852, MetalHit3	; $9E	- Higher-Metal Hit
ptr_dac9F:	zPCMEntry	10040, MetalHit3	; $9F	- Mid-Metal Hit
ptr_dacA0:	zPCMEntry	14945, ClapS3		; $A0	- Clap (S3)
ptr_dacA1:	zPCMEntry	20513, ElectricTom	; $A1	- Electric High-Tom
ptr_dacA2:	zPCMEntry	15803, ElectricTom	; $A2	- Electric Mid-Tom
ptr_dacA3:	zPCMEntry	13482, ElectricTom	; $A3	- Electric Low-Tom
ptr_dacA4:	zPCMEntry	11274, ElectricTom	; $A4	- Electric Floor-Tom
ptr_dacA5:	zPCMEntry	16766, SnareS32		; $A5	- Mid-Pitch Snare
ptr_dacA6:	zPCMEntry	13482, SnareS32		; $A6	- Tight Snare
ptr_dacA7:	zPCMEntry	11755, SnareS32		; $A7	- Loose Snare
ptr_dacA8:	zPCMEntry	 9687, SnareS32		; $A8	- Looser Snare
ptr_dacA9:	zPCMEntry	12852, TimpaniS3	; $A9	- Hi-Timpani (S3)
ptr_dacAA:	zPCMEntry	 9358, TimpaniS3	; $AA	- Low-Timpani (S3)
ptr_dacAB:	zPCMEntry	 8492, TimpaniS3	; $AB	- Mid-Timpani (S3)
ptr_dacAC:	zPCMEntry	12279, SnareS33		; $AC	- Quick Loose Snare
ptr_dacAD:	zPCMEntry	13482, Click		; $AD	- Click
ptr_dacAE:	zPCMEntry	 7998, PowerKick	; $AE	- Power Kick
ptr_dacAF:	zPCMEntry	 7998, QuickGlassCrash	; $AF	- Quick Glass Crash
	endif

	if SMPS_S3DACSamples||SMPS_SKDACSamples
		; Sonic 3 & K
ptr_dacB0:	zPCMEntry	12279, GlassCrashSnare	; $B0	- Glass Crash Snare
ptr_dacB1:	zPCMEntry	12279, GlassCrash	; $B1	- Glass Crash
ptr_dacB2:	zPCMEntry	13482, GlassCrashKick	; $B2	- Glass Crash Kick
ptr_dacB3:	zPCMEntry	13482, QuietGlassCrash	; $B3	- Quiet Glass Crash
ptr_dacB4:	zPCMEntry	 7998, SnareKick	; $B4	- Snare + Kick
ptr_dacB5:	zPCMEntry	 7998, KickBass		; $B5	- Bassy Kick
ptr_dacB6:	zPCMEntry	12279, ComeOn		; $B6	- "Come On!"
ptr_dacB7:	zPCMEntry	14176, DanceSnare	; $B7	- Dance Snare
ptr_dacB8:	zPCMEntry	 7998, LooseKick	; $B8	- Loose Kick
ptr_dacB9:	zPCMEntry	 7998, LooseKick2	; $B9	- Mod Loose Kick
ptr_dacBA:	zPCMEntry	12279, Woo		; $BA	- "Woo!"
ptr_dacBB:	zPCMEntry	13482, Go		; $BB	- "Go!"
ptr_dacBC:	zPCMEntry	11755, SnareGo		; $BC	- Snare (S3) + "Go!"
ptr_dacBD:	zPCMEntry	16766, PowerTom		; $BD	- Power Tom
ptr_dacBE:	zPCMEntry	10420, WoodBlock	; $BE	- Hi-Wood Block
ptr_dacBF:	zPCMEntry	 7998, WoodBlock	; $BF	- Low-Wood Block
ptr_dacC0:	zPCMEntry	14176, HitDrum		; $C0	- Hi-Hit Drum
ptr_dacC1:	zPCMEntry	 9687, HitDrum		; $C1	- Low-Hit Drum
ptr_dacC2:	zPCMEntry	 7998, MetalCrashHit	; $C2	- Metal Crash Hit
ptr_dacC3:	zPCMEntry	 8492, EchoedClapHit	; $C3	- Echoed Clap Hit
ptr_dacC4:	zPCMEntry	 6520, EchoedClapHit	; $C4	- Lower Echoed Clap Hit
ptr_dacC5:	zPCMEntry	12279, HipHopHitKick	; $C5	- HipHop Hit Kick
ptr_dacC6:	zPCMEntry	12279, HipHopPowerKick	; $C6	- HipHop Hit Power Kick
ptr_dacC7:	zPCMEntry	12279, BassHey		; $C7	- Bass + "Hey!"
ptr_dacC8:	zPCMEntry	 7998, DanceStyleKick	; $C8	- Dance-Style Kick
ptr_dacC9:	zPCMEntry	12279, HipHopHitKick2	; $C9	- HipHop Hit Kick 2
ptr_dacCA:	zPCMEntry	 7998, RevFadingWind	; $CA	- Reverse Fading Wind
ptr_dacCB:	zPCMEntry	 7998, ScratchS3	; $CB	- Scratch (S3)
ptr_dacCC:	zPCMEntry	 7998, LooseSnareNoise	; $CC	- Loose-Snare Noise
ptr_dacCD:	zPCMEntry	12279, PowerKick2	; $CD	- Power Kick 2
ptr_dacCE:	zPCMEntry	12279, CrashNoiseWoo	; $CE	- Crash Noise + "Woo!"
ptr_dacCF:	zPCMEntry	 7166, QuickHit		; $CF	- Quick Hit
ptr_dacD0:	zPCMEntry	12852, KickHey		; $D0	- Kick (S3) + "Hey!"
ptr_dacD1:	zPCMEntry	10830, HipHopHitKick	; $D1	- Power Kick Hit
ptr_dacD2:	zPCMEntry	10040, HipHopHitKick	; $D2	- Low Power Kick Hit
ptr_dacD3:	zPCMEntry	 9687, HipHopHitKick	; $D3	- Lower Power Kick Hit
ptr_dacD4:	zPCMEntry	12852, HipHopHitKick	; $D4	- Lowest Power Kick Hit
	endif

	if SMPS_S3DDACSamples
		; Sonic 3D
ptr_dacD5:	zPCMEntry	24104, MetalCrashS3D	; $D5	- Final Fight Metal Crash
ptr_dacD6:	zPCMEntry	 9687, IntroKickS3D	; $D6	- Intro Kick
	endif

	if SMPS_S3DACSamples
		; Sonic 3
ptr_dacD7:	zPCMEntry	 8492, EchoedClapHitS3	; $D7	- Echoed Clap Hit (S3)
ptr_dacD8:	zPCMEntry	 6490, EchoedClapHitS3	; $D8	- Lower Echoed Clap Hit(S3)
	endif

	if SMPS_SCDACSamples
		; Sonic Crackers
ptr_dacD9:	zPCMEntry	 4728, Beat		; $D9	- Beat
ptr_dacDA:	zPCMEntry	13610, SnareSC		; $DA	- Snare (SC)
ptr_dacDB:	zPCMEntry	13610, TimTom		; $DB	- Hi Timpani/Tom (SC)
ptr_dacDC:	zPCMEntry	11363, TimTom		; $DC	- Mid Timpani/Tom (SC)
ptr_dacDD:	zPCMEntry	10497, TimTom		; $DD	- Low Timpani/Tom (SC)
ptr_dacDE:	zPCMEntry	13610, LetsGo		; $DE	- "Let's Go!"
ptr_dacDF:	zPCMEntry	13610, Hey		; $DF	- "Hey!"
	endif

ptr_dacE0:	zPCMEntry	16270, SegaPCM		; $E0	- Sega!
