Snd_SSZ1_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_SSZ1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       Snd_SSZ1_DAC
	smpsHeaderFM        Snd_SSZ1_FM1,	$00, $0E
	smpsHeaderFM        Snd_SSZ1_FM2,	$E8, $13
	smpsHeaderFM        Snd_SSZ1_FM3,	$F4, $15
	smpsHeaderFM        Snd_SSZ1_FM4,	$00, $16
	smpsHeaderFM        Snd_SSZ1_FM5,	$00, $16
	smpsHeaderPSG       Snd_SSZ1_PSG1,	$DC, $07, $00, sTone_11
	smpsHeaderPSG       Snd_SSZ1_PSG2,	$DC, $0B, $00, sTone_11
	smpsHeaderPSG       Snd_SSZ1_PSG3,	$23, $01, $00, $00

; FM1 Data
Snd_SSZ1_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	smpsModSet          $07, $01, $03, $05

Snd_SSZ1_Loop07:
	dc.b	nC4, $10, $08
	smpsLoop            $00, $04, Snd_SSZ1_Loop07
	dc.b	nC4, $08, $08, $08, $08, $08, $08, nC4, nA3, nG3, nE3, nD3
	dc.b	nC3

Snd_SSZ1_Loop08:
	dc.b	nC3, $18, nC3, nG3, nA3, $10, nG3, $08, nC3, $18, nC3, nG3
	dc.b	nC3, nE2, nE2, nB2, nCs3, $10, nB2, $08, nE2, $18, nE2, nB2
	dc.b	nE2, nF2, nF2, nC3, nD3, $10, nC3, $08, nF2, $18, nF2, nC3
	dc.b	nF2, nF2, nF2, nAb2, $10, nG2, $18, nF2, $08, smpsNoAttack, $10, $08
	dc.b	nG2, $18, nAb2, nBb2
	smpsLoop            $00, $02, Snd_SSZ1_Loop08
	dc.b	nC3, nC3, nG3, nA3, $10, nG3, $08, nE2, $18, nE2, nB2, nE2
	dc.b	nF2, nF2, nC3, nD3, $10, nC3, $08, nAb2, $18, nAb2, nEb3, nAb2
	dc.b	nC3, nC3, nG3, nA3, $10, nG3, $08, nRst, $10, nD3, $08, nG2
	dc.b	$18, nA2, nB2, $10, nC3, $08, smpsNoAttack, $18, nE3, nF3, nFs3, $10
	dc.b	nG3, $08, nRst, $10, nG3, $08, nG2, $18, nB2, nD3, nE3, nE3
	dc.b	nFs3, nFs3, $10, nAb3, $08, nRst, $10, nAb3, $08, nE3, $18, nFs3
	dc.b	nAb3, nA3, $06, nRst, $12, nA3, $18, nG3, $06, nRst, $12, nG3
	dc.b	$10, nF3, $08, smpsNoAttack, $06, nRst, $12, nF3, $18, nE3, $06, nRst
	dc.b	$12, nE3, $18, nD3, nD3, nE3, nE3, $10, nFs3, $08, nRst, $10
	dc.b	nFs3, $08, nD3, $18, nE3, nFs3, nG3, $06, nRst, $12, nG3, $18
	dc.b	nF3, $06, nRst, $12, nF3, $18, nE3, $06, nRst, $12, nE3, $18
	dc.b	nD3, nEb3, nE3, nE3, nFs3, nFs3, $10, nAb3, $08, nRst, $10, nAb3
	dc.b	$08, nE3, $18, nFs3, nAb3, nA3, $06, nRst, $12, nA3, $18, nAb3
	dc.b	$06, nRst, $12, nAb3, $18, smpsNoAttack, $08, nG3, $10, $18, nFs3, nFs3
	dc.b	nF3, nF3, nF3, nE3, $10, nF3, $08, nRst, $10, nF3, $08, nE3
	dc.b	$18, nF3, nFs3, nG3, $06, nRst, $12, nG3, $18, nF3, $06, nRst
	dc.b	$12, nF3, $18, nE3, $06, nRst, $12, nE3, $18, nD3, $10, nE3
	dc.b	$08, nD3, $10, nB2, $08, nC3, $18, nC3, nG2, nA2, $10, nG2
	dc.b	$08, nE2, $18, nFs2, nAb2, nE2, nA2, nA2, nAb2, nAb2, nG2, nG2
	dc.b	nFs2, nFs2, nF2, nA2, nC3, nF3, nEb3, nC3, nBb2, nAb2, nG2, nG2
	dc.b	nF2, $10, $18, nFs2, $08, nG2, $10, nG3, $08, nF3, $18, nE3
	dc.b	nD3, nC3, nC3, nG2, nC3, nE2, nFs2, nAb2, nE2, nA2, nA2, $10
	dc.b	nAb2, $20, $10, nG2, $08, smpsNoAttack, $18, nG2, nFs2, nFs2, nF2, nA2
	dc.b	nB2, nC3, nAb2, $30, nBb2
	smpsJump            Snd_SSZ1_Loop08

