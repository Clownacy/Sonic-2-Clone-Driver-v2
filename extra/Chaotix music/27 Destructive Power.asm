DestructivePower_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     DestructivePower_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $02, $00

	smpsHeaderDAC       DestructivePower_DAC
	smpsHeaderFM        DestructivePower_FM1,	$00, $09
	smpsHeaderFM        DestructivePower_FM2,	$00, $18
	smpsHeaderFM        DestructivePower_FM3,	$F4, $18
	smpsHeaderFM        DestructivePower_FM4,	$00, $0D
	smpsHeaderFM        DestructivePower_FM5,	$09, $10
	smpsHeaderFM        DestructivePower_FM6,	$00, $0A
	smpsHeaderPSG       DestructivePower_PSG1,	$00, $04, $00, $00
	smpsHeaderPSG       DestructivePower_PSG2,	$00, $07, $00, $00
	smpsHeaderPSG       DestructivePower_PSG3,	$23, $00, $00, $00
	smpsHeaderPWM       DestructivePower_PWM1,	$00, $FF
	smpsHeaderPWM       DestructivePower_PWM2,	$00, $FF
	smpsHeaderPWM       DestructivePower_PWM3,	$00, $FF
	smpsHeaderPWM       DestructivePower_PWM4,	$00, $FF

; Dummy DAC data
DestructivePower_DAC:
	smpsStop

; FM1 Data
DestructivePower_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00

DestructivePower_Loop01:
	dc.b	nG2, $30, nBb2
	smpsLoop            $00, $07, DestructivePower_Loop01
	dc.b	nFs2, nA2
	smpsJump            DestructivePower_Loop01

; FM2 Data
DestructivePower_FM2:
	smpsCall            DestructivePower_Call00

DestructivePower_Call00:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $03, $05

DestructivePower_Loop00:
	dc.b	nG4, $30, nFs4, $18, nF4, nEb4, $30, nF4, $18, nFs4
	smpsLoop            $00, $03, DestructivePower_Loop00
	dc.b	nG4, $30, nG5, nFs5, nFs4
	smpsJump            DestructivePower_Loop00

; FM3 Data
DestructivePower_FM3:
	smpsCall            DestructivePower_Call00

; FM4 Data
DestructivePower_FM4:
	smpsSetvoice        $02
	smpsPan             panLeft, $00

DestructivePower_Jump01:
	dc.b	nBb1, $60, smpsNoAttack
	smpsLoop            $00, $06, DestructivePower_Jump01
	dc.b	nBb1, nA1
	smpsJump            DestructivePower_Jump01

; FM5 Data
DestructivePower_FM5:
	smpsSetvoice        $02
	smpsPan             panRight, $00
	smpsJump            DestructivePower_Jump01

; FM6 Data
DestructivePower_FM6:
	smpsSetvoice        $03
	smpsPan             panCenter, $00

