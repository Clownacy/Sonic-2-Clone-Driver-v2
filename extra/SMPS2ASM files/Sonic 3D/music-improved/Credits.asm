Snd_Credits_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_Credits_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $40

	smpsHeaderDAC       Snd_Credits_DAC
	smpsHeaderFM        Snd_Credits_FM1,	$00, $12
	smpsHeaderFM        Snd_Credits_FM2,	$F4, $19
	smpsHeaderFM        Snd_Credits_FM3,	$F4, $18
	smpsHeaderFM        Snd_Credits_FM4,	$00, $13
	smpsHeaderFM        Snd_Credits_FM5,	$00, $12
	smpsHeaderPSG       Snd_Credits_PSG1,	$DC, $02, $00, $00
	smpsHeaderPSG       Snd_Credits_PSG2,	$DC, $02, $00, $00
	smpsHeaderPSG       Snd_Credits_PSG3,	$23, $02, $00, $00

; FM1 Data
Snd_Credits_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	smpsModSet          $07, $01, $03, $05
	dc.b	nA3, $0C, nRst, $08, nA4, $04, nRst, $08, nA4, $04, nG4, $08
	dc.b	nA4, $06, nRst, $0A, nG3, $0C, nA3, nC4, nRst, $08, nC4, $04
	dc.b	nRst, $08, nBb4, $04, nC4, $08, nRst, $04, nC4, $08, nC5, $04
	dc.b	nRst, $0C, nC4, nC5, nC4, nF3, $08, nF4, $04, nRst, $08, nE4
	dc.b	$04, nF3, $0C, nE4, $08, nF4, $04, nRst, $0C, nF3, nF4, nE3
	dc.b	nRst, nE3, $04, nRst, nE5, nF3, nRst, nD5, nE5, $08, nRst, $04
	dc.b	nE3, $08, nE5, $04, nE3, $0C, nE3, nE3, $08, nB4, $04, nA3
	dc.b	$0C, nRst, $08, nA4, $04, nRst, $0C, nA3, $08, nG4, $04, nRst
	dc.b	$08, nG4, $04, nA4, nRst, $08, nG4, nC3, $04, nC4, $0C, smpsNoAttack
	dc.b	$04, nRst, $08, nC4, nC3, $04, nD4, $08, nRst, $04, nD4, $08
	dc.b	nD3, $04, nE4, $0C, nE4, nC4, nC4, nF4, $18, nE4, $03, nF4
	dc.b	$09, nE4, $18, $03, nF4, $09, nE4, $0C, nD4, smpsNoAttack, nD4, $14
	dc.b	nD3, $04, nG4, $03, nA4, $09, nG4, $18
	smpsSetvoice        $01
	dc.b	nG2, $02, nA2, nB2, nC3, nD3, nE3, nFs4, nF4, nE4, nD4, nC4
	dc.b	nB3, nA3, nG3, nFs3, nE3, nD3, nC3

Snd_Credits_Jump05:
	dc.b	nA2, $08, nRst, $0C, nA3, $04, nRst, $08, nA3, $04, nG3, $08
	dc.b	nA3, $04, nRst, $0C, nG2, nA2, nA2, $08, nG3, $04, nC3, $08
	dc.b	nC4, $04, nRst, $08, nBb3, $04, nC3, $08, nRst, $04, nC3, $08
	dc.b	nC4, $04, nRst, $0C, nC3, nC4, nC3, $08, nC4, $04, nF2, $08
	dc.b	nF3, $04, nRst, $08, nE3, $04, nF2, $0C, nE3, $08, nF3, $04
	dc.b	nRst, $0C, nF2, nF3, nE2, smpsNoAttack, nE2, $04, nRst, nE2, $08, nRst
	dc.b	$04, nE4, nF2, $08, nD4, $04, nE4, $08, nRst, $04, nE2, $08
	dc.b	nE4, $04, nE2, $0C, nE2, nE2, $08, nB3, $04, nA2, $08, nRst
	dc.b	$0C, nA3, $04, nRst, $0C, nA2, $08, nG3, $04, nRst, $08, nG3
	dc.b	$04, nA3, $06, nRst, nG3, $08, nC2, $04, nC3, $0C, smpsNoAttack, $04
	dc.b	nRst, $08, nC3, nC2, $04, nD3, $08, nRst, $04, nD3, $08, nD2
	dc.b	$04, nE3, $0C, nE3, nC3, nC3, nF2, nF2, $04, nRst, nF3, nRst
	dc.b	$0C, nF2, $08, nF3, $04, nRst, $08, nF3, $04, nF2, $08, nRst
	dc.b	$04, nF2, $08, nRst, $04, nE2, $0C, smpsNoAttack, $04, nRst, $08, nE2
	dc.b	$04, nRst, nE3, nRst, $0C, nE2, $08, nE3, $04, nRst, $08, nE3
	dc.b	$04, nE2, $0C, nE2, nE2, $08, nE3, $04, nD2, $08, nRst, $0C
	dc.b	nA3, $04, nRst, $08, nA3, $04, nG3, $08, nA3, $04, nRst, $0C
	dc.b	nG2, nD2, nC2, nRst, $08, nC3, $04, nRst, $08, nBb3, $04, nC3
	dc.b	$08, nRst, $04, nC3, $08, nC4, $04, nRst, $0C, nC3, nC4, nC3
	dc.b	$08, nC4, $04, nD2, $08, nRst, $0C, nA3, $04, nRst, $08, nA3
	dc.b	$04, nG3, $08, nA3, $04, nRst, $0C, nG2, nD2, nC2, nRst, $08
	dc.b	nC3, $04, nRst, $08, nBb3, $04, nC3, $08, nRst, $04, nC3, $08
	dc.b	nC4, $04, nRst, $0C, nC3, nC4, nC3, $08, nC4, $04, nD2, $08
	dc.b	nRst, $0C, nA3, $04, nRst, $0C, nA2, $08, nG3, $04, nRst, $08
	dc.b	nG3, $04, nA3, nRst, $08, nD3, $0C, nC3, smpsNoAttack, nC3, $04, nRst
	dc.b	$08, nC3, nC2, $04, nD3, $08, nRst, $04, nD3, $08, nD2, $04
	dc.b	nE3, $0C, nE3, nC3, nB2, smpsNoAttack, nB2, $04, nRst, $08, nB1, $04
	dc.b	nRst, nB2, nRst, $0C, nB1, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b	nB1, $08, nRst, $04, nB1, $08, nRst, $04, nE2, $0C, smpsNoAttack, $04
	dc.b	nRst, $08, nE2, $04, nRst, nE3, nRst, $08, nE2, $04, nRst, $08
	dc.b	nE3, $04, nRst, $08, nE3, $04, nE2, $08, nRst, $04, nE2, $08
	dc.b	nRst, $04, nE2, $08, nE3, $04, nA2, $08, nRst, $0C, nA3, $04
	dc.b	nRst, $08, nA3, $04, nG3, $08, nA3, $04, nRst, $0C, nG2, nA2
	dc.b	nC3, nRst, $08, nC3, $04, nRst, $08, nBb3, $04, nC3, $08, nRst
	dc.b	$04, nC3, $08, nC4, $04, nRst, $0C, nC3, nC4, nC3, $08, nC4
	dc.b	$04, nF2, $08, nF3, $04, nRst, $08, nE3, $04, nF2, $0C, nE3
	dc.b	$08, nF3, $04, nRst, $0C, nF2, nF3, nE2, nRst, nE2, $04, nRst
	dc.b	nE4, nF2, nRst, nD4, nE4, $08, nRst, $04, nE2, $08, nE4, $04
	dc.b	nE2, $08, nRst, $04, nE2, $08, nRst, $04, nE2, $08, nB3, $04
	dc.b	nA2, $08, nRst, $0C, nA3, $04, nRst, $0C, nA2, $08, nG3, $04
	dc.b	nRst, $08, nG3, $04, nA3, nRst, $08, nG3, nC2, $04, nC3, $0C
	dc.b	smpsNoAttack, $04, nRst, $08, nC3, nC2, $04, nD3, $08, nRst, $04, nD3
	dc.b	$08, nD2, $04, nE3, $0C, nE3, nC3, nC3, nF2, nF2, $04, nRst
	dc.b	nF3, nRst, $0C, nE2, $04, nRst, nE3, nRst, $08, nE3, $04, nE2
	dc.b	$0C, nE2, nD2, smpsNoAttack, nD2, $04, nRst, $08, nD2, $04, nRst, nD3
	dc.b	nRst, $0C, nG2, $08, nG3, $04, nRst, $08, nG3, $04, nG2, $0C
	dc.b	nG2, nG2, $06, nG3
	smpsJump            Snd_Credits_Jump05

