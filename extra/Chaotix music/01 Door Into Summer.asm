DoorIntoSummer_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     DoorIntoSummer_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $25

	smpsHeaderDAC       DoorIntoSummer_DAC
	smpsHeaderFM        DoorIntoSummer_FM1,	$00, $09
	smpsHeaderFM        DoorIntoSummer_FM2,	$0C, $10
	smpsHeaderFM        DoorIntoSummer_FM3,	$0C, $10
	smpsHeaderFM        DoorIntoSummer_FM4,	$00, $10
	smpsHeaderFM        DoorIntoSummer_FM5,	$00, $10
	smpsHeaderFM        DoorIntoSummer_FM6,	$00, $10
	smpsHeaderPSG       DoorIntoSummer_PSG1,	$F4, $00, $00, KCVolEnv_0C
	smpsHeaderPSG       DoorIntoSummer_PSG2,	$F4, $03, $00, KCVolEnv_0C
	smpsHeaderPSG       DoorIntoSummer_PSG3,	$23, $01, $00, KCVolEnv_02
	smpsHeaderPWM       DoorIntoSummer_PWM1,	$00, $99
	smpsHeaderPWM       DoorIntoSummer_PWM2,	$00, $AA
	smpsHeaderPWM       DoorIntoSummer_PWM3,	$00, $99
	smpsHeaderPWM       DoorIntoSummer_PWM4,	$00, $99

; Dummy DAC data
DoorIntoSummer_DAC:
	smpsStop

; FM1 Data
DoorIntoSummer_FM1:
	smpsSetvoice        $00

DoorIntoSummer_Loop14:
	smpsCall            DoorIntoSummer_Call0B
	smpsLoop            $00, $03, DoorIntoSummer_Loop14
	dc.b	nF1, $12, nF2, $06, nRst, $12, nF1, $06, nRst, $30

DoorIntoSummer_Loop15:
	smpsCall            DoorIntoSummer_Call0C
	smpsLoop            $00, $07, DoorIntoSummer_Loop15
	dc.b	nC2, $12, nC3, $06, nRst, $12, nC2, $06, nRst, $30
	smpsCall            DoorIntoSummer_Call0D
	dc.b	nA2, $24, nG1, nC2, $18
	smpsCall            DoorIntoSummer_Call0D
	dc.b	nA1, $18, nA2, $06, nRst, nA1, $18, $0C, nG1, $06, nG2, nRst
	dc.b	nG2
	smpsCall            DoorIntoSummer_Call0D
	dc.b	nA2, $24, nG1, nC2, $18
	smpsCall            DoorIntoSummer_Call0D
	dc.b	nD2, $24, nE2, $18, nE3, $06, nRst, nA1, $0C, nA2, $06, nRst

DoorIntoSummer_Loop16:
	smpsCall            DoorIntoSummer_Call0B
	smpsLoop            $00, $03, DoorIntoSummer_Loop16
	dc.b	nF1, $12, nF2, $06, nRst, $12, nF1, $06, nRst, nF1, $06, $0C
	dc.b	$0C, nG2, nA1, $12, nA2, $06, nRst, $12, nA1, $06, nRst, nA1
	dc.b	$06, $0C, $0C, nA2, $06, nRst, nAb1, $12, nAb2, $06, nRst, $12
	dc.b	nAb1, $06, nRst, nAb1, $06, $0C, $18, nG1, $12, nG2, $06, nRst
	dc.b	$12, nG1, $06, nRst, nG1, $06, $0C, $0C, nE1, nFs1, $12, nFs2
	dc.b	$06, nRst, $12, nD2, $06, nRst, nD2, $06, $0C, $0C, nD3, $06
	dc.b	nRst
	smpsLoop            $01, $02, DoorIntoSummer_Loop16

DoorIntoSummer_Loop17:
	smpsCall            DoorIntoSummer_Call0B
	smpsLoop            $00, $03, DoorIntoSummer_Loop17
	dc.b	nF1, $12, nF2, $06, nRst, $0C, $06, nF1, $06, nRst, $30
	smpsJump            DoorIntoSummer_Loop15

DoorIntoSummer_Call0B:
	dc.b	nF1, $12, nF2, $06, nRst, $12, nF1, $06, nRst, nF1, $06, $0C
	dc.b	$0C, nF2, $06, nRst
	smpsReturn

DoorIntoSummer_Call0C:
	dc.b	nC2, $12, nC3, $06, nRst, $12, nC2, $06, nRst, nC2, $06, $0C
	dc.b	nBb1, nB1
	smpsReturn

DoorIntoSummer_Call0D:
	dc.b	nRst, $0C, nF1, nRst, $06, nF1, $0C, nE1, $06, nRst, $30
	smpsReturn

