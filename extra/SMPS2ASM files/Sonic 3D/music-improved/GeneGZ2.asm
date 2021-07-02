Snd_GeneGZ2_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_GeneGZ2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $14

	smpsHeaderDAC       Snd_GeneGZ2_DAC
	smpsHeaderFM        Snd_GeneGZ2_FM1,	$00, $11
	smpsHeaderFM        Snd_GeneGZ2_FM2,	$00, $0B
	smpsHeaderFM        Snd_GeneGZ2_FM3,	$F4, $17
	smpsHeaderFM        Snd_GeneGZ2_FM4,	$F4, $17
	smpsHeaderFM        Snd_GeneGZ2_FM5,	$00, $17
	smpsHeaderPSG       Snd_GeneGZ2_PSG1,	$F4, $03, $00, $00
	smpsHeaderPSG       Snd_GeneGZ2_PSG2,	$F4, $05, $00, $00
	smpsHeaderPSG       Snd_GeneGZ2_PSG3,	$23, $02, $00, $00

; FM1 Data
Snd_GeneGZ2_FM1:
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $01, $08

Snd_GeneGZ2_Jump02:
	smpsSetvoice        $00
	dc.b	nG4, $60, smpsNoAttack, $30, $18, nBb4, nA4, $24, nF4, $3C
	smpsSetvoice        $03
	smpsFMAlterVol      $09
	dc.b	nC6, $06, nF5, nC5, nA5, nF5, nA4, nC5, nF4, nC4, nF5, nC5
	dc.b	nA4, nF4, nC4, nF3, nC3
	smpsFMAlterVol      $F7
	smpsSetvoice        $00
	dc.b	nG4, $60, smpsNoAttack, $30, $18, nC5, nA4, $24, nF4, $3C
	smpsSetvoice        $03
	smpsFMAlterVol      $09
	dc.b	nF5, $02, nA5, nB5, nC6, $06, nB5, nA5, nF5, nC5, nA4, nF4
	dc.b	nC4, nA3, nF3, nC3, nA2, nF2, nE2, nC2
	smpsFMAlterVol      $F7
	smpsSetvoice        $00
	dc.b	$18, nG3, nEb4, $12, nC4, $06, nRst, $0C, nG4, smpsNoAttack, nG4, $30
	dc.b	$12, nF4, nEb4, $0C, nD4, $12, nEb4, nD4, $0C, nA3, $30, smpsNoAttack
	dc.b	$2E, nRst, $1A, nG3, $0C, nF3, nRst, $18, nG3, nEb4, $12, nC4
	dc.b	$06, nRst, $0C, nG4, smpsNoAttack, nG4, $30, $12, nF4, nEb4, $0C, nD4
	dc.b	$12, nEb4, nD4, $0C, nA3, $30, smpsNoAttack, $2E, nRst, $32, nG4, $60
	dc.b	smpsNoAttack, $0C, nRst, $18, nEb4, $18, nG4, $0C, nBb4, nEb5, nD5, $10
	dc.b	nBb4, nF4, $70, nRst, $30, nG4, $60, smpsNoAttack, nG4, $0C, nRst, $18
	dc.b	nEb4, $18, nG4, $0C, nBb4, nEb5, nD5, $12, nBb4, nF4, $0C, nF5
	dc.b	$30, smpsNoAttack, $2E, nRst, $32
	smpsFMAlterVol      $FD
	smpsAlterPitch      $0C
	smpsSetvoice        $04
	dc.b	nRst, $18, nG3, nEb4, $12, nC4, $06, nRst, $0C, nG4, smpsNoAttack, nG4
	dc.b	$30, $12, nF4, nEb4, $0C, nD4, $12, nEb4, nD4, $0C, nA3, $30
	dc.b	smpsNoAttack, $2E, nRst, $1A, nG3, $0C, nF3, nRst, $18, nG3, nEb4, $12
	dc.b	nC4, $06, nRst, $0C, nG4, smpsNoAttack, nG4, $30, $12, nF4, nEb4, $0C
	dc.b	nD4, $12, nEb4, nD4, $0C, nA3, $30, smpsNoAttack, $2E, nRst, $32
	smpsFMAlterVol      $03
	smpsAlterPitch      $F4

Snd_GeneGZ2_Loop11:
	smpsSetvoice        $03
	smpsFMAlterVol      $07

