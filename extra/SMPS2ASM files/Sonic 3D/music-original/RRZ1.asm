Snd_RRZ1_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     Snd_RRZ1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $40

	smpsHeaderDAC       Snd_RRZ1_DAC
	smpsHeaderFM        Snd_RRZ1_FM1,	$00, $10
	smpsHeaderFM        Snd_RRZ1_FM2,	$0C, $0D
	smpsHeaderFM        Snd_RRZ1_FM3,	$00, $17
	smpsHeaderFM        Snd_RRZ1_FM4,	$00, $17
	smpsHeaderFM        Snd_RRZ1_FM5,	$00, $19
	smpsHeaderPSG       Snd_RRZ1_PSG1,	$F4, $03, $00, $00
	smpsHeaderPSG       Snd_RRZ1_PSG2,	$F4, $05, $00, $00
	smpsHeaderPSG       Snd_RRZ1_PSG3,	$23, $03, $00, $00

; FM1 Data
Snd_RRZ1_FM1:
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $01, $08
	smpsSetvoice        $03
	smpsFMAlterVol      $04

Snd_RRZ1_Loop0B:
	dc.b	nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08, $04, nBb3, $08
	dc.b	nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nEb4, $08, $04, nD4
	dc.b	$08, nBb3, $04, nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08
	dc.b	$04, nBb3, $08, nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nG4
	dc.b	$08, $10
	smpsLoop            $00, $03, Snd_RRZ1_Loop0B
	dc.b	nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08, $04, nBb3, $08
	dc.b	nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nEb4, $08, $04, nD4
	dc.b	$08, nBb3, $04, nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08
	dc.b	$04, nBb3, $08, nC4, $04, nG4, nF4, nG4, nF4, nEb4, nF4, nEb4
	dc.b	nD4, nEb4, nD4, nC4, nBb3
	smpsFMAlterVol      $FC

Snd_RRZ1_Jump02:
	smpsSetvoice        $00
	dc.b	nG4, $48, nC4, $18, nEb4, $30, nD4, $12, nEb4, nBb4, $0C, nA4
	dc.b	$30, nG4, smpsNoAttack, nG4, $2E, nRst, $32, $60, nC4, $30, $12, nG4
	dc.b	nEb4, $0C, nBb4, $24, nC5, $18, nA4, $24, smpsNoAttack, $60
	smpsFMAlterVol      $FE
	smpsSetvoice        $07
	dc.b	nG4, $30, nC4, nEb4, $12, nD4, nBb3, $24, nA3, $0C, nBb3, nC4
	dc.b	$24, nG4, $3C, smpsNoAttack, $2E, nRst, $32, nEb4, $60, nRst, $0C, nD4
	dc.b	nEb4, nG4, nBb4, $12, nA4, nF4, $0C, nG4, $12, nF4, $36, nBb4
	dc.b	$12, nA4, $06, smpsNoAttack, $60, nRst, $60
	smpsFMAlterVol      $02
	smpsFMAlterVol      $FE
	smpsSetvoice        $05
	dc.b	nC6, $18, nG5, nBb5, $14, nA5, $10, nC5, $0C, nEb5, $2E, nRst
	dc.b	$32, nRst, $60, nRst, $0C, nAb4, $14, nEb4, $10, nEb5, $14, nD5
	dc.b	$10, nBb4, $0C, nCs5, $14, nC5, $10, nAb4, $22, nRst, $1A, nRst
	dc.b	$0C, nAb4, $14, nEb4, $10, nEb5, $14, nD5, $10, nBb4, $0C, nCs5
	dc.b	$14, nC5, $10, nFs4, $3C, nRst, $0C, nAb4, $14, nEb4, $10, nEb5
	dc.b	$14, nD5, $10, nBb4, $0C, nCs5, $14, nC5, $10, nAb4, $22, nRst
	dc.b	$1A, nRst, $0C, nAb4, $14, nEb4, $10, nEb5, $14, nD5, $10, nBb4
	dc.b	$0C, nCs5, $14, nC5, $10, nFs4, $3C
	smpsFMAlterVol      $02
	dc.b	nC4, $60, nC3, nC4, $30, nG3, nG4, $60, nEb4, $30, nBb4, nG4
	dc.b	$60, nC4, $30, nG3, nG4, nF4, nEb4, $60, nF4, $30, nD4, nG4
	dc.b	$60, smpsNoAttack, $30, nEb5, $18, nD5
	smpsSetvoice        $03
	smpsFMAlterVol      $04
	dc.b	nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08, $04, nBb3, $08
	dc.b	nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nEb4, $08, $04, nD4
	dc.b	$08, nBb3, $04, nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08
	dc.b	$04, nBb3, $08, nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nG4
	dc.b	$08, $10, nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08, $04
	dc.b	nBb3, $08, nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nEb4, $08
	dc.b	$04, nD4, $08, nBb3, $04, nC4, $08, $04, nBb3, $08, nC4, $04
	dc.b	nRst, $08, $04, nBb3, $08, nC4, $04, nG4, nF4, nG4, nF4, nEb4
	dc.b	nF4, nEb4, nD4, nEb4, nD4, nC4, nBb3
	smpsFMAlterVol      $FC
	smpsJump            Snd_RRZ1_Jump02

; FM2 Data
Snd_RRZ1_FM2:
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $01, $02
	smpsSetvoice        $01
	dc.b	nRst, $60, nRst
	smpsSetvoice        $01
	dc.b	nC2, $60, smpsNoAttack, nC2, $48, nG1, $04, nRst, nG1, $10, nC2, $08
	dc.b	$04, nG1, $0C, nBb1, nC2, $08, $04, nRst, $30, nRst, $08, nC2
	dc.b	$04, nRst, $0C, nC2, nRst, nBb1, $04, nRst, $08, nBb1, nRst, $04
	dc.b	$0C, nG1, $08, nBb1, $04, nC2, $08, $04, nG1, $0C, nBb1, nC2
	dc.b	$08, $04, nRst, $30, nRst, $08, nC2, $04, nRst, $0C, nC2, nRst
	dc.b	nBb1, $04, nRst, $08, nBb1, nRst, $04, nG1, nRst, nG1, $10

