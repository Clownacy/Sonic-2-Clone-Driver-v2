TakeANap_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     TakeANap_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $0E

	smpsHeaderDAC       TakeANap_DAC
	smpsHeaderFM        TakeANap_FM1,	$00, $0F
	smpsHeaderFM        TakeANap_FM2,	$00, $0E
	smpsHeaderFM        TakeANap_FM3,	$00, $14
	smpsHeaderFM        TakeANap_FM4,	$00, $14
	smpsHeaderFM        TakeANap_FM5,	$00, $14
	smpsHeaderFM        TakeANap_FM6,	$00, $17
	smpsHeaderPSG       TakeANap_PSG1,	$F4, $03, $00, KCVolEnv_0C
	smpsHeaderPSG       TakeANap_PSG2,	$F4, $03, $00, KCVolEnv_0C
	smpsHeaderPSG       TakeANap_PSG3,	$23, $01, $00, KCVolEnv_02
	smpsHeaderPWM       TakeANap_PWM1,	$00, $11
	smpsHeaderPWM       TakeANap_PWM2,	$00, $99
	smpsHeaderPWM       TakeANap_PWM3,	$00, $96
	smpsHeaderPWM       TakeANap_PWM4,	$00, $77

; Dummy DAC data
TakeANap_DAC:
	smpsStop

; FM1 Data
TakeANap_FM1:
	smpsSetvoice        $00
	dc.b	nRst, $54

TakeANap_Loop06:
	dc.b	nF2, $0C, nC2, nD2, nF2, nRst, $24, nF2, $0C, smpsNoAttack, $0C, nD2
	dc.b	nC2, nRst, $3C, nBb1, $0C, nF1, nG1, nBb1, nRst, $24, nC2, $0C
	dc.b	smpsNoAttack, $0C, $0C, $0C, nRst, nC2, nD2, nF2, nG2
	smpsLoop            $00, $02, TakeANap_Loop06
	smpsJump            TakeANap_Loop06

; FM2 Data
TakeANap_FM2:
	smpsSetvoice        $02
	dc.b	nRst, $54

TakeANap_Jump02:
	smpsCall            TakeANap_Call00
	dc.b	smpsNoAttack, $0C, nCs4, $06, smpsNoAttack, nD4, $12, nC4, $0C, smpsNoAttack, $60
	smpsCall            TakeANap_Call00
	dc.b	smpsNoAttack, $0C, nD3, $18, nFs3, $06, smpsNoAttack, nG3, $06, smpsNoAttack, $60
	smpsJump            TakeANap_Jump02

TakeANap_Call00:
	dc.b	nRst, $18, nAb3, $06, smpsNoAttack, nA3, $12, nG3, $18, nC4, smpsNoAttack, $0C
	dc.b	nD4, $18, nA3, nG3, $0C, nA3, nBb3, smpsNoAttack, $0C, nA3, nG3, nF3
	smpsReturn

; FM3 Data
TakeANap_FM3:
	smpsSetvoice        $01
	dc.b	nRst, $54

TakeANap_Loop05:
	dc.b	nRst, $18, nA3, nRst, nA3, nRst, $18, nA3, nRst, nA3, nRst, $18
	dc.b	nF3, nRst, nF3, nRst, $18, nG3, nRst, nG3
	smpsLoop            $00, $02, TakeANap_Loop05
	smpsJump            TakeANap_Loop05

; FM4 Data
TakeANap_FM4:
	smpsSetvoice        $01
	smpsPan             panRight, $00
	dc.b	nRst, $54

TakeANap_Loop04:
	dc.b	nRst, $18, nF3, nRst, nF3, nRst, $18, nF3, nRst, nF3, nRst, $18
	dc.b	nD3, nRst, nD3, nRst, $18, nE3, nRst, nE3
	smpsLoop            $00, $02, TakeANap_Loop04
	smpsJump            TakeANap_Loop04

; FM5 Data
TakeANap_FM5:
	smpsSetvoice        $01
	smpsPan             panLeft, $00
	dc.b	nRst, $54

TakeANap_Loop03:
	dc.b	nRst, $18, nC3, nRst, nC3, nRst, $18, nC3, nRst, nC3, nRst, $18
	dc.b	nBb2, nRst, nBb2, nRst, $18, nC3, nRst, nC3
	smpsLoop            $00, $02, TakeANap_Loop03
	smpsJump            TakeANap_Loop03

; FM6 Data
TakeANap_FM6:
	smpsSetvoice        $02
	dc.b	nRst, $54, nRst, $06
	smpsPan             panRight, $00
	smpsModSet          $0A, $01, $02, $04

TakeANap_Jump01:
	smpsCall            TakeANap_Call00
	dc.b	smpsNoAttack, $0C, nCs4, $06, smpsNoAttack, nD4, $12, nC4, $0C, smpsNoAttack, $60
	smpsCall            TakeANap_Call00
	dc.b	smpsNoAttack, $0C, nD3, $18, nFs3, $06, smpsNoAttack, nG3, $06, smpsNoAttack, $60
	smpsJump            TakeANap_Jump01

