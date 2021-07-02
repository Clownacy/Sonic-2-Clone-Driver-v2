Snd_SSZ2_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_SSZ2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $70

	smpsHeaderDAC       Snd_SSZ2_DAC
	smpsHeaderFM        Snd_SSZ2_FM1,	$0C, $10
	smpsHeaderFM        Snd_SSZ2_FM2,	$00, $15
	smpsHeaderFM        Snd_SSZ2_FM3,	$00, $17
	smpsHeaderFM        Snd_SSZ2_FM4,	$00, $10
	smpsHeaderFM        Snd_SSZ2_FM5,	$0C, $0B
	smpsHeaderPSG       Snd_SSZ2_PSG1,	$F4, $03, $00, sTone_06
	smpsHeaderPSG       Snd_SSZ2_PSG2,	$F4, $03, $00, sTone_04
	smpsHeaderPSG       Snd_SSZ2_PSG3,	$23, $01, $00, sTone_03

; FM1 Data
Snd_SSZ2_FM1:
	smpsSetvoice        $00
	smpsModSet          $07, $01, $03, $05
	smpsPan             panCenter, $00
	dc.b	nRst, $30, nG3, $08, nD3, $04, nG2, $0C, nA2, nB2, nC3, $18
	dc.b	nG2, $14, $04, nC3, $18, nG2, nC3, nG2, $14, $04, nG3, $08
	dc.b	$04, nF3, $0C, nE3, nD3

Snd_SSZ2_Jump04:
	dc.b	nC3, $18, nG2, $14, $04, nC3, $18, nG2, nE2, nB1, $14, $04
	dc.b	nE2, $08, $04, $0C, nD2, nE2, nF2, $18, nC2, nF2, nC2, $14
	dc.b	$04, nF2, $18, nC2, nF2, $08, $04, nC2, $0C, nF2, nAb2, nC3
	dc.b	$18, nG2, nC3, nG2, nE2, nB1, nRst, $08, nE2, $04, $0C, nD2
	dc.b	nC2, nF2, $18, nC2, nF2, nC2, nF2, $14, $04, nC2, $0C, nF2
	dc.b	nF2, $08, nC2, $04, nF2, $0C, nC2, nAb1, nC3, $18, nG2, $14
	dc.b	$04, nE2, $18, nB1, nF2, nC2, $14, $04, nF2, $08, $04, $0C
	dc.b	nC2, nAb1, nC3, $18, nG2, nG2, nD2, $14, $04, nC3, $18, nG2
	dc.b	$0C, nG2, nC3, $08, $04, nG2, $0C, nA2, nB2, nE2, $18, nB1
	dc.b	nE2, nB1, nA2, nE2, nRst, $08, nA2, $04, $0C, nE2, nC2, nD3
	dc.b	$18, nA2, nD3, nA2, nG2, $14, $04, nD2, $0C, nE2, nG2, $08
	dc.b	nE2, $04, nG2, $0C, nE2, nD2, $08, nEb2, $04, nE2, $18, nB1
	dc.b	$14, $04, nE2, $18, nB1, nA2, nAb2, $14, $04, nG2, $08, $04
	dc.b	nC3, $0C, nFs2, nC2, nF2, $18, nC2, nF2, nC2, $14, $04, nG2
	dc.b	$18, nD2, nG2, $08, $04, nD2, $0C, nE2, nG2, nC3, $18, nG2
	dc.b	nE2, nB1, nA2, nE2, nRst, $08, nG2, $04, nC3, $0C, nA2, nG2
	dc.b	nF2, $18, nC2, nF2, nC2, nG2, $14, $04, nD2, $0C, nE2, nG2
	dc.b	$08, nE2, $04, nG2, $0C, nE2, nD2, nC3, $18, nG2, $14, $04
	dc.b	nE2, $18, nB1, nA2, nAb2, $14, $04, nG2, $08, $04, nC3, $0C
	dc.b	nG2, nFs2, nF2, $18, nC2, nAb2, nBb2, $14, $04, nC3, $18, nG2
	dc.b	$14, $04, nF2, $0C, nE2, nD2, nG2
	smpsJump            Snd_SSZ2_Jump04

; FM2 Data
Snd_SSZ2_FM2:
	smpsSetvoice        $01
	smpsModSet          $07, $01, $03, $05
	smpsPan             panCenter, $00
	dc.b	nRst, $60, nRst, nRst

