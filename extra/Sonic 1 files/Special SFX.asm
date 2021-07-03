; ---------------------------------------------------------------------------
; Special SFX macros and constants
; ---------------------------------------------------------------------------
SMPS_SPECIAL_SFX_METADATA macro address,flags
	dc.l	address
	endm

; ---------------------------------------------------------------------------
; Special SFX metadata (pointers, flags)
; ---------------------------------------------------------------------------
SpecSoundIndex:
ptr_sndD0:	SMPS_SPECIAL_SFX_METADATA	SoundWaterfall, 0
ptr_specend

; ---------------------------------------------------------------------------
; Special SFX data
; ---------------------------------------------------------------------------
SoundWaterfall:	include	"Sonic-2-Clone-Driver-v2/SFX/SndD0 - Waterfall.asm"
		even
