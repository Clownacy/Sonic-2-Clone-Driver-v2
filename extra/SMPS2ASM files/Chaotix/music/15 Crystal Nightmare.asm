CrystalNightmare_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     CrystalNightmare_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $30

	smpsHeaderDAC       CrystalNightmare_DAC
	smpsHeaderFM        CrystalNightmare_FM1,	$00, $09
	smpsHeaderFM        CrystalNightmare_FM2,	$0C, $13
	smpsHeaderFM        CrystalNightmare_FM3,	$F4, $1A
	smpsHeaderFM        CrystalNightmare_FM4,	$00, $24
	smpsHeaderFM        CrystalNightmare_FM5,	$0C, $20
	smpsHeaderFM        CrystalNightmare_FM6,	$07, $18
	smpsHeaderPSG       CrystalNightmare_PSG1,	$E8, $01, $00, $00
	smpsHeaderPSG       CrystalNightmare_PSG2,	$E3, $02, $00, $00
	smpsHeaderPSG       CrystalNightmare_PSG3,	$23, $02, $00, $00
	smpsHeaderPWM       CrystalNightmare_PWM1,	$00, $CC
	smpsHeaderPWM       CrystalNightmare_PWM2,	$00, $46
	smpsHeaderPWM       CrystalNightmare_PWM3,	$00, $54
	smpsHeaderPWM       CrystalNightmare_PWM4,	$00, $66

; Dummy DAC data
CrystalNightmare_DAC:
	smpsStop

; FM1 Data
CrystalNightmare_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00

CrystalNightmare_Jump01:
	dc.b	nC2, $30, smpsNoAttack, $24, nC3, $0C

CrystalNightmare_Loop0A:
	smpsFMAlterVol      $FD
	dc.b	nC3, $04, nRst
	smpsFMAlterVol      $03
	dc.b	nC3, nBb2, $0C, nA2, nAb2, $04, nRst, nG2, nF2, $04, nRst, nF2
	dc.b	nEb2, $0C, nD2, nEb2, $04, nRst, nE2
	smpsLoop            $00, $07, CrystalNightmare_Loop0A
	smpsFMAlterVol      $FD
	dc.b	nC2, $0C
	smpsFMAlterVol      $03
	dc.b	nC2, $06, nRst, nC2, nRst, nC2, nRst, nC2, $04, nRst, nC3, nBb2
	dc.b	nRst, nG2, nF2, nRst, nFs2, nF2, nRst, nEb2
	smpsLoop            $01, $02, CrystalNightmare_Loop0A
	smpsSetvoice        $02
	smpsChangeTransposition $E8
	smpsFMAlterVol      $05
	dc.b	nC2, $60, smpsNoAttack, $60, smpsNoAttack, $30, smpsNoAttack
	smpsFMAlterVol      $FF
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FF
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FF
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FE
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FE
	dc.b	$18
	smpsFMAlterVol      $02
	smpsSetvoice        $00
	dc.b	nRst, $18
	smpsChangeTransposition $18

CrystalNightmare_Loop0B:
	dc.b	nC3, $04, nRst, nC3, nBb2, $0C, nA2, nAb2, $04, nRst, nG2, nF2
	dc.b	$04, nRst, nF2, nEb2, $0C, nD2, nEb2, $04, nRst, nE2
	smpsLoop            $00, $03, CrystalNightmare_Loop0B
	smpsJump            CrystalNightmare_Jump01

; FM2 Data
CrystalNightmare_FM2:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsCall            CrystalNightmare_Call00