; FM2 Data
Snd_Credits_FM2:
	smpsSetvoice        $02
	smpsPan             panLeft, $00
	smpsModSet          $07, $01, $03, $05
	dc.b	nRst, $0C, nG4, $04, nRst, $10, nG4, $04, nRst, $0C, nG4, $06
	dc.b	nRst, $0E, nG4, $04, nRst, $0C, nF4, smpsNoAttack, nF4, nBb4, $04, nRst
	dc.b	$10, nF4, $04, nRst, $0C, nF4, $06, nRst, $0E, nF4, $06, nRst
	dc.b	$16, nRst, $0C, nG4, $06, nRst, $0E, nG4, $04, nRst, $0C, nG4
	dc.b	$06, nRst, $0E, nG4, $04, nRst, $0C, nA4, nRst, nA4, $06, nRst
	dc.b	$0E, nA4, $04, nRst, $0C, nAb4, $06, nRst, $0E, nAb4, $0C, nRst
	dc.b	$04, nAb4, nRst, $08, nRst, $0C, nG4, $04, nRst, $10, nG4, $04
	dc.b	nRst, $0C, nG4, $06, nRst, $0E, nG4, $04, nRst, $0C, nF4, smpsNoAttack
	dc.b	nF4, nF4, $04, nRst, $10, nF4, $04, nRst, $0C, nBb4, $06, nRst
	dc.b	nBb4, nRst, nEb5, $04, nRst, $14, nRst, $0C, nG4, $06, nRst, $0E
	dc.b	nG4, $04, nRst, $0C, nG4, $06, nRst, $0E, nG4, $04, nRst, $18
	dc.b	nRst, $08, nG4, $04, nRst, $0C, nG4, $0C, nRst, $08, nF4, $04
	dc.b	nRst, $0C, nF4, $0C, nRst, $08
	smpsSetvoice        $06
	dc.b	nG3, $02, nA3, nB3, nC4, nD4, nE4, nF4, nG4

