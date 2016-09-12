Labyrinth_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Labyrinth_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $25

	smpsHeaderDAC       Labyrinth_DAC
	smpsHeaderFM        Labyrinth_FM1,	$00, $0C
	smpsHeaderFM        Labyrinth_FM2,	$0C, $13
	smpsHeaderFM        Labyrinth_FM3,	$00, $17
	smpsHeaderFM        Labyrinth_FM4,	$00, $17
	smpsHeaderFM        Labyrinth_FM5,	$00, $17
	smpsHeaderFM        Labyrinth_FM6,	$0C, $15
	smpsHeaderPSG       Labyrinth_PSG1,	$F4, $01, $00, KCVolEnv_0C
	smpsHeaderPSG       Labyrinth_PSG2,	$00, $03, $00, KCVolEnv_0C
	smpsHeaderPSG       Labyrinth_PSG3,	$23, $01, $00, KCVolEnv_02
	smpsHeaderPWM       Labyrinth_PWM1,	$00, $99
	smpsHeaderPWM       Labyrinth_PWM2,	$00, $99
	smpsHeaderPWM       Labyrinth_PWM3,	$00, $41
	smpsHeaderPWM       Labyrinth_PWM4,	$00, $99

; Dummy DAC data
Labyrinth_DAC:
	smpsStop

; FM1 Data
Labyrinth_FM1:
	smpsSetvoice        $00
	dc.b	nRst, $54, nB1, $0C

Labyrinth_Jump07:
	dc.b	nC2, $24, nC2, nC2, $30, nEb2, $24, nEb2, nEb2, $30, nB1, $24
	dc.b	nB1, nAb1, $30, nBb1, $24, nBb1, nBb1, nBb1, $18, nB1, $0C
	smpsJump            Labyrinth_Jump07

; FM2 Data
Labyrinth_FM2:
	smpsSetvoice        $02
	dc.b	nRst, $60

Labyrinth_Jump06:
	dc.b	nEb3, $0C, nC3, nG3, nEb3, nBb3, nG3, nD4, nBb3, nEb4, nD4, nEb3
	dc.b	nBb2, nFs3, nEb3, nBb3, nFs3, nCs4, nBb3, nEb4, nF4, nRst, nFs4, nEb4
	dc.b	nBb4, nAb4, nFs4, nAb4, nBb4, nFs4, nRst, nRst, nBb4, nAb4, nCs5, nB4
	dc.b	nBb4, nAb4, nBb4, nFs4, nF4, nEb4, nD4
	smpsJump            Labyrinth_Jump06

; FM3 Data
Labyrinth_FM3:
	smpsSetvoice        $01
	smpsModSet          $07, $01, $06, $07
	dc.b	nRst, $54, nA3, $0C

Labyrinth_Loop02:
	dc.b	nBb3, $60, smpsNoAttack, $18
	smpsLoop            $00, $03, Labyrinth_Loop02
	dc.b	nAb3, $60, smpsNoAttack, $30
	smpsJump            Labyrinth_Loop02

; FM4 Data
Labyrinth_FM4:
	smpsSetvoice        $01
	smpsModSet          $11, $01, $07, $05
	smpsPan             panRight, $00
	dc.b	nRst, $54, nFs3, $0C

Labyrinth_Jump05:
	dc.b	nG3, $60, smpsNoAttack, $18, nFs3, $60, smpsNoAttack, $18, nFs3, $60, smpsNoAttack, $18
	dc.b	nF3, $60, smpsNoAttack, $30
	smpsJump            Labyrinth_Jump05

; FM5 Data
Labyrinth_FM5:
	smpsSetvoice        $01
	smpsModSet          $05, $01, $02, $0A
	smpsPan             panLeft, $00
	dc.b	nRst, $54, nD3, $0C

Labyrinth_Jump04:
	dc.b	nEb3, $60, smpsNoAttack, $18, nCs3, $60, smpsNoAttack, $18, nEb3, $60, smpsNoAttack, $18
	dc.b	nD3, $60, smpsNoAttack, $30
	smpsJump            Labyrinth_Jump04

; FM6 Data
Labyrinth_FM6:
	smpsSetvoice        $02
	smpsModSet          $01, $01, $03, $05
	smpsDetune          $FC
	dc.b	nRst, $06, nRst, $60

