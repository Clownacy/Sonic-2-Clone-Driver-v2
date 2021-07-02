Snd_DDZ1_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_DDZ1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $1D

	smpsHeaderDAC       Snd_DDZ1_DAC
	smpsHeaderFM        Snd_DDZ1_FM1,	$00, $0E
	smpsHeaderFM        Snd_DDZ1_FM2,	$0C, $0E
	smpsHeaderFM        Snd_DDZ1_FM3,	$00, $17
	smpsHeaderFM        Snd_DDZ1_FM4,	$00, $17
	smpsHeaderFM        Snd_DDZ1_FM5,	$00, $14
	smpsHeaderPSG       Snd_DDZ1_PSG1,	$F4, $02, $00, $00
	smpsHeaderPSG       Snd_DDZ1_PSG2,	$F4, $04, $00, $00
	smpsHeaderPSG       Snd_DDZ1_PSG3,	$23, $02, $00, $00

; FM1 Data
Snd_DDZ1_FM1:
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $01, $04

Snd_DDZ1_Jump00:
	smpsSetvoice        $05
	dc.b	nRst, $06, nBb4, $06, nRst, nC5, smpsNoAttack, nC5, nB4, $02, nA4, nF4
	dc.b	nE4, nD4, $03, nB3, nBb3, $02, nA3, nF4, $06, nRst, nE4, nRst
	dc.b	nD4, $12, nE4, $06, nRst, $0C, nF4, $06, nRst

Snd_DDZ1_Jump04:
	dc.b	nF4, $06, nRst, nE4, nRst, nD4, $0C, nRst, $06, nE4, $06, nRst
	dc.b	$0C, nG3, $06, nRst, nC4, nRst, nE4, nRst, nEb4, $0C, nRst, $06
	dc.b	nF4, nRst, $0C, nC4, nRst, nAb3, $0C, nC4, nEb4
	smpsNoteFill        $12
	dc.b	nD4, $18, nBb3, nF4, nBb4
	smpsNoteFill        $00
	dc.b	nC5, $06, nB4, $02, nA4, nF4, nE4, nD4, $03, nB3, nBb3, $02
	dc.b	nA3, nF4, $06, nRst, nE4, nRst, nD4, $0C, nRst, $06, nE4, nRst
	dc.b	$0C, nF4, $06, nRst, nF4, nRst, nE4, nRst, nD4, $0C, nRst, $06
	dc.b	nE4, $06, nRst, $0C, nG3, $06, nRst, nC4, nRst, nE4, nRst, nEb4
	dc.b	$0C, nRst, $06, nF4, nRst, $0C, nC4, nRst, nAb3, $06, nRst, nC4
	dc.b	nRst, nEb4, nRst
	smpsNoteFill        $12
	dc.b	nD4, $18, nBb3, nF4, nBb4
	smpsNoteFill        $00
	smpsSetvoice        $00
	dc.b	nC5, $48, nB4, $12, nG4, $06, smpsNoAttack, $30, nRst, $0C, nF4, $0C
	dc.b	nE4, nF4, nG4, $12, nC4, $30, nRst, $06, nE4, $18, nD4, $2A
	dc.b	nRst, $06, nBb3, $2A, nRst, $06, nC5, $48, nB4, $12, nG4, $06
	dc.b	smpsNoAttack, $36, nRst, $06, nF4, $0C, nE4, nF4, nG4, $12, nC5, $0C
	dc.b	nRst, $06, nC4, $18, $0C, nD4, nE4, nF4, $18, nE4, nF4, nG4
	dc.b	nC4, $0C, nRst, $3C, nB4, $02, nC5, $11, nC4, $05, nRst, $60
	dc.b	nC4, $0C, nRst, $54, nRst, $60, nG4, $24, nAb4, $0C, $30, nRst
	dc.b	$0C, nG4, nAb4, nBb4, nC5, $12, nCs5, nEb5, $08, nRst, $04, $30
	dc.b	$18, nCs5, $0C, nC5, nBb4, $30, nAb4, $18, nG4, nG4, $24, nAb4
	dc.b	$0C, $30, nRst, $0C, nG4, nAb4, nC5, nEb5, $12, nCs5, nC5, $0C
	dc.b	nG5, $24, nEb5, nBb5, $0C, nEb5, smpsNoAttack, nEb5, $30, nCs5, $18, nC5
	dc.b	$0C, nRst, nC5, $24, nCs5, $0C, $30, smpsNoAttack, nCs5, nC5, $18, nBb4
	dc.b	$0C, nAb4, nAb4, $24, nG4, $0C, $12, nEb5, nCs5, $0C, nC5, $30
	dc.b	$18, nBb4, $0C, nAb4, nAb4, $48, nG4, $0C, nAb4, nAb4, $24, nG4
	dc.b	$0C, nAb4, $12, nC5, nEb5, $0C, nC5, $48, nBb4, $0C, nAb4, nBb4
	dc.b	$30, $18, nAb4, $0C, nG4, nAb4, $60, smpsNoAttack, nAb4, nRst, nRst, $48
	smpsSetvoice        $05
	dc.b	nRst, $06, nBb4, nRst, nC5, smpsNoAttack, nC5, nB4, $02, nA4, nF4, nE4
	dc.b	nD4, $03, nB3, nBb3, $02, nA3, nF4, $06, nRst, nE4, nRst, nD4
	dc.b	$12, nE4, $06, nRst, $0C, nF4, $06, nRst
	smpsJump            Snd_DDZ1_Jump04

