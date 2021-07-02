HighFive_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     HighFive_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $30

	smpsHeaderDAC       HighFive_DAC
	smpsHeaderFM        HighFive_FM1,	$00, $06
	smpsHeaderFM        HighFive_FM2,	$00, $06
	smpsHeaderFM        HighFive_FM3,	$FD, $07
	smpsHeaderFM        HighFive_FM4,	$0C, $09
	smpsHeaderFM        HighFive_FM5,	$00, $17
	smpsHeaderFM        HighFive_FM6,	$FD, $17
	smpsHeaderPSG       HighFive_PSG1,	$E8, $04, $00, $00
	smpsHeaderPSG       HighFive_PSG2,	$E8, $04, $00, $00
	smpsHeaderPSG       HighFive_PSG3,	$00, $00, $00, $00
	smpsHeaderPWM       HighFive_PWM1,	$00, $AA
	smpsHeaderPWM       HighFive_PWM2,	$00, $C8
	smpsHeaderPWM       HighFive_PWM3,	$00, $00
	smpsHeaderPWM       HighFive_PWM4,	$00, $00

; Dummy DAC data
HighFive_DAC:
	smpsStop

; FM1 Data
HighFive_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nBb1, $06, nBb2, nRst, nBb1, nC3, nRst, nC2, $6C
	smpsStop

; FM2 Data
HighFive_FM2:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nF4, $03, nRst, nF4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nF4, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, $06, nG4, $78
	smpsStop

; FM3 Data
HighFive_FM3:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nF4, $03, nRst, nF4, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nF4, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, $06, nG4, $78
	smpsStop

; FM4 Data
HighFive_FM4:
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	dc.b	nF4, $03, nRst, nF4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nF4, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, $06, nG4, $78
	smpsStop

; FM5 Data
HighFive_FM5:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $06, nF4, $03, nRst, nF4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nF4, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, $06, nG4, $78
	smpsStop

; FM6 Data
HighFive_FM6:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $06, nF4, $03, nRst, nF4, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nF4, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF4, $06, nG4, $78
	smpsStop

; PSG1 Data
HighFive_PSG1:
	smpsPSGvoice        KCVolEnv_04
	dc.b	nRst, $24, nG4, $6C
	smpsStop

; PSG2 Data
HighFive_PSG2:
	smpsPSGvoice        KCVolEnv_04
	dc.b	nRst, $24, nC4, $6C
	smpsStop

; PSG3 Data
HighFive_PSG3:
	smpsStop

; PWM1 Data
HighFive_PWM1:
	dc.b	pwmAcousticKick, $06, $0C, $06, $18
	smpsStop

; PWM2 Data
HighFive_PWM2:
	dc.b	pwmSilence, $24, pwmCrashCymbal, $18
	smpsStop

; PWM3 Data
HighFive_PWM3:
	smpsStop

; PWM4 Data
HighFive_PWM4:
	smpsStop

HighFive_Voices:
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

