Seascape_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Seascape_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $33

	smpsHeaderDAC       Seascape_DAC
	smpsHeaderFM        Seascape_FM1,	$00, $0B
	smpsHeaderFM        Seascape_FM2,	$00, $0C
	smpsHeaderFM        Seascape_FM3,	$00, $0C
	smpsHeaderFM        Seascape_FM4,	$00, $0C
	smpsHeaderFM        Seascape_FM5,	$00, $0C
	smpsHeaderFM        Seascape_FM6,	$00, $12
	smpsHeaderPSG       Seascape_PSG1,	$F4, $04, $00, KCVolEnv_0C
	smpsHeaderPSG       Seascape_PSG2,	$F4, $03, $00, KCVolEnv_0C
	smpsHeaderPSG       Seascape_PSG3,	$23, $02, $00, KCVolEnv_02
	smpsHeaderPWM       Seascape_PWM1,	$00, $BB
	smpsHeaderPWM       Seascape_PWM2,	$00, $BB
	smpsHeaderPWM       Seascape_PWM3,	$00, $BB
	smpsHeaderPWM       Seascape_PWM4,	$00, $53

; Dummy DAC data
Seascape_DAC:
	smpsStop

; FM1 Data
Seascape_FM1:
	dc.b	nRst, $24
	smpsSetvoice        $00

Seascape_Loop0A:
	smpsCall            Seascape_Call08
	dc.b	nBb1, $12, $06, nRst, nBb2, nRst, $0C, nBb1, $18, nC2, $0C, nD2
	smpsCall            Seascape_Call08
	dc.b	nBb1, $18, nC2, nD2, nA1
	smpsLoop            $00, $02, Seascape_Loop0A
	smpsCall            Seascape_Call09
	dc.b	nD2, $24, nRst, $06, nD3, nD2, $18, nA1
	smpsCall            Seascape_Call09
	dc.b	nEb1, $24, nRst, $06, nEb2, nEb1, $18, nF1, nG1, $60, smpsNoAttack, $0C
	dc.b	nG1, $0C, nA1, nBb1, nC2, $12, nD2, nF1, $0C, nG1, $54, nRst
	dc.b	$06, nG1, nRst, nF1, nRst, nG1, nRst, nA1, nRst, nBb1, nRst, $24
	dc.b	nG1, $0C
	smpsJump            Seascape_Loop0A

Seascape_Call08:
	dc.b	nEb2, $12, $06, nRst, nEb3, nRst, $0C, nD2, $30, nG1, $12, $06
	dc.b	nRst, nG2, nRst, $0C, nF1, $18, nBb1, nEb2, $12, $06, nRst, nEb3
	dc.b	nRst, $0C, nF1, $18, nF1
	smpsReturn

Seascape_Call09:
	dc.b	nG1, $24, nRst, $06, nG2, nG1, $18, nF1, nEb1, $24, nRst, $06
	dc.b	nEb2, nEb1, $18, nEb2, nD2, $24, nRst, $06, nD3, nD2, $18, nA1
	dc.b	nG1, $24, nRst, $06, nG2, nG1, $18, nCs2, nC2, $24, nRst, $06
	dc.b	nC3, nC2, $18, nG1, nF1, $24, nRst, $06, nF2, nF1, $18, nC2
	dc.b	nBb1, $24, nRst, $06, nBb2, nBb1, $18, nC2
	smpsReturn

; FM2 Data
Seascape_FM2:
	smpsSetvoice        $01
	dc.b	nRst, $24

