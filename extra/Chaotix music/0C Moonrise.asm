Moonrise_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Moonrise_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $25

	smpsHeaderDAC       Moonrise_DAC
	smpsHeaderFM        Moonrise_FM1,	$00, $0D
	smpsHeaderFM        Moonrise_FM2,	$00, $0C
	smpsHeaderFM        Moonrise_FM3,	$00, $0C
	smpsHeaderFM        Moonrise_FM4,	$00, $0C
	smpsHeaderFM        Moonrise_FM5,	$00, $0C
	smpsHeaderFM        Moonrise_FM6,	$0C, $15
	smpsHeaderPSG       Moonrise_PSG1,	$00, $01, $00, KCVolEnv_0C
	smpsHeaderPSG       Moonrise_PSG2,	$00, $03, $00, KCVolEnv_0C
	smpsHeaderPSG       Moonrise_PSG3,	$23, $02, $00, KCVolEnv_02
	smpsHeaderPWM       Moonrise_PWM1,	$00, $AA
	smpsHeaderPWM       Moonrise_PWM2,	$00, $BB
	smpsHeaderPWM       Moonrise_PWM3,	$00, $99
	smpsHeaderPWM       Moonrise_PWM4,	$00, $75

; Dummy DAC data
Moonrise_DAC:
	smpsStop

; FM1 Data
Moonrise_FM1:
	smpsSetvoice        $00

Moonrise_Loop08:
	smpsCall            Moonrise_Call08
	smpsLoop            $01, $02, Moonrise_Loop08

Moonrise_Loop09:
	smpsCall            Moonrise_Call08
	smpsLoop            $01, $04, Moonrise_Loop09
	smpsJump            Moonrise_Loop09

Moonrise_Call08:
	dc.b	nD2, $12, nD2, nC2, $0C
	smpsLoop            $00, $03, Moonrise_Call08
	dc.b	nG2, $12, nF2, nC2, $0C
	smpsReturn

; FM2 Data
Moonrise_FM2:
	smpsSetvoice        $01
	smpsPan             panLeft, $00
	dc.b	nRst, $60, nRst, $54, nD3, $0C, smpsNoAttack, $60
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	smpsFMAlterVol      $09
	smpsChangeTransposition $0C
	dc.b	nG4, $12
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nFs4, $12
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, $06, nC4, nD4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, $0C, nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00

Moonrise_Jump03:
	dc.b	nF4, $12, nD4, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $06
	smpsSetvoice        $01
	smpsFMAlterVol      $F7
	smpsChangeTransposition $F4

Moonrise_Loop06:
	smpsCall            Moonrise_Call07
	smpsLoop            $00, $06, Moonrise_Loop06
	smpsSetvoice        $02
	smpsFMAlterVol      $09
	smpsChangeTransposition $0C
	dc.b	nRst, $06, nC4, nD4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, $0C, nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, $12, nD4, $0C, nRst, $12
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsFMAlterVol      $F7
	smpsChangeTransposition $F4
	smpsCall            Moonrise_Call07
	smpsCall            Moonrise_Call07
	smpsCall            Moonrise_Call07
	smpsSetvoice        $02
	smpsFMAlterVol      $09
	smpsChangeTransposition $0C

Moonrise_Loop07:
	dc.b	nF4, $12
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsLoop            $00, $06, Moonrise_Loop07
	dc.b	nF4, $06, nC4, nD4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, $0C, nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsJump            Moonrise_Jump03

Moonrise_Call07:
	dc.b	nF3, $12, $06
	smpsFMAlterVol      $0A
	dc.b	nRst, $0C, nF3, $06, nRst
	smpsFMAlterVol      $F6
	smpsReturn

; FM3 Data
Moonrise_FM3:
	smpsSetvoice        $01
	dc.b	nRst, $60, nRst, $58, nF3, $08, smpsNoAttack, $60, smpsNoAttack, $60
	smpsPan             panRight, $00

