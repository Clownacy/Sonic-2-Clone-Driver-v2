SndB7_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndB7_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cFM6, SndB7_FM6,	$00, $0A
	smpsHeaderSFXChannel cFM5, SndB7_FM5,	$00, $00

; FM6 Data
SndB7_FM6:
	smpsSetvoice        $01
	smpsModSet          $01, $01, $60, $01
	dc.b	nC4, $05
	smpsModOff
	smpsDetune          $0A
	smpsFMAlterVol      $F6
	smpsJump            SndB7_Jump00

; FM5 Data
SndB7_FM5:
	dc.b	nRst, $05

SndB7_Jump00:
	smpsSetvoice        $00
	dc.b	nFs7, $01, nRst, $01, nFs7, $11
	smpsStop

SndB7_Voices:
;	Voice $00
;	$34
;	$09, $0F, $01, $D7, 	$1F, $1F, $1F, $1F, 	$0C, $11, $09, $0F
;	$0A, $0E, $0D, $0E, 	$35, $1A, $55, $3A, 	$0C, $80, $0F, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $0D, $00, $00, $00
	smpsVcCoarseFreq    $07, $01, $0F, $09
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $09, $11, $0C
	smpsVcDecayRate2    $0E, $0D, $0E, $0A
	smpsVcDecayLevel    $03, $05, $01, $03
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $80, $0F, $80, $0C

;	Voice $01
;	$FA
;	$21, $3A, $19, $30, 	$1F, $1F, $1F, $1F, 	$05, $18, $09, $02
;	$0B, $1F, $10, $05, 	$1F, $2F, $4F, $2F, 	$0E, $07, $04, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $03
	smpsVcDetune        $03, $01, $03, $02
	smpsVcCoarseFreq    $00, $09, $0A, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $09, $18, $05
	smpsVcDecayRate2    $05, $10, $1F, $0B
	smpsVcDecayLevel    $02, $04, $02, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $04, $07, $0E