Snd_Credits_Jump04:
	smpsSetvoice        $06
	smpsFMAlterVol      $F9
	smpsPan             panRight, $00
	dc.b	nB5, $10, nC5, $04, nRst, nC3, nRst, nC5, nRst, $08, nC5, $04
	smpsSetvoice        $02
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nG4, $06, nRst, $0E, nG4, $04, nRst, $0C, nF4, $0C, smpsNoAttack, nF4
	dc.b	$0C, nBb4, $04, nRst, $08
	smpsSetvoice        $06
	smpsFMAlterVol      $F9
	smpsPan             panRight, $00
	dc.b	nC5, $08, nRst, $04, nC5, $08, nRst, $04, nC3, nRst, nC5, nRst
	dc.b	$08, nC5, $04, nRst, $18, nRst, $0C, nF3, $03, nG3, nA3, nB3
	dc.b	nG5, $0C, nC5, $08, nRst, $04
	smpsSetvoice        $02
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nG4, $06, nRst, $0E, nG4, $04, nRst, $0C, nA4, $0C, nRst, $14
	dc.b	nB2, $04, nD5, $08, nRst, $04, nD5, $08, nRst, $04
	smpsSetvoice        $06
	smpsFMAlterVol      $F9
	smpsPan             panRight, $00
	dc.b	nAb4, $06, nRst, $0E, nAb4, $0C, nRst, $04, nAb4, $04, nRst, $08
	smpsSetvoice        $02
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nRst, $0C, nAb4, $06, nRst, $02
	smpsSetvoice        $06
	smpsFMAlterVol      $F9
	smpsPan             panRight, $00
	dc.b	nA4, $04, nC3, $04, nRst, $04, nA4, $04, nRst, $08, nA4, $04
	smpsSetvoice        $02
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nAb4, $06, nRst, $0E, nAb4, $04, nRst, $0C, nF4, $0C, smpsNoAttack, nF4
	dc.b	$0C, nF4, $04, nRst, $14
	smpsSetvoice        $06
	smpsFMAlterVol      $F9
	smpsPan             panRight, $00
	dc.b	nC3, $04, nRst, nC5, nC3, nRst, nC5, nRst, $08, nC5, $04
	smpsSetvoice        $02
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nEb5, $04, nRst, $14, nRst, $0C, nG4, $06, nRst, $0E, nG4, $04
	dc.b	nRst, $0C, nG4, $06, nRst, $0E, nG4, $04, nRst, $18, nRst, $08
	dc.b	nA4, $04, nRst, $08
	smpsSetvoice        $06
	smpsFMAlterVol      $F9
	smpsPan             panRight, $00
	dc.b	nB2, $04, nD5, $04, nRst, $04, nD5, $08
	smpsSetvoice        $02
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nRst, $0C, nAb4, $0C
	smpsSetvoice        $06
	smpsFMAlterVol      $FC
	smpsPan             panRight, $00
	dc.b	nA5, $02, nG5, nF5, nE5, nD5, nC5, nB4, nA4, nG4, nF4, nE4
	dc.b	nD4, nC4, nB3, nA3, nG3, nA5, $0C
	smpsSetvoice        $02
	smpsFMAlterVol      $04
	smpsPan             panLeft, $00
	dc.b	nG4, $04, nRst, $10, nG4, $04, nRst, $0C, nG4, $06, nRst, $0E
	dc.b	nG4, $04, nRst, $18, nRst, $0C, nD4, $04, nRst, $10, nC4, $04
	dc.b	nRst, $0C, nD4, $06, nRst, $2A
	smpsSetvoice        $06
	smpsFMAlterVol      $F9
	smpsPan             panRight, $00
	dc.b	nRst, $0C, nA2, $04, nB2, nC3, nA5, $0C
	smpsSetvoice        $02
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nRst, $0C, nG4, $06, nRst, $0E, nG4, $04, nRst, $18, nRst, $0C
	dc.b	nG4, $04, nRst, $10, nC4, $04, nRst, $0C, nD4, $06, nRst, $02
	dc.b	nD6, $06, nRst, $06, nG4, $06, nRst, $0A
	smpsSetvoice        $06
	smpsFMAlterVol      $F9
	smpsPan             panRight, $00
	dc.b	nA2, $04, nB2, $04, nC3, $04, nA5, $0C
	smpsSetvoice        $02
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nG4, $04, nRst, $10, nG4, $04, nRst, $0C, nG4, $06, nRst, $0E
	dc.b	nG4, $04, nRst, $18, nRst, $0C, nG4, $04, nRst, $10, nG4, $04
	dc.b	nRst, $0C, nG4, $06, nRst, $2A, nRst, $60
	smpsSetvoice        $06
	smpsFMAlterVol      $F9
	smpsPan             panRight, $00
	dc.b	nRst, $12, nE3, $06, nRst, $12, nE3, $06, nRst, $0C, nE3, nRst
	dc.b	$06, nE3, nRst, $0C
	smpsSetvoice        $02
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nRst, $0C, nG4, $04, nRst, $10, nG4, $04, nRst, $08, nA3, $04
	dc.b	nG4, $06, nRst, $02, nA5, $06, nRst, nG4, $04, nRst, $0C, nF4
	dc.b	$0C, smpsNoAttack, nF4, $0C, nBb4, $04, nRst, $10, nF4, $04, nRst, $0C
	dc.b	nF4, $06, nRst, $0E, nF4, $06, nRst, $16, nRst, $0C, nG4, $06
	dc.b	nRst, $0E, nG4, $04, nRst, $0C, nG4, $06, nRst, $0E, nG4, $04
	dc.b	nRst, $0C, nA4, $0C, nRst, $0C, nA4, $04
	smpsSetvoice        $06
	smpsFMAlterVol      $F9
	smpsPan             panRight, $00
	dc.b	nB2, $04, nRst, $04, nD5, $08, nRst, $04, nD5, $08, nRst, $04
	smpsSetvoice        $02
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nAb4, $06, nRst, $0E, nAb4, $0C, nRst, $04, nAb4, nRst, $08, nRst
	dc.b	$0C, nG4, $04, nRst, $10, nG4, $04, nRst, $08, nA3, $04, nG4
	dc.b	$06, nRst, $02, nA5, $06, nRst, nG4, $04, nRst, $0C, nF4, $0C
	dc.b	smpsNoAttack, nF4, $0C, nF4, $04, nRst, $10, nF4, $04, nRst, $0C, nBb4
	dc.b	$06, nRst, nBb4, nRst, nEb5, $04, nRst, $14, nRst, $0C, nG4, $06
	dc.b	nRst, $0E, nG4, $04, nRst, $0C, nG4, $06, nRst, $0E, nG4, $04
	dc.b	nRst, $18, nRst, $08, nF4, $04, nRst, $0C, nF4, nRst, $08, nF4
	dc.b	$04, nRst, $0C, nF4, nRst, $08, nF4, $04, nRst, $0C
	smpsJump            Snd_Credits_Jump04

; FM3 Data
Snd_Credits_FM3:
	smpsSetvoice        $02
	smpsPan             panLeft, $00
	smpsModSet          $07, $01, $03, $05
	dc.b	nRst, $0C, nC5, $04, nRst, $08, nA3, $04, nRst, nC5, nRst, $08
	dc.b	nA3, $04, nC5, $06, nRst, $0E, nC5, $04, nG3, $0C, nD5, smpsNoAttack
	dc.b	nD5, nC5, $04, nRst, $08, nC4, $06, nRst, $02, nC5, $04, nRst
	dc.b	$08, nBb3, $04, nC5, $06, nRst, $0E, nC5, $06, nRst, $16, nRst
	dc.b	$0C, nE5, $06, nRst, nF2, $04, nRst, nC5, nRst, $0C, nC5, $06
	dc.b	nRst, $0E, nC5, $04, nRst, $0C, nD5, nRst, nD5, $06, nRst, nB3
	dc.b	$04, nRst, nD5, nB3, nRst, $08, nG5, $06, nRst, $0E, nG5, $0C
	dc.b	nRst, $04, nF5, nRst, nA3, nRst, $0C, nC5, $04, nRst, $08, nA3
	dc.b	$04, nRst, nC5, nRst, $08, nA3, $04, nC5, $06, nRst, $0E, nC5
	dc.b	$04, nG3, $0C, nD5, smpsNoAttack, nD5, nC5, $04, nRst, $10, nC5, $04
	dc.b	nRst, $08, nBb3, $04, nA5, $06, nRst, nG5, nRst, $02, nC4, $04
	dc.b	nE5, $06, nRst, nD5, nRst, $02, nC5, $04, nRst, $0C, nE5, $06
	dc.b	nRst, nF2, nRst, $02, nC5, $04, nRst, $0C, nD5, $06, nRst, $0E
	dc.b	nD5, $04, nRst, $18, nRst, $08, nC5, $04, nRst, $0C, nC5, nRst
	dc.b	$08, nC5, $04, nRst, $0C, nC5, nRst, $08, nC5, $04, nRst, $0C