Moonrise_Loop05:
	smpsCall            Moonrise_Call06
	smpsCall            Moonrise_Call06
	smpsCall            Moonrise_Call06
	smpsChangeTransposition $02
	smpsCall            Moonrise_Call06
	smpsChangeTransposition $FE
	smpsLoop            $00, $04, Moonrise_Loop05
	smpsJump            Moonrise_Loop05

Moonrise_Call06:
	dc.b	nA3, $12, $06
	smpsFMAlterVol      $0A
	dc.b	nRst, $0C, nA3, $06, nRst
	smpsFMAlterVol      $F6
	smpsReturn

; FM4 Data
Moonrise_FM4:
	smpsSetvoice        $01
	dc.b	nRst, $60, nRst, $5C, nA3, $04, smpsNoAttack, $60, smpsNoAttack, $60
	smpsPan             panLeft, $00

Moonrise_Loop04:
	smpsCall            Moonrise_Call05
	smpsChangeTransposition $FF
	smpsCall            Moonrise_Call05
	smpsChangeTransposition $01
	smpsCall            Moonrise_Call05
	smpsChangeTransposition $02
	smpsCall            Moonrise_Call05
	smpsChangeTransposition $FE
	smpsLoop            $00, $04, Moonrise_Loop04
	smpsJump            Moonrise_Loop04

Moonrise_Call05:
	dc.b	nC3, $12, $06
	smpsFMAlterVol      $0A
	dc.b	nRst, $0C, nC3, $06, nRst
	smpsFMAlterVol      $F6
	smpsReturn

; FM5 Data
Moonrise_FM5:
	smpsSetvoice        $01
	smpsPan             panRight, $00
	dc.b	nRst, $60, nRst, nC4, smpsNoAttack, $30
	smpsFMAlterVol      $0A
	smpsCall            Moonrise_Call01

Moonrise_Loop03:
	smpsCall            Moonrise_Call02
	smpsCall            Moonrise_Call03
	smpsCall            Moonrise_Call02
	smpsCall            Moonrise_Call04
	smpsCall            Moonrise_Call02
	smpsCall            Moonrise_Call03
	smpsCall            Moonrise_Call02
	smpsCall            Moonrise_Call01
	smpsLoop            $00, $02, Moonrise_Loop03
	smpsJump            Moonrise_Loop03

Moonrise_Call01:
	smpsSetvoice        $03
	smpsPan             panLeft, $00
	dc.b	nG5, $06, nF5, nD5, nG4
	smpsPan             panRight, $00
	dc.b	nG5, nF5, nD5, nG4
	smpsPan             panCenter, $00
	smpsSetvoice        $04
	smpsReturn

Moonrise_Call02:
	dc.b	nG4, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nG4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nF4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nA3
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsReturn

Moonrise_Call03:
	dc.b	nG4, $06, nF4
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nF4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nA3
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3
	smpsReturn

Moonrise_Call04:
	dc.b	nG4, $06, nF4
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nF4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nG3
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3
	smpsReturn

; FM6 Data
Moonrise_FM6:
	smpsSetvoice        $02
	dc.b	nRst, $60, nRst, nRst, nD4, $12
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $12
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC4, $06, nG3, nA3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nA3
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC4, $0C, nA3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nA3
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00

Moonrise_Jump02:
	dc.b	nC4, $12, nA3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $36, nRst, $60, nRst, nRst, $30, nRst, $06, nG3, nA3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nA3
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC4, $0C, nA3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nA3
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC4, $12, nA3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nRst, $30, nRst, $60

Moonrise_Loop02:
	dc.b	nF3, $12
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsLoop            $00, $06, Moonrise_Loop02
	dc.b	nC4, $06, nG3, nA3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC4, $0C, nA3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nD4
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsJump            Moonrise_Jump02

; PSG1 Data
Moonrise_PSG1:
	smpsPSGvoice        KCVolEnv_08
	dc.b	nRst, $60, nRst, nRst, nRst, $30, nG4, $06, nFs4, nF4, nD4, nC4
	dc.b	nA3, nG3, nD3