Snd_RRZ1_Loop08:
	dc.b	nC2, $08, $04, nG1, $0C, nBb1, nC2, $08, $04, nRst, $30, nRst
	dc.b	$08, nC2, $04, nRst, $0C, nC2, nRst, nBb1, $04, nRst, $08, nBb1
	dc.b	nRst, $04, $0C, nG1, $08, nBb1, $04
	smpsLoop            $00, $08, Snd_RRZ1_Loop08

Snd_RRZ1_Loop09:
	dc.b	nC2, $08, $04, nG1, $0C, nBb1, nC2, $08, $04, nRst, $30, nRst
	dc.b	$08, nC2, $04, nRst, $0C, nC2, nRst, nBb1, $04, nRst, $08, nBb1
	dc.b	nRst, $04, $0C, nG1, $08, nBb1, $04
	smpsLoop            $00, $02, Snd_RRZ1_Loop09

Snd_RRZ1_Loop0A:
	dc.b	nAb1, $0C, $08, $04, $08, nAb2, $04, nRst, $08, nAb1, $34, nAb1
	dc.b	$18, nAb1, nEb1, nAb1, nFs1, $0C, $08, $04, $08, nFs2, $04, nRst
	dc.b	$08, nFs1, $34, $3C, nRst, $0C, $04, nRst, $04, nFs2, nG1, nRst
	dc.b	nG2
	smpsLoop            $00, $02, Snd_RRZ1_Loop0A
	dc.b	nC1, $08, $04, nC1, nRst, $08, $0C, nD1, $08, nEb1, $04, nRst
	dc.b	$08, nC1, $0C, $04, $08, nD1, $04, nEb1, $0C, nC1, $08, $04
	dc.b	nC1, nRst, $08, $0C, nD1, $08, nEb1, $04, nRst, $08, nC1, $0C
	dc.b	$04, $08, nD1, $04, nEb1, $0C, nC1, $08, $04, nC1, nRst, $08
	dc.b	$0C, nD1, $08, nEb1, $04, nRst, $08, nC1, $0C, $04, $08, nD1
	dc.b	$04, nEb1, $0C, nC1, $08, $04, nC1, nRst, $08, $0C, nD1, $08
	dc.b	nEb1, $04, nRst, $08, nC1, $0C, $04, $08, nD1, $04, nEb1, $0C
	dc.b	nC1, $08, $04, nC1, nRst, $08, $0C, nD1, $08, nEb1, $04, nRst
	dc.b	$08, nC1, $0C, $04, $08, nD1, $04, nEb1, $0C, nC1, $08, $04
	dc.b	nC1, nRst, $08, $0C, nD1, $08, nEb1, $04, nRst, $08, nC1, $0C
	dc.b	$04, $08, nD1, $04, nEb1, $0C, nC1, $08, $04, nC1, nRst, $08
	dc.b	$0C, nD1, $08, nEb1, $04, nRst, $08, nC1, $0C, $04, $08, nD1
	dc.b	$04, nEb1, $0C, nC1, $08, $04, nC1, nRst, $08, $0C, nD1, $08
	dc.b	nEb1, $04, nRst, $08, nC1, $0C, $04, $08, nD1, $04, nEb1, $0C
	dc.b	nC1, $08, $04, nC1, nRst, $08, $0C, nD1, $08, nEb1, $04, nRst
	dc.b	$08, nC1, $0C, $04, $08, nD1, $04, nEb1, $0C, nC1, $08, $04
	dc.b	nC1, nRst, $08, $0C, nD1, $08, nEb1, $04, nRst, $08, nC1, $0C
	dc.b	$04, $08, nD1, $04, nEb1, $0C, nC1, $08, $04, nC1, nRst, $08
	dc.b	$0C, nD1, $08, nEb1, $04, nRst, $08, nC1, $0C, $04, $08, nD1
	dc.b	$04, nEb1, $0C, nC1, $08, $04, nC1, nRst, $08, $0C, nD1, $08
	dc.b	nEb1, $04, nG1, $0C, nRst, nG1, $18, nC2, $08, $04, nG1, $0C
	dc.b	nBb1, nC2, $08, $04, nRst, $30, nRst, $08, nC2, $04, nRst, $0C
	dc.b	nC2, nRst, nBb1, $04, nRst, $08, nBb1, nRst, $04, $0C, nG1, $08
	dc.b	nBb1, $04, nC2, $08, $04, nG1, $0C, nBb1, nC2, $08, $04, nRst
	dc.b	$30, nRst, $08, nC2, $04, nRst, $0C, nC2, nRst, nBb1, $04, nRst
	dc.b	$08, nBb1, nRst, $04, nG1, nRst, nG1, $10
	smpsJump            Snd_RRZ1_Loop08

; FM3 Data
Snd_RRZ1_FM3:
	smpsPan             panLeft, $00
	smpsModSet          $01, $01, $01, $07
	smpsSetvoice        $02

Snd_RRZ1_Loop06:
	dc.b	nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08, $04, nBb3, $08
	dc.b	nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nEb4, $08, $04, nD4
	dc.b	$08, nBb3, $04, nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08
	dc.b	$04, nBb3, $08, nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nG4
	dc.b	$08, $10
	smpsLoop            $00, $03, Snd_RRZ1_Loop06
	dc.b	nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08, $04, nBb3, $08
	dc.b	nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nEb4, $08, $04, nD4
	dc.b	$08, nBb3, $04, nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08
	dc.b	$04, nBb3, $08, nC4, $04, nG4, nF4, nG4, nF4, nEb4, nF4, nEb4
	dc.b	nD4, nEb4, nD4, nC4, nBb3

