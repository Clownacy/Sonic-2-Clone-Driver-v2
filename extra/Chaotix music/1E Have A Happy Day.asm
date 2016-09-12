HaveAHappyDay_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     HaveAHappyDay_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $1C

	smpsHeaderDAC       HaveAHappyDay_DAC
	smpsHeaderFM        HaveAHappyDay_FM1,	$F4, $05
	smpsHeaderFM        HaveAHappyDay_FM2,	$00, $10
	smpsHeaderFM        HaveAHappyDay_FM3,	$00, $0F
	smpsHeaderFM        HaveAHappyDay_FM4,	$00, $1C
	smpsHeaderFM        HaveAHappyDay_FM5,	$0C, $16
	smpsHeaderFM        HaveAHappyDay_FM6,	$00, $24
	smpsHeaderPSG       HaveAHappyDay_PSG1,	$F4, $02, $00, $00
	smpsHeaderPSG       HaveAHappyDay_PSG2,	$F4, $02, $00, $00
	smpsHeaderPSG       HaveAHappyDay_PSG3,	$23, $00, $00, $00
	smpsHeaderPWM       HaveAHappyDay_PWM1,	$00, $CC
	smpsHeaderPWM       HaveAHappyDay_PWM2,	$00, $8A
	smpsHeaderPWM       HaveAHappyDay_PWM3,	$00, $DD
	smpsHeaderPWM       HaveAHappyDay_PWM4,	$00, $00

; Dummy DAC data
HaveAHappyDay_DAC:
	smpsStop

; FM1 Data
HaveAHappyDay_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00

HaveAHappyDay_Jump05:
	dc.b	nBb2, $0C, nC3, $06, nBb2, nRst, nBb2, nG2, nF2, nF2, $0C, nG2
	dc.b	nEb2, $06, nF2, $12, nAb2, $0C, nBb2, $06, nAb2, nRst, nAb2, nF2
	dc.b	nEb2, nEb2, $0C, nF2, nBb1, $06, nF2, $12
	smpsJump            HaveAHappyDay_Jump05

; FM2 Data
HaveAHappyDay_FM2:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsChangeTransposition $F4

HaveAHappyDay_Jump04:
	dc.b	nBb5, $24, nF5, $24, nF6, $18, smpsNoAttack, $18, nEb6, $0C, nD6, nC6
	dc.b	nD6, nEb6, nC6, nD6, $24, nBb5, $24, nF5, $18, smpsNoAttack, $48, nRst
	dc.b	$18, nF6, $24, nBb5, $24, nCs6, $18, smpsNoAttack, $18, nC6, $0C, nCs6
	dc.b	nBb5, nF5, nG5, nBb5, smpsNoAttack, $60, smpsNoAttack, $18, nC6, nD6, nEb6
	smpsJump            HaveAHappyDay_Jump04

; FM3 Data
HaveAHappyDay_FM3:
	smpsSetvoice        $02
	smpsPan             panCenter, $00

HaveAHappyDay_Jump03:
	dc.b	nBb4, $24, nF4, $24, nF5, $18, smpsNoAttack, $18, nEb5, $0C, nD5, nC5
	dc.b	nD5, nEb5, nC5, nD5, $24, nBb4, $24, nF4, $18, smpsNoAttack, $48, nRst
	dc.b	$18, nF5, $24, nBb4, $24, nCs5, $18, smpsNoAttack, $18, nC5, $0C, nCs5
	dc.b	nBb4, nF4, nG4, nBb4, smpsNoAttack, $60, smpsNoAttack, $18, nC5, nD5, nEb5
	smpsJump            HaveAHappyDay_Jump03

; FM4 Data
HaveAHappyDay_FM4:
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $06

HaveAHappyDay_Jump02:
	dc.b	nBb5, $24, nF5, $24, nF6, $18, smpsNoAttack, $18, nEb6, $0C, nD6, nC6
	dc.b	nD6, nEb6, nC6, nD6, $24, nBb5, $24, nF5, $12
	smpsModSet          $00, $00, $00, $00
	smpsSetvoice        $01
	smpsPan             panRight, $00
	smpsFMAlterVol      $F6
	dc.b	nD6, $12, nEb6, $12, nE6, $0C, nF6, $12, nC6, $12, nEb6, $0C
	dc.b	nRst, $06
	smpsFMAlterVol      $0A
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	smpsModSet          $01, $01, $02, $05
	dc.b	nF6, $24, nBb5, $24, nCs6, $18, smpsNoAttack, $18, nC6, $0C, nCs6, nBb5
	dc.b	nF5, nG5, nBb5, nRst, $5A
	smpsModSet          $00, $00, $00, $00
	smpsSetvoice        $01
	smpsPan             panRight, $00
	smpsFMAlterVol      $FC
	dc.b	nRst, $18, nC6, nD6, nEb6, nRst, $06
	smpsFMAlterVol      $04
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	smpsModSet          $01, $01, $02, $05
	smpsJump            HaveAHappyDay_Jump02

