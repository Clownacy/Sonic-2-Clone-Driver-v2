Snd_DDZ2_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     Snd_DDZ2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $1D

	smpsHeaderDAC       Snd_DDZ2_DAC
	smpsHeaderFM        Snd_DDZ2_FM1,	$00, $0E
	smpsHeaderFM        Snd_DDZ2_FM2,	$0C, $0E
	smpsHeaderFM        Snd_DDZ2_FM3,	$00, $1B
	smpsHeaderFM        Snd_DDZ2_FM4,	$00, $1B
	smpsHeaderFM        Snd_DDZ2_FM5,	$00, $14
	smpsHeaderPSG       Snd_DDZ2_PSG1,	$E8, $03, $00, $00
	smpsHeaderPSG       Snd_DDZ2_PSG2,	$E8, $03, $00, $00
	smpsHeaderPSG       Snd_DDZ2_PSG3,	$23, $02, $00, $00

; FM1 Data
Snd_DDZ2_FM1:
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $01, $04
	dc.b	nRst, $60, nRst

Snd_DDZ2_Jump01:
	smpsSetvoice        $00
	dc.b	nC6, $09, nB5, $03, nA5, $02, nG5, nF5, nE5, nD5, $01, nC5
	dc.b	$02, nB4, $01, nF4, $06, nRst, nE4, nRst, nD4, $12, nE4, $06
	dc.b	nRst, $0C, nF4, $06, nRst, nF4, nRst, nE4, nRst, nD4, $12, nE4
	dc.b	$06, nRst, nG3, $12, nC4, $06, nRst, nE4, nRst, nEb4, $12, nF4
	dc.b	$06, nRst, $0C, nC4, nRst, $06, nAb3, $12, nC4, $0C, nEb4, nD4
	dc.b	$12, nBb3, nF4, $06, nRst, $0C, $06, nRst, $0C, nBb4, $18
	smpsLoop            $00, $02, Snd_DDZ2_Jump01
	dc.b	nC5, $44, nRst, $04, nB4, $10, nG4, $08, smpsNoAttack, $24, nF4, $02
	dc.b	nG4, $16, nF4, $0C, nE4, nF4, nG4, nFs4, nG4, nC4, $10, nRst
	dc.b	$08, $06, nRst, $06, nD4, nRst, nE4, nRst, nD4, $18, $06, nRst
	dc.b	$06, nBb3, $3C, nC5, $30, nB4, $0C, nC5, nB4, nC5, $06, nG4
	dc.b	smpsNoAttack, nG4, $24, nFs4, $05, nG4, $13, nF4, $0C, nE4, nF4, nG4
	dc.b	$12, nC5, $06, nRst, $0C, nC4, nRst, nC4, nD4, nE4, nF4, $12
	dc.b	nE4, nF4, $06, nRst, $0C, $12, nG4, $18, nC4, $09, nB3, $03
	dc.b	nA3, $02, nG3, nF3, nE3, nD3, nC3, nB2, nA2, $03, nG2, $04
	dc.b	nRst, $24, nG4, $03, nC5, $12, nC4, $06, nRst, $60, nC4, $0C
	dc.b	nRst, $39, nG4, $03, nC5, $12, nC4, $06, nRst, $60, nRst
	smpsSetvoice        $03
	dc.b	nG4, $24, nAb4, $0C, $30, nRst, $0C, nG4, nAb4, nBb4, nC5, $12
	dc.b	nCs5, nCs5, $06, nEb5, nEb5, $30, $03, nF5, $15, nEb5, $0C, nCs5
	dc.b	nC5, $2A, nRst, $06, $18, nBb4, $0C, nAb4, nG4, $24, nAb4, $06
	dc.b	nRst, nAb4, $30, nRst, $0C, nG4, nAb4, nC5, nEb5, $12, nCs5, nC5
	dc.b	$06, nRst, nG5, $24, nEb5, nBb5, $0C, nEb5, smpsNoAttack, nEb5, $2A, nRst
	dc.b	$06, nCs5, $1A, nC5, $0C, nRst, $0A, nC5, $24, nCs5, $04, nRst
	dc.b	$08, $30, smpsNoAttack, nCs5, $2A, nRst, $06, nC5, $10, nRst, $08, nBb4
	dc.b	$0C, nAb4, nAb4, $25, nG4, $06, nRst, nG4, $12, nEb5, nCs5, $0B
	dc.b	nC5, $30, $18, nBb4, $0C, nAb4, nF4, $30, nAb4, nCs5, nF5, nG4
	dc.b	nEb5, nAb5, nG5, nAb5, $60, smpsNoAttack, nAb5, smpsNoAttack, nAb5, nAb3, $18, nB3
	dc.b	nCs4, nEb4
	smpsJump            Snd_DDZ2_Jump01