Snd_GeneGZ2_Loop0C:
	dc.b	nC5, $10
	smpsFMAlterVol      $04
	smpsLoop            $00, $06, Snd_GeneGZ2_Loop0C
	smpsFMAlterVol      $E8

Snd_GeneGZ2_Loop0D:
	dc.b	nG4, $10
	smpsFMAlterVol      $04
	smpsLoop            $00, $06, Snd_GeneGZ2_Loop0D
	smpsFMAlterVol      $E8

Snd_GeneGZ2_Loop0E:
	dc.b	nC5, $10
	smpsFMAlterVol      $04
	smpsLoop            $00, $03, Snd_GeneGZ2_Loop0E
	smpsFMAlterVol      $F4

Snd_GeneGZ2_Loop0F:
	dc.b	nG5, $10
	smpsFMAlterVol      $04
	smpsLoop            $00, $03, Snd_GeneGZ2_Loop0F
	smpsFMAlterVol      $F4
	dc.b	nEb5, $18

Snd_GeneGZ2_Loop10:
	dc.b	nA4, $10
	smpsFMAlterVol      $04
	smpsLoop            $00, $04, Snd_GeneGZ2_Loop10
	smpsFMAlterVol      $04
	dc.b	nA4, $08
	smpsFMAlterVol      $EC
	smpsFMAlterVol      $F9
	smpsLoop            $01, $02, Snd_GeneGZ2_Loop11
	smpsSetvoice        $06
	smpsFMAlterVol      $04
	dc.b	nC4, $60, nD4, nEb4, nF4, $30, nBb4, $24, nA4, $06, nAb4, nG4
	dc.b	$60, nAb4, nBb4, $24, nA4, $06, nAb4, nG4, $30, smpsNoAttack, $60
	smpsAlterPitch      $F4
	smpsFMAlterVol      $FD
	dc.b	nC4, $30, $12, nD4, nEb4, $0C, nC4, $30, $12, nD4, nEb4, $0C
	dc.b	nF4, $24, nEb4, $06, nD4, nC4, $30, smpsNoAttack, $60, $30, $12, nD4
	dc.b	nEb4, $0C, nF4, $24, nEb4, $06, nD4, nC4, $30, nBb3, nG3, nD4
	dc.b	$60, nC4, smpsNoAttack, nC4
	smpsFMAlterVol      $03
	dc.b	nC3, smpsNoAttack, nC3, $60
	smpsFMAlterVol      $FC
	smpsAlterPitch      $0C
	smpsJump            Snd_GeneGZ2_Jump02

; FM2 Data
Snd_GeneGZ2_FM2:
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $01, $02
	smpsSetvoice        $01
	smpsSetvoice        $01

Snd_GeneGZ2_Loop06:
	dc.b	nC2, $0C, nC2, nD2, nEb2, $06, nF2, $0C, nC2, nC2, $06, nD2
	dc.b	nEb2, nF2, $0C
	smpsLoop            $00, $08, Snd_GeneGZ2_Loop06

Snd_GeneGZ2_Loop07:
	dc.b	nC2, $0C, nC2, nD2, nEb2, $06, nG2, $0C, nC2, nC2, $06, nD2
	dc.b	nEb2, nG2, $0C, nC2, nC2, nD2, nEb2, $06, nG2, $0C, nC2, nC2
	dc.b	$06, nD2, nEb2, nG2, $0C, nC2, nC2, nD2, nEb2, $06, nF2, $0C
	dc.b	nC2, nC2, $06, nD2, nEb2, nF2, $0C, nC2, nC2, nD2, nEb2, $06
	dc.b	nF2, $0C, nC2, nC2, $06, nD2, nEb2, nF2, $0C
	smpsLoop            $00, $02, Snd_GeneGZ2_Loop07

Snd_GeneGZ2_Loop08:
	dc.b	nC2, $0C, nC2, nD2, nEb2, $06, nG2, $0C, nC2, nC2, $06, nD2
	dc.b	nEb2, nG2, $0C, nC2, nC2, nD2, nEb2, $06, nG2, $0C, nC2, nC2
	dc.b	$06, nD2, nEb2, nG2, $0C, nC2, nC2, nD2, nEb2, $06, nF2, $0C
	dc.b	nC2, nC2, $06, nD2, nEb2, nF2, $0C, nC2, nC2, nD2, nEb2, $06
	dc.b	nF2, $0C, nC2, nC2, $06, nD2, nEb2, nF2, $0C
	smpsLoop            $00, $02, Snd_GeneGZ2_Loop08

