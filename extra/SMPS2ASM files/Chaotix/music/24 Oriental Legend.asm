OrientalLegend_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     OrientalLegend_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       OrientalLegend_DAC
	smpsHeaderFM        OrientalLegend_FM1,	$00, $09
	smpsHeaderFM        OrientalLegend_FM2,	$00, $0D
	smpsHeaderFM        OrientalLegend_FM3,	$FA, $11
	smpsHeaderFM        OrientalLegend_FM4,	$0C, $1B
	smpsHeaderFM        OrientalLegend_FM5,	$F4, $13
	smpsHeaderFM        OrientalLegend_FM6,	$00, $16
	smpsHeaderPSG       OrientalLegend_PSG1,	$E8, $02, $00, $00
	smpsHeaderPSG       OrientalLegend_PSG2,	$E2, $03, $00, $00
	smpsHeaderPSG       OrientalLegend_PSG3,	$23, $02, $00, $00
	smpsHeaderPWM       OrientalLegend_PWM1,	$00, $CC
	smpsHeaderPWM       OrientalLegend_PWM2,	$00, $AA
	smpsHeaderPWM       OrientalLegend_PWM3,	$00, $AA
	smpsHeaderPWM       OrientalLegend_PWM4,	$00, $77

; Dummy DAC data
OrientalLegend_DAC:
	smpsStop

; FM1 Data
OrientalLegend_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00

OrientalLegend_Loop0B:
	smpsFMAlterVol      $FA
	dc.b	nG2, $0C
	smpsFMAlterVol      $06
	dc.b	nG2, $06, nRst, nG2, nRst, nG2, nRst, nG2, nRst, nG2, nRst, nG2
	dc.b	nRst, nG2, nRst, nG2, $06, nRst, nG2, nRst, nG2, nRst, nG2, nRst
	dc.b	nG2, nRst, nG2, nRst, nG2, nRst, nG2, nRst
	smpsChangeTransposition $01
	smpsLoop            $01, $04, OrientalLegend_Loop0B
	smpsChangeTransposition $FC

OrientalLegend_Jump06:
	smpsCall            OrientalLegend_Call02
	dc.b	nBb2, $60, smpsNoAttack, $30, nRst, $0C
	smpsFMAlterVol      $FB
	dc.b	nBb3, $0C
	smpsFMAlterVol      $05
	dc.b	nBb2, $18
	smpsCall            OrientalLegend_Call02
	dc.b	nBb2, $60
	smpsFMAlterVol      $05
	dc.b	nF2, $18
	smpsFMAlterVol      $FF
	dc.b	nG2
	smpsFMAlterVol      $FE
	dc.b	nAb2
	smpsFMAlterVol      $FE
	dc.b	nBb2
	smpsJump            OrientalLegend_Jump06

OrientalLegend_Call02:
	smpsFMAlterVol      $FC
	dc.b	nC3, $12
	smpsFMAlterVol      $04
	dc.b	$06, nRst, $48, nC3, $12, $06, nRst, $0C, nC3, $0C, nRst, $30
	smpsFMAlterVol      $FC
	dc.b	nC3, $12
	smpsFMAlterVol      $04
	dc.b	$06, nRst, $48, nC3, $12, $06, nRst, $36, nG2, $12
	smpsLoop            $00, $03, OrientalLegend_Call02
	dc.b	nAb2, $60, smpsNoAttack, $60
	smpsReturn

; FM2 Data
OrientalLegend_FM2:
	smpsSetvoice        $04
	smpsFMAlterVol      $FB

OrientalLegend_Loop0A:
	smpsPan             panCenter, $00
	dc.b	nG6, $18
	smpsPan             panLeft, $00
	smpsFMAlterVol      $02
	dc.b	nG6, $18, nRst, $30
	smpsFMAlterVol      $FE
	dc.b	nRst, $60
	smpsChangeTransposition $01
	smpsLoop            $00, $03, OrientalLegend_Loop0A
	smpsFMAlterVol      $05
	smpsPan             panCenter, $00
	dc.b	nG6, $18
	smpsPan             panLeft, $00
	dc.b	nG6, $18, nRst, $30
	smpsChangeTransposition $FD
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18
	smpsFMAlterVol      $05

