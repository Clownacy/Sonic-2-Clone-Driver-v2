MidnightGreenhouse_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     MidnightGreenhouse_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $48

	smpsHeaderDAC       MidnightGreenhouse_DAC
	smpsHeaderFM        MidnightGreenhouse_FM1,	$00, $0C
	smpsHeaderFM        MidnightGreenhouse_FM2,	$00, $10
	smpsHeaderFM        MidnightGreenhouse_FM3,	$00, $14
	smpsHeaderFM        MidnightGreenhouse_FM4,	$00, $14
	smpsHeaderFM        MidnightGreenhouse_FM5,	$F4, $15
	smpsHeaderFM        MidnightGreenhouse_FM6,	$00, $10
	smpsHeaderPSG       MidnightGreenhouse_PSG1,	$DC, $03, $00, $00
	smpsHeaderPSG       MidnightGreenhouse_PSG2,	$DC, $02, $00, $00
	smpsHeaderPSG       MidnightGreenhouse_PSG3,	$23, $02, $00, $00
	smpsHeaderPWM       MidnightGreenhouse_PWM1,	$00, $CC
	smpsHeaderPWM       MidnightGreenhouse_PWM2,	$00, $BB
	smpsHeaderPWM       MidnightGreenhouse_PWM3,	$00, $BB
	smpsHeaderPWM       MidnightGreenhouse_PWM4,	$00, $66

; Dummy DAC data
MidnightGreenhouse_DAC:
	smpsStop

; FM1 Data
MidnightGreenhouse_FM1:
	smpsSetvoice        $00
	dc.b	nRst, $60, nRst, $2C, nE1, $0C, $04, nE2, $08, nE1, $04, nG1
	dc.b	$08, nG2, $04, nAb1, $08, nAb2, $04

MidnightGreenhouse_Jump07:
	smpsCall            MidnightGreenhouse_Call09
	dc.b	nRst, $08, nE1, $04, nF1, $08, nG1, $0C, nAb1, $04
	smpsCall            MidnightGreenhouse_Call09
	dc.b	nRst, $08, nE1, $04, nAb1, $08, nAb2, $0C, nE1, $04
	smpsCall            MidnightGreenhouse_Call09
	dc.b	nRst, $08, nE1, $04, nF1, $08, nG1, $0C, nAb1, $04
	smpsCall            MidnightGreenhouse_Call09
	dc.b	nRst, $08, nE1, $04, nAb1, $08, nAb2, $0C, nE2, $04, nD2, $18
	dc.b	nRst, $0C, nD2, $18, nC2, $0C, nRst, $08, nF1, $10, nG1, $18
	dc.b	nRst, $0C, nG1, $18, nF1, $0C, nRst, $08, nA1, $10, nE1, $18
	dc.b	nRst, $0C, nE1, $18, nG1, $0C, nRst, $08, nB1, $0C, nE1, $04
	dc.b	nA1, $18, nRst, $0C, nA1, $24, nRst, $08, nEb2, $10, nD2, $18
	dc.b	nRst, $0C, nD2, $18, nC2, $0C, nRst, $08, nF1, $10, nE1, $18
	dc.b	nRst, $0C, nE1, $18, nD1, $0C, nRst, $08, nG1, $10, nF1, $18
	dc.b	nRst, $0C, nF1, $18, nE1, $0C, nRst, $08, nF1, $0C, nF2, $04
	dc.b	nG1, $14, $24, $04, nG2, $0C, nAb1, $08, nAb2, $0C, nAb1, $04

MidnightGreenhouse_Loop0C:
	smpsCall            MidnightGreenhouse_Call09
	dc.b	nRst, $08, nE1, $04, nF1, $08, nG1, $0C, nAb1, $04
	smpsCall            MidnightGreenhouse_Call09
	dc.b	nRst, $08, nE1, $04, nAb1, $08, nAb2, $0C, nE1, $04
	smpsLoop            $00, $05, MidnightGreenhouse_Loop0C
	smpsJump            MidnightGreenhouse_Jump07

MidnightGreenhouse_Call09:
	dc.b	nRst, $08, nA1, $04, nRst, $08, nG1, $04, nA1, $0C, nG1, nF1
	dc.b	nRst, nRst, nF1, $08, nFs1, $04, nRst, $08, nG1, $04, nRst, $08
	dc.b	nF1, $04, nG1, $0C, nF1, nE1
	smpsReturn

; FM2 Data
MidnightGreenhouse_FM2:
	smpsSetvoice        $02
	smpsPan             panLeft, $00
	smpsDetune          $02
	smpsFMAlterVol      $0A
	smpsCall            MidnightGreenhouse_Call07
	smpsPan             panCenter, $00
	smpsDetune          $FE
	smpsFMAlterVol      $F6