Snd_SSZ2_Jump03:
	dc.b	nRst, $0C, nG3, nE3, nF3, nG3, $08, nC4, $0C, $04, nB3, $0C
	dc.b	nG3, nRst, nAb3, nE3, nFs3, nAb3, $30, nRst, $0C, nA3, nF3, nG3
	dc.b	nA3, $08, nC4, $0C, nF4, $04, nE4, $0C, nD4, nRst, nAb3, nF3
	dc.b	nG3, nAb3, $30, nRst, $0C, nG3, nE3, nF3, nG3, $08, nC4, $0C
	dc.b	$04, nB3, $0C, nG3, nRst, nAb3, nE3, nFs3, nAb3, $30, nRst, $0C
	dc.b	nA3, nF3, nG3, nA3, $08, nC4, $0C, nF4, $04, nE4, $0C, nD4
	dc.b	nRst, nAb3, nF3, nG3, nAb3, $30, nRst, $0C, nG3, nE3, nF3, nAb3
	dc.b	$08, nB3, $0C, nB3, nA3, $04, nAb3, $0C, nRst, nA3, nF3, nG3
	dc.b	nAb3, $08, nC4, $0C, nF4, nE4, $04, nD4, $0C, nE4, $12, nC4
	dc.b	nG3, $0C, nRst, $08, nB3, $10, nC4, $0C, nD4, nC4, $60, nRst
	dc.b	$0C, nB3, $18, nAb3, $0C, nE3, $12, nB3, $02, nC4, nD4, nE4
	dc.b	$0C, nB3, nC4, nD4, nC4, $08, nB3, $0C, nA3, $34, nRst, $0C
	dc.b	nA3, $18, nFs3, $0C, nD3, $12, nA3, $02, nB3, nC4, nD4, $0C
	dc.b	nA3, nC4, $14, nB3, $02, nC4, nB3, $0C, nBb3, nB3, $30, nRst
	dc.b	$0C, nB3, $18, nAb3, $0C, nE3, $12, nB3, $02, nC4, nD4, nE4
	dc.b	$0C, nB3, nC4, nD4, nC4, $08, nB3, $0C, nC4, nC4, $04, nB3
	dc.b	$0C, nA3, nG3, nA3, $18, $08, nB3, $04, nC4, $08, nF4, $0C
	dc.b	$04, nE4, $0C, nF4, nFs4, nG4, $08, nD4, $04, nRst, $08, nB3
	dc.b	$0C, nA3, nAb3, $04, nG3, $30, $08, nC3, $04, nE3, $08, nF3
	dc.b	$04, nG3, $08, nFs3, $04, nG3, $08, nC4, $04, nB3, $08, nC4
	dc.b	$04, nB3, $08, nA3, $04, nRst, $08, nAb3, $0C, nE3, $04, nA3
	dc.b	$08, nC3, $04, nE3, $08, nAb3, $04, nA3, $08, nAb3, $04, nA3
	dc.b	$08, nB3, $04, nC4, $08, nD4, $04, nC4, $08, nB3, $04, nC4
	dc.b	$08, nB3, $04, nA3, $08, nG3, $04, nA3, nAb3, nA3, nC4, $08
	dc.b	nF4, $0C, nE4, $04, nD4, $08, nC4, $04, nAb3, nG3, nAb3, nC4
	dc.b	$08, nF4, $0C, nE4, $04, nD4, $08, nC4, $04, nG3, $08, nFs3
	dc.b	$04, nG3, $08, nB3, $0C, nA3, nAb3, $04, nG3, $30, $08, nC3
	dc.b	$04, nE3, $08, nF3, $04, nG3, $08, nFs3, $04, nG3, $08, nC4
	dc.b	$04, nB3, $08, nC4, $04, nB3, $08, nA3, $04, nRst, $08, nAb3
	dc.b	$0C, nE3, $04, nA3, $08, nAb3, $04, nA3, $08, nB3, $0C, nA3
	dc.b	$04, nB3, $0C, nC4, $08, nD4, $04, nC4, $08, nB3, $04, nC4
	dc.b	$08, nB3, $04, nA3, $08, nG3, $04, nA3, nAb3, nA3, nC4, $08
	dc.b	nF4, $0C, nE4, $04, nD4, $08, nC4, $04, nEb4, $18, nD4, nC4
	dc.b	$60
	smpsJump            Snd_SSZ2_Jump03

; FM3 Data
Snd_SSZ2_FM3:
	smpsSetvoice        $01
	smpsModSet          $07, $01, $03, $05
	smpsPan             panCenter, $00
	dc.b	nRst, $60, nRst, nRst