OrientalLegend_Jump05:
	smpsCall            OrientalLegend_Call01
	smpsFMAlterVol      $F8
	dc.b	nF6, $03, nRst, nF6, $03, nRst
	smpsFMAlterVol      $0D
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $F3
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $0D
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $F3
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $0D
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $F3
	dc.b	nF6, $1E, nRst, $18
	smpsFMAlterVol      $08
	smpsCall            OrientalLegend_Call01
	smpsFMAlterVol      $FB
	dc.b	nF4, $12
	smpsFMAlterVol      $0F
	dc.b	nF4, $06
	smpsFMAlterVol      $F1
	dc.b	nG4, $12
	smpsFMAlterVol      $0F
	dc.b	nG4, $06
	smpsFMAlterVol      $F1
	dc.b	nAb4, $12
	smpsFMAlterVol      $0F
	dc.b	nAb4, $06
	smpsFMAlterVol      $F1
	dc.b	nBb4, $12
	smpsFMAlterVol      $0F
	dc.b	nBb4, $06
	smpsFMAlterVol      $F1
	smpsFMAlterVol      $05
	smpsJump            OrientalLegend_Jump05

OrientalLegend_Call01:
	smpsFMAlterVol      $FB
	dc.b	nC5, $06
	smpsFMAlterVol      $0F
	dc.b	nC5, $06
	smpsFMAlterVol      $F1
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	dc.b	nG4, $06, nRst, nEb4, $0C, nRst, $0C, nG4, $0C, nC5, $06, nRst
	dc.b	nB4, $0C, smpsNoAttack
	smpsFMAlterVol      $07
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, nRst, $48, nRst, $60
	smpsFMAlterVol      $05
	smpsFMAlterVol      $FB
	dc.b	nC5, $06
	smpsFMAlterVol      $0A
	dc.b	nC5, $06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	dc.b	nG4, $06, nRst, nEb4, $0C, nRst, $0C, nG4, $0C, nC5, $06, nRst
	dc.b	nG5, $0C, smpsNoAttack
	smpsFMAlterVol      $07
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, nRst, $48, nRst, $60
	smpsFMAlterVol      $05
	dc.b	nRst, $0C, nF4, nFs4, $06, nRst, nF4, nRst, nEb4, $0C, nC4, $06
	dc.b	nRst, nRst, $0C, nBb3, $0C, nC4, $0C, nEb4, $06, nRst, nRst, $0C
	dc.b	nF4, $0C, nRst, $06, nF4, $0C, nG4, $03, nRst, nBb4, $06, nRst
	dc.b	nG4, nRst, nC5, $0C, nG4, $03, nRst, nBb4, nRst, nRst, $06, nG4
	dc.b	$03, nRst, nC5, $0C, nG4, $03, nRst, nBb4, $06, nRst, nG4, $03
	dc.b	nRst, nC5, $0C, nG4, $03, nRst, nBb4, nRst, nRst, $06, nG4, $03
	dc.b	nRst, nC5, $0C, nG4, $03, nRst, nD5, $0C, nG4, $03, nRst, nEb5
	dc.b	$0C, nG4, $03, nRst, nF5, $06, nRst, nG4, $06, nG5, nRst, nBb5
	dc.b	$0C, nRst, $06
	smpsFMAlterVol      $FD
	dc.b	nC6, $06, smpsNoAttack, $48, smpsNoAttack
	smpsFMAlterVol      $03
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18
	smpsFMAlterVol      $09
	smpsFMAlterVol      $FD
	dc.b	nD6, $18, smpsNoAttack
	smpsFMAlterVol      $03
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FC
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FC
	dc.b	$18
	smpsFMAlterVol      $08
	smpsReturn

; FM3 Data
OrientalLegend_FM3:
	smpsSetvoice        $04
	smpsModSet          $01, $01, $06, $08
	dc.b	nRst, $0C
	smpsChangeTransposition $06
	smpsFMAlterVol      $03