; FM2 Data
Snd_DDZ2_FM2:
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $01, $02
	smpsSetvoice        $01
	dc.b	nC1, $06, nRst, nC1, nRst, nC2, $0C, nC1, $06, $0C, nC2, $06
	dc.b	nC1, nRst, nC2, $0C, nC1, nC1, $06, nRst, nC1, nRst, nC2, $0C
	dc.b	nC1, $06, $0C, nC2, $06, nC1, nRst, nC2, $0C, nC1, $06, nC1

Snd_DDZ2_Loop03:
	dc.b	nC1, $06, nRst, nC1, nRst, nC2, $0C, nC1, $06, $0C, nC2, $06
	dc.b	nC1, nRst, nC2, $0C, nC1, $06, nC1, nC1, nRst, nC1, nRst, nC2
	dc.b	$0C, nC1, $06, $0C, nC2, $06, nC1, nRst, nG1, nC2, nG2, nG1
	dc.b	nAb1, nRst, nAb1, nRst, nAb2, $0C, nAb1, $06, nAb1, nRst, nAb2, nAb2
	dc.b	nRst, nAb1, nEb2, nAb2, nAb1, nBb1, $0C, nRst, $06, nAb1, $0C, nRst
	dc.b	$06, nG1, $0C, nRst, $06, nF1, $0C, nRst, $06, nF2, nEb2, nD2
	dc.b	nBb1
	smpsLoop            $00, $02, Snd_DDZ2_Loop03
	dc.b	nC1, $0C, $06, nC1, nBb1, nC2, nC1, nC1, $0C, $06, nC2, nRst
	dc.b	nBb1, nA1, nG1, nF1, nC1, $0C, $06, nC1, nBb1, nC2, nC1, nC1
	dc.b	nRst, nC1, nC2, nRst, nEb2, nE2, nG2, nBb1, nF1, $0C, $06, nF1
	dc.b	nEb2, nF2, nF1, nF1, nRst, nF1, nF2, nF1, nC2, nA1, nF2, nRst
	dc.b	nG1, $0C, $06, nG1, nF2, nG2, nG1, nG1, nRst, nG1, nG2, nG1
	dc.b	nF2, nE2, nD2, nBb1, nC1, $0C, $06, nC1, nBb1, nC2, nC1, nC1
	dc.b	$0C, $06, nC2, nRst, nBb1, nA1, nG1, nF1, nC1, $0C, $06, nC1
	dc.b	nBb1, nC2, nC1, nC1, nRst, nC1, nC2, nRst, nEb2, nE2, nG2, nBb1
	dc.b	nF1, $0C, $06, nF1, nEb2, nF2, nF1, nF1, nRst, nF1, nF2, nF1
	dc.b	nC2, nA1, nF2, nRst, nD2, $12, nC2, nB1, nG1, nG1, $06, nD2
	dc.b	nG2, nG1

Snd_DDZ2_Loop04:
	dc.b	nC1, $06, nRst, nC1, nRst, nC2, $0C, nC1, $06, $0C, nC2, $06
	dc.b	nC1, nRst, nC2, $0C, nC1
	smpsLoop            $00, $03, Snd_DDZ2_Loop04
	dc.b	nEb2, $12, nEb2, $06, nRst, $0C, $12, nF2, nF2, $06, nRst, nRst
	dc.b	$0C, nRst, $60, nCs1, $12, $06, nAb1, nRst, nCs2, $3C, nRst, $0C
	dc.b	nCs1, $06, nRst, nCs1, nAb1, nCs2, nAb1, nF2, $12, nEb2, nAb1, $0C
	dc.b	nCs1, $12, $06, nAb1, nRst, nCs2, $3C, nRst, $0C, nCs1, nAb1, nCs2
	dc.b	nEb2, $03, nF2, $0F, nEb2, $12, nAb1, $0C, nCs1, $12, $06, nAb1
	dc.b	nRst, nCs2, $3C, nA2, $03, nBb2, $15, nAb2, $18, nG2, $12, nCs2
	dc.b	nAb1, $0C, nCs1, $12, $06, nG1, nAb1, nCs2, $3C, nRst, $0C, nCs1
	dc.b	nAb1, nCs2, nEb2, $03, nF2, $0F, nEb2, $12, nAb1, $0C, nCs2, $12
	dc.b	$06, nAb2, nRst, nCs3, $18, nCs2, $06, nRst, nAb2, nRst, nCs3, $0C
	dc.b	nCs2, $12, $06, nAb2, nRst, nCs3, $18, nCs2, $06, nRst, nAb2, nRst
	dc.b	nCs3, nRst, nC2, $12, $06, nG2, nBb2, nC3, $18, $0C, nBb2, nG2
	dc.b	nF2, $06, nRst, nF2, nRst, nAb2, nRst, nF2, nRst, nC3, $12, nBb2
	dc.b	nAb2, $0C, nCs2, $12, $06, nAb2, nRst, nCs3, $3C, nCs2, $12, $06
	dc.b	nG2, nAb2, nCs3, $18, $0C, nC3, nAb2, nEb2, $12, $06, nG2, nRst
	dc.b	nBb2, $18, nEb2, $06, nRst, nEb2, nG2, nBb2, $0C, nCs3, $03, nEb3
	dc.b	$15, nCs3, $18, $03, nEb3, nCs3, $06, nC3, nAb2, nBb2, nAb2, nG2
	dc.b	nEb2, nAb1, nRst, nAb1, nRst, $12, nFs2, $06, nAb2, nRst, nAb1, $0C
	dc.b	nRst, $06, $0C, nRst, $06, nAb1, nRst, $0C, nAb1, $06, nRst, $12
	dc.b	nFs2, $06, nAb2, nRst, nAb1, $0C, $06, nFs1, nCs1, nEb1, nFs1, nAb1
	dc.b	nRst, nAb1, nRst, $12, nFs2, $06, nAb2, nRst, nAb1, $0C, nRst, $06
	dc.b	$0C, nRst, $06, nAb1, nAb1, $18, nB1, nCs2, nEb2
	smpsJump            Snd_DDZ2_Loop03

