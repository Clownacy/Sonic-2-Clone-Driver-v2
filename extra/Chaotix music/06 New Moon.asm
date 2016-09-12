NewMoon_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     NewMoon_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $1C

	smpsHeaderDAC       NewMoon_DAC
	smpsHeaderFM        NewMoon_FM1,	$00, $14
	smpsHeaderFM        NewMoon_FM2,	$00, $0E
	smpsHeaderFM        NewMoon_FM3,	$00, $0E
	smpsHeaderFM        NewMoon_FM4,	$00, $14
	smpsHeaderFM        NewMoon_FM5,	$00, $13
	smpsHeaderFM        NewMoon_FM6,	$00, $16
	smpsHeaderPSG       NewMoon_PSG1,	$F4, $02, $00, KCVolEnv_0C
	smpsHeaderPSG       NewMoon_PSG2,	$F4, $02, $00, KCVolEnv_0C
	smpsHeaderPSG       NewMoon_PSG3,	$23, $02, $00, KCVolEnv_02
	smpsHeaderPWM       NewMoon_PWM1,	$00, $AA
	smpsHeaderPWM       NewMoon_PWM2,	$00, $BB
	smpsHeaderPWM       NewMoon_PWM3,	$00, $99
	smpsHeaderPWM       NewMoon_PWM4,	$00, $77

; Dummy DAC data
NewMoon_DAC:
	smpsStop

; FM1 Data
NewMoon_FM1:
	smpsSetvoice        $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $08
	dc.b	nRst, $01, nG4, $06, nFs4, nF4, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3, nBb3, nB3, nC4
	smpsFMAlterVol      $0A
	dc.b	$05
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $F8
	smpsSetvoice        $02
	smpsFMAlterVol      $02
	smpsCall            NewMoon_Call0A
	smpsFMAlterVol      $0A
	smpsCall            NewMoon_Call0A
	smpsFMAlterVol      $F6
	dc.b	nRst, $60
	smpsCall            NewMoon_Call0A
	smpsFMAlterVol      $0A
	smpsCall            NewMoon_Call0A
	smpsFMAlterVol      $F6
	dc.b	nRst, $3C
	smpsFMAlterVol      $FE
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	smpsFMAlterVol      $F8
	dc.b	nF3, $06, nG3, nBb2, nC3, nF2, nG2

NewMoon_Jump06:
	smpsCall            NewMoon_Call0C
	dc.b	nRst, $06, nG1
	smpsCall            NewMoon_Call0C
	dc.b	nRst, $06, nF1, nG1, $06, nF1, nFs1, nG1, nRst, $18, nFs1, $06
	dc.b	nRst, nF2, nFs2, nRst, nC2, nD2, nFs1, nF2, nD2, nEb2, nE2, nRst
	dc.b	$12, nEb2, $06, nRst, nRst, nD3, nEb3, nF2, nG2, nD2, nEb2, nD2
	dc.b	nC2, nCs2, nD2, nRst, $12, nD2, $06, nRst, nRst, nF2, nFs2, nRst
	dc.b	nFs1, nRst, nFs1, nFs1, nE1, nF1, nFs1, nRst, nFs1, nRst, nFs1, nRst
	dc.b	nRst, nF2, nFs2, nRst, nD2, nRst, nD2, nEb2, nC2, nD2, nEb2, nRst
	dc.b	$18, nF2, $06, nRst, nF2, nRst, nRst, nRst, nEb2, nF2, nFs1, nEb1
	dc.b	nF1, nFs1, nRst, $12, nFs2, $06, nRst, nRst, nFs2, nG2, nRst, nG1
	dc.b	nRst, nG1, nC2, nBb1, nB1, nC2, nRst, $12, nF2, $06, nRst, nRst
	dc.b	nBb2, nC3, nRst, nC2, nRst, nC2, nF1, nEb1, nE1, nF1, nRst, nF1
	dc.b	nRst, nF1, nRst, nRst, nEb3, nF3, nBb2, nC3, nEb2, nF2

NewMoon_Loop11:
	smpsCall            NewMoon_Call0C
	dc.b	nRst, $06, nG1
	smpsLoop            $00, $04, NewMoon_Loop11
	smpsSetvoice        $02
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	smpsCall            NewMoon_Call0A
	smpsFMAlterVol      $0A
	smpsCall            NewMoon_Call0A
	smpsFMAlterVol      $F6
	dc.b	nRst, $60
	smpsCall            NewMoon_Call0A
	smpsFMAlterVol      $0A
	smpsCall            NewMoon_Call0A
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	smpsFMAlterVol      $F8
	dc.b	nRst, $06, nF3, nG3, $0C, nC3, $06, nF2, $0C, nF3, $06, nG2
	dc.b	$0C, nG3, $06, nBb2, $0C, nEb2, $06, nBb1, nB1
	smpsSetvoice        $02
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	smpsCall            NewMoon_Call0A
	smpsFMAlterVol      $0A
	smpsCall            NewMoon_Call0A
	smpsFMAlterVol      $F6
	dc.b	nRst, $60
	smpsCall            NewMoon_Call0A
	smpsFMAlterVol      $0A
	smpsCall            NewMoon_Call0A
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	smpsFMAlterVol      $F8
	dc.b	nRst, $3C, nF3, $06, nG3, nBb2, nC3, nF2, nG2
	smpsJump            NewMoon_Jump06