Snd_RRZ1_Jump01:
	smpsSetvoice        $06
	dc.b	nG4, $60, smpsNoAttack, nG4, $16, nRst, $4A, nBb4, $60, smpsNoAttack, nBb4, $16
	dc.b	nRst, $4A, nG4, $60, smpsNoAttack, nG4, $16, nRst, $4A, nBb4, $60, smpsNoAttack
	dc.b	nBb4, $16, nRst, $4A, nA4, $60, smpsNoAttack, nA4, $16, nRst, $4A, nG4
	dc.b	$60, smpsNoAttack, nG4, $16, nRst, $4A, $60, smpsNoAttack, nG4, $16, nRst, $4A
	dc.b	nBb4, $60, smpsNoAttack, nBb4, $16, nRst, $4A

Snd_RRZ1_Loop07:
	smpsFMAlterVol      $FC
	smpsSetvoice        $03
	dc.b	nRst, $08, nG4, $10, $04, nRst, $08, nF4, $04, nRst, $08, nG4
	dc.b	$04, nRst, $08, nF4, $04, nRst, $08, nG4, nBb4, $04, nRst, $08
	dc.b	nG4, $04, smpsNoAttack, nG4, nRst, nG4, nF4, nRst, $08, nG4, $04, nRst
	dc.b	$08, nBb4, nF4, $04, nRst, $30
	smpsFMAlterVol      $04
	smpsLoop            $00, $02, Snd_RRZ1_Loop07
	smpsFMAlterVol      $FD
	smpsSetvoice        $05
	dc.b	nEb4, $60, smpsNoAttack, nEb4, nCs4, smpsNoAttack, nCs4, nEb4, smpsNoAttack, nEb4, nCs4, smpsNoAttack
	dc.b	nCs4
	smpsFMAlterVol      $03
	smpsSetvoice        $05
	smpsFMAlterVol      $F4
	dc.b	nC3, $60, smpsNoAttack, nC3, nC4, $48, $08, $04, nRst, $08, $04, nRst
	dc.b	$08, nBb3, $04, $22, nRst, $1A, $08, $04, nRst, $08, $04, nRst
	dc.b	$08, nAb3, $04, $22, nRst, $1A, $08, $04, nRst, $08, $04, nRst
	dc.b	$08, nG3, $04, $24, $0C, nF3, nEb3, nD3, nC4, $48, $08, $04
	dc.b	$08, $04, nRst, $08, nD4, $04, $22, nRst, $1A, $08, $04, nRst
	dc.b	$08, $04, nRst, $08, nEb4, $04, $2E, nRst, $0E, $08, $04, nRst
	dc.b	$08, $04, nRst, $08, nF4, $04, $24, nBb4, $30, nG4, $60, nC4
	dc.b	$18, nC4, nEb4, $18, nD4
	smpsFMAlterVol      $0C
	smpsSetvoice        $02
	dc.b	nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08, $04, nBb3, $08
	dc.b	nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nEb4, $08, $04, nD4
	dc.b	$08, nBb3, $04, nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08
	dc.b	$04, nBb3, $08, nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nG4
	dc.b	$08, $10, nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08, $04
	dc.b	nBb3, $08, nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nEb4, $08
	dc.b	$04, nD4, $08, nBb3, $04, nC4, $08, $04, nBb3, $08, nC4, $04
	dc.b	nRst, $08, $04, nBb3, $08, nC4, $04, nG4, nF4, nG4, nF4, nEb4
	dc.b	nF4, nEb4, nD4, nEb4, nD4, nC4, nBb3
	smpsJump            Snd_RRZ1_Jump01

; FM4 Data
Snd_RRZ1_FM4:
	smpsPan             panRight, $00
	smpsModSet          $01, $01, $01, $08
	smpsSetvoice        $02

Snd_RRZ1_Loop04:
	dc.b	nG3, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3, $08
	dc.b	nG3, $04, nRst, $08, $04, nEb3, nF3, nG3, nBb3, $08, $04, nG3
	dc.b	$08, $04, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3
	dc.b	$08, nG3, $04, nRst, $08, $04, nEb3, nF3, nG3, nBb3, $08, nD4
	dc.b	$10
	smpsLoop            $00, $03, Snd_RRZ1_Loop04
	dc.b	nG3, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3, $08
	dc.b	nG3, $04, nRst, $08, $04, nEb3, nF3, nG3, nBb3, $08, $04, nG3
	dc.b	$08, $04, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3
	dc.b	$08, nG3, $04, nEb4, nD4, nEb4, nD4, nC4, nD4, nC4, nBb3, nC4
	dc.b	nBb3, nG3, nF3

Snd_RRZ1_Jump00:
	smpsSetvoice        $06
	dc.b	nC4, $60, smpsNoAttack, nC4, $16, nRst, $4A, nEb4, $60, smpsNoAttack, nEb4, $16
	dc.b	nRst, $4A, nC4, $60, smpsNoAttack, nC4, $16, nRst, $4A, nEb4, $60, smpsNoAttack
	dc.b	nEb4, $16, nRst, $4A, nF4, $60, smpsNoAttack, nF4, $16, nRst, $4A, nEb4
	dc.b	$60, smpsNoAttack, nEb4, $16, nRst, $4A, nC4, $60, smpsNoAttack, nC4, $16, nRst
	dc.b	$4A, nEb4, $60, smpsNoAttack, nEb4, $16, nRst, $4A