CrystalNightmare_Call00:
	dc.b	nEb3, $10, nRst, $04, nFs3, $04, nRst, $0C, nEb3, $10, nRst, $04
	dc.b	nFs3, $04, nRst, $0C, nG3, $06, nRst, nFs3, nRst, nRst, $60
	smpsFMAlterVol      $FB
	dc.b	nRst, $3C, nF3, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nF3, $04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $04, nF3, $04, nRst, nF3, nRst, $0C, nRst, $60, nRst, $3C
	dc.b	nF3, $0C, nRst, $08, nF3, $04, nRst, $0C, nRst, $60, nRst, $30
	dc.b	nEb3, $06, nRst, nD3, nRst, nC3, nRst, nG2, nRst
	smpsFMAlterVol      $05
	dc.b	nRst, $60
	smpsLoop            $00, $02, CrystalNightmare_Call00
	dc.b	nEb3, $10, nRst, $04, nFs3, $04, nRst, $0C, nEb3, $10, nRst, $04
	dc.b	nFs3, $04, nRst, $0C, nG3, $06, nRst, nFs3, nRst
	smpsChangeTransposition $0C
	smpsFMAlterVol      $07
	dc.b	nC2, $18
	smpsFMAlterVol      $FF
	dc.b	nEb2
	smpsFMAlterVol      $FF
	dc.b	nF2
	smpsFMAlterVol      $FF
	dc.b	nFs2
	smpsFMAlterVol      $FF
	dc.b	nG2
	smpsFMAlterVol      $FF
	dc.b	nBb2
	smpsFMAlterVol      $FF
	dc.b	nC3
	smpsFMAlterVol      $FF
	dc.b	nEb3, nE3, $18, smpsNoAttack, nE3, $18, smpsNoAttack, nE3, $18, smpsNoAttack, nE3, $18
	dc.b	smpsNoAttack
	smpsFMAlterVol      $FF
	dc.b	nE3, $18, smpsNoAttack
	smpsFMAlterVol      $FF
	dc.b	nE3, $18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$12, nRst, $06
	smpsFMAlterVol      $F9
	dc.b	nFs3, $04, nFs3, $04, nFs3, $04, nFs3, $0C
	smpsFMAlterVol      $0C
	dc.b	nC3, $60, smpsNoAttack, $60, smpsNoAttack, $18, smpsNoAttack
	smpsFMAlterVol      $01
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $01
	dc.b	$18, nRst, $18
	smpsFMAlterVol      $FE
	smpsChangeTransposition $F4
	smpsJump            CrystalNightmare_Call00

; FM3 Data
CrystalNightmare_FM3:
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	smpsDetune          $02

CrystalNightmare_Jump00:
	dc.b	nRst, $60

CrystalNightmare_Loop09:
	smpsCall            CrystalNightmare_Call02
	smpsLoop            $00, $25, CrystalNightmare_Loop09
	dc.b	nEb6, nRst
	smpsJump            CrystalNightmare_Jump00

CrystalNightmare_Call02:
	dc.b	nEb6, $03, nRst, nG6, nRst, nAb6, nRst
	smpsReturn

; FM4 Data
CrystalNightmare_FM4:
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $04, $05
	dc.b	nRst, $08