MidnightGreenhouse_Jump06:
	smpsSetvoice        $03
	dc.b	nA4, $18, nB4, nC5, nG5, $14, nE5, $04
	smpsFMAlterVol      $0A
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	dc.b	nD5, $58, nRst, $18, nG4, $18, nA4, nC5, $14, nE5, $04
	smpsFMAlterVol      $0A
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	dc.b	nF5
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, nD5, smpsNoAttack, $48, nA4, $18, nB4, nC5, nG5, $14, nE5, $04
	smpsFMAlterVol      $0A
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	dc.b	nD5, $58, nRst, $18, nG5, $18, nA5, nE5, $14, nD5, $04, smpsNoAttack
	dc.b	$08, nCs5, $04, nC5, $08, nG5, $04, smpsNoAttack, $30
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $08
	smpsSetvoice        $01
	dc.b	nG4, $0C
	smpsFMAlterVol      $FB
	dc.b	nD5, $14, nC5, $04, nD5, $08, nRst, $04, nG5, $24, nRst, $0C
	dc.b	nG4, nD5, $14, nC5, $02, nCs5, nD5, $08, nRst, $04, nG5, $24
	dc.b	nRst, $0C, nG4, nD5, $14, nC5, $04, nD5, $08, nRst, $04, nFs5
	dc.b	$02, nG5, $16, nA5, $0C, nE5, $08, nD5, $0C, nEb5, $02, nE5
	dc.b	$02, smpsNoAttack, $14, nD5, $10, nCs5, $24, nRst, $18, nRst, $0C, nC5
	dc.b	$18, nA4, $08, nRst, $04, nB4, $02, nC5, $12, nD5, $04, nRst
	dc.b	$0C, nEb5, $02, nE5, $0A, smpsNoAttack, $0C, nF5, $08, nRst, $04, nE5
	dc.b	$08, nD5, $04, nRst, $08, nB4, $02, nC5, $0E, nD5, $0C, nRst
	dc.b	nG4, smpsNoAttack, $0C, nA4, $18, nC5, nD5, nE5, $08, nRst, $04, nFs5
	dc.b	$02, nG5, $12, nF5, $10, nE5, $0C, nC5, nRst, nD5, nRst, $08
	smpsSetvoice        $03
	dc.b	nB5, $04
	smpsFMAlterVol      $05
	smpsCall            MidnightGreenhouse_Call05
	dc.b	nRst, $08, nB5, $04
	smpsCall            MidnightGreenhouse_Call05
	dc.b	nRst, $0C
	smpsSetvoice        $01
	smpsFMAlterVol      $FB
	smpsPan             panLeft, $00
	dc.b	nA4, $60, nG4, nA4, nG4, $30, nRst
	smpsPan             panCenter, $00
	smpsSetvoice        $03
	smpsFMAlterVol      $05
	smpsJump            MidnightGreenhouse_Jump06

MidnightGreenhouse_Call05:
	smpsFMAlterVol      $0A
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	dc.b	nB5, $04, nC6, $08, nG5, $34, nRst, $14, nB5, $04
	smpsFMAlterVol      $0A
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	dc.b	nB5, $04, nC6, $08, nG5, $4C, nRst, $18, nG5, $18, nF5, nE5
	dc.b	$14, nF5, $04, smpsNoAttack, $08, nE5, $04, nF5, $08, nRst, $04, nG5
	dc.b	$08, nRst, $04, nAb5, $08, nRst, $04, nA5, $08, nRst, $04, nAb5
	dc.b	$08, nRst, $04, nA5, $08, nB5, $04, nRst, $08, nC5, $04, smpsNoAttack
	dc.b	$0C, nG5, nF5, nE5, $08, nF5, $0C, nE5, $04, nC5, $18, nRst
	dc.b	$08, nD5, $04, smpsNoAttack, $0C, nG5, nF5, $08, nG5, $04, nRst, $08
	dc.b	nAb5, $0C, nA5, $04, nB5, $0C, nC6, nE5, nD5, $14, nE5, $4C
	dc.b	nRst, $54
	smpsReturn

; FM3 Data
MidnightGreenhouse_FM3:
	smpsSetvoice        $02
	smpsFMAlterVol      $03
	smpsCall            MidnightGreenhouse_Call07
	smpsFMAlterVol      $FB

MidnightGreenhouse_Jump05:
	smpsPan             panLeft, $00
	smpsCall            MidnightGreenhouse_Call08
	smpsCall            MidnightGreenhouse_Call08
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	smpsFMAlterVol      $04
	dc.b	nRst, $38, nG4, $04, nA4, $08, nC5, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD5
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD5
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $34, nG5, $04, nF5, $08, nE5, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nB4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nB4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $14, nRst, $44, nCs5, $04, smpsNoAttack, $14, nB4, $10, nA4, $24
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nFs4, $10
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nA4
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA4, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG4, $14, nA4, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $14, nRst, $0C, nB4, $08
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nB4, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA4, $10, nB4, $08
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $18, nRst, $0C, nC5, $08
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nC5, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD5, $28, nC5, $08
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE5, $14, nD5, $1C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nD5, $08
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nD5, $10
	smpsFMAlterVol      $FC