OrientalLegend_Loop09:
	smpsPan             panCenter, $00
	dc.b	nG6, $18
	smpsPan             panRight, $00
	dc.b	nG6, $18, nRst, $30, nRst, $60
	smpsChangeTransposition $01
	smpsLoop            $01, $03, OrientalLegend_Loop09
	smpsFMAlterVol      $05
	smpsPan             panCenter, $00
	dc.b	nG6, $18
	smpsPan             panRight, $00
	dc.b	nG6, $18, nRst, $24
	smpsChangeTransposition $F7
	smpsModSet          $00, $00, $00, $00
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F8
	dc.b	nBb4, $18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18, smpsNoAttack
	smpsFMAlterVol      $FD
	dc.b	$18
	smpsFMAlterVol      $05
	smpsChangeTransposition $01
	smpsFMAlterVol      $0A

OrientalLegend_Jump04:
	smpsCall            OrientalLegend_Call01
	smpsFMAlterVol      $F8
	dc.b	nF6, $03, nRst, nF6, $03, nRst
	smpsFMAlterVol      $0D
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $F3
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $0D
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $F3
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $0D
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $F3
	dc.b	nF6, $1E, nRst, $18
	smpsFMAlterVol      $08
	smpsCall            OrientalLegend_Call01
	smpsFMAlterVol      $FB
	dc.b	nF4, $12
	smpsFMAlterVol      $0F
	dc.b	nF4, $06
	smpsFMAlterVol      $F1
	dc.b	nG4, $12
	smpsFMAlterVol      $0F
	dc.b	nG4, $06
	smpsFMAlterVol      $F1
	dc.b	nAb4, $12
	smpsFMAlterVol      $0F
	dc.b	nAb4, $06
	smpsFMAlterVol      $F1
	dc.b	nBb4, $12
	smpsFMAlterVol      $0F
	dc.b	nBb4, $06
	smpsFMAlterVol      $F1
	smpsFMAlterVol      $05
	smpsJump            OrientalLegend_Jump04

; FM4 Data
OrientalLegend_FM4:
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	smpsFMAlterVol      $03

OrientalLegend_Loop08:
	dc.b	nCs4, $60, smpsNoAttack, $60
	smpsChangeTransposition $01
	smpsLoop            $00, $04, OrientalLegend_Loop08
	smpsChangeTransposition $FC
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F9

OrientalLegend_Jump03:
	smpsCall            OrientalLegend_Call01
	dc.b	nF6, $03, nRst, nF6, $03, nRst
	smpsFMAlterVol      $0D
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $F3
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $0D
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $F3
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $0D
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $F3
	dc.b	nF6, $1E, nRst, $18
	smpsCall            OrientalLegend_Call01
	dc.b	nF4, $12
	smpsFMAlterVol      $0F
	dc.b	nF4, $06
	smpsFMAlterVol      $F1
	dc.b	nG4, $12
	smpsFMAlterVol      $0F
	dc.b	nG4, $06
	smpsFMAlterVol      $F1
	dc.b	nAb4, $12
	smpsFMAlterVol      $0F
	dc.b	nAb4, $06
	smpsFMAlterVol      $F1
	dc.b	nBb4, $12
	smpsFMAlterVol      $0F
	dc.b	nBb4, $06
	smpsFMAlterVol      $F1
	smpsJump            OrientalLegend_Jump03

; FM5 Data
OrientalLegend_FM5:
	smpsPan             panCenter, $00
	smpsSetvoice        $02

OrientalLegend_Loop07:
	dc.b	nG5, $60, smpsNoAttack, $60
	smpsChangeTransposition $01
	smpsLoop            $00, $04, OrientalLegend_Loop07
	smpsChangeTransposition $FC
	smpsChangeTransposition $0C
	smpsPan             panCenter, $00
	smpsFMAlterVol      $0A
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $0C

OrientalLegend_Jump02:
	smpsCall            OrientalLegend_Call01
	smpsFMAlterVol      $F8
	dc.b	nF6, $03, nRst, nF6, $03, nRst
	smpsFMAlterVol      $0D
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $F3
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $0D
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $F3
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $0D
	dc.b	nF6, $03, nRst
	smpsFMAlterVol      $F3
	dc.b	nF6, $1E, nRst, $18
	smpsFMAlterVol      $08
	smpsCall            OrientalLegend_Call01
	smpsFMAlterVol      $F8
	dc.b	nF4, $12
	smpsFMAlterVol      $0F
	dc.b	nF4, $06
	smpsFMAlterVol      $F1
	dc.b	nG4, $12
	smpsFMAlterVol      $0F
	dc.b	nG4, $06
	smpsFMAlterVol      $F1
	dc.b	nAb4, $12
	smpsFMAlterVol      $0F
	dc.b	nAb4, $06
	smpsFMAlterVol      $F1
	dc.b	nBb4, $12
	smpsFMAlterVol      $0F
	dc.b	nBb4, $06
	smpsFMAlterVol      $F1
	smpsFMAlterVol      $08
	smpsJump            OrientalLegend_Jump02

