Electoria_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Electoria_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $19

	smpsHeaderDAC       Electoria_DAC
	smpsHeaderFM        Electoria_FM1,	$00, $0B
	smpsHeaderFM        Electoria_FM2,	$00, $14
	smpsHeaderFM        Electoria_FM3,	$00, $14
	smpsHeaderFM        Electoria_FM4,	$00, $14
	smpsHeaderFM        Electoria_FM5,	$00, $14
	smpsHeaderFM        Electoria_FM6,	$00, $14
	smpsHeaderPSG       Electoria_PSG1,	$00, $03, $00, KCVolEnv_0C
	smpsHeaderPSG       Electoria_PSG2,	$F4, $03, $00, KCVolEnv_0C
	smpsHeaderPSG       Electoria_PSG3,	$23, $02, $00, KCVolEnv_02
	smpsHeaderPWM       Electoria_PWM1,	$00, $AA
	smpsHeaderPWM       Electoria_PWM2,	$00, $BB
	smpsHeaderPWM       Electoria_PWM3,	$00, $99
	smpsHeaderPWM       Electoria_PWM4,	$00, $65

; Dummy DAC data
Electoria_DAC:
	smpsStop

; FM1 Data
Electoria_FM1:
	smpsSetvoice        $00
	dc.b	nD1, $06, nD2, nD2, nE1, nE2, nE2, nE1, nE2, nE2, nG1, nG2
	dc.b	nG2, nA1, nA2, nD1, $0C

Electoria_Loop25:
	smpsCall            Electoria_Call0C
	smpsLoop            $00, $08, Electoria_Loop25

Electoria_Loop26:
	smpsCall            Electoria_Call0C
	smpsLoop            $00, $08, Electoria_Loop26
	smpsChangeTransposition $FC

Electoria_Loop27:
	smpsCall            Electoria_Call0C
	smpsLoop            $00, $07, Electoria_Loop27
	smpsChangeTransposition $04
	dc.b	nEb1, $0C, nEb2, $06, nRst, nEb1, nRst, nEb2, nEb1, nRst, nRst, nEb2
	dc.b	nRst
	smpsModSet          $01, $08, $EC, $00
	dc.b	nEb1, $18
	smpsModSet          $00, $00, $00, $00

Electoria_Loop28:
	smpsCall            Electoria_Call0C
	smpsLoop            $00, $07, Electoria_Loop28
	dc.b	nD1, $0C, nD2, nE1, nE2, nF1, $06, nF2, nF1, nRst, nD1, nD2
	dc.b	nD1, nRst

Electoria_Loop29:
	smpsCall            Electoria_Call0C
	smpsLoop            $00, $08, Electoria_Loop29

Electoria_Loop2A:
	smpsCall            Electoria_Call0C
	smpsLoop            $00, $08, Electoria_Loop2A
	smpsJump            Electoria_Loop26

Electoria_Call0C:
	dc.b	nG1, $0C, nG2, $06, nRst, nG1, $0C, nRst, $06, nG1, nRst, nG1
	dc.b	nG1, $0C, nF1, nFs1
	smpsReturn

; FM2 Data
Electoria_FM2:
	smpsSetvoice        $03
	dc.b	nRst, $60

Electoria_Loop23:
	smpsCall            Electoria_Call07
	smpsChangeTransposition $01
	smpsCall            Electoria_Call07
	smpsChangeTransposition $FF
	smpsLoop            $00, $03, Electoria_Loop23
	smpsCall            Electoria_Call07
	smpsChangeTransposition $01
	dc.b	nRst, $0C, nB3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsChangeTransposition $FF
	smpsFMAlterVol      $FA
	smpsSetvoice        $05
	smpsFMAlterVol      $FB
	dc.b	nBb4, $0C