; FM2 Data
Snd_SSZ1_FM2:
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	smpsModSet          $07, $01, $03, $05

Snd_SSZ1_Jump00:
	dc.b	nA5, $48, $10, nBb5, $08, smpsNoAttack, $30, nA5

Snd_SSZ1_Loop06:
	dc.b	nG5, $30, nE5, $10, nF5, $08, nRst, $10, nG5, $08, nRst, $10
	dc.b	nC6, $08, nRst, $10, nC6, $08, nB5, $18, nG5, nAb5, $08, nRst
	dc.b	$10, nAb5, $08, nRst, $10, nE5, nFs5, $08, nRst, $10, nAb5, $08
	dc.b	nRst, $10, nB5, $08, nRst, $10, nA5, $02, nB5, $16, nA5, $08
	dc.b	nAb5, $18, nA5, $30, nF5, $10, nG5, $08, nRst, $10, nA5, $08
	dc.b	nRst, $10, nC6, $08, nRst, $10, nF6, $08, nE6, $18, nD6, nAb5
	dc.b	$08, nRst, $10, nAb5, $08, nRst, $10, nF5, nG5, $08, nRst, $10
	dc.b	nAb5, $08, smpsNoAttack, $60
	smpsLoop            $00, $02, Snd_SSZ1_Loop06
	dc.b	nG5, $30, nE5, $10, nF5, $08, nRst, $10, nAb5, $08, nRst, $10
	dc.b	nB5, $08, nRst, $10, nA5, $02, nB5, $16, nA5, $08, nAb5, $18
	dc.b	nA5, $30, nF5, $10, nG5, $08, nRst, $10, nAb5, $08, nRst, $10
	dc.b	nC6, $08, nRst, $10, nE6, $02, nF6, $16, nE6, $08, nD6, $18
	dc.b	nE6, $28, nC6, $20, nG5, $18, nRst, $10, nB5, $20, nC6, $08
	dc.b	nRst, $10, nD6, nC6, $08, smpsNoAttack, $60, smpsNoAttack, nC6, nRst, $18, nB5
	dc.b	$30, nAb5, $10, nE5, $08, smpsNoAttack, $28, nB5, $04, nC6, nD6, $18
	dc.b	nB5, nC6, $06, nRst, $12, nD6, $06, nRst, $12, nC6, $10, nB5
	dc.b	$08, nRst, $10, nA5, $08, smpsNoAttack, $60, nRst, $18, nA5, $30, nFs5
	dc.b	$10, nD5, $08, smpsNoAttack, $24, nA5, $04, nB5, nC6, nD6, $18, nA5
	dc.b	nC6, $28, nB5, $04, nC6, nB5, $18, nBb5, smpsNoAttack, nB5, $60, nRst
	dc.b	$18, nB5, $30, nAb5, $10, nE5, $08, smpsNoAttack, $24, nB5, $04, nC6
	dc.b	nD6, nE6, $18, nB5, nC6, $06, nRst, $12, nD6, $06, nRst, $12
	dc.b	nC6, $10, nB5, $08, nRst, $10, nC6, $08, smpsNoAttack, $10, $08, nB5
	dc.b	$18, nA5, nG5, nA5, $30, $10, nB5, $08, nC6, $10, nF6, $08
	dc.b	smpsNoAttack, $10, $08, nE6, $18, nF6, nFs6, nG6, $10, nD6, $0C, nRst
	dc.b	nB5, nRst, nA5, nRst, nAb5, $08, nG5, $60, nG5, $10, nC5, $08
	dc.b	nE5, $10, nF5, $08, nG5, $10, nFs5, $08, nG5, $10, nC6, $08
	dc.b	nB5, $10, nC6, $08, nB5, $10, nA5, $08, nRst, $10, nAb5, $18
	dc.b	nE5, $08, nA5, $10, nC5, $08, nE5, $10, nAb5, $08, nA5, $10
	dc.b	nAb5, $08, nA5, $10, nB5, $08, nC6, $10, nD6, $08, nC6, $10
	dc.b	nB5, $08, nC6, $10, nB5, $08, nA5, $10, nG5, $08, nA5, nC5
	dc.b	nF5, nC6, nA5, nF5, nF6, nC6, nA5, nC6, nA5, nF5, nAb5, nC5
	dc.b	nEb5, nC6, nAb5, nEb5, nEb6, nC6, nAb5, nC6, nAb5, nEb5, nG5, $10
	dc.b	nD5, $08, nG5, $10, nB5, $18, nA5, nAb5, $08, nG5, $60, $10
	dc.b	nC5, $08, nE5, $10, nF5, $08, nG5, $10, nFs5, $08, nG5, $10
	dc.b	nC6, $08, nB5, $10, nC6, $08, nB5, $10, nA5, $08, nRst, $10
	dc.b	nAb5, $18, nE5, $08, nA5, $10, nAb5, $08, nA5, $10, nB5, $18
	dc.b	nA5, $08, nB5, $10, nC6, $08, smpsNoAttack, $10, nD6, $08, nC6, $10
	dc.b	nB5, $08, nC6, $10, nB5, $08, nA5, $10, nG5, $08, nA5, nAb5
	dc.b	nA5, nC6, $10, nF6, $18, nE6, $08, nD6, $10, nC6, $08, nEb6
	dc.b	$30, nD6
	smpsJump            Snd_SSZ1_Loop06