MidnightGreenhouse_Loop0B:
	smpsSetvoice        $02
	smpsPan             panLeft, $00
	smpsCall            MidnightGreenhouse_Call08
	dc.b	nA4, $18, nB4, nC5, $14, nD5, $04, nRst, $0C, nG5, smpsNoAttack, $08
	dc.b	nRst, $04, nG5, $08, nRst, $04, nF5, $08, nE5, $04, nRst, $08
	dc.b	nD5, $34
	smpsCall            MidnightGreenhouse_Call07
	smpsLoop            $00, $02, MidnightGreenhouse_Loop0B
	smpsSetvoice        $01
	smpsFMAlterVol      $FD
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nC5, $58, nRst, $08, nB4, $58, nRst, $08, nC5, $58
	dc.b	nRst, $08, nB4, $28, nRst, $30
	smpsSetvoice        $02
	smpsFMAlterVol      $03
	smpsJump            MidnightGreenhouse_Jump05

MidnightGreenhouse_Call07:
	dc.b	nRst, $08, nG4, $04, nAb4, $08, nA4, $04, nC5, $08, nA4, $04
	dc.b	nC5, $08, nD5, $04, nE5, $04, nEb5, nD5, nC5, $08, nG4, $04
	dc.b	nA4, $08, nC5, $04, nD5, $08, nE5, $04, nG5, $04, nFs5, nF5
	dc.b	nD5, $0C, nRst, $04, nRst, nD5, nRst, nRst, nE5, nRst, nRst, nG5
	dc.b	nRst, nRst, nAb5, nRst, nRst, nAb5, nA5, $08, nB5, $04
	smpsReturn

MidnightGreenhouse_Call08:
	dc.b	nRst, $24, nC5, $04, nRst, $08, nB4, $14, nC5, $04, nRst, $18
	dc.b	nRst, $24, nB4, $04, nRst, $08, nE5, $14, nD5, $04, nRst, $18
	dc.b	nRst, $0C, nC5, $04, nRst, $08, nB4, $08, nC5, $04, nRst, $0C
	dc.b	nRst, $0C, nC5, $04, nRst, $08, nB4, $08, nC5, $04, nRst, $0C
	dc.b	nRst, $0C, nB4, $04, nRst, $08, nE5, $08, nD5, $04, nRst, $08
	dc.b	nE5, $04, nRst, $08, nE5, $04, nRst, $08, nD5, $1C
	smpsReturn

; FM4 Data
MidnightGreenhouse_FM4:
	smpsSetvoice        $02
	smpsFMAlterVol      $03
	smpsCall            MidnightGreenhouse_Call04
	smpsFMAlterVol      $FB

MidnightGreenhouse_Jump04:
	smpsPan             panRight, $00
	smpsCall            MidnightGreenhouse_Call06
	smpsCall            MidnightGreenhouse_Call06
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	smpsFMAlterVol      $04
	dc.b	nRst, $38, nC4, $04, nD4, $08, nF4, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG4
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG4
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $34, nD5, $04, nC5, $08, nB4, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG4
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG4
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $14, nRst, $44, nA4, $04, smpsNoAttack, $14, nA4, $10, nG4, $24
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nEb4, $10
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nD4
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE4, $14, nD4, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $14, nRst, $0C, nE4, $08
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nE4, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE4, $10, nE4, $08
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $18, nRst, $0C, nF4, $08
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nF4, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE4, $28, nF4, $08
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA4, $14, nB4, $1C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nB4, $08
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $08, nB4, $10
	smpsFMAlterVol      $FC
	smpsSetvoice        $02
	smpsPan             panRight, $00

MidnightGreenhouse_Loop0A:
	smpsCall            MidnightGreenhouse_Call06
	dc.b	nE4, $18, nG4, nA4, $14, $04, nRst, $0C, nD5, smpsNoAttack, $08, nRst
	dc.b	$04, nD5, $08, nRst, $04, nC5, $08, nB4, $04, nRst, $08, nAb4
	dc.b	$34
	smpsCall            MidnightGreenhouse_Call04
	smpsLoop            $00, $02, MidnightGreenhouse_Loop0A
	smpsSetvoice        $01
	smpsFMAlterVol      $FD
	smpsPan             panCenter, $00
	dc.b	nRst, $0C, nE5, $54, nRst, $0C, nD5, $54, nRst, $0C, nE5, $54
	dc.b	nRst, $0C, nD5, $24, nRst, $30
	smpsSetvoice        $02
	smpsFMAlterVol      $03
	smpsJump            MidnightGreenhouse_Jump04

