SilverScreen_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SilverScreen_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $02, $45

	smpsHeaderDAC       SilverScreen_DAC
	smpsHeaderFM        SilverScreen_FM1,	$00, $08
	smpsHeaderFM        SilverScreen_FM2,	$00, $0B
	smpsHeaderFM        SilverScreen_FM3,	$FB, $0C
	smpsHeaderFM        SilverScreen_FM4,	$00, $1B
	smpsHeaderFM        SilverScreen_FM5,	$00, $1B
	smpsHeaderFM        SilverScreen_FM6,	$00, $20
	smpsHeaderPSG       SilverScreen_PSG1,	$E8, $01, $00, $00
	smpsHeaderPSG       SilverScreen_PSG2,	$E3, $02, $00, $00
	smpsHeaderPSG       SilverScreen_PSG3,	$23, $00, $00, $00
	smpsHeaderPWM       SilverScreen_PWM1,	$00, $CC
	smpsHeaderPWM       SilverScreen_PWM2,	$00, $AA
	smpsHeaderPWM       SilverScreen_PWM3,	$00, $CC
	smpsHeaderPWM       SilverScreen_PWM4,	$00, $AA

; Dummy DAC data
SilverScreen_DAC:
	smpsStop

; FM1 Data
SilverScreen_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nRst, $14

SilverScreen_Loop10:
	dc.b	nE2, $04, nRst, $04, nD3, $04, nE3, $02, nB2, $02, nRst, $02
	dc.b	nD3, $04, nB2, $02, nD3, $04, nE3, $04, nE2, $04, nE2, $04
	dc.b	nD3, $04, nE3, $02, nB2, $02, nRst, $02, nD3, $02, nD3, $02
	dc.b	nB2, $02, nD3, $04, nCs3, $04
	smpsLoop            $00, $03, SilverScreen_Loop10
	dc.b	nE2, $04, nRst, $04, nD3, $04, nE3, $02, nB2, $02, nRst, $02
	dc.b	nD3, $04, nB2, $02, nD3, $04, nE3, $04, nE2, $04, nE3, $04
	dc.b	nEb3, $04, nEb2, $02, nD2, $02, nRst, $02, nD2, $02, nD3, $04
	dc.b	nCs2, $02, nCs3, $02, nD2, $02, nD3, $02

SilverScreen_Loop11:
	dc.b	nE2, $04, nRst, $04, nD3, $04, nE3, $02, nB2, $02, nRst, $02
	dc.b	nD3, $04, nB2, $02, nD3, $04, nE3, $04, nE2, $04, nE2, $04
	dc.b	nD3, $04, nE3, $02, nB2, $02, nRst, $02, nD3, $02, nD3, $02
	dc.b	nB2, $02, nD3, $04, nCs3, $04
	smpsLoop            $00, $04, SilverScreen_Loop11

SilverScreen_Loop12:
	dc.b	nE2, $04, nB2, nD3, nE3, nD3, nB2, nE2, nB2, nD3, nE3, nD3
	dc.b	nB2, nD3, nB2, nE3, nE2
	smpsLoop            $00, $06, SilverScreen_Loop12
	smpsJump            SilverScreen_Loop10

; FM2 Data
SilverScreen_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nRst, $14

SilverScreen_Loop0E:
	smpsCall            SilverScreen_Call02
	smpsLoop            $00, $04, SilverScreen_Loop0E

SilverScreen_Loop0F:
	dc.b	nRst, $20
	smpsLoop            $00, $04, SilverScreen_Loop0F
	smpsCall            SilverScreen_Call02
	smpsChangeTransposition $0C
	smpsCall            SilverScreen_Call02
	smpsChangeTransposition $F4
	smpsJump            SilverScreen_Loop0E

SilverScreen_Call02:
	dc.b	nE5, $02, nRst, $02
	smpsFMAlterVol      $0F
	smpsPan             panLeft, $00
	dc.b	nE5, $02, nRst, $02, nRst, $04
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nE5, $02, nRst, $02
	smpsFMAlterVol      $0F
	smpsPan             panLeft, $00
	dc.b	nE5, $02, nRst, $02, nRst, $04
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nE5, $02, nRst, $02
	smpsFMAlterVol      $0F
	smpsPan             panLeft, $00
	dc.b	nE5, $02, nRst, $02, nRst, $0C
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nE5, $02, nRst, $02, nD5, $02, nRst, $02, nD5, $02, nRst, $02
	dc.b	nF5, $02, nRst, $02, nF5, $02, nRst, $02, nE5, $02, nRst, $02
	smpsFMAlterVol      $0F
	smpsPan             panLeft, $00
	dc.b	nE5, $02, nRst, $02, nRst, $04
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nE5, $02, nRst, $02
	smpsFMAlterVol      $0F
	smpsPan             panLeft, $00
	dc.b	nE5, $02, nRst, $02, nRst, $04
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nE5, $02, nRst, $02
	smpsFMAlterVol      $0F
	smpsPan             panLeft, $00
	dc.b	nE5, $02, nRst, $02, nRst, $20
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	smpsReturn

