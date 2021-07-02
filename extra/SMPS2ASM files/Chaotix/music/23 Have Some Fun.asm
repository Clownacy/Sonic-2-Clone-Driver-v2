HaveSomeFun_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     HaveSomeFun_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $4D

	smpsHeaderDAC       HaveSomeFun_DAC
	smpsHeaderFM        HaveSomeFun_FM1,	$00, $0A
	smpsHeaderFM        HaveSomeFun_FM2,	$00, $08
	smpsHeaderFM        HaveSomeFun_FM3,	$00, $0D
	smpsHeaderFM        HaveSomeFun_FM4,	$F4, $10
	smpsHeaderFM        HaveSomeFun_FM5,	$FB, $15
	smpsHeaderFM        HaveSomeFun_FM6,	$F4, $1C
	smpsHeaderPSG       HaveSomeFun_PSG1,	$F4, $00, $00, $00
	smpsHeaderPSG       HaveSomeFun_PSG2,	$F4, $03, $00, $00
	smpsHeaderPSG       HaveSomeFun_PSG3,	$23, $00, $00, $00
	smpsHeaderPWM       HaveSomeFun_PWM1,	$00, $FF
	smpsHeaderPWM       HaveSomeFun_PWM2,	$00, $AF
	smpsHeaderPWM       HaveSomeFun_PWM3,	$00, $FF
	smpsHeaderPWM       HaveSomeFun_PWM4,	$00, $88

; Dummy DAC data
HaveSomeFun_DAC:
	smpsStop

; FM1 Data
HaveSomeFun_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nA1, $30, nC2, nA1, nC2, nCs2, $06, nE2, nG2, nBb2, nD3, nF3
	dc.b	nAb3, nB3, $36
	smpsStop

; FM2 Data
HaveSomeFun_FM2:
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	dc.b	nE6, $18
	smpsFMAlterVol      $03
	smpsPan             panRight, $00
	dc.b	nE7
	smpsFMAlterVol      $FD
	smpsPan             panCenter, $00
	dc.b	nEb6
	smpsFMAlterVol      $03
	smpsPan             panRight, $00
	dc.b	nEb7
	smpsFMAlterVol      $FD
	smpsPan             panCenter, $00
	dc.b	nD6
	smpsFMAlterVol      $03
	smpsPan             panRight, $00
	dc.b	nD7
	smpsFMAlterVol      $FD
	smpsPan             panCenter, $00
	dc.b	nE6
	smpsFMAlterVol      $03
	smpsPan             panRight, $00
	dc.b	nE7
	smpsFMAlterVol      $FD
	smpsPan             panCenter, $00
	dc.b	nG6, $30
	smpsFMAlterVol      $03
	smpsPan             panCenter, $1C
	smpsStop

; FM3 Data
HaveSomeFun_FM3:
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $09, nE6, $18
	smpsFMAlterVol      $03
	smpsPan             panRight, $00
	dc.b	nE7
	smpsFMAlterVol      $FD
	smpsPan             panCenter, $00
	dc.b	nEb6
	smpsFMAlterVol      $03
	smpsPan             panRight, $00
	dc.b	nEb7
	smpsFMAlterVol      $FD
	smpsPan             panCenter, $00
	dc.b	nD6
	smpsFMAlterVol      $03
	smpsPan             panRight, $00
	dc.b	nD7
	smpsFMAlterVol      $FD
	smpsPan             panCenter, $00
	dc.b	nE6
	smpsFMAlterVol      $03
	smpsPan             panRight, $00
	dc.b	nE7, $0F
	smpsFMAlterVol      $FD
	smpsPan             panCenter, $00
	smpsFMAlterVol      $FB
	dc.b	nCs5, $06, nE5, $03, nRst, nG5, $06, nBb5, $03, nRst, nD6, $06
	dc.b	nF6, $03, nRst, nA6, $06, nB6, $06
	smpsStop

; FM4 Data
HaveSomeFun_FM4:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsCall            HaveSomeFun_Call00
	smpsStop

HaveSomeFun_Call00:
	smpsFMAlterVol      $F6
	dc.b	nA4, $06
	smpsFMAlterVol      $0A
	dc.b	nB4, $03, nRst, nC5, nRst, nA4, $06, nB4, $03, nRst, nA4, nRst
	dc.b	nB4, nRst, nC5, $06, nA4, $06, nE5, $03, nRst, nC5, nRst, nA4
	dc.b	$06, nB4, $03, nRst, nA4, nRst, nB4, nRst
	smpsFMAlterVol      $F6
	dc.b	nC5, $06
	smpsFMAlterVol      $0A
	smpsLoop            $00, $02, HaveSomeFun_Call00
	smpsFMAlterVol      $F6
	dc.b	nCs5, $06
	smpsFMAlterVol      $0A
	dc.b	nE5, $03, nRst, nG5, $06, nBb5, $03, nRst
	smpsFMAlterVol      $F6
	dc.b	nD6, $06
	smpsFMAlterVol      $0A
	dc.b	nF6, $03, nRst, nA6, $06, nB6, $36
	smpsReturn

