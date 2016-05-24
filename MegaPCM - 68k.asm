; ===============================================================
; Mega PCM Driver Include File
; (c) 2012, Vladikcomper
; http://forums.sonicretro.org/index.php?showtopic=29057
; ===============================================================

; ---------------------------------------------------------------
; Driver's code (Kosinski-compressed)
; ---------------------------------------------------------------

Size_of_Mega_PCM_guess = $1D8

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

	include "sound/Sonic 2 Clone Driver v2 - DAC Samples.asm"