Snd_Credits_Jump03:
	dc.b	nRst, nC5, $04, nRst, $08, nA3, $04, nRst, nC5, nRst, $08, nA3
	dc.b	$04, nC5, $06, nRst, $0E, nC5, $04, nG3, $0C, nD5, smpsNoAttack, nD5
	dc.b	nC5, $04, nRst, $08, nC4, $06, nRst, $02, nC5, $04, nRst, $08
	dc.b	nBb3, $04, nC5, $06, nRst, $0E, nC5, $06, nRst, $16, nRst, $0C
	dc.b	nE5, $06, nRst, nF2, $04, nRst, nC5, nRst, $0C, nC5, $06, nRst
	dc.b	$0E, nC5, $04, nRst, $0C, nD5, nRst, nD5, $06, nRst, nB3, $04
	dc.b	nRst, nD5, nB3, nRst, $08, nG5, $06, nRst, $0E, nG5, $0C, nRst
	dc.b	$04, nF5, nRst, nA3, nA2, $0C, nE5, $06, nRst, nA3, $04, nRst
	dc.b	nE5, nRst, $08, nA3, $04, nE5, $06, nRst, $0E, nE5, $04, nRst
	dc.b	$08, nA3, $04, nD5, $0C, nC3, $04, nRst, $08, nC5, $04, nRst
	dc.b	$10, nC5, $04, nRst, $08, nBb3, $04, nA5, $06, nRst, nG5, nRst
	dc.b	$02, nC4, $04, nE5, $06, nRst, nD5, nRst, $02, nC5, $04, nRst
	dc.b	$0C, nE5, $06, nRst, nF2, nRst, $02, nC5, $04, nRst, $0C, nC5
	dc.b	$06, nRst, $0E, nC5, $04, nRst, $18, nRst, $08, nD5, $04, nRst
	dc.b	$0C, nD5, nRst, $08, nD5, $04, nRst, $0C, nD5, nRst, $08, nD5
	dc.b	$04, nRst, $0C, nRst, nC5, $04, nRst, $08, nA3, $04, nRst, nC5
	dc.b	nRst, $08, nA3, $04, nC5, $06, nRst, $0E, nC5, $04, nG3, $0C
	dc.b	nRst, nRst, nG4, $04, nRst, $08, nC3, $06, nRst, $02, nG4, $04
	dc.b	nRst, $08, nG3, $04, nG4, $06, nRst, $02, nG5, $04, nA5, $06
	dc.b	nRst, $02, nC6, $04, nRst, $18, nRst, $0C, nC5, $04, nRst, $08
	dc.b	nA3, $04, nRst, nC5, nRst, $08, nA3, $04, nC5, $06, nRst, $0E
	dc.b	nC5, $04, nG3, $0C, nRst, nRst, nD5, $04, nRst, $08, nC3, $06
	dc.b	nRst, $02, nD5, $04, nRst, $08, nG3, $04, nG4, $06, nRst, $02
	dc.b	nG6, $06, nRst, nE6, nRst, $0A, nD6, $06, nRst, $02, nC6, $04
	dc.b	nRst, $0C, nC5, $04, nRst, $08, nA3, $04, nRst, nC5, nRst, $08
	dc.b	nA3, $04, nC5, $06, nRst, $0E, nC5, $04, nG3, $0C, nRst, nRst
	dc.b	nD5, $04, nRst, $08, nC3, $06, nRst, $02, nD5, $04, nRst, $08
	dc.b	nG3, $04, nD5, $06, nRst, $02, nG5, $04, nA5, $06, nRst, $02
	dc.b	nC6, $04, nRst, $18, nRst, $60, nRst, nRst, $0C, nC5, $04, nRst
	dc.b	$08, nA3, $04, nRst, nG6, nRst, $08, nE6, $04, nC5, $06, nRst
	dc.b	$02, nD6, $06, nRst, nC6, $04, nG3, $0C, nD5, smpsNoAttack, nD5, nC5
	dc.b	$04, nRst, $08, nC4, $06, nRst, $02, nC5, $04, nRst, $08, nBb3
	dc.b	$04, nC5, $06, nRst, $0E, nC5, $06, nRst, $16, nRst, $0C, nE5
	dc.b	$06, nRst, nF2, $04, nRst, nC5, nRst, $0C, nC5, $06, nRst, $0E
	dc.b	nC5, $04, nRst, $0C, nD5, nRst, nD5, $06, nRst, nB3, $04, nRst
	dc.b	nD5, nB3, nRst, $08, nG5, $06, nRst, $0E, nG5, $0C, nRst, $04
	dc.b	nF5, nRst, nA3, nRst, $0C, nC5, $04, nRst, $08, nA3, $04, nRst
	dc.b	nG6, nRst, $08, nE6, $04, nC5, $06, nRst, $02, nD6, $06, nRst
	dc.b	nC6, $04, nG3, $0C, nD5, smpsNoAttack, nD5, nC5, $04, nRst, $10, nC5
	dc.b	$04, nRst, $08, nBb3, $04, nA5, $06, nRst, nG5, nRst, $02, nC4
	dc.b	$04, nE5, $06, nRst, nD5, nRst, $02, nC5, $04, nRst, $0C, nE5
	dc.b	$06, nRst, nF2, nRst, $02, nC5, $04, nRst, $0C, nC5, $06, nRst
	dc.b	$0E, nC5, $04, nRst, $18, nRst, $08, nC5, $04, nRst, $0C, nC5
	dc.b	nRst, $08, nC5, $04, nRst, $0C, nC5, nRst, $08, nC5, $04, nRst
	dc.b	$0C
	smpsJump            Snd_Credits_Jump03