; FM2 Data
Snd_DDZ1_FM2:
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $01, $02
	smpsSetvoice        $01
	dc.b	nRst, $06, nBb1, $06, nRst, nC2, smpsNoAttack, nC2, nRst, $1E, nC2, $06
	dc.b	nC2, nRst, $30

Snd_DDZ1_Jump03:
	dc.b	nRst, $0C, nC2, $06, nRst, $1E, nC3, $06, nRst, nB2, nRst, nG2
	dc.b	nRst, nC2, nRst, nAb1, nRst, nAb1, nRst, $12, nEb1, $06, nAb1, nRst
	dc.b	$18, nEb2, $06, nAb2, nAb1, $0C, nBb1, $06, nRst, nBb1, nRst, $12
	dc.b	nF1, $06, nBb1, nRst, $18, nBb2, $06, nAb2, nG2, $0C, nC2, $06
	dc.b	nRst, $1E, $06, nC2, nRst, $30, nRst, $0C, nC2, $06, nRst, $1E
	dc.b	nC3, $06, nRst, nB2, nRst, nG2, nRst, nC2, nRst, nAb1, nRst, nAb1
	dc.b	nRst, $12, nEb1, $06, nAb1, nRst, $18, nEb2, $06, nAb2, nAb1, $0C
	dc.b	nBb1, $06, nRst, nBb1, nRst, $12, nF1, $06, nBb1, nRst, $18, nBb2
	dc.b	$06, nAb2, nG2, $0C

Snd_DDZ1_Loop06:
	dc.b	nC2, $0C, $06, nC2, nBb2, nC3, nC2, nC2, $0C, nC3, $06, nBb2
	dc.b	nA2, nG2, $0C, nF2, $06, nG2, nC2, $0C, $06, nC2, nC3, $0C
	dc.b	nC2, $06, nC2, nRst, nC2, nBb2, nC2, nA2, nC2, nG2, nC2, nC2
	dc.b	$0C, $06, nC2, nC3, nRst, nC2, nC2, nRst, nC2, nF2, nRst, nG2
	dc.b	nC2, nA2, nRst, nC2, $0C, $06, nC2, nBb2, nC3, nC2, nC2, $0B
	dc.b	nF2, $03, nG2, $10, nF2, $0C, nBb1
	smpsLoop            $00, $02, Snd_DDZ1_Loop06

