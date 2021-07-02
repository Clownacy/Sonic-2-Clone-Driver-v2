Snd_RRZ2_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_RRZ2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $40

	smpsHeaderDAC       Snd_RRZ2_DAC
	smpsHeaderFM        Snd_RRZ2_FM1,	$00, $10
	smpsHeaderFM        Snd_RRZ2_FM2,	$0C, $0D
	smpsHeaderFM        Snd_RRZ2_FM3,	$00, $19
	smpsHeaderFM        Snd_RRZ2_FM4,	$00, $19
	smpsHeaderFM        Snd_RRZ2_FM5,	$00, $19
	smpsHeaderPSG       Snd_RRZ2_PSG1,	$F4, $03, $00, $00
	smpsHeaderPSG       Snd_RRZ2_PSG2,	$F4, $03, $00, $00
	smpsHeaderPSG       Snd_RRZ2_PSG3,	$23, $04, $00, $00

; FM1 Data
Snd_RRZ2_FM1:
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $01, $08
	smpsSetvoice        $03
	dc.b	nC4, $60, nC5, $18, nG4, nBb4, $12, nEb4, nBb3, $0C, nC4, $60
	dc.b	nC5, $18, nG4, nBb4, $12, nEb4, nEb5, $0C, nC4, $60, $18, nG4
	dc.b	nC5, $12, nEb5, nG5, $0C, $30, nF5, nEb5, nG4, $04, nF4, nEb4
	dc.b	nF4, nEb4, nD4, nEb4, nD4, nC4, nBb3, nG3, nBb3, nC4, $60, nRst
	dc.b	nRst, nRst
	smpsSetvoice        $00
	dc.b	nG4, $48, $0C, nC4, nEb4, $30, $0C, nD4, nEb4, nBb4, nA4, $30
	dc.b	nG4, smpsNoAttack, nG4, $2E, nRst, $32, $60, nC4, $30, $18, nG4, $0C
	dc.b	nEb4, nBb4, $30, nC5, nA4, $60, nG4, $30, nC4, nEb4, $18, nD4
	dc.b	nBb3, nA3, $0C, nBb3, nC4, $30, nG4, smpsNoAttack, nG4, $2E, nRst, $32
	dc.b	nEb4, $60, $0C, nD4, nEb4, nG4, nBb4, $18, nA4, $0C, nF4, nG4
	dc.b	$18, nF4, $30, nBb4, $12, nA4, $06, smpsNoAttack, $60, nA4, $60, nC6
	dc.b	$18, nG5, nBb5, $14, nA5, $10, nC5, $0C, nEb5, $2E, nRst, $32
	dc.b	nRst, $60
	smpsSetvoice        $05
	smpsAlterPitch      $F4
	dc.b	nAb4, $30, nC5, nEb4, $60, nFs4, $30, nBb3, nCs4, $60, nAb4, $30
	dc.b	nEb4, nAb4, nEb5, nFs5, nFs4, smpsNoAttack, nFs4, $60
	smpsAlterPitch      $0C
	dc.b	nC4, $60, nC3, nC4, $30, nG3, nG4, $60, nEb4, $30, nBb4, nG4
	dc.b	$60, nC4, $30, nG3, nG4, nF4, nEb4, $60, nF4, $30, nD4, nG4
	dc.b	$60, smpsNoAttack, $30, nEb5, $18, nD5
	smpsJump            Snd_RRZ2_FM1

; FM2 Data
Snd_RRZ2_FM2:
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $01, $02
	smpsSetvoice        $01

Snd_RRZ2_Jump02:
	dc.b	nC2, $60, smpsNoAttack, $48, $0C, nD2, nEb2, $60, smpsNoAttack, nEb2, nF2, nF2
	dc.b	$48, $0C, nFs2, nG2, $60, $30, $04, nF2, nEb2, nF2, nEb2, nD2
	dc.b	nEb2, nD2, nC2, nBb1, nG1, nBb1, nC2, $08, $04, nG1, $0C, nBb1
	dc.b	nC2, $08, $04, nRst, $30, nRst, $08, nC2, $04, nRst, $0C, nC2
	dc.b	nRst, nBb1, $04, nRst, $08, nBb1, nRst, $04, $0C, nG1, $08, nBb1
	dc.b	$04, nC2, $08, $04, nG1, $0C, nBb1, nC2, $08, $04, nRst, $30
	dc.b	nRst, $08, nC2, $04, nRst, $0C, nC2, nRst, nBb1, $04, nRst, $08
	dc.b	nBb1, nRst, $04, nG1, nRst, nG1, $10

Snd_RRZ2_Loop07:
	dc.b	nC2, $08, $04, nG1, $0C, nBb1, nC2, $08, $04, nRst, $30, nRst
	dc.b	$08, nC2, $04, nRst, $0C, nC2, nRst, nBb1, $04, nRst, $08, nBb1
	dc.b	nRst, $04, $0C, nG1, $08, nBb1, $04
	smpsLoop            $00, $08, Snd_RRZ2_Loop07

