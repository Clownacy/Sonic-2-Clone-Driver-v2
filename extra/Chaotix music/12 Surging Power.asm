SurgingPower_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SurgingPower_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $75

	smpsHeaderDAC       SurgingPower_DAC
	smpsHeaderFM        SurgingPower_FM1,	$00, $0D
	smpsHeaderFM        SurgingPower_FM2,	$00, $11
	smpsHeaderFM        SurgingPower_FM3,	$00, $11
	smpsHeaderFM        SurgingPower_FM4,	$00, $16
	smpsHeaderFM        SurgingPower_FM5,	$00, $16
	smpsHeaderFM        SurgingPower_FM6,	$00, $16
	smpsHeaderPSG       SurgingPower_PSG1,	$00, $05, $00, KCVolEnv_0C
	smpsHeaderPSG       SurgingPower_PSG2,	$F4, $04, $00, KCVolEnv_0C
	smpsHeaderPSG       SurgingPower_PSG3,	$23, $02, $00, KCVolEnv_02
	smpsHeaderPWM       SurgingPower_PWM1,	$00, $AA
	smpsHeaderPWM       SurgingPower_PWM2,	$00, $BB
	smpsHeaderPWM       SurgingPower_PWM3,	$00, $BB
	smpsHeaderPWM       SurgingPower_PWM4,	$00, $88

; Dummy DAC data
SurgingPower_DAC:
	smpsStop

; FM1 Data
SurgingPower_FM1:
	smpsSetvoice        $00
	dc.b	nRst, $18

SurgingPower_Jump05:
	smpsCall            SurgingPower_Call06
	smpsCall            SurgingPower_Call06
	smpsChangeTransposition $FF
	smpsCall            SurgingPower_Call06
	smpsChangeTransposition $05
	smpsCall            SurgingPower_Call06
	smpsChangeTransposition $FC
	smpsCall            SurgingPower_Call06
	smpsCall            SurgingPower_Call06
	smpsChangeTransposition $FF
	smpsCall            SurgingPower_Call06
	smpsChangeTransposition $01
	dc.b	nRst, $12, nD3, $03, nRst
	smpsCall            SurgingPower_Call06
	smpsCall            SurgingPower_Call06
	smpsChangeTransposition $FF
	smpsCall            SurgingPower_Call06
	smpsChangeTransposition $05
	smpsCall            SurgingPower_Call06
	smpsChangeTransposition $FC
	smpsCall            SurgingPower_Call06
	smpsChangeTransposition $05
	smpsCall            SurgingPower_Call06
	smpsChangeTransposition $FD
	smpsCall            SurgingPower_Call06
	smpsCall            SurgingPower_Call06
	smpsChangeTransposition $FE
	smpsJump            SurgingPower_Jump05

SurgingPower_Call06:
	dc.b	nBb1, $06, nBb2, $03, nRst, nBb1, $06, nBb2, $03, nRst
	smpsReturn

; FM2 Data
SurgingPower_FM2:
	smpsSetvoice        $02
	dc.b	nRst, $18

SurgingPower_Jump04:
	smpsCall            SurgingPower_Call05
	dc.b	smpsNoAttack, $03
	smpsFMAlterVol      $0A
	smpsPan             panCenter, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$03
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, nG3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nC4, $06, smpsNoAttack, $18
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $15
	smpsCall            SurgingPower_Call05
	dc.b	smpsNoAttack, $03
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nBb3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, nG3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD3, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nF3, $06, smpsNoAttack, $06, nG3, $27
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsJump            SurgingPower_Jump04

SurgingPower_Call05:
	dc.b	nRst, $06, nA3, $03
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, nA3
	smpsFMAlterVol      $0A
	smpsPan             panCenter, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nC4, $06, nA3, $03, nC4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $06, nA3, $03
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE4, $09, nF4, $03
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nC4, $12
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nBb3, $06
	smpsReturn

; FM3 Data
SurgingPower_FM3:
	smpsSetvoice        $02
	dc.b	nRst, $18

SurgingPower_Jump03:
	smpsCall            SurgingPower_Call04
	dc.b	smpsNoAttack, $03
	smpsFMAlterVol      $0A
	smpsPan             panCenter, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$03
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, nD3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nG3, $06, smpsNoAttack, $06, nA3, $12
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $15
	smpsCall            SurgingPower_Call04
	dc.b	smpsNoAttack, $03
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, nD3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nBb2, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nBb2, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nC3, $06, smpsNoAttack, $2D
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsJump            SurgingPower_Jump03