Snd_DDZ1_Loop07:
	dc.b	nC2, $0C, $06, nC2, nBb2, nC3, nC2, nC2, $0C, $06, nBb2, nC3
	dc.b	nC2, nRst, nC2, nRst
	smpsLoop            $00, $03, Snd_DDZ1_Loop07
	dc.b	nAb1, $06, nAb1, nRst, nAb1, $12, nBb1, $06, nBb1, nRst, nBb1, $2A

Snd_DDZ1_Loop08:
	dc.b	nCs2, $12, $06, nAb2, nRst, nCs3, $3C, nRst, $0C, nCs2, $06, nRst
	dc.b	nAb2, nRst, nCs3, nRst, nF3, $12, nEb3, nAb2, $0C
	smpsLoop            $00, $04, Snd_DDZ1_Loop08
	dc.b	nCs2, $12, $06, nAb2, nRst, nCs3, $18, nCs2, $06, nRst, nAb2, nRst
	dc.b	nCs3, $0C, nCs2, $12, $06, nAb2, nRst, nCs3, $18, nCs2, $06, nRst
	dc.b	nAb2, nRst, nCs3, nRst, nC2, $12, $06, nG2, nBb2, nC3, $06, smpsNoAttack
	dc.b	$12, $0C, nBb2, nG2, nF2, $06, nRst, nF2, nRst, nAb2, nRst, nF2
	dc.b	nRst, nC3, $12, nBb2, nAb2, $0C, nCs2, $12, $06, nAb2, nRst, nCs3
	dc.b	$3C, nCs2, $12, $06, nG2, nAb2, nCs3, $18, $0C, nC3, nAb2, nEb2
	dc.b	$12, $06, nG2, nRst, nBb2, $18, nEb2, $06, nRst, nEb2, nG2, nBb2
	dc.b	$0C, nCs3, $03, nEb3, $15, nCs3, $18, $03, nEb3, nCs3, $06, nC3
	dc.b	nAb2, nBb2, nAb2, nG2, nEb2, nAb1, nRst, nAb1, nRst, $12, nFs2, $06
	dc.b	nAb2, nRst, nAb1, $0C, nRst, $06, $0C, nRst, $06, nAb1, nRst, $0C
	dc.b	nAb1, $06, nRst, $12, nFs2, $06, nAb2, nRst, nAb1, $0C, $06, nFs1
	dc.b	nCs1, nEb1, nFs1, nAb1, nRst, nAb1, nRst, $12, nFs2, $06, nAb2, nRst
	dc.b	nAb1, $0C, nRst, $06, $0C, nRst, $06, nAb1, nRst, $0C, nAb1, $06
	dc.b	nRst, $12, nFs2, $06, nAb2, nRst, nAb1, $0C, nAb1, $06, nRst, nBb2
	dc.b	nRst, nC2, smpsNoAttack, nC2, nRst, $1E, $06, nC2, nRst, $30
	smpsJump            Snd_DDZ1_Jump03

; FM3 Data
Snd_DDZ1_FM3:
	smpsPan             panRight, $00
	smpsModSet          $01, $01, $01, $06
	smpsSetvoice        $02
	dc.b	nRst, $06, nBb4, $06, nRst, nC5, smpsNoAttack, nC5, nB4, $02, nA4, nF4
	dc.b	nE4, nD4, $03, nB3, nBb3, $02, nA3, nF4, $06, nRst, nE4, nRst
	dc.b	nD4, $12, nE4, $06, nRst, $0C, nF4, $06, nRst