NewMoon_Call0C:
	dc.b	nC2, $06, nG1, nBb1, nC2, nRst, $18, nC2, $06, nRst, nC2, nRst
	dc.b	$1E, nC2, $06, nG1, nBb1, nC2, nRst, $12, nC2, $06, nRst, $0C
	dc.b	nC3, $06, nD3, nRst, nF2, nG2, nEb2, nF2, $06, nC2, nEb2, nF2
	dc.b	nRst, $12, nF2, $06, nRst, $0C, nF3, $06, nG3, nRst, nBb2, nC3
	dc.b	nEb2, nG1, $06, nRst, nG1, nRst, nRst, nG2, nRst, nG1, nG2, nF2
	dc.b	nC2, nD2, nRst, nG1
	smpsReturn

NewMoon_Call0A:
	dc.b	nF4, $0C
	smpsFMAlterVol      $08
	dc.b	$06
	smpsFMAlterVol      $F8
	dc.b	$06
	smpsFMAlterVol      $08
	dc.b	$06
	smpsFMAlterVol      $F8
	dc.b	nRst, $12
	smpsReturn

; FM2 Data
NewMoon_FM2:
	smpsSetvoice        $03
	dc.b	nG4, $06, nFs4, nF4, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3, nBb3, nB3, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panLeft, $00
	smpsFMAlterVol      $F7
	dc.b	nRst, $06, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $4E, nRst, $06, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $4E, nRst, $06, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12, nG4, $06, nFs4, nF4, nE4, nC4, nG3, nBb3, nB3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nC4, nBb3, nB3, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $2A

NewMoon_Jump05:
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	smpsChangeTransposition $0C
	smpsFMAlterVol      $05
	smpsModSet          $05, $01, $02, $04
	dc.b	nRst, $0C, nC4, nF4, nG4, nBb4, $12, nA4, $06, nRst, $0C, nG4
	dc.b	nF4, $12, nG4, $06, nRst, $0C, nEb4, nRst, nD4, nEb4, nF4, smpsNoAttack
	dc.b	$0C
	smpsSetvoice        $03
	smpsPan             panLeft, $00
	smpsChangeTransposition $F4
	smpsFMAlterVol      $FB
	smpsModSet          $00, $00, $00, $00
	dc.b	nF4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nEb4, nD4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb3, nB3, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3, nFs3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4, smpsNoAttack, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	smpsChangeTransposition $0C
	smpsFMAlterVol      $05
	smpsModSet          $05, $01, $02, $04
	dc.b	nRst, $0C, nC4, nF4, nG4, nBb4, $12, nA4, $06, nRst, $0C, nG4
	dc.b	nF4, $12, nG4, $06, nRst, $0C, nEb4, nRst, nD4, nEb4, nBb4, smpsNoAttack
	dc.b	$0C
	smpsSetvoice        $03
	smpsPan             panLeft, $00
	smpsChangeTransposition $F4
	smpsFMAlterVol      $FB
	smpsModSet          $00, $00, $00, $00
	dc.b	nC4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nD4, nEb4, nE4, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nBb3, nB3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4, nEb4, nE4, nF4, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3, nF3, nE3, nEb3, nC3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	smpsChangeTransposition $0C
	smpsFMAlterVol      $05
	smpsModSet          $05, $01, $02, $09
	dc.b	nG4, $18, nA4, $0C, nBb4, nC5, nD5, nBb4, $18, nC5, $30, nA4
	dc.b	$18, nFs4, nEb5, nD5, nFs4, nG4, nFs4, nG4, nBb4, nRst, $18, nEb4
	dc.b	nF4, $0C, nG4, nA4, nBb4, nA4, $18, nFs4, nG4, nA4, nBb4, $24
	dc.b	nC5, $3C
	smpsModSet          $00, $00, $00, $00
	smpsSetvoice        $03
	smpsPan             panLeft, $00
	smpsChangeTransposition $F4
	smpsFMAlterVol      $FB
	dc.b	nRst, $06, nF3, nG3, nBb3, nC4, nEb4, nE4, nF4, nRst, $30
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	smpsChangeTransposition $0C
	smpsFMAlterVol      $05
	smpsModSet          $05, $01, $02, $04
	smpsCall            NewMoon_Call08
	dc.b	nRst, $0C
	smpsSetvoice        $03
	smpsPan             panLeft, $00
	smpsChangeTransposition $F4
	smpsFMAlterVol      $FB
	smpsModSet          $00, $00, $00, $00
	dc.b	nG4, $06, nFs4, nF4, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nRst, $18
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	smpsChangeTransposition $0C
	smpsFMAlterVol      $05
	smpsModSet          $05, $01, $02, $04
	smpsCall            NewMoon_Call08
	dc.b	nRst, $0C
	smpsSetvoice        $03
	smpsPan             panLeft, $00
	smpsChangeTransposition $F4
	smpsFMAlterVol      $FB
	smpsModSet          $00, $00, $00, $00
	dc.b	nG4, $06, nFs4, nF4, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3, nBb3, nB3, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $4E, nRst, $06, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $4E, nRst, $06, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12, nG3, $18, nA3, nBb3, $30, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $4E, nG4, $06, nFs4, nF4, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3, nBb3, nB3, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12, nG4, $06, nFs4, nF4, nE4, nC4, nG3, nBb3, nB3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nC4, nBb3, nB3, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $2A
	smpsJump            NewMoon_Jump05