MidnightGreenhouse_Call04:
	dc.b	nRst, $08, nD4, $04, nEb4, $08, nE4, $04, nG4, $08, nE4, $04
	dc.b	nG4, $08, nA4, $04, nC5, $04, nB4, nBb4, nA4, $08, nC4, $04
	dc.b	nD4, $08, nE4, $04, nG4, $08, nA4, $04, nC5, $04, nB4, nBb4
	dc.b	nG4, $0C, nRst, $04, nRst, nG4, nRst, nRst, nA4, nRst, nRst, nC5
	dc.b	nRst, nRst, nD5, nRst, nRst, nE5, nF5, $08, nAb5, $04
	smpsReturn

MidnightGreenhouse_Call06:
	dc.b	nRst, $24, nA4, $04, nRst, $08, nG4, $14, nA4, $04, nRst, $18
	dc.b	nRst, $24, nG4, $04, nRst, $08, nC5, $14, nB4, $04, nRst, $18
	dc.b	nRst, $0C, nA4, $04, nRst, $08, nG4, $08, nA4, $04, nRst, $0C
	dc.b	nRst, $0C, nA4, $04, nRst, $08, nG4, $08, nA4, $04, nRst, $0C
	dc.b	nRst, $0C, nG4, $04, nRst, $08, nC5, $08, nB4, $04, nRst, $08
	dc.b	nB4, $04, nRst, $08, nB4, $04, nRst, $08, nAb4, $1C
	smpsReturn

; FM5 Data
MidnightGreenhouse_FM5:
	smpsSetvoice        $05
	dc.b	nRst, $60, nRst
	smpsModSet          $03, $01, $01, $03

MidnightGreenhouse_Loop08:
	dc.b	nE5, $60, nD5
	smpsLoop            $00, $04, MidnightGreenhouse_Loop08
	smpsSetvoice        $01
	smpsFMAlterVol      $FC
	smpsModSet          $00, $00, $00, $00
	dc.b	nC5, $18
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nF5, $30
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nD5, $18
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nG5, $30
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nD5, $18
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nG5, $30
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nE5, $48
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nB4, $10, nC5, $18
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nF5, $30
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nD5, $18
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nG5, $30
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nC5, $18
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nE5, $30
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst, $08
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nC5, $0C
	smpsFMAlterVol      $0F
	smpsPan             panRight, $00
	dc.b	$04, nRst
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	dc.b	nB4, $4C
	smpsFMAlterVol      $04

MidnightGreenhouse_Loop09:
	smpsSetvoice        $05
	smpsModSet          $03, $01, $01, $03
	dc.b	nE5, $60, nD5
	smpsLoop            $00, $08, MidnightGreenhouse_Loop09
	dc.b	nE5, $60, nD5, nE5, nD5, $38, nRst, $28
	smpsJump            MidnightGreenhouse_Loop08

; FM6 Data
MidnightGreenhouse_FM6:
	smpsSetvoice        $02
	smpsPan             panRight, $00
	smpsDetune          $02
	smpsFMAlterVol      $0A
	smpsCall            MidnightGreenhouse_Call04
	smpsPan             panCenter, $00
	smpsDetune          $FE
	smpsFMAlterVol      $F6