Seascape_Jump01:
	smpsCall            Seascape_Call01
	dc.b	nBb3, $24, nF4, $3C, nRst, $0C, nF3, nG3, nA3, $06, nRst, nBb3
	dc.b	$0C, nA3, $06, nRst, nBb3, $0C, nC4, $06, nRst
	smpsCall            Seascape_Call01
	dc.b	nBb3, $24, nF4, $18, nEb4, $06, nRst, nD4, nC4, nRst, nCs4, $02
	dc.b	nD4, $04, smpsNoAttack, $30, nRst, $12, nD4, $06, nRst, nC4, nRst, nBb3
	dc.b	nF3, $12, nF4, $0C, nRst, $12, nRst, nD4, $06, nRst, nC4, nRst
	dc.b	nBb3, nF3, $12, nE4, $02, nF4, $0A, nRst, $42, nRst, $18, nEb4
	dc.b	$12, nRst, $06, nF4, $12, nRst, $06, nC4, $0C, nRst, $06, nEb4
	dc.b	nRst, nF4, nRst, nD4, $1E, nRst, $12, nD4, $06, nRst, nC4, nRst
	dc.b	nBb3, nG3, $12, nG4, $0C, nRst, $12, nRst, nD4, $06, nRst, nC4
	dc.b	nRst, nBb3, nC4, $12, nA4, $0C, nRst, $12, nRst, $0C, nA4, nBb4
	dc.b	nC5, $06, nRst, nD5, $12, nRst, $06, nC5, $12, nE5, $02, nF5
	dc.b	$0A, nRst, $06, nEb5, nRst, nD5, $0C, nC5, smpsNoAttack, $0C, nFs4, nA4
	dc.b	nD4, $18, nRst, $06, nD4, nRst, nC4, nRst, nBb3, nF3, $12, nF4
	dc.b	$0C, nRst, $12, nRst, nD4, $06, nRst, nC4, nRst, nBb3, nF3, $12
	dc.b	nE4, $02, nF4, $0A, nRst, $42, nRst, $06, nCs4, $02, nD4, $0A
	dc.b	nA3, $06, nG3, nAb3, nA3, nRst, nB3, nC4, nE4, nG4, nFs4, nF4
	dc.b	nD4, $04, nCs4, nC4, nB3, $06, nBb3, nA3, nG3, $0C, nC3, $06
	dc.b	nCs3, nD3, nF3, nFs3, nG3, nBb3, nA3, nG3, nBb3, $04, nB3, nC4
	dc.b	nG4, $0C, nF4, nCs4, $02, nD4, $0A, nF4, $06, nG4, nA4, nBb4
	dc.b	nRst, nF4, nRst, nF4, nRst, nF4, nEb4, nD4, nC4, nF4, $0C, nG4
	dc.b	$06, nRst, nF4, smpsNoAttack, $06, nRst, nA4, nRst, nA4, nRst, $12, nA3
	dc.b	$06, nBb3, nD4, nF4, $0C, nA4, $06, nB4, $02, nC5, $04, nBb4
	dc.b	$06, nA4, $0C, nG4, nF4, nG4, $06, nRst, nF4, nD4, nCs4, nC4
	dc.b	$0C, nBb3, $06, nF3, $04, nFs3, nG3, nBb3, $06, nG3, nBb3, nC4
	dc.b	nD4, nC4, nF4, nFs4, nG4, $18
	smpsSetvoice        $02
	smpsPan             panLeft, $00
	dc.b	nA5, $48
	smpsFMAlterVol      $0F
	dc.b	nRst, $18, nA5, $48
	smpsFMAlterVol      $F1
	dc.b	nRst, $18, nG5, $3C, nRst, $06, nA5, $06, nRst, $2A, nB5, $06
	dc.b	nRst, $30
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsJump            Seascape_Jump01

Seascape_Call01:
	dc.b	nC4, $03, nCs4, nD4, $12, nEb4, $06, nRst, nC4, $18, nBb3, $0C
	dc.b	nC4, nF4, $06, nEb4, smpsNoAttack, $0C, nD4, $06, nRst, nC4, nD4, nRst
	dc.b	nEb4, $12, nF4, $06, nRst, nBb3, $0C, nC4, $06, nRst, nBb3, $12
	dc.b	nG3, nBb3, $0C, nC4, $18, nRst, $0C, nBb3, $06, nB3, nC4, $12
	dc.b	nB3, $02, nC4, $10, nCs4, $02, nD4, $2E, nG4, $06, nRst, nE4
	dc.b	$02, nF4, $0A, nRst, $06, nE4, $02, nF4, $0A, nRst, $06, nE4
	dc.b	$02, nF4, $0A, nRst, $0C, nE4, $02, nF4, $16, nEb4, $0C, nD4
	dc.b	$12, nC4, nF4, $0C, nD4, $18, nC4
	smpsReturn

; FM3 Data
Seascape_FM3:
	smpsSetvoice        $01
	dc.b	nRst, $24

