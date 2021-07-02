SndB1_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndB1_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM6, SndB1_FM6,	$00, $04

; FM6 Data
SndB1_FM6:
	smpsSetvoice        $00
	dc.b	nF3, $3C
	smpsStop

SndB1_Voices:
;	Voice $00
;	$83
;	$1F, $15, $1F, $1F, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $08
;	$00, $00, $00, $0E, 	$1F, $1F, $1F, $1F, 	$0B, $16, $01, $82
	smpsVcAlgorithm     $03
	smpsVcFeedback      $00
	smpsVcUnusedBits    $02
	smpsVcDetune        $01, $01, $01, $01
	smpsVcCoarseFreq    $0F, $0F, $05, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $00, $00, $00
	smpsVcDecayRate2    $0E, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $82, $01, $16, $0B