Snd_SSZ2_Jump02:
	dc.b	nRst, $0C, nE3, nC3, nC3, nE3, $08, nG3, $0C, $04, $0C, nE3
	dc.b	nRst, nE3, nB2, nB2, nE3, $30, nRst, $0C, nF3, nC3, nC3, nF3
	dc.b	$08, nA3, $0C, nC4, $04, $0C, nA3, nRst, nF3, nC3, nC3, nF3
	dc.b	$30, nRst, $0C, nE3, nC3, nC3, nE3, $08, nG3, $0C, $04, $0C
	dc.b	nE3, nRst, nE3, nB2, nB2, nE3, $30, nRst, $0C, nF3, nC3, nC3
	dc.b	nF3, $08, nA3, $0C, nC4, $04, $0C, nA3, nRst, nF3, nC3, nC3
	dc.b	nF3, $30, nRst, $0C, nE3, nC3, nC3, nE3, $08, nAb3, $0C, nE3
	dc.b	nE3, $04, $0C, nRst, $0C, nF3, nC3, nC3, nF3, $08, nAb3, $0C
	dc.b	nC4, nC4, $04, nAb3, $0C, nC4, $12, nG3, nE3, $0C, nRst, $08
	dc.b	nG3, $10, $0C, nB3, nG3, $60, nRst, $0C, nAb3, $18, nE3, $0C
	dc.b	nB2, $12, nAb3, $02, nA3, nBb3, nB3, $0C, nAb3, nA3, nB3, nA3
	dc.b	$08, nG3, $0C, nE3, $34, nRst, $0C, nFs3, $18, nD3, $0C, nA2
	dc.b	$12, nFs3, $02, nG3, nAb3, nA3, $0C, nFs3, nA3, $14, nG3, $02
	dc.b	nA3, nG3, $0C, nFs3, nG3, $30, nRst, $0C, nAb3, $18, nE3, $0C
	dc.b	nB2, $12, nAb3, $02, nA3, nBb3, nB3, $0C, nAb3, nA3, nB3, nA3
	dc.b	$08, nAb3, $0C, nA3, nA3, $04, nG3, $0C, nFs3, nE3, nF3, $18
	dc.b	$08, nG3, $04, nA3, $08, nC4, $0C, $04, nB3, $0C, nC4, nCs4
	dc.b	nD4, $08, nB3, $04, nRst, $08, nG3, $0C, nD3, nC3, $04, nB2
	dc.b	$30, nE3, $08, nG2, $04, nC3, $08, nD3, $04, nE3, $08, nEb3
	dc.b	$04, nE3, $08, nG3, $04, nAb3, $08, nA3, $04, nAb3, $08, nE3
	dc.b	$04, nRst, $08, nE3, $0C, nB2, $04, nE3, $08, nA2, $04, nC3
	dc.b	$08, nEb3, $04, nE3, $08, nEb3, $04, nE3, $08, nAb3, $04, nA3
	dc.b	$08, nB3, $04, nA3, $08, nG3, $04, nA3, $08, nG3, $04, nE3
	dc.b	$08, nC3, $04, nF3, nE3, nF3, nA3, $08, nC4, $0C, $04, nA3
	dc.b	$08, $04, nF3, nE3, nF3, nAb3, $08, nC4, $0C, $04, nAb3, $08
	dc.b	$04, nD3, $08, nCs3, $04, nD3, $08, nG3, $0C, nE3, nEb3, $04
	dc.b	nD3, $30, nE3, $08, nG2, $04, nC3, $08, nD3, $04, nE3, $08
	dc.b	nEb3, $04, nE3, $08, nG3, $04, nAb3, $08, nA3, $04, nAb3, $08
	dc.b	nE3, $04, nRst, $08, nE3, $0C, nB2, $04, nE3, $08, nEb3, $04
	dc.b	nE3, $08, nAb3, $0C, nFs3, $04, nAb3, $0C, nA3, $08, nB3, $04
	dc.b	nA3, $08, nAb3, $04, nA3, $08, nG3, $04, nE3, $08, $04, nF3
	dc.b	nE3, nF3, nA3, $08, nC4, $0C, $04, nA3, $08, $04, nC4, $18
	dc.b	nBb3, nG3, $60
	smpsJump            Snd_SSZ2_Jump02

; FM4 Data
Snd_SSZ2_FM4:
	smpsSetvoice        $02
	smpsModSet          $07, $01, $03, $05
	smpsPan             panLeft, $00
	dc.b	nRst, $3C, nBb4, $02, nB4, nC5, $20, $18, nC5, nC5, $0C, nA4
	dc.b	$06, nAb4, nG4, nA4, nRst, $0C, nE5, $06, nF5, nD5, nEb5, nE5
	dc.b	nC5, nA4, nBb4, nB4, nD5, nBb4, nB4, nB4, $18