Seascape_Loop09:
	smpsCall            Seascape_Call06
	dc.b	nD3, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C, smpsNoAttack, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12
	smpsCall            Seascape_Call06
	dc.b	nD3, $18, nC3, nF3, $0C, nEb3, nD3, nC3
	smpsLoop            $00, $02, Seascape_Loop09
	smpsCall            Seascape_Call07
	dc.b	nRst, $0C, nFs3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$18, $18
	smpsCall            Seascape_Call07
	dc.b	nRst, $0C, nG3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG3, $18, nF3, nF3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12, $06, smpsNoAttack, $30, smpsNoAttack, $60, nEb3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12, $06, smpsNoAttack, $24
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nF3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $2A
	smpsJump            Seascape_Loop09

Seascape_Call06:
	dc.b	nRst, $0C, nD3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $06, nC3, $18, nRst, nRst, $0C, nD3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $06, nC3, $18, nD3, nD3, $0C, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nC3, $18, $0C, nF3
	smpsReturn

Seascape_Call07:
	dc.b	nRst, $0C, nF3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $0C, nF3, nRst, $0C, nF3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$18, $18, nRst, $0C, nF3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $0C, nF3, nRst, $0C, nF3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nF3, $18, nE3, nEb3, $12, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $0C, nEb3, nRst, $0C, nEb3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$18, $18, nRst, $0C, nF3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $0C, nF3
	smpsReturn

; FM4 Data
Seascape_FM4:
	smpsSetvoice        $01
	smpsPan             panRight, $00
	dc.b	nRst, $24

Seascape_Loop08:
	smpsCall            Seascape_Call04
	dc.b	nA2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C, smpsNoAttack, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12
	smpsCall            Seascape_Call04
	dc.b	nBb2, $30, nD3, $18, nRst
	smpsLoop            $00, $02, Seascape_Loop08
	smpsCall            Seascape_Call05
	dc.b	nRst, $0C, nC3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$18, $18
	smpsCall            Seascape_Call05
	dc.b	nRst, $0C, nD3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $18, nC3, nC3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12, $06, smpsNoAttack, $30, smpsNoAttack, $60, nBb2, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12, $06, smpsNoAttack, $24
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nC3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $2A
	smpsJump            Seascape_Loop08

Seascape_Call04:
	dc.b	nRst, $0C, nBb2
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $06, nA2, $18, nRst, $0C, nA2, nRst, $0C, nBb2
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $06, nAb2, $18, nBb2, nBb2, $0C, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nA2, $18, nRst
	smpsReturn

Seascape_Call05:
	dc.b	nRst, $0C, nD3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $0C, nD3, nRst, $0C, nD3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$18, $18, nRst, $0C, nC3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $0C, nC3, nRst, $0C, nD3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $18, nB2, nBb2, $12, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $0C, nBb2, nRst, $0C, nC3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$18, $18, nRst, $0C, nC3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $0C, nC3
	smpsReturn

; FM5 Data
Seascape_FM5:
	smpsSetvoice        $01
	smpsPan             panLeft, $00
	dc.b	nRst, $24

Seascape_Loop07:
	smpsCall            Seascape_Call02
	dc.b	nF2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C, smpsNoAttack, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12
	smpsCall            Seascape_Call02
	dc.b	nF2, $30, nBb2
	smpsLoop            $00, $02, Seascape_Loop07
	smpsCall            Seascape_Call03
	dc.b	nA2, $0C, $0C, $06, $0C, $06, $18, $18
	smpsCall            Seascape_Call03
	dc.b	nBb2, $0C, $0C, $06, $0C, $06, $18, nA2, nA2, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12, $06, smpsNoAttack, $30, smpsNoAttack, $60, nG2, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12, $06, smpsNoAttack, $24
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nA2
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $2A
	smpsJump            Seascape_Loop07

Seascape_Call02:
	dc.b	nRst, $0C, nG2
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $06, nFs2, $18, $0C, nRst, nRst, $0C, nF2
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $06, nF2, $18, nF2, nG2, $0C, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $0C, nF2, nF2, nRst
	smpsReturn

