Snd_Boss1_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_Boss1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $0C

	smpsHeaderDAC       Snd_Boss1_DAC
	smpsHeaderFM        Snd_Boss1_FM1,	$00, $11
	smpsHeaderFM        Snd_Boss1_FM2,	$0C, $0C
	smpsHeaderFM        Snd_Boss1_FM3,	$F4, $16
	smpsHeaderFM        Snd_Boss1_FM4,	$F4, $16
	smpsHeaderFM        Snd_Boss1_FM5,	$00, $1A
	smpsHeaderPSG       Snd_Boss1_PSG1,	$F4, $02, $00, $00
	smpsHeaderPSG       Snd_Boss1_PSG2,	$F4, $02, $00, $00
	smpsHeaderPSG       Snd_Boss1_PSG3,	$23, $02, $00, $00

; FM1 Data
Snd_Boss1_FM1:
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $01, $06

Snd_Boss1_Jump01:
	smpsSetvoice        $03
	smpsFMAlterVol      $FC

Snd_Boss1_Loop13:
	smpsModSet          $0B, $01, $EF, $11
	dc.b	nC6, $0F, nRst, $03
	smpsFMAlterVol      $09
	smpsLoop            $00, $05, Snd_Boss1_Loop13
	dc.b	nRst, $06
	smpsFMAlterVol      $D3
	smpsFMAlterVol      $06
	smpsModSet          $01, $01, $01, $06
	dc.b	nEb3, $60, nD3, nG2
	smpsFMAlterVol      $FA
	smpsFMAlterVol      $04
	smpsLoop            $01, $02, Snd_Boss1_Jump01

Snd_Boss1_Jump02:
	smpsModSet          $01, $01, $01, $06

Snd_Boss1_Loop14:
	smpsSetvoice        $00
	smpsFMAlterVol      $FD
	smpsAlterPitch      $F4
	dc.b	nC3, $60, nEb3, nD3, nG2
	smpsFMAlterVol      $03
	smpsAlterPitch      $0C
	smpsLoop            $00, $02, Snd_Boss1_Loop14
	smpsFMAlterVol      $FC
	smpsAlterPitch      $F4
	dc.b	nRst, $18, nC5, nC4, $30, nRst, nBb4, $10, nA4, nF4, nEb4, $24
	dc.b	nC4, $3C, nBb3, $60, nC3, $24, nFs3, $0C, nG3, $12, nC4, nEb4
	dc.b	$0C, nD4, $24, nBb3, $0C, nG3, $12, nBb3, nD4, $0C, nG4, $48
	dc.b	nRst, $0C, nF4, nBb4, $18, nAb4, nG4, $12, nD4, nEb4, $0C
	smpsAlterPitch      $0C
	smpsFMAlterVol      $04
	dc.b	nC4, $18, nRst
	smpsSetvoice        $02
	dc.b	nC4, $12, nF4, nFs4, $0C, nEb4, $48, nD4, $18, nRst, nC4, nC4
	dc.b	$12, nG4, nFs4, $0C, nEb4, $48, nRst, $0C, nD4, $06, nEb4, nG4
	dc.b	$60, nBb4, $10, nAb4, nG4, nF4, nEb4, nCs4, nC4, $30, nBb3, $12
	dc.b	nAb3, nG3, $0C, smpsNoAttack, $2E, nRst, $0E, $0C, nAb3, nBb3, nC4, $30
	dc.b	nBb3, $12, nAb3, nG3, $0C, smpsNoAttack, $60, nC3, $06, nRst, nA2, nRst
	dc.b	nBb2, $0C, nB2, $06, nC3, nRst, nC3, nA2, nRst, nBb2, $0C, nB2
	dc.b	nC3, $06, nRst, nA2, nRst, nBb2, $0C, nB2, $06, nC3, nRst, nC3
	dc.b	nA2, nRst, nBb2, $0C, nB2, nC4, $06, nRst, nA3, nRst, nBb3, $0C
	dc.b	nB3, $06, nC4, nRst, nC4, nA3, nRst, nBb3, $0C, nB3, nC4, $06
	dc.b	nRst, nA3, nRst, nBb3, $0C, nB3, $06, nC4, nRst, nC4, nA3, nRst
	dc.b	nBb3, $0C, nB3
	smpsSetvoice        $03