Snd_RRZ1_Loop05:
	smpsSetvoice        $03
	smpsFMAlterVol      $FC
	dc.b	nRst, $08, nEb4, $10, $04, nRst, $08, nD4, $04, nRst, $08, nEb4
	dc.b	$04, nRst, $08, nD4, $04, nRst, $08, nEb4, nG4, $04, nRst, $08
	dc.b	nEb4, $04, smpsNoAttack, nEb4, nRst, nEb4, nD4, nRst, $08, nEb4, $04, nRst
	dc.b	$08, nG4, nD4, $04, nRst, $30
	smpsFMAlterVol      $04
	smpsLoop            $00, $02, Snd_RRZ1_Loop05
	smpsFMAlterVol      $FD
	smpsSetvoice        $05
	dc.b	nAb3, $60, smpsNoAttack, nAb3, nFs3, smpsNoAttack, nFs3, nAb3, smpsNoAttack, nAb3, nFs3, smpsNoAttack
	dc.b	nFs3
	smpsFMAlterVol      $03
	smpsSetvoice        $05
	smpsFMAlterVol      $F4
	dc.b	nG2, $60, smpsNoAttack, nG2, nG3, $48, $08, $04, nRst, $08, $04, nRst
	dc.b	$08, nG3, $04, $22, nRst, $1A, $08, $04, nRst, $08, $04, nRst
	dc.b	$08, nEb3, $04, $22, nRst, $1A, $08, $04, nRst, $08, $04, nRst
	dc.b	$08, nD3, $04, $24, $18, nG2, nG3, $48, $08, $04, $08, $04
	dc.b	nRst, $08, nG3, $04, $22, nRst, $1A, $08, $04, nRst, $08, $04
	dc.b	nRst, $08, nG3, $04, $2E, nRst, $0E, $08, $04, nRst, $08, $04
	dc.b	nRst, $08, nBb3, $04, $24, nD4, $30, nC4, $60, nG3, $18, nG3
	dc.b	nG3, $18, nG3
	smpsFMAlterVol      $0C
	smpsSetvoice        $02
	dc.b	nG3, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3, $08
	dc.b	nG3, $04, nRst, $08, $04, nEb3, nF3, nG3, nBb3, $08, $04, nG3
	dc.b	$08, $04, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3
	dc.b	$08, nG3, $04, nRst, $08, $04, nEb3, nF3, nG3, nBb3, $08, nD4
	dc.b	$10, nG3, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3
	dc.b	$08, nG3, $04, nRst, $08, $04, nEb3, nF3, nG3, nBb3, $08, $04
	dc.b	nG3, $08, $04, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04
	dc.b	nF3, $08, nG3, $04, nEb4, nD4, nEb4, nD4, nC4, nD4, nC4, nBb3
	dc.b	nC4, nBb3, nG3, nF3
	smpsJump            Snd_RRZ1_Jump00

; FM5 Data
Snd_RRZ1_FM5:
	smpsModSet          $01, $01, $01, $06
	dc.b	nRst, $10
	smpsAlterNote       $01
	smpsJump            Snd_RRZ1_FM1

; Unreachable
	smpsStop

; PSG1 Data
Snd_RRZ1_PSG1:
	smpsModSet          $01, $01, $01, $04
	smpsPSGvoice        sTone_1D

Snd_RRZ1_Loop12:
	dc.b	nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08, $04, nBb3, $08
	dc.b	nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nEb4, $08, $04, nD4
	dc.b	$08, nBb3, $04, nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08
	dc.b	$04, nBb3, $08, nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nG4
	dc.b	$08, $10
	smpsLoop            $00, $03, Snd_RRZ1_Loop12
	dc.b	nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08, $04, nBb3, $08
	dc.b	nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nEb4, $08, $04, nD4
	dc.b	$08, nBb3, $04, nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08
	dc.b	$04, nBb3, $08, nC4, $04, nG4, nF4, nG4, nF4, nEb4, nF4, nEb4
	dc.b	nD4, nEb4, nD4, nC4, nBb3

Snd_RRZ1_Loop13:
	dc.b	nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08, $04, nBb3, $08
	dc.b	nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nEb4, $08, $04, nD4
	dc.b	$08, nBb3, $04, nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08
	dc.b	$04, nBb3, $08, nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nG4
	dc.b	$08, $10
	smpsLoop            $00, $03, Snd_RRZ1_Loop13
	dc.b	nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08, $04, nBb3, $08
	dc.b	nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nEb4, $08, $04, nD4
	dc.b	$08, nBb3, $04, nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08
	dc.b	$04, nBb3, $08, nC4, $04, nG4, nF4, nG4, nF4, nEb4, nF4, nEb4
	dc.b	nD4, nEb4, nD4, nC4, nBb3

Snd_RRZ1_Loop14:
	dc.b	nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08, $04, nBb3, $08
	dc.b	nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nEb4, $08, $04, nD4
	dc.b	$08, nBb3, $04, nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08
	dc.b	$04, nBb3, $08, nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nG4
	dc.b	$08, $10
	smpsLoop            $00, $03, Snd_RRZ1_Loop14
	dc.b	nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08, $04, nBb3, $08
	dc.b	nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nEb4, $08, $04, nD4
	dc.b	$08, nBb3, $04, nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08
	dc.b	$04, nBb3, $08, nC4, $04, nG4, nF4, nG4, nF4, nEb4, nF4, nEb4
	dc.b	nD4, nEb4, nD4, nC4, nBb3

Snd_RRZ1_Loop15:
	dc.b	nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08, $04, nBb3, $08
	dc.b	nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nEb4, $08, $04, nD4
	dc.b	$08, nBb3, $04, nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08
	dc.b	$04, nBb3, $08, nC4, $04, nRst, $08, $04, nG3, nBb3, nC4, nG4
	dc.b	$08, $10
	smpsLoop            $00, $02, Snd_RRZ1_Loop15
	smpsAlterPitch      $F4
	dc.b	nAb4, $04, nEb4, nAb4, nBb4, nAb4, nBb4, nCs5, nBb4, nCs5, nEb5, nCs5
	dc.b	nEb5, nAb5, nEb5, nAb5, nBb5, nAb5, nBb5, nCs6, nAb5, nCs6, nEb6, nAb5
	dc.b	nEb6

