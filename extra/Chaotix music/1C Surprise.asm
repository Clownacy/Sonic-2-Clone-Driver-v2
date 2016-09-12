Surprise_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Surprise_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       Surprise_DAC
	smpsHeaderFM        Surprise_FM1,	$00, $09
	smpsHeaderFM        Surprise_FM2,	$00, $1A
	smpsHeaderFM        Surprise_FM3,	$FB, $1A
	smpsHeaderFM        Surprise_FM4,	$00, $10
	smpsHeaderFM        Surprise_FM5,	$07, $11
	smpsHeaderFM        Surprise_FM6,	$00, $23
	smpsHeaderPSG       Surprise_PSG1,	$E8, $01, $00, $00
	smpsHeaderPSG       Surprise_PSG2,	$E8, $05, $00, $00
	smpsHeaderPSG       Surprise_PSG3,	$23, $00, $00, $00
	smpsHeaderPWM       Surprise_PWM1,	$00, $CC
	smpsHeaderPWM       Surprise_PWM2,	$00, $72
	smpsHeaderPWM       Surprise_PWM3,	$00, $00
	smpsHeaderPWM       Surprise_PWM4,	$00, $55

; Dummy DAC data
Surprise_DAC:
	smpsStop

; FM1 Data
Surprise_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00

Surprise_Jump00:
	dc.b	nA2, $0C, nE2, nFs2, nG2, nA2, nC3, nD3, nEb3, nE3, nD3, nB2
	dc.b	nF3, nE3, nD3, nC3, nB2, nA2, nE2, nFs2, nG2, nA2, nC3, nD3
	dc.b	nEb3, nE3, nG3, nFs3, nF3, nE3, nD3, nB2, nC3, nD3, nA2, nB2
	dc.b	nC3, nD3, nF3, nG3, nAb3, nA3, nG3, nE3, nBb3, nA3, nG3, nF3
	dc.b	nE3, nD3, nA2, nB2, nC3, nD3, nF3, nG3, nAb3, nA3, nC4, nB3
	dc.b	nBb3, nA3, nG3, nE3, nF3, nE3, nB2, nCs3, nD3, nE3, nG3, nA3
	dc.b	nBb3, nA3, nG3, nE3, nBb3, nA3, nG3, nF3, nE3, nD3, nA2, nB2
	dc.b	nC3, nD3, nF3, nG3, nAb3, nE3, nG3, nFs3, nF3, nE3, nD3, nB2
	dc.b	nC3
	smpsJump            Surprise_Jump00

; FM2 Data
Surprise_FM2:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsCall            Surprise_Call00

Surprise_Call00:
	smpsFMAlterVol      $FE
	dc.b	nA4, $06, nE4, $03, nRst, nG4, $06, nE4, $03, nRst
	smpsFMAlterVol      $FD
	dc.b	nA4, $06, nE4, $03, nRst, nG4, $06, nE4, $03, nRst
	smpsLoop            $00, $04, Surprise_Call00
	dc.b	nA4, $0C, nBb4, $54, smpsNoAttack
	smpsFMAlterVol      $02
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $03
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $02
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $03
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $02
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $03
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $02
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $03
	dc.b	$0C

Surprise_Loop08:
	smpsFMAlterVol      $FE
	dc.b	nD5, $06, nA4, $03, nRst, nC5, $06, nA4, $03, nRst
	smpsFMAlterVol      $FD
	dc.b	nD5, $06, nA4, $03, nRst, nC5, $06, nA4, $03, nRst
	smpsLoop            $00, $04, Surprise_Loop08
	dc.b	nD5, $0C, nEb5, $54, smpsNoAttack
	smpsFMAlterVol      $02
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $03
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $02
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $03
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $02
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $03
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $02
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $03
	dc.b	$0C, smpsNoAttack
	smpsFMAlterVol      $F6
	dc.b	nE4, $60, nD4, $60, smpsNoAttack, $60, smpsNoAttack, $30, nRst, $06, nD4, nEb4
	dc.b	nE4, nF4, nFs4, nG4, nAb4
	smpsFMAlterVol      $0A
	smpsJump            Surprise_Call00

; FM3 Data
Surprise_FM3:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsCall            Surprise_Call00

; FM4 Data
Surprise_FM4:
	smpsSetvoice        $02
	smpsPan             panLeft, $00

Surprise_Loop06:
	dc.b	nA2, $12, nA2, $06, nRst, $24, nA2, $06, nRst, $0C, nA2, $12
	smpsLoop            $00, $04, Surprise_Loop06

Surprise_Loop07:
	dc.b	nD3, $12, nD3, $06, nRst, $24, nD3, $06, nRst, $0C, nD3, $12
	smpsLoop            $00, $04, Surprise_Loop07
	dc.b	nE3, $12, nE3, $06, nRst, $24, nE3, $06, nRst, $0C, nE3, $12
	dc.b	nD3, $12, nD3, $06, nRst, $24, nD3, $06, nRst, $0C, nD3, $12
	dc.b	nD3, nD3, $06, nRst, $24, nD3, $06, nRst, $0C, nD3, $12, nA2
	dc.b	nA2, $06, nRst, $24, nA2, $06, nRst, $0C, nA2, $12
	smpsJump            Surprise_Loop06

