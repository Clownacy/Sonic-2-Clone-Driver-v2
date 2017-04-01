SteelHeart_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SteelHeart_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $20

	smpsHeaderDAC       SteelHeart_DAC
	smpsHeaderFM        SteelHeart_FM1,	$00, $0D
	smpsHeaderFM        SteelHeart_FM2,	$00, $0C
	smpsHeaderFM        SteelHeart_FM3,	$00, $0F
	smpsHeaderFM        SteelHeart_FM4,	$00, $1E
	smpsHeaderFM        SteelHeart_FM5,	$00, $0F
	smpsHeaderFM        SteelHeart_FM6,	$00, $20
	smpsHeaderPSG       SteelHeart_PSG1,	$E8, $02, $00, $00
	smpsHeaderPSG       SteelHeart_PSG2,	$E3, $06, $00, $00
	smpsHeaderPSG       SteelHeart_PSG3,	$00, $00, $00, $00
	smpsHeaderPWM       SteelHeart_PWM1,	$00, $BB
	smpsHeaderPWM       SteelHeart_PWM2,	$00, $FF
	smpsHeaderPWM       SteelHeart_PWM3,	$00, $AA
	smpsHeaderPWM       SteelHeart_PWM4,	$00, $33

; Dummy DAC data
SteelHeart_DAC:
	smpsStop

; FM1 Data
SteelHeart_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	smpsCall            SteelHeart_Call02
	smpsFMAlterVol      $F8
	dc.b	nAb2, $08
	smpsFMAlterVol      $08
	dc.b	nG2, nCs2, smpsNoAttack, $18
	smpsFMAlterVol      $F8
	dc.b	nG2, $08
	smpsFMAlterVol      $08
	dc.b	nFs2, nC2, smpsNoAttack, $18, smpsNoAttack

SteelHeart_Jump08:
	smpsCall            SteelHeart_Call02
	smpsJump            SteelHeart_Jump08

SteelHeart_Call02:
	smpsFMAlterVol      $F9
	dc.b	nC2, $08
	smpsFMAlterVol      $07
	dc.b	nC3, nC2, nC3, nC2, nC3
	smpsLoop            $00, $04, SteelHeart_Call02
	smpsReturn

; FM2 Data
SteelHeart_FM2:
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	dc.b	nRst, $60, nRst, $06, nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nE4, $06, nRst, $12
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nE4, $06, nRst, $0C
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	smpsChangeTransposition $04

SteelHeart_Loop01:
	smpsFMAlterVol      $FA
	dc.b	nE4, $0C
	smpsFMAlterVol      $06
	dc.b	nF4, nFs4, nG4
	smpsLoop            $00, $04, SteelHeart_Loop01
	smpsFMAlterVol      $FD
	dc.b	nE4, $0C
	smpsFMAlterVol      $03
	dc.b	nF4
	smpsFMAlterVol      $02
	dc.b	nFs4
	smpsFMAlterVol      $02
	dc.b	nG4
	smpsFMAlterVol      $02
	smpsFMAlterVol      $FE
	dc.b	nE4, $0C
	smpsFMAlterVol      $02
	dc.b	nF4
	smpsFMAlterVol      $02
	dc.b	nFs4
	smpsFMAlterVol      $02
	dc.b	nG4
	smpsFMAlterVol      $F6
	smpsChangeTransposition $FC

SteelHeart_Jump07:
	dc.b	nRst, $60, nRst, $08, nBb3, nEb4, $05, nRst, $03
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nEb4, $0C, nRst, $06
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nF4, $06, nA4, $05, nRst, $03
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nA4, $08, nRst
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nC5, $08, nAb4, $05, nRst, $03
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nAb4, $08
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nRst, $60, nRst, $06, nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nE4, $06, nRst, $12
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nE4, $06, nRst, $0C
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	smpsJump            SteelHeart_Jump07

; FM3 Data
SteelHeart_FM3:
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	dc.b	nRst, $60
	smpsChangeTransposition $FA
	dc.b	nRst, $06, nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panRight, $00
	dc.b	nE4, $06, nRst, $12
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panRight, $00
	dc.b	nE4, $06, nRst, $0C
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panRight, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	smpsChangeTransposition $06

SteelHeart_Loop00:
	smpsFMAlterVol      $FA
	dc.b	nE4, $0C
	smpsFMAlterVol      $06
	dc.b	nF4, nFs4, nG4
	smpsLoop            $00, $04, SteelHeart_Loop00
	smpsFMAlterVol      $FD
	dc.b	nE4, $0C
	smpsFMAlterVol      $03
	dc.b	nF4
	smpsFMAlterVol      $02
	dc.b	nFs4
	smpsFMAlterVol      $02
	dc.b	nG4
	smpsFMAlterVol      $02
	smpsFMAlterVol      $FE
	dc.b	nE4, $0C
	smpsFMAlterVol      $02
	dc.b	nF4
	smpsFMAlterVol      $02
	dc.b	nFs4
	smpsFMAlterVol      $02
	dc.b	nG4
	smpsFMAlterVol      $F6