Snd_RRZ1_Loop16:
	dc.b	nAb6, $0C, nEb6
	smpsPSGAlterVol     $03
	smpsLoop            $00, $04, Snd_RRZ1_Loop16
	smpsPSGAlterVol     $F4
	dc.b	nFs4, $04, nCs4, nFs4, nAb4, nFs4, nAb4, nBb4, nAb4, nBb4, nCs5, nBb4
	dc.b	nCs5, nFs5, nCs5, nFs5, nAb5, nFs5, nAb5, nBb5, nFs5, nBb5, nCs6, nFs5
	dc.b	nCs6

Snd_RRZ1_Loop17:
	dc.b	nFs6, $0C, nCs6
	smpsPSGAlterVol     $03
	smpsLoop            $00, $04, Snd_RRZ1_Loop17
	smpsPSGAlterVol     $F4
	dc.b	nAb4, $04, nEb4, nAb4, nBb4, nAb4, nBb4, nCs5, nBb4, nCs5, nEb5, nCs5
	dc.b	nEb5, nAb5, nEb5, nAb5, nBb5, nAb5, nBb5, nCs6, nAb5, nCs6, nEb6, nAb5
	dc.b	nEb6
	smpsPSGAlterVol     $02
	dc.b	nAb4, $04, nEb4, nAb4, nBb4, nAb4, nBb4, nCs5, nBb4, nCs5, nEb5, nCs5
	dc.b	nEb5, nAb5, nEb5, nAb5, nBb5, nAb5, nBb5, nCs6, nAb5, nCs6, nEb6, nAb5
	dc.b	nEb6
	smpsPSGAlterVol     $FE
	dc.b	nFs4, $04, nCs4, nFs4, nAb4, nFs4, nAb4, nBb4, nAb4, nBb4, nCs5, nBb4
	dc.b	nCs5, nFs5, nCs5, nFs5, nAb5, nFs5, nAb5, nBb5, nFs5, nBb5, nCs6, nFs5
	dc.b	nCs6
	smpsPSGAlterVol     $02
	dc.b	nFs4, $04, nCs4, nFs4, nAb4, nFs4, nAb4, nBb4, nAb4, nBb4, nCs5, nBb4
	dc.b	nCs5, nFs5, nCs5, nFs5, nAb5, nFs5, nAb5, nBb5, nFs5, nBb5, nCs6, nFs5
	dc.b	nCs6
	smpsPSGAlterVol     $FE
	smpsAlterPitch      $0C
	dc.b	nRst, $60, nRst, $30, nG4, $04, nC4, nG4, nC5, nG4, nC5, nG4
	dc.b	nC4, nG4, nC4, $0C, nRst, $30, nG4, $04, nC4, nG4, nC5, nG4
	dc.b	nC5, nG4, nC4, nG4, nC4, $0C, nRst, $60, nRst, $60, nRst, $60
	dc.b	nRst, $30, nG4, $04, nC4, nG4, nC5, nG4, nC5, nG4, nC4, nG4
	dc.b	nC4, $0C, nRst, $30, nG4, $04, nC4, nG4, nC5, nG4, nC5, nG4
	dc.b	nC4, nG4, nC4, $0C, nRst, $60, nF4, $18, nD4, nBb3, nG3, nC3
	dc.b	$30, nG3, nC3, $18, nG3, nEb4, nBb4, nC4, $08, $04, nBb3, $08
	dc.b	nC4, $04, nRst, $08, $04, nBb3, $08, nC4, $04, nRst, $08, $04
	dc.b	nG3, nBb3, nC4, nEb4, $08, $04, nD4, $08, nBb3, $04, nC4, $08
	dc.b	$04, nBb3, $08, nC4, $04, nRst, $08, $04, nBb3, $08, nC4, $04
	dc.b	nRst, $08, $04, nG3, nBb3, nC4, nG4, $08, $10, nC4, $08, $04
	dc.b	nBb3, $08, nC4, $04, nRst, $08, $04, nBb3, $08, nC4, $04, nRst
	dc.b	$08, $04, nG3, nBb3, nC4, nEb4, $08, $04, nD4, $08, nBb3, $04
	dc.b	nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08, $04, nBb3, $08
	dc.b	nC4, $04, nG4, nF4, nG4, nF4, nEb4, nF4, nEb4, nD4, nEb4, nD4
	dc.b	nC4, nBb3
	smpsJump            Snd_RRZ1_Loop13

; PSG2 Data
Snd_RRZ1_PSG2:
	smpsModSet          $02, $01, $01, $04
	smpsPSGvoice        sTone_1D

Snd_RRZ1_Loop0C:
	dc.b	nG3, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3, $08
	dc.b	nG3, $04, nRst, $08, $04, nEb3, nF3, nG3, nBb3, $08, $04, nG3
	dc.b	$08, $04, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3
	dc.b	$08, nG3, $04, nRst, $08, $04, nEb3, nF3, nG3, nBb3, $08, nD4
	dc.b	$10
	smpsLoop            $00, $03, Snd_RRZ1_Loop0C
	dc.b	nG3, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3, $08
	dc.b	nG3, $04, nRst, $08, $04, nEb3, nF3, nG3, nBb3, $08, $04, nG3
	dc.b	$08, $04, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3
	dc.b	$08, nG3, $04, nEb4, nD4, nEb4, nD4, nC4, nD4, nC4, nBb3, nC4
	dc.b	nBb3, nG3, nF3

