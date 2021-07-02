SndC2_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndC2_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM4, SndC2_FM4,	$15, $00

; FM4 Data
SndC2_FM4:
	smpsSetvoice        $00
	dc.b	nEb3, $1F
	smpsStop

SndC2_Voices:
;	Voice $00
;	$38
;	$0F, $00, $00, $00, 	$1F, $1A, $18, $1C, 	$08, $06, $0C, $0E
;	$00, $0F, $14, $10, 	$1F, $9F, $9F, $2F, 	$05, $80, $80, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1C, $18, $1A, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0E, $0C, $06, $08
	smpsVcDecayRate2    $10, $14, $0F, $00
	smpsVcDecayLevel    $02, $09, $09, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $80, $80, $05