Snd_GeneGZ2_Loop09:
	dc.b	nC2, $0C, nC2, nD2, nEb2, $06, nG2, $0C, nC2, nC2, $06, nD2
	dc.b	nEb2, nG2, $0C, nC2, nC2, nD2, nEb2, $06, nG2, $0C, nC2, nC2
	dc.b	$06, nD2, nEb2, nG2, $0C, nC2, nC2, nD2, nEb2, $06, nF2, $0C
	dc.b	nC2, nC2, $06, nD2, nEb2, nF2, $0C, nC2, nC2, nD2, nEb2, $06
	dc.b	nF2, $0C, nC2, nC2, $06, nD2, nEb2, nF2, $0C
	smpsLoop            $00, $02, Snd_GeneGZ2_Loop09

Snd_GeneGZ2_Loop0A:
	dc.b	nC2, $0C, nC2, nD2, nEb2, $06, nC2, $0C, nC2, nC2, $06, nD2
	dc.b	nEb2, nC2, $0C
	smpsLoop            $00, $08, Snd_GeneGZ2_Loop0A

Snd_GeneGZ2_Loop0B:
	dc.b	nC2, $0C, nC2, nD2, nEb2, $06, nC2, $0C, nC2, nC2, $06, nD2
	dc.b	nEb2, nC2, $0C
	smpsLoop            $00, $14, Snd_GeneGZ2_Loop0B
	smpsJump            Snd_GeneGZ2_Loop06

; FM3 Data
Snd_GeneGZ2_FM3:
	smpsPan             panLeft, $00
	smpsModSet          $01, $01, $01, $07

Snd_GeneGZ2_Jump01:
	smpsSetvoice        $02
	dc.b	nG4, $60, smpsNoAttack, $30, $18, nBb4, nA4, $24, nF4, $3C, smpsNoAttack, $60
	dc.b	nG4, smpsNoAttack, nG4, $30, $18, nC5, nA4, $24, nF4, $3C, smpsNoAttack, $60
	dc.b	nG4, $60, smpsNoAttack, $18, nG4, $0C, nA4, nBb4, $12, nA4, nG4, $0C
	dc.b	nF4, $24, nC4, $3C, smpsNoAttack, $60, nG4, smpsNoAttack, nG4, $30, $18, nBb4
	dc.b	nA4, $60, smpsNoAttack, nA4, nBb4, smpsNoAttack, nBb4, $30, $18, nD5, nC5, $60
	dc.b	smpsNoAttack, nC5, nD5, smpsNoAttack, nD5, $30, $18, nEb5, nC5, $60, smpsNoAttack, nC5
	dc.b	nC5, smpsNoAttack, nC5, $30, $18, nEb5, nC5, $60, nA4, nG4, smpsNoAttack, nG4
	dc.b	$30, $18, nBb4, nA4, $60, smpsNoAttack, nA4, nG4, nBb4, nG4, nFs4, nG4
	dc.b	nBb4, nG4, nFs4
	smpsSetvoice        $05
	smpsFMAlterVol      $02
	dc.b	nG4, $60, nG4, nAb4, nF4, nG4, $06, nG4, nRst, $0C, nG4, $06, nG4
	dc.b	nRst, $0C, nG4, $12, nG4, $06, nRst, $0C, nG4, $06, nG4, nRst, nAb4, nRst
	dc.b	$0C, nAb4, $12, $06, nRst, $18, nAb4, $06, nAb4, nAb4, nRst, nBb4, nBb4, nRst
	dc.b	$0C, nBb4, $06, nBb4, nRst, $0C, nBb4, $12, nBb4, $06, nRst, $0C, nBb4, $06, nBb4
	dc.b	nRst, nBb4, nBb4, nRst, nBb4, $12, $06, nRst, $18, nBb4, $06, nBb4, nBb4
	dc.b	nRst, nG4, $06, nG4, nRst, $0C, nG4, $06, nG4, nRst, $0C, nG4, $12, nG4
	dc.b	$06, nRst, $0C, nG4, $06, nG4, nRst, nG4, nRst, $0C, nG4, $12, $06, nRst
	dc.b	$18, nRst, nAb4, $06, nAb4, nRst, $0C, nAb4, $06, nAb4, nRst, $0C, nAb4, $12
	dc.b	nAb4, $06, nRst, $0C, nAb4, $06, nAb4, nF4, nF4, nRst, $0C, nF4, $06, nF4
	dc.b	nRst, $0C, nF4, $12, $06, nF4, nRst, $0C, nF4, $06, nG4, $06, nG4
	dc.b	nRst, $0C, nG4, $06, nG4, nRst, $0C, nG4, $12, $06, nRst, $0C, nG4, $06
	dc.b	nG4, nRst, nAb4, nRst, $0C, nAb4, $12, $06, nRst, $18, nAb4, $06, nAb4, nAb4
	dc.b	nRst, nBb4, nBb4, nRst, $0C, nBb4, $06, nBb4, nRst, $0C, nBb4, $12, $06
	dc.b	nRst, $0C, nBb4, $06, nBb4, nRst, nBb4, nBb4, nRst, nBb4, $12, $06, nRst
	dc.b	$18, nBb4, $06, nBb4, nBb4, nRst, nC4, $30, nC4, smpsNoAttack, nC4, $60, nC4
	dc.b	$30, nC4, smpsNoAttack, nC4, $48, nRst, $18
	smpsFMAlterVol      $FE
	smpsJump            Snd_GeneGZ2_Jump01

