; ---------------------------------------------------------------
; DAC Samples Files
; ---------------------------------------------------------------

DACMetadata macro pSampleRate,pStart
	dc.w	(pStart&$7FFF)|$8000		; Pointer into Z80->68k bank
	dc.w	(pSampleRate*$100)/zDriverSampleRate	; Playback increment (8.8 format)
	dc.b	(pStart&$FF8000)/$8000		; Z80->68k bank index (TODO - tweak this to allow access to the 32X address range?)
    endm

DACMetadataTable:
; The numbers you see are sample rates. If you don't know what those are... get help.
	if SMPS_S1DACSamples||SMPS_S2DACSamples
		; Sonic 1 & 2
ptr_dac81:	DACMetadata	 8201, Kick		; $81	- Kick
ptr_dac82:	DACMetadata	23784, Snare		; $82	- Snare
ptr_dac85:	DACMetadata	 7328, Timpani		; $85	- Timpani
ptr_dac88:	DACMetadata	 9635, Timpani		; $88	- Hi-Timpani
ptr_dac89:	DACMetadata	 8720, Timpani		; $89	- Mid-Timpani
ptr_dac8A:	DACMetadata	 7138, Timpani		; $8A	- Low-Timpani
ptr_dac8B:	DACMetadata	 6957, Timpani		; $8B	- Very Low-Timpani
	endif

	if SMPS_S2DACSamples
		; Sonic 2
ptr_dac83:	DACMetadata	17127, Clap		; $83	- Clap
ptr_dac84:	DACMetadata	15232, Scratch		; $84	- Scratch
ptr_dac86:	DACMetadata	13714, Tom		; $86	- Hi-Tom
ptr_dac87:	DACMetadata	 7426, Bongo		; $87	- Very Low-Bongo
ptr_dac8C:	DACMetadata	22799, Tom		; $8C	- Mid-Tom
ptr_dac8D:	DACMetadata	18262, Tom		; $8D	- Low-Tom
ptr_dac8E:	DACMetadata	15232, Tom		; $8E	- Floor-Tom
ptr_dac8F:	DACMetadata	15232, Bongo		; $8F	- Hi-Bongo
ptr_dac90:	DACMetadata	13064, Bongo		; $90	- Mid-Bongo
ptr_dac91:	DACMetadata	 9806, Bongo		; $91	- Low-Bongo
	endif

	if SMPS_S3DACSamples||SMPS_SKDACSamples||SMPS_S3DDACSamples
		; Sonic 3 & K & 3D