Snd_DDZ1_Jump02:
	dc.b	nF4, $06, nRst, nE4, nRst, nD4, $0C, nRst, $06, nE4, $06, nRst
	dc.b	$0C, nG3, $06, nRst, nC4, nRst, nE4, nRst, nEb4, $0C, nRst, $06
	dc.b	nF4, nRst, $0C, nC4, nRst, nAb3, $0C, nC4, nEb4
	smpsNoteFill        $12
	dc.b	nD4, $18, nBb3, nF4, nBb4
	smpsNoteFill        $00
	dc.b	nC5, $06, nB4, $02, nA4, nF4, nE4, nD4, $03, nB3, nBb3, $02
	dc.b	nA3, nF4, $06, nRst, nE4, nRst, nD4, $0C, nRst, $06, nE4, nRst
	dc.b	$0C, nF4, $06, nRst, nF4, nRst, nE4, nRst, nD4, $0C, nRst, $06
	dc.b	nE4, $06, nRst, $0C, nG3, $06, nRst, nC4, nRst, nE4, nRst, nEb4
	dc.b	$0C, nRst, $06, nF4, nRst, $0C, nC4, nRst, nAb3, $06, nRst, nC4
	dc.b	nRst, nEb4, nRst
	smpsNoteFill        $12
	dc.b	nD4, $18, nBb3, nF4, nBb4
	smpsNoteFill        $00

Snd_DDZ1_Loop05:
	smpsSetvoice        $05
	dc.b	nC4, $48, $12, nBb3, $66, nA3, $48, $06, $06, nRst, nBb3, smpsNoAttack
	dc.b	$48, nRst, $18
	smpsLoop            $00, $02, Snd_DDZ1_Loop05
	smpsSetvoice        $05
	dc.b	nRst, $0C, nC5, $06, nC5, nB4, nC5, nRst, $0C, $06, nC5, nB4
	dc.b	nC5, nRst, nC4, nRst, nC4, nRst, $0C, nC5, $06, nC5, nB4, nC5
	dc.b	nRst, $0C, $06, nC5, nB4, nC5, nRst, $18, nRst, $0C, nC5, $06
	dc.b	nC5, nB4, nC5, nRst, $0C, $06, nC5, nB4, nC5, nRst, nC4, nRst
	dc.b	nC4, nBb4, nBb4, nRst, nBb4, $12, $06, nBb4, nRst, nBb4, $2A
	smpsSetvoice        $04
	smpsFMAlterVol      $FB
	dc.b	nF4, $60, smpsNoAttack, $60, nG4, $60, smpsNoAttack, nG4, nF4, smpsNoAttack, nF4, nG4
	dc.b	smpsNoAttack, nG4, $60
	smpsSetvoice        $02
	smpsFMAlterVol      $05
	dc.b	nF4, $12, nF4, $06, nRst, $0C, nF4, $30, nF4, $06, nRst, $12
	dc.b	nG4, $06, nRst, nG4, $18, nF4, $0C, nRst, nG4, nRst, nEb4, $12
	dc.b	nEb4, $06, nRst, $0C, $3C, $06, nRst, $06, nF4, nRst, nF4, $48
	dc.b	nCs4, $0C, nRst, $06, nCs4, nRst, $0C, nCs4, $06, nRst, nF4, $0C
	dc.b	nRst, $06, nF4, nRst, $0C, nF4, $06, nRst, nAb4, $30, nCs5, nG4
	dc.b	$06, nRst, $12, $06, nRst, $12, nG4, $0C, nRst, $06, nAb4, nRst
	dc.b	$0C, nAb4, $06, nRst, nBb4, $12, nAb4, $06, nRst, $0C, nG4, nEb4
	dc.b	$06, nF4, nG4, nAb4, nBb4, nC5, nCs5, nEb5
	smpsSetvoice        $04
	smpsFMAlterVol      $F1
	dc.b	nAb5, $48, nC5, $12, nD5, $06, smpsNoAttack, $60, nRst, $48, nEb5, $12
	dc.b	nD5, $06, smpsNoAttack, $48
	smpsSetvoice        $02
	smpsFMAlterVol      $0F
	dc.b	nRst, $06, nBb4, nRst, nC5, smpsNoAttack, nC5, nB4, $02, nA4, nF4, nE4
	dc.b	nD4, $03, nB3, nBb3, $02, nA3, nF4, $06, nRst, nE4, nRst, nD4
	dc.b	$12, nE4, $06, nRst, $0C, nF4, $06, nRst
	smpsJump            Snd_DDZ1_Jump02