NewMoon_Call08:
	dc.b	nRst, $0C, nC4, nF4, nG4, nBb4, $12, nG4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nC4, $0C, nF4, $12, nG4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nEb4, $0C, nF4, $12, nG4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nEb4, $0C, nRst, $0C, nC4, nF4, nG4, nBb4, $12, nG4
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nEb4, $0C, nF4, $12, nA4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nBb4, $0C, smpsNoAttack, $0C, nA4, nBb4, $06, nC5, $12, nRst
	dc.b	$0C, nC5, $18, nD5, $0C, nD5, $03, nEb5, $0F, nC5, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nBb4, $0C, nA4, $12, nF4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nG4, $0C, smpsNoAttack, $0C, nAb4, nA4, nBb4, nC5, $12, nEb5
	dc.b	$03, nF5, $3F
	smpsReturn

; FM3 Data
NewMoon_FM3:
	smpsSetvoice        $03
	dc.b	nC4, $06, nB3, nBb3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3, nF3, nFs3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panRight, $00
	smpsFMAlterVol      $F7
	dc.b	nRst, $06, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $4E, nRst, $06, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $4E, nRst, $06, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12, nC4, $06, nB3, nBb3, nG3, nF3, nC3, nEb3, nE3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nG3, nC3, nEb3, nE3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $2A

NewMoon_Jump04:
	smpsSetvoice        $04
	smpsFMAlterVol      $0B
	smpsChangeTransposition $0C
	smpsModSet          $05, $01, $02, $04
	dc.b	nRst, $0C, nRst, $0C, nC4, nF4, nG4, nBb4, $12, nA4, $06, nRst
	dc.b	$0C, nG4, nF4, $12, nG4, $06, nRst, $0C, nEb4, nRst, nD4, nEb4
	dc.b	nF4
	smpsSetvoice        $03
	smpsFMAlterVol      $F5
	smpsChangeTransposition $F4
	smpsModSet          $00, $00, $00, $00
	dc.b	nC4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb3, nA3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3, nFs3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb2, nB2, nC3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3, smpsNoAttack, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsSetvoice        $04
	smpsFMAlterVol      $0B
	smpsChangeTransposition $0C
	smpsModSet          $05, $01, $02, $04
	dc.b	nRst, $0C, nRst, $0C, nC4, nF4, nG4, nBb4, $12, nA4, $06, nRst
	dc.b	$0C, nG4, nF4, $12, nG4, $06, nRst, $0C, nEb4, nRst, nD4, nEb4
	dc.b	nF4
	smpsSetvoice        $03
	smpsFMAlterVol      $F5
	smpsChangeTransposition $F4
	smpsModSet          $00, $00, $00, $00
	dc.b	nG3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nBb3, nB3, nC4, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nF3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3, nBb3, nB3, nC4, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3, nC3, nB2, nBb2, nG2
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst
	smpsModSet          $05, $01, $02, $09
	smpsSetvoice        $04
	smpsFMAlterVol      $0B
	smpsChangeTransposition $0C
	dc.b	nRst, $0C, nG4, $18, nA4, $0C, nBb4, nC5, nD5, nBb4, $18, nC5
	dc.b	$30, nA4, $18, nFs4, nEb5, nD5, nFs4, nG4, nFs4, nG4, nBb4, nRst
	dc.b	$18, nEb4, nF4, $0C, nG4, nA4, nBb4, nA4, $18, nFs4, nG4, nA4
	dc.b	nBb4, $24, nC5, $30
	smpsModSet          $00, $00, $00, $00
	smpsSetvoice        $03
	smpsFMAlterVol      $F5
	smpsChangeTransposition $F4
	dc.b	nRst, $06, nC3, nD3, nF3, nG3, nBb3, nB3, nC4, nRst, $30
	smpsSetvoice        $04
	smpsFMAlterVol      $0B
	smpsChangeTransposition $0C
	smpsModSet          $05, $01, $02, $04
	dc.b	nRst, $0C
	smpsCall            NewMoon_Call08
	smpsSetvoice        $03
	smpsFMAlterVol      $F5
	smpsChangeTransposition $F4
	smpsModSet          $00, $00, $00, $00
	dc.b	nC4, $06, nB3, nBb3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nRst, $18
	smpsSetvoice        $04
	smpsFMAlterVol      $0B
	smpsChangeTransposition $0C
	smpsModSet          $05, $01, $02, $04
	dc.b	nRst, $0C
	smpsCall            NewMoon_Call08
	smpsSetvoice        $03
	smpsFMAlterVol      $F5
	smpsChangeTransposition $F4
	smpsModSet          $00, $00, $00, $00
	dc.b	nC4, $06, nB3, nBb3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3, nF3, nFs3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $4E, nRst, $06, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $4E, nRst, $06, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12, nC3, $18, nD3, nEb3, $30, nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $4E, nC4, $06, nB3, nBb3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3, nF3, nFs3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12, nC4, $06, nB3, nBb3, nG3, nF3, nC3, nEb3, nE3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nG3, nC3, nEb3, nE3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $2A
	smpsJump            NewMoon_Jump04