Snd_RRZ2_Loop08:
	dc.b	nC2, $08, $04, nG1, $0C, nBb1, nC2, $08, $04, nRst, $30, nRst
	dc.b	$08, nC2, $04, nRst, $0C, nC2, nRst, nBb1, $04, nRst, $08, nBb1
	dc.b	nRst, $04, $0C, nG1, $08, nBb1, $04
	smpsLoop            $00, $02, Snd_RRZ2_Loop08
	dc.b	nAb1, $08, nEb2, $04, nAb2, $08, nEb2, $04, nAb1, $08, $04, nRst
	dc.b	$08, $26, nRst, $0A, $04, nAb2, $16, nRst, $0E, $04, nEb2, nAb2
	dc.b	nCs3, $0C, nC3, nAb2, nEb2, $08, nAb2, $04, nFs1, $08, nCs2, $04
	dc.b	nFs2, $08, nCs2, $04, nFs1, $08, $04, nRst, $08, $04, $22, nRst
	dc.b	$0A, $04, nFs2, nRst, nFs1, nRst, $08, $04, $0C, nF1, $08, nFs1
	dc.b	$04, nRst, $08, $04, nFs1, nCs2, nFs2, nB2, $08, nBb2, $04, nB2
	dc.b	$08, nBb2, $04, nAb1, $08, nEb2, $04, nAb2, $08, nEb2, $04, nAb1
	dc.b	$08, $04, nRst, $08, $26, nRst, $0A, $04, nAb2, $16, nRst, $0E
	dc.b	$04, nEb2, nAb2, nCs3, nC3, nCs3, nAb3, nEb3, nBb2, nFs2, nF2, nFs2
	dc.b	nEb2, nBb2, nEb2, nFs1, $08, nCs2, $04, nFs2, $08, nCs2, $04, nFs1
	dc.b	$08, $04, nRst, $08, $04, $22, nRst, $0A, $04, nFs2, nRst, nFs1
	dc.b	nRst, $08, $04, $0C, nF1, $08, nFs1, $04, nRst, $08, $04, nFs1
	dc.b	nCs2, nFs2, nB2, $08, nBb2, $04, nB2, $08, nBb2, $04, nC1, $08
	dc.b	$04, nC1, nRst, $08, $0C, nD1, $08, nEb1, $04, nRst, $08, nC1
	dc.b	$0C, $04, $08, nD1, $04, nEb1, $0C, nC1, $08, $04, nC1, nRst
	dc.b	$08, $0C, nD1, $08, nEb1, $04, nRst, $08, nC1, $0C, $04, $08
	dc.b	nD1, $04, nEb1, $0C, nC1, $08, $04, nC1, nRst, $08, $0C, nD1
	dc.b	$08, nEb1, $04, nRst, $08, nC1, $0C, $04, $08, nD1, $04, nEb1
	dc.b	$0C, nC1, $08, $04, nC1, nRst, $08, $0C, nD1, $08, nEb1, $04
	dc.b	nRst, $08, nC1, $0C, $04, $08, nD1, $04, nEb1, $0C, nC1, $08
	dc.b	$04, nC1, nRst, $08, $0C, nD1, $08, nEb1, $04, nRst, $08, nC1
	dc.b	$0C, $04, $08, nD1, $04, nEb1, $0C, nC1, $08, $04, nC1, nRst
	dc.b	$08, $0C, nD1, $08, nEb1, $04, nRst, $08, nC1, $0C, $04, $08
	dc.b	nD1, $04, nEb1, $0C, nC1, $08, $04, nC1, nRst, $08, $0C, nD1
	dc.b	$08, nEb1, $04, nRst, $08, nC1, $0C, $04, $08, nD1, $04, nEb1
	dc.b	$0C, nC1, $08, $04, nC1, nRst, $08, $0C, nD1, $08, nEb1, $04
	dc.b	nRst, $08, nC1, $0C, $04, $08, nD1, $04, nEb1, $0C, nC1, $08
	dc.b	$04, nC1, nRst, $08, $0C, nD1, $08, nEb1, $04, nRst, $08, nC1
	dc.b	$0C, $04, $08, nD1, $04, nEb1, $0C, nC1, $08, $04, nC1, nRst
	dc.b	$08, $0C, nD1, $08, nEb1, $04, nRst, $08, nC1, $0C, $04, $08
	dc.b	nD1, $04, nEb1, $0C, nC1, $08, $04, nC1, nRst, $08, $0C, nD1
	dc.b	$08, nEb1, $04, nRst, $08, nC1, $0C, $04, $08, nD1, $04, nEb1
	dc.b	$0C, nC1, $08, $04, nC1, nRst, $08, $0C, nD1, $08, nEb1, $04
	dc.b	nG1, $0C, nRst, nG1, $18
	smpsJump            Snd_RRZ2_Jump02

; FM3 Data
Snd_RRZ2_FM3:
	smpsPan             panLeft, $00
	smpsModSet          $01, $01, $01, $07

Snd_RRZ2_Jump01:
	smpsSetvoice        $02