; FM4 Data
Snd_DDZ1_FM4:
	smpsPan             panLeft, $00
	smpsModSet          $01, $01, $01, $05
	smpsSetvoice        $02
	dc.b	nRst, $06, nF4, $06, nRst, nG4, smpsNoAttack, nG4, nRst, $12, nC4, $06
	dc.b	nRst, nC4, nRst, nC4, $0C, nRst, $06, nC4, nRst, $0C, nC4, $06
	dc.b	nRst

Snd_DDZ1_Jump01:
	dc.b	nC4, $06, nRst, nC4, nRst, nC4, $0C, nRst, $06, nC4, $06, nRst
	dc.b	$0C, nE3, $06, nRst, nG3, nRst, nC4, nRst, nC4, $0C, nRst, $06
	dc.b	nC4, $06, nRst, $0C, nAb3, nRst, nEb3, $06, nRst, nAb3, nRst, nC4
	dc.b	nRst
	smpsNoteFill        $12
	dc.b	nBb3, $18, nF3, nD4, nF4
	smpsNoteFill        $00
	dc.b	nG4, $06, nRst, $12, nC4, $06, nRst, nC4, nRst, nC4, $0C, nRst
	dc.b	$06, nC4, $06, nRst, $0C, nC4, $06, nRst, nC4, nRst, nC4, nRst
	dc.b	nC4, $0C, nRst, $06, nC4, $06, nRst, $0C, nE3, $06, nRst, nG3
	dc.b	nRst, nC4, nRst, nC4, $0C, nRst, $06, nC4, nRst, $0C, nAb3, nRst
	dc.b	nEb3, $06, nRst, nAb3, nRst, nC4, nRst
	smpsNoteFill        $12
	dc.b	nBb3, $18, nF3, nD4, nF4
	smpsNoteFill        $00

Snd_DDZ1_Loop04:
	smpsSetvoice        $05
	dc.b	nG3, $48, $12, nF3, $66, nF3, $48, $06, $06, nRst, nG3, smpsNoAttack
	dc.b	$48, nRst, $18
	smpsLoop            $00, $02, Snd_DDZ1_Loop04
	smpsSetvoice        $05
	dc.b	nRst, $0C, nG4, $06, nG4, nG4, nG4, nRst, $0C, $06, nG4, nG4
	dc.b	nG4, nRst, nG3, nRst, nG3, nRst, $0C, nG4, $06, nG4, nG4, nG4
	dc.b	nRst, $0C, $06, nG4, nG4, nG4, nRst, $18, nRst, $0C, nG4, $06
	dc.b	nG4, nG4, nG4, nRst, $0C, $06, nG4, nG4, nG4, nRst, nG3, nRst
	dc.b	nG3, nEb4, nEb4, nRst, nEb4, $12, nF4, $06, nF4, nRst, nF4, $2A
	smpsSetvoice        $04
	smpsFMAlterVol      $FB
	dc.b	nCs4, $60, smpsNoAttack, $60, nEb4, smpsNoAttack, nEb4, nCs4, smpsNoAttack, nCs4, nEb4, smpsNoAttack
	dc.b	nEb4
	smpsSetvoice        $02
	smpsFMAlterVol      $05
	dc.b	nCs4, $12, nCs4, $06, nRst, $0C, nCs4, $30, nCs4, $06, nRst, $12
	dc.b	nEb4, $06, nRst, nEb4, $18, nCs4, $06, nRst, $12, nEb4, $06, nRst
	dc.b	$12, nC4, $12, nC4, $06, nRst, $0C, nC4, $3C, nC4, $06, nRst
	dc.b	$06, nC4, nRst, nC4, $48, nBb3, $0C, nRst, $06, nBb3, nRst, $0C
	dc.b	nBb3, $06, nRst, nCs4, $0C, nRst, $06, nCs4, nRst, $0C, nCs4, $06
	dc.b	nRst, nCs4, $30, nF4, nEb4, $06, nRst, $12, $06, nRst, $12, nEb4
	dc.b	$0C, nRst, $06, nEb4, nRst, $0C, nEb4, $06, nRst, nEb4, $12, nEb4
	dc.b	$06, nRst, $0C, nEb4, nBb3, $06, nC4, nCs4, nEb4, nF4, nG4, nAb4
	dc.b	nBb4
	smpsSetvoice        $04
	smpsFMAlterVol      $F1
	dc.b	nC5, $48, nEb4, $12, nF4, $06, smpsNoAttack, $60, nRst, $48, nC5, $12
	dc.b	nF4, $06, smpsNoAttack, $48
	smpsSetvoice        $02
	smpsFMAlterVol      $0F
	dc.b	nRst, $06, nF4, nRst, nG4, smpsNoAttack, nG4, nRst, $12, nC4, $06, nRst
	dc.b	nC4, nRst, nC4, $0C, nRst, $06, nC4, nRst, $0C, nC4, $06, nRst
	smpsJump            Snd_DDZ1_Jump01