; FM4 Data
NewMoon_FM4:
	smpsSetvoice        $03
	dc.b	nRst, $01
	smpsFMAlterVol      $08
	smpsPan             panRight, $00
	dc.b	nC4, $06, nB3, nBb3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3, nF3, nFs3, nG3
	smpsFMAlterVol      $0A
	dc.b	$05
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $FA
	smpsSetvoice        $02
	smpsChangeTransposition $F6

NewMoon_Loop0D:
	smpsCall            NewMoon_Call0A
	smpsFMAlterVol      $0A
	smpsCall            NewMoon_Call0A
	smpsFMAlterVol      $F6
	dc.b	nRst, $60
	smpsLoop            $00, $02, NewMoon_Loop0D
	smpsChangeTransposition $0A

NewMoon_Loop0E:
	smpsCall            NewMoon_Call0B
	smpsLoop            $00, $02, NewMoon_Loop0E
	smpsPan             panCenter, $00
	smpsModSet          $0F, $01, $01, $08
	smpsSetvoice        $05
	dc.b	nD3, $30, nFs3, nBb3, $18, nC4, nBb3, $30, nA3, nC4, smpsNoAttack, $60
	dc.b	nBb3, $30, nA3, smpsNoAttack, $30, nBb3, smpsNoAttack, $60
	smpsModSet          $00, $00, $00, $00
	dc.b	nA3, $1E, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06, nRst, $30
	smpsSetvoice        $02

NewMoon_Loop0F:
	smpsCall            NewMoon_Call0B
	smpsLoop            $00, $04, NewMoon_Loop0F
	smpsChangeTransposition $F6
	smpsPan             panRight, $00

NewMoon_Loop10:
	smpsCall            NewMoon_Call0A
	smpsFMAlterVol      $0A
	smpsCall            NewMoon_Call0A
	smpsFMAlterVol      $F6
	dc.b	nRst, $60
	smpsLoop            $00, $04, NewMoon_Loop10
	smpsChangeTransposition $0A
	smpsJump            NewMoon_Loop0E

NewMoon_Call0B:
	smpsPan             panLeft, $00
	dc.b	nF4, $0C, nC4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF4, $0C, nG4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb4, $12, nG4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nF4, $0C, smpsNoAttack, $0C, nC4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF4, $06, nG4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC5
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG4, smpsNoAttack, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF4, $0C, nC4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF4, $0C, nG4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb4, $12, nG4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nC5, $0C, smpsNoAttack, $0C, nD5, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC5, nG4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panRight, $00
	dc.b	nF4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nBb3, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsReturn

; FM5 Data
NewMoon_FM5:
	dc.b	nRst, $60
	smpsSetvoice        $01

NewMoon_Loop0A:
	smpsCall            NewMoon_Call09
	smpsLoop            $01, $04, NewMoon_Loop0A

NewMoon_Loop0B:
	smpsCall            NewMoon_Call09
	smpsLoop            $01, $08, NewMoon_Loop0B
	dc.b	nG2, $06, nD3, nG2, nD3, nG2, nD3, nG2, nD3, nFs2, nD3, nFs2
	dc.b	nD3, nFs2, nD3, nFs2, nD3, nBb2, nD3, nBb2, nD3, nBb2, nD3, nBb2
	dc.b	nD3, nAb2, nEb2, nAb2, nEb3, nAb2, nEb3, nAb2, nEb3, nA2, nD3, nA2
	dc.b	nD3, nA2, nD3, nA2, nD3, nA2, nC3, nA2, nC3, nA2, nC3, nA2
	dc.b	nC3, nA2, nC3, nA2, nC3, nA2, nC3, nA2, nC3, nA2, nC3, nA2
	dc.b	nC3, nA2, nC3, nA2, nC3, nG2, nD3, nG2, nD3, nG2, nD3, nG2
	dc.b	nD3, nF2, nC3, nF2, nC3, nF2, nC3, nF2, nC3, nFs2, nC3, nFs2
	dc.b	nC3, nFs2, nC3, nFs2, nC3, nG2, nD3, nG2, nD3, nG2, nD3, nG2
	dc.b	nD3, nBb2, nEb3, nBb2, nEb3, nBb2, nEb3, nBb2, nEb3, nBb2, nEb3, nBb2
	dc.b	nEb3, nBb2, nEb3, nBb2, nEb3, nA2, nF3, nA2, nF3, nA2, nF3, nA2
	dc.b	nF3, nRst, $30

NewMoon_Loop0C:
	smpsCall            NewMoon_Call09
	smpsLoop            $01, $18, NewMoon_Loop0C
	smpsJump            NewMoon_Loop0B

NewMoon_Call09:
	dc.b	nC2, $06, nF2, nC2, nG2
	smpsLoop            $00, $04, NewMoon_Call09
	smpsReturn