; FM3 Data
SilverScreen_FM3:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nRst, $14

SilverScreen_Loop0C:
	smpsCall            SilverScreen_Call01
	smpsLoop            $00, $04, SilverScreen_Loop0C

SilverScreen_Loop0D:
	dc.b	nRst, $20
	smpsLoop            $00, $04, SilverScreen_Loop0D
	smpsCall            SilverScreen_Call01
	smpsChangeTransposition $0C
	smpsCall            SilverScreen_Call01
	smpsChangeTransposition $F4
	smpsJump            SilverScreen_Loop0C

SilverScreen_Call01:
	dc.b	nE5, $02, nRst, $02
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	nE5, $02, nRst, $02, nRst, $04
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nE5, $02, nRst, $02
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	nE5, $02, nRst, $02, nRst, $04
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nE5, $02, nRst, $02
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	nE5, $02, nRst, $02, nRst, $0C
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nE5, $02, nRst, $02, nD5, $02, nRst, $02, nD5, $02, nRst, $02
	dc.b	nF5, $02, nRst, $02, nF5, $02, nRst, $02, nE5, $02, nRst, $02
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	nE5, $02, nRst, $02, nRst, $04
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nE5, $02, nRst, $02
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	nE5, $02, nRst, $02, nRst, $04
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nE5, $02, nRst, $02
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	nE5, $02, nRst, $02, nRst, $20
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	smpsReturn

; FM4 Data
SilverScreen_FM4:
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $14

SilverScreen_Loop0A:
	dc.b	nBb4, $01, nB4, $1F, smpsNoAttack, $10, nA4, nB4, $20, smpsNoAttack, $1F, nBb5
	dc.b	$01, nB5, $20, smpsNoAttack, $10, nA5, $10, nB5, $20, smpsNoAttack, $20
	smpsLoop            $00, $02, SilverScreen_Loop0A

SilverScreen_Loop0B:
	dc.b	nRst, $20
	smpsLoop            $00, $0B, SilverScreen_Loop0B
	dc.b	nRst, $20
	smpsJump            SilverScreen_Loop0A

; FM5 Data
SilverScreen_FM5:
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $02, $05
	smpsSetvoice        $02
	dc.b	nRst, $14

SilverScreen_Loop08:
	dc.b	nEb4, $01, nE4, $1F, smpsNoAttack, $10, nD4, $10, nE4, $20, smpsNoAttack, $1F
	dc.b	nEb5, $01, nE5, $20, smpsNoAttack, $10, nD5, $10, nE5, $20, smpsNoAttack, $20
	smpsLoop            $00, $02, SilverScreen_Loop08
	smpsSetvoice        $03
	smpsChangeTransposition $13
	smpsFMAlterVol      $05
	dc.b	nRst, $04

SilverScreen_Loop09:
	dc.b	nE2, $04, nB2, nD3, nE3, nD3, nB2, nE2, nB2, nD3, nE3, nD3
	dc.b	nB2, nD3, nB2, nE3, nE2
	smpsLoop            $00, $05, SilverScreen_Loop09
	dc.b	nE2, nB2, nD3, nE3, nD3, nB2, nE2, nB2, nD3, nE3, nD3, nB2
	dc.b	nD3, nB2, nE3
	smpsChangeTransposition $ED
	smpsFMAlterVol      $FB
	smpsSetvoice        $02
	smpsJump            SilverScreen_Loop08

; FM6 Data
SilverScreen_FM6:
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $04, nRst, $14

SilverScreen_Jump01:
	smpsCall            SilverScreen_Call00
	smpsJump            SilverScreen_Jump01

; PSG1 Data
SilverScreen_PSG1:
	smpsPSGvoice        KCVolEnv_0C
	dc.b	nRst, $14

SilverScreen_Jump03:
	smpsCall            SilverScreen_Call00
	smpsJump            SilverScreen_Jump03