; FM5 Data
Snd_DDZ1_FM5:
	smpsModSet          $01, $01, $01, $08
	dc.b	nRst, $0B
	smpsAlterNote       $01
	smpsJump            Snd_DDZ1_Jump00

; Unreachable
	smpsStop

; PSG1 Data
Snd_DDZ1_PSG1:
	smpsModSet          $03, $01, $01, $03
	smpsPSGvoice        sTone_11
	dc.b	nRst, $06, nBb4, $06, nRst, nC5, smpsNoAttack, nC5, nB4, $02, nA4, nF4
	dc.b	nE4, nD4, $03, nB3, nBb3, $02, nA3, nF4, $06, nRst, nE4, nRst
	dc.b	nD4, $0C, nRst, $06, nE4, nRst, $0C, nF4, $06, nRst

Snd_DDZ1_Jump05:
	dc.b	nF4, $06, nRst, nE4, nRst, nD4, $0C, nRst, $06, nE4, nRst, $0C
	dc.b	nG3, $06, nRst, nC4, nRst, nE4, nRst, nEb4, $0C, nRst, $06, nF4
	dc.b	nRst, $0C, nC4, nRst, nAb3, $06, nRst, nC4, nRst, nEb4, nRst, nD4
	dc.b	$0C, nRst, nBb3, nRst, nF4, nRst, nBb4, nRst, nC5, $06, nB4, $02
	dc.b	nA4, nF4, nE4, nD4, $03, nB3, nBb3, $02, nA3, nF4, $06, nRst
	dc.b	nE4, nRst, nD4, $0C, nRst, $06, nE4, nRst, $0C, nF4, $06, nRst
	dc.b	nF4, nRst, nE4, nRst, nD4, $0C, nRst, $06, nE4, nRst, $0C, nG3
	dc.b	$06, nRst, nC4, nRst, nE4, nRst, nEb4, $0C, nRst, $06, nF4, nRst
	dc.b	$0C, nC4, nRst, nAb3, $06, nRst, nC4, nRst, nEb4, nRst, nD4, $0C
	dc.b	nRst, nBb3, nRst, nF4, nRst, nBb4, nRst

Snd_DDZ1_Loop0D:
	dc.b	nC4, $06, nRst, nG4, nRst, nC5, nRst, nG4, nC4, nRst, nC4, nG4
	dc.b	nRst, nE5, nRst, nC5, nRst, nC4, nRst, nF4, nRst, nBb4, nRst, nF4
	dc.b	nC4, nRst, nD4, nF4, nRst, nD5, nRst, nBb4, nRst, nC4, nRst, nF4
	dc.b	nRst, nC5, nRst, nA4, nC4, nRst, nC4, nA4, nRst, nF5, nRst, nC5
	dc.b	nRst, nD4, nRst, nBb4, nRst, nG4, nRst, nBb4, nD4, nRst, nD4, nD5
	dc.b	nRst, nBb4, nRst, nG4, nRst
	smpsLoop            $00, $02, Snd_DDZ1_Loop0D
	dc.b	nC4, $06, nRst, $5A, nRst, $48, nC6, $06, nG5, nC5, nRst, nRst
	dc.b	$60, nBb3, $06, nBb3, nEb4, nBb4, $0C, nRst, $06, nBb3, nBb3, nF4
	dc.b	nBb4, $12, $03, nF4, nEb4, nBb3
	smpsPSGAlterVol     $FE
	smpsPSGvoice        sTone_0F
	dc.b	nBb4, nF4, nD4, nBb3