; FM5 Data
HaveSomeFun_FM5:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsCall            HaveSomeFun_Call00
	smpsStop

; FM6 Data
HaveSomeFun_FM6:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $06
	smpsCall            HaveSomeFun_Call00
	smpsStop

; PSG1 Data
HaveSomeFun_PSG1:
	smpsPSGvoice        KCVolEnv_02

HaveSomeFun_Loop02:
	dc.b	nA4, $06, nA5
	smpsPSGAlterVol     $07
	dc.b	nA5, $06, nRst, $06
	smpsPSGAlterVol     $F9
	smpsLoop            $00, $08, HaveSomeFun_Loop02
	dc.b	nRst, $60
	smpsStop

; PSG2 Data
HaveSomeFun_PSG2:
	smpsPSGvoice        KCVolEnv_02
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $0C, nA4, $06, nA5, $03, nRst, $03
	smpsPSGAlterVol     $07
	dc.b	nRst, $06, nRst, $06
	smpsPSGAlterVol     $F9
	smpsLoop            $00, $08, HaveSomeFun_Loop02
	dc.b	nRst, $60
	smpsStop

; PSG3 Data
HaveSomeFun_PSG3:
	smpsPSGform         $E7

HaveSomeFun_Loop01:
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGAlterVol     $03
	dc.b	(nMaxPSG2-$23)&$FF, $0C, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, $06
	smpsPSGvoice        KCVolEnv_05
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $02, HaveSomeFun_Loop01
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $0C, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        KCVolEnv_05
	dc.b	(nMaxPSG2-$23)&$FF, $06
	;smpsPSGvoice        KCVolEnv_48	; WTF
	smpsPSGvoice        $00
	dc.b	(nMaxPSG2-$23)&$FF, $0C, nRst, $30
	smpsStop

; PWM1 Data
HaveSomeFun_PWM1:
	dc.b	pwmAcousticKick, $18, nRst, $12, pwmAcousticKick, $06, pwmAcousticKick, $0C, pwmAcousticKick, nRst, $18
	smpsLoop            $00, $02, HaveSomeFun_PWM1
	dc.b	pwmAcousticKick, $18, nRst, $48
	smpsStop

; PWM2 Data
HaveSomeFun_PWM2:
	dc.b	pwmSilence, $60, pwmSilence, $30, pwmElectricSnare, $12
	smpsFMAlterVol      $A6
	dc.b	$03, $03
	smpsFMAlterVol      $11
	dc.b	pwmElectricSnare, $06
	smpsFMAlterVol      $22
	dc.b	pwmElectricSnare
	smpsFMAlterVol      $22
	dc.b	pwmElectricSnare
	smpsFMAlterVol      $22
	dc.b	pwmElectricSnare
	smpsFMAlterVol      $22
	dc.b	pwmElectricSnare, $18, nRst, $48
	smpsStop

; PWM3 Data
HaveSomeFun_PWM3:
	dc.b	pwmSilence, $60, pwmSilence, $60, pwmSilence, $2A, pwmCrashCymbal, $06, nRst, $30
	smpsStop

; PWM4 Data
HaveSomeFun_PWM4:
	dc.b	pwmLowTimpani, $30, nRst, $1E
	smpsFMAlterVol      $11
	dc.b	pwmHighTimpani, $12, pwmLowTimpani, $18, nRst, $18
	smpsFMAlterVol      $78
	dc.b	pwmLowTimpani, $03, pwmLowTimpani
	smpsFMAlterVol      $11
	dc.b	pwmLowTimpani, $03, pwmLowTimpani
	smpsFMAlterVol      $11

HaveSomeFun_Loop00:
	dc.b	pwmLowTimpani, $03, pwmLowTimpani
	smpsFMAlterVol      $22
	smpsLoop            $00, $06, HaveSomeFun_Loop00
	dc.b	pwmHighTimpani, $0C
	smpsStop

HaveSomeFun_Voices:
;	Voice $00
;	$3D
;	$01, $00, $01, $02, 	$1F, $1F, $1F, $1F, 	$0D, $0C, $0C, $0C
;	$0D, $0A, $0A, $0A, 	$F6, $97, $A7, $A7, 	$1C, $80, $80, $85
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0C, $0C, $0D
	smpsVcDecayRate2    $0A, $0A, $0A, $0D
	smpsVcDecayLevel    $0A, $0A, $09, $0F
	smpsVcReleaseRate   $07, $07, $07, $06
	smpsVcTotalLevel    $05, $00, $00, $1C

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