DestructivePower_Jump00:
	dc.b	nG3, $06, nRst, $0C, nG4, $06, nRst, $30, nRst, $18, nRst, $60
	smpsSetvoice        $04
	smpsChangeTransposition $18
	smpsFMAlterVol      $19
	dc.b	nD4, $03, nBb3, nG3, nBb3
	smpsFMAlterVol      $FC
	dc.b	nEb4, nBb3, nG3, nBb3
	smpsFMAlterVol      $FC
	dc.b	nE4, nBb3, nG3, nBb3
	smpsFMAlterVol      $FC
	dc.b	nEb4, nBb3, nG3, nBb3
	smpsFMAlterVol      $FC
	dc.b	nD4, nBb3, nG3, nBb3
	smpsFMAlterVol      $FC
	dc.b	nEb4, nBb3, nG3, nBb3
	smpsFMAlterVol      $FD
	dc.b	nE4, nBb3, nG3, nBb3
	smpsFMAlterVol      $FE
	dc.b	nF4, nBb3, nG3, nBb3, nFs4, nBb3, nG3, nBb3
	smpsFMAlterVol      $02
	dc.b	nEb4, nBb3, nG3, nBb3
	smpsFMAlterVol      $03
	dc.b	nE4, nBb3, nG3, nBb3
	smpsFMAlterVol      $04
	dc.b	nEb4, nBb3, nG3, nBb3
	smpsFMAlterVol      $04
	dc.b	nD4, nBb3, nG3, nBb3
	smpsFMAlterVol      $04
	dc.b	nEb4, nBb3, nG3, nBb3
	smpsFMAlterVol      $04
	dc.b	nF4, nBb3, nG3, nBb3
	smpsFMAlterVol      $04
	dc.b	nFs4, nBb3, nG3, nBb3
	smpsSetvoice        $03
	smpsChangeTransposition $E8
	smpsFMAlterVol      $E7
	dc.b	nG3, $06, nRst, $0C, nG4, $06, nRst, $30, nRst, $18, nRst, $60
	dc.b	nG3, $06, nRst, $0C, nG4, $06, nRst, $30, nRst, $18
	smpsSetvoice        $04
	smpsChangeTransposition $18
	smpsFMAlterVol      $14
	dc.b	nFs2, $03, nBb2, nCs3, nE3
	smpsFMAlterVol      $FA
	dc.b	nFs3, nBb3, nCs4, nE4
	smpsFMAlterVol      $FA
	dc.b	nFs3, nBb3, nCs4, nE4
	smpsFMAlterVol      $FA
	dc.b	nFs4, nBb4, nCs5, nE5, nFs5, nE5, nCs5, nBb4
	smpsFMAlterVol      $06
	dc.b	nFs4, nE4, nCs4, nBb3
	smpsFMAlterVol      $06
	dc.b	nFs3, nE3, nCs3, nBb2
	smpsFMAlterVol      $06
	dc.b	nFs2, nBb2, nCs3, nFs3
	smpsSetvoice        $03
	smpsChangeTransposition $E8
	smpsFMAlterVol      $EC
	smpsJump            DestructivePower_Jump00

; PSG1 Data
DestructivePower_PSG1:
	smpsPSGvoice        KCVolEnv_02
	smpsCall            DestructivePower_Call01

DestructivePower_Call01:
	dc.b	nRst, $60, nRst, $60, nD4, $03, nBb3, nG3, nBb3, nEb4, nBb3, nG3
	dc.b	nBb3
	smpsPSGAlterVol     $FF
	dc.b	nE4, nBb3, nG3, nBb3, nEb4, nBb3, nG3, nBb3
	smpsPSGAlterVol     $FF
	dc.b	nD4, nBb3, nG3, nBb3, nEb4, nBb3, nG3, nBb3
	smpsPSGAlterVol     $FF
	dc.b	nE4, nBb3, nG3, nBb3, nF4, nBb3, nG3, nBb3, nFs4, nBb3, nG3, nBb3
	dc.b	nEb4, nBb3, nG3, nBb3
	smpsPSGAlterVol     $01
	dc.b	nE4, nBb3, nG3, nBb3, nEb4, nBb3, nG3, nBb3
	smpsPSGAlterVol     $01
	dc.b	nD4, nBb3, nG3, nBb3, nEb4, nBb3, nG3, nBb3
	smpsPSGAlterVol     $01
	dc.b	nF4, nBb3, nG3, nBb3, nFs4, nBb3, nG3, nBb3, nRst, $60, nRst, $60
	dc.b	nRst, $60, nFs2, $03, nBb2, nCs3, nE3
	smpsPSGAlterVol     $FF
	dc.b	nFs3, nBb3, nCs4, nE4
	smpsPSGAlterVol     $FF
	dc.b	nFs3, nBb3, nCs4, nE4
	smpsPSGAlterVol     $FF
	dc.b	nFs4, nBb4, nCs5, nE5, nFs5, nE5, nCs5, nBb4
	smpsPSGAlterVol     $01
	dc.b	nFs4, nE4, nCs4, nBb3
	smpsPSGAlterVol     $01
	dc.b	nFs3, nE3, nCs3, nBb2
	smpsPSGAlterVol     $01
	dc.b	nFs2, nBb2, nCs3, nFs3
	smpsJump            DestructivePower_Call01