Snd_RRZ2_Loop05:
	dc.b	nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08, $04, nBb3, $08
	dc.b	nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nEb4, $08, $04, nD4
	dc.b	$08, nBb3, $04, nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08
	dc.b	$04, nBb3, $08, nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nG4
	dc.b	$08, $10
	smpsLoop            $00, $03, Snd_RRZ2_Loop05
	dc.b	nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08, $04, nBb3, $08
	dc.b	nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nEb4, $08, $04, nD4
	dc.b	$08, nBb3, $04, nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08
	dc.b	$04, nBb3, $08, nC4, $04, nG4, nF4, nG4, nF4, nEb4, nF4, nEb4
	dc.b	nD4, nEb4, nD4, nC4, nBb3

Snd_RRZ2_Loop06:
	dc.b	nG3, $0C, nG4, nG3, $08, nF4, $0C, nG3, $04, nEb4, $0C, nG3
	dc.b	$08, nD4, $0C, nG3, $04, nEb4, nRst, $08, nG3, $04, nRst, $08
	dc.b	nC4, nD4, $04, nEb4, $08, nG4, $04, nRst, $08, nG3, $04, nC4
	dc.b	$08, nD4, $04, nEb4, $08, nG4, $04, nRst, $08, nBb4, $10, nG3
	dc.b	$0C, nG4, nG3, $08, nF4, $0C, nG3, $04, nEb4, $0C, nG3, $08
	dc.b	nD4, $0C, nG3, $04, nEb4, nRst, $08, nC4, nG3, $04, nG4, $08
	dc.b	nF4, $04, nEb4, $08, nD4, $04, nRst, $08, nEb4, $04, nF4, $08
	dc.b	nEb4, $04, nF4, nRst, $08, nG4, nBb4, $04, nG4, nRst, $08
	smpsLoop            $00, $05, Snd_RRZ2_Loop06
	dc.b	nG3, $0C, nG4, nG3, $08, nF4, $0C, nG3, $04, nEb4, $0C, nG3
	dc.b	$08, nD4, $0C, nG3, $04, nEb4, nRst, $08, nG3, $04, nRst, $08
	dc.b	nC4, nD4, $04, nEb4, $08, nG4, $04, nRst, $08, nG3, $04, nC4
	dc.b	$08, nD4, $04, nEb4, $08, nG4, $04, nRst, $08, nBb4, $10, nG3
	dc.b	$0C, nG4, nG3, $08, nF4, $0C, nG3, $04, nEb4, $0C, nG3, $08
	dc.b	nD4, $0C, nG3, $04, nEb4, nRst, $08, nC4, nG3, $04, nG4, $08
	dc.b	nF4, $04, nEb4, $08, nD4, $04, nRst, $08, nEb4, $04, nF4, $08
	dc.b	nEb4, $04, nF4, nRst, $08, nG4, nBb4, $04, nG4, nRst, $08
	smpsSetvoice        $05
	dc.b	nRst, $60, nRst, $18, nC5, $04, nAb4, nEb4, nAb4, nEb4, nC4, nEb4
	dc.b	nC4, nAb3, nC4, nAb3, nEb3, nAb2, $18, nRst, $60, nFs4, $04, nCs4
	dc.b	nBb3, nFs3, nBb3, nCs4, nFs4, nBb3, nFs3, nCs3, nFs3, nBb3, nFs3, nCs3
	dc.b	nBb2, nFs2, $24, nRst, $60, nRst, $18, nC5, $04, nAb4, nEb4, nAb4
	dc.b	nEb4, nC4, nEb4, nC4, nAb3, nC4, nAb3, nEb3, nAb2, $18, nRst, $60
	dc.b	nFs4, $04, nCs4, nBb3, nFs3, nBb3, nCs4, nFs4, nBb3, nFs3, nCs3, nFs3
	dc.b	nBb3, nFs3, nCs3, nBb2, nFs2, $24
	smpsFMAlterVol      $FA
	dc.b	nC3, $60, smpsNoAttack, nC3, nC4, $48, $08, $04, nRst, $08, $04, nRst
	dc.b	$08, nBb3, $04, $22, smpsNoAttack, $1A, $08, $04, nRst, $08, $04, nRst
	dc.b	$08, nAb3, $04, $22, smpsNoAttack, $1A, $08, $04, nRst, $08, $04, nRst
	dc.b	$08, nG3, $04, $24, $0C, nF3, nEb3, nD3, nC4, $48, $08, $04
	dc.b	$08, $04, nRst, $08, nD4, $04, $22, smpsNoAttack, $1A, $08, $04, nRst
	dc.b	$08, $04, nRst, $08, nEb4, $04, $2E, smpsNoAttack, $0E, $08, $04, nRst
	dc.b	$08, $04, nRst, $08, nF4, $04, $24, nBb4, $30, nG4, $60, nC4
	dc.b	$18, nC4, nEb4, $18, nD4
	smpsFMAlterVol      $06
	smpsJump            Snd_RRZ2_Jump01