Snd_SSZ2_Jump01:
	dc.b	nRst, $0C, nE5, $12, nEb5, $02, nD5, nCs5, nC5, $04, nRst, $08
	dc.b	nE5, $04, nRst, $2C, nRst, $0C, nAb4, $12, nG4, $02, nFs4, nF4
	dc.b	nE4, $04, nRst, $08, nAb4, $04, nRst, $08, nG4, nAb4, $04, nRst
	dc.b	$08, nB4, $04, nCs5, nRst, $08, nEb5, $02, nE5, nF5, $14, $18
	dc.b	nF5, nRst, nRst, nBb4, $02, nB4, nC5, $14, $08, nF5, $04, nC5
	dc.b	$08, nAb4, $04, nC5, $08, nF5, $04, nC5, $08, nAb4, $04, nRst
	dc.b	$0C, nE5, $20, nF5, $02, nFs5, nG5, $18, nG5, nAb4, nAb4, nB4
	dc.b	$12, $02, nBb4, nA4, nAb4, $08, nB4, $04, nRst, $0C, nRst, nBb4
	dc.b	$02, nB4, nC5, $20, $0C, nF5, $04, nRst, $08, nAb4, nA4, $04
	dc.b	nRst, $08, nF4, $04, smpsNoAttack, $38, nG3, $04, nAb3, $08, nC4, $04
	dc.b	nF4, $08, $04, nG3, $08, nAb3, $04, nRst, $0C, nE5, $12, nEb5
	dc.b	$02, nD5, nCs5, nC5, $04, nRst, $08, nAb4, $04, nRst, $2C, nRst
	dc.b	$0C, nA4, $12, nAb4, $02, nG4, nFs4, nF4, $04, nRst, $08, nAb4
	dc.b	$04, nRst, $08, nG4, nAb4, $04, nRst, $08, nC5, $04, nAb4, nRst
	dc.b	$08, nBb5, $02, nB5, nC6, $14, $18, nG5, nRst, nRst, nG5, nG5
	dc.b	$08, nA5, $04, nEb5, $08, nE5, $04, nG5, $08, nA5, $04, nEb5
	dc.b	$08, nE5, $04, nRst, $18, nAb4, $14, nA4, $02, nBb4, nB4, $18
	dc.b	nB4, nC5, nC5, nE5, $12, nEb5, $02, nD5, nCs5, nC5, $08, nE5
	dc.b	$04, nRst, $0C, nRst, nA5, $06, nRst, nA5, $18, $0C, nC6, $04
	dc.b	nRst, $08, nF5, nFs5, $04, nRst, $08, nD5, $04, nG4, $18, nG4
	dc.b	nRst, $06, nBb3, nB3, $08, nD4, $04, nG4, $08, $04, nBb3, $08
	dc.b	nB3, $04, nRst, $0C, nAb4, $12, nG4, $02, nFs4, nF4, nE4, $04
	dc.b	nRst, $08, nAb4, $04, nRst, $2C, nRst, $0C, nC5, $14, nB4, $02
	dc.b	nBb4, nA4, $04, nRst, $08, nE5, $04, nRst, $08, nEb5, nE5, $04
	dc.b	nB4, $08, nC5, $04, nBb4, $0C, nEb5, $02, nE5, nF5, $14, $18
	dc.b	nF5, nRst, nRst, $14, nC5, $02, nCs5, nD5, $18, $08, nE5, $04
	dc.b	nBb4, $08, nB4, $04, nD5, $08, nE5, $04, nBb4, $08, nB4, $04
	dc.b	nRst, $18, nE5, $10, nEb5, $02, nD5, nCs5, nC5, nB4, $18, nB4
	dc.b	nC5, nC5, nG5, $12, $02, nFs5, nF5, nE5, $08, nG5, $04, nRst
	dc.b	$0C, nRst, nC5, nC5, $18, $0C, nF5, $06, nRst, nG4, nAb4, nRst
	dc.b	nF4, nG4, $18, nG4, nRst, $08, nBb3, $04, nB3, $08, nD4, $04
	dc.b	nG4, $08, $04, nBb3, $08, nB3, $04, nRst, $0C, nE5, $12, nEb5
	dc.b	$02, nD5, nCs5, nC5, $04, nRst, $08, nAb4, $04, nRst, $2C, nRst
	dc.b	$0C, nC5, $14, nB4, $02, nBb4, nA4, $04, nRst, $08, nE5, $04
	dc.b	nRst, $08, nEb5, nE5, $04, nB4, $08, nC5, $04, nBb4, $0C, nEb5
	dc.b	$02, nE5, nF5, $14, $18, nAb5, nRst, nRst, nG5, nG5, $08, nA5
	dc.b	$04, nG5, $08, nFs5, $02, nF5, nE5, $08, nG5, $04, nRst, $0C
	smpsJump            Snd_SSZ2_Jump01

; FM5 Data
Snd_SSZ2_FM5:
	smpsSetvoice        $03
	smpsModSet          $07, $01, $03, $05
	smpsPan             panRight, $00
	dc.b	nRst, $50, nC3, $04, nRst, $08, nE3, $04, nG3, $08, nA3, $04
	dc.b	nG3, nRst, $08, nG3, $14, nRst, $04, nG3, $08, nC4, $04, nRst
	dc.b	$08, nG3, $04, nE3, $14, nRst, $04, nG3, nRst, $08, nC4, $04
	dc.b	nRst, nG3, nRst, $08, nE3, $04, nC3, nRst, $08, nG3, $04, nRst
	dc.b	nG3, nRst, $08, nG3, $04, $18