SteelHeart_Jump06:
	dc.b	nRst, $60
	smpsFMAlterVol      $0A
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $08, nRst, $08, nBb3, nEb4, $05, nRst, $03
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nEb4, $0C, nRst, $06
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nF4, $06, nA4, $05, nRst, $03
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nA4, $08, nRst
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nC5, $08, nAb4, $05, nRst, $03
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F6
	smpsModSet          $00, $00, $00, $00
	dc.b	nRst, $60
	smpsChangeTransposition $FA
	dc.b	nRst, $06, nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panRight, $00
	dc.b	nE4, $06, nRst, $12
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panRight, $00
	dc.b	nE4, $06, nRst, $0C
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panRight, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	smpsChangeTransposition $06
	smpsJump            SteelHeart_Jump06

; FM4 Data
SteelHeart_FM4:
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $06
	smpsFMAlterVol      $0A
	dc.b	nRst, $60, nRst, $06, nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nE4, $06, nRst, $12
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nE4, $06, nRst, $0C
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nE4, $06
	smpsFMAlterVol      $EF
	smpsPan             panCenter, $00
	smpsModSet          $00, $00, $00, $00
	smpsFMAlterVol      $F9
	dc.b	nAb4, $08
	smpsFMAlterVol      $07
	dc.b	nG4, nCs4, smpsNoAttack, $18
	smpsFMAlterVol      $F9
	dc.b	nG4, $08
	smpsFMAlterVol      $07
	dc.b	nFs4, nC4, smpsNoAttack, $18, smpsNoAttack, $60, nRst, $60
	smpsFMAlterVol      $0A
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $08

SteelHeart_Jump05:
	dc.b	nRst, $60, nRst, $08, nBb3, nEb4, $05, nRst, $03
	smpsFMAlterVol      $07
	smpsPan             panRight, $00
	dc.b	nEb4, $0C, nRst, $06
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nF4, $06, nA4, $05, nRst, $03
	smpsFMAlterVol      $07
	smpsPan             panRight, $00
	dc.b	nA4, $08, nRst
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nC5, $08, nAb4, $05, nRst, $03
	smpsFMAlterVol      $07
	smpsPan             panRight, $00
	dc.b	nAb4, $08
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nRst, $60, nRst, $06, nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nE4, $06, nRst, $12
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nE4, $06, nRst, $0C
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nE4, $06, nRst
	smpsFMAlterVol      $F9
	smpsPan             panCenter, $00
	smpsJump            SteelHeart_Jump05

; FM5 Data
SteelHeart_FM5:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsCall            SteelHeart_Call01
	dc.b	nRst, $60

SteelHeart_Jump04:
	smpsCall            SteelHeart_Call01
	smpsJump            SteelHeart_Jump04

SteelHeart_Call01:
	dc.b	nE2, $06, nRst, $18, nE2, $06, nRst, $0C, nE2, $06, nRst, $12
	dc.b	nRst, $12, nE2, $03, nRst, nE2, $06, nRst, $0C, nE2, $06, nRst
	dc.b	$12, nE2, $06, nRst, $08, nE2, $04, nRst, nE2, $04, nRst, nRst
	dc.b	$18
	smpsReturn

; FM6 Data
SteelHeart_FM6:
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $08
	smpsCall            SteelHeart_Call00
	dc.b	nRst, $36, nC4, $03, nCs4, nD4, nEb4, nE4, nF4, nFs4, nG4, nAb4
	dc.b	nA4, nBb4, nB4, nC5, nCs5, nAb4, $08, nG4, nCs4, smpsNoAttack, $18, nG4
	dc.b	$08, nFs4, nC4, smpsNoAttack, $18, smpsNoAttack, $60, nRst, $60

SteelHeart_Jump03:
	smpsCall            SteelHeart_Call00
	dc.b	nRst, $60
	smpsJump            SteelHeart_Jump03

; PSG1 Data
SteelHeart_PSG1:
	smpsPSGvoice        KCVolEnv_0C
	smpsCall            SteelHeart_Call00
	smpsPSGvoice        KCVolEnv_08
	dc.b	nRst, $36, nC4, $03, nCs4, nD4, nEb4, nE4, nF4, nFs4, nG4, nAb4
	dc.b	nA4, nBb4, nB4, nC5, nCs5
	smpsPSGAlterVol     $FE
	dc.b	nAb4, $08
	smpsPSGAlterVol     $02
	dc.b	nG4, nCs4, smpsNoAttack, $18
	smpsPSGAlterVol     $FE
	dc.b	nG4, $08
	smpsPSGAlterVol     $02
	dc.b	nFs4, nC4, smpsNoAttack, $18, smpsNoAttack, $60, nRst, $60
	smpsPSGvoice        KCVolEnv_0C

SteelHeart_Jump0A:
	smpsCall            SteelHeart_Call00
	dc.b	nRst, $60
	smpsJump            SteelHeart_Jump0A

SteelHeart_Call00:
	dc.b	nC6, $08, nEb6, nBb5, nD6, nA5, nCs6, nAb5, nC6, nG5, nB5, nFs5
	dc.b	nBb5
	smpsReturn