; FM6 Data
NewMoon_FM6:
	smpsSetvoice        $01
	dc.b	nRst, $60

NewMoon_Loop08:
	smpsCall            NewMoon_Call07
	smpsLoop            $00, $04, NewMoon_Loop08

NewMoon_Jump03:
	smpsSetvoice        $06
	smpsModSet          $01, $01, $03, $06
	dc.b	nRst, $0C, nC4, nF4, nG4, nBb4, $12, nA4, $06, nRst, $0C, nG4
	dc.b	nF4, $12, nG4, $06, nRst, $0C, nEb4, nRst, nD4, nEb4, nF4, smpsNoAttack
	dc.b	$60, nRst, nRst, $0C, nC4, nF4, nG4, nBb4, $12, nA4, $06, nRst
	dc.b	$0C, nG4, nF4, $12, nG4, $06, nRst, $0C, nEb4, nRst, nD4, nEb4
	dc.b	nBb4, smpsNoAttack, $60, nRst, nRst, $18, nG4, nA4, $0C, nBb4, nC5, nD5
	dc.b	nBb4, $18, nC5, $30, nA4, $18, nFs4, nEb5, nD5, nFs4, nG4, nFs4
	dc.b	nG4, nBb4, nRst, $18, nEb4, nF4, $0C, nG4, nA4, nBb4, nA4, $18
	dc.b	nFs4, nG4, nA4, nBb4, $24, nC5, $3C, nRst, $60
	smpsCall            NewMoon_Call08
	dc.b	smpsNoAttack, $0C, smpsNoAttack, $60
	smpsCall            NewMoon_Call08
	dc.b	smpsNoAttack, $0C, smpsNoAttack, $60

NewMoon_Loop09:
	smpsSetvoice        $01
	smpsModSet          $00, $00, $00, $00
	smpsCall            NewMoon_Call07
	smpsLoop            $00, $08, NewMoon_Loop09
	smpsJump            NewMoon_Jump03

NewMoon_Call07:
	smpsFMAlterVol      $03
	smpsDetune          $02
	smpsPan             panLeft, $00
	dc.b	nC3, $06, nF3, nC3, nG3
	smpsPan             panRight, $00
	dc.b	nC3, $06, nF3, nC3, nG3
	smpsPan             panLeft, $00
	dc.b	nC3, $06, nF3, nC3, nG3
	smpsPan             panRight, $00
	dc.b	nC3, $06, nF3, nC3, nG3
	smpsFMAlterVol      $FD
	smpsDetune          $FE
	smpsPan             panCenter, $00
	smpsReturn

; PSG1 Data
NewMoon_PSG1:
	dc.b	nRst, $60
	smpsPSGvoice        KCVolEnv_06

NewMoon_Loop1A:
	smpsCall            NewMoon_Call0F
	smpsPSGAlterVol     $05
	smpsCall            NewMoon_Call0F
	smpsPSGAlterVol     $FB
	dc.b	nRst, $60
	smpsLoop            $00, $02, NewMoon_Loop1A

NewMoon_Loop1B:
	smpsCall            NewMoon_Call10
	smpsLoop            $00, $08, NewMoon_Loop1B
	smpsPSGvoice        KCVolEnv_09
	smpsModSet          $0F, $01, $01, $08
	dc.b	nBb2, $30, nD3, nF3, $18, nG3, nG3, $30, nFs3, nA3, smpsNoAttack, $60
	dc.b	nG3, $30, nF3, smpsNoAttack, $30, nG3, smpsNoAttack, $60
	smpsModSet          $00, $00, $00, $00
	smpsPSGvoice        KCVolEnv_06
	dc.b	nF3, $1E, $06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	$06, nRst, $30

NewMoon_Loop1C:
	smpsCall            NewMoon_Call10
	smpsLoop            $00, $10, NewMoon_Loop1C

NewMoon_Loop1D:
	smpsCall            NewMoon_Call0F
	smpsPSGAlterVol     $05
	smpsCall            NewMoon_Call0F
	smpsPSGAlterVol     $FB
	dc.b	nRst, $60
	smpsLoop            $00, $04, NewMoon_Loop1D
	smpsJump            NewMoon_Loop1B

NewMoon_Call0F:
	dc.b	nBb2, $0C
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nRst, $12
	smpsReturn

NewMoon_Call10:
	dc.b	nF3, $12, $06, nRst, $24, nF3, $06, nRst, $0C, nF3, nRst, $06
	smpsReturn

; PSG2 Data
NewMoon_PSG2:
	dc.b	nRst, $60
	smpsPSGvoice        KCVolEnv_06
	smpsChangeTransposition $02

NewMoon_Loop16:
	smpsCall            NewMoon_Call0F
	smpsPSGAlterVol     $05
	smpsCall            NewMoon_Call0F
	smpsPSGAlterVol     $FB
	dc.b	nRst, $60
	smpsLoop            $00, $02, NewMoon_Loop16
	smpsChangeTransposition $FE
	smpsChangeTransposition $F9

