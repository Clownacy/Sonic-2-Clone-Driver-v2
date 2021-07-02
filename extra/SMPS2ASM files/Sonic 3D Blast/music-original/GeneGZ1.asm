Snd_GeneGZ1_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     Snd_GeneGZ1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $10

	smpsHeaderDAC       Snd_GeneGZ1_DAC
	smpsHeaderFM        Snd_GeneGZ1_FM1,	$00, $0B
	smpsHeaderFM        Snd_GeneGZ1_FM2,	$00, $0B
	smpsHeaderFM        Snd_GeneGZ1_FM3,	$0C, $1C
	smpsHeaderFM        Snd_GeneGZ1_FM4,	$0C, $1C
	smpsHeaderFM        Snd_GeneGZ1_FM5,	$00, $13
	smpsHeaderPSG       Snd_GeneGZ1_PSG1,	$F4, $03, $00, $00
	smpsHeaderPSG       Snd_GeneGZ1_PSG2,	$F4, $05, $00, $00
	smpsHeaderPSG       Snd_GeneGZ1_PSG3,	$23, $02, $00, $00

; FM1 Data
Snd_GeneGZ1_FM1:
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $01, $08
	dc.b	nRst, $60, nRst

Snd_GeneGZ1_Jump03:
	smpsSetvoice        $05
	smpsFMAlterVol      $07
	smpsAlterPitch      $0C
	dc.b	nG3, $06, nC4, nG4, nG4, nC5, nG4, nG4, nC4, nG5, nG3, nC5
	dc.b	nG4, nG4, nC4, nC4, nG3, nG4, nC4, nC4, nG5, nC5, nC5, nG4
	dc.b	nG4, nC4, nC4, nG4, nC5, nC5, nG5, nG5, nC6, nG4, nC3, nG4
	dc.b	nG3, nC4, nG3, nG3, nG3, nC4, nG4, nG4, nC5, nG4, nC4, nC4
	dc.b	nG3, nC4, nG5, nC5, nG4, nC4, nC6, nG5, nG5, nC5, nC5, nG5
	dc.b	nC6, nG3, nC4, nC4, nG4, nC5, nG4, nG4, nC4, nG5, nG3, nC5
	dc.b	nG4, nG3, nC4, nG4, nG4, nG4, nC4, nC4, nG3, nG4, nG4, nC5
	dc.b	nC5, nG4, nC5, nC5, nG5, nC4, nC4, nG5, nC5, nC5, nG4, nG4
	dc.b	nC5, nG3, nC4, nG4, nC4, nG5, nG3, nC5, nG4, nG4, nC4, nC4
	dc.b	nG3, nG4, nG4, nC5, nG4, nG4, nC4, nC4, nG5, nC5, nC5, nG4
	dc.b	nG4, nC4, nC4, nG3, nC4, nC4, nG4, nG4, nC5
	smpsAlterPitch      $F4
	smpsFMAlterVol      $F9
	smpsSetvoice        $05
	dc.b	nRst, $18, nG3, nEb4, $12, nC4, $06, nRst, $0C, nG4, smpsNoAttack, nG4
	dc.b	$30, $12, nF4, nEb4, $0C, nD4, $12, nEb4, nD4, $0C, nA3, $30
	dc.b	smpsNoAttack, $2E, nRst, $1A, nG3, $0C, nF3, nRst, $18, nG3, nEb4, $12
	dc.b	nC4, $06, nRst, $0C, nG4, smpsNoAttack, nG4, $30, $12, nF4, nEb4, $0C
	dc.b	nD4, $12, nEb4, nD4, $0C, nA3, $30, smpsNoAttack, $2E, nRst, $32, nG4
	dc.b	$60, smpsNoAttack, $24, nEb4, $18, nG4, $0C, nBb4, nEb5, nD5, $10, nBb4
	dc.b	nF4, $40, nRst, $60, nG4, smpsNoAttack, nG4, $24, nEb4, $18, nG4, $0C
	dc.b	nBb4, nEb5, nD5, $12, nBb4, nF4, $0C, nF5, $30, nA5, $60, nRst
	dc.b	$18, nG3, nEb4, $12, nC4, $06, nRst, $0C, nG4, smpsNoAttack, nG4, $30
	dc.b	$12, nF4, nEb4, $0C, nD4, $12, nEb4, nD4, $0C, nA3, $30, smpsNoAttack
	dc.b	$2E, nRst, $1A, nG3, $0C, nF3, nRst, $18, nG3, nEb4, $12, nC4
	dc.b	$06, nRst, $0C, nG4, smpsNoAttack, nG4, $30, $12, nF4, nEb4, $0C, nD4
	dc.b	$12, nEb4, nD4, $0C, nA3, $30, smpsNoAttack, nA3, nRst
	smpsSetvoice        $02
	smpsFMAlterVol      $0D

