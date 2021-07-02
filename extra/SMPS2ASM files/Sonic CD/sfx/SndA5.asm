SndA5_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndA5_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM6, SndA5_FM6,	$00, $08

; FM6 Data
SndA5_FM6:
	smpsSetvoice        $00
	dc.b	nEb5, $0B
	smpsStop

SndA5_Voices:
;	Voice $00
;	$3D
;	$01, $03, $03, $03, 	$14, $0E, $0E, $0D, 	$08, $35, $02, $11
;	$00, $50, $60, $56, 	$1F, $1F, $1F, $1F, 	$18, $82, $97, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $03, $03, $03, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0D, $0E, $0E, $14
	smpsVcAmpMod        $00, $00, $01, $00
	smpsVcDecayRate1    $11, $02, $15, $08
	smpsVcDecayRate2    $56, $60, $50, $00
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $97, $82, $18