Electoria_Jump02:
	dc.b	smpsNoAttack, $0C, nF4, nRst, nG4, $18, nBb4, $0C, nC5, nD5, smpsNoAttack, $0C
	dc.b	nF5, $18, nC5, nCs5, $0C, nC5, nBb4, nF4, $12, nG4, $4E
	smpsPan             panLeft, $00
	smpsSetvoice        $02
	smpsFMAlterVol      $0A
	smpsCall            Electoria_Call09
	smpsPan             panCenter, $00
	smpsSetvoice        $05
	smpsFMAlterVol      $F6
	dc.b	nBb4, $0C, smpsNoAttack, $0C, nF4, nRst, nG4, $18, nBb4, $0C, nC5, nF5
	dc.b	smpsNoAttack, $0C, nG5, nG5, nE5, $18, nEb5, $0C, nD5, nCs5, nBb4, $12
	dc.b	nG4, $4E
	smpsPan             panLeft, $00
	smpsSetvoice        $02
	smpsFMAlterVol      $0A
	smpsCall            Electoria_Call0A
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsFMAlterVol      $F6
	dc.b	nRst, $18, nBb3, $30, nC4, $18, nD4, $18, nF4, $30, nG4, $18
	dc.b	nBb4, $24, nG4, nA4, $18, smpsNoAttack, $30, nG4, $18, nD4, nRst, $18
	dc.b	nBb3, $30, nG3, $18, nA3, nBb3, nC4, nD4, nF4, $60
	smpsSetvoice        $02
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nC5, $06, nBb4, nG4, nFs4, nF4, nEb4, nD4, nBb3, nRst, $30
	smpsPan             panCenter, $00
	dc.b	nRst, $0C, nG4, nG5, $18, nF5, nD5, $12, nG4, $06, smpsNoAttack, $0C
	dc.b	nG5, $0C, nF5, nD5, nB4, $12, nC5, nD5, $0C, nRst, $0C, nG4
	dc.b	nG5, $18, nF5, nD5, $12, nB4, $06, smpsNoAttack, $0C, nC5, nB4, nC5
	dc.b	nF5, $06, nE5, $0C, nD5, $06, nRst, $0C, nD5, smpsNoAttack, $0C, nD5
	dc.b	nD5, nB4, nD5, $12, nE5, $06, nRst, $0C, nD5, $0C, smpsNoAttack, $0C
	dc.b	nB4, nD5, nB4, nD5, $12, nE5, $06, nRst, $0C, nF5, smpsNoAttack, $60
	smpsPan             panLeft, $00
	smpsCall            Electoria_Call0A
	smpsPan             panCenter, $00
	dc.b	nRst, $0C, nG4, nG5, $18, nF5, nD5, $12, nG4, $06, smpsNoAttack, $0C
	dc.b	nG5, $0C, nF5, nD5, nB4, $12, nC5, nD5, $0C, nRst, $0C, nG4
	dc.b	nG5, $18, nF5, nD5, $12, nB4, $06, smpsNoAttack, $0C, nC5, nB4, nC5
	dc.b	nF5, $06, nE5, $0C, nD5, $06, nRst, $0C, nD5, smpsNoAttack, $0C, nD5
	dc.b	nD5, nB4, nD5, $12, nE5, $06, nRst, $0C, nD5, $0C, smpsNoAttack, $0C
	dc.b	nB4, nD5, nB4, nD5, $12, nE5, $06, nRst, $0C, nF5, smpsNoAttack, $60
	smpsPan             panLeft, $00
	smpsCall            Electoria_Call0B
	dc.b	nG4, $0C
	smpsFMAlterVol      $0A
	dc.b	$0C
	smpsFMAlterVol      $F6
	dc.b	nRst, $48
	smpsPan             panCenter, $00
	smpsFMAlterVol      $01
	smpsSetvoice        $03
	dc.b	nG2, $60, $60, $30, nRst

Electoria_Loop24:
	dc.b	nG2, $60
	smpsLoop            $00, $03, Electoria_Loop24
	dc.b	nG2, $54
	smpsSetvoice        $05
	smpsFMAlterVol      $F5
	dc.b	nBb4, $0C
	smpsJump            Electoria_Jump02

Electoria_Call07:
	dc.b	nRst, $0C, nB3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsReturn

Electoria_Call09:
	dc.b	nC5, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nB4, $12, nC5, $06, nA4, nG4
	smpsFMAlterVol      $0A
	dc.b	nG4
	smpsFMAlterVol      $F6
	dc.b	nG4, $12
	smpsReturn

Electoria_Call0A:
	dc.b	nG4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nFs4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nE4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nFs4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsReturn

Electoria_Call0B:
	dc.b	nG3, $0C, nG4, nFs4, nFs3, $06, nF3, $0C, $06, nF4, $0C, nE4
	dc.b	nF4
	smpsReturn

; FM3 Data
Electoria_FM3:
	smpsSetvoice        $03
	dc.b	nRst, $60
	smpsChangeTransposition $FA