Snd_GeneGZ1_Loop15:
	dc.b	nC4, $10
	smpsFMAlterVol      $03
	smpsLoop            $00, $06, Snd_GeneGZ1_Loop15
	smpsFMAlterVol      $EE

Snd_GeneGZ1_Loop16:
	dc.b	nAb4, $10
	smpsFMAlterVol      $03
	smpsLoop            $00, $06, Snd_GeneGZ1_Loop16
	smpsFMAlterVol      $EE

Snd_GeneGZ1_Loop17:
	dc.b	nG4, $10
	smpsFMAlterVol      $03
	smpsLoop            $00, $06, Snd_GeneGZ1_Loop17
	smpsFMAlterVol      $EE

Snd_GeneGZ1_Loop18:
	dc.b	nC4, $10
	smpsFMAlterVol      $03
	smpsLoop            $00, $06, Snd_GeneGZ1_Loop18
	smpsFMAlterVol      $EE
	smpsLoop            $01, $02, Snd_GeneGZ1_Loop15
	smpsFMAlterVol      $F3
	smpsSetvoice        $06
	smpsFMAlterVol      $07
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
	smpsFMAlterVol      $F9
	smpsAlterPitch      $0C
	smpsJump            Snd_GeneGZ1_Jump03

; FM2 Data
Snd_GeneGZ1_FM2:
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $01, $02
	smpsSetvoice        $01
	smpsSetvoice        $01

Snd_GeneGZ1_Loop0E:
	dc.b	nC2, $0C, nC2, nD2, nEb2, $06, nF2, $0C, nC2, nC2, $06, nD2
	dc.b	nEb2, nF2, $0C
	smpsLoop            $00, $02, Snd_GeneGZ1_Loop0E

Snd_GeneGZ1_Loop0F:
	dc.b	nC2, $0C, nC2, nD2, nEb2, $06, nF2, $0C, nC2, nC2, $06, nD2
	dc.b	nEb2, nF2, $0C
	smpsLoop            $00, $08, Snd_GeneGZ1_Loop0F

Snd_GeneGZ1_Loop10:
	dc.b	nC2, $0C, nC2, nD2, nEb2, $06, nG2, $0C, nC2, nC2, $06, nD2
	dc.b	nEb2, nG2, $0C, nC2, nC2, nD2, nEb2, $06, nG2, $0C, nC2, nC2
	dc.b	$06, nD2, nEb2, nG2, $0C, nC2, nC2, nD2, nEb2, $06, nF2, $0C
	dc.b	nC2, nC2, $06, nD2, nEb2, nF2, $0C, nC2, nC2, nD2, nEb2, $06
	dc.b	nF2, $0C, nC2, nC2, $06, nD2, nEb2, nF2, $0C
	smpsLoop            $00, $02, Snd_GeneGZ1_Loop10

Snd_GeneGZ1_Loop11:
	dc.b	nC2, $0C, nC2, nD2, nEb2, $06, nG2, $0C, nC2, nC2, $06, nD2
	dc.b	nEb2, nG2, $0C, nC2, nC2, nD2, nEb2, $06, nG2, $0C, nC2, nC2
	dc.b	$06, nD2, nEb2, nG2, $0C, nC2, nC2, nD2, nEb2, $06, nF2, $0C
	dc.b	nC2, nC2, $06, nD2, nEb2, nF2, $0C, nC2, nC2, nD2, nEb2, $06
	dc.b	nF2, $0C, nC2, nC2, $06, nD2, nEb2, nF2, $0C
	smpsLoop            $00, $02, Snd_GeneGZ1_Loop11

