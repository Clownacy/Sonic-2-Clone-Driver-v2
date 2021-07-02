NiceMeetingYou_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     NiceMeetingYou_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $0F

	smpsHeaderDAC       NiceMeetingYou_DAC
	smpsHeaderFM        NiceMeetingYou_FM1,	$00, $09
	smpsHeaderFM        NiceMeetingYou_FM2,	$00, $0C
	smpsHeaderFM        NiceMeetingYou_FM3,	$FB, $15
	smpsHeaderFM        NiceMeetingYou_FM4,	$00, $1B
	smpsHeaderFM        NiceMeetingYou_FM5,	$FB, $1E
	smpsHeaderFM        NiceMeetingYou_FM6,	$0C, $1B
	smpsHeaderPSG       NiceMeetingYou_PSG1,	$F4, $00, $00, $00
	smpsHeaderPSG       NiceMeetingYou_PSG2,	$F4, $00, $00, $00
	smpsHeaderPSG       NiceMeetingYou_PSG3,	$23, $01, $00, $00
	smpsHeaderPWM       NiceMeetingYou_PWM1,	$00, $EE
	smpsHeaderPWM       NiceMeetingYou_PWM2,	$00, $ED
	smpsHeaderPWM       NiceMeetingYou_PWM3,	$00, $00
	smpsHeaderPWM       NiceMeetingYou_PWM4,	$00, $BB

; Dummy DAC data
NiceMeetingYou_DAC:
	smpsStop

; FM1 Data
NiceMeetingYou_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nRst, $3C, nC2, $0C, nB2, $03, nC3, $15

NiceMeetingYou_Loop05:
	dc.b	nF2, $0C, nF3, $06, nRst, nD2, $0C, nD3, $06, nRst, nEb2, $0C
	dc.b	nEb3, $06, nRst, nE2, $0C, nE3, $06, nRst
	smpsLoop            $00, $04, NiceMeetingYou_Loop05
	dc.b	nBb1, $0C, nBb2, $06, nRst, nG1, $0C, nG2, $06, nRst, nAb1, $0C
	dc.b	nAb2, $06, nRst, nA1, $0C, nA2, $06, nRst, nC3, $18, nC3, nRst
	dc.b	$30, nF2, $0C, nF3, $06, nRst, nD2, $0C, nD3, $06, nRst, nEb2
	dc.b	$0C, nEb3, $06, nRst, nE2, $0C, nE3, $06, nRst, nF2, $0C, nFs2
	dc.b	$06, nRst, nG2, $0C, nAb2, $06, nRst, nA2, $0C, nBb2, $06, nRst
	dc.b	nB2, $0C, nC3, $06, nRst
	smpsJump            NiceMeetingYou_Loop05

; FM2 Data
NiceMeetingYou_FM2:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsCall            NiceMeetingYou_Call01

NiceMeetingYou_Call01:
	dc.b	nRst, $60

NiceMeetingYou_Loop04:
	dc.b	nRst, $09, nD6, $03, nEb6, $18, nD6, $06, nRst, nC6, $12, nA5
	dc.b	$06, nRst, $0C, nC6, $06, nRst, nE5, $03, nF5, $09, $03, nRst
	dc.b	$03, nE5, $03, nF5, $09, $03, nRst, $03, nG5, $18, nA5, $06
	dc.b	nRst, $06, nBb5, $06, nRst, $06, nC6, $06, nRst, $06
	smpsLoop            $00, $02, NiceMeetingYou_Loop04
	dc.b	nRst, $09, nD6, $03, nEb6, $18, nD6, $06, nRst, nC6, $12, nA5
	dc.b	$06, nRst, $0C, nC6, $06, nRst, nBb6, $06, nRst, $12, nB6, $03
	dc.b	nC7, $2D, nRst, $18, nRst, $09, nD6, $03, nEb6, $18, nD6, $06
	dc.b	nRst, nC6, $12, nA5, $06, nRst, $0C, nC6, $0C, nF5, $0C, nFs5
	dc.b	$06, nRst, nG5, $0C, nAb5, $06, nRst, nA5, $0C, nBb5, $06, nRst
	dc.b	nB5, $0C, nC6, $06, nRst
	smpsJump            NiceMeetingYou_Loop04