; FM3 Data
Snd_DDZ2_FM3:
	smpsPan             panLeft, $00
	smpsModSet          $01, $01, $01, $06
	smpsSetvoice        $02
	smpsFMAlterVol      $03
	dc.b	nC4, $06, nC4, nC5, nC5, nC4, nC5, nC5, nC4, nG5, nG5, nC4
	dc.b	nC5, nC4, nE5, nC5, nG4, nG5, nG5, nG4, nC5, nE4, nC5, nC5
	dc.b	nC4, nG5, nG5, nG4, nC5, nG4, nG4, nG4, nC4
	smpsFMAlterVol      $FD

Snd_DDZ2_Loop02:
	dc.b	nC4, $06, nC4, nC5, nC5, nC4, nC5, nC5, nC4, nE5, nE5, nC4
	dc.b	nE5, $12, $06, nE5, nC4, nC4, nC5, nC5, nC4, nC5, nC5, nC4
	dc.b	nE5, nE5, nC4, nE5, $0C, nRst, $06, nG4, nE4, nAb3, nAb3, nEb4
	dc.b	nEb4, nAb3, nG4, nG4, nAb3, nAb4, nAb4, nC4, nEb4, nEb4, nAb3, nAb3
	dc.b	nAb3, nBb4, $12, nAb4, nG4, nF4, nD4, $18
	smpsLoop            $00, $02, Snd_DDZ2_Loop02
	dc.b	nC3, $18, nC4, nG4, nC5, nC6, nG5, nC5, nC4, nF3, nC4, nA4
	dc.b	nF5, nD4, nG4, nBb4, nG5, nC3, nC4, nG4, nC5, nC6, nG5, nC5
	dc.b	nC4, nF3, nC4, nA4, nF5, nG3, $12, nD4, nB4, $06, nRst, $0C
	dc.b	nD5, $06, nRst, $0C, $18, nC4, $60, smpsNoAttack, nC4, nC4, nEb4, $12
	dc.b	nEb4, $06, nRst, $0C, $06, nRst, $0C, nD4, $06, nRst, $0C, $18
	dc.b	nRst, $60
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	smpsFMAlterVol      $FD
	dc.b	nCs2, $18, nAb2, $06, nCs3, nEb3, nF3, nAb3, nCs4, nEb4, nF4, nAb4
	dc.b	nCs5, nEb5, nF5, nAb5, $60, nEb2, $18, nBb2, $06, nEb3, nG3, nBb3
	dc.b	nEb4, nG3, nBb3, nEb4, nG4, nBb4, nEb5, nG5, nBb5, nAb5, nG5, nEb5
	dc.b	nBb4, nG4, nEb4, nBb3, nG4, nEb4, nBb3, nG3, nEb3, nBb2, nG2, nEb2
	dc.b	nCs2, nF2, nAb2, nCs3, nF3, nAb3, nCs4, nEb4, nF4, nCs3, nF3, nAb3
	dc.b	nCs4, nEb4, nAb4, nCs5, nF5, nCs5, nAb4, nF4, nCs5, nAb4, nF4, nCs4
	dc.b	nAb4, nF4, nCs4, nAb3, nF4, nCs4, nAb3, nF3, nBb4, $18, nAb4, nG4
	dc.b	nEb4, nEb5, nCs5, nBb4, nG4
	smpsFMAlterVol      $03
	smpsPan             panLeft, $00
	smpsSetvoice        $02
	dc.b	nAb3, $0C, nAb3, nCs4, nF4, nAb4, $12, nF5, nCs5, $0C, nBb3, nBb3
	dc.b	nEb4, nG4, nBb4, $12, nG5, nEb5, $0C, nG3, nG3, nC4, nEb4, nC5
	dc.b	$12, nG4, nEb4, $0C, nF3, nF3, nC4, nF4, nC5, $12, nAb4, nF4
	dc.b	$0C, $06, nF4, nF4, nRst, $0C, $06, nRst, $0C, $16, nRst, $1A
	dc.b	$06, nF4, nF4, nRst, $0C, $06, nRst, $0C, $16, nRst, $1A, nG4
	dc.b	$06, nG4, nG4, nRst, $0C, $06, nRst, $0C, $16, nRst, $1A, nBb4
	dc.b	$18, nAb4, nG4, nEb4, nEb4, $60, nD4, $5A, nRst, $06, nEb4, $60
	dc.b	nEb3, $18, nFs3, nF3, nBb3
	smpsJump            Snd_DDZ2_Loop02