Snd_GeneGZ1_Loop12:
	dc.b	nC2, $0C, nC2, nD2, nEb2, $06, nG2, $0C, nC2, nC2, $06, nD2
	dc.b	nEb2, nG2, $0C, nC2, nC2, nD2, nEb2, $06, nG2, $0C, nC2, nC2
	dc.b	$06, nD2, nEb2, nG2, $0C, nC2, nC2, nD2, nEb2, $06, nF2, $0C
	dc.b	nC2, nC2, $06, nD2, nEb2, nF2, $0C, nC2, nC2, nD2, nEb2, $06
	dc.b	nF2, $0C, nC2, nC2, $06, nD2, nEb2, nF2, $0C
	smpsLoop            $00, $02, Snd_GeneGZ1_Loop12

Snd_GeneGZ1_Loop13:
	dc.b	nC2, $0C, nC2, nD2, nEb2, $06, nC2, $0C, nC2, nC2, $06, nD2
	dc.b	nEb2, nC2, $0C
	smpsLoop            $00, $08, Snd_GeneGZ1_Loop13

Snd_GeneGZ1_Loop14:
	dc.b	nC2, $0C, nC2, nD2, nEb2, $06, nC2, $0C, nC2, nC2, $06, nD2
	dc.b	nEb2, nC2, $0C
	smpsLoop            $00, $14, Snd_GeneGZ1_Loop14
	smpsJump            Snd_GeneGZ1_Loop0F

; FM3 Data
Snd_GeneGZ1_FM3:
	smpsPan             panLeft, $00
	smpsModSet          $01, $01, $01, $07
	dc.b	nRst, $60, nRst

Snd_GeneGZ1_Jump02:
	smpsSetvoice        $04

Snd_GeneGZ1_Loop0A:
	smpsFMAlterVol      $FA
	dc.b	nC4, $06, nC4, nG4, nG4, nC5, nC5, nC4, nC4, nG3, nG3, nG4
	dc.b	nG4, nRst, $18, nC3, $60, nC4, $06, nC4, nG4, nG4, nC5, nC5
	dc.b	nC4, nC4, nG3, nG3, nG4, nG4, nRst, $18, nC3, $60
	smpsFMAlterVol      $06
	smpsLoop            $00, $02, Snd_GeneGZ1_Loop0A
	smpsSetvoice        $02
	dc.b	nRst, $18, nG3, nG3, $12, nG3, $06, nRst, $0C, nG3, smpsNoAttack, nG3
	dc.b	$60, nRst, $18, nF3, nF3, $12, nF3, $06, nRst, $0C, nF3, smpsNoAttack
	dc.b	nF3, $18
	smpsSetvoice        $04
	dc.b	nD5, $06, nD5, nA4, nA4, nRst, $18, nBb4, $06, nBb4, nF4, nF4
	smpsSetvoice        $02
	dc.b	nRst, $18, nG3, nG3, $12, nG3, $06, nRst, $0C, nG3, smpsNoAttack, nG3
	dc.b	$60, nRst, $18, nF3, nF3, $12, nF3, $06, nRst, $0C, nA3, smpsNoAttack
	dc.b	nA3, $60

Snd_GeneGZ1_Loop0B:
	dc.b	nBb3, $30, nEb4, nG4, $60, nC4, $30, nF4, nA4, $60
	smpsLoop            $00, $02, Snd_GeneGZ1_Loop0B

Snd_GeneGZ1_Loop0C:
	dc.b	nG4, $06, nG4, nRst, $0C, $06, nG4, nRst, $0C, nF4, $06, nRst
	dc.b	$0C, nG4, $06, nRst, $0C, nG4, $06, nRst, nRst, nG4, nRst, $0C
	dc.b	nF4, nRst, $06, nG4, nRst, $0C, nG4, $06, nRst, nBb4, nG4, nRst
	dc.b	$0C, nRst, nA4, $06, nA4, nRst, nA4, nRst, nA4, nG4, $12, nA4
	dc.b	$06, nRst, $0C, $06, nA4, nRst, nA4, nRst, nA4, nBb4, $12
	smpsSetvoice        $04
	dc.b	nA4, $06, nC6, nF5, nBb5, nA5, nF5, nC5, nBb4, nA4
	smpsSetvoice        $02
	smpsLoop            $00, $02, Snd_GeneGZ1_Loop0C

