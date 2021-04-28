; ---------------------------------------------------------------
; DAC Samples Files
; ---------------------------------------------------------------

IncludeDAC macro Path,{INTLABEL}
__LABEL__ label *
	binclude Path
__LABEL___End label *
;Name:		label *
;Name_End:	label *
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
Beat		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Crackers/Beat.pcm"
SnareSC		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Crackers/SnareSC.pcm"
TimTom		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Crackers/TimTom.pcm"
LetsGo		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Crackers/LetsGo.pcm"
Hey		IncludeDAC "Sonic-2-Clone-Driver-v2/DAC/Crackers/Hey.pcm"
    endif
	even