Seascape_Call03:
	dc.b	nBb2, $0C, $0C, $06, $0C, $06, $06, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C, $0C, nBb2, $0C, $0C, $06, $0C, $06, $18, $18, nA2, $0C
	dc.b	$0C, $06, $0C, $06, $06, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C, $0C, nB2, $0C, $0C, $06, $0C, $06, $18, nA2, $18, nG2
	dc.b	$12, $06, $06, $0C, $06, $06, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C, $0C, nA2, $0C, $0C, $06, $0C, $06, $18, $18, nA2, $0C
	dc.b	$0C, $06, $0C, $06, $06, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C, $0C
	smpsReturn

; FM6 Data
Seascape_FM6:
	smpsSetvoice        $01
	dc.b	nRst, $24

Seascape_Jump00:
	smpsDetune          $FB
	smpsPan             panRight, $00
	smpsPan             panRight, $00
	smpsFMAlterVol      $05
	dc.b	nRst, $02
	smpsCall            Seascape_Call01
	dc.b	nBb3, $24, nF4, $3C, nRst, $0C, nF3, nG3, nA3, $06, nRst, nBb3
	dc.b	$0C, nA3, $06, nRst, nBb3, $0C, nC4, $06, nRst
	smpsCall            Seascape_Call01
	dc.b	nBb3, $24, nF4, $18, nEb4, $06, nRst, nD4, nC4, nRst, nCs4, $02
	dc.b	nD4, $04, smpsNoAttack, $30, nRst, $12, nD4, $06, nRst, nC4, nRst, nBb3
	dc.b	nF3, $12, nF4, $0C, nRst, $12, nRst, nD4, $06, nRst, nC4, nRst
	dc.b	nBb3, nF3, $12, nE4, $02, nF4, $0A, nRst, $42, nRst, $18, nEb4
	dc.b	$12, nRst, $06, nF4, $12, nRst, $06, nC4, $0C, nRst, $06, nEb4
	dc.b	nRst, nF4, nRst, nD4, $1E, nRst, $12, nD4, $06, nRst, nC4, nRst
	dc.b	nBb3, nG3, $12, nG4, $0C, nRst, $12, nRst, nD4, $06, nRst, nC4
	dc.b	nRst, nBb3, nC4, $12, nA4, $0C, nRst, $12, nRst, $0C, nA4, nBb4
	dc.b	nC5, $06, nRst, nD5, $12, nRst, $06, nC5, $12, nE5, $02, nF5
	dc.b	$0A, nRst, $06, nEb5, nRst, nD5, $0C, nC5, smpsNoAttack, $0C, nFs4, nA4
	dc.b	nD4, $18, nRst, $06, nD4, nRst, nC4, nRst, nBb3, nF3, $12, nF4
	dc.b	$0C, nRst, $12, nRst, nD4, $06, nRst, nC4, nRst, nBb3, nF3, $12
	dc.b	nE4, $02, nF4, $0A, nRst, $42, nRst, $06, nCs4, $02, nD4, $0A
	dc.b	nA3, $06, nG3, nAb3, nA3, nRst, nB3, nC4, nE4, nG4, nFs4, nF4
	dc.b	nD4, $04, nCs4, nC4, nB3, $06, nBb3, nA3, nG3, $0C, nC3, $06
	dc.b	nCs3, nD3, nF3, nFs3, nG3, nBb3, nA3, nG3, nBb3, $04, nB3, nC4
	dc.b	nG4, $0C, nF4, nCs4, $02, nD4, $0A, nF4, $06, nG4, nA4, nBb4
	dc.b	nRst, $04
	smpsFMAlterVol      $FB
	dc.b	nC4, $06, nRst, nC4, nRst, nC4
	smpsFMAlterVol      $05
	dc.b	nRst, $02, nEb4, $06, nD4, nC4, nF4, $0C, nG4, $06, nRst, nF4
	dc.b	smpsNoAttack, $06, nRst, $04
	smpsFMAlterVol      $FB
	dc.b	nC4, $06, nC4, nC4
	smpsFMAlterVol      $05
	dc.b	nRst, $14, nA3, $06, nBb3, nD4, nF4, $0C, nA4, $06, nB4, $02
	dc.b	nC5, $04, nBb4, $06, nA4, $0C, nG4, nF4, nG4, $06, nRst, nF4
	dc.b	nD4, nCs4, nC4, $0C, nBb3, $06, nF3, $04, nFs3, nG3, nBb3, $06
	dc.b	nG3, nBb3, nC4, nD4, nC4, nF4, nFs4, nG4, $16
	smpsSetvoice        $02
	smpsDetune          $FB
	smpsFMAlterVol      $FB
	dc.b	nC5, $48
	smpsFMAlterVol      $0F
	dc.b	nRst, $18, nC5, $48
	smpsFMAlterVol      $F1
	dc.b	nRst, $18, nBb4, $3C, nRst, $06, nC5, $06, nRst, $2A, nD5, $06
	dc.b	nRst, $30
	smpsSetvoice        $01
	smpsJump            Seascape_Jump00