; FM2 Data
DoorIntoSummer_FM2:
	smpsSetvoice        $02
	smpsCall            DoorIntoSummer_Call0A

DoorIntoSummer_Jump04:
	smpsSetvoice        $04
	smpsChangeTransposition $F4
	dc.b	nRst, $0C, nC4, $06, $06

DoorIntoSummer_Loop12:
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nC4, $06, $06
	smpsLoop            $00, $1D, DoorIntoSummer_Loop12
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $2A
	smpsChangeTransposition $0C
	smpsSetvoice        $03
	smpsPan             panRight, $00
	dc.b	nRst, $3C, nG4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $09
	dc.b	nG4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $5A
	smpsFMAlterVol      $F7
	dc.b	nRst, $3C, nD5, $0C
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $09
	dc.b	nD5, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $ED
	dc.b	nRst, $36, nG4, $06, nA4, nE4, nD4, $0C, nC4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $36, nG4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $09
	dc.b	nG4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $5A
	smpsFMAlterVol      $F7
	dc.b	nRst, $3C, nD5, $0C
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $09
	dc.b	nD5, $0C
	smpsFMAlterVol      $F7
	smpsFMAlterVol      $02
	dc.b	nC4, $24
	smpsFMAlterVol      $FE
	dc.b	nD4
	smpsFMAlterVol      $FE
	dc.b	nE4, $18
	smpsFMAlterVol      $02

DoorIntoSummer_Loop13:
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	dc.b	nRst, $18, nG5
	smpsSetvoice        $03
	smpsPan             panRight, $00
	dc.b	nRst, $06, nG3, nA3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4, $0C, nA3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	dc.b	nRst, $18, nG5
	smpsSetvoice        $03
	smpsPan             panRight, $00
	dc.b	nRst, $06, nG3, nA3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4, nD4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nE4
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	dc.b	nA4, $18, nB4, nC5, nD5, nG4, nG5, nF5, nE5
	smpsSetvoice        $03
	smpsPan             panRight, $00
	dc.b	nE4, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD4, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4, $12, nB3, nBb3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nAb3, $0C, nG3, nAb3, nA3, nBb3, nB3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nE4, $0C, nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C, nG3, nA3, nC4, $06, nG4, $36
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12, nE4, $3C, nD4, $0C
	smpsLoop            $00, $02, DoorIntoSummer_Loop13
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	smpsCall            DoorIntoSummer_Call0A
	smpsJump            DoorIntoSummer_Jump04

DoorIntoSummer_Call0A:
	dc.b	nRst, $18, nG5, nRst, $30
	smpsLoop            $00, $03, DoorIntoSummer_Call0A
	dc.b	nRst, $18, nG5, nRst, nG5
	smpsReturn

; FM3 Data
DoorIntoSummer_FM3:
	smpsSetvoice        $02
	smpsCall            DoorIntoSummer_Call08

DoorIntoSummer_Jump03:
	smpsSetvoice        $04
	smpsChangeTransposition $F4
	dc.b	nRst, $0C, nG3, $06, $06
	smpsCall            DoorIntoSummer_Call09
	smpsCall            DoorIntoSummer_Call09
	smpsCall            DoorIntoSummer_Call09
	smpsChangeTransposition $02
	smpsCall            DoorIntoSummer_Call09
	smpsCall            DoorIntoSummer_Call09
	smpsCall            DoorIntoSummer_Call09
	smpsChangeTransposition $FE
	smpsCall            DoorIntoSummer_Call09

DoorIntoSummer_Loop10:
	smpsCall            DoorIntoSummer_Call09
	smpsLoop            $00, $04, DoorIntoSummer_Loop10
	smpsChangeTransposition $02
	smpsCall            DoorIntoSummer_Call09
	smpsCall            DoorIntoSummer_Call09
	smpsCall            DoorIntoSummer_Call09
	smpsChangeTransposition $FE
	smpsCall            DoorIntoSummer_Call09
	smpsLoop            $01, $02, DoorIntoSummer_Loop10
	smpsCall            DoorIntoSummer_Call09
	smpsCall            DoorIntoSummer_Call09
	smpsCall            DoorIntoSummer_Call09
	smpsCall            DoorIntoSummer_Call09
	smpsChangeTransposition $02
	smpsCall            DoorIntoSummer_Call09
	smpsChangeTransposition $FE
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nA3, nG3
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $2A
	smpsChangeTransposition $0C
	smpsSetvoice        $03
	smpsPan             panLeft, $00
	dc.b	nRst, $3C, nD4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $09
	dc.b	nD4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $5A
	smpsFMAlterVol      $F7
	dc.b	nRst, $3C, nG4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $09
	dc.b	nG4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $ED
	dc.b	nRst, $36, nB3, $06, nC4, nC4, nA3, $0C, nA3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $36, nD4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $09
	dc.b	nD4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $5A
	smpsFMAlterVol      $F7
	dc.b	nRst, $3C, nG4, $0C
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $09
	dc.b	nG4, $0C
	smpsFMAlterVol      $F7
	smpsFMAlterVol      $02
	dc.b	nG3, $24
	smpsFMAlterVol      $FE
	dc.b	nA3
	smpsFMAlterVol      $FE
	dc.b	nBb3, $18
	smpsFMAlterVol      $02