; PSG2 Data
DestructivePower_PSG2:
	smpsModSet          $01, $01, $02, $05
	smpsPSGvoice        KCVolEnv_02
	dc.b	nRst, $03
	smpsCall            DestructivePower_Call01

; PSG3 Data
DestructivePower_PSG3:
	smpsPSGform         $E7

DestructivePower_Jump02:
	smpsPSGvoice        KCVolEnv_05

DestructivePower_Loop02:
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGAlterVol     $04
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FE
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $02, DestructivePower_Loop02
	smpsJump            DestructivePower_Jump02

; PWM1 Data
DestructivePower_PWM1:
	dc.b	pwmAcousticKick, $06, nRst, $0C, pwmAcousticKick, $06, nRst, $18, pwmAcousticKick, $06, pwmAcousticKick, nRst
	dc.b	pwmAcousticKick, nRst, $18
	smpsJump            DestructivePower_PWM1

; PWM2 Data
DestructivePower_PWM2:
	dc.b	pwmSilence, $24, pwmAcousticSnare, $0C, nRst, $24, pwmAcousticSnare, $0C
	smpsJump            DestructivePower_PWM2

; PWM3 Data
DestructivePower_PWM3:
	dc.b	pwmSilence, $60
	smpsLoop            $00, $07, DestructivePower_PWM3
	dc.b	$30, $12, pwmHighTom, $06, pwmMidTom, pwmLowTom, nRst, $0C
	smpsJump            DestructivePower_PWM3

; PWM4 Data
DestructivePower_PWM4:
	dc.b	pwmCrashCymbal, $60
	smpsJump            DestructivePower_PWM4

DestructivePower_Voices:
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
;	$0D
;	$40, $50, $1B, $7F, 	$4E, $5F, $5F, $5F, 	$07, $1F, $02, $0D
;	$05, $07, $00, $07, 	$65, $08, $08, $07, 	$00, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $01, $05, $04
	smpsVcCoarseFreq    $0F, $0B, $00, $00
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $02, $1F, $07
	smpsVcDecayRate2    $07, $00, $07, $05
	smpsVcDecayLevel    $00, $00, $00, $06
	smpsVcReleaseRate   $07, $08, $08, $05
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $02
;	$07
;	$34, $74, $02, $01, 	$1F, $1F, $1F, $1F, 	$0A, $0A, $05, $03
;	$00, $00, $00, $00, 	$37, $37, $27, $27, 	$8A, $8A, $80, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $07, $03
	smpsVcCoarseFreq    $01, $02, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $05, $0A, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $02, $03, $03
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $00, $00, $0A, $0A

;	Voice $03
;	$3D
;	$37, $74, $04, $34, 	$DF, $0A, $4A, $4A, 	$04, $0F, $0F, $02
;	$01, $03, $00, $03, 	$20, $13, $13, $13, 	$1C, $85, $85, $85
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $07, $03
	smpsVcCoarseFreq    $04, $04, $04, $07
	smpsVcRateScale     $01, $01, $00, $03
	smpsVcAttackRate    $0A, $0A, $0A, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $0F, $0F, $04
	smpsVcDecayRate2    $03, $00, $03, $01
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $03, $03, $03, $00
	smpsVcTotalLevel    $05, $05, $05, $1C

;	Voice $04
;	$2C
;	$35, $76, $35, $36, 	$1F, $1D, $1F, $1C, 	$03, $0A, $03, $0A
;	$02, $02, $02, $02, 	$A3, $77, $A3, $77, 	$1E, $80, $28, $85
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $03
	smpsVcCoarseFreq    $06, $05, $06, $05
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1C, $1F, $1D, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $03, $0A, $03
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $07, $0A, $07, $0A
	smpsVcReleaseRate   $07, $03, $07, $03
	smpsVcTotalLevel    $05, $28, $00, $1E