SurgingPower_Call04:
	dc.b	nRst, $06, nF3, $03
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, nF3
	smpsFMAlterVol      $0A
	smpsPan             panCenter, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $06, nF3, $03, nF3
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $06, nE3, $03
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $09, $03
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nA3, $12
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nF3, $06
	smpsReturn

; FM4 Data
SurgingPower_FM4:
	smpsSetvoice        $01
	dc.b	nRst, $18

SurgingPower_Loop04:
	smpsCall            SurgingPower_Call03
	smpsLoop            $00, $08, SurgingPower_Loop04
	smpsJump            SurgingPower_Loop04

SurgingPower_Call03:
	dc.b	nRst, $06, nF4
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nC4, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nD4, $06
	smpsReturn

; FM5 Data
SurgingPower_FM5:
	smpsSetvoice        $01
	smpsPan             panRight, $00
	dc.b	nRst, $18

SurgingPower_Loop03:
	smpsCall            SurgingPower_Call02
	smpsLoop            $00, $06, SurgingPower_Loop03
	dc.b	nRst, $06, nD4
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nC4, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nBb3, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nA3, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nBb3, $06
	smpsCall            SurgingPower_Call02
	smpsJump            SurgingPower_Loop03

SurgingPower_Call02:
	dc.b	nRst, $06, nD4
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nC4, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nA3, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nA3, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nA3, $06
	smpsReturn

; FM6 Data
SurgingPower_FM6:
	smpsSetvoice        $01
	smpsPan             panLeft, $00
	dc.b	nRst, $18

SurgingPower_Loop02:
	smpsCall            SurgingPower_Call01
	smpsLoop            $00, $06, SurgingPower_Loop02
	dc.b	nRst, $06, nA3
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nG3, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nG3, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nF3, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nG3, $06
	smpsCall            SurgingPower_Call01
	smpsJump            SurgingPower_Loop02

SurgingPower_Call01:
	dc.b	nRst, $06, nA3
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nG3, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nF3, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nE3, $06
	smpsFMAlterVol      $0A
	dc.b	$03
	smpsFMAlterVol      $F6
	dc.b	nF3, $06
	smpsReturn

; PSG1 Data
SurgingPower_PSG1:
	smpsPSGvoice        KCVolEnv_02
	dc.b	nRst, $18

SurgingPower_Loop09:
	smpsCall            SurgingPower_Call08
	smpsLoop            $00, $12, SurgingPower_Loop09
	dc.b	nF3, $03, nF3, nRst, $18

SurgingPower_Loop0A:
	smpsCall            SurgingPower_Call08
	smpsLoop            $00, $15, SurgingPower_Loop0A
	dc.b	nF3, $03
	smpsJump            SurgingPower_Loop09

SurgingPower_Call08:
	dc.b	nF3, $03, nF3, nF2
	smpsReturn

; PSG2 Data
SurgingPower_PSG2:
	smpsPSGvoice        KCVolEnv_02
	dc.b	nRst, $18

SurgingPower_Loop07:
	smpsCall            SurgingPower_Call08
	smpsLoop            $00, $12, SurgingPower_Loop07
	dc.b	nF3, $03, nF3, nRst, $18

SurgingPower_Loop08:
	smpsCall            SurgingPower_Call08
	smpsLoop            $00, $15, SurgingPower_Loop08
	dc.b	nF3, $03
	smpsJump            SurgingPower_Loop07

; PSG3 Data
SurgingPower_PSG3:
	smpsPSGform         $E7
	smpsCall            SurgingPower_Call07

SurgingPower_Loop05:
	smpsCall            SurgingPower_Call07
	smpsLoop            $01, $07, SurgingPower_Loop05
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $03, nRst, $0F
	smpsPSGvoice        KCVolEnv_05
	dc.b	$06

SurgingPower_Loop06:
	smpsCall            SurgingPower_Call07
	smpsLoop            $01, $08, SurgingPower_Loop06
	smpsJump            SurgingPower_Loop05