MidnightGreenhouse_Jump03:
	smpsSetvoice        $03
	smpsModSet          $05, $01, $03, $04
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nRst, $0C, nA4, $18, nB4, nC5, nG5, $14, nE5, $04
	smpsFMAlterVol      $0A
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	dc.b	nD5, $58
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, $14, nG4, $18, nA4, nC5, $14, nE5, $04
	smpsFMAlterVol      $0A
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	dc.b	nF5
	smpsFMAlterVol      $0A
	dc.b	$04
	smpsFMAlterVol      $F6
	dc.b	nRst, nD5, smpsNoAttack, $48, nA4, $18, nB4, nC5, nG5, $14, nE5, $04
	smpsFMAlterVol      $0A
	dc.b	$04, nRst
	smpsFMAlterVol      $F6
	dc.b	nD5, $58
	smpsFMAlterVol      $0A
	dc.b	$04, nRst, $14
	smpsFMAlterVol      $F6
	dc.b	nG5, $18, nA5, nE5, $14, nD5, $04, smpsNoAttack, $08, nCs5, $04, nC5
	dc.b	$08, nG5, $04, smpsNoAttack, $30
	smpsSetvoice        $01
	smpsModSet          $00, $00, $00, $00
	smpsDetune          $02
	dc.b	nRst, $02, nG4, $0C, nD5, $14, nC5, $04, nD5, $08, nRst, $04
	dc.b	nG5, $24, nRst, $0C, nG4, nD5, $14, nC5, $02, nCs5, nD5, $08
	dc.b	nRst, $04, nG5, $24, nRst, $0C, nG4, nD5, $14, nC5, $04, nD5
	dc.b	$08, nRst, $04, nFs5, $02, nG5, $16, nA5, $0C, nE5, $08, nD5
	dc.b	$0C, nEb5, $02, nE5, $02, smpsNoAttack, $14, nD5, $10, nCs5, $24, nRst
	dc.b	$18, nRst, $0C, nC5, $18, nA4, $08, nRst, $04, nB4, $02, nC5
	dc.b	$12, nD5, $04, nRst, $0C, nEb5, $02, nE5, $0A, smpsNoAttack, $0C, nF5
	dc.b	$08, nRst, $04, nE5, $08, nD5, $04, nRst, $08, nB4, $02, nC5
	dc.b	$0E, nD5, $0C, nRst, nG4, smpsNoAttack, $0C, nA4, $18, nC5, nD5, nE5
	dc.b	$08, nRst, $04, nFs5, $02, nG5, $12, nF5, $10, nE5, $0C, nC5
	dc.b	nRst, nD5, nRst, $06
	smpsDetune          $FE
	smpsSetvoice        $03
	smpsModSet          $05, $01, $03, $04
	dc.b	nRst, $0C, nB5, $04
	smpsCall            MidnightGreenhouse_Call05
	dc.b	nRst, $08, nB5, $04
	smpsCall            MidnightGreenhouse_Call05
	smpsFMAlterVol      $F6
	smpsPan             panRight, $00
	smpsModSet          $00, $00, $00, $00
	smpsSetvoice        $01
	dc.b	nRst, $14, nA5, $4C, nRst, $14, nG5, $4C, nRst, $14, nA5, $4C
	dc.b	nRst, $14, nG5, $1C, nRst, $30
	smpsFMAlterVol      $05
	smpsJump            MidnightGreenhouse_Jump03

; PSG1 Data
MidnightGreenhouse_PSG1:
	smpsPSGvoice        KCVolEnv_04
	dc.b	nRst, $60, nRst
	smpsModSet          $03, $01, $01, $04

MidnightGreenhouse_Loop11:
	dc.b	nC5, $60, nB4
	smpsLoop            $00, $04, MidnightGreenhouse_Loop11
	smpsModSet          $00, $00, $00, $00
	smpsPSGvoice        KCVolEnv_06
	smpsPSGAlterVol     $FF
	dc.b	nA4, $18
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nC5, $30
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nB4, $18
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nD5, $30
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nB4, $18
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nD5, $30
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nCs5, $48
	smpsPSGAlterVol     $05
	dc.b	$04, nRst
	smpsPSGAlterVol     $FB
	dc.b	nFs4, $10, nA4, $18
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nC5, $30
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nB4, $18
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nD5, $30
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nA4, $18
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nC5, $30
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nA4, $0C
	smpsPSGAlterVol     $05
	dc.b	$04, nRst
	smpsPSGAlterVol     $FB
	dc.b	nG4, $4C
	smpsModSet          $03, $01, $01, $04
	smpsPSGAlterVol     $01

MidnightGreenhouse_Loop12:
	smpsPSGvoice        KCVolEnv_04
	dc.b	nC5, $60, nB4
	smpsLoop            $00, $08, MidnightGreenhouse_Loop12
	dc.b	nC5, $60, nB4, nC5, $60, nB4, $38, nRst, $28
	smpsJump            MidnightGreenhouse_Loop11

; PSG2 Data
MidnightGreenhouse_PSG2:
	smpsPSGvoice        KCVolEnv_04
	dc.b	nRst, $60, nRst
	smpsModSet          $03, $01, $01, $04

MidnightGreenhouse_Loop0F:
	dc.b	nG4, $30, nA4, nF4, nAb4
	smpsLoop            $00, $04, MidnightGreenhouse_Loop0F
	smpsPSGvoice        KCVolEnv_06
	smpsModSet          $00, $00, $00, $00
	smpsPSGAlterVol     $FF
	dc.b	nF4, $18
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nA4, $30
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nF4, $18
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nB4, $30
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nG4, $18
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nB4, $30
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nG4, $48
	smpsPSGAlterVol     $05
	dc.b	$04, nRst
	smpsPSGAlterVol     $FB
	dc.b	nCs4, $10, nF4, $18
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nA4, $30
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nG4, $18
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nB4, $30
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nE4, $18
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nA4, $30
	smpsPSGAlterVol     $05
	dc.b	$04, nRst, $08
	smpsPSGAlterVol     $FB
	dc.b	nE4, $0C
	smpsPSGAlterVol     $05
	dc.b	$04, nRst
	smpsPSGAlterVol     $FB
	dc.b	nD4, $4C
	smpsModSet          $03, $01, $01, $04
	smpsPSGAlterVol     $01