DoorIntoSummer_Loop11:
	smpsSetvoice        $02
	smpsFMAlterVol      $05
	smpsModSet          $01, $01, $04, $05
	dc.b	nRst, $1E, nG5, $12
	smpsSetvoice        $03
	smpsFMAlterVol      $FB
	smpsModSet          $00, $00, $00, $00
	dc.b	nRst, $06, nC3, nD3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3, $0C, nC3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsSetvoice        $02
	smpsFMAlterVol      $05
	smpsModSet          $01, $01, $04, $05
	dc.b	nRst, $1E, nG5, $12
	smpsSetvoice        $03
	smpsFMAlterVol      $FB
	smpsModSet          $00, $00, $00, $00
	dc.b	nRst, $06, nD3, nE3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3, nA3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nB3
	smpsSetvoice        $02
	smpsFMAlterVol      $05
	smpsModSet          $01, $01, $04, $05
	dc.b	nRst, $06, nA4, $18, nB4, nC5, nD5, nG4, nG5, nF5, nE5, $12
	smpsSetvoice        $03
	smpsFMAlterVol      $FB
	smpsModSet          $00, $00, $00, $00
	dc.b	nA3, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3, $12, nE3, nEb3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD3, $0C, nC3, nD3, nEb3, nE3, nF3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4, $0C, nAb3, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C, nC3, nD3, nG3, $06, nC4, $36
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12, nC4, $3C, $0C
	smpsLoop            $00, $02, DoorIntoSummer_Loop11
	smpsSetvoice        $02
	smpsCall            DoorIntoSummer_Call08
	smpsJump            DoorIntoSummer_Jump03

DoorIntoSummer_Call08:
	smpsPan             panLeft, $00
	smpsFMAlterVol      $05
	smpsModSet          $01, $01, $04, $05
	dc.b	nRst, $06, nRst, $18, nG5, nRst, $30, nRst, $18, nG5, nRst, $30
	dc.b	nRst, $18, nG5, nRst, $30, nRst, $18, nG5, nRst, nG5, $12
	smpsPan             panCenter, $00
	smpsFMAlterVol      $FB
	smpsModSet          $00, $00, $00, $00
	smpsReturn

DoorIntoSummer_Call09:
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, nG3, $06, $06
	smpsReturn

; FM4 Data
DoorIntoSummer_FM4:
	smpsSetvoice        $01
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $FE
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $02
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $FE
	smpsCall            DoorIntoSummer_Call04
	smpsChangeTransposition $02

DoorIntoSummer_Loop0E:
	dc.b	nRst, $0C, nE3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nE3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nD3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $0C, nRst, $0C, nC3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nC3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nC3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nC3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $0C
	smpsLoop            $00, $03, DoorIntoSummer_Loop0E
	dc.b	nRst, $0C, nE3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nE3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nD3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $0C, nRst, $0C, nC3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nC3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $2A
	smpsCall            DoorIntoSummer_Call07
	dc.b	nE3, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $18
	smpsCall            DoorIntoSummer_Call07
	dc.b	nE3, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $0C, $06
	smpsCall            DoorIntoSummer_Call07
	dc.b	nE3, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $18
	smpsCall            DoorIntoSummer_Call07
	dc.b	nC3, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1

DoorIntoSummer_Loop0F:
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $FE
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $02
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $FE
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $02
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $FE
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $02
	smpsCall            DoorIntoSummer_Call03
	smpsCall            DoorIntoSummer_Call03
	smpsLoop            $00, $02, DoorIntoSummer_Loop0F
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $FE
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $02
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $FE
	smpsCall            DoorIntoSummer_Call04
	smpsChangeTransposition $02
	smpsJump            DoorIntoSummer_Loop0E

DoorIntoSummer_Call03:
	dc.b	nRst, $0C, nE3, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	nE3, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	nE3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	smpsReturn

DoorIntoSummer_Call04:
	dc.b	nRst, $0C, nE3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nE3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $2A
	smpsReturn