ptr_dac92:	DACMetadata	19090, SnareS3		; $92	- Snare (S3)
ptr_dac93:	DACMetadata	11274, TomS3		; $93	- Hi-Tom (S3)
ptr_dac94:	DACMetadata	 9050, TomS3		; $94	- Mid-Tom (S3)
ptr_dac95:	DACMetadata	 7599, TomS3		; $95	- Low Tom (S3)
ptr_dac96:	DACMetadata	 6490, TomS3		; $96	- Floor-Tom (S3)
ptr_dac97:	DACMetadata	19090, KickS3		; $97	- Kick (S3)
ptr_dac98:	DACMetadata	19090, MuffledSnare	; $98	- Muffled Snare
ptr_dac99:	DACMetadata	16766, CrashCymbal	; $99	- Crash Cymbal 
ptr_dac9A:	DACMetadata	13482, RideCymbal	; $9A	- Ride Cymbal
ptr_dac9B:	DACMetadata	 9050, MetalHit		; $9B	- Low-Metal Hit
ptr_dac9C:	DACMetadata	 7357, MetalHit		; $9C	- Metal Hit
ptr_dac9D:	DACMetadata	14945, MetalHit2	; $9D	- High-Metal Hit
ptr_dac9E:	DACMetadata	12852, MetalHit3	; $9E	- Higher-Metal Hit
ptr_dac9F:	DACMetadata	10040, MetalHit3	; $9F	- Mid-Metal Hit
ptr_dacA0:	DACMetadata	14945, ClapS3		; $A0	- Clap (S3)
ptr_dacA1:	DACMetadata	20513, ElectricTom	; $A1	- Electric High-Tom
ptr_dacA2:	DACMetadata	15803, ElectricTom	; $A2	- Electric Mid-Tom
ptr_dacA3:	DACMetadata	13482, ElectricTom	; $A3	- Electric Low-Tom
ptr_dacA4:	DACMetadata	11274, ElectricTom	; $A4	- Electric Floor-Tom
ptr_dacA5:	DACMetadata	16766, SnareS32		; $A5	- Mid-Pitch Snare
ptr_dacA6:	DACMetadata	13482, SnareS32		; $A6	- Tight Snare
ptr_dacA7:	DACMetadata	11755, SnareS32		; $A7	- Loose Snare
ptr_dacA8:	DACMetadata	 9687, SnareS32		; $A8	- Looser Snare
ptr_dacA9:	DACMetadata	12852, TimpaniS3	; $A9	- Hi-Timpani (S3)
ptr_dacAA:	DACMetadata	 9358, TimpaniS3	; $AA	- Low-Timpani (S3)
ptr_dacAB:	DACMetadata	 8492, TimpaniS3	; $AB	- Mid-Timpani (S3)
ptr_dacAC:	DACMetadata	12279, SnareS33		; $AC	- Quick Loose Snare
ptr_dacAD:	DACMetadata	13482, Click		; $AD	- Click
ptr_dacAE:	DACMetadata	 7998, PowerKick	; $AE	- Power Kick
ptr_dacAF:	DACMetadata	 7998, QuickGlassCrash	; $AF	- Quick Glass Crash
	endif

	if SMPS_S3DACSamples||SMPS_SKDACSamples
		; Sonic 3 & K
