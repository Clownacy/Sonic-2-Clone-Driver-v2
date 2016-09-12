SodaPop_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SodaPop_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $0A

	smpsHeaderDAC       SodaPop_DAC
	smpsHeaderFM        SodaPop_FM1,	$F4, $07
	smpsHeaderFM        SodaPop_FM2,	$00, $09
	smpsHeaderFM        SodaPop_FM3,	$00, $1B
	smpsHeaderFM        SodaPop_FM4,	$00, $1B
	smpsHeaderFM        SodaPop_FM5,	$00, $0F
	smpsHeaderFM        SodaPop_FM6,	$00, $18
	smpsHeaderPSG       SodaPop_PSG1,	$E8, $01, $00, $00
	smpsHeaderPSG       SodaPop_PSG2,	$E8, $01, $00, $00
	smpsHeaderPSG       SodaPop_PSG3,	$23, $03, $00, $00
	smpsHeaderPWM       SodaPop_PWM1,	$00, $FF
	smpsHeaderPWM       SodaPop_PWM2,	$00, $DD
	smpsHeaderPWM       SodaPop_PWM3,	$00, $FF
	smpsHeaderPWM       SodaPop_PWM4,	$00, $00

; Dummy DAC data
SodaPop_DAC:
	smpsStop

; FM1 Data
SodaPop_FM1:
	smpsPan             panCenter, $00

SodaPop_Loop0E:
	smpsSetvoice        $00
	dc.b	nC3, $12
	smpsFMAlterVol      $03
	dc.b	nC4, $06, nBb3, nG3, $0C, nA3, $06, nRst, nC3
	smpsFMAlterVol      $FD
	dc.b	nC4, $0C
	smpsFMAlterVol      $03
	dc.b	nBb3, nG3
	smpsFMAlterVol      $FD
	smpsLoop            $00, $20, SodaPop_Loop0E

SodaPop_Loop0F:
	dc.b	nRst, $60
	smpsLoop            $00, $04, SodaPop_Loop0F
	smpsFMAlterVol      $0B
	smpsSetvoice        $01
	smpsChangeTransposition $0C
	dc.b	nC3, $60, smpsNoAttack, $60, smpsNoAttack, $60, smpsNoAttack, $30, nG2, $30, nC3, $60
	dc.b	smpsNoAttack, $60, smpsNoAttack, $60, smpsNoAttack, $30
	smpsFMAlterVol      $F5
	smpsSetvoice        $00
	smpsChangeTransposition $F4
	dc.b	nC3, $06, nF3, nBb3, nB3, nA3, $04, nAb3, nG3, nFs3, nF3, nEb3
	smpsJump            SodaPop_Loop0E

; FM2 Data
SodaPop_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $02

SodaPop_Loop0C:
	smpsCall            SodaPop_Call00
	smpsLoop            $00, $04, SodaPop_Loop0C

SodaPop_Loop0D:
	dc.b	nRst, $60
	smpsLoop            $00, $04, SodaPop_Loop0D
	smpsCall            SodaPop_Call00
	smpsJump            SodaPop_Loop0C

SodaPop_Call00:
	dc.b	nG4, $60, smpsNoAttack, $18, nF4, $15, nRst, $03, nEb4, $15, nRst, $03
	dc.b	nF4, $15, nRst, $03, nC4, $60, smpsNoAttack, $18, nD4, $15, nRst, $03
	dc.b	nEb4, $15, nRst, $03, nF4, $15, nRst, $03, nG4, $60, smpsNoAttack, $18
	dc.b	nA4, $15, nRst, $03, nBb4, $15, nRst, $03, nF5, $15, nRst, $03
	dc.b	nE5, $60, smpsNoAttack, $30, nRst, $30
	smpsReturn

; FM3 Data
SodaPop_FM3:
	smpsModSet          $01, $01, $02, $05
	smpsPan             panCenter, $00
	smpsSetvoice        $03
	dc.b	nRst, $09
	smpsCall            SodaPop_Call04

; FM4 Data
SodaPop_FM4:
	smpsModSet          $01, $01, $02, $05
	smpsPan             panCenter, $00
	smpsSetvoice        $03
	dc.b	nRst, $09
	smpsCall            SodaPop_Call03

; FM5 Data
SodaPop_FM5:
	smpsSetvoice        $04
	smpsDetune          $05

SodaPop_Loop06:
	dc.b	nRst, $60, nRst, $60, nRst, $18