; FM3 Data
NiceMeetingYou_FM3:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsCall            NiceMeetingYou_Call01

; FM4 Data
NiceMeetingYou_FM4:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $04, $07
	dc.b	nRst, $06
	smpsCall            NiceMeetingYou_Call01

; FM5 Data
NiceMeetingYou_FM5:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $04, $07
	dc.b	nRst, $06
	smpsCall            NiceMeetingYou_Call01

; FM6 Data
NiceMeetingYou_FM6:
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $04, $07
	dc.b	nRst, $0C
	smpsCall            NiceMeetingYou_Call00

; PSG1 Data
NiceMeetingYou_PSG1:
	smpsPSGvoice        KCVolEnv_05
	smpsCall            NiceMeetingYou_Call00

NiceMeetingYou_Call00:
	dc.b	nRst, $60

NiceMeetingYou_Loop03:
	dc.b	nRst, $0C, nEb4, $0C, nD4, $18, nC4, $12, $06, nRst, $0C, nD4
	dc.b	$0C, nRst, $0C, nEb4, $0C, nD4, $18, nC4, $06, $0C, nA3, $06
	dc.b	nRst, $0C, nG3, $0C
	smpsLoop            $00, $02, NiceMeetingYou_Loop03
	dc.b	nRst, $0C, nAb4, $0C, nG4, $18, nF4, $12, nG4, $06, nRst, $0C
	dc.b	nAb4, $0C, nBb4, $0C, nRst, nC5, nRst, nRst, $30, nRst, $0C, nEb4
	dc.b	$0C, nD4, $18, nC4, $12, $06, nRst, $0C, nD4, $0C, nEb4, $0C
	dc.b	nE4, $06, nRst, nF4, $0C, nFs4, $06, nRst, nG4, $0C, nAb4, $06
	dc.b	nRst, nA4, $0C, nBb4, $06, nRst
	smpsJump            NiceMeetingYou_Loop03

; PSG2 Data
NiceMeetingYou_PSG2:
	smpsPSGvoice        KCVolEnv_05
	dc.b	nRst, $60

NiceMeetingYou_Loop09:
	dc.b	nRst, $0C, nBb3, $0C, nA3, $18, nG3, $12, $06, nRst, $0C, nA3
	dc.b	$0C, nRst, $0C, nBb3, $0C, nA3, $18, nG3, $06, $0C, nF3, $06
	dc.b	nRst, $0C, nEb3, $0C
	smpsLoop            $00, $02, NiceMeetingYou_Loop09
	dc.b	nRst, $0C, nEb4, $0C, nD4, $18, nC4, $12, nD4, $06, nRst, $0C
	dc.b	nEb4, $0C, nF4, $0C, nRst, nG4, nRst, nRst, $30, nRst, $0C, nBb3
	dc.b	$0C, nA3, $18, nG3, $12, $06, nRst, $0C, nA3, $0C, nBb3, $0C
	dc.b	nB3, $06, nRst, nC4, $0C, nCs4, $06, nRst, nD4, $0C, nEb4, $06
	dc.b	nRst, nE4, $0C, nF4, $06, nRst
	smpsJump            NiceMeetingYou_Loop09

; PSG3 Data
NiceMeetingYou_PSG3:
	smpsPSGvoice        KCVolEnv_02
	smpsPSGform         $E7
	dc.b	nRst, $60

NiceMeetingYou_Loop06:
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGAlterVol     $03
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGAlterVol     $FE
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $14, NiceMeetingYou_Loop06
	dc.b	(nMaxPSG2-$23)&$FF, $18, (nMaxPSG2-$23)&$FF, nRst, $30

NiceMeetingYou_Loop07:
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGAlterVol     $03
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGAlterVol     $FE
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $04, NiceMeetingYou_Loop07

NiceMeetingYou_Loop08:
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGAlterVol     $03
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGAlterVol     $FE
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $02, NiceMeetingYou_Loop08
	smpsJump            NiceMeetingYou_Loop06

; PWM1 Data
NiceMeetingYou_PWM1:
	dc.b	pwmSilence, $60