; FM6 Data
OrientalLegend_FM6:
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $0C

OrientalLegend_Loop06:
	dc.b	nG4, $08, nBb4, nCs5, nEb5, nFs5, nEb5, nCs5, nBb4, nG4, nBb4, nCs5
	dc.b	nEb5, nFs5, nEb5, nCs5, nBb4, nG4, nBb4, nCs5, nEb5, nFs5, nEb5, nCs5
	dc.b	nBb4
	smpsChangeTransposition $01
	smpsLoop            $01, $03, OrientalLegend_Loop06
	smpsChangeTransposition $FD
	dc.b	nBb4, nCs5, nE5, nFs5, nA5, nFs5, nE5, nCs5, nBb4, nCs5, nE5, nFs5
	dc.b	nA5, nFs5, nE5, nCs5, nBb4, $04, nRst, $09, nBb4, $06, nCs5, nE5
	dc.b	nFs5, nBb5, nCs6, nE6, nBb6

OrientalLegend_Jump01:
	smpsCall            OrientalLegend_Call00
	smpsJump            OrientalLegend_Jump01

; PSG1 Data
OrientalLegend_PSG1:
	smpsPSGvoice        KCVolEnv_0C
	smpsCall            OrientalLegend_Call03

OrientalLegend_Jump09:
	smpsCall            OrientalLegend_Call00
	smpsJump            OrientalLegend_Jump09

OrientalLegend_Call03:
	smpsPSGAlterVol     $FF
	dc.b	nG4, $08
	smpsPSGAlterVol     $01
	dc.b	nBb4, nCs5, nEb5, nFs5, nEb5, nCs5, nBb4, nG4, nBb4, nCs5, nEb5
	smpsPSGAlterVol     $FF
	dc.b	nFs5
	smpsPSGAlterVol     $01
	dc.b	nEb5, nCs5, nBb4, nG4, nBb4, nCs5, nEb5, nFs5, nEb5, nCs5, nBb4
	smpsChangeTransposition $01
	smpsLoop            $01, $03, OrientalLegend_Call03
	smpsChangeTransposition $FD
	smpsPSGAlterVol     $FF
	dc.b	nBb4
	smpsPSGAlterVol     $01
	dc.b	nCs5, nE5, nFs5, nA5, nFs5, nE5, nCs5, nBb4, nCs5, nE5, nFs5
	smpsPSGAlterVol     $FF
	dc.b	nA5
	smpsPSGAlterVol     $01
	dc.b	nFs5, nE5, nCs5, nBb4, nCs5, nBb4, $06, nCs5, nE5, nFs5, nBb5, nCs6
	dc.b	nE6, nBb6
	smpsReturn

OrientalLegend_Call00:
	smpsPSGAlterVol     $FE
	dc.b	nC4, $06
	smpsPSGAlterVol     $02
	dc.b	nC4, $0C, nF4, $06, nG4, nBb4, nC5, nEb5, nG5, $0C, nBb4, nC5
	dc.b	$18
	smpsPSGAlterVol     $FE
	dc.b	nC4, $06
	smpsPSGAlterVol     $02
	dc.b	nC4, $0C, nF4, $06, nG4, nBb4, nRst, nD5, nEb5, $0C, nA4, nBb4
	dc.b	$06, nE4, $12
	smpsLoop            $00, $07, OrientalLegend_Call00
	smpsPSGAlterVol     $FE
	dc.b	nC4, $06
	smpsPSGAlterVol     $02
	dc.b	nC4, $0C, nF4, $06, nG4, nBb4, nC5, nEb5, nG5, $0C, nBb4, nC5
	dc.b	$18
	smpsChangeTransposition $FE
	smpsPSGAlterVol     $FE
	dc.b	nC4, $06
	smpsPSGAlterVol     $02
	dc.b	nC4, $0C, nF4, $06, nG4, nBb4, nRst, nD5, nEb5, $0C, nA4, nBb4
	dc.b	$06, nE4, $12
	smpsChangeTransposition $02
	smpsLoop            $01, $02, OrientalLegend_Call00
	smpsReturn