Snd_RRZ1_Loop0D:
	dc.b	nG3, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3, $08
	dc.b	nG3, $04, nRst, $08, $04, nEb3, nF3, nG3, nBb3, $08, $04, nG3
	dc.b	$08, $04, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3
	dc.b	$08, nG3, $04, nRst, $08, $04, nEb3, nF3, nG3, nBb3, $08, nD4
	dc.b	$10
	smpsLoop            $00, $03, Snd_RRZ1_Loop0D
	dc.b	nG3, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3, $08
	dc.b	nG3, $04, nRst, $08, $04, nEb3, nF3, nG3, nBb3, $08, $04, nG3
	dc.b	$08, $04, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3
	dc.b	$08, nG3, $04, nEb4, nD4, nEb4, nD4, nC4, nD4, nC4, nBb3, nC4
	dc.b	nBb3, nG3, nF3

Snd_RRZ1_Loop0E:
	dc.b	nG3, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3, $08
	dc.b	nG3, $04, nRst, $08, $04, nEb3, nF3, nG3, nBb3, $08, $04, nG3
	dc.b	$08, $04, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3
	dc.b	$08, nG3, $04, nRst, $08, $04, nEb3, nF3, nG3, nBb3, $08, nD4
	dc.b	$10
	smpsLoop            $00, $03, Snd_RRZ1_Loop0E
	dc.b	nG3, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3, $08
	dc.b	nG3, $04, nRst, $08, $04, nEb3, nF3, nG3, nBb3, $08, $04, nG3
	dc.b	$08, $04, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3
	dc.b	$08, nG3, $04, nEb4, nD4, nEb4, nD4, nC4, nD4, nC4, nBb3, nC4
	dc.b	nBb3, nG3, nF3

Snd_RRZ1_Loop0F:
	dc.b	nG3, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3, $08
	dc.b	nG3, $04, nRst, $08, $04, nEb3, nF3, nG3, nBb3, $08, $04, nG3
	dc.b	$08, $04, $08, $04, nF3, $08, nG3, $04, nRst, $08, $04, nF3
	dc.b	$08, nG3, $04, nRst, $08, $04, nEb3, nF3, nG3, nBb3, $08, nD4
	dc.b	$10
	smpsLoop            $00, $02, Snd_RRZ1_Loop0F
	smpsAlterPitch      $F4
	dc.b	nAb4, $04, nEb4, nAb4, nBb4, nAb4, nBb4, nCs5, nBb4, nCs5, nEb5, nCs5
	dc.b	nEb5, nAb5, nEb5, nAb5, nBb5, nAb5, nBb5, nCs6, nAb5, nCs6, nEb6, nAb5
	dc.b	nEb6

Snd_RRZ1_Loop10:
	dc.b	nAb6, $0C, nEb6
	smpsPSGAlterVol     $03
	smpsLoop            $00, $04, Snd_RRZ1_Loop10
	smpsPSGAlterVol     $F4
	dc.b	nFs4, $04, nCs4, nFs4, nAb4, nFs4, nAb4, nBb4, nAb4, nBb4, nCs5, nBb4
	dc.b	nCs5, nFs5, nCs5, nFs5, nAb5, nFs5, nAb5, nBb5, nFs5, nBb5, nCs6, nFs5
	dc.b	nCs6

Snd_RRZ1_Loop11:
	dc.b	nFs6, $0C, nCs6
	smpsPSGAlterVol     $03
	smpsLoop            $00, $04, Snd_RRZ1_Loop11
	smpsPSGAlterVol     $F4
	dc.b	nRst, $18, nAb4, $04, nEb4, nAb4, nBb4, nAb4, nBb4, nCs5, nBb4, nCs5
	dc.b	nEb5, nCs5, nEb5, nAb5, nEb5, nAb5, nBb5, nAb5, nBb5, nCs6, nAb5, nCs6
	dc.b	nEb6, nAb5, nEb6
	smpsPSGAlterVol     $02
	dc.b	nAb4, $04, nEb4, nAb4, nBb4, nAb4, nBb4, nCs5, nBb4, nCs5, nEb5, nCs5
	dc.b	nEb5, nAb5, nEb5, nAb5, nBb5, nAb5, nBb5, nCs6, nAb5, nCs6, nEb6, nAb5
	dc.b	nEb6
	smpsPSGAlterVol     $FE
	dc.b	nFs4, $04, nCs4, nFs4, nAb4, nFs4, nAb4, nBb4, nAb4, nBb4, nCs5, nBb4
	dc.b	nCs5, nFs5, nCs5, nFs5, nAb5, nFs5, nAb5, nBb5, nFs5, nBb5, nCs6, nFs5
	dc.b	nCs6
	smpsPSGAlterVol     $02
	dc.b	nFs4, $04, nCs4, nFs4, nAb4, nFs4, nAb4, nBb4, nAb4, nBb4, nCs5, nBb4
	dc.b	nCs5, nFs5, nCs5, nFs5, nAb5, nFs5, nAb5
	smpsPSGAlterVol     $FE
	smpsAlterPitch      $0C
	dc.b	nRst, $0D
	smpsPSGAlterVol     $02
	dc.b	nRst, $60, nRst, $30, nG4, $04, nC4, nG4, nC5, nG4, nC5, nG4
	dc.b	nC4, nG4, nC4, $0C, nRst, $30, nG4, $04, nC4, nG4, nC5, nG4
	dc.b	nC5, nG4, nC4, nG4, nC4, $0C, nRst, $60, nRst, $60, nRst, $60
	dc.b	nRst, $30, nG4, $04, nC4, nG4, nC5, nG4, nC5, nG4, nC4, nG4
	dc.b	nC4, $0C, nRst, $30, nG4, $04, nC4, nG4, nC5, nG4, nC5, nG4
	dc.b	nC4, nG4, nC4, $0C, nRst, $60, nF4, $18, nD4, nBb3, nG3, nC3
	dc.b	$30, nG3, nC3, $18, nG3, nEb4, nBb4, $0B, nC4, $08, $04, nBb3
	dc.b	$08, nC4, $04, nRst, $08, $04, nBb3, $08, nC4, $04, nRst, $08
	dc.b	$04, nG3, nBb3, nC4, nEb4, $08, $04, nD4, $08, nBb3, $04, nC4
	dc.b	$08, $04, nBb3, $08, nC4, $04, nRst, $08, $04, nBb3, $08, nC4
	dc.b	$04, nRst, $08, $04, nG3, nBb3, nC4, nG4, $08, $10, nC4, $08
	dc.b	$04, nBb3, $08, nC4, $04, nRst, $08, $04, nBb3, $08, nC4, $04
	dc.b	nRst, $08, $04, nG3, nBb3, nC4, nEb4, $08, $04, nD4, $08, nBb3
	dc.b	$04, nC4, $08, $04, nBb3, $08, nC4, $04, nRst, $08, $04, nBb3
	dc.b	$08, nC4, $04, nG4, nF4, nG4, nF4, nEb4, nF4, nEb4, nD4, nEb4
	dc.b	nD4, nC4, nBb3
	smpsJump            Snd_RRZ1_Loop0D