SodaPop_Loop04:
	smpsCall            SodaPop_Call01
	smpsLoop            $00, $07, SodaPop_Loop04
	dc.b	nRst, $60, nRst, $60, nRst, $18

SodaPop_Loop05:
	smpsCall            SodaPop_Call02
	smpsLoop            $01, $07, SodaPop_Loop05
	smpsLoop            $02, $04, SodaPop_Loop06

SodaPop_Loop07:
	dc.b	nRst, $60
	smpsLoop            $00, $04, SodaPop_Loop07
	dc.b	nRst, $18
	smpsFMAlterVol      $05

SodaPop_Loop08:
	smpsCall            SodaPop_Call01
	smpsLoop            $00, $07, SodaPop_Loop08
	smpsChangeTransposition $0C

SodaPop_Loop09:
	smpsCall            SodaPop_Call01
	smpsLoop            $00, $08, SodaPop_Loop09
	smpsChangeTransposition $F4
	dc.b	nRst, $18

SodaPop_Loop0A:
	smpsCall            SodaPop_Call01
	smpsLoop            $00, $07, SodaPop_Loop0A
	smpsChangeTransposition $0C

SodaPop_Loop0B:
	smpsCall            SodaPop_Call02
	smpsLoop            $00, $08, SodaPop_Loop0B
	smpsChangeTransposition $F4
	smpsFMAlterVol      $FB
	smpsJump            SodaPop_Loop06

SodaPop_Call01:
	smpsPan             panCenter, $00
	dc.b	nG5, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $06
	dc.b	nG5
	smpsPan             panCenter, $00
	smpsFMAlterVol      $FA
	dc.b	nA5
	smpsPan             panRight, $00
	smpsFMAlterVol      $06
	dc.b	nA5
	smpsPan             panCenter, $00
	smpsFMAlterVol      $FA
	dc.b	nBb5
	smpsPan             panLeft, $00
	smpsFMAlterVol      $06
	dc.b	nBb5
	smpsPan             panCenter, $00
	smpsFMAlterVol      $FA
	dc.b	nF6
	smpsPan             panRight, $00
	smpsFMAlterVol      $06
	dc.b	nF6
	smpsFMAlterVol      $FA
	smpsReturn

SodaPop_Call02:
	smpsPan             panCenter, $00
	dc.b	nG5, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $06
	dc.b	nG5
	smpsPan             panCenter, $00
	smpsFMAlterVol      $FA
	dc.b	nA5
	smpsPan             panRight, $00
	smpsFMAlterVol      $06
	dc.b	nA5
	smpsPan             panCenter, $00
	smpsFMAlterVol      $FA
	dc.b	nBb5
	smpsPan             panLeft, $00
	smpsFMAlterVol      $06
	dc.b	nBb5
	smpsPan             panCenter, $00
	smpsFMAlterVol      $FA
	dc.b	nE6
	smpsPan             panRight, $00
	smpsFMAlterVol      $06
	dc.b	nE6
	smpsFMAlterVol      $FA
	smpsReturn

; FM6 Data
SodaPop_FM6:
	smpsPan             panCenter, $00
	dc.b	nRst, $12

SodaPop_Loop02:
	smpsModSet          $01, $01, $04, $06
	smpsSetvoice        $02
	smpsCall            SodaPop_Call00
	dc.b	nG4, $60, smpsNoAttack, $18, nF4, $15, nRst, $03, nEb4, $15, nRst, $03
	dc.b	nF4, $15, nRst, $03, nC4, $60, smpsNoAttack, $18, nD4, $15, nRst, $03
	dc.b	nEb4, $15, nRst, $03, nF4, $15, nRst, $03, nG4, $60, smpsNoAttack, $18
	dc.b	nA4, $15, nRst, $03, nBb4, $15, nRst, $03, nF5, $15, nRst, $03
	dc.b	nE5, $36
	smpsSetvoice        $05
	smpsModSet          $00, $00, $00, $00
	smpsFMAlterVol      $F7
	dc.b	nG4, $06, nA4, nBb4, nG5
	smpsFMAlterVol      $08
	dc.b	nFs5, $03, nG5, nFs5, nG5
	smpsFMAlterVol      $FE
	dc.b	nFs5, nG5, nFs5, nG5
	smpsFMAlterVol      $FE
	dc.b	nFs5, nG5
	smpsFMAlterVol      $FE
	dc.b	nFs5, nG5
	smpsFMAlterVol      $FE
	dc.b	nFs5, nG5, nFs5, nG5, nFs5, $06, nF5, nEb5, nD5, nC5, nBb4, nA4
	dc.b	nAb4, nRst, $12
	smpsFMAlterVol      $09
	smpsLoop            $00, $02, SodaPop_Loop02