; FM4 Data
Snd_DDZ2_FM4:
	smpsPan             panRight, $00
	smpsModSet          $01, $01, $01, $05
	smpsSetvoice        $02
	smpsFMAlterVol      $03
	dc.b	nG3, $06, nG3, nG4, nG4, nG3, nG4, nG4, nG3, nC5, nC5, nG3
	dc.b	nG4, nG3, nC5, nG4, nC4, nC5, nC5, nC4, nG4, nC4, nG4, nG4
	dc.b	nG3, nC5, nC5, nC4, nG4, nC4, nE4, nE4, nG3
	smpsFMAlterVol      $FD

Snd_DDZ2_Loop01:
	dc.b	nG3, $06, nG3, nG4, nG4, nG3, nG4, nG4, nG3, nG4, nG4, nG3
	dc.b	nG4, $12, $06, nG4, nG3, nG3, nG4, nG4, nG3, nG4, nG4, nG3
	dc.b	nG4, nG4, nG3, nG4, $0C, nRst, $06, nC4, nC4, nEb3, nEb3, nC4
	dc.b	nC4, nEb3, nEb4, nEb4, nEb3, nEb4, nEb4, nAb3, nC4, nC4, nEb3, nEb3
	dc.b	nEb3, nF4, $12, nEb4, nEb4, nD4, nBb3, $18
	smpsLoop            $00, $02, Snd_DDZ2_Loop01
	dc.b	nC2, $18, nG3, nC4, nG4, nG5, nC5, nG4, nG3, nC3, nA3, nF4
	dc.b	nC5, nG3, nBb3, nD4, nD5, nC2, nG3, nC4, nG4, nG5, nC5, nG4
	dc.b	nG3, nC3, nA3, nF4, nC5, nD3, $12, nB3, nG4, $06, nRst, $0C
	dc.b	$06, nRst, $0C, $18, nG3, $60, smpsNoAttack, nG3, nG3, nAb3, $12, nAb3
	dc.b	$06, nRst, $0C, $06, nRst, $0C, nBb3, $06, nRst, $0C, $18, nRst
	dc.b	$60
	smpsSetvoice        $04
	smpsFMAlterVol      $FD
	smpsFMAlterVol      $05
	smpsPan             panCenter, $00
	dc.b	nRst, $0B, nCs2, $18, nAb2, $06, nCs3, nEb3, nF3, nAb3, nCs4, nEb4
	dc.b	nF4, nAb4, nCs5, nEb5, nF5, nAb5, $60, nEb2, $18, nBb2, $06, nEb3
	dc.b	nG3, nBb3, nEb4, nG3, nBb3, nEb4, nG4, nBb4, nEb5, nG5, nBb5, nAb5
	dc.b	nG5, nEb5, nBb4, nG4, nEb4, nBb3, nG4, nEb4, nBb3, nG3, nEb3, nBb2
	dc.b	nG2, nEb2, nCs2, nF2, nAb2, nCs3, nF3, nAb3, nCs4, nEb4, nF4, nCs3
	dc.b	nF3, nAb3, nCs4, nEb4, nAb4, nCs5, nF5, nCs5, nAb4, nF4, nCs5, nAb4
	dc.b	nF4, nCs4, nAb4, nF4, nCs4, nAb3, nF4, nCs4, nAb3, nF3, nEb4, $18
	dc.b	nEb4, nEb4, nBb3, nBb4, nBb4, nG4, nEb4, $0D
	smpsFMAlterVol      $FB
	smpsFMAlterVol      $03
	smpsPan             panRight, $00
	smpsSetvoice        $02
	dc.b	nAb3, $0C, nAb3, nCs4, nF4, nAb4, $12, nF5, nCs5, $0C, nBb3, nBb3
	dc.b	nEb4, nG4, nBb4, $12, nG5, nEb5, $0C, nG3, nG3, nC4, nEb4, nC5
	dc.b	$12, nG4, nEb4, $0C, nF3, nF3, nC4, nF4, nC5, $12, nAb4, nF4
	dc.b	$0C, nCs4, $06, nCs4, nCs4, nRst, $0C, $06, nRst, $0C, $16, nRst
	dc.b	$1A, $06, nCs4, nCs4, nRst, $0C, $06, nRst, $0C, $16, nRst, $1A
	dc.b	nEb4, $06, nEb4, nEb4, nRst, $0C, $06, nRst, $0C, $16, nRst, $1A
	dc.b	$18, nEb4, nBb3, nBb3, nAb3, $60, nAb3, $5A, nRst, $06, nAb3, $60
	dc.b	nC4, $18, nEb4, nCs4, nG3
	smpsJump            Snd_DDZ2_Loop01