; FM4 Data
Snd_RRZ2_FM4:
	smpsPan             panRight, $00
	smpsModSet          $01, $01, $01, $08

Snd_RRZ2_Jump00:
	smpsSetvoice        $02

Snd_RRZ2_Loop03:
	dc.b	nG3, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3, $08
	dc.b	nG3, $04, nRst, $08, $04, nEb3, nF3, nG3, nBb3, $08, $04, nG3
	dc.b	$08, $04, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3
	dc.b	$08, nG3, $04, nRst, $08, $04, nEb3, nF3, nG3, nBb3, $08, nD4
	dc.b	$10
	smpsLoop            $00, $03, Snd_RRZ2_Loop03
	dc.b	nG3, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3, $08
	dc.b	nG3, $04, nRst, $08, $04, nEb3, nF3, nG3, nBb3, $08, $04, nG3
	dc.b	$08, $04, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3
	dc.b	$08, nG3, $04, nEb4, nD4, nEb4, nD4, nC4, nD4, nC4, nBb3, nC4
	dc.b	nBb3, nG3, nF3

Snd_RRZ2_Loop04:
	dc.b	nG2, $0C, nG3, nG2, $08, nF3, $0C, nG2, $04, nEb3, $0C, nG2
	dc.b	$08, nD3, $0C, nG2, $04, nEb3, nRst, $08, nG2, $04, nRst, $08
	dc.b	nC3, nD3, $04, nEb3, $08, nG3, $04, nRst, $08, nG2, $04, nC3
	dc.b	$08, nD3, $04, nEb3, $08, nG3, $04, nRst, $08, nBb3, $10, nG2
	dc.b	$0C, nG3, nG2, $08, nF3, $0C, nG2, $04, nEb3, $0C, nG2, $08
	dc.b	nD3, $0C, nG2, $04, nEb3, nRst, $08, nC3, nG2, $04, nG3, $08
	dc.b	nF3, $04, nEb3, $08, nD3, $04, nRst, $08, nEb3, $04, nF3, $08
	dc.b	nEb3, $04, nF3, nRst, $08, nG3, nBb3, $04, nG3, nRst, $08
	smpsLoop            $00, $05, Snd_RRZ2_Loop04
	dc.b	nG2, $0C, nG3, nG2, $08, nF3, $0C, nG2, $04, nEb3, $0C, nG2
	dc.b	$08, nD3, $0C, nG2, $04, nEb3, nRst, $08, nG2, $04, nRst, $08
	dc.b	nC3, nD3, $04, nEb3, $08, nG3, $04, nRst, $08, nG2, $04, nC3
	dc.b	$08, nD3, $04, nEb3, $08, nG3, $04, nRst, $08, nBb3, $10, nG2
	dc.b	$0C, nG3, nG2, $08, nF3, $0C, nG2, $04, nEb3, $0C, nG2, $08
	dc.b	nD3, $0C, nG2, $04, nEb3, nRst, $08, nC3, nG2, $04, nG3, $08
	dc.b	nF3, $04, nEb3, $08, nD3, $04, nRst, $08, nEb3, $04, nF3, $08
	dc.b	nEb3, $04, nF3, nRst, $08, nG3, nBb3, $04, nG3, $08, nRst, $04
	smpsSetvoice        $05
	dc.b	nRst, $60, nRst, $18, nRst, $0C, nC5, $04, nAb4, nEb4, nAb4, nEb4
	dc.b	nC4, nEb4, nC4, nAb3, nC4, nAb3, nEb3, nAb2, $0C, nRst, $60, nRst
	dc.b	$0C, nFs4, $04, nCs4, nBb3, nFs3, nBb3, nCs4, nFs4, nBb3, nFs3, nCs3
	dc.b	nFs3, nBb3, nFs3, nCs3, smpsNoAttack, nBb2, $1C, smpsNoAttack, $08, nRst, $58, nRst
	dc.b	$18, nRst, $0C, nC5, $04, nAb4, nEb4, nAb4, nEb4, nC4, nEb4, nC4
	dc.b	nAb3, nC4, nAb3, nEb3, nAb2, $0C, nRst, $60, nRst, $0C, nFs4, $04
	dc.b	nCs4, nBb3, nFs3, nBb3, nCs4, nFs4, nBb3, nFs3, nCs3, nFs3, nBb3, nFs3
	dc.b	nCs3, smpsNoAttack, nBb2, $1C
	smpsFMAlterVol      $FA
	dc.b	nG2, $60, smpsNoAttack, nG2, nG3, $48, $08, $04, nRst, $08, $04, nRst
	dc.b	$08, nG3, $04, $22, smpsNoAttack, $1A, $08, $04, nRst, $08, $04, nRst
	dc.b	$08, nEb3, $04, $22, smpsNoAttack, $1A, $08, $04, nRst, $08, $04, nRst
	dc.b	$08, nD3, $04, $24, $18, nG2, nG3, $48, $08, $04, $08, $04
	dc.b	nRst, $08, nG3, $04, $22, smpsNoAttack, $1A, $08, $04, nRst, $08, $04
	dc.b	nRst, $08, nG3, $04, $2E, smpsNoAttack, $0E, $08, $04, nRst, $08, $04
	dc.b	nRst, $08, nBb3, $04, $24, nD4, $30, nC4, $60, nG3, $18, nG3
	dc.b	nG3, $18, nG3
	smpsFMAlterVol      $06
	smpsJump            Snd_RRZ2_Jump00

