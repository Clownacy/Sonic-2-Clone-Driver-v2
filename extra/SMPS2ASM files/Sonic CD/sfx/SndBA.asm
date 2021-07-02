SndBA_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndBA_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cFM6, SndBA_FM6,	$FE, $00
	smpsHeaderSFXChannel cFM5, SndBA_FM5,	$00, $00

; FM6 Data
SndBA_FM6:
; FM5 Data
SndBA_FM5:
	smpsSetvoice        $00
	smpsModSet          $01, $01, $ED, $FF
	dc.b	nE0, $0A
	smpsModOff
	dc.b	nD0, $20
	smpsStop

SndBA_Voices:
;	Voice $00
;	$28
;	$03, $0A, $11, $03, 	$1F, $19, $1F, $1F, 	$02, $01, $02, $0E
;	$01, $01, $01, $8E, 	$1F, $1F, $1F, $1F, 	$25, $26, $1C, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $00, $00
	smpsVcCoarseFreq    $03, $01, $0A, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $19, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0E, $02, $01, $02
	smpsVcDecayRate2    $8E, $01, $01, $01
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1C, $26, $25