; FM5 Data
Snd_DDZ2_FM5:
	smpsModSet          $01, $01, $01, $08
	dc.b	nRst, $0B, nRst, $60, nRst
	smpsAlterNote       $01
	smpsJump            Snd_DDZ2_Jump01

; Unreachable
	smpsStop

; PSG1 Data
Snd_DDZ2_PSG1:
	smpsModSet          $02, $01, $01, $05
	smpsPSGvoice        sTone_11
	dc.b	nRst, $60, nRst

Snd_DDZ2_Jump03:
	dc.b	nC6, $09, nB5, $03, nA5, $02, nG5, nF5, nE5, nD5, nC5, nB4
	dc.b	nA4, nG4, nF4, $01, nE4, $02, nD4, nC4, $01, nB3, nA3, nG3
	dc.b	$02, nRst, $38, nRst, $60, nC5, nAb5, $12, nG5, nF5, $06, nRst
	dc.b	$0C, nEb5, $06, nRst, $0C, nD5, $18, nC6, $09, nB5, $03, nA5
	dc.b	$02, nG5, nF5, nE5, nD5, nC5, nB4, nA4, nG4, nF4, $01, nE4
	dc.b	$02, nD4, nC4, $01, nB3, nA3, nG3, $02, nRst, $38, nRst, $60
	dc.b	nC5, $24, nG5, $18, nF5, nEb5, $0C, nBb5, $12, nAb5, $06, nRst
	dc.b	$0C, nG5, $06, nRst, $0C, nF5, $12, nEb5, $06, nD5, nBb4, $0C
	dc.b	nC4, $60, nC5, nC4, nD4, nC4, nC5, nC4, nD4, $06, nRst, $0C
	dc.b	$06, nRst, $0C, $06, nRst, $0C, nG4, $06, nRst, $0C, $18, nC4
	dc.b	$30, nG4, nF5, nE5, nC4, nG4, nEb4, $12, nEb4, $06, nRst, $0C
	dc.b	$06, nRst, $0C, nD4, $06, nRst, $0C, $18, nRst, $60, nF4, $60
	dc.b	smpsNoAttack, nF4, nG4, smpsNoAttack, nG4, nF4, smpsNoAttack, nF4, nG4, smpsNoAttack, nG4, nCs5
	dc.b	$12, nCs5, $06, nRst, $0C, $3C, nEb5, $12, nEb5, $06, nRst, $0C
	dc.b	nEb5, nEb5, $18, nCs5, nC5, $12, nC5, $06, nRst, $0C, $24, nG5
	dc.b	$18, nF5, $0C, nG5, nAb5, $48, nCs5, $12, $06, nRst, $06, nC5
	dc.b	$12, nCs5, $30, $12, $06, nRst, $06, nC5, $12, nCs5, $30, nEb5
	dc.b	$06, nEb5, nEb5, nRst, $0C, nCs5, $12, nEb5, $16, nRst, $1A, nBb4
	dc.b	$18, nBb4, nEb5, nEb5, nAb5, $30, nC5, nD5, $5A, nRst, $06, nAb5
	dc.b	$30, nC5, nAb4, $18, nB4, nCs5, nEb5
	smpsJump            Snd_DDZ2_Jump03

; PSG2 Data
Snd_DDZ2_PSG2:
	smpsModSet          $02, $01, $01, $05
	smpsPSGvoice        sTone_11
	dc.b	nRst, $60, nRst

