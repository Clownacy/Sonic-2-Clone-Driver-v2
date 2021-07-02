SndD5_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndD5_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01 ; Bugged: this was originally $02

	smpsHeaderSFXChannel cFM6, SndD5_FM6,	$00, $09

; FM6 Data
SndD5_FM6:
	smpsSetvoice        $00
	smpsModSet          $01, $01, $19, $FF
	dc.b	nB1, $20
	smpsModOff
	dc.b	smpsNoAttack, nAb2, $30, smpsNoAttack, $30
	smpsStop

SndD5_Voices:
;	Voice $00
;	$28
;	$03, $0B, $11, $03, 	$1F, $19, $1F, $1F, 	$02, $01, $02, $0E
;	$01, $01, $01, $01, 	$1F, $1F, $1F, $1F, 	$15, $26, $1C, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $00, $00
	smpsVcCoarseFreq    $03, $01, $0B, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $19, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0E, $02, $01, $02
	smpsVcDecayRate2    $01, $01, $01, $01
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1C, $26, $15