Snd_SSZ2_Jump00:
	dc.b	nRst, $0C, nC4, $10, nB3, $02, nBb3, nA3, nAb3, nG3, $04, nRst
	dc.b	$08, nC4, $04, nRst, $2C, nRst, $0C, nE4, $10, nEb4, $02, nD4
	dc.b	nCs4, nC4, nB3, $04, nRst, $08, nE4, $04, nRst, $2C, nRst, $3C
	dc.b	nB3, $08, nC4, $04, nRst, $08, nB3, $04, nC4, nRst, $08, nAb3
	dc.b	$04, nRst, $08, nF3, $04, nRst, $08, nF3, $18, nF4, $06, nAb4
	dc.b	nC5, nAb4, $0A, nG4, $02, nFs4, nF4, $04, nC4, $06, nAb3, nRst
	dc.b	$0C, nC4, $08, $04, nRst, $08, nC4, $04, nC4, nRst, $14, nC4
	dc.b	$08, $04, nRst, $08, nC4, $04, nC4, nRst, $08, nRst, $0C, nB3
	dc.b	$08, $04, nRst, $08, nB3, $04, nB3, nRst, $08, nE4, $06, nEb4
	dc.b	$02, nD4, nCs4, nC4, nB3, $06, nAb3, $04, nFs3, $08, nE3, $04
	dc.b	nRst, $0C, nRst, $60, nRst, $0C, nG3, $08, nAb3, $04, nRst, $08
	dc.b	nC4, $04, nAb3, $08, nG3, $02, nFs3, nF3, $04, nRst, $08, nF3
	dc.b	$04, nRst, $08, nF3, $18, nRst, $0C, nC4, $10, nB3, $02, nBb3
	dc.b	nA3, nAb3, nG3, $04, nRst, $08, nE4, $04, nRst, $2C, nRst, $0C
	dc.b	nF4, $10, nE4, $02, nEb4, nD4, nCs4, nC4, $04, nRst, $08, nF4
	dc.b	$04, nRst, $2C, nRst, $3C, nCs4, $08, nD4, $04, nRst, $08, nCs4
	dc.b	$04, nD4, nRst, $08, nG3, $04, nRst, $08, nC3, $04, nRst, $08
	dc.b	nC3, $18, nEb4, $08, nE4, $04, nF4, $08, nEb4, $02, nE4, $04
	dc.b	nEb4, $02, nD4, nCs4, nC4, $04, nA3, $08, nG3, $04, nRst, $0C
	dc.b	nE4, $08, $04, nRst, $08, nE4, $04, nE4, nRst, $14, nD4, $08
	dc.b	$04, nRst, $08, nD4, $04, nD4, nRst, $08, nRst, $0C, nE3, $08
	dc.b	$04, nRst, $08, nE3, $04, nE3, nRst, $08, nA3, $06, nAb3, $02
	dc.b	nG3, nFs3, nF3, nE3, $06, nC3, $04, nB2, $08, nA2, $04, nRst
	dc.b	$0C, nRst, $60, nRst, $0C, nBb3, $08, nB3, $04, nRst, $08, nD4
	dc.b	$04, nB3, $06, nBb3, $02, nA3, nAb3, nG3, $04, nRst, $08, nG3
	dc.b	$04, nRst, $08, nG3, $18, nRst, $0C, nE4, $10, nEb4, $02, nD4
	dc.b	nCs4, nC4, nB3, $04, nRst, $08, nE4, $04, nRst, $2C, nRst, $0C
	dc.b	nA3, nAb4, $06, nG4, $02, nFs4, nF4, nE4, $04, nRst, $08, nG4
	dc.b	$04, nRst, $2C, nRst, $3C, nB3, $08, nC4, $04, nRst, $08, nB3
	dc.b	$04, nC4, nRst, $08, nC4, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b	nG3, $18, nBb4, $06, nB4, nC5, nBb4, $02, nB4, $06, nBb4, $02
	dc.b	nA4, nAb4, nG4, $04, nE4, $06, nD4, nRst, $0C, nC4, $08, $04
	dc.b	nRst, $08, nC4, $04, nC4, nRst, $14, nE4, $08, $04, nRst, $08
	dc.b	nE4, $04, nE4, nRst, $08, nRst, $0C, nE3, $08, $04, nRst, $08
	dc.b	nE3, $04, nE3, nRst, $08, nC4, $06, nB3, $02, nBb3, nA3, nAb3
	dc.b	nG3, $06, nE3, $04, nD3, $08, nC3, $04, nRst, $0C, nRst, $60
	dc.b	nRst, $0C, nBb3, $08, nC4, $04, nRst, $08, nD4, $04, nC4, $08
	dc.b	nB3, $02, nA3, nG3, $04, nRst, $08, nG3, $04, nRst, $08, nG3
	dc.b	$18, nRst, $0C, nC4, $10, nB3, $02, nBb3, nA3, nAb3, nG3, $04
	dc.b	nRst, $08, nE4, $04, nRst, $2C, nRst, $0C, nA3, $08, nAb4, $0A
	dc.b	nG4, $02, nFs4, nF4, nE4, $04, nRst, $08, nG4, $04, nRst, $2C
	dc.b	nRst, $3C, nD4, $08, nEb4, $04, nRst, $08, nE3, $04, nF3, nRst
	dc.b	$08, nE3, $04, nRst, $08, nC3, $04, nRst, $08, nC4, nE4, $04
	dc.b	nRst, $08, nC4, $04, nE4, nRst, $08, nE4, $06, nEb4, $02, nD4
	dc.b	nCs4, nC4, $08, nE4, $04, nRst, $0C
	smpsJump            Snd_SSZ2_Jump00