; FM4 Data
Snd_Credits_FM4:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $03
	smpsPan             panRight, $00
	dc.b	nG4, $24, $06, nRst, $12, nG4, $06, nRst, $12, nBb4, $0C, smpsNoAttack
	dc.b	$30, $18, nBb4, nA4, $2A, nRst, $12, nA4, $06, nRst, $12, nA4
	dc.b	$0C, smpsNoAttack, $24, nAb4, $3C
	smpsSetvoice        $04
	smpsAlterPitch      $F4
	smpsFMAlterVol      $04
	smpsPan             panCenter, $00
	dc.b	nB6, $3C, nG6, $0C, nE6, $0C, nA6, $0C, smpsNoAttack, nA6, $3C, nG6
	dc.b	$0C, nE6, $18
	smpsSetvoice        $03
	smpsAlterPitch      $0C
	smpsFMAlterVol      $FC
	smpsPan             panRight, $00
	dc.b	nRst, $0C, nG4, $02, nA4, $0A, nG4, $0C, nC4, $18, nD4, $02
	dc.b	nE4, $0A, nD4, $0C, nG3, smpsNoAttack, nG3, $30, nRst

Snd_Credits_Jump02:
	smpsSetvoice        $07
	smpsFMAlterVol      $06
	smpsPan             panLeft, $00
	dc.b	nD5, $10, nG4, $04, nRst, $0C, nG4, $04, nRst, $08, nG4, $04
	smpsSetvoice        $03
	smpsFMAlterVol      $FA
	smpsPan             panRight, $00
	dc.b	nRst, $08, nG4, $04, nA4, $08, nC5, $08, nRst, $14
	smpsSetvoice        $07
	smpsFMAlterVol      $06
	smpsPan             panLeft, $00
	dc.b	nRst, $18, nF4, $08, nRst, $04, nF4, $08, nRst, $0C, nG4, $04
	dc.b	nRst, $08, nG4, $04, nRst, $18, nRst, $18, nA4, $0C, nE4, $08
	dc.b	nRst, $0C
	smpsSetvoice        $03
	smpsFMAlterVol      $FA
	smpsPan             panRight, $00
	dc.b	nG4, $04, nA4, $08, nC5, $08, nRst, $14
	smpsSetvoice        $07
	smpsFMAlterVol      $06
	smpsPan             panLeft, $00
	dc.b	nRst, $18, nE4, $08, nRst, $04, nE4, $08, nRst, $34
	smpsSetvoice        $03
	smpsFMAlterVol      $FA
	smpsPan             panRight, $00
	dc.b	nRst, $08, nAb4, $04, nRst, $08
	smpsSetvoice        $07
	smpsFMAlterVol      $06
	smpsPan             panLeft, $00
	dc.b	nE4, $04, nRst, $08, nE4, $04, nRst, $08, nE4, $04, nRst, $08
	smpsSetvoice        $03
	smpsFMAlterVol      $FA
	smpsPan             panRight, $00
	dc.b	nAb4, $04, nRst, $24
	smpsSetvoice        $07
	smpsFMAlterVol      $06
	smpsPan             panLeft, $00
	dc.b	nRst, $2C, nG4, $04, nRst, $08, nG4, $04, nRst, $08, nG4, $04
	dc.b	nRst, $18
	smpsSetvoice        $03
	smpsFMAlterVol      $FA
	smpsPan             panRight, $00
	dc.b	nRst, $08, nG4, $04, nRst, $20, nG4, $04, nRst, $08, nG4, $04
	dc.b	nRst, $20, nG4, $04, nA4, $08, nRst, $04, nA4, $08, nRst, $04
	smpsSetvoice        $07
	smpsFMAlterVol      $06
	smpsPan             panLeft, $00
	dc.b	nE4, $08, nRst, $04, nE4, $08, nRst, $04
	smpsSetvoice        $03
	smpsFMAlterVol      $FA
	smpsPan             panRight, $00
	dc.b	nAb4, $0C, nRst, $08, nAb4, $04, nRst, $18
	smpsSetvoice        $07
	smpsFMAlterVol      $06
	smpsPan             panLeft, $00
	dc.b	nD3, $0C
	smpsSetvoice        $03
	smpsFMAlterVol      $FA
	smpsPan             panRight, $00
	dc.b	nRst, $2C, nG4, $08, nRst, $20, nRst, $60
	smpsSetvoice        $07
	smpsFMAlterVol      $06
	smpsPan             panLeft, $00
	dc.b	nRst, $18, nD3, $0C
	smpsSetvoice        $03
	smpsFMAlterVol      $FA
	smpsPan             panRight, $00
	dc.b	nRst, $14, nG4, $08, nRst, $20, nRst, $60
	smpsSetvoice        $07
	smpsFMAlterVol      $06
	smpsPan             panLeft, $00
	dc.b	nD3, $0C
	smpsSetvoice        $03
	smpsFMAlterVol      $FA
	smpsPan             panRight, $00
	dc.b	nRst, $2C, nG4, $08, nRst, $20, nRst, $60
	smpsSetvoice        $04
	smpsFMAlterVol      $04
	smpsPan             panCenter, $00
	dc.b	nFs5, $18, nA5, $18, nRst, $0C, nCs6, $0C, nD6, $0C, nE6, $0C
	dc.b	nRst, $0C, nE5, $06, nRst, $06, nE5, $12, nE5, $06, nRst, $30
	smpsSetvoice        $05
	smpsAlterPitch      $F4
	smpsFMAlterVol      $04
	smpsModSet          $07, $01, $05, $07
	dc.b	nB6, $30, nG6, $24, nE6, $0C, smpsNoAttack, $2A, nRst, $06, nE6, $0C
	dc.b	nF6, $0C, nG6, $18, nE6, $18, nD6, $0C, nC6, $0C, nRst, $0C
	dc.b	nD6, $0C, nRst, $0C, nE6, $0C, smpsNoAttack, nE6, $18, nF6, $0C, nD6
	dc.b	$24, nC6, $0C, nB5, $0C, nB6, $30, nG6, $24, nE6, $0C, smpsNoAttack
	dc.b	$60
	smpsSetvoice        $03
	smpsAlterPitch      $0C
	smpsFMAlterVol      $F8
	smpsModSet          $07, $01, $03, $05
	smpsPan             panRight, $00
	dc.b	nRst, $06, nG4, nRst, $0C, nG4, $12, $06, nRst, $30
	smpsSetvoice        $07
	smpsFMAlterVol      $02
	smpsPan             panLeft, $00
	dc.b	nRst, $40, nA5, $02, nG5, nF5, nE5, nD5, nC5, nB4, nA4, nG4
	dc.b	nF4, nE4, nD4, nC4, nB3, nA3, nG3
	smpsFMAlterVol      $FE
	smpsPan             panRight, $00
	smpsJump            Snd_Credits_Jump02