; FM4 Data
Snd_GeneGZ2_FM4:
	smpsPan             panRight, $00
	smpsModSet          $01, $01, $01, $08

Snd_GeneGZ2_Jump00:
	smpsSetvoice        $02
	dc.b	nC4, $60, smpsNoAttack, $30, $18, nG4, nF4, $24, nC4, $3C, smpsNoAttack, $60
	dc.b	nC4, smpsNoAttack, nC4, $30, $18, nG4, nF4, $24, nC4, $3C, smpsNoAttack, $60
	dc.b	nC4, $60, smpsNoAttack, $18, nC4, $0C, nD4, nEb4, $12, nD4, nC4, $0C
	dc.b	$24, nF3, $3C, smpsNoAttack, $60, nEb4, smpsNoAttack, nEb4, $30, $18, nG4, nF4
	dc.b	$60, smpsNoAttack, nF4, nG4, smpsNoAttack, nG4, $30, $18, nBb4, nA4, $60, smpsNoAttack
	dc.b	nA4, nBb4, smpsNoAttack, nBb4, $30, $18, nC5, nA4, $60, smpsNoAttack, nA4, nG4
	dc.b	smpsNoAttack, nG4, $30, $18, nC5, nA4, $60, nF4, nEb4, smpsNoAttack, nEb4, $30
	dc.b	$18, nG4, nF4, $60, smpsNoAttack, nF4, nC4, nC4, nC4, nC4, nC4, nC4
	dc.b	nC4, nC4
	smpsSetvoice        $05
	smpsFMAlterVol      $02
	dc.b	nC4, $60, nBb3, nEb4, nBb3, nC4, $06, nC4, nRst, $0C, nC4, $06, nC4
	dc.b	nRst, $0C, nC4, $12, $06, nRst, $0C, nC4, $06, nC4, nRst, nC4, nRst
	dc.b	$0C, nC4, $12, $06, nRst, $18, nC4, $06, nC4, nC4, nRst, nEb4, nEb4, nRst
	dc.b	$0C, nEb4, $06, nEb4, nRst, $0C, nEb4, $12, $06, nRst, $0C, nEb4, $06, nEb4
	dc.b	nRst, nF4, nF4, nRst, nF4, $12, $06, nRst, $18, nF4, $06, nF4, nF4
	dc.b	nRst, nC4, $06, nC4, nRst, $0C, nC4, $06, nC4, nRst, $0C, nC4, $12
	dc.b	$06, nRst, $0C, nC4, $06, nC4, nRst, nBb3, nRst, $0C, nBb3, $12, $06, nRst
	dc.b	$18, nRst, nEb4, $06, nEb4, nRst, $0C, nEb4, $06, nEb4, nRst, $0C, nEb4, $12
	dc.b	$06, nRst, $0C, nEb4, $06, nEb4, nBb3, nBb3, nRst, $0C, nBb3, $06, nBb3
	dc.b	nRst, $0C, nBb3, $12, nBb3, $06, nBb3, nRst, $0C, nBb3, $06, nC4, $06, nC4
	dc.b	nRst, $0C, nC4, $06, nC4, nRst, $0C, nC4, $12, $06, nRst, $0C, nC4, $06
	dc.b	nC4, nRst, nC4, nRst, $0C, nC4, $12, $06, nRst, $18, nC4, $06, nC4, nC4
	dc.b	nRst, nEb4, nEb4, nRst, $0C, nEb4, $06, nEb4, nRst, $0C, nEb4, $12, $06
	dc.b	nRst, $0C, nEb4, $06, nEb4, nRst, nF4, nF4, nRst, nF4, $12, $06, nRst
	dc.b	$18, nF4, $06, nF4, nF4, nRst, nG3, $30, nG3, smpsNoAttack, nG3, $60, nG3
	dc.b	$30, nG3, smpsNoAttack, nG3, $48, nRst, $18
	smpsFMAlterVol      $FE
	smpsJump            Snd_GeneGZ2_Jump00