Labyrinth_Jump03:
	dc.b	nEb3, $0C, nC3, nG3, nEb3, nBb3, nG3, nD4, nBb3, nEb4, nD4, nEb3
	dc.b	nBb2, nFs3, nEb3, nBb3, nFs3, nCs4, nBb3, nEb4, nF4, nRst, nFs4, nEb4
	dc.b	nBb4, nAb4, nFs4, nAb4, nBb4, nFs4, nRst, nRst, nBb4, nAb4, nCs5, nB4
	dc.b	nBb4, nAb4, nBb4, nFs4, nF4, nEb4, nD4
	smpsJump            Labyrinth_Jump03

; PSG1 Data
Labyrinth_PSG1:
	smpsPSGvoice        KCVolEnv_07
	smpsModSet          $01, $06, $01, $01
	smpsPSGAlterVol     $02
	dc.b	nRst, $04, nE6, $5C
	smpsModSet          $00, $00, $00, $00
	smpsPSGAlterVol     $FE
	smpsPSGvoice        KCVolEnv_02

Labyrinth_Loop05:
	dc.b	nRst, $0C, nEb4, $06, nD4, nEb4
	smpsPSGAlterVol     $03
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	nRst, $24, nEb4, $06, nD4, nEb4
	smpsPSGAlterVol     $03
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	nRst, $18
	smpsLoop            $00, $04, Labyrinth_Loop05
	dc.b	nRst, $18
	smpsJump            Labyrinth_Loop05

; PSG2 Data
Labyrinth_PSG2:
	smpsPSGvoice        KCVolEnv_07
	smpsModSet          $01, $06, $01, $01
	dc.b	nE5, $60
	smpsModSet          $00, $00, $00, $00

Labyrinth_Jump08:
	smpsPSGvoice        KCVolEnv_08
	smpsModSet          $01, $01, $01, $02
	dc.b	nEb3, $0C, nC3, nG3, nEb3, nBb3, nG3, nD4, nBb3, nEb4, nD4, nEb3
	dc.b	nBb2, nFs3, nEb3, nBb3, nFs3, nCs4, nBb3, nEb4, nF4, nRst, nFs4, nEb4
	dc.b	nBb4, nAb4, nFs4, nAb4, nBb4, nFs4, nRst, nRst, nBb4, nAb4, nCs5, nB4
	dc.b	nBb4, nAb4, nBb4, nFs4, nF4, nEb4, nD4
	smpsJump            Labyrinth_Jump08

; PSG3 Data
Labyrinth_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        KCVolEnv_07
	dc.b	(nMaxPSG2-$23)&$FF, $60
	smpsPSGvoice        KCVolEnv_02

Labyrinth_Loop03:
	dc.b	nRst, $0C, (nMaxPSG2-$23)&$FF
	smpsLoop            $00, $0F, Labyrinth_Loop03

Labyrinth_Loop04:
	dc.b	nRst, $0C, (nMaxPSG2-$23)&$FF
	smpsLoop            $00, $06, Labyrinth_Loop04
	smpsJump            Labyrinth_Loop03

; PWM1 Data
Labyrinth_PWM1:
	dc.b	pwmSilence, $54, pwmAcousticKick, $0C

Labyrinth_Jump02:
	dc.b	pwmAcousticKick, $24, pwmAcousticKick, pwmAcousticKick, $30, pwmAcousticKick, $24, pwmAcousticKick, pwmAcousticKick, $30, pwmAcousticKick, $24
	dc.b	pwmAcousticKick, pwmAcousticKick, $30, pwmAcousticKick, $24, pwmAcousticKick, pwmAcousticKick, pwmAcousticKick
	smpsJump            Labyrinth_Jump02

; PWM2 Data
Labyrinth_PWM2:
	dc.b	pwmSilence, $60

Labyrinth_Jump01:
	dc.b	nRst, $24, pwmElectricHiHat, $30
	smpsFMAlterVol      $FD
	dc.b	$24, nRst, $0C
	smpsFMAlterVol      $FD
	dc.b	pwmElectricHiHat, $30
	smpsFMAlterVol      $FD
	dc.b	$30
	smpsFMAlterVol      $03
	dc.b	$0C, nRst, $24
	smpsFMAlterVol      $03
	dc.b	pwmElectricHiHat, $30
	smpsFMAlterVol      $03
	dc.b	$24, smpsNoAttack, $0C
	smpsFMAlterVol      $C0
	dc.b	pwmElectricHiHat, $30
	smpsFMAlterVol      $C0
	dc.b	$30
	smpsFMAlterVol      $40
	dc.b	$18
	smpsFMAlterVol      $20
	dc.b	$0C
	smpsFMAlterVol      $20
	smpsJump            Labyrinth_Jump01

