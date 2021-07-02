SndA1_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndA1_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM4, SndA1_FM4,	$10, $0A

; FM4 Data
SndA1_FM4:
	smpsSetvoice        $00
	dc.b	nEb5, $03, nRst, $02, nG6, $03, nRst, $02
	smpsStop

SndA1_Voices:
;	Voice $00
;	$F9
;	$21, $30, $10, $32, 	$1F, $1F, $1F, $1F, 	$05, $18, $09, $02
;	$0B, $1F, $10, $05, 	$1F, $2F, $4F, $2F, 	$0C, $06, $04, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $03
	smpsVcDetune        $03, $01, $03, $02
	smpsVcCoarseFreq    $02, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $09, $18, $05
	smpsVcDecayRate2    $05, $10, $1F, $0B
	smpsVcDecayLevel    $02, $04, $02, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $04, $06, $0C

