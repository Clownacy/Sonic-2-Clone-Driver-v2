SndB2_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndB2_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM6, SndB2_FM6,	$FC, $02

; FM6 Data
SndB2_FM6:
	smpsSetvoice        $00
	dc.b	nD4, $05, nRst, $01, nD4, $05, nRst, $01, nD4, $09
	smpsStop

SndB2_Voices:
;	Voice $00
;	$83
;	$12, $10, $13, $1E, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$02, $02, $02, $02, 	$2F, $2F, $FF, $3F, 	$05, $10, $34, $87
	smpsVcAlgorithm     $03
	smpsVcFeedback      $00
	smpsVcUnusedBits    $02
	smpsVcDetune        $01, $01, $01, $01
	smpsVcCoarseFreq    $0E, $03, $00, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $03, $0F, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $87, $34, $10, $05