Snd_DDZ1_Loop0E:
	dc.b	nBb4, $03, nF4, nD4, nBb3
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Snd_DDZ1_Loop0E
	smpsPSGAlterVol     $FA
	smpsPSGvoice        sTone_26
	dc.b	nF4, $30, nG4, $30, nAb4, $30, nBb4, $30, nEb4, $60

Snd_DDZ1_Loop0F:
	smpsPSGvoice        sTone_23
	dc.b	nF5, $06, nEb5, nCs5, nAb4
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Snd_DDZ1_Loop0F
	smpsPSGAlterVol     $F8
	smpsPSGvoice        sTone_26
	dc.b	nF4, $30, nG4, nEb4, nEb5
	smpsPSGvoice        sTone_23
	dc.b	nG6, $06, nEb6, nBb5, nG5, nEb5, nBb4, nG4, nEb4, nEb6, nBb5, nG5
	dc.b	nEb5, nBb4, nG4, nEb4, nBb3, nCs6, nAb5, nF5, nCs5, nAb4, nF4, nCs4
	dc.b	nAb3, nAb5, nF5, nCs5, nAb4, nF4, nCs4, nAb3, nF3, nRst, $60, nRst
	dc.b	nRst
	smpsPSGvoice        sTone_11
	dc.b	nCs4, $0C, nRst, $06, nCs4, nRst, $0C, nCs4, $06, nRst, nF4, $0C
	dc.b	nRst, $06, nF4, nRst, $0C, nF4, $06, nRst, nAb4, $30, nCs5, $30
	dc.b	nEb4, $18, nBb4, nEb5, nBb5
	smpsPSGvoice        sTone_23
	dc.b	nG5, $06, nF5, nEb5, nBb4, nG4, nF4, nEb4, nBb3, nEb4, nF4, nG4
	dc.b	nAb4, nBb4, nC5, nCs5, nG5, nAb3, $06, nAb3, nEb4, nEb4, nAb4, nAb4
	dc.b	nEb4, nEb4, nEb5, nEb5, nAb4, nAb4, nEb4, nEb4, nAb4, nAb4, nBb4, nBb4
	dc.b	nF4, nF4, nBb3, nBb3, nF5, nF5, nBb4, nBb4, nF4, nF4, nBb4, nBb4
	dc.b	nBb3, nBb3, nAb3, nAb3, nEb4, nEb4, nAb4, nAb4, nEb4, nEb4, nEb5, nEb5
	dc.b	nAb4, nAb4, nEb4, nEb4, nAb4, nAb4, nBb4, nBb4, nF4, nF4, nBb3, nBb3
	dc.b	nF5, nF5, nBb4, nBb4, nF4, nF4, nRst, $06
	smpsPSGvoice        sTone_11
	dc.b	nBb4, $06, nRst, nC5, smpsNoAttack, nC5, nB4, $02, nA4, nF4, nE4, nD4
	dc.b	$03, nB3, nBb3, $02, nA3, nF4, $06, nRst, nE4, nRst, nD4, $0C
	dc.b	nRst, $06, nE4, nRst, $0C, nF4, $06, nRst
	smpsJump            Snd_DDZ1_Jump05

; PSG2 Data
Snd_DDZ1_PSG2:
	dc.b	nRst, $60, nRst, $18
	smpsModSet          $04, $01, $01, $04
	smpsPSGvoice        sTone_11
	dc.b	nRst, $0D
	smpsJump            Snd_DDZ1_Jump05

; PSG3 Data
Snd_DDZ1_PSG3:
	smpsPSGform         $E7
	smpsNoteFill        $16
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $12, nRst, $0C
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