; FM5 Data
Snd_RRZ2_FM5:
	smpsModSet          $01, $01, $01, $06
	dc.b	nRst, $10
	smpsAlterNote       $01
	smpsJump            Snd_RRZ2_FM1

; Unreachable
	smpsStop

; PSG1 Data
Snd_RRZ2_PSG1:
	smpsModSet          $01, $01, $01, $04
	smpsPSGvoice        sTone_1D
	dc.b	nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08, $04, nBb3, $08
	dc.b	nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nEb4, $08, $04, nD4
	dc.b	$08, nBb3, $04, nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08
	dc.b	$04, nBb3, $08, nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nG4
	dc.b	$08, $10
	smpsLoop            $00, $03, Snd_RRZ2_PSG1
	dc.b	nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08, $04, nBb3, $08
	dc.b	nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nEb4, $08, $04, nD4
	dc.b	$08, nBb3, $04, nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08
	dc.b	$04, nBb3, $08, nC4, $04, nG4, nF4, nG4, nF4, nEb4, nF4, nEb4
	dc.b	nD4, nEb4, nD4, nC4, nBb3
	smpsPSGvoice        sTone_26
	dc.b	nG4, $60, smpsNoAttack, nG4, $16, nRst, $4A, $60, smpsNoAttack, nG4, $16, nRst
	dc.b	$4A

Snd_RRZ2_Loop0D:
	dc.b	nG4, $60, smpsNoAttack, nG4, $16, nRst, $4A, nBb4, $60, smpsNoAttack, nBb4, $16
	dc.b	nRst, $4A
	smpsLoop            $00, $02, Snd_RRZ2_Loop0D
	dc.b	nA4, $60, smpsNoAttack, nA4, $16, nRst, $4A, nG4, $60, smpsNoAttack, nG4, $16
	dc.b	nRst, $4A, $60, smpsNoAttack, nG4, $16, nRst, $4A, nBb4, $60, smpsNoAttack, nBb4
	dc.b	$16, nRst, $4A

Snd_RRZ2_Loop0E:
	smpsPSGvoice        sTone_23
	dc.b	nG4, $08, $04, nG4, nRst, $08, nG4, nF4, $04, nRst, $08, nG4
	dc.b	$04, nRst, $08, $04, nF4, nRst, $08, nG4, nBb4, $04, nRst, $08
	dc.b	nG4, $04, nRst, $08, nG4, $04, nF4, nRst, $08, nG4, nBb4, $04
	dc.b	nRst, $08, nF4, $06, nRst, $2E
	smpsLoop            $00, $02, Snd_RRZ2_Loop0E

Snd_RRZ2_Loop0F:
	smpsPSGvoice        sTone_1D
	dc.b	nAb4, $08, $04, nRst, $08, $04, nRst, $08, $04, nRst, $08, $04
	dc.b	$30, smpsNoAttack, $60, nFs4, $08, $04, nRst, $08, $04, nRst, $08, $04
	dc.b	nRst, $08, $04, $30, smpsNoAttack, $60
	smpsLoop            $00, $02, Snd_RRZ2_Loop0F
	dc.b	nRst, $60, nRst, $30, nG4, $04, nC4, nG4, nC5, nG4, nC5, nG4
	dc.b	nC4, nG4, nC4, $0C, nRst, $30, nG4, $04, nC4, nG4, nC5, nG4
	dc.b	nC5, nG4, nC4, nG4, nC4, $0C, nRst, $60, nRst, $60, nRst, $60
	dc.b	nRst, $30, nG4, $04, nC4, nG4, nC5, nG4, nC5, nG4, nC4, nG4
	dc.b	nC4, $0C, nRst, $30, nG4, $04, nC4, nG4, nC5, nG4, nC5, nG4
	dc.b	nC4, nG4, nC4, $0C, nRst, $60, nF4, $18, nD4, nBb3, nG3, nC3
	dc.b	$30, nG3, nC3, $18, nG3, nEb4, nBb4
	smpsJump            Snd_RRZ2_PSG1

; PSG2 Data
Snd_RRZ2_PSG2:
	smpsModSet          $02, $01, $01, $04
	smpsPSGvoice        sTone_1D

