SndA4_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndA4_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM6, SndA4_FM6,	$F4, $00

; FM6 Data
SndA4_FM6:
	smpsSetvoice        $00
	dc.b	nD2, $04, nRst, nG2, $06
	smpsStop

SndA4_Voices:
;	Voice $00
;	$3C
;	$00, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$00, $16, $0F, $0F
;	$00, $00, $00, $00, 	$0F, $AF, $FF, $FF, 	$00, $80, $0A, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0F, $16, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0A, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $0A, $80, $00