Snd_GeneGZ1_Loop0D:
	smpsSetvoice        $02
	smpsAlterPitch      $F4
	dc.b	nRst, $18, nG4, nG4, $12, nFs4, $06, nRst, $0C, nEb4, smpsNoAttack, nEb4
	dc.b	$2E, smpsNoAttack, $32
	smpsAlterPitch      $0C
	smpsLoop            $00, $04, Snd_GeneGZ1_Loop0D
	smpsSetvoice        $06
	smpsAlterPitch      $E8
	smpsFMAlterVol      $FD
	dc.b	nG4, $60, nG4, nAb4, nF4
	smpsFMAlterVol      $03
	smpsFMAlterVol      $FA
	smpsAlterPitch      $0C
	dc.b	nG4, $06, nG4, nRst, $0C, $06, nG4, nRst, $0C, $12, nG4, $06
	dc.b	nRst, $0C, $06, nG4, nRst, nAb4, nRst, $0C, $12, $06, nRst, $18
	dc.b	$06, nAb4, nAb4, nRst, nBb4, nBb4, nRst, $0C, $06, nBb4, nRst, $0C
	dc.b	$12, nBb4, $06, nRst, $0C, $06, nBb4, nRst, nBb4, nBb4, nRst, nBb4
	dc.b	$12, $06, nRst, $18, $06, nBb4, nBb4, nRst
	smpsAlterPitch      $F4
	dc.b	nG4, $60, nG4, nAb4, nF4, nG4, $30, nC4, nAb4, $60, nBb4, $30
	dc.b	nBb4, nBb4, $60, nC4, $30, nC4, smpsNoAttack, nC4, $60, nC4, $30, nC4
	dc.b	smpsNoAttack, nC4, $48, nRst, $18
	smpsFMAlterVol      $06
	smpsAlterPitch      $18
	smpsJump            Snd_GeneGZ1_Jump02

; FM4 Data
Snd_GeneGZ1_FM4:
	smpsPan             panRight, $00
	smpsModSet          $01, $01, $01, $08
	dc.b	nRst, $60, nRst

Snd_GeneGZ1_Jump01:
	smpsSetvoice        $04

Snd_GeneGZ1_Loop06:
	smpsFMAlterVol      $FA
	dc.b	nRst, $1E, nG4, $06, nG4, nG5, nG5, nC5, nC5, nG4, nG4, nC4
	dc.b	nC4, nG3, nF3, $24, nC4, $3C, nRst, $1E, nG4, $06, nG4, nG5
	dc.b	nG5, nC5, nC5, nG4, nG4, nC4, nC4, nG3, nF3, $24, nC4, nC4
	dc.b	$06, nC4, nG4, nG4
	smpsFMAlterVol      $06
	smpsLoop            $00, $02, Snd_GeneGZ1_Loop06
	smpsSetvoice        $02
	dc.b	nRst, $18, nC3, nC3, $12, nC3, $06, nRst, $0C, nC3, smpsNoAttack, nC3
	dc.b	$60, nRst, $18, nC3, nC3, $12, nC3, $06, nRst, $0C, nC3, smpsNoAttack
	dc.b	nC3, $18, nRst
	smpsSetvoice        $04
	dc.b	nC5, $06, nC5, nG4, nG4, nRst, $18, $06, nG4, nC4, nC4
	smpsSetvoice        $02
	dc.b	nC3, $18, $12, nC3, $06, nRst, $0C, nC3, smpsNoAttack, nC3, $60, nRst
	dc.b	$18, nC3, nC3, $12, nC3, $06, nRst, $0C, nC3, smpsNoAttack, nC3, $60

Snd_GeneGZ1_Loop07:
	dc.b	nEb3, $30, nG3, nBb3, $60, nF3, $30, nA3, nC4, $60
	smpsLoop            $00, $02, Snd_GeneGZ1_Loop07

Snd_GeneGZ1_Loop08:
	dc.b	nC4, $06, nC4, nRst, $0C, $06, nC4, nRst, $0C, $06, nRst, $0C
	dc.b	$06, nRst, $0C, nC4, $06, nRst, nRst, nC4, nRst, $0C, nC4, nRst
	dc.b	$06, nC4, nRst, $0C, nC4, $06, nRst, nC4, nC4, nRst, $0C, nRst
	dc.b	nF4, $06, nF4, nRst, nF4, nRst, nF4, nF4, $12, nF4, $06, nRst
	dc.b	$0C, $06, nF4, nRst, nF4, nRst, nF4, nF4, $12, $06, nRst, $06
	smpsSetvoice        $04
	dc.b	nC6, nF5, nBb5, nA5, nF5, nC5, nBb4
	smpsSetvoice        $02
	smpsLoop            $00, $02, Snd_GeneGZ1_Loop08