SodaPop_Loop03:
	dc.b	nRst, $60
	smpsLoop            $00, $04, SodaPop_Loop03
	smpsSetvoice        $02
	smpsModSet          $01, $01, $04, $06
	smpsCall            SodaPop_Call00
	smpsJump            SodaPop_Loop02

; PSG1 Data
SodaPop_PSG1:
	smpsPSGvoice        KCVolEnv_0C
	smpsCall            SodaPop_Call04

SodaPop_Call04:
	dc.b	nEb5, $0C, nEb4, $06, nBb4, nRst, $06, nD5, $0C, nC5, $06, nRst
	dc.b	$06, nEb5, $06, nEb4, $0C, nBb4, nD5
	smpsLoop            $00, $06, SodaPop_Call04

SodaPop_Loop12:
	dc.b	nE5, $0C, nE4, $06, nBb4, nRst, $06, nD5, $0C, nC5, $06, nRst
	dc.b	$06, nE5, $06, nE4, $0C, nBb4, nD5
	smpsLoop            $01, $02, SodaPop_Loop12
	smpsLoop            $02, $04, SodaPop_Call04

SodaPop_Loop13:
	dc.b	nEb5, $0C, nEb4, $06, nBb4, nRst, $06, nD5, $0C, nC5, $06, nRst
	dc.b	$06, nEb5, $06, nEb4, $0C, nBb4, nD5
	smpsLoop            $00, $0A, SodaPop_Loop13

SodaPop_Loop14:
	dc.b	nE5, $0C, nE4, $06, nBb4, nRst, $06, nD5, $0C, nC5, $06, nRst
	dc.b	$06, nE5, $06, nE4, $0C, nBb4, nD5
	smpsLoop            $00, $02, SodaPop_Loop14
	smpsJump            SodaPop_Call04

; PSG2 Data
SodaPop_PSG2:
	smpsPSGvoice        KCVolEnv_0C
	smpsCall            SodaPop_Call03

SodaPop_Call03:
	dc.b	nC5, $12, nG4, $06, nRst, $06, nBb4, $0C, nA4, $06, nRst, $06
	dc.b	nC5, $06, nRst, $0C, nG4, nBb4
	smpsJump            SodaPop_Call03

; PSG3 Data
SodaPop_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        KCVolEnv_02

SodaPop_Loop10:
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGAlterVol     $04
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FD
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $03
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FC
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $04
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FD
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $03
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FC
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $04
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FD
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $03
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FC
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $04
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FD
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $03
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $20, SodaPop_Loop10

SodaPop_Loop11:
	dc.b	nRst, $60
	smpsLoop            $00, $0C, SodaPop_Loop11
	smpsJump            SodaPop_Loop10

; PWM1 Data
SodaPop_PWM1:
	dc.b	pwmAcousticKick, $18, nRst, $12, pwmAcousticKick, $06, pwmAcousticKick, $18, nRst, $18, pwmAcousticKick, $18
	dc.b	nRst, $12, pwmAcousticKick, $06, pwmAcousticKick, $18, nRst, $0C, pwmAcousticKick, $0C
	smpsLoop            $00, $03, SodaPop_PWM1
	dc.b	pwmAcousticKick, $18, nRst, $12, pwmAcousticKick, $06, pwmAcousticKick, $18, nRst, $0C, pwmAcousticKick, $0C
	dc.b	pwmAcousticKick, $18, nRst, $12, pwmAcousticKick, $06, pwmAcousticKick, $0C, pwmAcousticKick, pwmAcousticKick, pwmAcousticKick
	smpsLoop            $01, $04, SodaPop_PWM1

SodaPop_Loop01:
	dc.b	pwmAcousticKick, $18, pwmAcousticKick, pwmAcousticKick, pwmAcousticKick
	smpsLoop            $00, $0C, SodaPop_Loop01
	smpsJump            SodaPop_PWM1