; PSG1 Data
Snd_SSZ2_PSG1:
	smpsPSGvoice        sTone_1D
	smpsNoteFill        $05
	dc.b	nRst, $60, nRst, $0C, nC3, $18, nC3, nC3, nC3, $0C, nRst, nC3
	dc.b	$18, nC3, nD3, $08, $04, $0C, nD3

Snd_SSZ2_Jump06:
	dc.b	nRst, nE3, $18, nE3, nG3, nE3, $0C, nRst, nE3, $18, nE3, nAb3
	dc.b	nE3, $0C, nRst, nF3, $18, nF3, nA3, nF3, $0C, nRst, nF3, $18
	dc.b	nF3, nF3, $08, $04, nAb3, $0C, nAb3, nRst, nG3, $18, nG3, nE3
	dc.b	nG3, $0C, nRst, nAb3, $18, nAb3, nE3, nAb3, $0C, nRst, nA3, $18
	dc.b	nA3, nF3, nA3, $0C, nRst, nF3, nF3, $04, nF3, nF3, nF3, $08
	dc.b	$04, $08, $04, $0C
	smpsNoteFill        $00
	dc.b	$10
	smpsNoteFill        $05
	dc.b	nRst, $08, nRst, $0C, nC3, $18, nC3, nB2, nB2, $0C, nRst, nC3
	dc.b	$18, nC3, nC3, nC3, $0C, nRst, nC3, $18, nC3, nD3, nF3, $0C
	dc.b	nRst, nC3, $18, nC3, nC3, $08, $04, $0C, nC3, nRst, nAb3, $18
	dc.b	nAb3, nAb3, nAb3, $0C, nA3, nA3, nA3, nA3, nA3, nA3, nA3, nA3
	dc.b	nRst, nA3, $18, nA3, nA3, nA3, $0C, nRst, nG3, $08, $04, $0C
	dc.b	$08, $04, $0C, nG3
	smpsNoteFill        $00
	dc.b	nD3
	smpsNoteFill        $05
	dc.b	nG3, nRst, nB3, $18, nB3, nB3, nB3, $0C, nRst, nA3, $18, nC4
	dc.b	nG3, nC4, $0C, nRst, nC4, $18, nC4, nAb3, nAb3, $0C, nRst, nG3
	dc.b	$18, nG3, nG3, $08, $04, nD3, $0C, nG3, nRst, nC3, $18, nC3
	dc.b	nB2, nB2, $0C, nE3, nE3, nE3, nE3, $18, nC3, nE3, $0C, nRst
	dc.b	nA3, $18, nA3, nAb3, nAb3, $0C, nRst, nG3, $08, $04, $0C, $08
	dc.b	$04, $0C, nG3
	smpsNoteFill        $00
	dc.b	nD3
	smpsNoteFill        $05
	dc.b	nG3, nRst, nC3, $18, nC3, nB2, nB2, $0C, nRst, nA3, $08
	smpsNoteFill        $00
	dc.b	nC4, $10
	smpsNoteFill        $05
	dc.b	$0C, nC4, nG3, nC4, nBb3, nRst, nF3, $18, nF3, nAb3, nBb3, $0C
	dc.b	nRst, nG3, nG3, $04, nG3, nG3, nG3, $08, $04, $08, $04, $0C
	smpsNoteFill        $00
	dc.b	nG3
	smpsNoteFill        $05
	dc.b	nG3
	smpsJump            Snd_SSZ2_Jump06

; PSG2 Data
Snd_SSZ2_PSG2:
	smpsPSGvoice        sTone_1D
	smpsNoteFill        $05
	dc.b	nRst, $60, nRst, $0C, nG3, $18, nG3, nG3, nG3, $0C, nRst, nG3
	dc.b	$18, nG3, nB3, $08, $04, nA3, $0C, nB3