Snd_DDZ2_Jump02:
	smpsPSGvoice        sTone_11
	dc.b	nRst, $0D
	smpsPSGAlterVol     $02
	dc.b	nC6, $09, nB5, $03, nA5, $02, nG5, nF5, nE5, nD5, nC5, nB4
	dc.b	nA4, nG4, nF4, $01, nE4, $02, nD4, nC4, $01, nB3, nA3, nG3
	dc.b	$02, nRst, $38, nRst, $60, nAb4, nF5, $12, nEb5, nD5, $06, nRst
	dc.b	$0C, nC5, $06, nRst, $0C, nBb4, $18, nC6, $09, nB5, $03, nA5
	dc.b	$02, nG5, nF5, nE5, nD5, nC5, nB4, nA4, nG4, nF4, $01, nE4
	dc.b	$02, nD4, nC4, $01, nB3, nA3, nG3, $02, nRst, $38, nRst, $60
	dc.b	nAb4, $24, nEb5, $18, nD5, nC5, $0C, nG5, $12, nF5, $06, nRst
	dc.b	$0C, nEb5, $06, nRst, $0C, nD5, $12, nC5, $06, nBb4, nG4, $0C
	smpsPSGAlterVol     $FE
	dc.b	nG3, $53, nG4, $60, nF3, nG3, nG3, nG4, nF3, nG3, $06, nRst
	dc.b	$0C, $06, nRst, $0C, $06, nRst, $0C, nD4, $06, nRst, $0C, $18
	dc.b	nRst, $0D
	smpsPSGAlterVol     $02
	dc.b	nC4, $30, nG4, nF5, nE5, nC4, nG4, nEb4, $12, nEb4, $06, nRst
	dc.b	$0C, $06, nRst, $0C, nD4, $06, nRst, $0C, $18, nRst, $53
	smpsPSGAlterVol     $FE
	dc.b	nCs4, $60, smpsNoAttack, nCs4, nEb4, smpsNoAttack, nEb4, nCs4, smpsNoAttack, nCs4, nEb4, smpsNoAttack
	dc.b	nEb4, nAb4, $12, nAb4, $06, nRst, $0C, $3C, nBb4, $12, nBb4, $06
	dc.b	nRst, $0C, nBb4, nBb4, $18, nBb4, nG4, $12, nG4, $06, nRst, $0C
	dc.b	$24, nC5, $18, $0C, nC5, nC5, $48, nAb4, $12, $06, nRst, $06
	dc.b	$12, $30, $12, $06, nRst, $06, $12, $30, nBb4, $06, nBb4, nBb4
	dc.b	nRst, $0C, $12, $16, nRst, $1A, nG4, $18, nG4, nG4, nG4, nC5
	dc.b	$30, nEb4, nF4, $5A, nRst, $06, nC5, $30, nEb4, nEb4, $18, nFs4
	dc.b	nAb4, nBb4
	smpsJump            Snd_DDZ2_Jump02

; PSG3 Data
Snd_DDZ2_PSG3:
	smpsPSGform         $E7
	smpsNoteFill        $16

Snd_DDZ2_Loop05:
	smpsCall            Snd_DDZ2_Call00
	smpsLoop            $00, $02, Snd_DDZ2_Loop05

Snd_DDZ2_Loop06:
	smpsCall            Snd_DDZ2_Call00
	smpsLoop            $00, $03, Snd_DDZ2_Loop06
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF, $12, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, nRst, nRst, (nMaxPSG2-$23)&$FF, nRst, nRst
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF, $18
	smpsLoop            $01, $02, Snd_DDZ2_Loop06

Snd_DDZ2_Loop07:
	smpsCall            Snd_DDZ2_Call00
	smpsLoop            $00, $0B, Snd_DDZ2_Loop07
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF, $12
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, nRst, nRst, (nMaxPSG2-$23)&$FF, nRst, nRst, nRst, (nMaxPSG2-$23)&$FF, nRst
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF, $18, nRst, $60

Snd_DDZ2_Loop08:
	smpsCall            Snd_DDZ2_Call00
	smpsLoop            $00, $08, Snd_DDZ2_Loop08

Snd_DDZ2_Loop09:
	smpsCall            Snd_DDZ2_Call00
	smpsLoop            $00, $08, Snd_DDZ2_Loop09

Snd_DDZ2_Loop0A:
	smpsCall            Snd_DDZ2_Call00
	smpsLoop            $00, $03, Snd_DDZ2_Loop0A
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $18, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF
	smpsJump            Snd_DDZ2_Loop06

Snd_DDZ2_Call00:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF
	smpsReturn

; DAC Data
Snd_DDZ2_DAC:
	dc.b	dCrashCymbal, $18, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3