SilverScreen_Call00:
	dc.b	nRst, $20, nRst, $20, nRst, $04, nE5, $04, nG5, $04, nD6, $04
	dc.b	nCs6, $06, nB5, $02, nA5, $04, nB5, $04, nA5, $04, nD5, nE5
	dc.b	nG5, nA5, nB5, nD6, nFs6, nRst, $20, nRst, $20, nRst, $04, nE5
	dc.b	$04, nG5, $04, nD6, $04, nCs6, $06, nB5, $02, nA5, $04, nB5
	dc.b	$04, nA5, $04, nD5, nE5, nG5, nA5, nG5, nFs5, nD5
	smpsLoop            $00, $02, SilverScreen_Call00
	smpsChangeTransposition $18

SilverScreen_Loop15:
	dc.b	nE2, $04, nB2, nD3, nE3, nD3, nB2, nE2, nB2, nD3, nE3, nD3
	dc.b	nB2, nD3, nB2, nE3, nE2
	smpsLoop            $00, $06, SilverScreen_Loop15
	smpsChangeTransposition $E8
	smpsReturn

; PSG2 Data
SilverScreen_PSG2:
	smpsPSGvoice        KCVolEnv_0C
	dc.b	nRst, $14

SilverScreen_Jump02:
	smpsCall            SilverScreen_Call00
	smpsJump            SilverScreen_Jump02

; PSG3 Data
SilverScreen_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $14

SilverScreen_Loop13:
	smpsPSGvoice        KCVolEnv_05
	dc.b	(nMaxPSG2-$23)&$FF, $04
	smpsPSGvoice        KCVolEnv_02
	smpsPSGAlterVol     $04
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        KCVolEnv_05
	smpsPSGAlterVol     $FD
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        KCVolEnv_02
	smpsPSGAlterVol     $03
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FC
	smpsPSGvoice        KCVolEnv_05
	dc.b	(nMaxPSG2-$23)&$FF, $04
	smpsPSGvoice        KCVolEnv_02
	smpsPSGAlterVol     $04
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        KCVolEnv_05
	smpsPSGAlterVol     $FD
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        KCVolEnv_02
	smpsPSGAlterVol     $03
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $10, SilverScreen_Loop13

SilverScreen_Loop14:
	dc.b	nRst, $20
	smpsLoop            $00, $0B, SilverScreen_Loop14
	smpsPSGvoice        KCVolEnv_05
	dc.b	(nMaxPSG2-$23)&$FF, $04
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $04
	smpsPSGvoice        KCVolEnv_05
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        KCVolEnv_05
	smpsPSGAlterVol     $FF
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        KCVolEnv_02
	smpsPSGAlterVol     $FF
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        KCVolEnv_05
	smpsPSGAlterVol     $FF
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        KCVolEnv_02
	smpsPSGAlterVol     $FF
	dc.b	(nMaxPSG2-$23)&$FF
	smpsJump            SilverScreen_Loop13

; PWM1 Data
SilverScreen_PWM1:
	dc.b	pwmSilence, $14

SilverScreen_Jump00:
	dc.b	pwmAcousticKick, $04, pwmLowTom, pwmAcousticKick, pwmAcousticKick, pwmLowTom, pwmAcousticKick, pwmAcousticKick, pwmLowTom, pwmAcousticKick, $04, pwmAcousticKick
	dc.b	pwmLowTom, pwmAcousticKick, pwmLowTom, pwmAcousticKick, pwmLowTom, pwmAcousticKick
	smpsJump            SilverScreen_Jump00

; PWM2 Data
SilverScreen_PWM2:
	smpsFMAlterVol      $C0
	dc.b	pwmElectricSnare, $02, pwmElectricSnare
	smpsFMAlterVol      $40
	smpsFMAlterVol      $11
	dc.b	pwmElectricSnare, $04
	smpsFMAlterVol      $AB
	dc.b	pwmElectricSnare, $02, pwmElectricSnare
	smpsFMAlterVol      $11
	dc.b	pwmElectricSnare, $02
	smpsFMAlterVol      $11
	dc.b	pwmElectricSnare, $02
	smpsFMAlterVol      $11
	dc.b	pwmElectricSnare, $02
	smpsFMAlterVol      $11
	dc.b	pwmElectricSnare, $02
	smpsFMAlterVol      $11
	dc.b	pwmElectricSnare, $08, nRst, $18
	smpsFMAlterVol      $EF