NewMoon_Loop17:
	smpsCall            NewMoon_Call10
	smpsLoop            $00, $08, NewMoon_Loop17
	smpsChangeTransposition $07
	smpsPSGvoice        KCVolEnv_09
	smpsModSet          $0F, $01, $01, $08
	dc.b	nG2, $30, nA2, nD3, $18, nE3, nD3, $30, nE3, nFs3, smpsNoAttack, $60
	dc.b	nD3, $30, nC3, smpsNoAttack, $30, nD3, smpsNoAttack, $60
	smpsModSet          $00, $00, $00, $00
	smpsPSGvoice        KCVolEnv_06
	dc.b	nC3, $1E, $06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	$06, nRst, $30
	smpsChangeTransposition $F9

NewMoon_Loop18:
	smpsCall            NewMoon_Call10
	smpsLoop            $00, $10, NewMoon_Loop18
	smpsChangeTransposition $07
	smpsChangeTransposition $02

NewMoon_Loop19:
	smpsCall            NewMoon_Call0F
	smpsPSGAlterVol     $05
	smpsCall            NewMoon_Call0F
	smpsPSGAlterVol     $FB
	dc.b	nRst, $60
	smpsLoop            $00, $04, NewMoon_Loop19
	smpsChangeTransposition $FE
	smpsChangeTransposition $F9
	smpsJump            NewMoon_Loop17

; PSG3 Data
NewMoon_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $60

NewMoon_Loop12:
	smpsCall            NewMoon_Call0D
	smpsLoop            $01, $04, NewMoon_Loop12

NewMoon_Loop13:
	smpsCall            NewMoon_Call0E
	smpsLoop            $01, $0F, NewMoon_Loop13
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $06, $06
	smpsPSGvoice        KCVolEnv_05
	dc.b	$0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $06, $06
	smpsPSGvoice        KCVolEnv_05
	dc.b	$0C, nRst, $30

NewMoon_Loop14:
	smpsCall            NewMoon_Call0E
	smpsLoop            $01, $10, NewMoon_Loop14

NewMoon_Loop15:
	smpsCall            NewMoon_Call0D
	smpsLoop            $01, $08, NewMoon_Loop15
	smpsJump            NewMoon_Loop13

NewMoon_Call0D:
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsLoop            $00, $08, NewMoon_Call0D
	smpsReturn

NewMoon_Call0E:
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $06, $06
	smpsPSGvoice        KCVolEnv_05
	dc.b	$0C
	smpsLoop            $00, $04, NewMoon_Call0E
	smpsReturn

; PWM1 Data
NewMoon_PWM1:
	dc.b	pwmSilence, $60

NewMoon_Loop05:
	dc.b	pwmAcousticKick, $0C, $0C, nRst, pwmAcousticKick, pwmAcousticKick, $12, $12, $0C
	smpsLoop            $00, $04, NewMoon_Loop05

NewMoon_Jump02:
	smpsCall            NewMoon_Call05
	smpsCall            NewMoon_Call05
	smpsCall            NewMoon_Call05
	smpsCall            NewMoon_Call06
	dc.b	nRst, $30

NewMoon_Loop06:
	smpsCall            NewMoon_Call05
	smpsLoop            $00, $04, NewMoon_Loop06

NewMoon_Loop07:
	dc.b	pwmAcousticKick, $0C, $0C, nRst, pwmAcousticKick, pwmAcousticKick, $12, $12, $0C
	smpsLoop            $00, $08, NewMoon_Loop07
	smpsJump            NewMoon_Jump02

NewMoon_Call05:
	smpsCall            NewMoon_Call06
	dc.b	nRst, $0C, pwmAcousticKick, nRst, $18
	smpsReturn

NewMoon_Call06:
	dc.b	pwmAcousticKick, $06, $06, $06, $06, nRst, $18, pwmAcousticKick, $0C, $0C, nRst, $18
	dc.b	pwmAcousticKick, $06, $06, $06, $06, nRst, $12, pwmAcousticKick, $06, nRst, $0C, pwmAcousticKick
	dc.b	nRst, $18, pwmAcousticKick, $06, $06, $06, $06, nRst, $12, pwmAcousticKick, $06, nRst
	dc.b	$0C, pwmAcousticKick, nRst, $18, pwmAcousticKick, $06, $06, $06, $06, nRst, pwmAcousticKick, nRst
	dc.b	pwmAcousticKick
	smpsReturn

; PWM2 Data
NewMoon_PWM2:
	dc.b	pwmSilence, $60
	smpsFMAlterVol      $DE
	smpsCall            NewMoon_Call01

NewMoon_Jump01:
	smpsCall            NewMoon_Call02
	smpsCall            NewMoon_Call02
	smpsCall            NewMoon_Call02
	smpsCall            NewMoon_Call03
	dc.b	nRst, $06
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom
	smpsFMAlterVol      $07
	dc.b	pwmMidTom
	smpsFMAlterVol      $90
	dc.b	pwmLowTom
	smpsFMAlterVol      $70

