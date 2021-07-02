SndBC_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndBC_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cFM6, SndBC_FM6,	$13, $0F
	smpsHeaderSFXChannel cFM5, SndBC_FM5,	$00, $0F

; FM6 Data
SndBC_FM6:
; FM5 Data
SndBC_FM5:
	smpsSetvoice        $00
	smpsModSet          $01, $01, $2A, $FF
	dc.b	nEb2, $18, nFs2, $18, nD3, $18
	smpsStop

SndBC_Voices:
;	Voice $00
;	$16
;	$53, $54, $30, $31, 	$1F, $1F, $1F, $1F, 	$05, $08, $06, $08
;	$05, $05, $07, $05, 	$2F, $FF, $5F, $2F, 	$1E, $80, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $05, $05
	smpsVcCoarseFreq    $01, $00, $04, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $06, $08, $05
	smpsVcDecayRate2    $05, $07, $05, $05
	smpsVcDecayLevel    $02, $05, $0F, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $80, $80, $1E

