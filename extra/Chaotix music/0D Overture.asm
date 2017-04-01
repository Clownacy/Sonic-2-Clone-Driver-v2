Overture_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Overture_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $1E

	smpsHeaderDAC       Overture_DAC
	smpsHeaderFM        Overture_FM1,	$00, $10
	smpsHeaderFM        Overture_FM2,	$00, $15
	smpsHeaderFM        Overture_FM3,	$00, $15
	smpsHeaderFM        Overture_FM4,	$00, $15
	smpsHeaderFM        Overture_FM5,	$00, $15
	smpsHeaderFM        Overture_FM6,	$00, $15
	smpsHeaderPSG       Overture_PSG1,	$F4, $06, $00, KCVolEnv_0C
	smpsHeaderPSG       Overture_PSG2,	$F4, $03, $00, KCVolEnv_0C
	smpsHeaderPSG       Overture_PSG3,	$F4, $05, $00, KCVolEnv_02
	smpsHeaderPWM       Overture_PWM1,	$00, $99
	smpsHeaderPWM       Overture_PWM2,	$00, $11
	smpsHeaderPWM       Overture_PWM3,	$00, $99
	smpsHeaderPWM       Overture_PWM4,	$00, $33

; Dummy DAC data
Overture_DAC:
	smpsStop

; FM1 Data
Overture_FM1:
	smpsSetvoice        $00
	smpsModSet          $09, $01, $02, $00
	dc.b	nC2, $30
	smpsModSet          $00, $00, $00, $00
	dc.b	smpsNoAttack, $30

Overture_Jump02:
	dc.b	nD2, $60, smpsNoAttack, $60, nC2, smpsNoAttack, $60
	smpsJump            Overture_Jump02

; FM2 Data
Overture_FM2:
	smpsModSet          $09, $01, $02, $00
	smpsSetvoice        $04
	smpsPan             panRight, $00
	dc.b	nF3, $30
	smpsModSet          $00, $00, $00, $00
	dc.b	smpsNoAttack, $30
	smpsPan             panCenter, $00

Overture_Loop0A:
	smpsSetvoice        $02
	dc.b	nF5, $12
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00

Overture_Loop09:
	dc.b	$06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$02
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsLoop            $00, $03, Overture_Loop09
	smpsLoop            $01, $02, Overture_Loop0A
	dc.b	nF5, $12
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsModSet          $01, $01, $03, $03
	dc.b	nRst, $18, nC4, $30
	smpsModSet          $00, $00, $00, $00
	smpsChangeTransposition $FE
	smpsLoop            $02, $02, Overture_Loop0A
	smpsChangeTransposition $04
	smpsJump            Overture_Loop0A

; FM3 Data
Overture_FM3:
	smpsModSet          $09, $01, $02, $00
	smpsSetvoice        $04
	dc.b	nC3, $30
	smpsModSet          $00, $00, $00, $00
	dc.b	smpsNoAttack, $30

Overture_Loop08:
	smpsSetvoice        $02
	dc.b	nC5, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6

Overture_Loop07:
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$02
	smpsFMAlterVol      $F6
	smpsLoop            $00, $03, Overture_Loop07
	smpsLoop            $01, $02, Overture_Loop08
	dc.b	nC5, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsSetvoice        $01
	smpsModSet          $01, $01, $03, $03
	dc.b	nRst, $30
	smpsPan             panRight, $00
	dc.b	nF4, $18
	smpsPan             panCenter, $00
	smpsModSet          $00, $00, $00, $00
	smpsChangeTransposition $FE
	smpsLoop            $03, $02, Overture_Loop08
	smpsChangeTransposition $04
	smpsJump            Overture_Loop08

; FM4 Data
Overture_FM4:
	smpsModSet          $09, $01, $02, $00
	smpsPan             panLeft, $00
	smpsSetvoice        $04
	dc.b	nG2, $30
	smpsModSet          $00, $00, $00, $00
	dc.b	smpsNoAttack, $30
	smpsPan             panCenter, $00