; PSG1 Data
Seascape_PSG1:
	smpsPSGvoice        KCVolEnv_02
	dc.b	nRst, $24

Seascape_Loop0F:
	smpsChangeTransposition $07
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $FF
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $FF
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $02
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $02
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $01
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $F6
	smpsLoop            $01, $04, Seascape_Loop0F
	smpsChangeTransposition $0A
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $FF
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $FE
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $02
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $F7
	smpsChangeTransposition $0A
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $FF
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $FE
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $02
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $FE
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $F9
	dc.b	nRst, $0C, nG4, $06, $06, nRst, $0C, nA4, $06, $06
	smpsChangeTransposition $05
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $FE
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $FD
	dc.b	nRst, $0C, nEb4, $06, $06, nRst, $0C, nEb4, $06, nF4, nRst, nF4
	dc.b	nRst, nF4, nRst, nF4, nRst, nG4, nRst, $30
	smpsJump            Seascape_Loop0F

Seascape_Call0E:
	dc.b	nRst, $0C, nC4, $06, $06
	smpsLoop            $00, $02, Seascape_Call0E
	smpsReturn

; PSG2 Data
Seascape_PSG2:
	smpsPSGvoice        KCVolEnv_02
	dc.b	nRst, $24

Seascape_Loop0E:
	smpsChangeTransposition $02
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $FE
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $FE
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $02
	dc.b	nRst, $0C, nC4, $06, $06, nRst, $0C, nD4, $06, $06
	smpsChangeTransposition $02
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $FE
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $02
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $FE
	smpsLoop            $01, $04, Seascape_Loop0E
	smpsChangeTransposition $02
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $FE
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $04
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $FA
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $02
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $02
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $FE
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $02
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $FE
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $04
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $FA
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $02
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $02
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $FC
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $02
	dc.b	nRst, $0C, nBb3, $06, $06, nRst, $0C, nC4, $06, $06
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $FE
	smpsCall            Seascape_Call0E
	smpsChangeTransposition $02
	dc.b	nRst, $0C, nBb3, $06, $06, nRst, $0C, nBb3, $06, nC4, nRst, nC4
	dc.b	nRst, nC4, nRst, nC4, nRst, nA3, nRst, $30
	smpsJump            Seascape_Loop0E

; PSG3 Data
Seascape_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $24

Seascape_Loop0B:
	smpsCall            Seascape_Call0A
	smpsLoop            $01, $07, Seascape_Loop0B
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $06, $06, $0C, $06, $06, $0C, nRst, $24

Seascape_Loop0C:
	smpsCall            Seascape_Call0A
	smpsLoop            $01, $07, Seascape_Loop0C
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $06, $06, $0C, $06, $06, $0C, nRst, $24

Seascape_Loop0D:
	smpsCall            Seascape_Call0B
	dc.b	$0C, $0C, $06, $06, $0C
	smpsPSGvoice        KCVolEnv_05
	dc.b	$0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	$0C, $18
	smpsCall            Seascape_Call0B
	dc.b	$0C
	smpsPSGvoice        KCVolEnv_05
	dc.b	$0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	$0C
	smpsPSGvoice        KCVolEnv_05
	dc.b	$0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	$18, nRst
	smpsLoop            $00, $02, Seascape_Loop0D
	dc.b	nRst, $18
	smpsCall            Seascape_Call0C
	smpsCall            Seascape_Call0C
	smpsCall            Seascape_Call0D
	smpsCall            Seascape_Call0C
	smpsCall            Seascape_Call0C
	smpsCall            Seascape_Call0C
	smpsCall            Seascape_Call0D
	smpsCall            Seascape_Call0C
	smpsCall            Seascape_Call0C
	smpsCall            Seascape_Call0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06, $06
	smpsPSGAlterVol     $FF
	dc.b	nRst, nRst, $60
	smpsJump            Seascape_Loop0B

