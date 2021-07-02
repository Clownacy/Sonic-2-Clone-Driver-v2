SndC1_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndC1_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM4, SndC1_FM4,	$00, $04

; FM4 Data
SndC1_FM4:
	smpsSetvoice        $00
	dc.b	nC7, $06, $40
	smpsStop

SndC1_Voices:
;	Voice $00
;	$38
;	$01, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$09, $09, $09, $0B
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$5C, $22, $27, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $09, $09, $09
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $27, $22, $5C

