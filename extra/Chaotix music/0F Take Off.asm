TakeOff_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     TakeOff_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $02

	smpsHeaderDAC       TakeOff_DAC
	smpsHeaderFM        TakeOff_FM1,	$00, $0C
	smpsHeaderFM        TakeOff_FM2,	$00, $16
	smpsHeaderFM        TakeOff_FM3,	$00, $13
	smpsHeaderFM        TakeOff_FM4,	$00, $0B
	smpsHeaderFM        TakeOff_FM5,	$00, $0A
	smpsHeaderFM        TakeOff_FM6,	$00, $18
	smpsHeaderPSG       TakeOff_PSG1,	$00, $01, $00, KCVolEnv_0C
	smpsHeaderPSG       TakeOff_PSG2,	$00, $04, $00, KCVolEnv_0C
	smpsHeaderPSG       TakeOff_PSG3,	$23, $02, $00, KCVolEnv_02
	smpsHeaderPWM       TakeOff_PWM1,	$00, $AA
	smpsHeaderPWM       TakeOff_PWM2,	$00, $99
	smpsHeaderPWM       TakeOff_PWM3,	$00, $AA
	smpsHeaderPWM       TakeOff_PWM4,	$00, $77

; Dummy DAC data
TakeOff_DAC:
	smpsStop

; FM1 Data
TakeOff_FM1:
	smpsSetvoice        $00
	dc.b	nRst, $24

TakeOff_Jump05:
	dc.b	nD2, $0C, nRst, nD2, $18, nRst, nD2, nRst, nD2, nRst, nD2, $06
	dc.b	nRst, nE2, $0C, smpsNoAttack, $0C, nRst, nE2, $18, nRst, nE2, nRst, nE2
	dc.b	nRst, nE2, $06, nRst, nD2, $0C, smpsNoAttack, $0C, nRst, nD2, $18, nRst
	dc.b	nD2, nRst, nD2, nRst, nD2, $06, nRst, nE2, $0C, smpsNoAttack, $0C, nRst
	dc.b	nE2, $18, nRst, nE2, nRst, $0C, nE2, $06, nRst, nE2, nRst, nE2
	dc.b	nRst, nE2, nE3, nE2, nRst, nFs2, nFs3, nFs2, nRst
	smpsJump            TakeOff_Jump05

; FM2 Data
TakeOff_FM2:
	smpsSetvoice        $03
	dc.b	nRst, $24

TakeOff_Jump02:
	smpsCall            TakeOff_Call00
	dc.b	smpsNoAttack, $5A
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsCall            TakeOff_Call00
	dc.b	smpsNoAttack, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD4, $4E
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsCall            TakeOff_Call00
	dc.b	smpsNoAttack, $36
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3, $0C, nE3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nA3, $1E
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nB3, $3C, smpsNoAttack, $5A
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsJump            TakeOff_Jump02

TakeOff_Call00:
	dc.b	nRst, $18, nA3, $1E
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nB3, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3, $0C
	smpsReturn

; FM3 Data
TakeOff_FM3:
	smpsSetvoice        $02
	dc.b	nRst, $24

TakeOff_Loop02:
	smpsPan             panLeft, $00
	dc.b	nRst, $0C, nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD5, $0C, nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panRight, $00
	dc.b	nRst, $0C, nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD5, $0C, nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsLoop            $00, $08, TakeOff_Loop02
	smpsJump            TakeOff_Loop02

; FM4 Data
TakeOff_FM4:
	smpsSetvoice        $01
	smpsModSet          $0F, $01, $01, $06
	dc.b	nRst, $24

TakeOff_Jump04:
	dc.b	nG3, $60, smpsNoAttack, $4E
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nFs3, $0C, smpsNoAttack, $60, smpsNoAttack, $4E
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0C, smpsNoAttack, $60, smpsNoAttack, $4E
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nFs3, $0C, smpsNoAttack, $60, smpsNoAttack, $60
	smpsJump            TakeOff_Jump04

; FM5 Data
TakeOff_FM5:
	smpsSetvoice        $01
	smpsModSet          $0F, $01, $02, $04
	dc.b	nRst, $24