Electoria_Loop20:
	smpsCall            Electoria_Call07
	smpsLoop            $00, $07, Electoria_Loop20
	dc.b	nRst, $0C, nB3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsChangeTransposition $06
	smpsFMAlterVol      $FC
	smpsSetvoice        $05
	smpsPan             panLeft, $00
	smpsModSet          $01, $01, $02, $03
	dc.b	nRst, $06, nBb4, $0C

Electoria_Jump01:
	dc.b	smpsNoAttack, $0C, nF4, nRst, nG4, $18, nBb4, $0C, nC5, nD5, smpsNoAttack, $0C
	dc.b	nF5, $18, nC5, nCs5, $0C, nC5, nBb4, nF4, $12, nG4, $48
	smpsSetvoice        $02
	smpsFMAlterVol      $03
	smpsModSet          $00, $00, $00, $00
	smpsPan             panRight, $00
	smpsChangeTransposition $F4
	smpsCall            Electoria_Call09
	smpsModSet          $01, $01, $01, $05
	smpsPan             panLeft, $00
	smpsChangeTransposition $0C
	smpsSetvoice        $05
	smpsFMAlterVol      $FD
	dc.b	nRst, $06, nBb4, $0C, smpsNoAttack, $0C, nF4, nRst, nG4, $18, nBb4, $0C
	dc.b	nC5, nF5, smpsNoAttack, $0C, nG5, nG5, nE5, $18, nEb5, $0C, nD5, nCs5
	dc.b	nBb4, $12, nG4, $48
	smpsModSet          $00, $00, $00, $00
	smpsPan             panRight, $00
	smpsChangeTransposition $F4
	smpsSetvoice        $02
	smpsFMAlterVol      $03
	smpsCall            Electoria_Call0A
	smpsPan             panLeft, $00
	smpsSetvoice        $01
	smpsFMAlterVol      $FD
	smpsModSet          $01, $01, $02, $03
	smpsChangeTransposition $0C
	dc.b	nRst, $06, nRst, $18, nBb3, $30, nC4, $18, nD4, $18, nF4, $30
	dc.b	nG4, $18, nBb4, $24, nG4, nA4, $18, smpsNoAttack, $30, nG4, $18, nD4
	dc.b	nRst, $18, nBb3, $30, nG3, $18, nA3, nBb3, nC4, nD4, nF4, $5A
	smpsModSet          $00, $00, $00, $00
	smpsChangeTransposition $F4
	smpsSetvoice        $02
	smpsFMAlterVol      $03
	smpsPan             panRight, $00
	dc.b	nC5, $06, nBb4, nG4, nFs4, nF4, nEb4, nD4, nBb3, nRst, $30
	smpsChangeTransposition $0C
	smpsSetvoice        $02
	smpsFMAlterVol      $07
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $04, $05
	smpsPan             panLeft, $00
	dc.b	nRst, $06, nRst, $0C, nG4, nG5, $18, nF5, nD5, $12, nG4, $06
	dc.b	smpsNoAttack, $0C, nG5, $0C, nF5, nD5, nB4, $12, nC5, nD5, $0C, nRst
	dc.b	$0C, nG4, nG5, $18, nF5, nD5, $12, nB4, $06, smpsNoAttack, $0C, nC5
	dc.b	nB4, nC5, nF5, $06, nE5, $0C, nD5, $06, nRst, $0C, nD5, smpsNoAttack
	dc.b	$0C, nD5, nD5, nB4, nD5, $12, nE5, $06, nRst, $0C, nD5, $0C
	dc.b	smpsNoAttack, $0C, nB4, nD5, nB4, nD5, $12, nE5, $06, nRst, $0C, nF5
	dc.b	smpsNoAttack, $5A
	smpsPan             panRight, $00
	smpsChangeTransposition $F4
	smpsModSet          $00, $00, $00, $00
	smpsFMAlterVol      $F9
	smpsCall            Electoria_Call0A
	smpsPan             panCenter, $00
	smpsChangeTransposition $0C
	smpsFMAlterVol      $07
	smpsModSet          $01, $01, $04, $05
	smpsPan             panLeft, $00
	dc.b	nRst, $06, nRst, $0C, nG4, nG5, $18, nF5, nD5, $12, nG4, $06
	dc.b	smpsNoAttack, $0C, nG5, $0C, nF5, nD5, nB4, $12, nC5, nD5, $0C, nRst
	dc.b	$0C, nG4, nG5, $18, nF5, nD5, $12, nB4, $06, smpsNoAttack, $0C, nC5
	dc.b	nB4, nC5, nF5, $06, nE5, $0C, nD5, $06, nRst, $0C, nD5, smpsNoAttack
	dc.b	$0C, nD5, nD5, nB4, nD5, $12, nE5, $06, nRst, $0C, nD5, $0C
	dc.b	smpsNoAttack, $0C, nB4, nD5, nB4, nD5, $12, nE5, $06, nRst, $0C, nF5
	dc.b	smpsNoAttack, $5A
	smpsPan             panRight, $00
	smpsChangeTransposition $F4
	smpsModSet          $00, $00, $00, $00
	smpsFMAlterVol      $F9
	smpsCall            Electoria_Call0B
	dc.b	nG4, $0C
	smpsFMAlterVol      $0A
	dc.b	$0C
	smpsFMAlterVol      $F6
	dc.b	nRst, $48
	smpsPan             panCenter, $00
	smpsFMAlterVol      $01
	smpsSetvoice        $03
	smpsChangeTransposition $03