Snd_DDZ1_Loop09:
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
	smpsLoop            $00, $0F, Snd_DDZ1_Loop09

Snd_DDZ1_Loop0A:
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
	smpsLoop            $00, $03, Snd_DDZ1_Loop0A
	dc.b	nRst, $30
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF, $24

Snd_DDZ1_Loop0B:
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
	smpsLoop            $00, $0F, Snd_DDZ1_Loop0B
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF, $2A
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $36

Snd_DDZ1_Loop0C:
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
	smpsLoop            $00, $03, Snd_DDZ1_Loop0C
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $48, nRst, $0C
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
	smpsJump            Snd_DDZ1_Loop09

; DAC Data
Snd_DDZ1_DAC:
	dc.b	dKickS3, $06, dSnareS3, dKickS3, dCrashCymbal, nRst, $18, dSnareS3, dKickS3, dSnareS3

Snd_DDZ1_Loop00:
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dSnareS3
	smpsLoop            $00, $07, Snd_DDZ1_Loop00

Snd_DDZ1_Loop01:
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dSnareS3
	smpsLoop            $00, $08, Snd_DDZ1_Loop01

Snd_DDZ1_Loop02:
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dSnareS3
	smpsLoop            $00, $03, Snd_DDZ1_Loop02
	dc.b	dSnareS3, $06, $0C, $12, $06, $0C, $12, $06, dSnareS3, dSnareS3, dSnareS3, dCrashCymbal
	dc.b	$12, dKickS3, dKickS3, $3C, nRst, $0C, dKickS3, dSnareS3, $24, dKickS3, $0C, dSnareS3
	dc.b	$02, $16, dKickS3, $12, dKickS3, dKickS3, $3C, nRst, $0C, dKickS3, dSnareS3, $24
	dc.b	dKickS3, $0C, dSnareS3, $02, $16, dKickS3, $12, dKickS3, dKickS3, $0C
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

Snd_DDZ1_Loop03:
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dSnareS3
	smpsLoop            $00, $05, Snd_DDZ1_Loop03
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dSnareS3, $0C, $06, dSnareS3, dKickS3, $12, $06, dCrashCymbal
	dc.b	$18
	smpsPan             panLeft, $00
	dc.b	dElectricMidTom, $06, $0C, $06, dElectricLowTom, $0C
	smpsPan             panRight, $00
	dc.b	dElectricFloorTom, $06, dElectricFloorTom
	smpsPan             panCenter, $00
	dc.b	dCrashCymbal, $18, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3
	dc.b	dSnareS3, dKickS3, $06, dSnareS3, $12, $0C, dElectricHighTom, $06, dElectricMidTom, dElectricLowTom, dSnareS3, $0C
	dc.b	$06, dKickS3, dSnareS3, dKickS3, dCrashCymbal, nRst, $18, dSnareS3, dKickS3, dSnareS3
	smpsJump            Snd_DDZ1_Loop00

Snd_DDZ1_Voices:
;	Voice $00
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
	smpsVcTotalLevel    $07, $08, $08, $1F

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
	smpsVcTotalLevel    $00, $07, $00, $1A

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
	smpsVcTotalLevel    $00, $00, $00, $1B

;	Voice $03
;	$3C
;	$71, $71, $11, $11, 	$17, $1E, $19, $1E, 	$04, $01, $07, $01
;	$00, $00, $00, $00, 	$F7, $F8, $F7, $F8, 	$1E, $80, $09, $80
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
	smpsVcTotalLevel    $00, $09, $00, $1E

;	Voice $04
;	$3A
;	$01, $75, $01, $41, 	$54, $59, $5C, $4C, 	$02, $06, $03, $04
;	$00, $00, $00, $00, 	$1F, $3F, $1F, $0F, 	$21, $28, $30, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $00, $07, $00
	smpsVcCoarseFreq    $01, $01, $05, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $0C, $1C, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $03, $06, $02
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $03, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $30, $28, $21

;	Voice $05
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
	smpsVcTotalLevel    $00, $23, $39, $29

; Unused voice
;	Voice $06
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

