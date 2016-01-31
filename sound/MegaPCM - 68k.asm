; ===============================================================
; Mega PCM Driver Include File
; (c) 2012, Vladikcomper
; http://forums.sonicretro.org/index.php?showtopic=29057
; ===============================================================

; ---------------------------------------------------------------
; Driver's code (Kosinski-compressed)
; ---------------------------------------------------------------

Size_of_Mega_PCM_guess = $846

MegaPCM:
	save
	include	"sound/MegaPCM - Z80.asm"
	restore
	padding off
	!org (MegaPCM+Size_of_Mega_PCM_guess)

; ---------------------------------------------------------------
; Macros
; ---------------------------------------------------------------

IncludeDAC macro Name,Extension,Path
Name:		label *
    if ("Path"<>"")
	if ("Extension"="WAV")
		BINCLUDE	"sound/DAC/Path/Name.Extension",$3A
	else
		BINCLUDE	"sound/DAC/Path/Name.Extension"
	endif
    else
	if ("Extension"="WAV")
		BINCLUDE	"sound/DAC/Name.Extension",$3A
	else
		BINCLUDE	"sound/DAC/Name.Extension"
	endif
    endif
Name_End:	label *
	endm

; ---------------------------------------------------------------
; DAC Samples Files
; ---------------------------------------------------------------

;			| Filename	| Extension	| Folder (if any)
    if S1DACSamples|S2DACSamples
	IncludeDAC	Kick,		bin,		Sonic 1 & 2
	IncludeDAC	Snare,		bin,		Sonic 1 & 2
	IncludeDAC	Timpani,	bin,		Sonic 1 & 2
    endif

    if S2DACSamples
	IncludeDAC	Clap,		bin,		Sonic 1 & 2
	IncludeDAC	Scratch,	bin,		Sonic 1 & 2
	IncludeDAC	Tom,		bin,		Sonic 1 & 2
	IncludeDAC	Bongo,		bin,		Sonic 1 & 2
    endif

    if S3DACSamples|SKDACSamples|S3DDACSamples
	IncludeDAC	SnareS3,	bin,		Sonic 3 & K & 3D
	IncludeDAC	TomS3,		bin,		Sonic 3 & K & 3D
	IncludeDAC	KickS3,		bin,		Sonic 3 & K & 3D
	IncludeDAC	MuffledSnare,	bin,		Sonic 3 & K & 3D
	IncludeDAC	CrashCymbal,	bin,		Sonic 3 & K & 3D
	IncludeDAC	RideCymbal,	bin,		Sonic 3 & K & 3D
	IncludeDAC	MetalHit,	bin,		Sonic 3 & K & 3D
	IncludeDAC	MetalHit2,	bin,		Sonic 3 & K & 3D
	IncludeDAC	MetalHit3,	bin,		Sonic 3 & K & 3D
	IncludeDAC	ClapS3,		bin,		Sonic 3 & K & 3D
	IncludeDAC	ElectricTom,	bin,		Sonic 3 & K & 3D
	IncludeDAC	SnareS32,	bin,		Sonic 3 & K & 3D
	IncludeDAC	TimpaniS3,	bin,		Sonic 3 & K & 3D
	IncludeDAC	SnareS33,	bin,		Sonic 3 & K & 3D
	IncludeDAC	Click,		bin,		Sonic 3 & K & 3D
	IncludeDAC	PowerKick,	bin,		Sonic 3 & K & 3D
	IncludeDAC	QuickGlassCrash,bin,		Sonic 3 & K & 3D
    endif

    if S3DACSamples|SKDACSamples
	IncludeDAC	GlassCrashSnare,bin,		Sonic 3 & K & 3D
	IncludeDAC	GlassCrash,	bin,		Sonic 3 & K & 3D
	IncludeDAC	GlassCrashKick,	bin,		Sonic 3 & K & 3D
	IncludeDAC	QuietGlassCrash,bin,		Sonic 3 & K & 3D
	IncludeDAC	SnareKick,	bin,		Sonic 3 & K & 3D
	IncludeDAC	KickBass,	bin,		Sonic 3 & K & 3D
	IncludeDAC	ComeOn,		bin,		Sonic 3 & K & 3D
	IncludeDAC	DanceSnare,	bin,		Sonic 3 & K & 3D
	IncludeDAC	LooseKick,	bin,		Sonic 3 & K & 3D
	IncludeDAC	LooseKick2,	bin,		Sonic 3 & K & 3D
	IncludeDAC	Woo,		bin,		Sonic 3 & K & 3D
	IncludeDAC	Go,		bin,		Sonic 3 & K & 3D
	IncludeDAC	SnareGo,	bin,		Sonic 3 & K & 3D
	IncludeDAC	PowerTom,	bin,		Sonic 3 & K & 3D
	IncludeDAC	WoodBlock,	bin,		Sonic 3 & K & 3D
	IncludeDAC	HitDrum,	bin,		Sonic 3 & K & 3D
	IncludeDAC	MetalCrashHit,	bin,		Sonic 3 & K & 3D
	IncludeDAC	EchoedClapHit,	bin,		Sonic 3 & K & 3D
	IncludeDAC	HipHopHitKick,	bin,		Sonic 3 & K & 3D
	IncludeDAC	HipHopPowerKick,bin,		Sonic 3 & K & 3D
	IncludeDAC	BassHey,	bin,		Sonic 3 & K & 3D
	IncludeDAC	DanceStyleKick,	bin,		Sonic 3 & K & 3D
	IncludeDAC	HipHopHitKick2,	bin,		Sonic 3 & K & 3D
	IncludeDAC	RevFadingWind,	bin,		Sonic 3 & K & 3D
	IncludeDAC	ScratchS3,	bin,		Sonic 3 & K & 3D
	IncludeDAC	LooseSnareNoise,bin,		Sonic 3 & K & 3D
	IncludeDAC	PowerKick2,	bin,		Sonic 3 & K & 3D
	IncludeDAC	CrashNoiseWoo,	bin,		Sonic 3 & K & 3D
	IncludeDAC	QuickHit,	bin,		Sonic 3 & K & 3D
	IncludeDAC	KickHey,	bin,		Sonic 3 & K & 3D
    endif

    if S3DDACSamples
	IncludeDAC	MetalCrashS3D,	bin,		Sonic 3 & K & 3D
	IncludeDAC	IntroKickS3D,	bin,		Sonic 3 & K & 3D
    endif

    if S3DACSamples
	IncludeDAC	EchoedClapHitS3,bin,		Sonic 3 & K & 3D
    endif

    if SCDACSamples
	IncludeDAC	Beat,		bin,		Sonic Crackers
	IncludeDAC	SnareSC,	bin,		Sonic Crackers
	IncludeDAC	TimTom,		bin,		Sonic Crackers
	IncludeDAC	LetsGo,		bin,		Sonic Crackers
	IncludeDAC	Hey,		bin,		Sonic Crackers
    endif
	even