Electoria_Loop21:
	smpsCall            Electoria_Call07
	smpsLoop            $00, $02, Electoria_Loop21
	smpsChangeTransposition $FF
	smpsCall            Electoria_Call08
	smpsChangeTransposition $01

Electoria_Loop22:
	smpsCall            Electoria_Call07
	smpsLoop            $00, $03, Electoria_Loop22
	smpsFMAlterVol      $FF
	dc.b	nRst, $0C, nB3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsChangeTransposition $09
	smpsFMAlterVol      $FD
	smpsSetvoice        $05
	smpsPan             panLeft, $00
	smpsModSet          $01, $01, $02, $03
	dc.b	nRst, $06, nBb4, $0C
	smpsJump            Electoria_Jump01

; FM4 Data
Electoria_FM4:
	smpsSetvoice        $03
	dc.b	nRst, $60
	smpsChangeTransposition $F7

Electoria_Loop1A:
	smpsCall            Electoria_Call07
	smpsLoop            $00, $08, Electoria_Loop1A
	smpsChangeTransposition $09

Electoria_Loop1B:
	smpsCall            Electoria_Call07
	smpsChangeTransposition $01
	smpsCall            Electoria_Call07
	smpsChangeTransposition $FF
	smpsLoop            $00, $04, Electoria_Loop1B

Electoria_Loop1C:
	smpsChangeTransposition $FF
	smpsCall            Electoria_Call07
	smpsChangeTransposition $02
	smpsCall            Electoria_Call07
	smpsChangeTransposition $FF
	smpsLoop            $00, $03, Electoria_Loop1C
	smpsChangeTransposition $FF
	smpsCall            Electoria_Call07
	smpsChangeTransposition $01
	smpsCall            Electoria_Call08

Electoria_Loop1D:
	smpsCall            Electoria_Call07
	smpsChangeTransposition $01
	smpsCall            Electoria_Call07
	smpsChangeTransposition $FF
	smpsLoop            $00, $03, Electoria_Loop1D
	smpsCall            Electoria_Call07
	dc.b	nRst, $60

Electoria_Loop1E:
	smpsCall            Electoria_Call07
	smpsChangeTransposition $01
	smpsCall            Electoria_Call07
	smpsChangeTransposition $FF
	smpsLoop            $00, $05, Electoria_Loop1E
	smpsCall            Electoria_Call07
	smpsCall            Electoria_Call08

Electoria_Loop1F:
	smpsCall            Electoria_Call07
	smpsChangeTransposition $01
	smpsCall            Electoria_Call07
	smpsChangeTransposition $FF
	smpsLoop            $00, $02, Electoria_Loop1F
	smpsJump            Electoria_Loop1B

Electoria_Call08:
	dc.b	nRst, $0C, nC4, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C, $06, nRst, $30
	smpsReturn

; FM5 Data
Electoria_FM5:
	smpsSetvoice        $03
	dc.b	nRst, $60

Electoria_Loop14:
	dc.b	nG2, $60
	smpsLoop            $00, $08, Electoria_Loop14
	smpsChangeTransposition $FA

Electoria_Loop15:
	smpsCall            Electoria_Call07
	smpsLoop            $00, $08, Electoria_Loop15
	smpsChangeTransposition $06