Snd_RRZ2_Loop09:
	dc.b	nG3, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3, $08
	dc.b	nG3, $04, nRst, $08, $04, nEb3, nF3, nG3, nBb3, $08, $04, nG3
	dc.b	$08, $04, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3
	dc.b	$08, nG3, $04, nRst, $08, $04, nEb3, nF3, nG3, nBb3, $08, nD4
	dc.b	$10
	smpsLoop            $00, $03, Snd_RRZ2_Loop09
	dc.b	nG3, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3, $08
	dc.b	nG3, $04, nRst, $08, $04, nEb3, nF3, nG3, nBb3, $08, $04, nG3
	dc.b	$08, $04, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3
	dc.b	$08, nG3, $04, nEb4, nD4, nEb4, nD4, nC4, nD4, nC4, nBb3, nC4
	dc.b	nBb3, nG3, nF3
	smpsPSGvoice        sTone_26
	dc.b	nC4, $60, smpsNoAttack, nC4, $16, nRst, $4A, $60, smpsNoAttack, nC4, $16, nRst
	dc.b	$4A

Snd_RRZ2_Loop0A:
	dc.b	nC4, $60, smpsNoAttack, nC4, $16, nRst, $4A, nEb4, $60, smpsNoAttack, nEb4, $16
	dc.b	nRst, $4A
	smpsLoop            $00, $02, Snd_RRZ2_Loop0A
	dc.b	nF4, $60, smpsNoAttack, nF4, $16, nRst, $4A, nEb4, $60, smpsNoAttack, nEb4, $16
	dc.b	nRst, $4A, nC4, $60, smpsNoAttack, nC4, $16, nRst, $4A, nEb4, $60, smpsNoAttack
	dc.b	nEb4, $16, nRst, $4A

Snd_RRZ2_Loop0B:
	smpsPSGvoice        sTone_23
	dc.b	nEb4, $08, $04, nEb4, nRst, $08, nEb4, nD4, $04, nRst, $08, nEb4
	dc.b	$04, nRst, $08, $04, nD4, nRst, $08, nEb4, nG4, $04, nRst, $08
	dc.b	nEb4, $04, nRst, $08, nEb4, $04, nD4, nRst, $08, nEb4, nG4, $04
	dc.b	nRst, $08, nD4, $06, nRst, $2E
	smpsLoop            $00, $02, Snd_RRZ2_Loop0B

Snd_RRZ2_Loop0C:
	smpsPSGvoice        sTone_1D
	dc.b	nCs4, $08, $04, nRst, $08, $04, nRst, $08, $04, nRst, $08, $04
	dc.b	nC4, $30, smpsNoAttack, $60, nB3, $08, $04, nRst, $08, $04, nRst, $08
	dc.b	$04, nRst, $08, $04, nBb3, $30, smpsNoAttack, $60
	smpsLoop            $00, $02, Snd_RRZ2_Loop0C
	dc.b	nRst, $0D
	smpsPSGAlterVol     $02
	dc.b	nRst, $60, nRst, $30, nG4, $04, nC4, nG4, nC5, nG4, nC5, nG4
	dc.b	nC4, nG4, nC4, $0C, nRst, $30, nG4, $04, nC4, nG4, nC5, nG4
	dc.b	nC5, nG4, nC4, nG4, nC4, $0C, nRst, $60, nRst, $60, nRst, $60
	dc.b	nRst, $30, nG4, $04, nC4, nG4, nC5, nG4, nC5, nG4, nC4, nG4
	dc.b	nC4, $0C, nRst, $30, nG4, $04, nC4, nG4, nC5, nG4, nC5, nG4
	dc.b	nC4, nG4, nC4, $0C, nRst, $60, nF4, $18, nD4, nBb3, nG3, nC3
	dc.b	$30, nG3, nC3, $18, nG3, nEb4, nBb4, $0B
	smpsPSGAlterVol     $FE
	smpsJump            Snd_RRZ2_PSG2

; PSG3 Data
Snd_RRZ2_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $60, nRst
	smpsCall            Snd_RRZ2_Call00
	smpsCall            Snd_RRZ2_Call00
	smpsCall            Snd_RRZ2_Call01

Snd_RRZ2_Jump03:
	smpsCall            Snd_RRZ2_Call00
	smpsJump            Snd_RRZ2_Jump03

; Unreachable
	smpsStop

Snd_RRZ2_Call00:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $04, nRst, nRst, (nMaxPSG2-$23)&$FF, nRst, (nMaxPSG2-$23)&$FF
	smpsLoop            $00, $10, Snd_RRZ2_Call00
	smpsReturn

Snd_RRZ2_Call01:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $04, nRst, nRst, (nMaxPSG2-$23)&$FF, nRst, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $04, nRst, nRst, (nMaxPSG2-$23)&$FF, nRst, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $04, nRst, nRst, (nMaxPSG2-$23)&$FF, nRst, nRst
	smpsPSGvoice        sTone_04
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $04, nRst, nRst
	smpsReturn

; Unreachable
Snd_RRZ2_CallUnk00:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, nRst, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_04
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, nRst, (nMaxPSG2-$23)&$FF, nRst
	smpsPSGvoice        sTone_04
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGvoice        sTone_0F
	dc.b	$06, $06
	smpsLoop            $00, $04, Snd_RRZ2_CallUnk00
	smpsReturn