Snd_SSZ2_Jump05:
	dc.b	nRst, nC4, $18, nC4, nC4, nC4, $0C, nRst, nB3, $18, nB3, nB3
	dc.b	nB3, $0C, nRst, nC4, $18, nC4, nC4, nC4, $0C, nRst, nAb3, $18
	dc.b	nAb3, nAb3, $08, $04, nF4, $0C, nC4, nRst, nC4, $18, nC4, nC4
	dc.b	nC4, $0C, nRst, nB3, $18, nB3, nB3, nB3, $0C, nRst, nC4, $18
	dc.b	nC4, nC4, nC4, $0C, nRst, nAb3, nAb3, $04, nAb3, nAb3, nAb3, $08
	dc.b	$04, $08, $04, $0C
	smpsNoteFill        $00
	dc.b	$08, nBb3, $04, nC4
	smpsNoteFill        $05
	dc.b	nRst, $08, nRst, $0C, nE3, $18, nG3, nE3, nAb3, $0C, nRst, nF3
	dc.b	$18, nA3, nAb3, nF3, $0C, nRst, nE3, $18, nG3, nG3, nB3, $0C
	dc.b	nRst, nG3, $18, nG3, nG3, $08, $04, nE3, $0C, nG3, nRst, nE4
	dc.b	$18, nE4, nD4, nD4, $0C, nC4, nC4, nC4, nC4, nC4, nC4, nC4
	dc.b	nC4, nRst, nD4, $18, nD4, nC4, nC4, $0C, nRst, nB3, $08, $04
	dc.b	$0C, $08, $04, $0C, nB3
	smpsNoteFill        $00
	dc.b	nG3
	smpsNoteFill        $05
	dc.b	nB3, nRst, nE4, $18, nE4, nD4, nD4, $0C, nRst, nE4, $18, nAb4
	dc.b	nE4, nFs4, $0C, nRst, nF4, $18, nF4, nF4, nF4, $0C, nRst, nC4
	dc.b	$18, nC4, nB3, $08, $04, nG3, $0C, nB3, nRst, nG3, $18, nG3
	dc.b	nAb3, nAb3, $0C, nA3, nA3, nA3, nA3, $18, nG3, nC4, $0C, nRst
	dc.b	nC4, $18, nC4, nC4, nC4, $0C, nRst, nC4, $08, $04, $0C, $08
	dc.b	$04, nB3, $0C, nB3
	smpsNoteFill        $00
	dc.b	nG3
	smpsNoteFill        $05
	dc.b	nB3, nRst, nG3, $18, nG3, nAb3, nAb3, $0C, nRst, nE4, $08
	smpsNoteFill        $00
	dc.b	nAb4, $10
	smpsNoteFill        $05
	dc.b	$0C, nE4, nE4, nFs4, nFs4, nRst, nA3, $18, nA3, nC4, nD4, $0C
	dc.b	nRst, nC4, nC4, $04, nC4, nC4, nC4, $08, $04, $08, $04, $0C
	smpsNoteFill        $00
	dc.b	nC4
	smpsNoteFill        $05
	dc.b	nC4
	smpsJump            Snd_SSZ2_Jump05

; PSG3 Data
Snd_SSZ2_PSG3:
	smpsPSGform         $E7
	smpsCall            Snd_SSZ2_Call01
	smpsCall            Snd_SSZ2_Call02
	smpsCall            Snd_SSZ2_Call02

Snd_SSZ2_Loop06:
	smpsCall            Snd_SSZ2_Call03

Snd_SSZ2_Loop05:
	smpsCall            Snd_SSZ2_Call02
	smpsLoop            $01, $03, Snd_SSZ2_Loop05
	smpsLoop            $02, $06, Snd_SSZ2_Loop06
	smpsCall            Snd_SSZ2_Call03
	smpsCall            Snd_SSZ2_Call04
	smpsCall            Snd_SSZ2_Call05
	smpsCall            Snd_SSZ2_Call06
	smpsJump            Snd_SSZ2_Loop06

Snd_SSZ2_Call01:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $0C, $08
	smpsPSGvoice        sTone_12
	dc.b	$10
	smpsLoop            $00, $02, Snd_SSZ2_Call01
	smpsReturn

Snd_SSZ2_Call02:
	smpsPSGvoice        sTone_0F
	dc.b	$0C, $08, $04
	smpsLoop            $00, $04, Snd_SSZ2_Call02
	smpsReturn

Snd_SSZ2_Call03:
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b	$0C, nRst
	smpsPSGAlterVol     $01

Snd_SSZ2_Loop08:
	smpsPSGvoice        sTone_0F
	dc.b	$0C, $08, $04
	smpsLoop            $00, $03, Snd_SSZ2_Loop08
	smpsReturn

Snd_SSZ2_Call04:
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b	$0C, nRst, $08, $0C, nRst, $10
	smpsPSGAlterVol     $01

Snd_SSZ2_Loop07:
	smpsPSGvoice        sTone_0F
	dc.b	$0C, $08, $04
	smpsLoop            $00, $02, Snd_SSZ2_Loop07
	smpsReturn

Snd_SSZ2_Call05:
	smpsPSGvoice        sTone_0F
	dc.b	$0C, $08, $04
	smpsLoop            $00, $02, Snd_SSZ2_Call05
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b	$0C, nRst, $0C, $0C, nRst, $0C
	smpsPSGAlterVol     $01
	smpsReturn

Snd_SSZ2_Call06:
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b	$0C, nRst
	smpsPSGAlterVol     $01
	smpsPSGvoice        sTone_0F
	dc.b	$08
	smpsPSGvoice        sTone_12
	dc.b	$10
	smpsPSGvoice        sTone_0F
	dc.b	$0C, $0C, $08
	smpsPSGvoice        sTone_12
	dc.b	$10
	smpsReturn