Electoria_Loop16:
	smpsChangeTransposition $FC
	smpsCall            Electoria_Call07
	smpsChangeTransposition $02
	smpsCall            Electoria_Call07
	smpsChangeTransposition $02
	smpsLoop            $00, $03, Electoria_Loop16
	smpsChangeTransposition $FC
	smpsCall            Electoria_Call07
	smpsChangeTransposition $01
	smpsCall            Electoria_Call08
	smpsChangeTransposition $03
	smpsChangeTransposition $FA

Electoria_Loop17:
	smpsCall            Electoria_Call07
	smpsLoop            $00, $07, Electoria_Loop17
	dc.b	nRst, $60

Electoria_Loop18:
	smpsCall            Electoria_Call07
	smpsLoop            $00, $0B, Electoria_Loop18
	smpsChangeTransposition $FF
	smpsCall            Electoria_Call08
	smpsChangeTransposition $01

Electoria_Loop19:
	smpsCall            Electoria_Call07
	smpsLoop            $00, $04, Electoria_Loop19
	smpsJump            Electoria_Loop15

; FM6 Data
Electoria_FM6:
	smpsSetvoice        $03

Electoria_Loop0D:
	dc.b	nRst, $60
	smpsLoop            $00, $09, Electoria_Loop0D

Electoria_Loop0E:
	smpsCall            Electoria_Call05
	smpsLoop            $00, $08, Electoria_Loop0E
	smpsChangeTransposition $03

Electoria_Loop0F:
	smpsCall            Electoria_Call05
	smpsLoop            $00, $07, Electoria_Loop0F
	smpsChangeTransposition $FD
	smpsCall            Electoria_Call06

Electoria_Loop10:
	smpsCall            Electoria_Call05
	smpsLoop            $00, $07, Electoria_Loop10
	dc.b	nRst, $60

Electoria_Loop11:
	smpsCall            Electoria_Call05
	smpsLoop            $00, $08, Electoria_Loop11

Electoria_Loop12:
	smpsCall            Electoria_Call05
	smpsLoop            $00, $03, Electoria_Loop12
	smpsChangeTransposition $FD
	smpsCall            Electoria_Call06
	smpsChangeTransposition $03

Electoria_Loop13:
	smpsCall            Electoria_Call05
	smpsLoop            $00, $04, Electoria_Loop13
	smpsJump            Electoria_Loop0E

Electoria_Call05:
	dc.b	nRst, $0C, nD3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsReturn

Electoria_Call06:
	dc.b	nRst, $0C, nF3, $0C
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$0C, $06, nRst, $30
	smpsReturn

; PSG1 Data
Electoria_PSG1:
	smpsPSGvoice        KCVolEnv_0C
	dc.b	nRst, $60

Electoria_Loop35:
	smpsCall            Electoria_Call12
	smpsLoop            $00, $08, Electoria_Loop35

Electoria_Loop36:
	smpsCall            Electoria_Call12
	smpsLoop            $00, $08, Electoria_Loop36

Electoria_Loop37:
	smpsChangeTransposition $FC
	smpsCall            Electoria_Call12
	smpsChangeTransposition $04
	dc.b	nEb2, $06, nEb2, nEb3, nA2, nEb2, nEb3, nA2, nEb2, nEb3, nA2, nEb2
	dc.b	nEb3, nA2, nEb2, nEb3, nA2
	smpsLoop            $00, $03, Electoria_Loop37
	smpsChangeTransposition $FC
	smpsCall            Electoria_Call12
	smpsChangeTransposition $04
	dc.b	nEb2, $06, nEb2, nEb3, nA2, nEb2, nEb3, nA2, nEb2, nRst, $30

Electoria_Loop38:
	smpsCall            Electoria_Call12
	smpsLoop            $00, $07, Electoria_Loop38
	dc.b	nRst, $60

Electoria_Loop39:
	smpsCall            Electoria_Call12
	smpsLoop            $00, $08, Electoria_Loop39

Electoria_Loop3A:
	smpsCall            Electoria_Call12
	smpsLoop            $00, $03, Electoria_Loop3A
	dc.b	nG2, $06, nG2, nG3, nD3, nG2, nG3, nD3, nG2, nRst, $30

Electoria_Loop3B:
	smpsCall            Electoria_Call12
	smpsLoop            $00, $04, Electoria_Loop3B
	smpsJump            Electoria_Loop36