; FM3 Data
Snd_SSZ1_FM3:
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	smpsModSet          $07, $01, $03, $05
	dc.b	nF4, $48, $10, $08, smpsNoAttack, $30, nF4

Snd_SSZ1_Loop05:
	dc.b	nE4, $30, nC4, $10, $08, nRst, $10, nE4, $08, nRst, $10, nG4
	dc.b	$08, nRst, $10, nG4, $08, $18, nE4, nE4, $08, nRst, $10, nE4
	dc.b	$08, nRst, $10, nB3, nB3, $08, nRst, $10, nE4, $08, nRst, $10
	dc.b	nAb4, $08, nRst, $10, nE4, $02, $16, $08, $18, nF4, $30, nC4
	dc.b	$10, $08, nRst, $10, nF4, $08, nRst, $10, nA4, $08, nRst, $10
	dc.b	nC5, $08, $18, nA4, nF4, $08, nRst, $10, nF4, $08, nRst, $10
	dc.b	nC4, nC4, $08, nRst, $10, nF4, $08
	smpsSetvoice        $03
	smpsAlterPitch      $0C
	smpsFMAlterVol      $02
	smpsPan             panRight, $00
	dc.b	nC7, $08, nAb6, nF6
	smpsPan             panCenter, $00
	dc.b	nC6, nF6, nC6
	smpsPan             panRight, $00
	dc.b	nAb5, nF5, nAb5
	smpsPan             panCenter, $00
	dc.b	nF5, nC5, nAb4
	smpsSetvoice        $02
	smpsAlterPitch      $F4
	smpsFMAlterVol      $FE
	smpsLoop            $00, $02, Snd_SSZ1_Loop05
	dc.b	nE4, $30, nC4, $10, $08, nRst, $10, nE4, $08, nRst, $10, nAb4
	dc.b	$08, nRst, $10, nE4, $02, $16, $08, $18, nF4, $30, nC4, $10
	dc.b	$08, nRst, $10, nF4, $08, nRst, $10, nAb4, $08, nRst, $10, nC5
	dc.b	$02, $16, $08, nAb4, $18
	smpsSetvoice        $03
	smpsAlterPitch      $0C
	smpsFMAlterVol      $02
	dc.b	nRst, $18
	smpsPan             panRight, $00
	dc.b	nC6
	smpsPan             panLeft, $00
	dc.b	nB5
	smpsPan             panCenter, $00
	dc.b	nA5
	smpsPan             panRight, $00
	dc.b	nG5
	smpsPan             panCenter, $00
	dc.b	nF5
	smpsPan             panLeft, $00
	dc.b	nE5
	smpsPan             panCenter, $00
	dc.b	nD5, $10
	smpsSetvoice        $02
	smpsAlterPitch      $F4
	smpsFMAlterVol      $FE
	dc.b	nG4, $08, smpsNoAttack, $60, smpsNoAttack, nG4, nRst, $18, nAb4, $30, nE4, $10
	dc.b	nB3, $08, smpsNoAttack, $28, nAb4, $04, nA4, nB4, $18, nAb4, nA4, $06
	dc.b	nRst, $12, nB4, $06, nRst, $12, nA4, $10, nG4, $08, nRst, $10
	dc.b	nE4, $08, smpsNoAttack, $60, nRst, $18, nFs4, $30, nD4, $10, nA3, $08
	dc.b	smpsNoAttack, $24, nFs4, $04, nG4, nA4, nA4, $18, nFs4, nA4, $28, nG4
	dc.b	$04, nA4, nG4, $18, nFs4, smpsNoAttack, nG4, $60, nRst, $18, nAb4, $30
	dc.b	nE4, $10, nB3, $08, smpsNoAttack, $24, nAb4, $04, nA4, nB4, nB4, $18
	dc.b	nAb4, nA4, $06, nRst, $12, nB4, $06, nRst, $12, nA4, $10, nAb4
	dc.b	$08, nRst, $10, nA4, $08, smpsNoAttack, $10, $08, nG4, $18, nFs4, nE4
	dc.b	nF4, $30, $10, nG4, $08, nA4, $10, nC5, $08, smpsNoAttack, $10, $08
	dc.b	nB4, $18, nC5, nC5, nD5, $10, nB4, $0C, nRst, nG4, nRst, nD4
	dc.b	nRst, nC4, $08, nB3, $60, nE4, $10, nG3, $08, nC4, $10, nD4
	dc.b	$08, nE4, $10, nEb4, $08, nE4, $10, nG4, $08, nAb4, $10, nA4
	dc.b	$08, nAb4, $10, nE4, $08, nRst, $10, nE4, $18, nB3, $08, nE4
	dc.b	$10, nA3, $08, nC4, $10, nEb4, $08, nE4, $10, nEb4, $08, nE4
	dc.b	$10, nAb4, $08, nA4, $10, nB4, $08, nA4, $10, nG4, $08, nA4
	dc.b	$10, nG4, $08, nE4, $10, nC4, $08, nF4, nA3, nC4, nA4, nF4
	dc.b	nC4, nC5, nA4, nF4, nA4, nF4, nC4, nEb4, nAb3, nC4, nAb4, nEb4
	dc.b	nC4, nC5, nAb4, nEb4, nAb4, nEb4, nC4, nD4, $10, nB3, $08, nD4
	dc.b	$10, nG4, $18, nE4, nEb4, $08, nD4, $60, nE4, $10, nG3, $08
	dc.b	nC4, $10, nD4, $08, nE4, $10, nEb4, $08, nE4, $10, nG4, $08
	dc.b	nAb4, $10, nA4, $08, nAb4, $10, nE4, $08, nRst, $10, nE4, $18
	dc.b	nB3, $08, nE4, $10, nEb4, $08, nE4, $10, nAb4, $18, nE4, $08
	dc.b	nAb4, $10, nA4, $08, smpsNoAttack, $10, $08, $10, nAb4, $08, nA4, $10
	dc.b	nAb4, $08, nE4, $10, $08, nF4, nE4, nF4, nA4, $10, nC5, $18
	dc.b	$08, nA4, $10, nG4, $08, nC5, $30, nBb4
	smpsJump            Snd_SSZ1_Loop05