Snd_Boss1_Loop15:
	dc.b	nC2, $12, nC2, $06, nRst, $0C, nC2, nRst, $30, nRst, $3C, nA1
	dc.b	$0C, nBb1, nB1, nC2, $12, nC2, $06, nRst, $0C, nC2, nRst, $30
	dc.b	nRst, $2A, nC2, $0C, $06, nA1, $0C, nBb1, nB1
	smpsLoop            $00, $02, Snd_Boss1_Loop15
	smpsJump            Snd_Boss1_Jump02

; FM2 Data
Snd_Boss1_FM2:
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $01, $02
	smpsSetvoice        $01

Snd_Boss1_Loop0B:
	dc.b	nC2, $0C, nA1, nBb1, nB1, $06, nC2, $0C, $06, nA1, $0C, nBb1
	dc.b	nB1
	smpsLoop            $00, $03, Snd_Boss1_Loop0B
	dc.b	nC2, $0C, nA1, nBb1, nB1, $06, nC2, $06, nRst, $06, $06, nA1
	dc.b	$0C, nBb1, nB1
	smpsLoop            $01, $02, Snd_Boss1_Loop0B

Snd_Boss1_Loop0C:
	dc.b	nC2, $0C, nA1, nBb1, nB1, $06, nC2, $0C, $06, nA1, $0C, nBb1
	dc.b	nB1
	smpsLoop            $00, $03, Snd_Boss1_Loop0C
	dc.b	nC2, $0C, nA1, nBb1, nB1, $06, nC2, $06, nRst, $06, $06, nA1
	dc.b	$0C, nBb1, nB1
	smpsLoop            $01, $02, Snd_Boss1_Loop0C

Snd_Boss1_Loop0D:
	dc.b	nC2, $0C, nA1, nBb1, nB1, $06, nC2, $0C, $06, nA1, $0C, nBb1
	dc.b	nB1
	smpsLoop            $00, $03, Snd_Boss1_Loop0D
	dc.b	nC2, $0C, nA1, nBb1, nB1, $06, nC2, $06, nRst, $06, $06, nA1
	dc.b	$0C, nBb1, nB1
	smpsLoop            $01, $02, Snd_Boss1_Loop0D

Snd_Boss1_Loop0E:
	dc.b	nC2, $0C, nA1, nBb1, nB1, $06, nC2, $0C, $06, nA1, $0C, nBb1
	dc.b	nB1
	smpsLoop            $00, $02, Snd_Boss1_Loop0E

Snd_Boss1_Loop0F:
	dc.b	nC2, $0C, nA1, nBb1, nB1, $06, nC2, $06, nRst, $06, $06, nA1
	dc.b	$0C, nBb1, nB1
	smpsLoop            $00, $02, Snd_Boss1_Loop0F
	smpsLoop            $01, $02, Snd_Boss1_Loop0E

Snd_Boss1_Loop10:
	dc.b	nC2, $0C, nA1, nBb1, nB1, $06, nC2, $06, nRst, $06, $06, nA1
	dc.b	$0C, nBb1, nB1
	smpsLoop            $00, $02, Snd_Boss1_Loop10

Snd_Boss1_Loop11:
	dc.b	nC2, $0C, nA1, nBb1, nB1, $06, nC2, $06, nRst, $06, $06, nA1
	dc.b	$0C, nBb1, nB1
	smpsLoop            $00, $04, Snd_Boss1_Loop11

Snd_Boss1_Loop12:
	dc.b	nC2, $0C, nA1, nBb1, nB1, $06, nC2, $0C, $06, nA1, $0C, nBb1
	dc.b	nB1
	smpsLoop            $00, $03, Snd_Boss1_Loop12
	dc.b	nC2, $0C, nA1, nBb1, nB1, $06, nC2, $06, nRst, $06, $06, nA1
	dc.b	$0C, nBb1, nB1
	smpsLoop            $01, $02, Snd_Boss1_Loop12
	smpsJump            Snd_Boss1_Loop0C