; PWM2 Data
SodaPop_PWM2:
	dc.b	pwmSilence, $18, pwmElectricSnare, $12, pwmElectricSnare, $06, nRst, $06, pwmElectricSnare, $06, pwmElectricSnare, $0C
	dc.b	pwmElectricSnare, $18
	smpsLoop            $00, $07, SodaPop_PWM2
	dc.b	nRst, $18, pwmElectricSnare, $12, pwmElectricSnare, $06, nRst, $06
	smpsFMAlterVol      $67
	dc.b	pwmElectricSnare
	smpsFMAlterVol      $33
	dc.b	pwmElectricSnare
	smpsFMAlterVol      $33
	dc.b	pwmElectricSnare
	smpsFMAlterVol      $33
	dc.b	pwmElectricSnare, $0C, pwmElectricSnare, $06, pwmElectricSnare
	smpsLoop            $01, $04, SodaPop_PWM2

SodaPop_Loop00:
	dc.b	nRst, $60
	smpsLoop            $00, $0B, SodaPop_Loop00
	dc.b	nRst, $30, pwmElectricSnare, $06
	smpsFMAlterVol      $34
	dc.b	pwmElectricSnare
	smpsFMAlterVol      $22
	dc.b	pwmElectricSnare
	smpsFMAlterVol      $22
	dc.b	pwmElectricSnare
	smpsFMAlterVol      $22
	dc.b	pwmElectricSnare
	smpsFMAlterVol      $22
	dc.b	pwmElectricSnare
	smpsFMAlterVol      $22
	dc.b	pwmElectricSnare
	smpsFMAlterVol      $22
	dc.b	pwmElectricSnare
	smpsJump            SodaPop_PWM2

; PWM3 Data
SodaPop_PWM3:
	dc.b	pwmCrashCymbal, $60, nRst, $60, nRst, $60, nRst, $60
	smpsJump            SodaPop_PWM3

; PWM4 Data
SodaPop_PWM4:
	smpsStop

SodaPop_Voices:
;	Voice $00
;	$3A
;	$20, $23, $60, $00, 	$1E, $1F, $1F, $1F, 	$0A, $0A, $0B, $09
;	$05, $07, $0A, $00, 	$A4, $17, $96, $D7, 	$21, $25, $28, $80
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
	smpsVcDecayLevel    $0D, $09, $01, $0A
	smpsVcReleaseRate   $07, $06, $07, $04
	smpsVcTotalLevel    $00, $28, $25, $21

;	Voice $01
;	$3D
;	$70, $01, $01, $01, 	$58, $5A, $5A, $5A, 	$0C, $04, $04, $13
;	$02, $03, $03, $09, 	$25, $27, $27, $27, 	$85, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $07
	smpsVcCoarseFreq    $01, $01, $01, $00
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1A, $1A, $1A, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $13, $04, $04, $0C
	smpsVcDecayRate2    $09, $03, $03, $02
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $07, $07, $07, $05
	smpsVcTotalLevel    $00, $00, $00, $85

;	Voice $02
;	$3A
;	$01, $01, $03, $02, 	$0D, $07, $07, $12, 	$09, $00, $00, $03
;	$01, $01, $01, $08, 	$52, $02, $03, $38, 	$1A, $23, $1E, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $03, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $07, $07, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $00, $00, $09
	smpsVcDecayRate2    $08, $01, $01, $01
	smpsVcDecayLevel    $03, $00, $00, $05
	smpsVcReleaseRate   $08, $03, $02, $02
	smpsVcTotalLevel    $00, $1E, $23, $1A

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

;	Voice $04
;	$2C
;	$35, $76, $35, $36, 	$1F, $11, $1F, $11, 	$03, $0A, $03, $0A
;	$02, $02, $02, $02, 	$A3, $77, $A3, $77, 	$1E, $80, $28, $85
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $03
	smpsVcCoarseFreq    $06, $05, $06, $05
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $11, $1F, $11, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $03, $0A, $03
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $07, $0A, $07, $0A
	smpsVcReleaseRate   $07, $03, $07, $03
	smpsVcTotalLevel    $05, $28, $00, $1E

;	Voice $05
;	$3D
;	$01, $22, $51, $01, 	$0F, $0F, $0F, $4F, 	$0A, $05, $05, $05
;	$00, $00, $00, $00, 	$56, $28, $28, $28, 	$23, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $02, $00
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $01, $00, $00, $00
	smpsVcAttackRate    $0F, $0F, $0F, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $02, $02, $05
	smpsVcReleaseRate   $08, $08, $08, $06
	smpsVcTotalLevel    $00, $00, $00, $23