; FM4 Data
Snd_SSZ1_FM4:
	smpsModSet          $07, $01, $03, $05
	smpsPan             panLeft, $00
	smpsSetvoice        $02
	smpsAlterPitch      $E8
	dc.b	nC5, $48, $10, nD5, $08, smpsNoAttack, $30, nC5
	smpsAlterPitch      $18

Snd_SSZ1_Loop04:
	smpsSetvoice        $01
	dc.b	nRst, $18, nC4, $08, nRst, $10, nC4, $30, nRst, $10, nC4, $08
	dc.b	nRst, $10, nC4, $08, $30, nRst, $18, nB3, $08, nRst, $10, nB3
	dc.b	$30, nRst, $10, nB3, $08, nRst, $10, nE4, $08, nRst, $10, nAb4
	dc.b	$08, nRst, $10, nE4, $08, nRst, $18, nC4, $08, nRst, $10, nC4
	dc.b	$30, nRst, $10, nC4, $08, nRst, $10, nC4, $08, $30, nRst, $18
	dc.b	nC4, $08, nRst, $10, nC4, $30, nC5, $18, nF5, nE5, nD5
	smpsLoop            $00, $02, Snd_SSZ1_Loop04
	smpsSetvoice        $01
	dc.b	nC4, $10, nE4, $50, nE4, $10, nAb4, $50, nF4, $10, nA4, $50
	dc.b	nF4, $10, nAb4, $50, nG4, $18, nC5, nB4, nA4, nRst, $10, nG4
	dc.b	$20, nA4, $18, nB4, $10, nG4, $08, smpsNoAttack, $60, smpsNoAttack, nG4, nRst
	dc.b	$18, nAb4, $08, nRst, $10, nE4, $28, nB3, $08, nRst, $10, nB3
	dc.b	$08, nE4, $18, nAb4, nB4, nRst, nA4, $08, nRst, $10, nE4, $28
	dc.b	nC5, $08, nRst, $10, nC5, $08, nB4, $18, nA4, nE4, nRst, nFs4
	dc.b	$08, nRst, $10, nD4, $28, nA3, $08, nRst, $10, nA3, $08, nD4
	dc.b	$18, nFs4, nA4, nRst, nG4, $08, nRst, $10, nD4, $28, nB4, $08
	dc.b	nRst, $10, nB4, $08, nA4, $18, nD4, nEb4, nRst, nAb4, $08, nRst
	dc.b	$10, nE4, $28, nB3, $08, smpsNoAttack, nB3, nE4, nAb4, nE4, nAb4, nB4
	dc.b	nAb4, nB4, nE5, nB4, nE5, nAb5, nA4, $18, nC5, $10, nA4, $08
	dc.b	nAb4, $18, nC5, $10, nAb4, $08, smpsNoAttack, nAb4, nG4, $10, nC5, nG4
	dc.b	$08, nFs4, $18, nC5, $10, nFs4, $08, nC4, $10, nF4, $08, nA4
	dc.b	$10, nF4, $08, nA4, nC5, nF5, nA5, nF5, nC5, nF5, $10, nC5
	dc.b	$08, nAb4, $10, nC5, $08, nAb5, nF5, nC5, nAb4, nF4, nC4, nD4
	dc.b	$10, nG4, $18, nD4, nG4, $08, nA4, $10, nBb4, $08, nB4, $0C
	dc.b	nRst, $24, nD5, $30, nG4, $08, nRst, $10, nE4, $08, nRst, $10
	dc.b	nC5, nG4, $08, nRst, $10, nAb4, $08, nRst, $10, nAb4, $08, nRst
	dc.b	$10, nA4, $08, nAb4, $18, nE4, nA4, nC5, $10, nA4, $08, nAb4
	dc.b	$18, nC5, $10, nAb4, $08, smpsNoAttack, nAb4, nG4, $10, nC5, nG4, $08
	dc.b	nFs4, $18, nC5, $10, nFs4, $08, nC4, $10, nF4, $08, nA4, $10
	dc.b	nF4, $08, nA4, nC5, nF5, nA5, nF5, nC5, nEb5, $10, nC5, $08
	dc.b	nAb4, $10, nAb5, $08, nEb5, nC5, nAb4, nEb4, nC4, nAb3, nD4, $10
	dc.b	nG4, $18, nD4, nG4, $08, nA4, $10, nBb4, $08, nB4, $10, nG4
	dc.b	$18, nD5, nD5, $08, nC5, $10, nB4, $08, nG4, nRst, $10, nE4
	dc.b	$08, nRst, $10, nC5, nG4, $08, nRst, $10, nAb4, $08, nRst, $10
	dc.b	nAb4, $08, nRst, $10, nA4, $08, nAb4, $18, nE4, nA4, $10, nC5
	dc.b	$08, nA4, $10, nAb4, $18, nC5, $08, nAb4, $10, nG4, $08, smpsNoAttack
	dc.b	$10, nC5, $08, nG4, $10, nFs4, nC5, nFs4, $18, nC4, $10, nF4
	dc.b	$08, nA4, $10, nF4, $08, nA4, nC5, nF5, nA5, nF5, nC5
	smpsSetvoice        $02
	smpsAlterPitch      $E8
	dc.b	nAb5, $30, nF5
	smpsAlterPitch      $18
	smpsJump            Snd_SSZ1_Loop04