; FM5 Data
HaveAHappyDay_FM5:
	smpsSetvoice        $01
	smpsPan             panCenter, $00

HaveAHappyDay_Jump01:
	dc.b	nRst, $60, nRst, $60, nRst, $5A
	smpsPan             panLeft, $00
	dc.b	nCs5, $06, nD5, $12, nEb5, $12, nE5, $0C, nF5, $12, nC5, $12
	dc.b	nEb5, $0C, nRst, $60, nRst, $60, nRst, $60, nRst, $18, nC5, nD5
	dc.b	nEb5
	smpsJump            HaveAHappyDay_Jump01

; FM6 Data
HaveAHappyDay_FM6:
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $05, $07
	dc.b	nRst, $0C

HaveAHappyDay_Jump00:
	dc.b	nRst, $0C, nBb5, nRst, nBb5, nRst, nBb5, nRst, nBb5, nRst, $0C, nAb5
	dc.b	nRst, nAb5, nRst, nAb5, nRst, nAb5
	smpsJump            HaveAHappyDay_Jump00

; PSG1 Data
HaveAHappyDay_PSG1:
	smpsPSGvoice        KCVolEnv_08

HaveAHappyDay_Jump08:
	dc.b	nRst, $0C, nBb4, nRst, nBb4, nRst, nBb4, nRst, nBb4, nRst, $0C, nAb4
	dc.b	nRst, nAb4, nRst, nAb4, nRst, nAb4
	smpsJump            HaveAHappyDay_Jump08

; PSG2 Data
HaveAHappyDay_PSG2:
	smpsPSGvoice        KCVolEnv_08

HaveAHappyDay_Jump07:
	dc.b	nRst, $0C, nD4, nRst, nD4, nRst, nD4, nRst, nD4, nRst, $0C, nC4
	dc.b	nRst, nC4, nRst, nC4, nRst, nC4
	smpsJump            HaveAHappyDay_Jump07

; PSG3 Data
HaveAHappyDay_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        KCVolEnv_02

HaveAHappyDay_Jump06:
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGAlterVol     $03
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGAlterVol     $FE
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGAlterVol     $FD
	smpsJump            HaveAHappyDay_Jump06

; PWM1 Data
HaveAHappyDay_PWM1:
	dc.b	pwmAcousticKick, $18, nRst, $12, pwmAcousticKick, $06, nRst, pwmAcousticKick, pwmAcousticKick, $0C, nRst, $0C
	dc.b	pwmAcousticKick
	smpsJump            HaveAHappyDay_PWM1

; PWM2 Data
HaveAHappyDay_PWM2:
	dc.b	nRst, $18, pwmAcousticSnare
	smpsJump            HaveAHappyDay_PWM2

; PWM3 Data
HaveAHappyDay_PWM3:
	dc.b	pwmCrashCymbal, $60, nRst, $60, nRst, $60, nRst, $60
	smpsJump            HaveAHappyDay_PWM3

; PWM4 Data
HaveAHappyDay_PWM4:
	smpsStop

HaveAHappyDay_Voices:
;	Voice $00
;	$3A
;	$01, $05, $32, $71, 	$CF, $95, $1F, $1F, 	$0E, $0F, $05, $0C
;	$17, $06, $06, $07, 	$8F, $4F, $4F, $4F, 	$21, $13, $24, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $00, $00
	smpsVcCoarseFreq    $01, $02, $05, $01
	smpsVcRateScale     $00, $00, $02, $03
	smpsVcAttackRate    $1F, $1F, $15, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $05, $0F, $0E
	smpsVcDecayRate2    $07, $06, $06, $17
	smpsVcDecayLevel    $04, $04, $04, $08
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $24, $13, $21

;	Voice $01
;	$3B
;	$71, $31, $70, $01, 	$4F, $10, $51, $4F, 	$06, $0A, $0C, $02
;	$01, $00, $01, $00, 	$25, $E5, $35, $17, 	$20, $21, $0C, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $07, $03, $07
	smpsVcCoarseFreq    $01, $00, $01, $01
	smpsVcRateScale     $01, $01, $00, $01
	smpsVcAttackRate    $0F, $11, $10, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $0C, $0A, $06
	smpsVcDecayRate2    $00, $01, $00, $01
	smpsVcDecayLevel    $01, $03, $0E, $02
	smpsVcReleaseRate   $07, $05, $05, $05
	smpsVcTotalLevel    $00, $0C, $21, $20

;	Voice $02
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