; Unreachable
Snd_RRZ2_CallUnk01:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_04
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_04
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF
	smpsLoop            $00, $07, Snd_RRZ2_CallUnk01
	smpsReturn

; Unreachable
Snd_RRZ2_CallUnk02:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, nRst, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, nRst, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF
	smpsLoop            $00, $04, Snd_RRZ2_CallUnk02
	smpsReturn

; DAC Data
Snd_RRZ2_DAC:
	dc.b	dCrashCymbal, $60, nRst, $48, dKickS3, $0C, dKickS3, dCrashCymbal, $60, nRst, $48, dElectricMidTom
	dc.b	$04, dElectricMidTom, dElectricLowTom, dElectricFloorTom, dElectricFloorTom, dElectricFloorTom, dCrashCymbal, $60, nRst, $48, dKickS3, $0C
	dc.b	dKickS3, dCrashCymbal, $60, nRst, $08, dTightSnare, $04, nRst, nRst, nRst, dMidpitchSnare, nRst
	dc.b	nRst, nRst, nRst, nRst, dLooseSnare, nRst, nRst, dLooserSnare, nRst, nRst, dElectricFloorTom, $04
	dc.b	dElectricFloorTom, dElectricFloorTom, dElectricFloorTom, dElectricFloorTom, dElectricFloorTom, dCrashCymbal, $04, nRst, nRst, nRst, nRst, nRst
	dc.b	dSnareS3, nRst, nRst, nRst, nRst, nRst, dKickS3, nRst, nRst, dKickS3, nRst, nRst
	dc.b	dSnareS3, nRst, nRst, nRst, nRst, nRst, dKickS3, nRst, nRst, nRst, nRst, dKickS3
	dc.b	dSnareS3, nRst, nRst, nRst, nRst, dKickS3, dKickS3, nRst, nRst, dKickS3, nRst, nRst
	dc.b	dSnareS3, nRst, nRst, nRst, nRst, nRst, dKickS3, nRst, nRst, nRst, nRst, nRst
	dc.b	dSnareS3, nRst, nRst, nRst, nRst, nRst, dKickS3, nRst, nRst, dKickS3, nRst, nRst
	dc.b	dSnareS3, nRst, nRst, nRst, nRst, nRst, dKickS3, nRst, nRst, nRst, nRst, nRst
	dc.b	dSnareS3, nRst, nRst, nRst, nRst, dKickS3, dKickS3, nRst, nRst, dKickS3, nRst, nRst
	dc.b	dSnareS3, nRst, nRst, dSnareS3, dSnareS3, dSnareS3

Snd_RRZ2_Loop00:
	dc.b	dKickS3, $04, nRst, nRst, nRst, nRst, dKickS3, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	dKickS3, dKickS3, nRst, nRst, dKickS3, nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	nRst, dKickS3, nRst, nRst, nRst, nRst, dKickS3, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	nRst, dKickS3, nRst, nRst, dKickS3, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst
	dc.b	nRst
	smpsLoop            $00, $07, Snd_RRZ2_Loop00
	dc.b	dCrashCymbal, $04, nRst, nRst, nRst, nRst, dKickS3, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	dKickS3, dKickS3, nRst, nRst, dKickS3, nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	nRst, dKickS3, nRst, nRst, nRst, nRst, dKickS3, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	nRst, dKickS3, dKickS3, dKickS3, dKickS3, nRst, nRst, dSnareS3, nRst, nRst, dSnareS3, dSnareS3
	dc.b	dSnareS3

Snd_RRZ2_Loop01:
	dc.b	dKickS3, $04, nRst, nRst, nRst, nRst, dKickS3, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	dKickS3, dKickS3, nRst, nRst, dKickS3, nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	nRst, dKickS3, nRst, nRst, nRst, nRst, dKickS3, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	nRst, dKickS3, nRst, nRst, dKickS3, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst
	dc.b	nRst
	smpsLoop            $00, $02, Snd_RRZ2_Loop01
	dc.b	dCrashCymbal, $04, nRst, nRst, dKickS3, nRst, dKickS3, nRst, nRst, dSnareS3, nRst, nRst
	dc.b	dKickS3, dKickS3, $30, dKickS3, $04, nRst, nRst, dKickS3, nRst, dKickS3, nRst, nRst
	dc.b	dKickS3, nRst, nRst, dKickS3, dKickS3, $18, dKickS3, dKickS3, $04, nRst, nRst, dKickS3
	dc.b	nRst, dKickS3, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, dKickS3, nRst, nRst, nRst
	dc.b	nRst, dKickS3, dSnareS3, nRst, nRst, nRst, nRst, nRst, dKickS3, nRst, dSnareS3, nRst
	dc.b	nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst, nRst, dKickS3, nRst, dKickS3, dSnareS3
	dc.b	nRst, nRst, dKickS3, nRst, dKickS3, dSnareS3, nRst, nRst, dCrashCymbal, $04, nRst, nRst
	dc.b	nRst, nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst, nRst, dKickS3, nRst, nRst
	dc.b	dKickS3, nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst, nRst, dKickS3, nRst, nRst
	dc.b	nRst, nRst, dKickS3, dSnareS3, nRst, nRst, nRst, nRst, dKickS3, dKickS3, nRst, nRst
	dc.b	dKickS3, nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst, nRst, dKickS3, nRst, nRst
	dc.b	nRst, nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst, nRst, dKickS3, nRst, nRst
	dc.b	dKickS3, nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst, nRst, dKickS3, nRst, nRst
	dc.b	nRst, nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst, dKickS3, dKickS3, nRst, nRst
	dc.b	dKickS3, nRst, nRst, dSnareS3, nRst, nRst, dSnareS3, dSnareS3, dSnareS3, dKickS3, $04, nRst
	dc.b	nRst, nRst, nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst, dKickS3, nRst, nRst
	dc.b	dKickS3, dKickS3, nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst, nRst, dKickS3, $04
	dc.b	nRst, nRst, nRst, nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst, dKickS3, nRst
	dc.b	nRst, dKickS3, dKickS3, nRst, nRst, dSnareS3, nRst, nRst, dElectricLowTom, dElectricFloorTom, dElectricFloorTom, dKickS3
	dc.b	$04, nRst, nRst, nRst, nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst, dKickS3
	dc.b	nRst, nRst, dKickS3, dKickS3, nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst, nRst