Overture_Loop06:
	smpsSetvoice        $02
	dc.b	nG4, $12
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00

Overture_Loop05:
	dc.b	$06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$02
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsLoop            $00, $03, Overture_Loop05
	smpsLoop            $01, $02, Overture_Loop06
	dc.b	nG4, $12
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsModSet          $01, $01, $03, $04
	smpsFMAlterVol      $07
	dc.b	nRst, $06, nG3, $18, nC4
	smpsPan             panLeft, $00
	dc.b	nF4, $12
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	smpsChangeTransposition $FE
	smpsLoop            $02, $02, Overture_Loop06
	smpsChangeTransposition $04
	smpsJump            Overture_Loop06

; FM5 Data
Overture_FM5:
	dc.b	nRst, $60

Overture_Loop04:
	smpsSetvoice        $03
	smpsPan             panLeft, $00
	smpsCall            Overture_Call00
	smpsSetvoice        $01
	smpsModSet          $01, $01, $03, $04
	dc.b	nD3, $60
	smpsModSet          $00, $00, $00, $00
	smpsChangeTransposition $FE
	smpsLoop            $00, $02, Overture_Loop04
	smpsChangeTransposition $04
	smpsJump            Overture_Loop04

Overture_Call00:
	dc.b	nE4, $08, nEb4, nD4, $50
	smpsReturn

; FM6 Data
Overture_FM6:
	dc.b	nRst, $60

Overture_Loop03:
	smpsSetvoice        $03
	smpsPan             panRight, $00
	smpsChangeTransposition $F9
	smpsCall            Overture_Call00
	smpsChangeTransposition $07
	smpsSetvoice        $01
	smpsPan             panLeft, $00
	smpsModSet          $01, $01, $03, $03
	smpsFMAlterVol      $07
	dc.b	nRst, $06, nD3, $12
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nG3, $48
	smpsModSet          $00, $00, $00, $00
	smpsChangeTransposition $FE
	smpsLoop            $00, $02, Overture_Loop03
	smpsChangeTransposition $04
	smpsJump            Overture_Loop03

; PSG1 Data
Overture_PSG1:
	smpsPSGvoice        KCVolEnv_04
	smpsModSet          $09, $02, $FF, $00
	dc.b	nF3, $30
	smpsModSet          $00, $00, $00, $00
	dc.b	smpsNoAttack, $30

Overture_Jump05:
	smpsModSet          $03, $01, $04, $03
	dc.b	nG3, $60, smpsNoAttack, $60, nF3, smpsNoAttack, $60
	smpsJump            Overture_Jump05

; PSG2 Data
Overture_PSG2:
	smpsPSGvoice        KCVolEnv_04
	smpsModSet          $09, $02, $FF, $00
	dc.b	nBb2, $30
	smpsModSet          $00, $00, $00, $00
	dc.b	smpsNoAttack, $30

Overture_Jump04:
	smpsModSet          $01, $01, $02, $03
	dc.b	nC3, $60, smpsNoAttack, $60, nBb2, smpsNoAttack, $60
	smpsJump            Overture_Jump04

; PSG3 Data
Overture_PSG3:
	smpsPSGvoice        KCVolEnv_04
	smpsModSet          $09, $02, $FF, $00
	dc.b	nF3, $30
	smpsModSet          $00, $00, $00, $00
	dc.b	smpsNoAttack, $30

Overture_Jump03:
	smpsModSet          $02, $01, $03, $03
	dc.b	nG3, $60, smpsNoAttack, $60, nF3, smpsNoAttack, $60
	smpsJump            Overture_Jump03

; PWM1 Data
Overture_PWM1:
	dc.b	pwmSilence, $60

Overture_Jump01:
	dc.b	pwmAcousticKick, $60, pwmAcousticKick, pwmAcousticKick, pwmAcousticKick
	smpsJump            Overture_Jump01