TakeOff_Jump03:
	dc.b	nE3, $60, smpsNoAttack, $4E
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD3, $0C, smpsNoAttack, $60, smpsNoAttack, $4E
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $0C, smpsNoAttack, $60, smpsNoAttack, $4E
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD3, $0C, smpsNoAttack, $60, smpsNoAttack, $60
	smpsJump            TakeOff_Jump03

; FM6 Data
TakeOff_FM6:
	smpsSetvoice        $03
	smpsPan             panLeft, $00
	smpsModSet          $05, $01, $04, $06
	dc.b	nRst, $24, nRst, $0C
	smpsJump            TakeOff_Jump02

; PSG1 Data
TakeOff_PSG1:
	smpsPSGvoice        KCVolEnv_08
	dc.b	nRst, $24

TakeOff_Jump07:
	dc.b	nRst, $60, nRst, $18, nA3, nRst, $0C, nB3, nRst, nG3, smpsNoAttack, $18
	dc.b	nRst, $48, nRst, $24, nA3, $0C, nB3, $06, nRst, nG3, nRst, nE3
	dc.b	$0C, nD3, nRst, $60, nRst, $0C, nA3, nB3, $06, nRst, nD4, $3C
	dc.b	nRst, $0C, nD4, nC4, $06, nRst, nB3, nRst, nA3, $0C, nG3, $06
	dc.b	nRst, nA3, $0C, nB3, $06, nRst, nG3, $0C, nA3, $06, nRst, nB3
	dc.b	$0C, nG3, $06, nRst, nB3, $12, nRst, $06, nA3, $12, nRst, $06
	smpsJump            TakeOff_Jump07

; PSG2 Data
TakeOff_PSG2:
	smpsPSGvoice        KCVolEnv_08
	smpsModSet          $02, $01, $01, $03
	dc.b	nRst, $24, nRst, $0C
	smpsJump            TakeOff_Jump07

; PSG3 Data
TakeOff_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $24

TakeOff_Jump06:
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $0C, $0C, $0C, $0C, $06, $06, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C
	smpsPSGvoice        KCVolEnv_05
	dc.b	$0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	$0C, $0C

TakeOff_Loop03:
	dc.b	nRst, (nMaxPSG2-$23)&$FF, $0C, $0C, $0C, $0C, $06, $06, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C
	smpsPSGvoice        KCVolEnv_05
	dc.b	$0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	$0C, $0C
	smpsLoop            $00, $03, TakeOff_Loop03
	smpsJump            TakeOff_Jump06

; PWM1 Data
TakeOff_PWM1:
	dc.b	pwmElectricKick, $06, pwmElectricKick, $06, nRst, $18

TakeOff_Jump01:
	dc.b	pwmElectricKick, $30, pwmElectricKick, pwmElectricKick, pwmElectricKick, $24, $0C, nRst, $30, pwmElectricKick, pwmElectricKick, pwmElectricKick
	dc.b	$24, $0C, nRst, $30, pwmElectricKick, pwmElectricKick, pwmElectricKick, $24, $0C, nRst, $30, pwmElectricKick
	dc.b	pwmElectricKick, $30, pwmElectricKick
	smpsJump            TakeOff_Jump01

; PWM2 Data
TakeOff_PWM2:
	dc.b	pwmSilence, $0C, pwmAcousticSnare, $18

TakeOff_Loop01:
	dc.b	nRst, $18, pwmMidTom, nRst, pwmMidTom
	smpsLoop            $00, $07, TakeOff_Loop01
	dc.b	nRst, $0C, pwmAcousticSnare, pwmAcousticSnare, pwmMidTom, pwmAcousticSnare, $06, pwmAcousticSnare, pwmMidTom, nRst, pwmMidTom, pwmAcousticSnare
	dc.b	pwmAcousticSnare, pwmAcousticSnare
	smpsJump            TakeOff_Loop01

; PWM3 Data
TakeOff_PWM3:
	dc.b	pwmSilence, $0C
	smpsFMAlterVol      $FC
	dc.b	pwmSplashCymbal, $18
	smpsFMAlterVol      $04

