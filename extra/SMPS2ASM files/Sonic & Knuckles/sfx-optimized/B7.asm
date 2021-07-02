Sound_B7_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     Sound_B7_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cFM4, Sound_B7_FM4,	$00, $02
	smpsHeaderSFXChannel cFM5, Sound_B7_FM5,	$00, $02

; FM4 Data
Sound_B7_FM4:
	smpsAlterNote       $03
	dc.b	nRst, $02

; FM5 Data
Sound_B7_FM5:
	smpsSetvoice        $00
	dc.b	nG5, $16
	smpsStop

Sound_B7_Voices:
;	Voice $00
;	$14
;	$25, $33, $36, $11, 	$1F, $1F, $1F, $1F, 	$15, $18, $1C, $13
;	$0B, $08, $0D, $09, 	$0F, $9F, $8F, $0F, 	$24, $05, $0A, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $03, $03, $02
	smpsVcCoarseFreq    $01, $06, $03, $05
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $13, $1C, $18, $15
	smpsVcDecayRate2    $09, $0D, $08, $0B
	smpsVcDecayLevel    $00, $08, $09, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $0A, $05, $24