DoorIntoSummer_Call07:
	dc.b	nRst, $0C, nE3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $0C, nD3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $2A
	smpsReturn

; FM5 Data
DoorIntoSummer_FM5:
	smpsSetvoice        $01
	smpsChangeTransposition $FC
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $FF
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $01
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $FF
	smpsCall            DoorIntoSummer_Call04
	smpsChangeTransposition $05

DoorIntoSummer_Loop0C:
	dc.b	nRst, $0C, nC3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nC3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nB2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $0C, nRst, $0C, nA2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nA2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nA2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nA2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $0C
	smpsLoop            $00, $03, DoorIntoSummer_Loop0C
	dc.b	nRst, $0C, nC3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nC3, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nB2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $0C, nRst, $0C, nA2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nA2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $2A
	smpsCall            DoorIntoSummer_Call06
	dc.b	nC3, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nBb2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nBb2, $18
	smpsCall            DoorIntoSummer_Call06
	dc.b	nC3, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nC3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nC3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $0C, $06
	smpsCall            DoorIntoSummer_Call06
	dc.b	nC3, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nBb2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nBb2, $18
	smpsCall            DoorIntoSummer_Call06
	dc.b	nA2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nBb2, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1

DoorIntoSummer_Loop0D:
	smpsChangeTransposition $FC
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $FF
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $01
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $FF
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $01
	smpsCall            DoorIntoSummer_Call03
	smpsCall            DoorIntoSummer_Call03
	smpsCall            DoorIntoSummer_Call03
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $04
	smpsLoop            $00, $02, DoorIntoSummer_Loop0D
	smpsChangeTransposition $FC
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $FF
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $01
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $FF
	smpsCall            DoorIntoSummer_Call04
	smpsChangeTransposition $05
	smpsJump            DoorIntoSummer_Loop0C

DoorIntoSummer_Call06:
	dc.b	nRst, $0C, nC3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nC3, $0C, nB2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $2A
	smpsReturn

; FM6 Data
DoorIntoSummer_FM6:
	smpsSetvoice        $01
	smpsChangeTransposition $F9
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $FE
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $02
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $FE
	smpsCall            DoorIntoSummer_Call04
	smpsChangeTransposition $09

DoorIntoSummer_Loop0A:
	dc.b	nRst, $0C, nG2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nG2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nG2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $0C, nRst, $0C, nF2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nF2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nF2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nF2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $0C
	smpsLoop            $00, $03, DoorIntoSummer_Loop0A
	dc.b	nRst, $0C, nG2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nG2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nG2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $0C, nRst, $0C, nF2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, nF2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $2A
	smpsCall            DoorIntoSummer_Call05
	dc.b	nG2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $18
	smpsCall            DoorIntoSummer_Call05
	dc.b	nG2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $0C, $06
	smpsCall            DoorIntoSummer_Call05
	dc.b	nG2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $18
	smpsCall            DoorIntoSummer_Call05
	dc.b	nF2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $1E
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG2, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1

DoorIntoSummer_Loop0B:
	smpsChangeTransposition $F9
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $FE
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $02
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $FE
	smpsCall            DoorIntoSummer_Call03
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $FE
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $02
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $02
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $07
	smpsLoop            $00, $02, DoorIntoSummer_Loop0B
	smpsChangeTransposition $F9
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $FE
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $02
	smpsCall            DoorIntoSummer_Call03
	smpsChangeTransposition $FE
	smpsCall            DoorIntoSummer_Call04
	smpsChangeTransposition $09
	smpsJump            DoorIntoSummer_Loop0A

DoorIntoSummer_Call05:
	dc.b	nRst, $0C, nA2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nA2, $0C, nAb2, $06
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nRst, $2A
	smpsReturn

; PSG1 Data
DoorIntoSummer_PSG1:
	smpsPSGvoice        KCVolEnv_08

DoorIntoSummer_Jump05:
	dc.b	nRst, $60, nRst, nRst, nRst, $4E, nG3, $06, nA3, nB3