; FM3 Data
Snd_Boss1_FM3:
	smpsPan             panLeft, $00
	smpsModSet          $04, $01, $01, $08
	smpsSetvoice        $03

Snd_Boss1_Loop08:
	dc.b	nC4, $60, nEb4, nD4, nD4
	smpsLoop            $00, $02, Snd_Boss1_Loop08

Snd_Boss1_Loop09:
	dc.b	nC4, $60, nEb4, nD4, nD4
	smpsLoop            $00, $02, Snd_Boss1_Loop09
	dc.b	nC4, $60, nD4, nEb4, nG4, nC4, nD4, nEb4, nD4
	smpsSetvoice        $04
	smpsFMAlterVol      $FA
	dc.b	nEb4, nFs4, nEb4, nA4, nEb4, smpsNoAttack, nEb4, nC4, smpsNoAttack, nC4, nC4, nG4
	smpsFMAlterVol      $06
	smpsSetvoice        $03
	dc.b	nC4, nEb4, nF4, nG4

Snd_Boss1_Loop0A:
	dc.b	nC4, $60, smpsNoAttack, $30, nG4, nFs4, $60, smpsNoAttack, nFs4
	smpsLoop            $00, $02, Snd_Boss1_Loop0A
	smpsJump            Snd_Boss1_Loop09

; FM4 Data
Snd_Boss1_FM4:
	smpsPan             panRight, $00
	smpsModSet          $04, $01, $01, $07
	smpsSetvoice        $03

Snd_Boss1_Loop05:
	dc.b	nG3, $60, nA3, nA3, nG3
	smpsLoop            $00, $02, Snd_Boss1_Loop05

Snd_Boss1_Loop06:
	dc.b	nG3, $60, nA3, nA3, nG3
	smpsLoop            $00, $02, Snd_Boss1_Loop06
	dc.b	nG3, $60, nG3, nC4, nD4, nG3, nG3, nAb3, nBb3
	smpsSetvoice        $04
	smpsFMAlterVol      $FA
	dc.b	nG3, nC4, nC4, nEb4, nG3, smpsNoAttack, nG3, nG3, smpsNoAttack, nG3, nG3, nC4
	smpsFMAlterVol      $06
	smpsSetvoice        $03
	dc.b	nG3, nBb3, nC4, nD4

Snd_Boss1_Loop07:
	dc.b	nG3, $60, smpsNoAttack, $30, nD4, nD4, $60, smpsNoAttack, nD4
	smpsLoop            $00, $02, Snd_Boss1_Loop07
	smpsJump            Snd_Boss1_Loop06

; FM5 Data
Snd_Boss1_FM5:
	smpsModSet          $01, $01, $01, $08
	dc.b	nRst, $15
	smpsAlterNote       $01
	smpsJump            Snd_Boss1_Jump01

; Unreachable
	smpsStop

; PSG1 Data
Snd_Boss1_PSG1:
	smpsModSet          $03, $01, $01, $03
	smpsPSGvoice        sTone_26

Snd_Boss1_Loop1A:
	smpsAlterPitch      $F4
	dc.b	nC4, $60, nEb4, nD4, nD4
	smpsAlterPitch      $0C
	smpsLoop            $00, $02, Snd_Boss1_Loop1A