; FM5 Data
Snd_SSZ1_FM5:
	smpsModSet          $07, $01, $03, $05
	smpsPan             panRight, $00
	smpsSetvoice        $02
	smpsAlterPitch      $E8
	dc.b	nC5, $48, $10, nD5, $08, smpsNoAttack, $30, nC5
	smpsAlterPitch      $18

Snd_SSZ1_Loop03:
	smpsSetvoice        $01
	dc.b	nRst, $18, nE4, $08, nRst, $10, nE4, $30, nRst, $10, nE4, $08
	dc.b	nRst, $10, nE4, $08, $30, nRst, $18, nE4, $08, nRst, $10, nE4
	dc.b	$30, nRst, $10, nE4, $08, nRst, $10, nAb4, $08, nRst, $10, nB4
	dc.b	$08, nRst, $10, nAb4, $08, nRst, $18, nF4, $08, nRst, $10, nF4
	dc.b	$30, nRst, $10, nF4, $08, nRst, $10, nF4, $08, $30, nRst, $18
	dc.b	nF4, $08, nRst, $10, nF4, $30, nF5, $18, nAb5, nG5, nF5
	smpsLoop            $00, $02, Snd_SSZ1_Loop03
	smpsSetvoice        $01
	dc.b	nRst, nG4, $10, nC5, $38, nRst, $18, nB4, $10, nE5, $38, nRst
	dc.b	$18, nC5, $10, nF5, $38, nRst, $18, nC5, $10, nF5, $38, nC5
	dc.b	$18, nE5, nD5, nC5, nRst, $10, nB4, $20, nC5, $18, nD5, $10
	dc.b	nC5, $08, smpsNoAttack, $60, smpsNoAttack, nC5, nRst, $18, nB4, $08, nRst, $10
	dc.b	nAb4, $28, nE4, $08, nRst, $10, nE4, $08, nAb4, $18, nB4, nD5
	dc.b	nRst, nC5, $08, nRst, $10, nA4, $28, nE5, $08, nRst, $10, nE5
	dc.b	$08, nD5, $18, nC5, nA4, nRst, nA4, $08, nRst, $10, nFs4, $28
	dc.b	nD4, $08, nRst, $10, nD4, $08, nFs4, $18, nA4, nC5, nRst, nB4
	dc.b	$08, nRst, $10, nG4, $28, nD5, $08, nRst, $10, nD5, $08, nC5
	dc.b	$18, nG4, nFs4, nRst, nB4, $08, nRst, $10, nAb4, $28, nE4, $08
	dc.b	smpsNoAttack, nE4, nAb4, nB4, nAb4, nB4, nE5, nB4, nE5, nAb5, nE5, nAb5
	dc.b	nB5, nA4, $18, nE5, $10, nA4, $08, nAb4, $18, nE5, $10, nAb4
	dc.b	$08, smpsNoAttack, nAb4, nG4, $10, nE5, nG4, $08, nFs4, $18, nE5, $10
	dc.b	nFs4, $08, nF4, $10, nA4, $08, nC5, $10, nA4, $08, nC5, nF5
	dc.b	nA5, nC6, nA5, nF5, nAb5, $10, nF5, $08, nC5, $10, nF5, $08
	dc.b	nC6, nAb5, nF5, nC5, nAb4, nF4, nG4, $10, nB4, $18, nG4, nB4
	dc.b	$08, nC5, $10, nCs5, $08, nD5, $0C, nRst, $24, nF5, $30, nC5
	dc.b	$08, nRst, $10, nG4, $08, nRst, $10, nE5, nC5, $08, nRst, $10
	dc.b	nB4, $08, nRst, $10, nB4, $08, nRst, $10, nC5, $08, nB4, $18
	dc.b	nAb4, nA4, nE5, $10, nA4, $08, nAb4, $18, nE5, $10, nAb4, $08
	dc.b	smpsNoAttack, nAb4, nG4, $10, nE5, nG4, $08, nFs4, $18, nE5, $10, nFs4
	dc.b	$08, nF4, $10, nA4, $08, nC5, $10, nA4, $08, nC5, nF5, nA5
	dc.b	nC6, nA5, nF5, nAb5, $10, nEb5, $08, nC5, $10, nC6, $08, nAb5
	dc.b	nEb5, nC5, nAb4, nEb4, nC4, nG4, $10, nB4, $18, nG4, nB4, $08
	dc.b	nC5, $10, nCs5, $08, nD5, $10, nB4, $18, nG5, nF5, $08, nE5
	dc.b	$10, nD5, $08, nC5, nRst, $10, nG4, $08, nRst, $10, nE5, nC5
	dc.b	$08, nRst, $10, nB4, $08, nRst, $10, nB4, $08, nRst, $10, nC5
	dc.b	$08, nB4, $18, nAb4, nA4, $10, nE5, $08, nA4, $10, nAb4, $18
	dc.b	nE5, $08, nAb4, $10, nG4, $08, smpsNoAttack, $10, nE5, $08, nG4, $10
	dc.b	nFs4, nE5, nFs4, $18, nF4, $10, nA4, $08, nC5, $10, nA4, $08
	dc.b	nC5, nF5, nA5, nC6, nA5, nF5
	smpsSetvoice        $02
	smpsAlterPitch      $E8
	dc.b	nAb5, $30, nF5
	smpsAlterPitch      $18
	smpsJump            Snd_SSZ1_Loop03