; PWM2 Data
Overture_PWM2:
	dc.b	pwmElectricSnare, $04, pwmElectricSnare, pwmElectricSnare
	smpsFMAlterVol      $11
	smpsLoop            $00, $04, Overture_PWM2

Overture_Loop01:
	dc.b	pwmElectricSnare, $04, pwmElectricSnare
	smpsFMAlterVol      $11
	smpsLoop            $00, $06, Overture_Loop01

Overture_Loop02:
	dc.b	pwmElectricSnare, $18, $08, $08, $08, $18, $14
	smpsFMAlterVol      $CD
	dc.b	$02, $02
	smpsFMAlterVol      $33
	dc.b	$18, $08, $08, $08, $08, $08, $08, $08, $08, $08
	smpsLoop            $00, $02, Overture_Loop02
	smpsJump            Overture_Loop02

; PWM3 Data
Overture_PWM3:
	smpsFMAlterVol      $FC
	dc.b	pwmSplashCymbal, $60
	smpsFMAlterVol      $04

Overture_Loop00:
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $60
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pwmSplashCymbal
	smpsFMAlterVol      $04
	smpsLoop            $00, $02, Overture_Loop00
	smpsJump            Overture_Loop00

; PWM4 Data
Overture_PWM4:
	dc.b	pwmLowTimpani, $03
	smpsLoop            $00, $04, Overture_PWM4
	smpsFMAlterVol      $11
	smpsLoop            $01, $08, Overture_PWM4

Overture_Jump00:
	dc.b	pwmHighTimpani, $60, pwmLowTimpani, pwmHighTimpani, pwmLowTimpani
	smpsJump            Overture_Jump00

Overture_Voices:
;	Voice $00
;	$37
;	$32, $34, $32, $31, 	$9E, $DC, $1C, $5C, 	$05, $06, $04, $01
;	$02, $0A, $03, $03, 	$1F, $2F, $2F, $0F, 	$85, $80, $80, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $02, $04, $02
	smpsVcRateScale     $01, $00, $03, $02
	smpsVcAttackRate    $1C, $1C, $1C, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $04, $06, $05
	smpsVcDecayRate2    $03, $03, $0A, $02
	smpsVcDecayLevel    $00, $02, $02, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $05

;	Voice $01
;	$34
;	$3F, $01, $02, $11, 	$1F, $1F, $1F, $1F, 	$0E, $08, $0F, $09
;	$0F, $04, $05, $00, 	$6F, $0D, $1F, $1D, 	$0F, $80, $10, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $03
	smpsVcCoarseFreq    $01, $02, $01, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $0F, $08, $0E
	smpsVcDecayRate2    $00, $05, $04, $0F
	smpsVcDecayLevel    $01, $01, $00, $06
	smpsVcReleaseRate   $0D, $0F, $0D, $0F
	smpsVcTotalLevel    $00, $10, $00, $0F

;	Voice $02
;	$3D
;	$51, $12, $01, $01, 	$94, $1C, $1C, $1C, 	$0F, $0F, $0F, $0F
;	$07, $04, $04, $04, 	$25, $1A, $1A, $1A, 	$11, $82, $82, $82
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $01, $05
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $1C, $1C, $1C, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0F, $0F, $0F
	smpsVcDecayRate2    $04, $04, $04, $07
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $02, $02, $02, $11

;	Voice $03
;	$04
;	$71, $01, $31, $31, 	$15, $15, $15, $15, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$1A, $80, $19, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $00, $07
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $15, $15, $15, $15
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $19, $00, $1A

;	Voice $04
;	$28
;	$44, $47, $12, $71, 	$1F, $12, $1F, $1F, 	$04, $01, $04, $0C
;	$01, $01, $01, $00, 	$1F, $1F, $1F, $1F, 	$26, $17, $14, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $01, $04, $04
	smpsVcCoarseFreq    $01, $02, $07, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $04, $01, $04
	smpsVcDecayRate2    $00, $01, $01, $01
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $14, $17, $26