SilverScreen_Loop06:
	dc.b	nRst, $20
	smpsLoop            $00, $06, SilverScreen_Loop06
	dc.b	nRst, $0C
	smpsLoop            $01, $02, SilverScreen_PWM2
	dc.b	pwmElectricSnare, $02, pwmElectricSnare
	smpsFMAlterVol      $11
	dc.b	pwmElectricSnare, $04
	smpsFMAlterVol      $AB
	dc.b	pwmElectricSnare, $02, pwmElectricSnare
	smpsFMAlterVol      $11
	dc.b	pwmElectricSnare, $02
	smpsFMAlterVol      $11
	dc.b	pwmElectricSnare, $02
	smpsFMAlterVol      $11
	dc.b	pwmElectricSnare, $02
	smpsFMAlterVol      $11
	dc.b	pwmElectricSnare, $02

SilverScreen_Loop07:
	smpsFMAlterVol      $11
	dc.b	pwmElectricSnare, $08, nRst, $18
	smpsFMAlterVol      $EF
	dc.b	nRst, $20
	smpsLoop            $00, $05, SilverScreen_Loop07
	smpsFMAlterVol      $11
	dc.b	pwmElectricSnare, $08, nRst, $18
	smpsFMAlterVol      $EF
	dc.b	nRst, $0C
	smpsJump            SilverScreen_PWM2

; PWM3 Data
SilverScreen_PWM3:
	dc.b	pwmSilence, $04
	smpsFMAlterVol      $9A
	dc.b	pwmCrashCymbal, $08
	smpsFMAlterVol      $33
	dc.b	pwmCrashCymbal, $08
	smpsFMAlterVol      $33

SilverScreen_Loop04:
	dc.b	pwmCrashCymbal, $20

SilverScreen_Loop03:
	dc.b	nRst, $20
	smpsLoop            $00, $03, SilverScreen_Loop03
	smpsLoop            $01, $04, SilverScreen_Loop04

SilverScreen_Loop05:
	dc.b	nRst, $20
	smpsLoop            $00, $0B, SilverScreen_Loop05
	smpsFMAlterVol      $9A
	dc.b	pwmCrashCymbal, $08
	smpsFMAlterVol      $11
	dc.b	pwmCrashCymbal, $08
	smpsFMAlterVol      $22
	dc.b	pwmCrashCymbal, $08
	smpsFMAlterVol      $11
	dc.b	pwmCrashCymbal, $08
	smpsFMAlterVol      $22
	smpsJump            SilverScreen_Loop04

; PWM4 Data
SilverScreen_PWM4:
	dc.b	nRst, $14

SilverScreen_Loop01:
	dc.b	pwmSplashCymbal, $20

SilverScreen_Loop00:
	dc.b	nRst, $20
	smpsLoop            $00, $03, SilverScreen_Loop00
	smpsLoop            $01, $04, SilverScreen_Loop01

SilverScreen_Loop02:
	smpsFMAlterVol      $22
	dc.b	pwmClap, $04
	smpsFMAlterVol      $DE
	dc.b	$04, nRst, $08, pwmClap, $08
	smpsFMAlterVol      $22
	dc.b	$04
	smpsFMAlterVol      $DE
	dc.b	$04, nRst, $08, pwmClap, nRst, $04, pwmClap, nRst, pwmClap
	smpsLoop            $00, $06, SilverScreen_Loop02
	smpsJump            SilverScreen_Loop01

SilverScreen_Voices:
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
;	$01, $0F, $01, $01, 	$0F, $0F, $0F, $14, 	$0A, $0A, $0A, $05
;	$02, $02, $02, $08, 	$56, $A6, $56, $17, 	$19, $28, $28, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $0F, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $0F, $0F, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $0A, $0A, $0A
	smpsVcDecayRate2    $08, $02, $02, $02
	smpsVcDecayLevel    $01, $05, $0A, $05
	smpsVcReleaseRate   $07, $06, $06, $06
	smpsVcTotalLevel    $00, $28, $28, $19

;	Voice $02
;	$0F
;	$32, $76, $72, $31, 	$1F, $1F, $1F, $1F, 	$00, $0F, $00, $00
;	$00, $00, $00, $00, 	$0A, $69, $09, $08, 	$85, $83, $80, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $03
	smpsVcCoarseFreq    $01, $02, $06, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $0F, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $06, $00
	smpsVcReleaseRate   $08, $09, $09, $0A
	smpsVcTotalLevel    $00, $00, $03, $05

;	Voice $03
;	$39
;	$02, $01, $02, $01, 	$5F, $5F, $1F, $10, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $07, 	$1B, $32, $28, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $02
	smpsVcRateScale     $00, $00, $01, $01
	smpsVcAttackRate    $10, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $07, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $28, $32, $1B