Moonrise_Jump05:
	smpsCall            Moonrise_Call0A
	smpsJump            Moonrise_Jump05

Moonrise_Call0A:
	dc.b	nF3, $0C, nRst, nG3, nRst, nB3, $12, nG3, $06, nRst, $0C, nC4
	dc.b	smpsNoAttack, $06, nRst, nB3, nRst, nC4, nD4, nRst, nC4, $0C, nRst, $06
	dc.b	nB3, $12, nRst, $06, nG3, $0C, nF3, $0C, nRst, nG3, nRst, nB3
	dc.b	$12, nG3, $06, nRst, $0C, nF4, smpsNoAttack, $06, nRst, nG4, nRst, nF4
	dc.b	nE4, nRst, nD4, $36, nRst, $0C, nC4, $18, nA3, $06, nRst, nD4
	dc.b	$12, nA3, $06, nRst, $18, nRst, $0C, nC4, $18, nA3, $06, nRst
	dc.b	nC4, $12, nD4, $06, nRst, $0C, nF4, $06, nFs4, nG4, $60, smpsNoAttack
	dc.b	$24, nRst, $0C, nG4, $06, nFs4, nF4, nD4, nC4, nA3, nG3, nD3
	smpsReturn

; PSG2 Data
Moonrise_PSG2:
	smpsModSet          $05, $02, $01, $04
	smpsPSGvoice        KCVolEnv_08
	dc.b	nRst, $06, nRst, $60, nRst, nRst, nRst, $30, nG4, $06, nFs4, nF4
	dc.b	nD4, nC4, nA3, nG3, nD3

Moonrise_Jump04:
	smpsCall            Moonrise_Call0A
	smpsJump            Moonrise_Jump04

; PSG3 Data
Moonrise_PSG3:
	smpsPSGform         $E7

Moonrise_Loop0A:
	smpsCall            Moonrise_Call09
	smpsLoop            $01, $04, Moonrise_Loop0A

Moonrise_Loop0B:
	smpsCall            Moonrise_Call09
	smpsLoop            $01, $08, Moonrise_Loop0B
	smpsJump            Moonrise_Loop0B

Moonrise_Call09:
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsLoop            $00, $0A, Moonrise_Call09
	smpsPSGvoice        KCVolEnv_05
	dc.b	$0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	$06, $06
	smpsPSGvoice        KCVolEnv_05
	dc.b	$0C
	smpsReturn

; PWM1 Data
Moonrise_PWM1:
	dc.b	pwmAcousticKick, $30, $30, $30, $06, $0C, $06, nRst, $18
	smpsLoop            $00, $02, Moonrise_PWM1

Moonrise_Loop01:
	dc.b	pwmAcousticKick, $12, $06, nRst, $18
	smpsLoop            $00, $03, Moonrise_Loop01
	dc.b	pwmAcousticKick, $06, $0C, $06, nRst, $18
	smpsLoop            $01, $04, Moonrise_Loop01
	smpsJump            Moonrise_Loop01

; PWM2 Data
Moonrise_PWM2:
	dc.b	pwmSilence, $60, nRst, $3C, pwmAcousticSnare, $0C
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom, $06
	smpsFMAlterVol      $07
	dc.b	pwmMidTom, $0C
	smpsFMAlterVol      $90
	dc.b	pwmLowTom, $06
	smpsFMAlterVol      $70
	dc.b	nRst, $60, smpsNoAttack, $3C, pwmAcousticSnare, $04, $04, $04, $06, $06, $06, $06

Moonrise_Jump01:
	dc.b	nRst, $18, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst
	dc.b	pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, pwmAcousticSnare, $12, $06, nRst, $18, pwmAcousticSnare, nRst, pwmAcousticSnare
	dc.b	nRst, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, $0C
	dc.b	pwmAcousticSnare, $04, $04, $04, $06, $06, $06, $06
	smpsJump            Moonrise_Jump01