; PSG3 Data
Snd_RRZ1_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $60, nRst
	smpsCall            Snd_RRZ1_Call00
	smpsCall            Snd_RRZ1_Call01

Snd_RRZ1_Jump03:
	smpsCall            Snd_RRZ1_Call00
	smpsJump            Snd_RRZ1_Jump03

Snd_RRZ1_Call00:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $04, nRst, nRst, (nMaxPSG2-$23)&$FF, nRst, (nMaxPSG2-$23)&$FF
	smpsLoop            $00, $10, Snd_RRZ1_Call00
	smpsReturn

Snd_RRZ1_Call01:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $04, nRst, nRst, (nMaxPSG2-$23)&$FF, nRst, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $04, nRst, nRst, (nMaxPSG2-$23)&$FF, nRst, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $04, nRst, nRst, (nMaxPSG2-$23)&$FF, nRst, nRst
	smpsPSGvoice        sTone_03
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $04, nRst, nRst
	smpsReturn

; Unreachable
Snd_RRZ1_CallUnk00:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, nRst, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_03
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, nRst, (nMaxPSG2-$23)&$FF, nRst
	smpsPSGvoice        sTone_03
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGvoice        sTone_0F
	dc.b	$06, $06
	smpsLoop            $00, $04, Snd_RRZ1_CallUnk00
	smpsReturn

; Unreachable
Snd_RRZ1_CallUnk01:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_03
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_03
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF
	smpsLoop            $00, $07, Snd_RRZ1_CallUnk01
	smpsReturn

; Unreachable
Snd_RRZ1_CallUnk02:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, nRst, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, nRst, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF
	smpsLoop            $00, $04, Snd_RRZ1_CallUnk02
	smpsReturn

; DAC Data
Snd_RRZ1_DAC:
	dc.b	nRst, $60, nRst, nRst, $60, nRst, $08, dTightSnare, $04, nRst, nRst, nRst
	dc.b	dMidpitchSnare, nRst, nRst, nRst, nRst, nRst, dLooseSnare, nRst, nRst, dLooserSnare, nRst, nRst
	dc.b	dKickS3, $04, dKickS3, dKickS3, dSnareS3, $02, $0A, dCrashCymbal, $04, nRst, nRst, nRst
	dc.b	nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst, nRst, dKickS3, nRst, nRst, dKickS3
	dc.b	nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst, nRst, dKickS3, nRst, nRst, nRst
	dc.b	nRst, dKickS3, dSnareS3, nRst, nRst, nRst, nRst, dKickS3, dKickS3, nRst, nRst, dKickS3
	dc.b	nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst, nRst, dKickS3, nRst, nRst, nRst
	dc.b	nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst, nRst, dKickS3, nRst, nRst, dKickS3
	dc.b	nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst, nRst, dKickS3, nRst, nRst, nRst
	dc.b	nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst, dKickS3, dKickS3, nRst, nRst, dKickS3
	dc.b	nRst, nRst, dSnareS3, nRst, nRst, dSnareS3, dSnareS3, dSnareS3

Snd_RRZ1_Loop00:
	dc.b	dKickS3, $04, nRst, nRst, nRst, nRst, dKickS3, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	dKickS3, dKickS3, nRst, nRst, dKickS3, nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	nRst, dKickS3, nRst, nRst, nRst, nRst, dKickS3, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	nRst, dKickS3, nRst, nRst, dKickS3, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst
	dc.b	nRst
	smpsLoop            $00, $07, Snd_RRZ1_Loop00
	dc.b	dCrashCymbal, $04, nRst, nRst, nRst, nRst, dKickS3, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	dKickS3, dKickS3, nRst, nRst, dKickS3, nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	nRst, dKickS3, nRst, nRst, nRst, nRst, dKickS3, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	nRst, dKickS3, dKickS3, dKickS3, dKickS3, nRst, nRst, dSnareS3, nRst, nRst, dSnareS3, dSnareS3
	dc.b	dSnareS3

Snd_RRZ1_Loop01:
	dc.b	dKickS3, $04, nRst, nRst, nRst, nRst, dKickS3, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	dKickS3, dKickS3, nRst, nRst, dKickS3, nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	nRst, dKickS3, nRst, nRst, nRst, nRst, dKickS3, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	nRst, dKickS3, nRst, nRst, dKickS3, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst
	dc.b	nRst
	smpsLoop            $00, $02, Snd_RRZ1_Loop01