; FM5 Data
Snd_GeneGZ2_FM5:
	smpsModSet          $01, $01, $01, $06
	dc.b	nRst, $10
	smpsAlterNote       $01
	smpsJump            Snd_GeneGZ2_FM1

; PSG1 Data
Snd_GeneGZ2_PSG1:
	smpsModSet          $03, $01, $01, $03
	smpsPSGvoice        sTone_11

Snd_GeneGZ2_Jump03:
	smpsPSGvoice        sTone_26
	dc.b	nRst, $18, nC5, nC4, nG4, nBb4, $12, nA4, nEb4, $22, nRst, $1A
	dc.b	nRst, $18, nC5, nF4, nBb4, nA4, $12, nBb4, nF4, $24, nD4, $18
	smpsLoop            $00, $02, Snd_GeneGZ2_Jump03

Snd_GeneGZ2_Loop13:
	dc.b	nC3, $2E, nRst, $32, nRst, $18, nC3, nG3, nC4, nC3, $2E, nRst
	dc.b	$32, nRst, $18, nC3, nA3, nC4
	smpsLoop            $00, $02, Snd_GeneGZ2_Loop13

Snd_GeneGZ2_Loop14:
	dc.b	nG3, $16, nRst, $4A, nRst, $18, nG3, nEb4, nG4, nF3, $16, nRst
	dc.b	$4A, nRst, $18, nA3, nF4, nA4
	smpsLoop            $00, $02, Snd_GeneGZ2_Loop14

Snd_GeneGZ2_Loop15:
	dc.b	nC3, $2E, nRst, $32, nRst, $18, nC3, nG3, nC4, nC3, $2E, nRst
	dc.b	$32, nRst, $18, nC3, nA3, nC4
	smpsLoop            $00, $02, Snd_GeneGZ2_Loop15

