; ===========================================================================
; Sonic 2 Clone Driver v2
; ===========================================================================

	dc.b	"Clownacy's Sonic 2 Clone Driver v2 (v2.9)"
	even

; ---------------------------------------------------------------------------

SMPS_Table:
	dc.l	MusicIndex
	dc.w	MusID__First,MusID__End
	dc.l	SoundIndex
	dc.w	SndID__First,SndID__End
    if SMPS_FEATURE_BACKGROUND_SFX
	dc.l	SpecSoundIndex
	dc.w	SpecID__First,SpecID__End
    endif
	dc.l	DACMetadataTable
	dc.w	DACID__First,DACID__End
	dc.l	PSG_Index
    if SMPS_FEATURE_UNIVERSAL_VOICE_BANK
	dc.l	UniVoiceBank
    endif
	dc.l	Clone_Driver_RAM

; ---------------------------------------------------------------------------
; Subroutine to update music more than once per frame
; (Called by horizontal & vert. interrupts)
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_71B4C: UpdateMusic:
SMPS_UpdateDriver:
	lea	SMPS_Table(pc),a5
	binclude "c++/core.bin"
	even

; ---------------------------------------------------------------------------
; Music 'include's and pointers
; ---------------------------------------------------------------------------
	include "sound/Music.asm"

; ---------------------------------------------------------------------------
; SFX 'include's and pointers
; ---------------------------------------------------------------------------
	include "sound/SFX.asm"

; ---------------------------------------------------------------------------
; Special SFX 'include's and pointers
; ---------------------------------------------------------------------------
    if SMPS_FEATURE_BACKGROUND_SFX
	include "sound/Special SFX.asm"
    endif
; ---------------------------------------------------------------------------
; FM Universal Voice Bank
; ---------------------------------------------------------------------------
    if SMPS_FEATURE_UNIVERSAL_VOICE_BANK
	include "sound/Sonic-2-Clone-Driver-v2/FM Universal Voice Bank.asm"
    endif
; ---------------------------------------------------------------------------
; PSG volume envelopes 'include's and pointers
; ---------------------------------------------------------------------------
	include "sound/Sonic-2-Clone-Driver-v2/PSG Volume Envelopes.asm"

; ---------------------------------------------------------------------------
; DAC samples
; ---------------------------------------------------------------------------
	include "sound/Sonic-2-Clone-Driver-v2/DAC Samples.asm"

	dc.b	$43,$6C,$6F,$77,$6E,$61,$63,$79
	even