; FM5 Data
Surprise_FM5:
	smpsSetvoice        $02
	smpsPan             panRight, $00

Surprise_Loop04:
	dc.b	nA2, $12, nA2, $06, nRst, $24, nA2, $06, nRst, $0C, nA2, $12
	smpsLoop            $00, $04, Surprise_Loop04

Surprise_Loop05:
	dc.b	nD3, $12, nD3, $06, nRst, $24, nD3, $06, nRst, $0C, nD3, $12
	smpsLoop            $00, $04, Surprise_Loop05
	dc.b	nE3, $12, nE3, $06, nRst, $24, nE3, $06, nRst, $0C, nE3, $12
	dc.b	nD3, $12, nD3, $06, nRst, $24, nD3, $06, nRst, $0C, nD3, $12
	dc.b	nD3, nD3, $06, nRst, $24, nD3, $06, nRst, $0C, nD3, $12, nA2
	dc.b	nA2, $06, nRst, $24, nA2, $06, nRst, $0C, nA2, $12
	smpsJump            Surprise_Loop04

; FM6 Data
Surprise_FM6:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $05, $08
	dc.b	nRst, $06
	smpsCall            Surprise_Call00

; PSG1 Data
Surprise_PSG1:
	smpsPSGvoice        KCVolEnv_08
	dc.b	nRst, $60
	smpsLoop            $00, $03, Surprise_PSG1
	dc.b	nCs5, $08, nE5, nB5, nBb5, $48

Surprise_Loop03:
	dc.b	nRst, $60
	smpsLoop            $00, $03, Surprise_Loop03
	dc.b	nFs5, $08, nA5, nE6, nEb6, $30, nRst, $18
	smpsChangeTransposition $0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	nE4, $06, nFs4, nG4, nE4, nA4, nG4, nFs4, nA4, nG4, nFs4, nE4
	dc.b	nB3, nA3, nB3, nCs4, nEb4, nD4, nE4, nF4, nD4, nG4, nF4, nE4
	dc.b	nG4, nF4, nE4, nD4, nA3, nG3, nA3, nB3, nCs4, nD4, nE4, nF4
	dc.b	nD4, nG4, nF4, nE4, nG4, nA3, nE4, nG4
	smpsPSGvoice        KCVolEnv_08
	dc.b	nA4, $1E, smpsNoAttack, $36
	smpsPSGvoice        KCVolEnv_02
	dc.b	nD4, $06, nEb4, nE4, nF4, nFs4, nG4, nAb4
	smpsChangeTransposition $F4
	smpsJump            Surprise_PSG1

; PSG2 Data
Surprise_PSG2:
	smpsModSet          $01, $01, $02, $04
	dc.b	nRst, $08

Surprise_Loop09:
	smpsPSGvoice        KCVolEnv_08
	dc.b	nRst, $60
	smpsLoop            $00, $03, Surprise_Loop09
	dc.b	nCs5, $08, nE5, nB5, nBb5, $30, nRst, $18

Surprise_Loop0A:
	dc.b	nRst, $60
	smpsLoop            $00, $03, Surprise_Loop0A
	dc.b	nFs5, $08, nA5, nE6, nEb6, $30, nRst, $10
	smpsChangeTransposition $0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	nRst, $06, nE4, $06, nFs4, nG4, nE4, nA4, nG4, nFs4, nA4, nG4
	dc.b	nFs4, nE4, nB3, nA3, nB3, nCs4, nEb4, nD4, nE4, nF4, nD4, nG4
	dc.b	nF4, nE4, nG4, nF4, nE4, nD4, nA3, nG3, nA3, nB3, nCs4, nD4
	dc.b	nE4, nF4, nD4, nG4, nF4, nE4, nG4, nA3, nE4, nG4
	smpsPSGvoice        KCVolEnv_08
	dc.b	nA4, $1E, smpsNoAttack, $36
	smpsPSGvoice        KCVolEnv_02
	dc.b	nD4, $06, nEb4, nE4, nF4, nFs4, nG4, nRst, $08
	smpsChangeTransposition $F4
	smpsJump            Surprise_Loop09

; PSG3 Data
Surprise_PSG3:
	smpsPSGform         $E7

Surprise_Jump01:
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGvoice        KCVolEnv_05
	dc.b	$0C
	smpsJump            Surprise_Jump01

; PWM1 Data
Surprise_PWM1:
	dc.b	pwmRideBell, $0C
	smpsFMAlterVol      $DE
	dc.b	pwmRideBell, $0C
	smpsFMAlterVol      $22
	smpsJump            Surprise_PWM1