SurgingPower_Call07:
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $03, $03
	smpsPSGvoice        KCVolEnv_05
	dc.b	$06
	smpsLoop            $00, $02, SurgingPower_Call07
	smpsReturn

; PWM1 Data
SurgingPower_PWM1:
	dc.b	pwmElectricKick, $15, pwmLowTom, $03

SurgingPower_Jump02:
	dc.b	pwmElectricKick, $0C, $0C, $06, $0C, $06, $0C, $0C, $06, $0C, $06, $0C
	dc.b	$0C, $06, $0C, $06, $0C, $0C, $0C, $06, $06, pwmElectricKick, $0C, $0C
	dc.b	$06, $0C, $06, $0C, $0C, $06, $0C, $06, $0C, $0C, $06, $0C
	dc.b	$03, $03, $0C, $0C, $06, $0C, $06
	smpsJump            SurgingPower_Jump02

; PWM2 Data
SurgingPower_PWM2:
	dc.b	pwmSilence, $03
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom
	smpsFMAlterVol      $07
	dc.b	pwmMidTom, pwmMidTom
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom
	smpsFMAlterVol      $07
	smpsFMAlterVol      $90
	dc.b	pwmLowTom, pwmLowTom
	smpsFMAlterVol      $70
	dc.b	pwmMidTom

SurgingPower_Jump01:
	dc.b	nRst, $0C, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, pwmAcousticSnare, $09, $03, nRst
	dc.b	$0C, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, $15, pwmAcousticSnare, $03, nRst, $0C
	dc.b	pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, pwmAcousticSnare, $09, $03, nRst, $0C, pwmAcousticSnare
	dc.b	nRst, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, pwmAcousticSnare, $09, $03
	smpsJump            SurgingPower_Jump01

; PWM3 Data
SurgingPower_PWM3:
	smpsFMAlterVol      $FC
	dc.b	pwmSplashCymbal, $18
	smpsFMAlterVol      $04

SurgingPower_Jump00:
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $30
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $30
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst, $2A
	smpsFMAlterVol      $FC
	dc.b	pwmSplashCymbal, $06
	smpsFMAlterVol      $04
	smpsJump            SurgingPower_Jump00

; PWM4 Data
SurgingPower_PWM4:
	smpsCall            SurgingPower_Call00

SurgingPower_Loop00:
	smpsCall            SurgingPower_Call00
	smpsLoop            $00, $07, SurgingPower_Loop00
	dc.b	pwmSilence, $0C, nRst, $06
	smpsFMAlterVol      $90
	dc.b	pwmElectricHiHat, $03, $03
	smpsFMAlterVol      $70

SurgingPower_Loop01:
	smpsCall            SurgingPower_Call00
	smpsLoop            $00, $08, SurgingPower_Loop01
	smpsJump            SurgingPower_Loop00

SurgingPower_Call00:
	dc.b	nRst, $06
	smpsFMAlterVol      $F9
	dc.b	pwmElectricHiHat, $03, $03
	smpsFMAlterVol      $07
	dc.b	nRst, $06
	smpsFMAlterVol      $90
	dc.b	pwmElectricHiHat, $03, $03
	smpsFMAlterVol      $70
	smpsReturn

SurgingPower_Voices:
;	Voice $00
;	$3C
;	$01, $03, $00, $00, 	$1F, $1F, $15, $1F, 	$11, $0D, $10, $05
;	$07, $04, $09, $02, 	$55, $1A, $55, $1A, 	$0E, $80, $08, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $03, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $15, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $10, $0D, $11
	smpsVcDecayRate2    $02, $09, $04, $07
	smpsVcDecayLevel    $01, $05, $01, $05
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $00, $08, $00, $0E

;	Voice $01
;	$33
;	$11, $08, $11, $02, 	$5F, $9F, $5F, $1F, 	$0B, $0F, $02, $09
;	$10, $13, $13, $10, 	$05, $15, $25, $3A, 	$0A, $1D, $09, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $00, $01
	smpsVcCoarseFreq    $02, $01, $08, $01
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $02, $0F, $0B
	smpsVcDecayRate2    $10, $13, $13, $10
	smpsVcDecayLevel    $03, $02, $01, $00
	smpsVcReleaseRate   $0A, $05, $05, $05
	smpsVcTotalLevel    $00, $09, $1D, $0A

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