Snd_GeneGZ1_Loop09:
	smpsAlterPitch      $F4
	dc.b	nRst, $18, nC4, nC4, $12, nC4, $06, nRst, $0C, nAb3, smpsNoAttack, nAb3
	dc.b	$2E, smpsNoAttack, $32
	smpsAlterPitch      $0C
	smpsLoop            $00, $04, Snd_GeneGZ1_Loop09
	smpsSetvoice        $06
	smpsAlterPitch      $E8
	smpsFMAlterVol      $FD
	dc.b	nC4, $60, nBb3, nEb4, nBb3
	smpsFMAlterVol      $03
	smpsFMAlterVol      $FA
	smpsAlterPitch      $0C
	dc.b	nC4, $06, nC4, nRst, $0C, $06, nC4, nRst, $0C, $12, nC4, $06
	dc.b	nRst, $0C, $06, nC4, nRst, nC4, nRst, $0C, $12, $06, nRst, $18
	dc.b	$06, nC4, nC4, nRst, nEb4, nEb4, nRst, $0C, $06, nEb4, nRst, $0C
	dc.b	$12, nEb4, $06, nRst, $0C, $06, nEb4, nRst, nF4, nF4, nRst, nF4
	dc.b	$12, $06, nRst, $18, $06, nF4, nF4, nRst
	smpsAlterPitch      $F4
	dc.b	nC4, $60, nBb3, nEb4, nBb3, nC4, $30, nC4, nC4, $60, nEb4, $30
	dc.b	nEb4, nF4, $60, nG3, $30, nG3, smpsNoAttack, nG3, $60, nG3, $30, nG3
	dc.b	smpsNoAttack, nG3, $48, nRst, $18
	smpsFMAlterVol      $06
	smpsAlterPitch      $18
	smpsJump            Snd_GeneGZ1_Jump01

; FM5 Data
Snd_GeneGZ1_FM5:
	smpsModSet          $01, $01, $01, $06
	dc.b	nRst, $10
	smpsAlterNote       $01
	smpsJump            Snd_GeneGZ1_FM1

; Unreachable
	smpsStop

; PSG1 Data
Snd_GeneGZ1_PSG1:
	smpsModSet          $03, $01, $01, $03
	smpsPSGvoice        sTone_11
	dc.b	nRst, $60, nRst

Snd_GeneGZ1_Jump04:
	smpsPSGvoice        sTone_26

Snd_GeneGZ1_Loop1A:
	dc.b	nRst, $18, nC5, nC4, nG4, nBb4, $12, nA4, nEb4, $24, nD4, $0C
	dc.b	nEb4, nC4, $18, nC5, nG4, nBb4, nA4, $12, nBb4, nF4, $24, nEb4
	dc.b	$0C, nD4
	smpsLoop            $00, $02, Snd_GeneGZ1_Loop1A
	dc.b	nRst, $18, nG3, nG3, $12, nG3, $06, nRst, $0C, nG3, smpsNoAttack, nG3
	dc.b	$60, nRst, $18, nF3, nF3, $12, nF3, $06, nRst, $0C, nF3, smpsNoAttack
	dc.b	nF3, $18, nRst, $48, nRst, $18, nG3, nG3, $12, nG3, $06, nRst
	dc.b	$0C, nG3, smpsNoAttack, nG3, $60, nRst, $18, nF3, nF3, $12, nF3, $06
	dc.b	nRst, $0C, nA3, smpsNoAttack, nA3, $60

Snd_GeneGZ1_Loop1D:
	dc.b	nRst, $10, nD4, nEb4, nG4, nD5, nEb5

Snd_GeneGZ1_Loop1B:
	dc.b	nBb5, $10
	smpsPSGAlterVol     $01
	smpsLoop            $00, $06, Snd_GeneGZ1_Loop1B
	smpsPSGAlterVol     $FA
	dc.b	nRst, $10, nE4, nF4, nC5, nE5, nF5