; PWM2 Data
Surprise_PWM2:
	dc.b	nRst, $60
	smpsLoop            $00, $08, Surprise_PWM2

Surprise_Loop02:
	dc.b	pwmClap, $18
	smpsLoop            $00, $10, Surprise_Loop02
	smpsJump            Surprise_PWM2

; PWM3 Data
Surprise_PWM3:
	smpsStop

; PWM4 Data
Surprise_PWM4:
	smpsFMAlterVol      $FD
	dc.b	pwmLowBongo, $0C
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pwmHighBongo, nRst, $06, pwmHighBongo
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pwmLowBongo, pwmLowBongo
	smpsFMAlterVol      $03

Surprise_Loop00:
	smpsFMAlterVol      $33
	smpsFMAlterVol      $D0
	dc.b	pwmHighBongo
	smpsFMAlterVol      $CD
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pwmLowBongo, pwmLowBongo
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pwmHighBongo
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pwmLowBongo, pwmLowBongo
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pwmHighBongo
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pwmLowBongo
	smpsFMAlterVol      $03
	smpsLoop            $00, $03, Surprise_Loop00
	smpsFMAlterVol      $44
	smpsFMAlterVol      $FE
	dc.b	pwmLowBongo, $06, $06
	smpsFMAlterVol      $DE
	dc.b	$06, $06, pwmLowBongo, $06, $06
	smpsFMAlterVol      $DE
	dc.b	$06, $06, pwmLowBongo, $06, $06
	smpsFMAlterVol      $EF
	dc.b	$03, $03, $03, $03, pwmLowBongo, $03, $03, $03, $03
	smpsFMAlterVol      $EF
	dc.b	$03, $03, $03, $03
	smpsFMAlterVol      $66
	smpsFMAlterVol      $02
	smpsFMAlterVol      $BC
	smpsFMAlterVol      $44
	smpsFMAlterVol      $E0
	dc.b	pwmHighBongo, $06, $06
	smpsFMAlterVol      $DE
	dc.b	$06, $06, pwmHighBongo, $06, $06
	smpsFMAlterVol      $DE
	dc.b	$06, $06, pwmHighBongo, $06, $06
	smpsFMAlterVol      $EF
	dc.b	$03, $03, $03, $03, pwmHighBongo, $03, $03, $03, $03
	smpsFMAlterVol      $EF
	dc.b	$03, $03, $03, $03
	smpsFMAlterVol      $66
	smpsFMAlterVol      $20
	smpsFMAlterVol      $BC
	smpsLoop            $01, $02, Surprise_PWM4

Surprise_Loop01:
	dc.b	nRst, $0C
	smpsFMAlterVol      $D0
	dc.b	pwmHighBongo, $0C
	smpsFMAlterVol      $30
	dc.b	nRst, $0C
	smpsFMAlterVol      $FD
	dc.b	pwmLowBongo, $06, pwmLowBongo
	smpsFMAlterVol      $03
	smpsLoop            $00, $07, Surprise_Loop01
	smpsFMAlterVol      $22
	dc.b	pwmHighClick, $06, $0C, $06, pwmLowClick, $06, $06, $06, $06
	smpsFMAlterVol      $DE
	smpsJump            Surprise_PWM4

Surprise_Voices:
;	Voice $00
;	$3A
;	$20, $23, $60, $00, 	$1E, $1F, $1F, $1F, 	$0A, $0A, $0B, $09
;	$05, $07, $0A, $00, 	$A4, $85, $96, $D7, 	$21, $25, $28, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $06, $02, $02
	smpsVcCoarseFreq    $00, $00, $03, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $0B, $0A, $0A
	smpsVcDecayRate2    $00, $0A, $07, $05
	smpsVcDecayLevel    $0D, $09, $08, $0A
	smpsVcReleaseRate   $07, $06, $05, $04
	smpsVcTotalLevel    $00, $28, $25, $21

;	Voice $01
;	$3A
;	$01, $02, $01, $01, 	$14, $14, $17, $14, 	$0A, $0C, $03, $07
;	$02, $08, $08, $03, 	$07, $E9, $A8, $18, 	$1C, $2B, $28, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $17, $14, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $03, $0C, $0A
	smpsVcDecayRate2    $03, $08, $08, $02
	smpsVcDecayLevel    $01, $0A, $0E, $00
	smpsVcReleaseRate   $08, $08, $09, $07
	smpsVcTotalLevel    $00, $28, $2B, $1C

;	Voice $02
;	$07
;	$78, $06, $72, $31, 	$9F, $DF, $5F, $DF, 	$0A, $0A, $00, $00
;	$00, $00, $00, $00, 	$17, $17, $07, $07, 	$88, $8A, $80, $83
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $00, $07
	smpsVcCoarseFreq    $01, $02, $06, $08
	smpsVcRateScale     $03, $01, $03, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $0A, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $01, $01
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $03, $00, $0A, $08