; PSG1 Data
Snd_SSZ1_PSG1:
	dc.b	nRst, $05
	smpsJump            Snd_SSZ1_Jump00

; PSG2 Data
Snd_SSZ1_PSG2:
	dc.b	nRst, $08
	smpsJump            Snd_SSZ1_Jump00

; PSG3 Data
Snd_SSZ1_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $08, $08, $08
	smpsPSGvoice        sTone_12
	dc.b	$18
	smpsPSGvoice        sTone_0F
	dc.b	$08, $08, $08
	smpsPSGvoice        sTone_12
	dc.b	$18
	smpsPSGvoice        sTone_0F
	dc.b	$08, $08, $08, nRst, $48

Snd_SSZ1_Loop0A:
	smpsCall            Snd_SSZ1_Call10

Snd_SSZ1_Loop09:
	smpsCall            Snd_SSZ1_Call11
	smpsLoop            $00, $07, Snd_SSZ1_Loop09
	smpsLoop            $01, $02, Snd_SSZ1_Loop0A

Snd_SSZ1_Loop0B:
	smpsCall            Snd_SSZ1_Call10
	smpsLoop            $00, $07, Snd_SSZ1_Loop0B
	smpsCall            Snd_SSZ1_Call12

Snd_SSZ1_Loop0C:
	smpsCall            Snd_SSZ1_Call13
	smpsLoop            $00, $07, Snd_SSZ1_Loop0C
	smpsCall            Snd_SSZ1_Call14
	smpsLoop            $01, $02, Snd_SSZ1_Loop0C
	smpsCall            Snd_SSZ1_Call10
	smpsCall            Snd_SSZ1_Call11
	smpsCall            Snd_SSZ1_Call10
	smpsCall            Snd_SSZ1_Call15

Snd_SSZ1_Loop0D:
	smpsCall            Snd_SSZ1_Call10
	smpsLoop            $00, $03, Snd_SSZ1_Loop0D
	smpsCall            Snd_SSZ1_Call16
	smpsCall            Snd_SSZ1_Call10
	smpsCall            Snd_SSZ1_Call11
	smpsCall            Snd_SSZ1_Call17
	smpsCall            Snd_SSZ1_Call10
	smpsCall            Snd_SSZ1_Call18
	smpsJump            Snd_SSZ1_Loop0A

Snd_SSZ1_Call10:
	smpsPSGvoice        sTone_12
	dc.b	$18
	smpsPSGvoice        sTone_0F
	dc.b	$10, $08
	smpsPSGAlterVol     $01
	dc.b	$10, $08
	smpsPSGAlterVol     $FF
	dc.b	$10, $08
	smpsReturn

Snd_SSZ1_Call11:
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $01
	dc.b	$10, $08
	smpsPSGAlterVol     $FF
	dc.b	$10, $08
	smpsPSGAlterVol     $01
	dc.b	$10, $08
	smpsPSGAlterVol     $FF
	dc.b	$10, $08
	smpsReturn