NewMoon_Loop04:
	smpsCall            NewMoon_Call02
	smpsLoop            $00, $04, NewMoon_Loop04
	smpsFMAlterVol      $DE
	smpsCall            NewMoon_Call04
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom
	smpsFMAlterVol      $07
	dc.b	pwmAcousticSnare, pwmAcousticSnare, pwmMidTom
	smpsFMAlterVol      $90
	dc.b	pwmLowTom
	smpsFMAlterVol      $70
	dc.b	pwmAcousticSnare, pwmAcousticSnare
	smpsFMAlterVol      $90
	dc.b	pwmLowTom, pwmLowTom
	smpsFMAlterVol      $70
	dc.b	pwmAcousticSnare
	smpsFMAlterVol      $90
	dc.b	pwmLowTom
	smpsFMAlterVol      $70
	dc.b	pwmMidTom, pwmAcousticSnare, pwmAcousticSnare, pwmAcousticSnare, pwmAcousticSnare
	smpsCall            NewMoon_Call01
	smpsJump            NewMoon_Jump01

NewMoon_Call01:
	smpsCall            NewMoon_Call04
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom
	smpsFMAlterVol      $07
	dc.b	pwmAcousticSnare, pwmAcousticSnare, pwmMidTom
	smpsFMAlterVol      $90
	dc.b	pwmLowTom
	smpsFMAlterVol      $70
	dc.b	pwmAcousticSnare, pwmAcousticSnare
	smpsFMAlterVol      $90
	dc.b	pwmLowTom
	smpsFMAlterVol      $70
	smpsFMAlterVol      $22
	dc.b	pwmAcousticSnare, pwmAcousticSnare, pwmAcousticSnare, pwmAcousticSnare, pwmAcousticSnare, pwmAcousticSnare, pwmAcousticSnare, pwmAcousticSnare
	smpsReturn

NewMoon_Call02:
	smpsCall            NewMoon_Call03
	dc.b	pwmAcousticSnare, $06
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom
	smpsFMAlterVol      $07
	dc.b	pwmMidTom
	smpsFMAlterVol      $90
	dc.b	pwmLowTom
	smpsFMAlterVol      $70
	smpsReturn

NewMoon_Call03:
	dc.b	nRst, $18, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, pwmAcousticSnare, $0C, $06, $06
	dc.b	nRst, $18, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst, pwmAcousticSnare, nRst
	smpsReturn

NewMoon_Call04:
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom, $06
	smpsFMAlterVol      $07
	dc.b	pwmAcousticSnare
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom, pwmHighTom
	smpsFMAlterVol      $07
	dc.b	pwmMidTom, pwmAcousticSnare
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom
	smpsFMAlterVol      $07
	dc.b	pwmMidTom, pwmAcousticSnare
	smpsFMAlterVol      $90
	dc.b	pwmLowTom
	smpsFMAlterVol      $70
	dc.b	pwmAcousticSnare, pwmAcousticSnare, pwmMidTom, pwmAcousticSnare, pwmAcousticSnare, pwmAcousticSnare
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom
	smpsFMAlterVol      $07
	dc.b	pwmAcousticSnare
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom
	smpsFMAlterVol      $07
	dc.b	pwmMidTom
	smpsFMAlterVol      $90
	dc.b	pwmLowTom
	smpsFMAlterVol      $70
	dc.b	pwmAcousticSnare, pwmAcousticSnare
	smpsFMAlterVol      $90
	dc.b	pwmLowTom
	smpsFMAlterVol      $70
	dc.b	pwmAcousticSnare
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom
	smpsFMAlterVol      $07
	dc.b	pwmMidTom
	smpsFMAlterVol      $90
	dc.b	pwmLowTom, pwmLowTom
	smpsFMAlterVol      $70
	dc.b	pwmAcousticSnare, pwmAcousticSnare
	smpsFMAlterVol      $90
	dc.b	pwmLowTom
	smpsFMAlterVol      $70
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom
	smpsFMAlterVol      $07
	dc.b	pwmAcousticSnare, pwmMidTom
	smpsFMAlterVol      $90
	dc.b	pwmLowTom
	smpsFMAlterVol      $70
	dc.b	pwmAcousticSnare
	smpsFMAlterVol      $90
	dc.b	pwmLowTom
	smpsFMAlterVol      $70
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom
	smpsFMAlterVol      $07
	dc.b	pwmAcousticSnare, pwmAcousticSnare, pwmMidTom
	smpsFMAlterVol      $90
	dc.b	pwmLowTom
	smpsFMAlterVol      $70
	dc.b	pwmAcousticSnare
	smpsFMAlterVol      $90
	dc.b	pwmLowTom
	smpsFMAlterVol      $70
	dc.b	pwmAcousticSnare, pwmAcousticSnare, pwmAcousticSnare
	smpsReturn

; PWM3 Data
NewMoon_PWM3:
	dc.b	pwmSilence, $60
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst

NewMoon_Jump00:
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $FC
	dc.b	pwmSplashCymbal, $60
	smpsFMAlterVol      $04
	dc.b	nRst, nRst, nRst
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

NewMoon_Loop03:
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsFMAlterVol      $FC
	dc.b	pwmSplashCymbal, $60
	smpsFMAlterVol      $04
	dc.b	nRst, nRst, nRst
	smpsLoop            $00, $04, NewMoon_Loop03
	smpsJump            NewMoon_Jump00

; PWM4 Data
NewMoon_PWM4:
	dc.b	pwmSilence, $60