Seascape_Call0A:
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $06, $06
	smpsLoop            $00, $04, Seascape_Call0A
	smpsReturn

Seascape_Call0B:
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $12, $06
	smpsPSGvoice        KCVolEnv_05
	dc.b	$18
	smpsPSGvoice        KCVolEnv_02
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, $06, $06, $0C
	smpsPSGvoice        KCVolEnv_05
	dc.b	$0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	$0C, $18, $0C, $06, $06
	smpsPSGvoice        KCVolEnv_05
	dc.b	$0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	$06, $06, $06, $06, $0C, $0C, $06, $06
	smpsReturn

Seascape_Call0C:
	smpsPSGvoice        KCVolEnv_02
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06, $06, $06
	smpsPSGAlterVol     $FF
	smpsReturn

Seascape_Call0D:
	smpsPSGvoice        KCVolEnv_02
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FF
	smpsPSGvoice        KCVolEnv_05
	dc.b	$0C
	smpsReturn

; PWM1 Data
Seascape_PWM1:
	dc.b	pwmSilence, $18, pwmAcousticKick, $0C

Seascape_Loop05:
	dc.b	pwmAcousticKick, $12, $06, nRst, $12, pwmAcousticKick, $06, $18, nRst
	smpsLoop            $00, $07, Seascape_Loop05
	dc.b	pwmAcousticKick, $18, pwmAcousticKick, pwmAcousticKick, pwmAcousticKick
	smpsLoop            $01, $02, Seascape_Loop05

Seascape_Loop06:
	dc.b	pwmAcousticKick, $18, nRst, $12, pwmAcousticKick, $06, $18, nRst
	smpsLoop            $00, $10, Seascape_Loop06
	dc.b	nRst, $18, pwmAcousticKick, nRst, pwmAcousticKick, nRst, pwmAcousticKick, nRst, pwmAcousticKick, nRst, pwmAcousticKick, nRst
	dc.b	pwmAcousticKick, nRst, $2A, pwmAcousticKick, $06, nRst, $18, pwmAcousticKick, $18
	smpsJump            Seascape_Loop05

; PWM2 Data
Seascape_PWM2:
	dc.b	pwmAcousticSnare, $0C, $06, $06, nRst, $0C

Seascape_Loop04:
	dc.b	nRst, $1E, pwmAcousticSnare, $12, nRst, $18, pwmAcousticSnare
	smpsLoop            $00, $07, Seascape_Loop04
	dc.b	nRst, $18, pwmAcousticSnare, nRst, $0C, pwmAcousticSnare, $06, pwmAcousticSnare, pwmAcousticSnare, pwmAcousticSnare
	smpsFMAlterVol      $90
	dc.b	pwmLowTom, $0C
	smpsFMAlterVol      $70
	smpsLoop            $01, $02, Seascape_Loop04
	smpsCall            Seascape_Call00
	dc.b	nRst, $18, pwmAcousticSnare, pwmAcousticSnare, $12, pwmMidTom, $06, $0C
	smpsFMAlterVol      $90
	dc.b	pwmLowTom
	smpsFMAlterVol      $70
	smpsCall            Seascape_Call00
	dc.b	nRst, $18, pwmAcousticSnare, pwmAcousticSnare, $12, pwmMidTom, $06, pwmAcousticSnare, pwmAcousticSnare
	smpsFMAlterVol      $90
	dc.b	pwmLowTom, $0C
	smpsFMAlterVol      $70
	dc.b	nRst, $60, nRst, nRst, $5A
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom, $06
	smpsFMAlterVol      $07
	dc.b	nRst, $06, pwmMidTom, nRst
	smpsFMAlterVol      $90
	dc.b	pwmLowTom, nRst, pwmLowTom
	smpsFMAlterVol      $70
	dc.b	nRst, pwmAcousticSnare, $18, pwmMidTom, $06, $0C, pwmAcousticSnare
	smpsJump            Seascape_Loop04