Snd_DDZ2_Jump00:
	dc.b	dCrashCymbal, $18, dSnareS3, dKickS3, dSnareS3, dKickS3, $18, dSnareS3, dKickS3, dSnareS3, dKickS3, $18
	dc.b	dSnareS3, dKickS3, dSnareS3, dKickS3, $06, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst
	dc.b	nRst, dSnareS3, nRst, nRst
	smpsPan             panLeft, $00
	dc.b	dElectricHighTom, dElectricMidTom
	smpsPan             panCenter, $00
	dc.b	dElectricLowTom
	smpsPan             panRight, $00
	dc.b	dElectricFloorTom
	smpsPan             panCenter, $00
	dc.b	dCrashCymbal, $18, dSnareS3, dKickS3, dSnareS3, dKickS3, $18, dSnareS3, dKickS3, dSnareS3, dKickS3, $18
	dc.b	dSnareS3, dKickS3, dSnareS3, dSnareS3, $03, dSnareS3, $03, nRst, $06, dKickS3, dSnareS3, $03
	dc.b	dSnareS3, $03, nRst, $06, dKickS3, dKickS3, nRst, nRst, dSnareS3, nRst, nRst
	smpsPan             panLeft, $00
	dc.b	dElectricMidTom
	smpsPan             panCenter, $00
	dc.b	dElectricLowTom
	smpsPan             panRight, $00
	dc.b	dElectricFloorTom, nRst
	smpsPan             panCenter, $00
	dc.b	dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, nRst, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst, dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst
	dc.b	nRst, dKickS3, nRst, dSnareS3, dKickS3, nRst, dSnareS3, nRst, nRst, nRst, dKickS3, $06
	dc.b	nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, nRst, dKickS3, nRst, dSnareS3
	dc.b	nRst, nRst, nRst, dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3
	dc.b	nRst, dSnareS3, dKickS3, nRst, dSnareS3, nRst, dSnareS3, dSnareS3, dCrashCymbal, $06, nRst, nRst
	dc.b	nRst, dSnareS3, nRst, nRst, dKickS3, nRst, nRst, dKickS3, nRst, dSnareS3, nRst, nRst
	dc.b	nRst, dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dSnareS3
	dc.b	dKickS3, nRst, dSnareS3, nRst, nRst, nRst, dKickS3, $06, nRst, nRst, nRst, dSnareS3
	dc.b	nRst, nRst, dKickS3, nRst, nRst, dKickS3, nRst, dSnareS3, nRst, nRst, nRst, dKickS3
	dc.b	$06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, nRst, dKickS3, nRst
	dc.b	dSnareS3, nRst, nRst, nRst, dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst
	dc.b	dKickS3, nRst, nRst, dKickS3, nRst, dSnareS3, nRst, nRst, nRst, dKickS3, nRst, nRst
	dc.b	nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dSnareS3, dKickS3, nRst, dSnareS3, nRst, nRst
	dc.b	nRst, dKickS3, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, nRst, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst, dSnareS3, nRst, dKickS3, dSnareS3, nRst, dKickS3, dSnareS3
	dc.b	nRst, nRst, dKickS3, nRst, nRst, dKickS3, nRst, dKickS3, nRst, dKickS3, dKickS3, nRst
	dc.b	dKickS3, dSnareS3, $04, dSnareS3, $02, nRst, $06, nRst, dSnareS3
	smpsPan             panLeft, $00
	dc.b	dElectricMidTom, $03, dElectricMidTom, $03, nRst, $06, nRst, dElectricMidTom
	smpsPan             panRight, $00
	dc.b	dElectricLowTom, dElectricLowTom, dElectricFloorTom, nRst
	smpsPan             panCenter, $00
	dc.b	dKickS3, $12, dKickS3, dKickS3, $3C, nRst, $0C, dKickS3, dSnareS3, $24, dKickS3, $0C
	dc.b	dSnareS3, $02, $16, dKickS3, $12, dKickS3, dKickS3, $3C, nRst, $0C, dKickS3, dSnareS3
	dc.b	$24, dKickS3, $0C, dSnareS3, $02, $16, dKickS3, $12, dKickS3, dKickS3, $0C
	smpsPan             panLeft, $00
	dc.b	dElectricHighTom, $12, dElectricMidTom, dElectricMidTom, $0C, nRst
	smpsPan             panCenter, $00
	dc.b	dElectricLowTom, $06
	smpsPan             panRight, $00
	dc.b	dElectricFloorTom, dElectricFloorTom, $24
	smpsPan             panCenter, $00
	dc.b	dKickS3, $0C, dSnareS3, $02, $16, dKickS3, $12, dKickS3, dKickS3, $24, dSnareS3, $18
	dc.b	dKickS3, $06, dSnareS3, $12, $18, dKickS3, $06, dSnareS3, $12, $06, dSnareS3, dSnareS3
	dc.b	dSnareS3, dCrashCymbal, $18, dSnareS3, dKickS3, dSnareS3