Snd_Boss1_Loop1B:
	smpsPSGvoice        sTone_17
	dc.b	nC6, $06, nG5, nC5, nA5, nEb5, nA4, nG5, nC5, nG4, nEb5, nA4
	dc.b	nEb4, nC5, nG4, nC4, nG4, nRst, $60, nG3, $06, nEb4, nA3, nEb3
	dc.b	nC4, nG3, nC3, nA3, nEb3, nA2, nG3, nC3, nG2, nEb3, nC3, nG2
	dc.b	nRst, $60
	smpsLoop            $00, $02, Snd_Boss1_Loop1B
	smpsAlterPitch      $F4
	smpsPSGvoice        sTone_1D
	dc.b	nRst, $18, nEb5, $06, nEb5, nEb5, nEb5, nC5, $12, nEb5, $06, nRst
	dc.b	$0C, nD5, smpsNoAttack, nD5, nRst, $54, nRst, $18, nEb5, $06, nEb5, nEb5
	dc.b	nEb5, nC5, $12, nEb5, $06, nRst, $0C, nG5, smpsNoAttack, nG5, nRst, $18
	dc.b	nD5, $2E, nRst, $0E, nRst, $18, nEb5, $06, nEb5, nEb5, nEb5, nC5
	dc.b	$12, nEb5, $06, nRst, $0C, nD5, smpsNoAttack, nD5, nRst, $54, nRst, $18
	dc.b	nEb5, $06, nEb5, nEb5, nEb5, nC5, $12, nEb5, $06, nRst, $0C, nG5
	dc.b	smpsNoAttack, nG5, nRst, $18, nD5, $2E, nRst, $0E
	smpsPSGvoice        sTone_26
	dc.b	nC5, $30, nG5, nFs5, nEb5, nC5, nG5, nFs5, nEb5
	smpsAlterPitch      $0C

Snd_Boss1_Loop1C:
	smpsPSGvoice        sTone_1D
	smpsPSGAlterVol     $02
	dc.b	nC5, $06, nC6, nG5, nC5, nG5, nEb5, nG4, nC5, nG4, nC4, nG4
	dc.b	nEb4, nG3, nC4, nG3, nC3, nRst, $60
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $03, Snd_Boss1_Loop1C
	smpsPSGvoice        sTone_26
	dc.b	nC4, $06, nRst, nA3, nRst, nBb3, $0C, nB3, $06, nC4, nRst, nC4
	dc.b	nA3, nRst, nBb3, nRst, nB3, nRst, nEb4, nRst, nC4, nRst, nCs4, $0C
	dc.b	nD4, $06, nEb4, nRst, nEb4, nC4, nRst, nCs4, nRst, nD4, nRst, nG4
	dc.b	nRst, nEb4, nRst, nF4, $0C, nFs4, $06, nG4, nRst, nG4, nEb4, nRst
	dc.b	nF4, nRst, nFs4, nRst, nG4, nRst, nEb4, nRst, nF4, $0C, nFs4, $06
	dc.b	nG4, nRst, nG4, nEb4, nRst, nF4, nRst, nFs4, nRst
	smpsPSGvoice        sTone_11

Snd_Boss1_Loop1D:
	dc.b	nG4, $12, nC4, nC5, $0C, nRst, $30, nRst, $60, nFs4, $12, nD4
	dc.b	nC5, $0C, nRst, $30, nRst, $60
	smpsLoop            $00, $02, Snd_Boss1_Loop1D
	smpsJump            Snd_Boss1_Loop1B

; PSG2 Data
Snd_Boss1_PSG2:
	smpsModSet          $04, $01, $01, $04
	smpsPSGvoice        sTone_26

Snd_Boss1_Loop16:
	smpsAlterPitch      $F4
	dc.b	nG3, $60, nA3, nA3, nG3
	smpsAlterPitch      $0C
	smpsLoop            $00, $02, Snd_Boss1_Loop16

Snd_Boss1_Loop17:
	smpsPSGvoice        sTone_17
	dc.b	nRst, $11
	smpsPSGAlterVol     $03
	dc.b	nC6, $06, nG5, nC5, nA5, nEb5, nA4, nG5, nC5, nG4, nEb5, nA4
	dc.b	nEb4, nC5, nG4, nC4, nG4, nRst, $60, nG3, $06, nEb4, nA3, nEb3
	dc.b	nC4, nG3, nC3, nA3, nEb3, nA2, nG3, nC3, nG2, nEb3, nC3, nG2
	dc.b	nRst, $4F
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $02, Snd_Boss1_Loop17
	smpsAlterPitch      $F4
	smpsPSGvoice        sTone_1D
	dc.b	nRst, $18, nG4, $06, nG4, nG4, nG4, nG4, $12, nG4, $06, nRst
	dc.b	$0C, nG4, smpsNoAttack, nG4, nRst, $54, nRst, $18, nG4, $06, nG4, nG4
	dc.b	nG4, nG4, $12, nG4, $06, nRst, $0C, nD5, smpsNoAttack, nD5, nRst, $18
	dc.b	nG4, $2E, nRst, $0E, nRst, $18, nG4, $06, nG4, nG4, nG4, nG4
	dc.b	$12, nG4, $06, nRst, $0C, nG4, smpsNoAttack, nG4, nRst, $54, nRst, $18
	dc.b	nAb4, $06, nAb4, nAb4, nAb4, nAb4, $12, nAb4, $06, nRst, $0C, nD5
	dc.b	smpsNoAttack, nD5, nRst, $18, nG4, $2E, nRst, $0E
	smpsPSGvoice        sTone_26
	dc.b	nG4, $30, nC5, nC5, nA4, nG4, nC5, nC5, nA4
	smpsAlterPitch      $0C
	smpsPSGvoice        sTone_1D