Electoria_Call12:
	dc.b	nG2, $06, nG2, nG3, nD3, nG2, nG3, nD3, nG2, nG3, nD3, nG2
	dc.b	nG3, nD3, nG2, nG3, nD3
	smpsReturn

; PSG2 Data
Electoria_PSG2:
	smpsPSGvoice        KCVolEnv_0C
	dc.b	nRst, $60
	smpsChangeTransposition $0C

Electoria_Loop2F:
	smpsCall            Electoria_Call0F
	smpsCall            Electoria_Call10
	smpsLoop            $00, $04, Electoria_Loop2F

Electoria_Loop30:
	smpsCall            Electoria_Call0F
	smpsCall            Electoria_Call10
	smpsLoop            $00, $04, Electoria_Loop30

Electoria_Loop31:
	smpsCall            Electoria_Call11
	smpsCall            Electoria_Call10
	smpsLoop            $00, $03, Electoria_Loop31
	smpsCall            Electoria_Call11
	dc.b	nF3, $06, nG3, nRst, nC4, nRst, nRst, nF3, nG3, nRst, $30

Electoria_Loop32:
	smpsCall            Electoria_Call0F
	smpsCall            Electoria_Call10
	smpsLoop            $00, $03, Electoria_Loop32
	smpsCall            Electoria_Call0F
	dc.b	nRst, $60

Electoria_Loop33:
	smpsCall            Electoria_Call0F
	smpsCall            Electoria_Call10
	smpsLoop            $00, $04, Electoria_Loop33
	smpsCall            Electoria_Call0F
	smpsCall            Electoria_Call10
	smpsCall            Electoria_Call0F
	dc.b	nF3, $06, nG3, nRst, nC4, nRst, nRst, nF3, nG3, nRst, $30

Electoria_Loop34:
	smpsCall            Electoria_Call0F
	smpsCall            Electoria_Call10
	smpsLoop            $00, $02, Electoria_Loop34
	smpsJump            Electoria_Loop30

Electoria_Call0F:
	dc.b	nF3, $06, nG3, nRst, nB3, nRst, nRst, nF3, nG3, nRst, nB3, nRst
	dc.b	nF3, nG3, nRst, nB3, nRst
	smpsReturn

Electoria_Call10:
	dc.b	nF3, $06, nG3, nRst, nC4, nRst, nRst, nF3, nG3, nRst, nC4, nRst
	dc.b	nF3, nG3, nRst, nC4, nRst
	smpsReturn

Electoria_Call11:
	dc.b	nF3, $06, nG3, nRst, nBb3, nRst, nRst, nF3, nG3, nRst, nBb3, nRst
	dc.b	nF3, nG3, nRst, nBb3, nRst
	smpsReturn

; PSG3 Data
Electoria_PSG3:
	smpsPSGform         $E7

Electoria_Loop2B:
	smpsCall            Electoria_Call0D
	smpsLoop            $01, $09, Electoria_Loop2B

Electoria_Loop2C:
	smpsCall            Electoria_Call0D
	smpsLoop            $01, $0F, Electoria_Loop2C
	smpsCall            Electoria_Call0E

Electoria_Loop2D:
	smpsCall            Electoria_Call0D
	smpsLoop            $01, $13, Electoria_Loop2D
	smpsCall            Electoria_Call0E

Electoria_Loop2E:
	smpsCall            Electoria_Call0D
	smpsLoop            $01, $04, Electoria_Loop2E
	smpsJump            Electoria_Loop2C

Electoria_Call0D:
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGvoice        KCVolEnv_05
	dc.b	(nMaxPSG2-$23)&$FF
	smpsLoop            $00, $04, Electoria_Call0D
	smpsReturn

Electoria_Call0E:
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGvoice        KCVolEnv_05
	dc.b	$0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	$0C
	smpsPSGvoice        KCVolEnv_05
	dc.b	$06
	smpsPSGvoice        KCVolEnv_02
	dc.b	$06, nRst, $30
	smpsReturn

; PWM1 Data
Electoria_PWM1:
	smpsCall            Electoria_Call03
	smpsLoop            $00, $08, Electoria_PWM1
	smpsCall            Electoria_Call04

Electoria_Loop08:
	smpsCall            Electoria_Call03
	smpsLoop            $00, $07, Electoria_Loop08
	dc.b	nRst, $60

Electoria_Loop09:
	smpsCall            Electoria_Call03
	smpsLoop            $00, $07, Electoria_Loop09
	dc.b	pwmAcousticKick, $2A, $06, pwmSilence, $30