Snd_GeneGZ1_Loop1C:
	dc.b	nC6, $10
	smpsPSGAlterVol     $01
	smpsLoop            $00, $06, Snd_GeneGZ1_Loop1C
	smpsPSGAlterVol     $FA
	smpsLoop            $01, $02, Snd_GeneGZ1_Loop1D
	dc.b	nRst, $60, nRst, nRst, $10, nC6, nF5, nBb5, nA5, nC5, nF5, nA4
	dc.b	nF4, nRst, $30, nRst, $60, nRst, nRst, $0C, nF4, nA4, nBb4, nC5
	dc.b	$12, nBb4, nF4, $0C, nF5, $30, nRst, nRst, $60, nC5, $18, nEb4
	dc.b	nAb4, nG4, nC4, $2E, nRst, $32, nC5, $18, nRst, nG5, nRst, nEb5
	dc.b	$2E, nRst, $32, nC5, $18, nEb4, nAb4, nG4, nC4, $30, nRst, nRst
	dc.b	$60
	smpsAlterPitch      $F4
	dc.b	nC4, $60, nD4, nEb4, nF4, $30, nBb4, $24, nA4, $06, nAb4
	smpsAlterPitch      $0C
	smpsPSGvoice        sTone_1D
	dc.b	nC4, $06, nRst, $12, $06, nEb4, nG4, nEb4, nC5, $0C, nG4, $06
	dc.b	nEb4, $0C, nC4, $06, nG4, $0C, nC4, $06, nRst, $12, $06, nEb4
	dc.b	nAb4, nEb4, nC5, $0C, nAb4, $06, nEb4, $0C, nC4, $06, nAb4, $0C
	dc.b	nC4, $06, nRst, $12, $06, nEb4, nG4, nEb4, nBb4, $0C, nG4, $06
	dc.b	nEb4, $0C, nBb3, $06, nG4, $0C, nF4, $06, nRst, $12, $06, nBb3
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
	smpsJump            Snd_GeneGZ1_Jump04

; PSG2 Data
Snd_GeneGZ1_PSG2:
	smpsModSet          $04, $01, $01, $04
	smpsPSGvoice        sTone_26
	dc.b	nRst, $0B, nRst, $60, nRst
	smpsJump            Snd_GeneGZ1_Jump04

; PSG3 Data
Snd_GeneGZ1_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $60, nRst

Snd_GeneGZ1_Loop19:
	smpsCall            Snd_GeneGZ1_Call00
	smpsLoop            $00, $3C, Snd_GeneGZ1_Loop19
	smpsJump            Snd_GeneGZ1_Loop19

; Unreachable
Snd_GeneGZ1_CallUnk00:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsLoop            $00, $10, Snd_GeneGZ1_CallUnk00
	smpsReturn

; Unreachable
Snd_GeneGZ1_CallUnk01:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF
	smpsLoop            $00, $10, Snd_GeneGZ1_CallUnk01
	smpsReturn

; Unreachable
Snd_GeneGZ1_CallUnk02:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, nRst, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, nRst, (nMaxPSG2-$23)&$FF, nRst
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGvoice        sTone_0F
	dc.b	$06, $06
	smpsLoop            $00, $04, Snd_GeneGZ1_CallUnk02
	smpsReturn

; Unreachable
Snd_GeneGZ1_CallUnk03:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF
	smpsLoop            $00, $07, Snd_GeneGZ1_CallUnk03
	smpsReturn

Snd_GeneGZ1_Call00:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, nRst, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, nRst, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF
	smpsLoop            $00, $04, Snd_GeneGZ1_Call00
	smpsReturn

; DAC Data
Snd_GeneGZ1_DAC:
	dc.b	nRst, $60, nRst, $30, dKickS3, $06, dSnareS3, nRst, dKickS3, dSnareS3, dSnareS3, dSnareS3
	dc.b	dSnareS3

Snd_GeneGZ1_Jump00:
	dc.b	dCrashCymbal, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst, dKickS3, nRst, nRst, nRst, dSnareS3, nRst, nRst
	dc.b	dKickS3, nRst, dSnareS3, dKickS3, nRst, dSnareS3, nRst, dSnareS3, nRst

Snd_GeneGZ1_Loop00:
	dc.b	dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst, dKickS3, nRst, nRst, nRst, dSnareS3, nRst, nRst
	dc.b	dKickS3, nRst, dSnareS3, dKickS3, nRst, dSnareS3, nRst, nRst, nRst
	smpsLoop            $00, $02, Snd_GeneGZ1_Loop00
	dc.b	dCrashCymbal, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst, dKickS3, dSnareS3, dKickS3, nRst, dKickS3, dSnareS3, dKickS3
	dc.b	nRst, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3

