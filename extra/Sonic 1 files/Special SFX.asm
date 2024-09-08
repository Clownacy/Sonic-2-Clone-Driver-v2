; ---------------------------------------------------------------------------
; Special SFX metadata (pointers, flags)
; ---------------------------------------------------------------------------
SpecSoundIndex:
ptr_sndD0:	SMPS_SPECIAL_SFX_METADATA	SoundWaterfall, $80, 0
ptr_specend

; ---------------------------------------------------------------------------
; Special SFX data
; ---------------------------------------------------------------------------
SoundWaterfall:	include	"sound/Sonic-2-Clone-Driver-v2/SFX/SndD0 - Waterfall.asm"
		even