; FM5 Data
Snd_Credits_FM5:
	smpsSetvoice        $03
	smpsPan             panRight, $00
	smpsModSet          $07, $01, $03, $05
	dc.b	nRst, $02, nC5, nD5, nE5, $12, nD5, $0C, nC5, $06, nRst, $12
	dc.b	nD5, $06, nRst, $12, nE5, $0C, smpsNoAttack, $30, $0C, nF5, nG5, $18
	dc.b	nE5, nD5, $0C, nC5, $06, nRst, $12, nD5, $06, nRst, $12, nE5
	dc.b	$0C, smpsNoAttack, $18, nF5, $0C, nD5, $3C, nRst, $02, nC5, nD5, nE5
	dc.b	$12, nD5, $0C, nC5, $06, nRst, $12, nD5, $06, nRst, $12, nE5
	dc.b	$0C, smpsNoAttack, $30, $0C, nF5, nG5, $18, nRst, $0C, nG5, $02, nA5
	dc.b	$0A, nG5, $0C, nC5, $18, nD5, $02, nE5, $0A, nD5, $0C, nG4
	dc.b	smpsNoAttack, nG4, $30, nRst

Snd_Credits_Jump01:
	dc.b	nRst, $38, nC5, $04, nA4, $08, nC5, nRst, $14, nRst, $38, nC5
	dc.b	$08, nRst, $20, nRst, $38, nC5, $04, nA4, $08, nC5, nRst, $14
	dc.b	nRst, $60, nRst, $08, nCs5, $04, nRst, $2C, nCs5, $04, nRst, $24
	dc.b	nRst, $60, nRst, $08, nC5, $04, nRst, $20, nC5, $04, nRst, $08
	dc.b	nC5, $04, nRst, $20, nC5, $04, nD5, $08, nRst, $04, nD5, $08
	dc.b	nRst, $0C, nD5, $04, nRst, $0C, nD5, nRst, $08, nD5, $04, nRst
	dc.b	$18, nRst, $38, nC5, $08, nRst, $20, nRst, $60, nRst, $38, nC5
	dc.b	$08, nRst, $20, nRst, $60, nRst, $38, nC5, $08, nRst, $20, nRst
	dc.b	$60, nRst
	smpsSetvoice        $07
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nRst, $12, nE3, $06, nRst, $12, nE3, $06, nRst, $0C, nE3, nRst
	dc.b	$06, nE3, nRst, $0C
	smpsSetvoice        $03
	smpsFMAlterVol      $F9
	smpsPan             panRight, $00
	dc.b	nRst, $02, nC5, nD5, nE5, $12, nD5, $0C, nC5, $06, nRst, $12
	dc.b	nD5, $06, nRst, $12, nE5, $0C, smpsNoAttack, $30, $0C, nF5, nG5, $18
	dc.b	nE5, nD5, $0C, nC5, $06, nRst, $12, nD5, $06, nRst, $12, nE5
	dc.b	$0C, smpsNoAttack, nE5, $10
	smpsSetvoice        $07
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	dc.b	nB2, $04, nRst, $04, nD5, $08, nRst, $04, nD5, $08
	smpsSetvoice        $03
	smpsFMAlterVol      $F9
	smpsPan             panRight, $00
	dc.b	nD5, $34, nRst, $02, nC5, nD5, nE5, $12, nD5, $0C, nC5, $06
	dc.b	nRst, $12, nD5, $06, nRst, $12, nE5, $0C, smpsNoAttack, $60, nRst, $06
	dc.b	nC5, nRst, $0C, nC5, $12, $06, nRst, $30, nRst, $60
	smpsJump            Snd_Credits_Jump01

; PSG1 Data
Snd_Credits_PSG1:
	smpsPSGvoice        sTone_06
	smpsAlterPitch      $0C
	smpsPSGAlterVol     $01
	dc.b	nG4, $24, $06, nRst, $12, nG4, $06, nRst, $12, nBb4, $0C, smpsNoAttack
	dc.b	$30, $18, nBb4, nA4, $2A, nRst, $12, nA4, $06, nRst, $12, nA4
	dc.b	$0C, smpsNoAttack, $24, nAb4, $36
	smpsAlterPitch      $F4
	dc.b	nB6, $02, nG6, $02, nE6, $02, nD6, $54, nBb5, $0C, smpsNoAttack, $30
	dc.b	$0C, nG5, nE5, nE5, smpsNoAttack, nE5, $24, nD5, nC5, $0C, nC5, smpsNoAttack
	dc.b	nC5, $30, nRst, $30
	smpsPSGAlterVol     $FF

Snd_Credits_Jump07:
	dc.b	nRst, $60, nRst, nRst, nRst
	smpsPSGvoice        sTone_22
	dc.b	nRst, $0C, nB6, $08, nE6, $04, nAb5, $48, nRst, $60, nRst
	smpsPSGAlterVol     $FE
	dc.b	nRst, $30, nAb5, $18, nBb5, $18, nRst, $48, nC5, $0C, nB4, $0C
	dc.b	smpsNoAttack, nB4, $60, nRst, $48, nC5, $0C, nB4, $0C, smpsNoAttack, nB4, $60
	dc.b	nRst, $48, nC5, $0C, nB4, $0C, smpsNoAttack, nB4, $48, nB4, $0C, nA4
	dc.b	$0C, smpsNoAttack, nA4, $60, nRst
	smpsPSGAlterVol     $02
	smpsAlterPitch      $0C
	smpsPSGAlterVol     $01
	dc.b	nG4, $24, $06, nRst, $12, nG4, $06, nRst, $12, nBb4, $0C, smpsNoAttack
	dc.b	$30, $18, nBb4, nA4, $2A, nRst, $12, nA4, $06, nRst, $12, nA4
	dc.b	$0C, smpsNoAttack, $24, nAb4, $3C, nG4, $24, $06, nRst, $12, nG4, $06
	dc.b	nRst, $12, nBb4, $0C, smpsNoAttack, $60
	smpsAlterPitch      $F4
	smpsPSGAlterVol     $FF
	dc.b	nRst, nRst
	smpsJump            Snd_Credits_Jump07