; PSG2 Data
OrientalLegend_PSG2:
	smpsPSGvoice        KCVolEnv_0C
	smpsCall            OrientalLegend_Call03
	smpsChangeTransposition $01

OrientalLegend_Jump08:
	smpsCall            OrientalLegend_Call00
	smpsJump            OrientalLegend_Jump08

; PSG3 Data
OrientalLegend_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        KCVolEnv_02

OrientalLegend_Loop0C:
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGAlterVol     $04
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FE
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $0F, OrientalLegend_Loop0C
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGAlterVol     $03
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FE
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FD
	dc.b	(nMaxPSG2-$23)&$FF, $18
	smpsPSGAlterVol     $FF

OrientalLegend_Jump07:
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGAlterVol     $04
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FE
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FC
	smpsJump            OrientalLegend_Jump07

; PWM1 Data
OrientalLegend_PWM1:
	dc.b	pwmAcousticKick, $18, nRst, $3C, pwmAcousticKick, $0C, pwmAcousticKick, $18, pwmAcousticKick, nRst, $18, pwmAcousticKick
	dc.b	$18
	smpsLoop            $00, $04, OrientalLegend_PWM1

OrientalLegend_Loop04:
	dc.b	pwmAcousticKick, $12, $06, nRst, $18, pwmAcousticKick, $18, nRst, $0C, pwmAcousticKick, $0C, pwmAcousticKick
	dc.b	$12, $06, nRst, $06, pwmAcousticKick, $06, nRst, $24, pwmAcousticKick, $18, pwmAcousticKick, $12
	dc.b	$06, nRst, $0C, pwmAcousticKick, $0C, nRst, $12, pwmAcousticKick, $06, nRst, $18, pwmAcousticKick
	dc.b	$18, nRst, $0C, pwmAcousticKick, $0C, $18, $18
	smpsLoop            $00, $03, OrientalLegend_Loop04

OrientalLegend_Loop05:
	dc.b	pwmAcousticKick, $18, nRst, $12, pwmAcousticKick, $06, $0C, $0C, nRst, $18
	smpsLoop            $00, $04, OrientalLegend_Loop05
	smpsJump            OrientalLegend_Loop04

; PWM2 Data
OrientalLegend_PWM2:
	dc.b	pwmSilence, $60, pwmSilence, $3C, pwmAcousticSnare, $0C, nRst, $18
	smpsLoop            $00, $03, OrientalLegend_PWM2
	dc.b	nRst, $60, nRst, $30
	smpsFMAlterVol      $22
	dc.b	pwmAcousticSnare, $06
	smpsFMAlterVol      $BC
	dc.b	$0C
	smpsFMAlterVol      $11
	dc.b	$06
	smpsFMAlterVol      $22
	dc.b	$0C, $0C
	smpsFMAlterVol      $EF

OrientalLegend_Loop03:
	dc.b	nRst, $18, pwmAcousticSnare, $18, nRst, pwmAcousticSnare, $18
	smpsLoop            $00, $0C, OrientalLegend_Loop03
	dc.b	nRst, $60, nRst, $54, pwmAcousticSnare, $0C, nRst, $60, nRst, $30, pwmAcousticSnare, $06
	dc.b	$0C, $06, $0C, $0C
	smpsJump            OrientalLegend_Loop03

; PWM3 Data
OrientalLegend_PWM3:
	dc.b	pwmRideBell, $60, nRst, $60
	smpsLoop            $00, $03, OrientalLegend_PWM3
	dc.b	pwmRideBell, $60
	smpsFMAlterVol      $AB
	dc.b	pwmCrashCymbal, $18
	smpsFMAlterVol      $11
	dc.b	pwmCrashCymbal, $18
	smpsFMAlterVol      $11
	dc.b	pwmCrashCymbal, $18
	smpsFMAlterVol      $11
	dc.b	pwmCrashCymbal, $18
	smpsFMAlterVol      $22