; PWM3 Data
Labyrinth_PWM3:
	dc.b	pwmSilence, $60

Labyrinth_Loop00:
	dc.b	pwmFingersSnapping, $0C, pwmFingersSnapping, pwmBell
	smpsLoop            $00, $03, Labyrinth_Loop00
	dc.b	pwmFingersSnapping
	smpsLoop            $01, $03, Labyrinth_Loop00

Labyrinth_Loop01:
	dc.b	pwmFingersSnapping, $0C, pwmFingersSnapping, pwmBell
	smpsLoop            $00, $04, Labyrinth_Loop01
	smpsJump            Labyrinth_Loop00

; PWM4 Data
Labyrinth_PWM4:
	dc.b	pwmSilence, $60

Labyrinth_Jump00:
	dc.b	pwmHighBongo, $0C, pwmLowBongo, pwmLowBongo
	smpsFMAlterVol      $E0
	dc.b	pwmHighBongo, $0C, pwmLowBongo, pwmLowBongo
	smpsFMAlterVol      $E0
	dc.b	pwmHighBongo, $0C, pwmLowBongo, pwmLowBongo
	smpsFMAlterVol      $E0
	dc.b	pwmHighBongo
	smpsFMAlterVol      $E0
	dc.b	pwmHighBongo, $0C, pwmLowBongo, pwmLowBongo
	smpsFMAlterVol      $20
	dc.b	pwmHighBongo, $0C, pwmLowBongo, pwmLowBongo
	smpsFMAlterVol      $20
	dc.b	pwmHighBongo, $0C, pwmLowBongo, pwmLowBongo
	smpsFMAlterVol      $20
	dc.b	pwmHighBongo
	smpsFMAlterVol      $20
	dc.b	pwmHighBongo, $0C, pwmLowBongo, pwmLowBongo
	smpsFMAlterVol      $FE
	dc.b	pwmHighBongo, $0C, pwmLowBongo, pwmLowBongo
	smpsFMAlterVol      $FE
	dc.b	pwmHighBongo, $0C, pwmLowBongo, pwmLowBongo
	smpsFMAlterVol      $FE
	dc.b	pwmHighBongo
	smpsFMAlterVol      $FE
	dc.b	pwmHighBongo, $0C, pwmLowBongo, pwmLowBongo
	smpsFMAlterVol      $02
	dc.b	pwmHighBongo, $0C, pwmLowBongo, pwmLowBongo
	smpsFMAlterVol      $02
	dc.b	pwmHighBongo, $0C, pwmLowBongo, pwmLowBongo
	smpsFMAlterVol      $02
	dc.b	pwmHighBongo, $0C, pwmLowBongo, pwmLowBongo
	smpsFMAlterVol      $02
	smpsJump            Labyrinth_Jump00

Labyrinth_Voices:
;	Voice $00
;	$18
;	$35, $31, $31, $32, 	$9E, $DC, $1C, $9C, 	$0D, $06, $04, $01
;	$08, $06, $03, $05, 	$BF, $5F, $3F, $2F, 	$29, $1B, $17, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $02, $01, $01, $05
	smpsVcRateScale     $02, $00, $03, $02
	smpsVcAttackRate    $1C, $1C, $1C, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $04, $06, $0D
	smpsVcDecayRate2    $05, $03, $06, $08
	smpsVcDecayLevel    $02, $03, $05, $0B
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $17, $1B, $29

;	Voice $01
;	$07
;	$03, $01, $02, $01, 	$15, $15, $15, $15, 	$0D, $00, $00, $00
;	$08, $00, $00, $00, 	$5F, $0A, $0A, $0A, 	$87, $80, $80, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $15, $15, $15, $15
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $0D
	smpsVcDecayRate2    $00, $00, $00, $08
	smpsVcDecayLevel    $00, $00, $00, $05
	smpsVcReleaseRate   $0A, $0A, $0A, $0F
	smpsVcTotalLevel    $00, $00, $00, $07

;	Voice $02
;	$2D
;	$77, $66, $05, $15, 	$1F, $5F, $5F, $5F, 	$05, $07, $0C, $0C
;	$17, $11, $12, $11, 	$9F, $9C, $9C, $9C, 	$1D, $83, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $06, $07
	smpsVcCoarseFreq    $05, $05, $06, $07
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0C, $07, $05
	smpsVcDecayRate2    $11, $12, $11, $17
	smpsVcDecayLevel    $09, $09, $09, $09
	smpsVcReleaseRate   $0C, $0C, $0C, $0F
	smpsVcTotalLevel    $00, $00, $03, $1D