Snd_DDZ2_Loop00:
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dSnareS3
	smpsLoop            $00, $05, Snd_DDZ2_Loop00
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dSnareS3, $0C, $06, dSnareS3, dKickS3, $12, $06, dCrashCymbal
	dc.b	$18
	smpsPan             panLeft, $00
	dc.b	dElectricMidTom, $06, $0C, $06, dElectricLowTom, $0C
	smpsPan             panRight, $00
	dc.b	dElectricFloorTom, $06, dElectricFloorTom
	smpsPan             panCenter, $00
	dc.b	dCrashCymbal, $18, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3
	dc.b	dSnareS3, dKickS3, $06, dSnareS3, dKickS3, dKickS3, dCrashCymbal, nRst, nRst, dKickS3, dSnareS3, dSnareS3
	dc.b	dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3
	smpsJump            Snd_DDZ2_Jump00

Snd_DDZ2_Voices:
;	Voice $00
;	$3A
;	$3F, $7D, $73, $31, 	$9F, $5F, $54, $17, 	$0D, $14, $0A, $05
;	$01, $05, $01, $01, 	$FF, $9F, $8F, $FF, 	$29, $39, $23, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $03
	smpsVcCoarseFreq    $01, $03, $0D, $0F
	smpsVcRateScale     $00, $01, $01, $02
	smpsVcAttackRate    $17, $14, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $0A, $14, $0D
	smpsVcDecayRate2    $01, $01, $05, $01
	smpsVcDecayLevel    $0F, $08, $09, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $23, $39, $29

;	Voice $01
;	$3C
;	$01, $00, $00, $00, 	$1F, $1F, $15, $1F, 	$11, $0D, $12, $05
;	$07, $04, $09, $02, 	$55, $3A, $25, $1A, 	$1A, $80, $07, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $15, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $12, $0D, $11
	smpsVcDecayRate2    $02, $09, $04, $07
	smpsVcDecayLevel    $01, $02, $03, $05
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $80, $07, $80, $1A

;	Voice $02
;	$3E
;	$07, $01, $02, $01, 	$1F, $1F, $1F, $1F, 	$0D, $06, $00, $00
;	$08, $06, $00, $00, 	$15, $0A, $0A, $0A, 	$1B, $80, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $06, $0D
	smpsVcDecayRate2    $00, $00, $06, $08
	smpsVcDecayLevel    $00, $00, $00, $01
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $80, $80, $80, $1B

;	Voice $03
;	$16
;	$79, $71, $32, $33, 	$1F, $1F, $1F, $1F, 	$0A, $08, $0C, $0A
;	$07, $0A, $07, $05, 	$2F, $AF, $AF, $5F, 	$24, $80, $82, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $03, $02, $01, $09
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0C, $08, $0A
	smpsVcDecayRate2    $05, $07, $0A, $07
	smpsVcDecayLevel    $05, $0A, $0A, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $82, $80, $24

;	Voice $04
;	$45
;	$01, $06, $02, $01, 	$1F, $1F, $1F, $1F, 	$0D, $06, $00, $00
;	$08, $06, $00, $00, 	$15, $0A, $0A, $0A, 	$6B, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $00
	smpsVcUnusedBits    $01
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $06, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $06, $0D
	smpsVcDecayRate2    $00, $00, $06, $08
	smpsVcDecayLevel    $00, $00, $00, $01
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $80, $80, $80, $6B

; Unused voice
;	Voice $05
;	$F5
;	$24, $30, $10, $32, 	$1F, $1F, $1F, $1F, 	$05, $18, $09, $02
;	$06, $0F, $06, $02, 	$1F, $2F, $4F, $2F, 	$0F, $0E, $0E, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $03
	smpsVcDetune        $03, $01, $03, $02
	smpsVcCoarseFreq    $02, $00, $00, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $09, $18, $05
	smpsVcDecayRate2    $02, $06, $0F, $06
	smpsVcDecayLevel    $02, $04, $02, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $0E, $0E, $0F

; Unused voice
;	Voice $06
;	$3C
;	$64, $64, $22, $24, 	$1F, $0C, $19, $0C, 	$05, $04, $05, $04
;	$05, $05, $05, $05, 	$4F, $4F, $4F, $4F, 	$20, $80, $2A, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $02, $06, $06
	smpsVcCoarseFreq    $04, $02, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0C, $19, $0C, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $05, $04, $05
	smpsVcDecayRate2    $05, $05, $05, $05
	smpsVcDecayLevel    $04, $04, $04, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $2A, $80, $20

; Unused voice
;	Voice $07
;	$3D
;	$01, $02, $02, $02, 	$1F, $08, $8A, $0A, 	$08, $08, $08, $08
;	$00, $01, $00, $00, 	$0F, $1F, $1F, $1F, 	$1F, $88, $88, $87
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $01
	smpsVcRateScale     $00, $02, $00, $00
	smpsVcAttackRate    $0A, $0A, $08, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $08, $08, $08
	smpsVcDecayRate2    $00, $00, $01, $00
	smpsVcDecayLevel    $01, $01, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $87, $88, $88, $1F

