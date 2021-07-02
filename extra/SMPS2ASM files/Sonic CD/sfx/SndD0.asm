SndD0_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndD0_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM6, SndD0_FM6,	$0D, $07

; FM6 Data
SndD0_FM6:
	smpsSetvoice        $00
	dc.b	nCs0, $07, nA0, $25
	smpsStop

SndD0_Voices:
;	Voice $00
;	$3D
;	$13, $75, $13, $30, 	$5F, $5F, $5F, $5F, 	$0D, $0A, $0A, $0A
;	$0D, $0D, $0D, $0D, 	$4F, $0F, $0F, $0F, 	$0B, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $01, $07, $01
	smpsVcCoarseFreq    $00, $03, $05, $03
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0A, $0D
	smpsVcDecayRate2    $0D, $0D, $0D, $0D
	smpsVcDecayLevel    $00, $00, $00, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $80, $80, $0B