; PWM3 Data
Moonrise_PWM3:
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $60, nRst, pwmCrashCymbal
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pwmSplashCymbal
	smpsFMAlterVol      $04

Moonrise_Jump00:
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $60, nRst, nRst, nRst, pwmCrashCymbal
	smpsFMAlterVol      $40
	dc.b	nRst
	smpsFMAlterVol      $FC
	dc.b	pwmSplashCymbal
	smpsFMAlterVol      $04
	dc.b	nRst
	smpsJump            Moonrise_Jump00

; PWM4 Data
Moonrise_PWM4:
	smpsCall            Moonrise_Call00
	smpsLoop            $01, $04, Moonrise_PWM4

Moonrise_Loop00:
	smpsCall            Moonrise_Call00
	smpsLoop            $01, $08, Moonrise_Loop00
	smpsJump            Moonrise_Loop00

Moonrise_Call00:
	dc.b	pwmElectricHiHat, $06
	smpsFMAlterVol      $AB
	dc.b	$06
	smpsFMAlterVol      $22
	dc.b	$06
	smpsFMAlterVol      $DE
	dc.b	$06
	smpsFMAlterVol      $55
	smpsLoop            $00, $04, Moonrise_Call00
	smpsReturn

Moonrise_Voices:
;	Voice $00
;	$3C
;	$01, $00, $00, $00, 	$1F, $1F, $15, $1F, 	$11, $0D, $12, $05
;	$07, $04, $09, $02, 	$55, $3A, $25, $1A, 	$1A, $80, $07, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $15, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $12, $0D, $11
	smpsVcDecayRate2    $02, $09, $04, $07
	smpsVcDecayLevel    $01, $02, $03, $05
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $00, $07, $00, $1A

;	Voice $01
;	$84
;	$3F, $01, $01, $01, 	$1F, $1F, $5F, $5F, 	$0E, $12, $0F, $12
;	$0F, $06, $05, $06, 	$2F, $1F, $1F, $1F, 	$3F, $80, $12, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $02
	smpsVcDetune        $00, $00, $00, $03
	smpsVcCoarseFreq    $01, $01, $01, $0F
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $12, $0F, $12, $0E
	smpsVcDecayRate2    $06, $05, $06, $0F
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $12, $00, $3F

;	Voice $02
;	$3D
;	$02, $02, $01, $02, 	$94, $19, $19, $19, 	$0F, $0D, $0D, $0D
;	$07, $04, $04, $04, 	$25, $1A, $1A, $1A, 	$14, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $02, $02
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0D, $0F
	smpsVcDecayRate2    $04, $04, $04, $07
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $00, $00, $00, $14

;	Voice $03
;	$2D
;	$77, $65, $05, $15, 	$1F, $5F, $5F, $5F, 	$00, $03, $03, $05
;	$00, $01, $02, $01, 	$0F, $1C, $1C, $1C, 	$22, $83, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $06, $07
	smpsVcCoarseFreq    $05, $05, $05, $07
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $03, $03, $00
	smpsVcDecayRate2    $01, $02, $01, $00
	smpsVcDecayLevel    $01, $01, $01, $00
	smpsVcReleaseRate   $0C, $0C, $0C, $0F
	smpsVcTotalLevel    $00, $00, $03, $22

;	Voice $04
;	$76
;	$7A, $32, $51, $11, 	$1F, $7F, $9F, $9D, 	$0A, $0E, $0B, $0A
;	$01, $02, $05, $02, 	$AF, $8F, $9F, $8F, 	$14, $80, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $06
	smpsVcUnusedBits    $01
	smpsVcDetune        $01, $05, $03, $07
	smpsVcCoarseFreq    $01, $01, $02, $0A
	smpsVcRateScale     $02, $02, $01, $00
	smpsVcAttackRate    $1D, $1F, $3F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0B, $0E, $0A
	smpsVcDecayRate2    $02, $05, $02, $01
	smpsVcDecayLevel    $08, $09, $08, $0A
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $14