Snd_SSZ1_Call12:
	smpsPSGvoice        sTone_0F
	dc.b	$10, $08, $10, $08, nRst, $30
	smpsReturn

Snd_SSZ1_Call13:
	smpsPSGvoice        sTone_12
	dc.b	$18
	smpsPSGvoice        sTone_0F
	dc.b	$10
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $FF
	smpsPSGvoice        sTone_12
	dc.b	$18
	smpsPSGvoice        sTone_0F
	dc.b	$10
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $FF
	smpsReturn

Snd_SSZ1_Call14:
	smpsPSGvoice        sTone_12
	dc.b	$18
	smpsPSGvoice        sTone_0F
	dc.b	$10
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $FF
	dc.b	nRst, $30
	smpsReturn

Snd_SSZ1_Call15:
	smpsPSGvoice        sTone_0F
	dc.b	$10, $08, $10, $08
	smpsPSGvoice        sTone_12
	dc.b	$10, $10, nRst, $10
	smpsReturn

Snd_SSZ1_Call16:
	smpsPSGvoice        sTone_12
	dc.b	$18
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$18
	smpsPSGAlterVol     $FF
	dc.b	$18
	smpsPSGAlterVol     $FF
	dc.b	$18
	smpsReturn

Snd_SSZ1_Call17:
	smpsPSGvoice        sTone_0F
	dc.b	$2A, $30, $1E
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $01
	dc.b	$18
	smpsPSGAlterVol     $FF
	dc.b	$18
	smpsPSGvoice        sTone_0F
	dc.b	$18
	smpsReturn

Snd_SSZ1_Call18:
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $01
	dc.b	$18, $18
	smpsPSGAlterVol     $FF
	dc.b	$18, $18
	smpsReturn

; DAC Data
Snd_SSZ1_DAC:
	dc.b	dKickS3, $18, dKickS3, dKickS3, dKickS3, dKickS3, dMuffledSnare, $10, dMuffledSnare, $08, dMuffledSnare, dMuffledSnare
	dc.b	dMuffledSnare, dMuffledSnare, dMuffledSnare, dMuffledSnare

Snd_SSZ1_Loop00:
	smpsCall            Snd_SSZ1_Call00
	smpsLoop            $00, $06, Snd_SSZ1_Loop00
	smpsCall            Snd_SSZ1_Call01
	smpsCall            Snd_SSZ1_Call02

Snd_SSZ1_Loop01:
	smpsCall            Snd_SSZ1_Call00
	smpsLoop            $00, $08, Snd_SSZ1_Loop01

Snd_SSZ1_Loop02:
	smpsCall            Snd_SSZ1_Call00
	smpsLoop            $00, $05, Snd_SSZ1_Loop02
	smpsCall            Snd_SSZ1_Call03
	smpsCall            Snd_SSZ1_Call04
	smpsCall            Snd_SSZ1_Call05
	smpsCall            Snd_SSZ1_Call06
	smpsCall            Snd_SSZ1_Call07
	smpsCall            Snd_SSZ1_Call08
	smpsCall            Snd_SSZ1_Call07
	smpsCall            Snd_SSZ1_Call06
	smpsCall            Snd_SSZ1_Call07
	smpsCall            Snd_SSZ1_Call08
	smpsCall            Snd_SSZ1_Call05
	smpsCall            Snd_SSZ1_Call06
	smpsCall            Snd_SSZ1_Call07
	smpsCall            Snd_SSZ1_Call08
	smpsCall            Snd_SSZ1_Call09
	smpsCall            Snd_SSZ1_Call06
	smpsCall            Snd_SSZ1_Call07
	smpsCall            Snd_SSZ1_Call08
	smpsCall            Snd_SSZ1_Call05
	smpsCall            Snd_SSZ1_Call0A
	smpsCall            Snd_SSZ1_Call0B
	smpsCall            Snd_SSZ1_Call0C
	smpsCall            Snd_SSZ1_Call0D
	smpsCall            Snd_SSZ1_Call0E
	smpsCall            Snd_SSZ1_Call0E
	smpsCall            Snd_SSZ1_Call0A
	smpsCall            Snd_SSZ1_Call0F
	smpsCall            Snd_SSZ1_Call0A
	smpsCall            Snd_SSZ1_Call0B
	dc.b	dKickS3, $10, dKickS3, $08, dMuffledSnare, $10, dKickS3, $18, dKickS3, $08, dMuffledSnare, $10
	dc.b	dKickS3, $08, nRst, $10, dKickS3, $08, dMuffledSnare, $10, dKickS3, dMuffledSnare, dFloorTomS3, $18
	smpsCall            Snd_SSZ1_Call0E
	dc.b	dMuffledSnare, $08, dMuffledSnare, dMuffledSnare, dMuffledSnare, dMuffledSnare, dMuffledSnare, dHighTom, dHighTom, dMidTomS3, dMidTomS3, dLowTomS3
	dc.b	dFloorTomS3
	smpsJump            Snd_SSZ1_Loop00

