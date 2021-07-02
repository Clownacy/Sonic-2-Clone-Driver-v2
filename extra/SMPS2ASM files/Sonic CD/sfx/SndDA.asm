SndDA_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndDA_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM6, SndDA_FM6,	$00, $00

; FM6 Data
SndDA_FM6:
	smpsSetvoice        $00
	dc.b	nG2, $0F
	smpsFMAlterVol      $0F
	smpsLoop            $00, $04, SndDA_FM6
	smpsStop

SndDA_Voices:
;	Voice $00
;	$04
;	$00, $01, $00, $05, 	$0F, $1F, $0F, $1F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$8F, $8F, $8F, $8F, 	$1F, $8D, $1F, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $05, $00, $01, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $0F, $1F, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $08, $08, $08, $08
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1F, $8D, $1F