CrystalNightmare_Loop08:
	dc.b	nEb5, $0C, smpsNoAttack, $04, nRst, nFs5, $04, nRst, $0C, nEb5, $0C, smpsNoAttack
	dc.b	$04, nRst, nFs5, $04, nRst, $0C, nG5, $06, nRst, nFs5, $06, nRst
	dc.b	nRst, $0C, nF4, $08, nBb4, $04, nC5, $08, nEb5, $04, nRst, $08
	dc.b	nF5, $04, smpsNoAttack, $04, nRst, nFs5, $04, nF5, $04, nRst, nEb5, $04
	dc.b	nF5, $04, nRst, nEb5, nD5, nRst, nEb5, nD5, $08, nC5, $04, nBb4
	dc.b	$08, nG4, $04, nRst, $48, nRst, $0C, nF4, $08, nBb4, $04, nC5
	dc.b	$08, nEb5, $04, nRst, $08, nF5, $04, smpsNoAttack, $04, nRst, nFs5, $04
	dc.b	nF5, $04, nRst, nEb5, $04, nF5, $04, nRst, nEb5, nD5, nRst, nEb5
	dc.b	nD5, $08, nC5, $04, nBb4, $08, nBb5, $04, nRst, $48, nRst, $08
	dc.b	nC5, $04, nC6, $08, nRst, $04, nBb5, $06, nRst, nG5, nRst, nF5
	dc.b	$08, nFs5, $04, nF5, $04, nRst, nEb5, nG5, $08, nBb5, $04, nC6
	dc.b	$08, nD6, $04, nEb6, $08, nF6, $04, smpsNoAttack, $04, nRst, nG6, nRst
	dc.b	$18, nEb5, $08, nEb6, $04, nD5, $08, nD6, $04, nC5, $08, nC6
	dc.b	$04, nG4, $08, nG5, $04, nBb5, $08, nRst, $04, nRst, $08, nC6
	dc.b	$04, nRst, $48
	smpsLoop            $00, $02, CrystalNightmare_Loop08
	dc.b	nEb5, $0C, smpsNoAttack, $04, nRst, nFs5, $04, nRst, $0C, nEb5, $0C, smpsNoAttack
	dc.b	$04, nRst, nFs5, $04, nRst, $0C, nG5, $06, nRst, nFs5, $06, nRst
	smpsFMAlterVol      $07
	dc.b	nC5, $18
	smpsFMAlterVol      $FF
	dc.b	nEb5
	smpsFMAlterVol      $FF
	dc.b	nF5
	smpsFMAlterVol      $FF
	dc.b	nFs5
	smpsFMAlterVol      $FF
	dc.b	nG5
	smpsFMAlterVol      $FF
	dc.b	nBb5
	smpsFMAlterVol      $FF
	dc.b	nC6
	smpsFMAlterVol      $FF
	dc.b	nEb6, nE6, $60, smpsNoAttack, $30, smpsNoAttack, $12, nRst, $06, nFs6, $04, nFs6
	dc.b	$04, nFs6, $04, nFs6, $0C, nC6, $60, smpsNoAttack, $60, smpsNoAttack, $18, smpsNoAttack
	smpsFMAlterVol      $01
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $01
	dc.b	$18, nRst, $18
	smpsFMAlterVol      $FE
	smpsJump            CrystalNightmare_Loop08

; FM5 Data
CrystalNightmare_FM5:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $03, $05
	dc.b	nRst, $09
	smpsCall            CrystalNightmare_Call00

; FM6 Data
CrystalNightmare_FM6:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsCall            CrystalNightmare_Call00

; PSG1 Data
CrystalNightmare_PSG1:
	smpsCall            CrystalNightmare_Call01

CrystalNightmare_Call01:
	smpsPSGvoice        KCVolEnv_08
	dc.b	nEb5, $0C, smpsNoAttack, $04, nRst, nFs5, $04, nRst, $0C, nEb5, $0C, smpsNoAttack
	dc.b	$04, nRst, nFs5, $04, nRst, $0C
	smpsPSGvoice        KCVolEnv_0C
	dc.b	nG5, $06, nRst, nFs5, $06, nRst, nRst, $0C, nF4, $08, nBb4, $04
	dc.b	nC5, $08, nEb5, $04, nRst, $08, nF5, $04, smpsNoAttack, $08, nFs5, $04
	dc.b	nF5, $08, nEb5, $04, nF5, $08, nEb5, $04, nD5, $08, nEb5, $04
	dc.b	nD5, $08, nC5, $04, nBb4, $08, nG4, $04, nRst, $48, nRst, $0C
	dc.b	nF4, $08, nBb4, $04, nC5, $08, nEb5, $04, nRst, $08, nF5, $04
	dc.b	smpsNoAttack, $08, nFs5, $04, nF5, $08, nEb5, $04, nF5, $08, nEb5, $04
	dc.b	nD5, $08, nEb5, $04, nD5, $08, nC5, $04, nBb4, $08, nBb5, $04
	dc.b	nRst, $48, nRst, $08, nC5, $04, nC6, $08, nRst, $04, nBb5, $06
	dc.b	nRst, nG5, nRst, nF5, $08, nFs5, $04, nF5, $08, nEb5, $04, nG5
	dc.b	$08, nBb5, $04, nC6, $08, nD6, $04, nEb6, $08, nF6, $04, nRst
	dc.b	$08, nG6, $04, nRst, $18, nEb5, $08, nEb6, $04, nD5, $08, nD6
	dc.b	$04, nC5, $08, nC6, $04, nG4, $08, nG5, $04, nBb5, $08, smpsNoAttack
	dc.b	$04, nRst, $08, nC6, $04, nRst, $48
	smpsLoop            $00, $02, CrystalNightmare_Call01
	smpsPSGvoice        KCVolEnv_08
	dc.b	nEb5, $0C, smpsNoAttack, $04, nRst, nFs5, $04, nRst, $0C, nEb5, $0C, smpsNoAttack
	dc.b	$04, nRst, nFs5, $04, nRst, $0C, nG5, $06, nRst, nFs5, $06, nRst
	smpsPSGAlterVol     $03
	dc.b	nC5, $18, nEb5
	smpsPSGAlterVol     $FF
	dc.b	nF5, nFs5
	smpsPSGAlterVol     $FF
	dc.b	nG5, nBb5
	smpsPSGAlterVol     $FF
	dc.b	nC6, nEb6, nE6, $60, smpsNoAttack, $30, smpsNoAttack, $12, nRst, $06, nFs6, $04
	dc.b	nFs6, $04, nFs6, $04, nFs6, $0C, nC6, $60, smpsNoAttack, $18, smpsNoAttack, $18
	dc.b	smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack
	smpsPSGAlterVol     $01
	dc.b	$18, smpsNoAttack, $18, nRst
	smpsPSGAlterVol     $FF
	smpsJump            CrystalNightmare_Call01