Snd_Boss1_Loop18:
	smpsPSGAlterVol     $02
	dc.b	nC5, $06, nC6, nG5, nC5, nG5, nEb5, nG4, nC5, nG4, nC4, nG4
	dc.b	nEb4, nG3, nC4, nG3, nC3, nRst, $60
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $03, Snd_Boss1_Loop18
	smpsPSGvoice        sTone_26
	smpsPSGAlterVol     $02
	dc.b	nRst, $11, nC4, $06, nRst, nA3, nRst, nBb3, $0C, nB3, $06, nC4
	dc.b	nRst, nC4, nA3, nRst, nBb3, nRst, nB3, nRst, nEb4, nRst, nC4, nRst
	dc.b	nCs4, $0C, nD4, $06, nEb4, nRst, nEb4, nC4, nRst, nCs4, nRst, nD4
	dc.b	nRst, nG4, nRst, nEb4, nRst, nF4, $0C, nFs4, $06, nG4, nRst, nG4
	dc.b	nEb4, nRst, nF4, nRst, nFs4, nRst, nG4, nRst, nEb4, nRst, nF4, $0C
	dc.b	nFs4, $06, nG4, nRst, nG4, nEb4, nRst, nF4, nRst, $01
	smpsPSGAlterVol     $FE
	smpsPSGvoice        sTone_11

Snd_Boss1_Loop19:
	smpsPSGAlterVol     $02
	dc.b	nRst, $11, nG4, $12, nC4, nC5, $0C, nRst, $30, nRst, $60, nFs4
	dc.b	$12, nD4, nC5, $0C, nRst, $30, nRst, $4F
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, Snd_Boss1_Loop19
	smpsJump            Snd_Boss1_Loop17

; PSG3 Data
Snd_Boss1_PSG3:
	smpsPSGform         $E7

Snd_Boss1_Jump03:
	smpsCall            Snd_Boss1_Call00
	smpsJump            Snd_Boss1_Jump03

; Unreachable
Snd_Boss1_CallUnk00:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsLoop            $00, $10, Snd_Boss1_CallUnk00
	smpsReturn

; Unreachable
Snd_Boss1_CallUnk01:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF
	smpsLoop            $00, $10, Snd_Boss1_CallUnk01
	smpsReturn

; Unreachable
Snd_Boss1_CallUnk02:
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
	smpsLoop            $00, $04, Snd_Boss1_CallUnk02
	smpsReturn

; Unreachable
Snd_Boss1_CallUnk03:
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
	smpsLoop            $00, $07, Snd_Boss1_CallUnk03
	smpsReturn

Snd_Boss1_Call00:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, nRst, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, nRst, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF
	smpsLoop            $00, $04, Snd_Boss1_Call00
	smpsReturn

; DAC Data
Snd_Boss1_DAC:
	dc.b	dCrashCymbal, $18, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3
	dc.b	dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dCrashCymbal, $18, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3
	dc.b	dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, $06, nRst, nRst, dKickS3, dKickS3
	dc.b	dSnareS3, nRst, dKickS3, dKickS3, dElectricFloorTom, dElectricFloorTom, dElectricFloorTom, dElectricMidTom, dElectricMidTom, dElectricLowTom, dElectricFloorTom

Snd_Boss1_Jump00:
	dc.b	dCrashCymbal, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst

Snd_Boss1_Loop00:
	dc.b	dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst
	smpsLoop            $00, $06, Snd_Boss1_Loop00
	dc.b	dCrashCymbal, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, dKickS3
	dc.b	dElectricHighTom, dElectricMidTom, dElectricLowTom, dElectricFloorTom, dElectricFloorTom

Snd_Boss1_Loop01:
	dc.b	dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, nRst
	dc.b	nRst, dSnareS3, nRst, nRst, nRst
	smpsLoop            $00, $08, Snd_Boss1_Loop01

Snd_Boss1_Loop02:
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dSnareS3
	smpsLoop            $00, $0A, Snd_Boss1_Loop02
	dc.b	dCrashCymbal, $18, dSnareS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dCrashCymbal, dKickS3, dKickS3
	dc.b	dKickS3, dKickS3, $06, dSnareS3, dKickS3, nRst, dKickS3, dSnareS3, dKickS3, nRst, dSnareS3, dSnareS3
	dc.b	dSnareS3, dSnareS3, dElectricHighTom, dElectricMidTom, dElectricLowTom, dElectricFloorTom

Snd_Boss1_Loop03:
	dc.b	dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, nRst, dKickS3, nRst
	dc.b	nRst, dSnareS3, nRst, nRst, nRst
	smpsLoop            $00, $03, Snd_Boss1_Loop03
	dc.b	dKickS3, $18, dSnareS3, dKickS3, $06, nRst, dSnareS3, nRst, dSnareS3, dSnareS3, nRst, dSnareS3

Snd_Boss1_Loop04:
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dSnareS3
	smpsLoop            $00, $03, Snd_Boss1_Loop04
	dc.b	dKickS3, $06, dSnareS3, nRst, dKickS3, dSnareS3, nRst, dKickS3, dKickS3, dElectricHighTom, dElectricHighTom, dElectricMidTom
	dc.b	dElectricMidTom, dElectricLowTom, dElectricFloorTom, dElectricFloorTom, dElectricFloorTom
	smpsJump            Snd_Boss1_Jump00

Snd_Boss1_Voices:
;	Voice $00
;	$3C
;	$74, $34, $32, $72, 	$10, $17, $10, $16, 	$06, $05, $06, $05
;	$01, $02, $01, $02, 	$4F, $2F, $2F, $2F, 	$1C, $80, $1D, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $03, $07
	smpsVcCoarseFreq    $02, $02, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $16, $10, $17, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $06, $05, $06
	smpsVcDecayRate2    $02, $01, $02, $01
	smpsVcDecayLevel    $02, $02, $02, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1D, $00, $1C

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
;	$16
;	$7A, $76, $3C, $32, 	$1F, $1F, $1F, $1F, 	$03, $07, $08, $04
;	$07, $0A, $07, $05, 	$2F, $AF, $AF, $5F, 	$14, $85, $8A, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $02, $0C, $06, $0A
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $08, $07, $03
	smpsVcDecayRate2    $05, $07, $0A, $07
	smpsVcDecayLevel    $05, $0A, $0A, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $0A, $05, $14

;	Voice $03
;	$3B
;	$41, $12, $16, $74, 	$1F, $12, $1F, $1F, 	$04, $02, $04, $0A
;	$01, $01, $02, $02, 	$1F, $1F, $1F, $1F, 	$1C, $17, $18, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $01, $01, $04
	smpsVcCoarseFreq    $04, $06, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $04, $02, $04
	smpsVcDecayRate2    $02, $02, $01, $01
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $18, $17, $1C

;	Voice $04
;	$38
;	$02, $02, $12, $02, 	$18, $1A, $1A, $1E, 	$06, $06, $06, $03
;	$02, $02, $02, $03, 	$5F, $5F, $3F, $3F, 	$19, $26, $22, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1E, $1A, $1A, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $06, $06, $06
	smpsVcDecayRate2    $03, $02, $02, $02
	smpsVcDecayLevel    $03, $03, $05, $05
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $22, $26, $19

; Unused voice
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
	smpsVcTotalLevel    $80, $8A, $85, $14