DoorIntoSummer_Jump06:
	smpsCall            DoorIntoSummer_Call10
	dc.b	nF4, $0C, nE4, nD4, nC4, $06, nD4, $0C, nRst, $06, nE4, $12
	dc.b	nRst, $06, nG3, $0C
	smpsCall            DoorIntoSummer_Call10
	dc.b	nG4, $0C, nA4, nB4, nC5, $18, nE4, $06, nRst, nD4, nG3, nA3
	dc.b	nB3
	smpsCall            DoorIntoSummer_Call10
	dc.b	nF4, $0C, nE4, nD4, nC4, $06, nD4, $0C, nRst, $06, nE4, $12
	dc.b	nRst, $06, nG3, $0C
	smpsCall            DoorIntoSummer_Call10
	dc.b	nF4, $0C, nE4, nD4, nC4, $06, nD4, nRst, $1E, nA3, $06, nC4
	dc.b	nD4, nEb4, $03, smpsNoAttack, nE4, $27, nG4, $1E, nF4, $0C, nE4, nD4
	dc.b	$12, nE4, nC4, $24, nRst, $06, nA3, nC4, nD4, nEb4, $03, smpsNoAttack
	dc.b	nE4, $27, nAb4, $12, nE4, $0C, nD4, nC4, nD4, $12, nC4, nG4
	dc.b	$24, nRst, $06, nA3, nC4, nD4, nEb4, $05, smpsNoAttack, nE4, $25, nG4
	dc.b	$1E, nF4, $0C, nE4, nD4, $12, nE4, nC4, $18, nA3, $0C, nB3
	dc.b	nC4, nD4, $12, nE4, $4E, nRst, $0C, nG3, nAb3, nA3, nC4, nA3
	dc.b	nG4, nF4
	smpsCall            DoorIntoSummer_Call11
	dc.b	nRst, $0C, nG3, nAb3, nA3, nC4, nA3, nG4, nF4
	smpsCall            DoorIntoSummer_Call11
	dc.b	nRst, $18, nE4, $3C, nD4, $0C, nC4, $60, nRst, $60, nRst, nRst
	dc.b	$4E, nG3, $06, nA3, nB3
	smpsJump            DoorIntoSummer_Jump06

DoorIntoSummer_Call10:
	dc.b	nC4, $0C, nG4, $06, nC4, nRst, nC4, nRst, nC4
	smpsLoop            $00, $02, DoorIntoSummer_Call10
	smpsReturn

DoorIntoSummer_Call11:
	dc.b	nEb4, $05, smpsNoAttack, nE4, $1F, nD4, $18, nA3, $06, nRst, nG4, $0C
	dc.b	nF4, $06, nRst, nEb4, $02, smpsNoAttack, nE4, $22, nD4, $3C, nRst, $0C
	dc.b	nC4, $18, nG4, $06, nRst, nF4, $12, nE4, $06, nRst, $0C, nD4
	dc.b	smpsNoAttack, $06, nRst, nE4, nRst, nD4, nE4, nRst, nA3, $12, nG3, $0C
	dc.b	nRst, nG3, smpsNoAttack, $0C, nA3, $06, nRst, nA3, $24, nB3, $06, nRst
	dc.b	nRst, nC4, nRst, nD4, smpsNoAttack, $0C, nC4, nD4, nG4, $18, nC4, $06
	dc.b	nRst, nD4, $0C, nE4, smpsNoAttack, $60
	smpsReturn

; PSG2 Data
DoorIntoSummer_PSG2:
	smpsPSGvoice        KCVolEnv_08
	smpsModSet          $05, $01, $02, $04
	dc.b	nRst, $0C
	smpsJump            DoorIntoSummer_Jump05

; PSG3 Data
DoorIntoSummer_PSG3:
	smpsPSGform         $E7
	smpsCall            DoorIntoSummer_Call0E
	smpsCall            DoorIntoSummer_Call0F