Snd_SSZ1_Call00:
	dc.b	dKickS3, $18, dMuffledSnare, dKickS3, dMuffledSnare
	smpsReturn

Snd_SSZ1_Call01:
	dc.b	dKickS3, $18, dMuffledSnare, dKickS3, dMuffledSnare, $10, dKickS3, $08
	smpsReturn

Snd_SSZ1_Call02:
	dc.b	nRst, $10, dKickS3, $08, dMuffledSnare, $10, dKickS3, dMuffledSnare, dFloorTomS3, $18
	smpsReturn

Snd_SSZ1_Call03:
	dc.b	dKickS3, $18, dMuffledSnare, dKickS3, $10, $08, dMuffledSnare, $10, dKickS3, $08
	smpsReturn

Snd_SSZ1_Call04:
	dc.b	nRst, $10, dKickS3, $08, dMuffledSnare, $18, dKickS3, dMuffledSnare, $10, dKickS3, $08
	smpsReturn

Snd_SSZ1_Call05:
	dc.b	nRst, $10, dKickS3, $08, dMuffledSnare, $18, dKickS3, $08, dMuffledSnare, dMuffledSnare, dMuffledSnare, dMuffledSnare
	dc.b	dMuffledSnare
	smpsReturn

Snd_SSZ1_Call06:
	dc.b	dKickS3, $18, dMuffledSnare, $10, dKickS3, $08, dKickS3, $18, dMuffledSnare, $10, dKickS3, $08
	smpsReturn

Snd_SSZ1_Call07:
	dc.b	nRst, $10, dKickS3, $08, dMuffledSnare, $18, dKickS3, dMuffledSnare
	smpsReturn

Snd_SSZ1_Call08:
	dc.b	dKickS3, $18, dMuffledSnare, dKickS3, dMuffledSnare, $10, dKickS3, $08
	smpsReturn

Snd_SSZ1_Call09:
	dc.b	nRst, $08, dKickS3, $10, dMuffledSnare, $18, dKickS3, dMuffledSnare
	smpsReturn

Snd_SSZ1_Call0A:
	dc.b	dKickS3, $18, dMuffledSnare, dKickS3, $10, $08, dMuffledSnare, $18
	smpsReturn

Snd_SSZ1_Call0B:
	dc.b	dKickS3, $10, $08, dMuffledSnare, $10, dKickS3, $18, dKickS3, $08, dMuffledSnare, $10, $08
	smpsReturn

Snd_SSZ1_Call0C:
	dc.b	dKickS3, $10, $08, dMuffledSnare, $18, dKickS3, $10, $08, dMuffledSnare, $18
	smpsReturn

Snd_SSZ1_Call0D:
	dc.b	dKickS3, $10, $08, dMuffledSnare, $18, dKickS3, $10, $08, dMuffledSnare, $08, dMuffledSnare, dMuffledSnare
	smpsReturn

Snd_SSZ1_Call0E:
	dc.b	dKickS3, $10, dKickS3, $08, dMuffledSnare, dKickS3, $10, dKickS3, dKickS3, $08, dMuffledSnare, dKickS3
	dc.b	$10
	smpsReturn

Snd_SSZ1_Call0F:
	dc.b	dKickS3, $10, dMuffledSnare, dMuffledSnare, $08, dMuffledSnare, dHighTom, dHighTom, dMidTomS3, dMidTomS3, dLowTomS3, dFloorTomS3
	smpsReturn

Snd_SSZ1_Voices:
;	Voice $00
;	$3A
;	$20, $60, $23, $01, 	$1E, $1F, $1F, $1F, 	$0A, $0B, $0A, $0A
;	$05, $0A, $07, $08, 	$A4, $96, $85, $78, 	$21, $28, $25, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $02, $06, $02
	smpsVcCoarseFreq    $01, $03, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0B, $0A
	smpsVcDecayRate2    $08, $07, $0A, $05
	smpsVcDecayLevel    $07, $08, $09, $0A
	smpsVcReleaseRate   $08, $05, $06, $04
	smpsVcTotalLevel    $00, $25, $28, $21

;	Voice $01
;	$2C
;	$61, $03, $01, $33, 	$5F, $94, $5F, $94, 	$05, $05, $05, $07
;	$02, $02, $02, $02, 	$1F, $6F, $1F, $AF, 	$1E, $80, $1E, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $00, $06
	smpsVcCoarseFreq    $03, $01, $03, $01
	smpsVcRateScale     $02, $01, $02, $01
	smpsVcAttackRate    $14, $1F, $14, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $05, $05, $05
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $0A, $01, $06, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1E, $00, $1E

;	Voice $02
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

;	Voice $03
;	$04
;	$57, $02, $70, $50, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$06, $0A, $00, $0A, 	$00, $0F, $00, $0F, 	$1A, $80, $10, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $07, $00, $05
	smpsVcCoarseFreq    $00, $00, $02, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $0A, $00, $0A, $06
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $00, $0F, $00
	smpsVcTotalLevel    $00, $10, $00, $1A