; PSG2 Data
Snd_Credits_PSG2:
	smpsPSGvoice        sTone_06
	smpsAlterPitch      $0C
	smpsPSGAlterVol     $01
	dc.b	nRst, $02, nC5, nD5, nE5, $12, nD5, $0C, nC5, $06, nRst, $12
	dc.b	nD5, $06, nRst, $12, nE5, $0C, smpsNoAttack, $30, $0C, nF5, nG5, $18
	dc.b	nE5, nD5, $0C, nC5, $06, nRst, $12, nD5, $06, nRst, $12, nE5
	dc.b	$0C, smpsNoAttack, $18, nF5, $0C, nD5, $36
	smpsAlterPitch      $F4
	dc.b	nB6, $02, nG6, $02, nE6, $02, nB6, $54, nE6, $0C, smpsNoAttack, nE6
	dc.b	$30, nG6, $0C, nA6, $06, nRst, $12, nC6, $0C, smpsNoAttack, $24, nB5
	dc.b	$24, nA5, $0C, nA5, $0C, smpsNoAttack, nA5, $30, nRst, $30
	smpsPSGAlterVol     $FF

Snd_Credits_Jump06:
	dc.b	nRst, $60, nRst, nRst, nRst
	smpsPSGvoice        sTone_22
	dc.b	nRst, $0C, nB6, $04, nAb6, $08, nCs6, $48, nRst, $60, nRst
	smpsPSGAlterVol     $FE
	dc.b	nRst, $30, nG6, $18, nF6, $18, nRst, $48, nA5, $0C, nG5, $0C
	dc.b	smpsNoAttack, nG5, $60, nRst, $48, nA5, $0C, nG5, $0C, smpsNoAttack, nG5, $60
	dc.b	nRst, $48, nA5, $0C, nG5, smpsNoAttack, nG5, $48, nG5, $0C, nFs5, $0C
	dc.b	smpsNoAttack, nFs5, $60, nRst
	smpsPSGAlterVol     $02
	smpsAlterPitch      $0C
	smpsPSGAlterVol     $01
	dc.b	nRst, $02, nC5, nD5, nE5, $12, nD5, $0C, nC5, $06, nRst, $12
	dc.b	nD5, $06, nRst, $12, nE5, $0C, smpsNoAttack, $30, $0C, nF5, nG5, $18
	dc.b	nE5, nD5, $0C, nC5, $06, nRst, $12, nD5, $06, nRst, $12, nE5
	dc.b	$0C, smpsNoAttack, $18, nF5, $0C, nD5, $3C, nRst, $02, nC5, nD5, nE5
	dc.b	$12, nD5, $0C, nC5, $06, nRst, $12, nD5, $06, nRst, $12, nE5
	dc.b	$0C
	smpsAlterPitch      $F4
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $60, nRst, nRst
	smpsJump            Snd_Credits_Jump06

; PSG3 Data
Snd_Credits_PSG3:
	smpsPSGform         $E7

Snd_Credits_Loop00:
	smpsCall            Snd_Credits_Call05
	smpsLoop            $00, $03, Snd_Credits_Loop00
	smpsCall            Snd_Credits_Call06
	smpsCall            Snd_Credits_Call07

Snd_Credits_Loop01:
	smpsCall            Snd_Credits_Call05
	smpsLoop            $00, $03, Snd_Credits_Loop01
	smpsCall            Snd_Credits_Call08
	smpsCall            Snd_Credits_Call09

Snd_Credits_Loop02:
	smpsCall            Snd_Credits_Call05
	smpsLoop            $00, $03, Snd_Credits_Loop02
	smpsCall            Snd_Credits_Call08
	smpsCall            Snd_Credits_Call0A

Snd_Credits_Loop03:
	smpsCall            Snd_Credits_Call05
	smpsLoop            $00, $03, Snd_Credits_Loop03
	smpsCall            Snd_Credits_Call08
	smpsCall            Snd_Credits_Call0B
	smpsJump            Snd_Credits_Loop01

Snd_Credits_Call08:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $0C
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$08
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$04
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$0C
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsReturn

Snd_Credits_Call05:
	smpsPSGvoice        sTone_0F
	dc.b	$0C, $0C
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$08
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$04
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$0C
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$0C, $0C
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$08
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$04
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$08, $04
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsReturn

Snd_Credits_Call06:
	smpsPSGvoice        sTone_0F
	dc.b	$08, $04
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$0C, $08, $04
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$0C, $08, $04
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsReturn

Snd_Credits_Call07:
	smpsPSGvoice        sTone_12
	dc.b	$18, $18, $14
	smpsPSGvoice        sTone_0F
	dc.b	$04, $08, $04
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsReturn

Snd_Credits_Call09:
	smpsPSGvoice        sTone_0F
	dc.b	$08, $04
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$08
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$04, $0C, $0C
	smpsPSGvoice        sTone_12
	dc.b	$08
	smpsPSGvoice        sTone_0F
	dc.b	$04
	smpsPSGvoice        sTone_12
	dc.b	$08
	smpsPSGvoice        sTone_0F
	dc.b	$04
	smpsReturn

Snd_Credits_Call0A:
	smpsPSGvoice        sTone_0F
	dc.b	$08, $04
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$08, $04
	smpsPSGvoice        sTone_12
	dc.b	$0C, $14
	smpsPSGvoice        sTone_0F
	dc.b	$04, $08, $04
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsReturn

Snd_Credits_Call0B:
	smpsPSGvoice        sTone_0F
	dc.b	$08, $04
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$08
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$04, $14, $04
	smpsPSGvoice        sTone_12
	dc.b	$08
	smpsPSGvoice        sTone_0F
	dc.b	$04
	smpsPSGvoice        sTone_12
	dc.b	$08
	smpsPSGvoice        sTone_0F
	dc.b	$04
	smpsReturn