MidnightGreenhouse_Loop10:
	smpsPSGvoice        KCVolEnv_04
	dc.b	nG4, $30, nA4, nF4, nAb4
	smpsLoop            $00, $08, MidnightGreenhouse_Loop10
	dc.b	nG4, $30, nA4, nF4, nAb4, nG4, $30, nA4, nF4, nAb4, $08, nRst
	dc.b	$28
	smpsJump            MidnightGreenhouse_Loop0F

; PSG3 Data
MidnightGreenhouse_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $08, $04
	smpsPSGvoice        KCVolEnv_05
	dc.b	$08
	smpsPSGvoice        KCVolEnv_02
	dc.b	$04, nRst, $08, (nMaxPSG2-$23)&$FF, $04
	smpsPSGvoice        KCVolEnv_05
	dc.b	$08
	smpsPSGvoice        KCVolEnv_02
	dc.b	$04, nRst, $04, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        KCVolEnv_05
	dc.b	$08
	smpsPSGvoice        KCVolEnv_02
	dc.b	$04, $08, $04, $08, $04, $0C, $0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C

MidnightGreenhouse_Loop0D:
	smpsCall            MidnightGreenhouse_Call0A
	smpsLoop            $00, $04, MidnightGreenhouse_Loop0D
	smpsCall            MidnightGreenhouse_Call0B
	smpsCall            MidnightGreenhouse_Call0B
	smpsCall            MidnightGreenhouse_Call0B
	dc.b	nRst, $0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $0C, nRst, $0C, (nMaxPSG2-$23)&$FF, $0C, nRst, $0C
	smpsPSGvoice        KCVolEnv_05
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $0C
	smpsCall            MidnightGreenhouse_Call0B
	smpsCall            MidnightGreenhouse_Call0B
	smpsCall            MidnightGreenhouse_Call0B
	dc.b	nRst, $0C, (nMaxPSG2-$23)&$FF, nRst, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF

MidnightGreenhouse_Loop0E:
	smpsCall            MidnightGreenhouse_Call0A
	smpsLoop            $00, $08, MidnightGreenhouse_Loop0E
	smpsCall            MidnightGreenhouse_Call0A
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $0C, $0C, $0C, $08, $04
	smpsPSGvoice        KCVolEnv_05
	dc.b	$0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	$08, $04, $0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $0C, $0C, $0C, $0C, nRst, $24
	smpsJump            MidnightGreenhouse_Loop0D

MidnightGreenhouse_Call0A:
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $0C, $0C, $0C, $08, $04
	smpsPSGvoice        KCVolEnv_05
	dc.b	$0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	$08, $04, $0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $0C, $0C, $0C, $0C, $0C, $08, $04, $08, $04
	smpsReturn

MidnightGreenhouse_Call0B:
	dc.b	nRst, $0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $0C, nRst, $0C, (nMaxPSG2-$23)&$FF, $0C, nRst, $0C
	smpsPSGvoice        KCVolEnv_05
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $04, $04, $04
	smpsReturn

; PWM1 Data
MidnightGreenhouse_PWM1:
	dc.b	pwmElectricKick, $18, nRst, $14, pwmElectricKick, $04, nRst, $30, pwmElectricKick, $18, nRst, $14
	dc.b	pwmElectricKick, $04, nRst, $2C, pwmElectricKick, $04

MidnightGreenhouse_Jump02:
	smpsCall            MidnightGreenhouse_Call03
	smpsCall            MidnightGreenhouse_Call03

MidnightGreenhouse_Loop05:
	dc.b	pwmElectricKick, $14, $04, nRst, $0C, pwmElectricKick, nRst, $08, pwmElectricKick, $04, $08, nRst
	dc.b	$1C
	smpsLoop            $00, $07, MidnightGreenhouse_Loop05
	dc.b	pwmElectricKick, $14, $04, nRst, $0C, pwmElectricKick, nRst, $30

MidnightGreenhouse_Loop06:
	smpsCall            MidnightGreenhouse_Call03
	smpsLoop            $01, $04, MidnightGreenhouse_Loop06

MidnightGreenhouse_Loop07:
	dc.b	nRst, $08, pwmElectricKick, $04, nRst, $08, pwmElectricKick, $04, nRst, $0C, pwmElectricKick, $0C
	dc.b	$30
	smpsLoop            $00, $04, MidnightGreenhouse_Loop07
	smpsJump            MidnightGreenhouse_Jump02