Electoria_Loop0A:
	smpsCall            Electoria_Call03
	smpsLoop            $00, $07, Electoria_Loop0A
	smpsCall            Electoria_Call04

Electoria_Loop0B:
	smpsCall            Electoria_Call03
	smpsLoop            $00, $07, Electoria_Loop0B
	dc.b	nRst, $60

Electoria_Loop0C:
	smpsCall            Electoria_Call03
	smpsLoop            $00, $03, Electoria_Loop0C
	dc.b	pwmAcousticKick, $2A, $06, pwmSilence, $30
	smpsCall            Electoria_Call03
	smpsCall            Electoria_Call03
	smpsCall            Electoria_Call03
	smpsCall            Electoria_Call04
	smpsJump            Electoria_Loop08

Electoria_Call03:
	dc.b	pwmAcousticKick, $0C, pwmAcousticKick, nRst, $12, pwmAcousticKick, $06, nRst, $0C, pwmAcousticKick, nRst, $18
	smpsReturn

Electoria_Call04:
	smpsFMAlterVol      $8D
	dc.b	pwmLowTom, $0C, $0C, $0C, $06, $06, nRst, pwmLowTom, pwmLowTom, $0C, $0C, $0C
	smpsFMAlterVol      $73
	smpsReturn

; PWM2 Data
Electoria_PWM2:
	dc.b	pwmElectricSnare, $06, nRst, pwmElectricSnare, pwmElectricSnare, nRst, pwmElectricSnare, pwmElectricSnare
	smpsFMAlterVol      $90
	dc.b	pwmLowTom
	smpsFMAlterVol      $70
	dc.b	pwmElectricSnare
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom
	smpsFMAlterVol      $07
	dc.b	pwmMidTom, pwmElectricSnare, pwmElectricSnare, pwmMidTom
	smpsFMAlterVol      $90
	dc.b	pwmLowTom
	smpsFMAlterVol      $70
	dc.b	pwmElectricSnare

Electoria_Loop04:
	smpsCall            Electoria_Call02
	smpsLoop            $00, $04, Electoria_Loop04

Electoria_Loop05:
	smpsCall            Electoria_Call02
	smpsLoop            $00, $04, Electoria_Loop05

Electoria_Loop06:
	smpsCall            Electoria_Call02
	smpsLoop            $00, $03, Electoria_Loop06
	dc.b	nRst, $18, pwmElectricSnare, $12, $06, nRst, $06, pwmElectricSnare, $12, $18, pwmElectricSnare, $04
	dc.b	$04, $04, $06, $06, $06, $06, $06, $06, nRst, $30

Electoria_Loop07:
	smpsCall            Electoria_Call02
	smpsLoop            $00, $08, Electoria_Loop07
	smpsCall            Electoria_Call02
	dc.b	nRst, $18, pwmElectricSnare, $12, $06, nRst, $06, pwmElectricSnare, $12, $18, nRst, $06
	dc.b	pwmElectricSnare, $12, $18, nRst, $30
	smpsCall            Electoria_Call02
	smpsCall            Electoria_Call02
	smpsJump            Electoria_Loop05

Electoria_Call02:
	dc.b	nRst, $18, pwmElectricSnare, $12, $06, nRst, $06, pwmElectricSnare, $12, $18, nRst, $06
	dc.b	pwmElectricSnare, $12, $18, nRst, $06, pwmElectricSnare, $12, $18
	smpsReturn

; PWM3 Data
Electoria_PWM3:
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $2A
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pwmSplashCymbal, $36
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $FC
	dc.b	pwmSplashCymbal, $60
	smpsFMAlterVol      $04
	dc.b	nRst, nRst
	smpsCall            Electoria_Call01

Electoria_Jump00:
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $FC
	dc.b	pwmSplashCymbal, $60
	smpsFMAlterVol      $04
	dc.b	nRst
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $60
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pwmSplashCymbal, $60
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst
	smpsCall            Electoria_Call01
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst

Electoria_Loop03:
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsLoop            $00, $02, Electoria_Loop03
	smpsJump            Electoria_Jump00

Electoria_Call01:
	smpsFMAlterVol      $DB
	dc.b	pwmMidTom, $0C, $0C, $0C, $06, $06, nRst, pwmMidTom, pwmMidTom, $0C, $0C, $0C
	smpsFMAlterVol      $25
	smpsReturn