TakeOff_Jump00:
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $18
	smpsFMAlterVol      $40
	smpsFMAlterVol      $90
	dc.b	pwmLowTom, nRst, pwmLowTom, nRst, pwmLowTom, nRst, pwmLowTom, $0C
	smpsFMAlterVol      $70
	smpsFMAlterVol      $FC
	dc.b	pwmSplashCymbal
	smpsFMAlterVol      $04
	smpsFMAlterVol      $90
	dc.b	nRst, $18, pwmLowTom, nRst, pwmLowTom, nRst, pwmLowTom, nRst, pwmLowTom, $0C
	smpsFMAlterVol      $70
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal
	smpsFMAlterVol      $40
	smpsFMAlterVol      $90
	dc.b	nRst, $18, pwmLowTom, nRst, pwmLowTom, nRst, pwmLowTom, nRst, pwmLowTom, $0C
	smpsFMAlterVol      $70
	smpsFMAlterVol      $FC
	dc.b	pwmSplashCymbal
	smpsFMAlterVol      $04
	smpsFMAlterVol      $90
	dc.b	nRst, $18, pwmLowTom, nRst, pwmLowTom
	smpsFMAlterVol      $70
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $48
	smpsFMAlterVol      $40
	smpsFMAlterVol      $90
	dc.b	pwmLowTom, $18
	smpsFMAlterVol      $70
	smpsJump            TakeOff_Jump00

; PWM4 Data
TakeOff_PWM4:
	dc.b	pwmSilence, $24

TakeOff_Loop00:
	dc.b	nRst, $0C
	smpsFMAlterVol      $F9
	dc.b	pwmElectricHiHat, $06, $06, $06, $12
	smpsFMAlterVol      $07
	dc.b	nRst, $0C
	smpsFMAlterVol      $90
	dc.b	pwmClap, $06, $06, $06, $12
	smpsFMAlterVol      $70
	smpsLoop            $00, $08, TakeOff_Loop00
	smpsJump            TakeOff_Loop00

TakeOff_Voices:
;	Voice $00
;	$4B
;	$10, $11, $21, $62, 	$3F, $9F, $9F, $9F, 	$02, $0D, $13, $02
;	$12, $0A, $05, $07, 	$0F, $6F, $5F, $0F, 	$24, $0D, $15, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $01
	smpsVcUnusedBits    $01
	smpsVcDetune        $06, $02, $01, $01
	smpsVcCoarseFreq    $02, $01, $01, $00
	smpsVcRateScale     $02, $02, $02, $00
	smpsVcAttackRate    $1F, $1F, $1F, $3F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $13, $0D, $02
	smpsVcDecayRate2    $07, $05, $0A, $12
	smpsVcDecayLevel    $00, $05, $06, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $15, $0D, $24

;	Voice $01
;	$29
;	$36, $74, $73, $31, 	$5E, $5F, $5C, $5F, 	$12, $0F, $10, $10
;	$04, $07, $02, $01, 	$3F, $4F, $0F, $0F, 	$12, $11, $2D, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $03
	smpsVcCoarseFreq    $01, $03, $04, $06
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1C, $1F, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $10, $0F, $12
	smpsVcDecayRate2    $01, $02, $07, $04
	smpsVcDecayLevel    $00, $00, $04, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $2D, $11, $12

;	Voice $02
;	$3C
;	$74, $72, $11, $11, 	$19, $1E, $19, $1E, 	$01, $01, $01, $01
;	$00, $00, $00, $00, 	$F7, $FC, $F7, $FC, 	$18, $80, $0A, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $01, $07, $07
	smpsVcCoarseFreq    $01, $01, $02, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1E, $19, $1E, $19
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $01, $01
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0C, $07, $0C, $07
	smpsVcTotalLevel    $00, $0A, $00, $18

;	Voice $03
;	$2C
;	$22, $04, $02, $14, 	$51, $52, $50, $52, 	$0D, $00, $06, $04
;	$04, $05, $02, $00, 	$1C, $1F, $2B, $1F, 	$0E, $80, $13, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $02
	smpsVcCoarseFreq    $04, $02, $04, $02
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $12, $10, $12, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $06, $00, $0D
	smpsVcDecayRate2    $00, $02, $05, $04
	smpsVcDecayLevel    $01, $02, $01, $01
	smpsVcReleaseRate   $0F, $0B, $0F, $0C
	smpsVcTotalLevel    $00, $13, $00, $0E