NewMoon_Loop00:
	smpsCall            NewMoon_Call00
	smpsLoop            $01, $04, NewMoon_Loop00

NewMoon_Loop01:
	smpsCall            NewMoon_Call00
	smpsLoop            $01, $0F, NewMoon_Loop01
	smpsFMAlterVol      $FD
	dc.b	nRst, $0C, pwmElectricHiHat, $06, $06
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	nRst, $0C, pwmElectricHiHat, $06, $06
	smpsFMAlterVol      $30
	dc.b	pwmSilence, $30

NewMoon_Loop02:
	smpsCall            NewMoon_Call00
	smpsLoop            $01, $18, NewMoon_Loop02
	smpsJump            NewMoon_Loop01

NewMoon_Call00:
	smpsFMAlterVol      $FD
	dc.b	nRst, $0C, pwmElectricHiHat, $06, $06
	smpsFMAlterVol      $03
	smpsFMAlterVol      $D0
	dc.b	nRst, $0C, pwmElectricHiHat, $06, $06
	smpsFMAlterVol      $30
	smpsLoop            $00, $02, NewMoon_Call00
	smpsReturn

NewMoon_Voices:
;	Voice $00
;	$3B
;	$18, $31, $04, $02, 	$DF, $9F, $9F, $9F, 	$14, $08, $0E, $07
;	$10, $0E, $0F, $07, 	$6F, $7F, $3F, $8F, 	$12, $14, $18, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $01
	smpsVcCoarseFreq    $02, $04, $01, $08
	smpsVcRateScale     $02, $02, $02, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $0E, $08, $14
	smpsVcDecayRate2    $07, $0F, $0E, $10
	smpsVcDecayLevel    $08, $03, $07, $06
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $18, $14, $12

;	Voice $01
;	$01
;	$76, $75, $72, $33, 	$D5, $57, $9F, $FF, 	$02, $0B, $05, $0B
;	$0A, $0A, $0F, $09, 	$FF, $2F, $3F, $FF, 	$1E, $28, $16, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $07
	smpsVcCoarseFreq    $03, $02, $05, $06
	smpsVcRateScale     $03, $02, $01, $03
	smpsVcAttackRate    $3F, $1F, $17, $15
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $05, $0B, $02
	smpsVcDecayRate2    $09, $0F, $0A, $0A
	smpsVcDecayLevel    $0F, $03, $02, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $16, $28, $1E

;	Voice $02
;	$1F
;	$67, $32, $53, $23, 	$1C, $98, $1F, $1F, 	$12, $0F, $0F, $0F
;	$00, $00, $00, $00, 	$FF, $0F, $0F, $0F, 	$80, $83, $80, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $05, $03, $06
	smpsVcCoarseFreq    $03, $03, $02, $07
	smpsVcRateScale     $00, $00, $02, $00
	smpsVcAttackRate    $1F, $1F, $18, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0F, $0F, $12
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $03, $00

;	Voice $03
;	$3A
;	$02, $09, $01, $02, 	$8E, $8E, $8D, $55, 	$0E, $0E, $0E, $04
;	$00, $00, $00, $09, 	$1F, $FF, $3F, $4F, 	$16, $29, $1E, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $09, $02
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $15, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $0E, $0E, $0E
	smpsVcDecayRate2    $09, $00, $00, $00
	smpsVcDecayLevel    $04, $03, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1E, $29, $16

;	Voice $04
;	$2D
;	$77, $65, $05, $15, 	$1F, $DF, $DF, $DF, 	$00, $00, $03, $02
;	$00, $04, $02, $01, 	$BF, $4C, $6C, $5C, 	$22, $8E, $8E, $8E
	smpsVcAlgorithm     $05
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $06, $07
	smpsVcCoarseFreq    $05, $05, $05, $07
	smpsVcRateScale     $03, $03, $03, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $03, $00, $00
	smpsVcDecayRate2    $01, $02, $04, $00
	smpsVcDecayLevel    $05, $06, $04, $0B
	smpsVcReleaseRate   $0C, $0C, $0C, $0F
	smpsVcTotalLevel    $0E, $0E, $0E, $22

;	Voice $05
;	$2C
;	$72, $72, $33, $32, 	$1F, $08, $1F, $08, 	$01, $00, $01, $00
;	$01, $00, $01, $00, 	$1F, $0F, $1F, $0F, 	$19, $80, $17, $85
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $02, $03, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $08, $1F, $08, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $01, $00, $01
	smpsVcDecayRate2    $00, $01, $00, $01
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $05, $17, $00, $19

;	Voice $06
;	$37
;	$52, $31, $34, $50, 	$1F, $1F, $1F, $1F, 	$05, $05, $10, $10
;	$05, $05, $05, $05, 	$4D, $4D, $4C, $4C, 	$80, $87, $87, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $03, $05
	smpsVcCoarseFreq    $00, $04, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $10, $05, $05
	smpsVcDecayRate2    $05, $05, $05, $05
	smpsVcDecayLevel    $04, $04, $04, $04
	smpsVcReleaseRate   $0C, $0C, $0D, $0D
	smpsVcTotalLevel    $00, $07, $07, $00