; PSG2 Data
SteelHeart_PSG2:
	smpsPSGvoice        KCVolEnv_0C
	smpsCall            SteelHeart_Call00
	smpsPSGvoice        KCVolEnv_08
	dc.b	nRst, $36, nC4, $03, nCs4, nD4, nEb4, nE4, nF4, nFs4, nG4, nAb4
	dc.b	nA4, nBb4, nB4, nC5, nCs5
	smpsPSGAlterVol     $FE
	dc.b	nAb4, $08
	smpsPSGAlterVol     $02
	dc.b	nG4, nCs4, smpsNoAttack, $18
	smpsPSGAlterVol     $FE
	dc.b	nG4, $08
	smpsPSGAlterVol     $02
	dc.b	nFs4, nC4, smpsNoAttack, $18, smpsNoAttack, $60, nRst, $60
	smpsPSGvoice        KCVolEnv_0C

SteelHeart_Jump09:
	smpsCall            SteelHeart_Call00
	dc.b	nRst, $60
	smpsJump            SteelHeart_Jump09

; PSG3 Data
SteelHeart_PSG3:
	smpsStop

; PWM1 Data
SteelHeart_PWM1:
	dc.b	pwmAcousticKick, $18, nRst, $06, pwmAcousticKick, $12, pwmAcousticKick, $18, nRst, $12, pwmAcousticKick, $06
	dc.b	pwmAcousticKick, $12, $06, nRst, $12, pwmAcousticKick, $06, nRst, $08, pwmAcousticKick, $08, pwmAcousticKick
	dc.b	nRst, $12, pwmAcousticKick, $06, nRst, $60

SteelHeart_Jump02:
	dc.b	pwmAcousticKick, $18, nRst, $06, pwmAcousticKick, $12, pwmAcousticKick, $18, nRst, $12, pwmAcousticKick, $06
	dc.b	pwmAcousticKick, $12, $06, nRst, $12, pwmAcousticKick, $06, nRst, $08, pwmAcousticKick, $08, pwmAcousticKick
	dc.b	nRst, $12, pwmAcousticKick, $06
	smpsJump            SteelHeart_Jump02

; PWM2 Data
SteelHeart_PWM2:
	dc.b	pwmSilence, $60, pwmSilence, $18
	smpsFMAlterVol      $78
	dc.b	pwmAcousticSnare
	smpsFMAlterVol      $44
	dc.b	pwmAcousticSnare
	smpsFMAlterVol      $44
	dc.b	pwmAcousticSnare, nRst, $60

SteelHeart_Jump01:
	dc.b	nRst, $60, nRst, $48, pwmAcousticSnare, $18
	smpsJump            SteelHeart_Jump01

; PWM3 Data
SteelHeart_PWM3:
	dc.b	pwmSilence, $60, pwmSilence, $60, pwmCrashCymbal, $18, nRst
	smpsFMAlterVol      $22
	dc.b	pwmCrashCymbal
	smpsStop

; PWM4 Data
SteelHeart_PWM4:
	smpsFMAlterVol      $D0
	dc.b	pwmLowBongo, $08
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pwmHighBongo, pwmHighBongo
	smpsFMAlterVol      $03
	smpsLoop            $00, $08, SteelHeart_PWM4
	dc.b	nRst, $60

SteelHeart_Jump00:
	smpsFMAlterVol      $D0
	dc.b	pwmLowBongo, $08
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pwmHighBongo, pwmHighBongo
	smpsFMAlterVol      $03
	smpsJump            SteelHeart_Jump00

SteelHeart_Voices:
;	Voice $00
;	$38
;	$0A, $70, $30, $00, 	$1F, $1F, $1F, $1F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$26, $26, $26, $28, 	$24, $2D, $12, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $00
	smpsVcCoarseFreq    $00, $00, $00, $0A
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $08, $06, $06, $06
	smpsVcTotalLevel    $00, $12, $2D, $24

;	Voice $01
;	$16
;	$75, $73, $30, $31, 	$5F, $5F, $5F, $5F, 	$05, $08, $06, $08
;	$05, $05, $07, $05, 	$25, $F7, $57, $25, 	$1E, $80, $80, $8A
	smpsVcAlgorithm     $06
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $00, $03, $05
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $06, $08, $05
	smpsVcDecayRate2    $05, $07, $05, $05
	smpsVcDecayLevel    $02, $05, $0F, $02
	smpsVcReleaseRate   $05, $07, $07, $05
	smpsVcTotalLevel    $0A, $00, $00, $1E

;	Voice $02
;	$3A
;	$01, $03, $02, $01, 	$0F, $10, $11, $19, 	$0A, $05, $0A, $05
;	$02, $02, $02, $02, 	$36, $36, $36, $58, 	$19, $1E, $32, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $03, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $19, $11, $10, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $0A, $05, $0A
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $05, $03, $03, $03
	smpsVcReleaseRate   $08, $06, $06, $06
	smpsVcTotalLevel    $00, $32, $1E, $19

;	Voice $03
;	$39
;	$02, $01, $02, $01, 	$5F, $5F, $1F, $1F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$1B, $32, $28, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $02
	smpsVcRateScale     $00, $00, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $28, $32, $1B