; DAC Data
Snd_Credits_DAC:
	dc.b	nRst, $60
	smpsLoop            $00, $07, Snd_Credits_DAC
	dc.b	nRst, $30, dMuffledSnare, $12, $18, $06

Snd_Credits_Jump00:
	smpsCall            Snd_Credits_Call00
	smpsCall            Snd_Credits_Call01
	smpsCall            Snd_Credits_Call00
	smpsCall            Snd_Credits_Call02
	smpsCall            Snd_Credits_Call00
	smpsCall            Snd_Credits_Call01
	smpsCall            Snd_Credits_Call00
	smpsCall            Snd_Credits_Call03
	smpsCall            Snd_Credits_Call00
	smpsCall            Snd_Credits_Call01
	smpsCall            Snd_Credits_Call00
	smpsCall            Snd_Credits_Call04
	smpsJump            Snd_Credits_Jump00

Snd_Credits_Call00:
	dc.b	dKickS3, $0C, dFloorTomS3, $0C, dSnareS3, $12, dKickS3, $06, $0C, $0C, dSnareS3, $06
	dc.b	dFloorTomS3, $12, dKickS3, $18, dSnareS3, $12, dKickS3, $06, $0C, $0C, dSnareS3, $06
	dc.b	dFloorTomS3, $12, dKickS3, $0C, dFloorTomS3, $0C, dSnareS3, $12, dKickS3, $06, $0C, $0C
	dc.b	dSnareS3, $06, dFloorTomS3, $12
	smpsReturn

Snd_Credits_Call01:
	dc.b	dKickS3, $18, dSnareS3, $12, dKickS3, $06, $0C, $0C, dSnareS3, $06, dFloorTomS3, $0C
	dc.b	dMuffledSnare, $06
	smpsReturn

Snd_Credits_Call02:
	dc.b	dKickS3, $18, dSnareS3, $12, dKickS3, $06, $0C, $06, dMuffledSnare, $06, dSnareS3, $06
	dc.b	dFloorTomS3, $0C, dMuffledSnare, $06
	smpsReturn

Snd_Credits_Call03:
	dc.b	dKickS3, $0C, dMuffledSnare, $0C, dSnareS3, $12, dKickS3, $06, $0C, $06, dMuffledSnare, $06
	dc.b	dSnareS3, $06, dMuffledSnare, $12
	smpsReturn

Snd_Credits_Call04:
	dc.b	dKickS3, $0C, dMuffledSnare, $0C, dSnareS3, $12, dKickS3, $06, $06, dMuffledSnare, $06, dKickS3
	dc.b	$0C, dSnareS3, $06, dFloorTomS3, $0C, dMuffledSnare, $06
	smpsReturn

Snd_Credits_Voices:
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
;	$18
;	$37, $30, $30, $31, 	$9E, $DC, $1C, $9C, 	$0D, $06, $04, $01
;	$08, $0A, $03, $05, 	$BF, $BF, $3F, $2F, 	$2C, $22, $14, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $00, $07
	smpsVcRateScale     $02, $00, $03, $02
	smpsVcAttackRate    $1C, $1C, $1C, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $04, $06, $0D
	smpsVcDecayRate2    $05, $03, $0A, $08
	smpsVcDecayLevel    $02, $03, $0B, $0B
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $14, $22, $2C

;	Voice $02
;	$3A
;	$31, $7F, $61, $0A, 	$9C, $DB, $9C, $9A, 	$04, $08, $03, $09
;	$03, $01, $00, $00, 	$1F, $0F, $FF, $FF, 	$23, $25, $1B, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $06, $07, $03
	smpsVcCoarseFreq    $0A, $01, $0F, $01
	smpsVcRateScale     $02, $02, $03, $02
	smpsVcAttackRate    $1A, $1C, $1B, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $03, $08, $04
	smpsVcDecayRate2    $00, $00, $01, $03
	smpsVcDecayLevel    $0F, $0F, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1B, $25, $23

;	Voice $03
;	$3B
;	$0F, $06, $00, $01, 	$DF, $1F, $1F, $DF, 	$0C, $00, $0A, $03
;	$0F, $00, $00, $01, 	$FF, $0F, $5F, $5F, 	$22, $22, $22, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $00, $06, $0F
	smpsVcRateScale     $03, $00, $00, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0A, $00, $0C
	smpsVcDecayRate2    $01, $00, $00, $0F
	smpsVcDecayLevel    $05, $05, $00, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $22, $22, $22

;	Voice $04
;	$3C
;	$31, $52, $50, $30, 	$1F, $11, $1F, $11, 	$1F, $1F, $1F, $1F
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$1A, $86, $16, $86
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $05, $05, $03
	smpsVcCoarseFreq    $00, $00, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $11, $1F, $11, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $1F, $1F
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $06, $16, $06, $1A

;	Voice $05
;	$38
;	$31, $51, $31, $71, 	$17, $18, $1A, $11, 	$17, $16, $0B, $00
;	$00, $00, $00, $00, 	$1F, $1F, $0F, $0F, 	$20, $11, $21, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $05, $03
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $11, $1A, $18, $17
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0B, $16, $17
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $21, $11, $20

;	Voice $06
;	$3B
;	$52, $31, $31, $51, 	$12, $14, $12, $14, 	$0E, $00, $0E, $02
;	$00, $00, $00, $01, 	$4F, $0F, $5F, $3F, 	$1C, $18, $1D, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $03, $05
	smpsVcCoarseFreq    $01, $01, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $12, $14, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $0E, $00, $0E
	smpsVcDecayRate2    $01, $00, $00, $00
	smpsVcDecayLevel    $03, $05, $00, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1D, $18, $1C

;	Voice $07
;	$3C
;	$31, $52, $50, $30, 	$52, $53, $52, $53, 	$08, $00, $08, $00
;	$04, $00, $04, $00, 	$1F, $0F, $1F, $0F, 	$1A, $80, $16, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $05, $05, $03
	smpsVcCoarseFreq    $00, $00, $02, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $13, $12, $13, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $08, $00, $08
	smpsVcDecayRate2    $00, $04, $00, $04
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $16, $00, $1A

