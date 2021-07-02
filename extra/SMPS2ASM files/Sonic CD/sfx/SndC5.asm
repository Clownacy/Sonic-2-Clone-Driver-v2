SndC5_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndC5_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM6, SndC5_FM6,	$00, $05

; FM6 Data
SndC5_FM6:
	smpsSetvoice        $00
	smpsModSet          $01, $01, $02, $02
	dc.b	nEb5, $33
	smpsStop

SndC5_Voices:
;	Voice $00
;	$38
;	$0F, $0F, $0F, $0F, 	$1F, $1F, $1F, $0E, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $1F, 	$2E, $10, $00, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $0F, $0F, $0F, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0E, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $00, $10, $2E