ptr_dacB0:	DACMetadata	12279, GlassCrashSnare	; $B0	- Glass Crash Snare
ptr_dacB1:	DACMetadata	12279, GlassCrash	; $B1	- Glass Crash
ptr_dacB2:	DACMetadata	13482, GlassCrashKick	; $B2	- Glass Crash Kick
ptr_dacB3:	DACMetadata	13482, QuietGlassCrash	; $B3	- Quiet Glass Crash
ptr_dacB4:	DACMetadata	 7998, SnareKick	; $B4	- Snare + Kick
ptr_dacB5:	DACMetadata	 7998, KickBass		; $B5	- Bassy Kick
ptr_dacB6:	DACMetadata	12279, ComeOn		; $B6	- "Come On!"
ptr_dacB7:	DACMetadata	14176, DanceSnare	; $B7	- Dance Snare
ptr_dacB8:	DACMetadata	 7998, LooseKick	; $B8	- Loose Kick
ptr_dacB9:	DACMetadata	 7998, LooseKick2	; $B9	- Mod Loose Kick
ptr_dacBA:	DACMetadata	12279, Woo		; $BA	- "Woo!"
ptr_dacBB:	DACMetadata	13482, Go		; $BB	- "Go!"
ptr_dacBC:	DACMetadata	11755, SnareGo		; $BC	- Snare (S3) + "Go!"
ptr_dacBD:	DACMetadata	16766, PowerTom		; $BD	- Power Tom
ptr_dacBE:	DACMetadata	10420, WoodBlock	; $BE	- Hi-Wood Block
ptr_dacBF:	DACMetadata	 7998, WoodBlock	; $BF	- Low-Wood Block
ptr_dacC0:	DACMetadata	14176, HitDrum		; $C0	- Hi-Hit Drum
ptr_dacC1:	DACMetadata	 9687, HitDrum		; $C1	- Low-Hit Drum
ptr_dacC2:	DACMetadata	 7998, MetalCrashHit	; $C2	- Metal Crash Hit
ptr_dacC3:	DACMetadata	 8492, EchoedClapHit	; $C3	- Echoed Clap Hit
ptr_dacC4:	DACMetadata	 6520, EchoedClapHit	; $C4	- Lower Echoed Clap Hit
ptr_dacC5:	DACMetadata	12279, HipHopHitKick	; $C5	- HipHop Hit Kick
ptr_dacC6:	DACMetadata	12279, HipHopPowerKick	; $C6	- HipHop Hit Power Kick
ptr_dacC7:	DACMetadata	12279, BassHey		; $C7	- Bass + "Hey!"
ptr_dacC8:	DACMetadata	 7998, DanceStyleKick	; $C8	- Dance-Style Kick
ptr_dacC9:	DACMetadata	12279, HipHopHitKick2	; $C9	- HipHop Hit Kick 2
ptr_dacCA:	DACMetadata	 7998, RevFadingWind	; $CA	- Reverse Fading Wind
ptr_dacCB:	DACMetadata	 7998, ScratchS3	; $CB	- Scratch (S3)
ptr_dacCC:	DACMetadata	 7998, LooseSnareNoise	; $CC	- Loose-Snare Noise
ptr_dacCD:	DACMetadata	12279, PowerKick2	; $CD	- Power Kick 2
ptr_dacCE:	DACMetadata	12279, CrashNoiseWoo	; $CE	- Crash Noise + "Woo!"
ptr_dacCF:	DACMetadata	 7166, QuickHit		; $CF	- Quick Hit
ptr_dacD0:	DACMetadata	12852, KickHey		; $D0	- Kick (S3) + "Hey!"
ptr_dacD1:	DACMetadata	10830, HipHopHitKick	; $D1	- Power Kick Hit
ptr_dacD2:	DACMetadata	10040, HipHopHitKick	; $D2	- Low Power Kick Hit
ptr_dacD3:	DACMetadata	 9687, HipHopHitKick	; $D3	- Lower Power Kick Hit
ptr_dacD4:	DACMetadata	12852, HipHopHitKick	; $D4	- Lowest Power Kick Hit
	endif

	if SMPS_S3DDACSamples
		; Sonic 3D
ptr_dacD5:	DACMetadata	24104, MetalCrashS3D	; $D5	- Final Fight Metal Crash
ptr_dacD6:	DACMetadata	 9687, IntroKickS3D	; $D6	- Intro Kick
	endif

	if SMPS_S3DACSamples
		; Sonic 3
ptr_dacD7:	DACMetadata	 8492, EchoedClapHitS3	; $D7	- Echoed Clap Hit (S3)
ptr_dacD8:	DACMetadata	 6490, EchoedClapHitS3	; $D8	- Lower Echoed Clap Hit(S3)
	endif

	if SMPS_SCDACSamples
		; Sonic Crackers
ptr_dacD9:	DACMetadata	 4728, Beat		; $D9	- Beat
ptr_dacDA:	DACMetadata	13610, SnareSC		; $DA	- Snare (SC)
ptr_dacDB:	DACMetadata	13610, TimTom		; $DB	- Hi Timpani/Tom (SC)
ptr_dacDC:	DACMetadata	11363, TimTom		; $DC	- Mid Timpani/Tom (SC)
ptr_dacDD:	DACMetadata	10497, TimTom		; $DD	- Low Timpani/Tom (SC)
ptr_dacDE:	DACMetadata	13610, LetsGo		; $DE	- "Let's Go!"
ptr_dacDF:	DACMetadata	13610, Hey		; $DF	- "Hey!"
	endif

ptr_dacE0:	DACMetadata	16270, SegaPCM		; $E0	- Sega!


IncludeDAC macro Path,{INTLABEL}
__LABEL__ label *
	binclude Path
    rept zBatchSize * 2
	dc.b	0 ; 0 marks the end of the sample, but the DAC driver only checks every 32 iterations (multiply it by two for high playback speeds)
    endm
	endm