Seascape_Call00:
	dc.b	nRst, $18, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, $18, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, $18
	dc.b	pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, $18, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, $18, pwmAcousticSnare, nRst
	dc.b	pwmAcousticSnare, nRst, $18, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, $18, pwmAcousticSnare, nRst, pwmAcousticSnare
	smpsReturn

; PWM3 Data
Seascape_PWM3:
	dc.b	pwmSilence, $18
	smpsFMAlterVol      $FB
	dc.b	pwmSplashCymbal, $0C
	smpsFMAlterVol      $05

Seascape_Loop02:
	smpsFMAlterVol      $B0
	dc.b	pwmCrashCymbal, $60
	smpsFMAlterVol      $50
	dc.b	nRst, nRst, nRst
	smpsLoop            $00, $04, Seascape_Loop02

Seascape_Loop03:
	smpsFMAlterVol      $B0
	dc.b	pwmCrashCymbal, $60
	smpsFMAlterVol      $50
	dc.b	nRst, nRst
	smpsFMAlterVol      $B0
	dc.b	nRst, $30, pwmCrashCymbal, $18
	smpsFMAlterVol      $50
	smpsFMAlterVol      $FB
	dc.b	pwmSplashCymbal
	smpsFMAlterVol      $05
	smpsFMAlterVol      $B0
	dc.b	pwmCrashCymbal, $60
	smpsFMAlterVol      $50
	dc.b	nRst, nRst, nRst
	smpsLoop            $00, $02, Seascape_Loop03
	smpsFMAlterVol      $B0
	dc.b	pwmCrashCymbal, $60
	smpsFMAlterVol      $50
	dc.b	nRst, $60, nRst, $5A
	smpsFMAlterVol      $FB
	dc.b	pwmSplashCymbal, $06, nRst, $54, pwmSplashCymbal, $0C
	smpsFMAlterVol      $05
	smpsJump            Seascape_Loop02

; PWM4 Data
Seascape_PWM4:
	dc.b	pwmSilence, $24

Seascape_Loop00:
	dc.b	nRst, $0C, pwmElectricHiHat
	smpsLoop            $00, $80, Seascape_Loop00

Seascape_Loop01:
	dc.b	nRst, $0C, pwmElectricHiHat
	smpsLoop            $00, $0C, Seascape_Loop01
	dc.b	nRst, $06, pwmElectricHiHat, nRst, pwmElectricHiHat, nRst, pwmElectricHiHat, nRst, pwmElectricHiHat, nRst, $30
	smpsJump            Seascape_Loop00

Seascape_Voices:
;	Voice $00
;	$3B
;	$53, $31, $02, $03, 	$DF, $9F, $5F, $9F, 	$10, $08, $0E, $07
;	$13, $0E, $0D, $02, 	$7F, $7F, $3F, $5F, 	$10, $16, $1F, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $05
	smpsVcCoarseFreq    $03, $02, $01, $03
	smpsVcRateScale     $02, $01, $02, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $0E, $08, $10
	smpsVcDecayRate2    $02, $0D, $0E, $13
	smpsVcDecayLevel    $05, $03, $07, $07
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1F, $16, $10

;	Voice $01
;	$3B
;	$08, $02, $02, $02, 	$5F, $7F, $7F, $5F, 	$17, $07, $06, $0C
;	$15, $10, $10, $15, 	$FF, $FF, $FF, $FF, 	$23, $20, $1E, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $08
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $3F, $3F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $06, $07, $17
	smpsVcDecayRate2    $15, $10, $10, $15
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1E, $20, $23

;	Voice $02
;	$2D
;	$77, $65, $05, $15, 	$1F, $5F, $5F, $5F, 	$00, $09, $09, $09
;	$00, $06, $06, $06, 	$0F, $AC, $AC, $AC, 	$22, $89, $86, $86
	smpsVcAlgorithm     $05
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $06, $07
	smpsVcCoarseFreq    $05, $05, $05, $07
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $09, $09, $00
	smpsVcDecayRate2    $06, $06, $06, $00
	smpsVcDecayLevel    $0A, $0A, $0A, $00
	smpsVcReleaseRate   $0C, $0C, $0C, $0F
	smpsVcTotalLevel    $06, $06, $09, $22