; PSG1 Data
TakeANap_PSG1:
	smpsPSGvoice        KCVolEnv_03
	dc.b	nRst, $54

TakeANap_Loop0A:
	dc.b	nRst, $0C, nC4, $06
	smpsPSGAlterVol     $03
	dc.b	$06
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $20, TakeANap_Loop0A
	smpsJump            TakeANap_Loop0A

; PSG2 Data
TakeANap_PSG2:
	smpsPSGvoice        KCVolEnv_03
	dc.b	nRst, $54

TakeANap_Loop08:
	dc.b	nRst, $0C, nF3, $06
	smpsPSGAlterVol     $03
	dc.b	$06
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $0C, TakeANap_Loop08

TakeANap_Loop09:
	dc.b	nRst, $0C, nG3, $06
	smpsPSGAlterVol     $03
	dc.b	$06
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $04, TakeANap_Loop09
	smpsLoop            $01, $02, TakeANap_Loop08
	smpsJump            TakeANap_Loop08

; PSG3 Data
TakeANap_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $24
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $0C
	smpsPSGvoice        KCVolEnv_05
	dc.b	$18

TakeANap_Loop07:
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $0C, nRst, nCs4, nRst, (nMaxPSG2-$23)&$FF, nCs4, nCs4, nRst, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF
	dc.b	nCs4, nRst, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        KCVolEnv_05
	dc.b	(nMaxPSG2-$23)&$FF, $18
	smpsLoop            $00, $04, TakeANap_Loop07
	smpsJump            TakeANap_Loop07

; PWM1 Data
TakeANap_PWM1:
	dc.b	pwmSilence, $54

TakeANap_Loop02:
	dc.b	pwmAcousticKick, $0C, $18, $0C, nRst, $24, pwmAcousticKick, $0C, nRst, $0C, pwmAcousticKick, pwmAcousticKick
	dc.b	$48
	smpsLoop            $00, $04, TakeANap_Loop02
	smpsJump            TakeANap_Loop02

; PWM2 Data
TakeANap_PWM2:
	dc.b	pwmAcousticSnare, $0C, nRst, pwmAcousticSnare, pwmAcousticSnare, pwmAcousticSnare, pwmAcousticSnare, pwmAcousticSnare

TakeANap_Jump00:
	dc.b	nRst, $30, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, pwmAcousticSnare, $24, $0C, nRst
	dc.b	$30, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, pwmAcousticSnare, $0C, pwmMidTom
	smpsFMAlterVol      $90
	dc.b	pwmLowTom, $18
	smpsFMAlterVol      $70
	smpsJump            TakeANap_Jump00

; PWM3 Data
TakeANap_PWM3:
	dc.b	pwmSilence, $24, pwmClap, $30

TakeANap_Loop01:
	dc.b	nRst, $30, pwmClap
	smpsLoop            $00, $08, TakeANap_Loop01
	smpsJump            TakeANap_Loop01

; PWM4 Data
TakeANap_PWM4:
	dc.b	nRst, $24
	smpsFMAlterVol      $FD
	dc.b	pwmLowClick, $0C, $0C
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pwmHighClick, $0C, $0C
	smpsFMAlterVol      $30

TakeANap_Loop00:
	smpsFMAlterVol      $FD
	dc.b	pwmLowClick, $0C, $0C
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pwmHighClick, $0C, $0C
	smpsFMAlterVol      $30
	smpsLoop            $00, $10, TakeANap_Loop00
	smpsJump            TakeANap_Loop00

TakeANap_Voices:
;	Voice $00
;	$2D
;	$02, $03, $02, $01, 	$7F, $DF, $9F, $9F, 	$12, $0A, $0A, $0A
;	$10, $09, $09, $09, 	$3F, $2F, $2F, $2F, 	$10, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $03, $02
	smpsVcRateScale     $02, $02, $03, $01
	smpsVcAttackRate    $1F, $1F, $1F, $3F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0A, $12
	smpsVcDecayRate2    $09, $09, $09, $10
	smpsVcDecayLevel    $02, $02, $02, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $10

;	Voice $01
;	$2C
;	$61, $03, $01, $33, 	$5F, $94, $5F, $94, 	$05, $05, $05, $07
;	$02, $02, $02, $02, 	$1F, $6F, $1F, $AF, 	$1E, $80, $1E, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $00, $06
	smpsVcCoarseFreq    $03, $01, $03, $01
	smpsVcRateScale     $02, $01, $02, $01
	smpsVcAttackRate    $14, $1F, $14, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $05, $05, $05
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $0A, $01, $06, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1E, $00, $1E

;	Voice $02
;	$3A
;	$03, $08, $04, $01, 	$8E, $8E, $8D, $59, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $2F, 	$17, $28, $20, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $04, $08, $03
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $19, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $20, $28, $17