Snd_GeneGZ2_Loop16:
	dc.b	nG4, $18, nG3, nC4, nC3, nG3, nG2, $16, nRst, $32, nG4, $18
	dc.b	nG3, nC4, nC3, nFs3, nFs2, $16, nRst, $32
	smpsLoop            $00, $02, Snd_GeneGZ2_Loop16
	smpsAlterPitch      $F4
	dc.b	nC4, $60, nD4, nEb4, nF4, $30, nBb4, $24, nA4, $06, nAb4
	smpsAlterPitch      $0C
	smpsPSGvoice        sTone_1D
	dc.b	nC4, $06, nRst, $12, nC4, $06, nEb4, nG4, nEb4, nC5, $0C, nG4, $06
	dc.b	nEb4, $0C, nC4, $06, nG4, $0C, nC4, $06, nRst, $12, nC4, $06, nEb4
	dc.b	nAb4, nEb4, nC5, $0C, nAb4, $06, nEb4, $0C, nC4, $06, nAb4, $0C
	dc.b	nC4, $06, nRst, $12, nC4, $06, nEb4, nG4, nEb4, nBb4, $0C, nG4, $06
	dc.b	nEb4, $0C, nBb3, $06, nG4, $0C, nF4, $06, nRst, $12, nF4, $06, nBb3
	dc.b	nD4, nF4, nD5, $0C, nBb4, $06, nF4, $0C, nD4, $06, nBb3, nD4
	dc.b	nRst, nRst, nC4, nRst, nC4, nEb4, nG4, nEb4, nC5, $0C, nG4, $06
	dc.b	nEb4, $0C, nC4, $06, nG4, $0C, nRst, $06, nRst, nC4, nRst, nC4
	dc.b	nD4, nG4, nD4, nD5, $0C, nBb4, $06, nG4, $0C, nD4, $06, nG4
	dc.b	$0C, nRst, $06, nRst, nC4, nRst, nC4, nEb4, nAb4, nEb4, nC5, $0C
	dc.b	nAb4, $06, nEb4, $0C, nC4, $06, nAb4, $0C, nRst, $06, nRst, nC4
	dc.b	nRst, nC4, nD4, nBb4, nF4, nD5, $0C, nBb4, $06, nF4, $0C, nD4
	dc.b	$06, nBb4, $0C, nC4, $06, nRst, nC4, nRst, nC4, nEb4, nG4, nEb4
	dc.b	nC5, $0C, nG4, $06, nEb4, $0C, nC4, $06, nG4, $0C, nC4, $06
	dc.b	nRst, nC4, nRst, nC4, nEb4, nAb4, nEb4, nC5, $0C, nAb4, $06, nEb4
	dc.b	$0C, nC4, $06, nAb4, $0C, nC4, $06, nRst, nC4, nRst, nC4, nEb4
	dc.b	nG4, nEb4, nBb4, $0C, nG4, $06, nEb4, $0C, nBb3, $06, nG4, $0C
	dc.b	nF4, $06, nRst, nF4, nRst, nF4, nBb3, nD4, nF4, nD5, $0C, nBb4
	dc.b	$06, nF4, $0C, nD4, $06, nBb3, nD4
	smpsAlterPitch      $F4
	dc.b	nC6, $06, nG5, nC4, nBb4, nG4, nC4, nA4, nF4, nC4, nG4, nC4
	dc.b	nG3, nF4, nC4, nG3, nC3, nRst, $60, nC6, $06, nG5, nC4, nBb4
	dc.b	nG4, nC4, nA4, nF4, nC4, nG4, nC4, nG3, nF4, nC4, nG3, nC3
	dc.b	nRst, $60
	smpsAlterPitch      $0C
	smpsJump            Snd_GeneGZ2_Jump03

; PSG2 Data
Snd_GeneGZ2_PSG2:
	smpsModSet          $04, $01, $01, $04
	smpsPSGvoice        sTone_26
	dc.b	nRst, $0C
	smpsJump            Snd_GeneGZ2_Jump03

; PSG3 Data
Snd_GeneGZ2_PSG3:
	smpsPSGform         $E7

Snd_GeneGZ2_Loop12:
	smpsCall            Snd_GeneGZ2_Call00
	smpsLoop            $00, $3C, Snd_GeneGZ2_Loop12
	smpsJump            Snd_GeneGZ2_Loop12

Snd_GeneGZ2_Call00:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, nRst, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, nRst, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF
	smpsLoop            $00, $04, Snd_GeneGZ2_Call00
	smpsReturn

; DAC Data
Snd_GeneGZ2_DAC:
	dc.b	dCrashCymbal, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst, dKickS3, nRst, nRst, nRst, dSnareS3, nRst, nRst
	dc.b	dKickS3, nRst, nRst, dKickS3, nRst, dSnareS3, nRst, dSnareS3, nRst

Snd_GeneGZ2_Loop00:
	dc.b	dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst, dKickS3, nRst, nRst, nRst, dSnareS3, nRst, nRst
	dc.b	dKickS3, nRst, nRst, dKickS3, nRst, dSnareS3, nRst, nRst, nRst
	smpsLoop            $00, $02, Snd_GeneGZ2_Loop00
	dc.b	dCrashCymbal, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst, dKickS3, dSnareS3, dKickS3, nRst, dKickS3, dSnareS3, dKickS3
	dc.b	nRst, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3

Snd_GeneGZ2_Loop01:
	dc.b	dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst, dKickS3, nRst, nRst, nRst, dSnareS3, nRst, nRst
	dc.b	dKickS3, nRst, nRst, dKickS3, nRst, dSnareS3, nRst, nRst, nRst
	smpsLoop            $00, $07, Snd_GeneGZ2_Loop01
	dc.b	dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst, dKickS3, nRst, nRst, nRst, dSnareS3, nRst, nRst
	dc.b	dKickS3, nRst, nRst, dKickS3, nRst, dSnareS3, nRst, dSnareS3, dSnareS3, dCrashCymbal, $06, nRst
	dc.b	nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3, nRst, dSnareS3, nRst
	dc.b	nRst, nRst, dKickS3, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dSnareS3
	dc.b	dKickS3, nRst, dSnareS3, nRst, dKickS3, nRst