SegaPCM		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/SegaPCM.pcm"

    if SMPS_S1DACSamples||SMPS_S2DACSamples
Kick		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 1 & 2/Kick.pcm"
Snare		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 1 & 2/Snare.pcm"
Timpani		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 1 & 2/Timpani.pcm"
    endif

    if SMPS_S2DACSamples
Clap		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 1 & 2/Clap.pcm"
Scratch		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 1 & 2/Scratch.pcm"
Tom		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 1 & 2/Tom.pcm"
Bongo		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 1 & 2/Bongo.pcm"
    endif

    if SMPS_S3DACSamples||SMPS_SKDACSamples||SMPS_S3DDACSamples
SnareS3		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/SnareS3.pcm"
TomS3		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/TomS3.pcm"
KickS3		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/KickS3.pcm"
MuffledSnare	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/MuffledSnare.pcm"
CrashCymbal	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/CrashCymbal.pcm"
RideCymbal	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/RideCymbal.pcm"
MetalHit	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/MetalHit.pcm"
MetalHit2	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/MetalHit2.pcm"
MetalHit3	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/MetalHit3.pcm"
ClapS3		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/ClapS3.pcm"
ElectricTom	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/ElectricTom.pcm"
SnareS32	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/SnareS32.pcm"
TimpaniS3	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/TimpaniS3.pcm"
SnareS33	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/SnareS33.pcm"
Click		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/Click.pcm"
PowerKick	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/PowerKick.pcm"
QuickGlassCrash	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/QuickGlassCrash.pcm"
    endif

    if SMPS_S3DACSamples||SMPS_SKDACSamples
GlassCrashSnare	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/GlassCrashSnare.pcm"
GlassCrash	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/GlassCrash.pcm"
GlassCrashKick	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/GlassCrashKick.pcm"
QuietGlassCrash	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/QuietGlassCrash.pcm"
SnareKick	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/SnareKick.pcm"
KickBass	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/KickBass.pcm"
ComeOn		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/ComeOn.pcm"
DanceSnare	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/DanceSnare.pcm"
LooseKick	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/LooseKick.pcm"
LooseKick2	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/LooseKick2.pcm"
Woo		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/Woo.pcm"
Go		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/Go.pcm"
SnareGo		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/SnareGo.pcm"
PowerTom	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/PowerTom.pcm"
WoodBlock	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/WoodBlock.pcm"
HitDrum		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/HitDrum.pcm"
MetalCrashHit	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/MetalCrashHit.pcm"
EchoedClapHit	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/EchoedClapHit.pcm"
HipHopHitKick	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/HipHopHitKick.pcm"
HipHopPowerKick	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/HipHopPowerKick.pcm"
BassHey		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/BassHey.pcm"
DanceStyleKick	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/DanceStyleKick.pcm"
HipHopHitKick2	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/HipHopHitKick2.pcm"
RevFadingWind	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/RevFadingWind.pcm"
ScratchS3	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/ScratchS3.pcm"
LooseSnareNoise	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/LooseSnareNoise.pcm"
PowerKick2	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/PowerKick2.pcm"
CrashNoiseWoo	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/CrashNoiseWoo.pcm"
QuickHit	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/QuickHit.pcm"
KickHey		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/KickHey.pcm"
    endif

    if SMPS_S3DDACSamples
MetalCrashS3D	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/MetalCrashS3D.pcm"
IntroKickS3D	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/IntroKickS3D.pcm"
    endif

    if SMPS_S3DACSamples
EchoedClapHitS3	IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic 3 & K & 3D/EchoedClapHitS3.pcm"
    endif

    if SMPS_SCDACSamples
Beat		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic Crackers/Beat.pcm"
SnareSC		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic Crackers/SnareSC.pcm"
TimTom		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic Crackers/TimTom.pcm"
LetsGo		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic Crackers/LetsGo.pcm"
Hey		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Sonic Crackers/Hey.pcm"
    endif
	even