OrientalLegend_Jump00:
	dc.b	pwmCrashCymbal, $60, nRst, $60, nRst, $60, nRst, $60
	smpsJump            OrientalLegend_Jump00

; PWM4 Data
OrientalLegend_PWM4:
	dc.b	nRst, $60
	smpsLoop            $00, $07, OrientalLegend_PWM4
	dc.b	nRst, $30
	smpsFMAlterVol      $FD
	dc.b	pwmHighClick, $06, $06, nRst, pwmHighClick, $06, $06, $06, $06, $06

OrientalLegend_Loop00:
	dc.b	pwmLowClick, $06, $06, nRst
	smpsFMAlterVol      $03
	smpsFMAlterVol      $CE
	smpsFMAlterVol      $DE
	dc.b	pwmLowBongo
	smpsFMAlterVol      $32
	smpsFMAlterVol      $22
	smpsFMAlterVol      $FD
	dc.b	pwmLowClick, $06, $06, nRst
	smpsFMAlterVol      $03
	smpsFMAlterVol      $CE
	smpsFMAlterVol      $DE
	dc.b	pwmLowBongo
	smpsFMAlterVol      $32
	smpsFMAlterVol      $22
	smpsFMAlterVol      $FD
	dc.b	pwmLowClick, $0C, $0C, $06, $06
	smpsFMAlterVol      $03
	smpsFMAlterVol      $CE
	smpsFMAlterVol      $DE
	dc.b	pwmLowBongo
	smpsFMAlterVol      $32
	smpsFMAlterVol      $22
	smpsFMAlterVol      $FD
	dc.b	pwmLowClick
	smpsLoop            $00, $0B, OrientalLegend_Loop00
	dc.b	pwmLowClick, $06, $06, nRst
	smpsFMAlterVol      $03
	smpsFMAlterVol      $CE
	smpsFMAlterVol      $DE
	dc.b	pwmLowBongo
	smpsFMAlterVol      $32
	smpsFMAlterVol      $22
	smpsFMAlterVol      $FD
	dc.b	pwmLowClick, $06, $06, nRst
	smpsFMAlterVol      $03
	smpsFMAlterVol      $CE
	smpsFMAlterVol      $DE
	dc.b	pwmLowBongo
	smpsFMAlterVol      $32
	smpsFMAlterVol      $22
	smpsFMAlterVol      $FD
	dc.b	pwmLowClick, $0C, $0C, $06, $06, $06, $06
	smpsFMAlterVol      $22

OrientalLegend_Loop02:
	dc.b	pwmHighClick, $04, $04, $04, $06, $06, $06, $06, $06, $06, $0C, $0C
	dc.b	$06, $06, $06, $06, nRst, $06, pwmHighClick, nRst, pwmHighClick, pwmHighClick, $06, $03
	dc.b	$03, $06, $06

OrientalLegend_Loop01:
	dc.b	nRst, $06, pwmLowClick
	smpsLoop            $00, $04, OrientalLegend_Loop01
	smpsLoop            $01, $02, OrientalLegend_Loop02
	smpsFMAlterVol      $DE
	smpsJump            OrientalLegend_Loop00

OrientalLegend_Voices:
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
;	$3D
;	$61, $34, $34, $72, 	$14, $0B, $0B, $0B, 	$08, $05, $05, $05
;	$00, $00, $00, $00, 	$12, $27, $27, $27, 	$19, $99, $99, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $03, $06
	smpsVcCoarseFreq    $02, $04, $04, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0B, $0B, $0B, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $08
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $02, $02, $01
	smpsVcReleaseRate   $07, $07, $07, $02
	smpsVcTotalLevel    $00, $19, $19, $19

;	Voice $03
;	$39
;	$02, $01, $02, $01, 	$5F, $5F, $1F, $1F, 	$00, $00, $00, $00
;	$00, $00, $0C, $0E, 	$0F, $0F, $0F, $0F, 	$1B, $32, $28, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $02
	smpsVcRateScale     $00, $00, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $0E, $0C, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $28, $32, $1B

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