DoorIntoSummer_Loop18:
	smpsCall            DoorIntoSummer_Call0E
	smpsLoop            $00, $03, DoorIntoSummer_Loop18
	smpsCall            DoorIntoSummer_Call0F
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $0C, nRst, nRst, $06
	smpsPSGvoice        KCVolEnv_05
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $06, smpsNoAttack, $06, nRst
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $06, $06, nRst, (nMaxPSG2-$23)&$FF, $06, $0C, nRst, $06, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, nRst
	dc.b	nRst, $0C, (nMaxPSG2-$23)&$FF, $06, $06, nRst
	smpsPSGvoice        KCVolEnv_05
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGvoice        KCVolEnv_02
	dc.b	$06, nRst, (nMaxPSG2-$23)&$FF, $0C, $06, $06, nRst, $0C
	smpsPSGvoice        KCVolEnv_05
	dc.b	(nMaxPSG2-$23)&$FF, nRst, $06, (nMaxPSG2-$23)&$FF, $0C, $0C, nRst, $06
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $06, $06, nRst, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, $0C, nRst, $06, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, nRst
	dc.b	nRst, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        KCVolEnv_05
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, $0C, $06, nRst, $18, nRst, $0C
	smpsPSGvoice        KCVolEnv_05
	dc.b	(nMaxPSG2-$23)&$FF, nRst, $06, (nMaxPSG2-$23)&$FF, $0C, $0C, nRst, $06
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $06, $06, nRst, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, nRst, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, nRst, nRst
	dc.b	(nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, nRst, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        KCVolEnv_05
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, nRst, (nMaxPSG2-$23)&$FF, $0C, $06, $06, nRst, $0C
	smpsPSGvoice        KCVolEnv_05
	dc.b	(nMaxPSG2-$23)&$FF, $0C, nRst, $06, (nMaxPSG2-$23)&$FF, $0C, (nMaxPSG2-$23)&$FF, nRst, $2A, nRst, $60
	smpsPSGAlterVol     $01

DoorIntoSummer_Loop19:
	dc.b	(nMaxPSG1-$23)&$FF, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C
	smpsLoop            $00, $10, DoorIntoSummer_Loop19

DoorIntoSummer_Loop1A:
	dc.b	(nMaxPSG1-$23)&$FF, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C
	smpsLoop            $00, $03, DoorIntoSummer_Loop1A
	dc.b	(nMaxPSG1-$23)&$FF, $0C, $0C, $0C, $0C, nRst, $30
	smpsPSGAlterVol     $FF
	smpsJump            DoorIntoSummer_Loop18

DoorIntoSummer_Call0E:
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $0C, $0C, $0C, $0C
	smpsPSGvoice        KCVolEnv_05
	dc.b	$0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	$0C, $0C, $0C, $0C, $0C, $06, $06, $0C
	smpsPSGvoice        KCVolEnv_05
	dc.b	$0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	$0C
	smpsPSGvoice        KCVolEnv_05
	dc.b	$0C
	smpsReturn

DoorIntoSummer_Call0F:
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $0C, $0C, $0C, $0C
	smpsPSGvoice        KCVolEnv_05
	dc.b	$0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	$0C, $0C, $0C, $0C, $0C, $06, $06, nRst, $30
	smpsReturn

; PWM1 Data
DoorIntoSummer_PWM1:
	smpsCall            DoorIntoSummer_Call02
	dc.b	pwmElectricKick, $18, nRst, $06, pwmElectricKick, nRst, pwmElectricKick, nRst, $18, pwmElectricKick

DoorIntoSummer_Jump02:
	smpsCall            DoorIntoSummer_Call02
	dc.b	pwmElectricKick, $18, nRst, $12, pwmElectricKick, $06, nRst, pwmElectricKick, pwmElectricKick, nRst, nRst, $18
	smpsCall            DoorIntoSummer_Call02
	dc.b	pwmElectricKick, $18, nRst, $06, pwmElectricKick, nRst, pwmElectricKick, nRst, $30

DoorIntoSummer_Loop08:
	dc.b	nRst, $0C, pwmElectricKick, nRst, $06, pwmElectricKick, nRst, pwmElectricKick, nRst, $30, pwmElectricKick, $18
	dc.b	nRst, $0C, pwmElectricKick, nRst, pwmElectricKick, nRst, $06, pwmElectricKick, nRst, pwmElectricKick
	smpsLoop            $00, $03, DoorIntoSummer_Loop08
	dc.b	nRst, $0C, pwmElectricKick, nRst, $06, pwmElectricKick, nRst, pwmElectricKick, nRst, $18, pwmLowTom, $0C
	dc.b	pwmLowTom, pwmElectricKick, $18, nRst, $0C, pwmElectricKick, nRst, pwmElectricKick, pwmElectricKick, $18

DoorIntoSummer_Loop09:
	smpsCall            DoorIntoSummer_Call02
	dc.b	pwmElectricKick, $18, nRst, $12, pwmElectricKick, $06, nRst, pwmElectricKick, pwmElectricKick, nRst, nRst, $18
	smpsLoop            $00, $04, DoorIntoSummer_Loop09
	smpsCall            DoorIntoSummer_Call02
	dc.b	pwmElectricKick, $18, nRst, $06, pwmElectricKick, nRst, pwmElectricKick, nRst, $18, pwmElectricKick
	smpsJump            DoorIntoSummer_Jump02

DoorIntoSummer_Call02:
	dc.b	pwmElectricKick, $18, nRst, $12, pwmElectricKick, $06, nRst, pwmElectricKick, pwmElectricKick, nRst, nRst, $0C
	dc.b	pwmElectricKick, pwmElectricKick, $18, nRst, $12, pwmElectricKick, $06, nRst, pwmElectricKick, pwmElectricKick, nRst, nRst
	dc.b	$18, pwmElectricKick, $18, nRst, $12, pwmElectricKick, $06, nRst, pwmElectricKick, pwmElectricKick, nRst, nRst
	dc.b	$0C, pwmElectricKick
	smpsReturn

; PWM2 Data
DoorIntoSummer_PWM2:
	dc.b	pwmSilence, $18, pwmElectricSnare, nRst, pwmElectricSnare, nRst, pwmElectricSnare, nRst, pwmElectricSnare, nRst, pwmElectricSnare, nRst
	dc.b	pwmElectricSnare, nRst, pwmElectricSnare, nRst, pwmElectricSnare

DoorIntoSummer_Jump01:
	smpsCall            DoorIntoSummer_Call01
	smpsCall            DoorIntoSummer_Call01
	dc.b	nRst, $48, pwmElectricSnare, $18, nRst, pwmElectricSnare, nRst, pwmElectricSnare, nRst, $48, pwmElectricSnare, $18
	dc.b	nRst, pwmElectricSnare, nRst, pwmElectricSnare, $06
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom
	smpsFMAlterVol      $07
	dc.b	pwmMidTom
	smpsFMAlterVol      $90
	dc.b	pwmLowTom
	smpsFMAlterVol      $70
	dc.b	nRst, $48, pwmElectricSnare, $18, nRst, $0C, pwmElectricSnare, pwmElectricSnare, $18, nRst, pwmElectricSnare, nRst
	dc.b	$3C
	smpsFMAlterVol      $90
	dc.b	pwmLowTom, $04, pwmLowTom, pwmLowTom
	smpsFMAlterVol      $70
	dc.b	pwmElectricSnare, $0C, pwmElectricSnare, nRst, $48, pwmElectricSnare, $06, pwmElectricSnare, pwmElectricSnare, pwmElectricSnare

DoorIntoSummer_Loop06:
	smpsCall            DoorIntoSummer_Call01
	smpsLoop            $01, $04, DoorIntoSummer_Loop06

DoorIntoSummer_Loop07:
	dc.b	nRst, $18, pwmElectricSnare
	smpsLoop            $00, $08, DoorIntoSummer_Loop07
	smpsJump            DoorIntoSummer_Jump01

DoorIntoSummer_Call01:
	dc.b	nRst, $18, pwmElectricSnare
	smpsLoop            $00, $07, DoorIntoSummer_Call01
	dc.b	nRst, $0C, pwmElectricSnare, pwmElectricSnare, $06, pwmElectricSnare, pwmMidTom, $0C
	smpsReturn

; PWM3 Data
DoorIntoSummer_PWM3:
	dc.b	pwmSilence, $60, nRst, nRst, nRst

DoorIntoSummer_Jump00:
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst
	smpsFMAlterVol      $C0
	dc.b	nRst, $0C, pwmCrashCymbal, $54
	smpsFMAlterVol      $40
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $12
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pwmSplashCymbal, $06, nRst, $0C
	smpsFMAlterVol      $04
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, nRst, $06
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pwmSplashCymbal, $12, nRst, $18
	smpsFMAlterVol      $04

DoorIntoSummer_Loop05:
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsLoop            $00, $03, DoorIntoSummer_Loop05
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $60
	smpsFMAlterVol      $40
	dc.b	nRst
	smpsFMAlterVol      $FC
	dc.b	pwmSplashCymbal
	smpsFMAlterVol      $04
	dc.b	nRst
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $60
	smpsFMAlterVol      $40
	dc.b	nRst, nRst, nRst
	smpsJump            DoorIntoSummer_Jump00

; PWM4 Data
DoorIntoSummer_PWM4:
	smpsFMAlterVol      $F9

DoorIntoSummer_Loop00:
	dc.b	pwmSilence, $48, pwmClap, $18
	smpsLoop            $00, $04, DoorIntoSummer_Loop00
	smpsFMAlterVol      $07
	smpsFMAlterVol      $BC

DoorIntoSummer_Loop01:
	smpsCall            DoorIntoSummer_Call00
	smpsLoop            $01, $03, DoorIntoSummer_Loop01

DoorIntoSummer_Loop02:
	dc.b	nRst, $0C, pwmElectricHiHat
	smpsLoop            $00, $05, DoorIntoSummer_Loop02
	dc.b	nRst, $0C, pwmElectricHiHat, $06, $06, nRst, $30
	smpsFMAlterVol      $44

DoorIntoSummer_Loop03:
	dc.b	pwmSilence, $60
	smpsLoop            $00, $08, DoorIntoSummer_Loop03
	smpsFMAlterVol      $D0

DoorIntoSummer_Loop04:
	dc.b	nRst, $06, pwmRideBell, nRst, pwmRideBell, nRst, pwmRideBell, pwmRideBell, nRst, pwmRideBell, nRst, pwmRideBell
	dc.b	nRst, pwmRideBell, nRst, pwmRideBell, nRst, pwmRideBell, nRst, pwmRideBell, pwmRideBell, nRst, pwmRideBell, pwmRideBell
	dc.b	nRst, pwmRideBell, nRst, pwmRideBell, nRst, pwmRideBell, nRst, pwmRideBell, pwmRideBell, nRst, pwmRideBell, nRst
	dc.b	pwmRideBell, pwmRideBell, nRst, pwmRideBell, pwmRideBell, nRst, pwmRideBell, pwmRideBell, nRst, pwmRideBell, pwmRideBell, nRst
	dc.b	pwmRideBell, nRst, pwmRideBell, nRst, pwmRideBell, pwmRideBell, nRst, pwmRideBell, pwmRideBell, nRst, pwmRideBell, pwmRideBell
	dc.b	nRst, pwmRideBell, pwmRideBell, pwmRideBell, pwmRideBell
	smpsLoop            $00, $04, DoorIntoSummer_Loop04
	dc.b	nRst, $06, pwmRideBell, nRst, pwmRideBell, nRst, pwmRideBell, pwmRideBell, nRst, pwmRideBell, nRst, pwmRideBell
	dc.b	nRst, pwmRideBell, nRst, pwmRideBell, nRst, pwmRideBell, nRst, pwmRideBell, pwmRideBell, nRst, pwmRideBell, pwmRideBell
	dc.b	nRst, pwmRideBell, nRst, pwmRideBell, nRst, pwmRideBell, nRst, pwmRideBell, pwmRideBell, nRst, pwmRideBell, nRst
	dc.b	pwmRideBell, pwmRideBell, nRst, pwmRideBell, pwmRideBell, nRst, pwmRideBell, pwmRideBell, nRst, pwmRideBell, pwmRideBell, nRst
	dc.b	pwmRideBell, nRst, pwmRideBell, nRst, pwmRideBell, pwmRideBell, nRst, pwmRideBell, pwmRideBell, nRst, $30
	smpsFMAlterVol      $30
	smpsFMAlterVol      $BC
	smpsJump            DoorIntoSummer_Loop01

DoorIntoSummer_Call00:
	dc.b	nRst, $0C, pwmElectricHiHat
	smpsLoop            $00, $07, DoorIntoSummer_Call00
	dc.b	smpsNoAttack, $0C, pwmElectricHiHat, $06, $06
	smpsReturn

DoorIntoSummer_Voices:
;	Voice $00
;	$3A
;	$01, $05, $32, $71, 	$CF, $95, $1F, $1F, 	$0E, $0F, $05, $0C
;	$17, $06, $06, $07, 	$8F, $4F, $4F, $4F, 	$21, $13, $24, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $00, $00
	smpsVcCoarseFreq    $01, $02, $05, $01
	smpsVcRateScale     $00, $00, $02, $03
	smpsVcAttackRate    $1F, $1F, $15, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $05, $0F, $0E
	smpsVcDecayRate2    $07, $06, $06, $17
	smpsVcDecayLevel    $04, $04, $04, $08
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $24, $13, $21

;	Voice $01
;	$1C
;	$32, $02, $04, $34, 	$5F, $FF, $5F, $FF, 	$05, $05, $05, $07
;	$15, $10, $21, $13, 	$9F, $3F, $5F, $AF, 	$30, $80, $02, $84
	smpsVcAlgorithm     $04
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $00, $03
	smpsVcCoarseFreq    $04, $04, $02, $02
	smpsVcRateScale     $03, $01, $03, $01
	smpsVcAttackRate    $3F, $1F, $3F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $05, $05, $05
	smpsVcDecayRate2    $13, $21, $10, $15
	smpsVcDecayLevel    $0A, $05, $03, $09
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $04, $02, $00, $30

;	Voice $02
;	$2D
;	$06, $05, $04, $10, 	$1F, $5F, $5F, $5F, 	$05, $07, $0C, $0C
;	$17, $17, $12, $18, 	$9F, $9C, $9C, $9C, 	$2D, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $00
	smpsVcCoarseFreq    $00, $04, $05, $06
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0C, $07, $05
	smpsVcDecayRate2    $18, $12, $17, $17
	smpsVcDecayLevel    $09, $09, $09, $09
	smpsVcReleaseRate   $0C, $0C, $0C, $0F
	smpsVcTotalLevel    $00, $00, $00, $2D

;	Voice $03
;	$3D
;	$01, $01, $01, $01, 	$94, $19, $19, $19, 	$0F, $0D, $0D, $0D
;	$07, $04, $04, $04, 	$25, $1A, $1A, $1A, 	$15, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0D, $0F
	smpsVcDecayRate2    $04, $04, $04, $07
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $00, $00, $00, $15

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

