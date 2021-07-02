SndAC_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndAC_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cFM3, SndAC_FM3,	$E0, $00
	smpsHeaderSFXChannel cFM4, SndAC_FM4,	$E3, $02

; FM3 Data
SndAC_FM3:
	smpsSetvoice        $00
	dc.b	nC4, $30
	smpsStop

; FM4 Data
SndAC_FM4:
	dc.b	nRst, $02
	smpsSetvoice        $00
	dc.b	nC4, $30
	smpsStop

SndAC_Voices:
;	Voice $00
;	$3B
;	$05, $32, $00, $00, 	$5F, $5F, $5F, $5F, 	$04, $15, $1A, $0B
;	$00, $04, $00, $00, 	$0F, $6F, $FF, $FF, 	$10, $10, $00, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $00
	smpsVcCoarseFreq    $00, $00, $02, $05
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $1A, $15, $04
	smpsVcDecayRate2    $00, $00, $04, $00
	smpsVcDecayLevel    $0F, $0F, $06, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $00, $10, $10