; PSG2 Data
CrystalNightmare_PSG2:
	smpsCall            CrystalNightmare_Call01

; PSG3 Data
CrystalNightmare_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        KCVolEnv_02
	dc.b	nRst, $60

CrystalNightmare_Jump02:
	dc.b	(nMaxPSG2-$23)&$FF, $04, nRst, $08
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG2-$23)&$FF, $04, nRst, (nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FE
	smpsJump            CrystalNightmare_Jump02

; PWM1 Data
CrystalNightmare_PWM1:
	dc.b	pwmSilence, $30, pwmAcousticKick, $04, nRst, $04, nRst, $04, nRst, $0C, pwmAcousticKick, $04
	dc.b	nRst, pwmAcousticSnare, pwmAcousticSnare, $08, $04

CrystalNightmare_Loop06:
	dc.b	pwmAcousticKick, $06, nRst, $06, pwmAcousticKick, $06, nRst, $06, nRst, $0C, nRst, $08
	dc.b	pwmAcousticKick, $04, nRst, $18, nRst, $08, pwmAcousticKick, $04, nRst, $0C
	smpsLoop            $00, $06, CrystalNightmare_Loop06
	dc.b	pwmAcousticKick, $06, nRst, $06, pwmAcousticKick, $06, nRst, $06, nRst, $0C, nRst, $08
	dc.b	pwmAcousticKick, $04, nRst, $18, nRst, $08, pwmAcousticKick, $04, pwmAcousticSnare, $03, nRst, $09
	dc.b	pwmAcousticKick, $06, nRst, $06, pwmAcousticKick, $06, nRst, $06, pwmAcousticKick, $06, nRst, $06
	dc.b	pwmAcousticKick, $06, nRst, $06, pwmAcousticKick, $06, nRst, $06, pwmAcousticKick, $06, nRst, $06
	dc.b	pwmAcousticKick, $04, nRst, pwmAcousticSnare, pwmAcousticSnare, $08, pwmAcousticSnare, $04
	smpsLoop            $01, $02, CrystalNightmare_Loop06
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60

CrystalNightmare_Loop07:
	dc.b	pwmAcousticKick, $06, nRst, $06, pwmAcousticKick, $06, nRst, $06, nRst, $0C, nRst, $08
	dc.b	pwmAcousticKick, $04, nRst, $18, nRst, $08, pwmAcousticKick, $04, nRst, $0C
	smpsLoop            $00, $03, CrystalNightmare_Loop07
	smpsJump            CrystalNightmare_PWM1

; PWM2 Data
CrystalNightmare_PWM2:
	dc.b	pwmSilence, $30, pwmSilence, $0C, pwmLowTom, $08, $04, nRst, $18

CrystalNightmare_Loop04:
	dc.b	nRst, $18, nRst, $08, pwmLowTom, $04, nRst, $0C, pwmLowTom, $06, nRst, $06
	dc.b	nRst, $08, pwmLowTom, $04, nRst, $18
	smpsLoop            $00, $07, CrystalNightmare_Loop04
	dc.b	nRst, $30, nRst, $0C, pwmLowTom, $08, $04, nRst, $18
	smpsLoop            $01, $02, CrystalNightmare_Loop04
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60

CrystalNightmare_Loop05:
	dc.b	nRst, $18, nRst, $08, pwmLowTom, $04, nRst, $0C, pwmLowTom, $06, nRst, $06
	dc.b	nRst, $08, pwmLowTom, $04, nRst, $18
	smpsLoop            $00, $03, CrystalNightmare_Loop05
	smpsJump            CrystalNightmare_PWM2

; PWM3 Data
CrystalNightmare_PWM3:
	dc.b	pwmSilence, $30, nRst, $08, pwmLowTom, $04, smpsNoAttack, $03, nRst, $09, nRst, $18

CrystalNightmare_Loop02:
	dc.b	nRst, $30, $24, nRst, $08, pwmLowTom, $04
	smpsLoop            $00, $06, CrystalNightmare_Loop02
	dc.b	nRst, $60, pwmSilence, $30, nRst, $08, pwmLowTom, $04, smpsNoAttack, $03, nRst, $09
	dc.b	nRst, $18
	smpsLoop            $01, $02, CrystalNightmare_Loop02
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60

CrystalNightmare_Loop03:
	dc.b	nRst, $30, $24, nRst, $08, pwmLowTom, $04
	smpsLoop            $00, $03, CrystalNightmare_Loop03
	smpsJump            CrystalNightmare_PWM3

; PWM4 Data
CrystalNightmare_PWM4:
	dc.b	pwmSilence, $60

CrystalNightmare_Loop00:
	dc.b	pwmSilence, $18, pwmLowTom, $03, nRst, $09, pwmLowTom, $0C, nRst, $0C, pwmLowTom, $03
	dc.b	nRst, $09, nRst, $0C, pwmLowTom, $03, nRst, $09
	smpsLoop            $00, $07, CrystalNightmare_Loop00
	dc.b	nRst, $60
	smpsLoop            $01, $02, CrystalNightmare_Loop00
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60

CrystalNightmare_Loop01:
	dc.b	pwmSilence, $18, pwmLowTom, $03, nRst, $09, pwmLowTom, $0C, nRst, $0C, pwmLowTom, $03
	dc.b	nRst, $09, nRst, $0C, pwmLowTom, $03, nRst, $09
	smpsLoop            $00, $03, CrystalNightmare_Loop01
	smpsJump            CrystalNightmare_PWM4

CrystalNightmare_Voices:
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
;	$01, $02, $01, $01, 	$14, $14, $17, $14, 	$0A, $0C, $03, $07
;	$02, $08, $08, $03, 	$07, $E9, $A8, $18, 	$1C, $2B, $28, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $17, $14, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $03, $0C, $0A
	smpsVcDecayRate2    $03, $08, $08, $02
	smpsVcDecayLevel    $01, $0A, $0E, $00
	smpsVcReleaseRate   $08, $08, $09, $07
	smpsVcTotalLevel    $00, $28, $2B, $1C

;	Voice $02
;	$07
;	$78, $06, $72, $31, 	$9F, $DF, $5F, $DF, 	$0A, $0A, $00, $00
;	$00, $00, $00, $00, 	$17, $17, $07, $07, 	$88, $8A, $80, $83
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $00, $07
	smpsVcCoarseFreq    $01, $02, $06, $08
	smpsVcRateScale     $03, $01, $03, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $0A, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $01, $01
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $03, $00, $0A, $08

;	Voice $03
;	$2C
;	$72, $71, $32, $31, 	$1F, $16, $1F, $16, 	$0A, $0C, $0A, $0C
;	$00, $00, $00, $00, 	$F5, $F7, $F5, $F7, 	$23, $81, $23, $81
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $02, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $16, $1F, $16, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0A, $0C, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $07, $05, $07, $05
	smpsVcTotalLevel    $01, $23, $01, $23