Snd_RRZ1_Loop02:
	dc.b	dKickS3, $04, nRst, nRst, dKickS3, nRst, dKickS3, nRst, nRst, dSnareS3, nRst, nRst
	dc.b	dKickS3, dKickS3, $30, dKickS3, $04, nRst, nRst, dKickS3, nRst, dKickS3, nRst, nRst
	dc.b	dKickS3, nRst, nRst, dKickS3, dKickS3, $18, dKickS3, dKickS3, $04, nRst, nRst, dKickS3
	dc.b	nRst, dKickS3, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, dKickS3, nRst, nRst, nRst
	dc.b	nRst, dKickS3, dSnareS3, nRst, nRst, nRst, nRst, nRst, dKickS3, nRst, dSnareS3, nRst
	dc.b	nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst, nRst, dKickS3, nRst, dKickS3, dSnareS3
	dc.b	nRst, nRst, dKickS3, nRst, dKickS3, dSnareS3, nRst, nRst
	smpsLoop            $00, $02, Snd_RRZ1_Loop02
	dc.b	dKickS3, $04, nRst, nRst, nRst, nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	dKickS3, nRst, nRst, dKickS3, dKickS3, nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	nRst, dKickS3, $04, nRst, nRst, nRst, nRst, nRst, dSnareS3, nRst, nRst, nRst
	dc.b	nRst, dKickS3, nRst, nRst, dKickS3, dKickS3, nRst, nRst, dSnareS3, nRst, nRst, dElectricLowTom
	dc.b	dElectricFloorTom, dElectricFloorTom, dKickS3, $04, nRst, nRst, nRst, nRst, nRst, dSnareS3, nRst, nRst
	dc.b	nRst, nRst, dKickS3, nRst, nRst, dKickS3, dKickS3, nRst, nRst, dSnareS3, nRst, nRst
	dc.b	nRst, nRst, nRst

Snd_RRZ1_Loop03:
	dc.b	dKickS3, $04, nRst, nRst, nRst, nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	dKickS3, nRst, nRst, dKickS3, dKickS3, nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	nRst
	smpsLoop            $00, $07, Snd_RRZ1_Loop03
	dc.b	dCrashCymbal, $04, nRst, nRst, nRst, nRst, nRst, dSnareS3, nRst, nRst, nRst, nRst
	dc.b	dKickS3, nRst, nRst, dKickS3, dKickS3, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst
	dc.b	dKickS3, dKickS3, $18, $18, dMuffledSnare, $04, $04, $04, $04, $04, $04, $04
	dc.b	$04, $04, $04, $04, $04, dCrashCymbal, $04, nRst, nRst, nRst, nRst, nRst
	dc.b	dSnareS3, nRst, nRst, nRst, nRst, nRst, dKickS3, nRst, nRst, dKickS3, nRst, nRst
	dc.b	dSnareS3, nRst, nRst, nRst, nRst, nRst, dKickS3, nRst, nRst, nRst, nRst, dKickS3
	dc.b	dSnareS3, nRst, nRst, nRst, nRst, dKickS3, dKickS3, nRst, nRst, dKickS3, nRst, nRst
	dc.b	dSnareS3, nRst, nRst, nRst, nRst, nRst, dKickS3, nRst, nRst, nRst, nRst, nRst
	dc.b	dSnareS3, nRst, nRst, nRst, nRst, nRst, dKickS3, nRst, nRst, dKickS3, nRst, nRst
	dc.b	dSnareS3, nRst, nRst, nRst, nRst, nRst, dKickS3, nRst, nRst, nRst, nRst, nRst
	dc.b	dSnareS3, nRst, nRst, nRst, nRst, dKickS3, dKickS3, nRst, nRst, dKickS3, nRst, nRst
	dc.b	dSnareS3, nRst, nRst, dSnareS3, dSnareS3, dSnareS3
	smpsJump            Snd_RRZ1_Loop00

Snd_RRZ1_Voices:
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
	smpsVcTotalLevel    $80, $23, $39, $29

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
	smpsVcTotalLevel    $80, $07, $80, $1A

;	Voice $02
;	$3E
;	$07, $01, $02, $01, 	$1F, $1F, $1F, $1F, 	$03, $06, $00, $00
;	$08, $06, $00, $00, 	$15, $0A, $0A, $0A, 	$1B, $80, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $06, $03
	smpsVcDecayRate2    $00, $00, $06, $08
	smpsVcDecayLevel    $00, $00, $00, $01
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $80, $80, $80, $1B

;	Voice $03
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
	smpsVcTotalLevel    $80, $14, $80, $1E

;	Voice $04
;	$E5
;	$E6, $00, $B0, $01, 	$EC, $17, $03, $09, 	$B1, $80, $AC, $AE
;	$AC, $AE, $AC, $AE, 	$A5, $E6, $FE, $EF, 	$51, $80, $80, $81
	smpsVcAlgorithm     $05
	smpsVcFeedback      $04
	smpsVcUnusedBits    $03, $01, $01, $00, $01
	smpsVcDetune        $00, $0B, $00, $0E
	smpsVcCoarseFreq    $01, $00, $00, $06
	smpsVcRateScale     $00, $00, $00, $03
	smpsVcAttackRate    $09, $03, $17, $2C
	smpsVcAmpMod        $01, $01, $01, $01
	smpsVcDecayRate1    $0E, $0C, $00, $11
	smpsVcDecayRate2    $AE, $AC, $AE, $AC
	smpsVcDecayLevel    $0E, $0F, $0E, $0A
	smpsVcReleaseRate   $0F, $0E, $06, $05
	smpsVcTotalLevel    $81, $80, $80, $51

;	Voice $05
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $83, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $07, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $03, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $07, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $27, $28, $18

;	Voice $06
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

;	Voice $07
;	$3C
;	$31, $31, $51, $54, 	$1A, $0C, $1A, $0C, 	$05, $1F, $05, $1F
;	$00, $00, $00, $00, 	$1F, $0F, $1F, $0F, 	$1C, $88, $15, $88
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $05, $03, $03
	smpsVcCoarseFreq    $04, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0C, $1A, $0C, $1A
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $05, $1F, $05
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $88, $15, $88, $1C

