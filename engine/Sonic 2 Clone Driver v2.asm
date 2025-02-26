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
    if SMPS_FEATURE_PSG_NOISE_DRUMS
	dc.l	PSGNoiseDrumIndex
    endif
    if SMPS_FEATURE_UNIVERSAL_VOICE_BANK
	dc.l	UniVoiceBank
    endif
	dc.l	Clone_Driver_RAM

PSGNoiseDrumIndex:
    if SMPS_S28BitPSGEnvelopes
	dc.b	s28BitTone_01, 2, $E4
	dc.b	s28BitTone_03, 2, $E4
	dc.b	s28BitTone_02, 2, $E5
	dc.b	s28BitTone_03, 2, $E4
	dc.b	s28BitTone_03, 3, $E6
	dc.b	s28BitTone_04, 4, $E4
    endif

; ---------------------------------------------------------------------------
; Subroutine to update music more than once per frame
; (Called by horizontal & vert. interrupts)
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_71B4C: UpdateMusic:
SMPS_UpdateDriver:
	move	#$2300,sr					; enable interrupts (we can accept horizontal interrupts from now on)
	bset	#SMPS_FLAGS_ALREADY_RUNNING,(Clone_Driver_RAM+SMPS_RAM.flags).l	; set "SMPS running flag"
	bne.s	.skip						; if it was set already, don't call another instance of SMPS
	bsr.s	.inner
	bclr	#SMPS_FLAGS_ALREADY_RUNNING,(Clone_Driver_RAM+SMPS_RAM.flags).l	; reset "SMPS running flag"
.skip:
	rts
.inner:
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