; PWM4 Data
Electoria_PWM4:
	smpsCall            Electoria_Call00
	smpsLoop            $00, $24, Electoria_PWM4

Electoria_Loop00:
	smpsCall            Electoria_Call00
	smpsLoop            $00, $3E, Electoria_Loop00
	dc.b	pwmSilence, $30

Electoria_Loop01:
	smpsCall            Electoria_Call00
	smpsLoop            $00, $4E, Electoria_Loop01
	dc.b	pwmSilence, $30

Electoria_Loop02:
	smpsCall            Electoria_Call00
	smpsLoop            $00, $10, Electoria_Loop02
	smpsJump            Electoria_Loop00

Electoria_Call00:
	dc.b	pwmElectricHiHat, $06
	smpsFMAlterVol      $AB
	dc.b	$06
	smpsFMAlterVol      $44
	dc.b	$06
	smpsFMAlterVol      $BC
	dc.b	$06
	smpsFMAlterVol      $55
	smpsReturn

Electoria_Voices:
;	Voice $00
;	$3B
;	$12, $11, $13, $01, 	$1F, $1F, $1F, $1E, 	$02, $0C, $13, $07
;	$12, $0A, $05, $07, 	$0F, $3F, $5F, $3F, 	$16, $10, $15, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $01, $01
	smpsVcCoarseFreq    $01, $03, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1E, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $13, $0C, $02
	smpsVcDecayRate2    $07, $05, $0A, $12
	smpsVcDecayLevel    $03, $05, $03, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $15, $10, $16

;	Voice $01
;	$3C
;	$01, $02, $0F, $04, 	$8D, $52, $9F, $1F, 	$09, $00, $00, $0D
;	$00, $00, $00, $00, 	$2F, $0F, $0F, $FF, 	$17, $86, $1F, $86
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $0F, $02, $01
	smpsVcRateScale     $00, $02, $01, $02
	smpsVcAttackRate    $1F, $1F, $12, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $00, $00, $09
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $00, $00, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $06, $1F, $06, $17

;	Voice $02
;	$2C
;	$22, $04, $02, $14, 	$51, $52, $50, $52, 	$0D, $00, $06, $04
;	$03, $05, $02, $00, 	$16, $18, $26, $18, 	$0F, $80, $12, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $02
	smpsVcCoarseFreq    $04, $02, $04, $02
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $12, $10, $12, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $06, $00, $0D
	smpsVcDecayRate2    $00, $02, $05, $03
	smpsVcDecayLevel    $01, $02, $01, $01
	smpsVcReleaseRate   $08, $06, $08, $06
	smpsVcTotalLevel    $00, $12, $00, $0F

;	Voice $03
;	$41
;	$18, $12, $02, $12, 	$5F, $5F, $5F, $5F, 	$0C, $0B, $0B, $0B
;	$09, $08, $10, $0A, 	$AF, $FF, $FF, $FF, 	$1D, $23, $1B, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $00
	smpsVcUnusedBits    $01
	smpsVcDetune        $01, $00, $01, $01
	smpsVcCoarseFreq    $02, $02, $02, $08
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $0B, $0B, $0C
	smpsVcDecayRate2    $0A, $10, $08, $09
	smpsVcDecayLevel    $0F, $0F, $0F, $0A
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1B, $23, $1D

;	Voice $04
;	$3C
;	$07, $01, $08, $04, 	$5F, $9F, $9F, $5F, 	$16, $1F, $16, $1F
;	$09, $0F, $16, $11, 	$6F, $0F, $AF, $0F, 	$16, $80, $11, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $08, $01, $07
	smpsVcRateScale     $01, $02, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $16, $1F, $16
	smpsVcDecayRate2    $11, $16, $0F, $09
	smpsVcDecayLevel    $00, $0A, $00, $06
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $11, $00, $16

;	Voice $05
;	$3C
;	$12, $12, $21, $61, 	$3F, $1F, $1F, $1E, 	$0B, $0A, $0A, $02
;	$09, $01, $01, $01, 	$2F, $3F, $5F, $3F, 	$12, $82, $13, $85
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $02, $01, $01
	smpsVcCoarseFreq    $01, $01, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1E, $1F, $1F, $3F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $0A, $0A, $0B
	smpsVcDecayRate2    $01, $01, $01, $09
	smpsVcDecayLevel    $03, $05, $03, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $05, $13, $02, $12