MidnightGreenhouse_Call03:
	dc.b	nRst, $08, pwmElectricKick, $04, nRst, $08, pwmElectricKick, $04, nRst, $0C, pwmElectricKick, $0C
	dc.b	$30, nRst, $08, pwmElectricKick, $04, nRst, $08, pwmElectricKick, $04, nRst, $0C, pwmElectricKick
	dc.b	$0C, $14, $04, nRst, $18
	smpsLoop            $00, $02, MidnightGreenhouse_Call03
	smpsReturn

; PWM2 Data
MidnightGreenhouse_PWM2:
	dc.b	pwmSilence, $60, nRst, $08, pwmElectricSnare, $04, $08, nRst, $04, pwmElectricSnare, $08, $0C
	dc.b	$04, nRst, $08, pwmElectricSnare, $04, $08, $04, nRst, $08, pwmElectricSnare, $04
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom
	smpsFMAlterVol      $07
	dc.b	pwmMidTom
	smpsFMAlterVol      $90
	dc.b	pwmLowTom
	smpsFMAlterVol      $70

MidnightGreenhouse_Jump01:
	smpsCall            MidnightGreenhouse_Call02
	smpsCall            MidnightGreenhouse_Call02
	dc.b	nRst, $18, pwmElectricSnare, nRst, pwmElectricSnare, nRst, pwmElectricSnare, nRst, pwmElectricSnare, nRst, pwmElectricSnare, nRst
	dc.b	pwmElectricSnare, nRst, pwmElectricSnare, nRst, $08
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom, $04
	smpsFMAlterVol      $07
	dc.b	pwmMidTom, $08, nRst, $04, pwmElectricSnare, $18, nRst, $18, pwmElectricSnare, nRst, pwmElectricSnare, nRst
	dc.b	pwmElectricSnare, nRst, pwmElectricSnare, nRst, pwmElectricSnare, nRst, pwmElectricSnare, nRst, pwmElectricSnare, nRst, $08
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom, $04, nRst, $08, pwmHighTom, $04
	smpsFMAlterVol      $07
	dc.b	pwmMidTom, $08
	smpsFMAlterVol      $90
	dc.b	pwmLowTom, $04
	smpsFMAlterVol      $70
	dc.b	pwmElectricSnare, pwmElectricSnare, pwmElectricSnare

MidnightGreenhouse_Loop04:
	smpsCall            MidnightGreenhouse_Call02
	smpsLoop            $00, $05, MidnightGreenhouse_Loop04
	smpsJump            MidnightGreenhouse_Jump01

MidnightGreenhouse_Call02:
	dc.b	nRst, $18, pwmElectricSnare, nRst, pwmElectricSnare, nRst, pwmElectricSnare, nRst, pwmElectricSnare, $14, $04, nRst
	dc.b	$18, pwmElectricSnare, nRst, pwmElectricSnare, nRst, pwmElectricSnare, nRst, pwmElectricSnare, $08, $04
	smpsFMAlterVol      $90
	dc.b	pwmLowTom, $0C
	smpsFMAlterVol      $70
	smpsReturn

; PWM3 Data
MidnightGreenhouse_PWM3:
	dc.b	pwmSilence, $60
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $18, nRst, $14
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pwmSplashCymbal, $04, nRst, $30
	smpsFMAlterVol      $04

MidnightGreenhouse_Jump00:
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst, $50
	smpsFMAlterVol      $FC
	dc.b	pwmSplashCymbal, $10
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $60
	smpsFMAlterVol      $40
	dc.b	nRst
	smpsFMAlterVol      $FC
	dc.b	pwmSplashCymbal, $60
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $14
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pwmSplashCymbal, $04, nRst, $48
	smpsFMAlterVol      $04

MidnightGreenhouse_Loop03:
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal
	smpsFMAlterVol      $40
	dc.b	nRst
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pwmSplashCymbal
	smpsFMAlterVol      $04
	smpsLoop            $00, $02, MidnightGreenhouse_Loop03
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsJump            MidnightGreenhouse_Jump00

; PWM4 Data
MidnightGreenhouse_PWM4:
	dc.b	pwmSilence, $60, nRst, $0C, pwmElectricHiHat, nRst, pwmElectricHiHat, nRst, pwmElectricHiHat, nRst, pwmElectricHiHat, $04
	dc.b	$04, $04

MidnightGreenhouse_Loop00:
	smpsCall            MidnightGreenhouse_Call00
	smpsLoop            $01, $04, MidnightGreenhouse_Loop00

MidnightGreenhouse_Loop01:
	smpsCall            MidnightGreenhouse_Call00
	smpsLoop            $01, $04, MidnightGreenhouse_Loop01