; DAC Data
Snd_SSZ2_DAC:
	dc.b	dSnareS3, $04, dSnareS3, dSnareS3, dSnareS3, $0C, $08, dKickS3, $10, dSnareS3, $04, dSnareS3
	dc.b	dSnareS3, dSnareS3, $08, $04, $08, dKickS3, $10, $0C, dSnareS3, dKickS3, dSnareS3, dKickS3
	dc.b	dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, $08, $04, dKickS3
	dc.b	$08, dSnareS3, $04, $0C

Snd_SSZ2_Loop00:
	smpsCall            Snd_SSZ2_Call00
	smpsLoop            $00, $03, Snd_SSZ2_Loop00
	dc.b	dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, $04, dSnareS3, $08, dSnareS3, dSnareS3
	dc.b	$04

Snd_SSZ2_Loop01:
	smpsCall            Snd_SSZ2_Call00
	smpsLoop            $00, $03, Snd_SSZ2_Loop01
	dc.b	dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, $08, dSnareS3, $04, dSnareS3, dSnareS3
	dc.b	dSnareS3

Snd_SSZ2_Loop02:
	smpsCall            Snd_SSZ2_Call00
	smpsLoop            $00, $02, Snd_SSZ2_Loop02
	dc.b	dKickS3, dSnareS3, dKickS3, dSnareS3, $08, $04, dKickS3, $0C, dSnareS3, dKickS3, dSnareS3, $08
	dc.b	$04, dKickS3, $0C, dSnareS3, dKickS3, dSnareS3, $08, $04, dKickS3, $0C, dSnareS3, dKickS3
	dc.b	$04, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3

Snd_SSZ2_Loop03:
	smpsCall            Snd_SSZ2_Call00
	smpsLoop            $00, $03, Snd_SSZ2_Loop03
	dc.b	dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, $04, dSnareS3, $08, dElectricFloorTom, $0C
	smpsCall            Snd_SSZ2_Call00
	dc.b	dKickS3, $08, $04, dSnareS3, $0C, dKickS3, dSnareS3, dKickS3, $08, $04, dSnareS3, $0C
	dc.b	dKickS3, dSnareS3
	smpsCall            Snd_SSZ2_Call00
	dc.b	dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, $08, $04, dSnareS3, $08, $04, dKickS3, dSnareS3
	dc.b	dSnareS3, dSnareS3, dSnareS3, dSnareS3

Snd_SSZ2_Loop04:
	smpsCall            Snd_SSZ2_Call00
	smpsLoop            $00, $03, Snd_SSZ2_Loop04
	dc.b	dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, $08, $04, dElectricHighTom, dElectricHighTom, dElectricMidTom, dElectricMidTom
	dc.b	dElectricLowTom, dElectricFloorTom
	smpsCall            Snd_SSZ2_Call00
	dc.b	dKickS3, $08, $04, dSnareS3, $08, dKickS3, $0C, $04, dSnareS3, $0C, dKickS3, dSnareS3
	dc.b	$08, $04, dKickS3, $0C, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, $08
	dc.b	$04, dElectricHighTom, dElectricHighTom, dElectricMidTom, dElectricMidTom, dElectricLowTom, dElectricFloorTom, dKickS3, $0C, dSnareS3, dKickS3, $08
	dc.b	dSnareS3, $0C, dKickS3, $04, $0C, dSnareS3, dSnareS3, $08, $04, $08, $04
	smpsJump            Snd_SSZ2_Loop00

Snd_SSZ2_Call00:
	dc.b	dKickS3, $0C, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3
	smpsReturn

Snd_SSZ2_Voices:
;	Voice $00
;	$08
;	$0A, $70, $30, $00, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$24, $2D, $13, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $00
	smpsVcCoarseFreq    $00, $00, $00, $0A
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $2D, $24

;	Voice $01
;	$3A
;	$32, $32, $56, $42, 	$8D, $15, $4F, $52, 	$06, $07, $08, $04
;	$02, $00, $00, $00, 	$18, $28, $18, $28, 	$19, $2A, $20, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $05, $03, $03
	smpsVcCoarseFreq    $02, $06, $02, $02
	smpsVcRateScale     $01, $01, $00, $02
	smpsVcAttackRate    $12, $0F, $15, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $08, $07, $06
	smpsVcDecayRate2    $00, $00, $00, $02
	smpsVcDecayLevel    $02, $01, $02, $01
	smpsVcReleaseRate   $08, $08, $08, $08
	smpsVcTotalLevel    $00, $20, $2A, $19

;	Voice $02
;	$3A
;	$12, $04, $03, $51, 	$8E, $8E, $8F, $52, 	$07, $08, $08, $07
;	$03, $03, $02, $04, 	$1F, $FF, $5F, $0F, 	$20, $23, $2A, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $00, $00, $01
	smpsVcCoarseFreq    $01, $03, $04, $02
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $12, $0F, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $08, $08, $07
	smpsVcDecayRate2    $04, $02, $03, $03
	smpsVcDecayLevel    $00, $05, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $2A, $23, $20

;	Voice $03
;	$3A
;	$01, $07, $31, $71, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $07, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $07, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