NiceMeetingYou_Loop02:
	dc.b	pwmElectricKick, $18, pwmElectricKick, pwmElectricKick, pwmElectricKick
	smpsLoop            $00, $05, NiceMeetingYou_Loop02
	dc.b	pwmElectricKick, $18, pwmElectricKick, nRst, $30, pwmElectricKick, $18, pwmElectricKick, pwmElectricKick, pwmElectricKick, pwmElectricKick, $0C
	dc.b	pwmElectricKick, pwmElectricKick, pwmElectricKick, nRst, $30
	smpsJump            NiceMeetingYou_Loop02

; PWM2 Data
NiceMeetingYou_PWM2:
	dc.b	pwmElectricSnare, $18, $12, $06, $0C, $0C, $0C, $0C

NiceMeetingYou_Loop01:
	dc.b	nRst, $0C, pwmElectricSnare
	smpsLoop            $00, $10, NiceMeetingYou_Loop01
	dc.b	nRst, $0C, pwmElectricSnare, nRst, $0C, pwmElectricSnare, nRst, $0C, pwmElectricSnare, nRst, $06, pwmElectricSnare
	dc.b	pwmElectricSnare, pwmElectricSnare, nRst, $3C, pwmElectricSnare, $0C, pwmElectricSnare, pwmElectricSnare, nRst, $0C, pwmElectricSnare, nRst
	dc.b	$0C, pwmElectricSnare, nRst, $0C, pwmElectricSnare, nRst, $0C, pwmElectricSnare, nRst, $30, pwmElectricSnare, $0C
	dc.b	pwmElectricSnare, pwmElectricSnare, pwmElectricSnare
	smpsJump            NiceMeetingYou_Loop01

; PWM3 Data
NiceMeetingYou_PWM3:
	smpsStop

; PWM4 Data
NiceMeetingYou_PWM4:
	dc.b	pwmSilence, $60

NiceMeetingYou_Loop00:
	smpsFMAlterVol      $FD
	dc.b	pwmHighClick, $0C
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pwmLowClick
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pwmHighClick, $06
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pwmLowClick, pwmLowClick, $0C, $12
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pwmHighClick, $06, $0C
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pwmLowClick, $0C
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pwmHighClick, $0C
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pwmLowClick
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pwmHighClick, $06
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pwmLowClick, pwmLowClick, $0C, $06, $06
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pwmHighClick
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pwmLowClick
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pwmHighClick
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pwmLowClick, $06, nRst, $06, pwmLowClick, $06
	smpsFMAlterVol      $30
	smpsLoop            $00, $02, NiceMeetingYou_Loop00
	smpsFMAlterVol      $FD
	dc.b	pwmHighClick, $0C
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pwmLowClick
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pwmHighClick, $06
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pwmLowClick, pwmLowClick, $0C, $12
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pwmHighClick, $06, $0C
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pwmLowClick, $0C
	smpsFMAlterVol      $30
	smpsFMAlterVol      $D0
	dc.b	pwmLowClick, $18
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pwmHighClick
	smpsFMAlterVol      $03
	dc.b	nRst, $0C
	smpsFMAlterVol      $D0
	dc.b	pwmLowClick, $0C, $0C, $0C
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pwmHighClick, $0C
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pwmLowClick
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pwmHighClick, $06
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pwmLowClick, pwmLowClick, $0C, $12
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pwmHighClick, $06, $0C
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	pwmLowClick, $0C
	smpsFMAlterVol      $30
	smpsFMAlterVol      $D0
	dc.b	pwmLowClick, $0C, $0C, $0C, $0C
	smpsFMAlterVol      $30
	smpsFMAlterVol      $FD
	dc.b	pwmHighClick, $0C, $0C, $0C, $0C
	smpsFMAlterVol      $03
	smpsJump            NiceMeetingYou_Loop00

NiceMeetingYou_Voices:
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
;	$3D
;	$01, $00, $01, $02, 	$12, $1F, $1F, $14, 	$07, $02, $02, $0A
;	$05, $05, $05, $05, 	$25, $27, $27, $A7, 	$1C, $80, $82, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $1F, $1F, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $02, $02, $07
	smpsVcDecayRate2    $05, $05, $05, $05
	smpsVcDecayLevel    $0A, $02, $02, $02
	smpsVcReleaseRate   $07, $07, $07, $05
	smpsVcTotalLevel    $00, $02, $00, $1C

;	Voice $02
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