MidnightGreenhouse_Loop02:
	smpsCall            MidnightGreenhouse_Call01
	smpsLoop            $00, $08, MidnightGreenhouse_Loop02
	smpsCall            MidnightGreenhouse_Call01
	dc.b	nRst, $0C, pwmElectricHiHat, nRst, pwmElectricHiHat
	smpsFMAlterVol      $FC
	dc.b	nRst, $0C, pwmHighClick, $08, $04, $08
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pwmLowClick, $04, nRst, $08
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pwmHighClick, $04
	smpsFMAlterVol      $04
	dc.b	nRst, $0C, pwmElectricHiHat, nRst, pwmElectricHiHat, pwmElectricHiHat, $30
	smpsJump            MidnightGreenhouse_Loop00

MidnightGreenhouse_Call00:
	dc.b	nRst, $0C, pwmElectricHiHat
	smpsLoop            $00, $07, MidnightGreenhouse_Call00
	dc.b	nRst, $0C, pwmElectricHiHat, $04, $04, $04
	smpsReturn

MidnightGreenhouse_Call01:
	dc.b	nRst, $0C, pwmElectricHiHat, nRst, pwmElectricHiHat
	smpsFMAlterVol      $FC
	dc.b	nRst, $0C, pwmHighClick, $08, $04, $08
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pwmLowClick, $04, nRst, $08
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pwmHighClick, $04
	smpsFMAlterVol      $04
	dc.b	nRst, $0C, pwmElectricHiHat, nRst, pwmElectricHiHat, nRst, $08
	smpsFMAlterVol      $C0
	dc.b	pwmLowClick, $04, $0C
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pwmHighClick, $0C
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pwmLowClick, $08
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pwmHighClick, $04
	smpsFMAlterVol      $04
	smpsReturn

MidnightGreenhouse_Voices:
;	Voice $00
;	$3B
;	$58, $31, $04, $02, 	$DF, $9F, $9F, $9F, 	$14, $08, $0E, $07
;	$10, $0E, $0F, $07, 	$6F, $7F, $3F, $8F, 	$05, $14, $18, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $05
	smpsVcCoarseFreq    $02, $04, $01, $08
	smpsVcRateScale     $02, $02, $02, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $0E, $08, $14
	smpsVcDecayRate2    $07, $0F, $0E, $10
	smpsVcDecayLevel    $08, $03, $07, $06
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $18, $14, $05

;	Voice $01
;	$84
;	$3F, $01, $01, $01, 	$1F, $1F, $5F, $5F, 	$0E, $0A, $09, $0A
;	$0F, $0B, $0A, $0A, 	$2F, $1F, $4F, $1F, 	$2C, $80, $12, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $02
	smpsVcDetune        $00, $00, $00, $03
	smpsVcCoarseFreq    $01, $01, $01, $0F
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $09, $0A, $0E
	smpsVcDecayRate2    $0A, $0A, $0B, $0F
	smpsVcDecayLevel    $01, $04, $01, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $12, $00, $2C

;	Voice $02
;	$1F
;	$66, $30, $53, $22, 	$1C, $9C, $1F, $1F, 	$12, $0F, $0F, $0F
;	$00, $00, $00, $00, 	$FF, $0F, $0F, $0F, 	$84, $80, $80, $87
	smpsVcAlgorithm     $07
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $05, $03, $06
	smpsVcCoarseFreq    $02, $03, $00, $06
	smpsVcRateScale     $00, $00, $02, $00
	smpsVcAttackRate    $1F, $1F, $1C, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0F, $0F, $12
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $07, $00, $00, $04

;	Voice $03
;	$2D
;	$77, $65, $05, $15, 	$1F, $5F, $5F, $5F, 	$00, $0C, $08, $03
;	$00, $11, $10, $0C, 	$0F, $4C, $4C, $1C, 	$22, $83, $82, $82
	smpsVcAlgorithm     $05
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $06, $07
	smpsVcCoarseFreq    $05, $05, $05, $07
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $08, $0C, $00
	smpsVcDecayRate2    $0C, $10, $11, $00
	smpsVcDecayLevel    $01, $04, $04, $00
	smpsVcReleaseRate   $0C, $0C, $0C, $0F
	smpsVcTotalLevel    $02, $02, $03, $22

;	Voice $04
;	$3D
;	$01, $01, $01, $01, 	$94, $19, $19, $19, 	$0F, $0D, $0D, $0D
;	$07, $04, $04, $04, 	$25, $1A, $1A, $1A, 	$14, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0D, $0F
	smpsVcDecayRate2    $04, $04, $04, $07
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $00, $00, $00, $14

;	Voice $05
;	$06
;	$03, $02, $01, $03, 	$1F, $0A, $0A, $0D, 	$08, $08, $08, $08
;	$01, $01, $00, $00, 	$3F, $2F, $1F, $1F, 	$20, $84, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $03, $01, $02, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0D, $0A, $0A, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $08, $08, $08
	smpsVcDecayRate2    $00, $00, $01, $01
	smpsVcDecayLevel    $01, $01, $02, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $04, $20