Snd_RRZ2_Loop02:
	dc.b	dKickS3, $04, nRst, nRst, nRst, nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	dKickS3, nRst, nRst, dKickS3, dKickS3, nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	nRst
	smpsLoop            $00, $07, Snd_RRZ2_Loop02
	dc.b	dCrashCymbal, $04, nRst, nRst, nRst, nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	dKickS3, nRst, nRst, dKickS3, dKickS3, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst
	dc.b	dKickS3, dKickS3, $18, $18, dMuffledSnare, $04, $04, $04, $04, $04, $04, $04
	dc.b	$04, $04, $04, $04, $04
	smpsJump            Snd_RRZ2_DAC

Snd_RRZ2_Voices:
;	Voice $00
;	$3A
;	$3F, $73, $73, $31, 	$9F, $5F, $54, $17, 	$03, $14, $0A, $05
;	$01, $05, $01, $01, 	$FF, $EF, $8F, $FF, 	$29, $39, $23, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $03
	smpsVcCoarseFreq    $01, $03, $03, $0F
	smpsVcRateScale     $00, $01, $01, $02
	smpsVcAttackRate    $17, $14, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $0A, $14, $03
	smpsVcDecayRate2    $01, $01, $05, $01
	smpsVcDecayLevel    $0F, $08, $0E, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $23, $39, $29

;	Voice $01
;	$3C
;	$01, $00, $00, $00, 	$1F, $1F, $15, $1F, 	$11, $03, $12, $05
;	$07, $04, $09, $02, 	$55, $3A, $25, $1A, 	$1A, $80, $07, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $15, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $12, $03, $11
	smpsVcDecayRate2    $02, $09, $04, $07
	smpsVcDecayLevel    $01, $02, $03, $05
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $00, $07, $00, $1A

;	Voice $02
;	$3A
;	$73, $04, $11, $31, 	$9F, $DF, $9F, $9F, 	$05, $05, $03, $0A
;	$03, $02, $03, $02, 	$6F, $6F, $5F, $7F, 	$1C, $20, $1E, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $01, $00, $07
	smpsVcCoarseFreq    $01, $01, $04, $03
	smpsVcRateScale     $02, $02, $03, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $03, $05, $05
	smpsVcDecayRate2    $02, $03, $02, $03
	smpsVcDecayLevel    $07, $05, $06, $06
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1E, $20, $1C

;	Voice $03
;	$3E
;	$07, $01, $02, $0A, 	$1F, $1F, $1F, $1F, 	$03, $06, $00, $00
;	$08, $06, $07, $0C, 	$15, $0A, $0A, $0A, 	$20, $85, $86, $88
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $0A, $02, $01, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $06, $03
	smpsVcDecayRate2    $0C, $07, $06, $08
	smpsVcDecayLevel    $00, $00, $00, $01
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $08, $06, $05, $20

;	Voice $04
;	$3C
;	$71, $71, $11, $11, 	$17, $1E, $19, $1E, 	$04, $01, $07, $01
;	$00, $00, $00, $00, 	$F7, $F8, $F7, $F8, 	$1E, $80, $14, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $01, $07, $07
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1E, $19, $1E, $17
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $07, $01, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $08, $07, $08, $07
	smpsVcTotalLevel    $00, $14, $00, $1E

;	Voice $05
;	$16
;	$7A, $74, $3C, $31, 	$1F, $1F, $1F, $1F, 	$0A, $08, $0C, $0A
;	$07, $0A, $07, $05, 	$2F, $AF, $AF, $5F, 	$14, $85, $8A, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $0C, $04, $0A
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0C, $08, $0A
	smpsVcDecayRate2    $05, $07, $0A, $07
	smpsVcDecayLevel    $05, $0A, $0A, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $0A, $05, $14