Snd_GeneGZ2_Loop02:
	dc.b	dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst, dKickS3, nRst, nRst, nRst, dSnareS3, nRst, nRst
	dc.b	dKickS3, nRst, nRst, dKickS3, nRst, dSnareS3, nRst, dSnareS3, dSnareS3
	smpsLoop            $00, $03, Snd_GeneGZ2_Loop02

Snd_GeneGZ2_Loop03:
	dc.b	dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst, dKickS3, nRst, nRst, nRst, dSnareS3, nRst, nRst
	dc.b	dKickS3, nRst, nRst, dKickS3, nRst, dSnareS3, nRst, dSnareS3, dSnareS3
	smpsLoop            $00, $03, Snd_GeneGZ2_Loop03
	dc.b	dCrashCymbal, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst, dKickS3, nRst, nRst, nRst, dSnareS3, nRst, nRst
	dc.b	dKickS3, nRst, nRst, dKickS3, dElectricHighTom, dElectricMidTom, dElectricLowTom, dElectricFloorTom, dElectricFloorTom

Snd_GeneGZ2_Loop04:
	dc.b	dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst
	smpsLoop            $00, $06, Snd_GeneGZ2_Loop04
	dc.b	dCrashCymbal, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst, dKickS3, nRst, nRst, dElectricFloorTom, dSnareS3, nRst, nRst
	dc.b	dKickS3, nRst, dElectricHighTom, dKickS3, dElectricMidTom, dElectricMidTom, dElectricMidTom, dElectricLowTom, dElectricFloorTom

Snd_GeneGZ2_Loop05:
	dc.b	dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst
	smpsLoop            $00, $0A, Snd_GeneGZ2_Loop05
	dc.b	dCrashCymbal, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst, dKickS3, nRst, nRst, nRst, dSnareS3, nRst, nRst
	dc.b	dKickS3, dElectricHighTom, dElectricHighTom, dElectricMidTom, dElectricLowTom, dElectricLowTom, dElectricFloorTom, dElectricFloorTom, dElectricFloorTom
	smpsJump            Snd_GeneGZ2_DAC

Snd_GeneGZ2_Voices:
;	Voice $00
;	$3D
;	$35, $58, $72, $31, 	$DF, $1F, $1F, $1F, 	$12, $04, $0F, $0F
;	$00, $00, $00, $00, 	$2F, $0F, $0F, $0F, 	$27, $8A, $90, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $05, $03
	smpsVcCoarseFreq    $01, $02, $08, $05
	smpsVcRateScale     $00, $00, $00, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0F, $04, $12
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $10, $0A, $27

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
	smpsVcTotalLevel    $00, $2A, $00, $20

;	Voice $03
;	$3E
;	$38, $72, $11, $26, 	$1F, $14, $14, $14, 	$14, $02, $02, $02
;	$00, $01, $01, $01, 	$0F, $3F, $3F, $3F, 	$24, $80, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $01, $07, $03
	smpsVcCoarseFreq    $06, $01, $02, $08
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $14, $14, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $02, $02, $14
	smpsVcDecayRate2    $01, $01, $01, $00
	smpsVcDecayLevel    $03, $03, $03, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $24

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
;	$3D
;	$64, $64, $22, $24, 	$1F, $12, $19, $10, 	$05, $04, $05, $04
;	$05, $05, $05, $05, 	$4F, $4F, $4F, $4F, 	$20, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $02, $06, $06
	smpsVcCoarseFreq    $04, $02, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $19, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $05, $04, $05
	smpsVcDecayRate2    $05, $05, $05, $05
	smpsVcDecayLevel    $04, $04, $04, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $20

;	Voice $06
;	$3A
;	$42, $43, $14, $71, 	$1F, $12, $1F, $1F, 	$04, $02, $04, $0A
;	$01, $01, $02, $02, 	$1F, $1F, $1F, $1F, 	$1A, $16, $19, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $01, $04, $04
	smpsVcCoarseFreq    $01, $04, $03, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $04, $02, $04
	smpsVcDecayRate2    $02, $02, $01, $01
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $19, $16, $1A