Snd_GeneGZ1_Loop01:
	dc.b	dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst, dKickS3, nRst, nRst, nRst, dSnareS3, nRst, nRst
	dc.b	dKickS3, nRst, dSnareS3, dKickS3, nRst, dSnareS3, nRst, nRst, nRst
	smpsLoop            $00, $07, Snd_GeneGZ1_Loop01
	dc.b	dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst, dKickS3, nRst, nRst, nRst, dSnareS3, nRst, nRst
	dc.b	dKickS3, nRst, dSnareS3, dKickS3, nRst, dSnareS3, nRst, dSnareS3, dSnareS3, dCrashCymbal, $06, nRst
	dc.b	nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3, nRst, dSnareS3, nRst
	dc.b	nRst, nRst, dKickS3, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dSnareS3
	dc.b	dKickS3, nRst, dSnareS3, nRst, dKickS3, nRst

Snd_GeneGZ1_Loop02:
	dc.b	dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst, dKickS3, nRst, nRst, nRst, dSnareS3, nRst, nRst
	dc.b	dKickS3, nRst, dSnareS3, dKickS3, nRst, dSnareS3, nRst, dSnareS3, dSnareS3
	smpsLoop            $00, $03, Snd_GeneGZ1_Loop02

Snd_GeneGZ1_Loop03:
	dc.b	dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst, dKickS3, nRst, nRst, nRst, dSnareS3, nRst, nRst
	dc.b	dKickS3, nRst, dSnareS3, dKickS3, nRst, dSnareS3, nRst, dSnareS3, dSnareS3
	smpsLoop            $00, $03, Snd_GeneGZ1_Loop03
	dc.b	dCrashCymbal, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst, dKickS3, nRst, nRst, nRst, dSnareS3, nRst, nRst
	dc.b	dKickS3, nRst, dSnareS3, dKickS3, nRst, dSnareS3, dSnareS3, dSnareS3, dSnareS3

Snd_GeneGZ1_Loop04:
	dc.b	dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst
	smpsLoop            $00, $06, Snd_GeneGZ1_Loop04
	dc.b	dCrashCymbal, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst, dKickS3, nRst, nRst, dElectricFloorTom, dSnareS3, nRst, nRst
	dc.b	dKickS3, nRst, dElectricHighTom, dKickS3, dElectricMidTom, dElectricMidTom, dElectricMidTom, dElectricLowTom, dElectricFloorTom

Snd_GeneGZ1_Loop05:
	dc.b	dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst
	smpsLoop            $00, $0A, Snd_GeneGZ1_Loop05
	dc.b	dCrashCymbal, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst, dKickS3, nRst, nRst, nRst, dSnareS3, nRst, nRst
	dc.b	dKickS3, dElectricHighTom, dElectricHighTom, dElectricMidTom, dElectricLowTom, dElectricLowTom, dElectricFloorTom, dElectricFloorTom, dElectricFloorTom
	smpsJump            Snd_GeneGZ1_Jump00

Snd_GeneGZ1_Voices:
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
	smpsVcTotalLevel    $87, $88, $88, $1F

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
;	$E6, $00, $B0, $01, 	$EC, $17, $13, $09, 	$B1, $80, $AC, $AE
;	$AC, $AE, $AC, $AE, 	$A5, $E6, $FE, $EF, 	$51, $80, $80, $81
	smpsVcAlgorithm     $05
	smpsVcFeedback      $04
	smpsVcUnusedBits    $03, $01, $01, $00, $01
	smpsVcDetune        $00, $0B, $00, $0E
	smpsVcCoarseFreq    $01, $00, $00, $06
	smpsVcRateScale     $00, $00, $00, $03
	smpsVcAttackRate    $09, $13, $17, $2C
	smpsVcAmpMod        $01, $01, $01, $01
	smpsVcDecayRate1    $0E, $0C, $00, $11
	smpsVcDecayRate2    $AE, $AC, $AE, $AC
	smpsVcDecayLevel    $0E, $0F, $0E, $0A
	smpsVcReleaseRate   $0F, $0E, $06, $05
	smpsVcTotalLevel    $81, $80, $80, $51

;	Voice $05
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $07, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $07, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $27, $28, $18

;	Voice $06
;	$3C
;	$71, $71, $11, $11, 	$17, $1E, $19, $1E, 	$04, $01, $07, $01
;	$00, $00, $00, $00, 	$F7, $F8, $F7, $F8, 	$1E, $80, $0A, $80
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
	smpsVcTotalLevel    $80, $0A, $80, $1E

