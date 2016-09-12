TubePanicDrum_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     TubePanicDrum_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $0A

	smpsHeaderDAC       TubePanicDrum_DAC
	smpsHeaderFM        TubePanicDrum_FM1,	$00, $0D
	smpsHeaderFM        TubePanicDrum_FM2,	$00, $17
	smpsHeaderFM        TubePanicDrum_FM3,	$00, $17
	smpsHeaderFM        TubePanicDrum_FM4,	$0C, $11
	smpsHeaderFM        TubePanicDrum_FM5,	$0C, $11
	smpsHeaderFM        TubePanicDrum_FM6,	$0C, $11
	smpsHeaderPSG       TubePanicDrum_PSG1,	$F4, $02, $00, KCVolEnv_0C
	smpsHeaderPSG       TubePanicDrum_PSG2,	$F4, $04, $00, KCVolEnv_0C
	smpsHeaderPSG       TubePanicDrum_PSG3,	$23, $01, $00, KCVolEnv_02
	smpsHeaderPWM       TubePanicDrum_PWM1,	$00, $AA
	smpsHeaderPWM       TubePanicDrum_PWM2,	$00, $CC
	smpsHeaderPWM       TubePanicDrum_PWM3,	$00, $AA
	smpsHeaderPWM       TubePanicDrum_PWM4,	$00, $88

; Dummy DAC data
TubePanicDrum_DAC:
	smpsStop

; FM1 Data
TubePanicDrum_FM1:
	smpsSetvoice        $00
	dc.b	nRst, $0C, nC1, $06, nCs1

TubePanicDrum_Loop07:
	smpsCall            TubePanicDrum_Call0F
	smpsLoop            $00, $07, TubePanicDrum_Loop07
	dc.b	nD1, $0C, nD2, nD2, nD1
	smpsChangeTransposition $02

TubePanicDrum_Loop08:
	smpsCall            TubePanicDrum_Call0F
	smpsLoop            $00, $07, TubePanicDrum_Loop08
	smpsChangeTransposition $FE
	dc.b	nE1, $0C, nD2, $06, nEb2, nE2, $0C, nE1
	smpsLoop            $01, $02, TubePanicDrum_Loop07
	smpsCall            TubePanicDrum_Call10
	dc.b	nA1, $0C, nA2, nA2, nA1, nB1, nAb2, $06, nA2, nB2, $18
	smpsCall            TubePanicDrum_Call10
	dc.b	nBb1, $0C, nEb2, nBb2, nBb1, nC2, nF2, $06, nG2, nC3, $18
	smpsJump            TubePanicDrum_Loop07

TubePanicDrum_Call0F:
	dc.b	nD1, $12, nA1, nD2, $0C
	smpsReturn

TubePanicDrum_Call10:
	dc.b	nAb1, $12, nE2, nAb2, $0C, nA1, $12, nE2, nA2, $0C, nA1, $12
	dc.b	nE2, nA2, $0C, nB1, $12, nB2, nBb1, $0C, nAb1, $12, nE2, nAb2
	dc.b	$0C, nA1, $12, nE2, nA2, $0C
	smpsReturn

; FM2 Data
TubePanicDrum_FM2:
	smpsSetvoice        $02
	dc.b	nRst, $18

TubePanicDrum_Jump01:
	smpsCall            TubePanicDrum_Call0D
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nB4, $06, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nB4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	smpsCall            TubePanicDrum_Call0D
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nB4, $06, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nB4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nB3, $18, nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	smpsPan             panRight, $00
	dc.b	nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	smpsCall            TubePanicDrum_Call0E
	dc.b	nA4, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nAb4, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nFs4, $18
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nB4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nRst, $06, nB4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $05
	smpsPan             panRight, $00
	dc.b	nRst, $06, nB4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nRst, $06, nB4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	smpsCall            TubePanicDrum_Call0E
	smpsFMAlterVol      $05
	dc.b	nEb4, $18
	smpsFMAlterVol      $FE
	dc.b	nD4
	smpsFMAlterVol      $FD
	dc.b	nF4
	smpsFMAlterVol      $FD
	dc.b	nE4
	smpsFMAlterVol      $03
	smpsJump            TubePanicDrum_Jump01

TubePanicDrum_Call0D:
	dc.b	nRst, $12, nA4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nRst, nA4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nA4, $06, nA4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $1E
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nA4, $06, nA4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $2A
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nA4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $1E
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nRst, $06, nA4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $1E
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nB3, $12, nA4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nB3, $12, nA4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nA4, nA4, nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nA4, $06, nA4, nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nB3, $12, nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nB3, $12, nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nB4, $06, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $1E
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nB4, $06, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $1E
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nB4, $06, $06
	smpsReturn

TubePanicDrum_Call0E:
	dc.b	nRst, $3C, nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nA4, $12, nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	smpsPan             panRight, $00
	dc.b	nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nB4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	smpsReturn

; FM3 Data
TubePanicDrum_FM3:
	smpsSetvoice        $02
	dc.b	nRst, $18

TubePanicDrum_Jump00:
	smpsCall            TubePanicDrum_Call0B
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $08
	smpsPan             panRight, $00
	dc.b	nE4, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	smpsCall            TubePanicDrum_Call0B
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $08
	smpsPan             panRight, $00
	dc.b	nE4, nE4, nRst, $06, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$06
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nE3, $18, nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	smpsPan             panRight, $00
	dc.b	nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	smpsCall            TubePanicDrum_Call0C
	dc.b	nE4, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nCs4, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nB3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nB3, $18
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nRst, $06, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $05
	smpsPan             panRight, $00
	dc.b	nRst, $06, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nRst, $06, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	smpsCall            TubePanicDrum_Call0C
	smpsFMAlterVol      $05
	dc.b	nBb3, $18
	smpsFMAlterVol      $FE
	dc.b	nAb3
	smpsFMAlterVol      $FD
	dc.b	nC4
	smpsFMAlterVol      $FD
	dc.b	nC4
	smpsFMAlterVol      $03
	smpsJump            TubePanicDrum_Jump00

TubePanicDrum_Call0B:
	dc.b	nRst, $12, nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12
	smpsFMAlterVol      $08
	smpsPan             panRight, $00
	dc.b	nRst, nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nD4, $06, nD4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $1E
	smpsFMAlterVol      $08
	smpsPan             panRight, $00
	dc.b	nD4, $06, nD4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $2A
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nD4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $1E
	smpsFMAlterVol      $08
	smpsPan             panRight, $00
	dc.b	nRst, $06, nD4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $1E
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nE3, $12, nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12
	smpsFMAlterVol      $08
	smpsPan             panRight, $00
	dc.b	nE3, $12, nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nD4, nD4, nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $08
	smpsPan             panRight, $00
	dc.b	nD4, nD4, nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nE3, $12, nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $12
	smpsFMAlterVol      $08
	smpsPan             panRight, $00
	dc.b	nE3, $12, nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $06
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nE4, $06, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $1E
	smpsFMAlterVol      $08
	smpsPan             panRight, $00
	dc.b	nE4, $06, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $1E
	smpsFMAlterVol      $F8
	smpsPan             panCenter, $00
	dc.b	nE4, $06, $06
	smpsReturn

TubePanicDrum_Call0C:
	dc.b	nRst, $3C, nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, nE4, $12, nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	smpsPan             panRight, $00
	dc.b	nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $05
	smpsPan             panLeft, $00
	dc.b	nE4, $06
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nRst, $0C
	smpsFMAlterVol      $F1
	smpsPan             panCenter, $00
	smpsReturn

; FM4 Data
TubePanicDrum_FM4:
	smpsSetvoice        $01
	dc.b	nRst, $18

TubePanicDrum_Loop06:
	smpsCall            TubePanicDrum_Call08
	smpsCall            TubePanicDrum_Call08
	smpsChangeTransposition $02
	smpsCall            TubePanicDrum_Call08
	smpsCall            TubePanicDrum_Call08
	smpsChangeTransposition $FE
	smpsLoop            $00, $02, TubePanicDrum_Loop06
	smpsFMAlterVol      $FE
	smpsCall            TubePanicDrum_Call09
	smpsCall            TubePanicDrum_Call0A
	smpsCall            TubePanicDrum_Call09
	dc.b	nA3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nAb3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nFs3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	smpsCall            TubePanicDrum_Call09
	smpsCall            TubePanicDrum_Call0A
	smpsCall            TubePanicDrum_Call09
	smpsFMAlterVol      $02
	dc.b	nF3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nG3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	smpsJump            TubePanicDrum_Loop06

TubePanicDrum_Call08:
	dc.b	nRst, $0C, nA3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C, nRst, $0C, nG3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nA3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsReturn

TubePanicDrum_Call09:
	dc.b	nRst, $0C, nAb3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nA3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nAb3, $0C
	smpsReturn

TubePanicDrum_Call0A:
	dc.b	nA3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nCs4, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB3, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	nB3, $18
	smpsReturn

; FM5 Data
TubePanicDrum_FM5:
	smpsSetvoice        $01
	smpsPan             panRight, $00
	dc.b	nRst, $18

TubePanicDrum_Loop05:
	smpsCall            TubePanicDrum_Call05
	smpsCall            TubePanicDrum_Call05
	smpsChangeTransposition $02
	smpsCall            TubePanicDrum_Call05
	smpsCall            TubePanicDrum_Call05
	smpsChangeTransposition $FE
	smpsLoop            $00, $02, TubePanicDrum_Loop05
	smpsCall            TubePanicDrum_Call06
	smpsCall            TubePanicDrum_Call07
	smpsCall            TubePanicDrum_Call06
	dc.b	nE3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nEb3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	smpsCall            TubePanicDrum_Call06
	smpsCall            TubePanicDrum_Call07
	smpsCall            TubePanicDrum_Call06
	dc.b	nEb3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nD3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nF3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	smpsJump            TubePanicDrum_Loop05

TubePanicDrum_Call05:
	dc.b	nRst, $0C, nG3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nFs3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C, nRst, $0C, nE3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nFs3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsReturn

TubePanicDrum_Call06:
	dc.b	nRst, $0C, nE3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsReturn

TubePanicDrum_Call07:
	dc.b	nE3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nA3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nFs3, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	nFs3, $18
	smpsReturn

; FM6 Data
TubePanicDrum_FM6:
	smpsSetvoice        $01
	smpsPan             panLeft, $00
	dc.b	nRst, $18

TubePanicDrum_Loop04:
	smpsCall            TubePanicDrum_Call02
	smpsCall            TubePanicDrum_Call02
	smpsChangeTransposition $02
	smpsCall            TubePanicDrum_Call02
	smpsCall            TubePanicDrum_Call02
	smpsChangeTransposition $FE
	smpsLoop            $01, $02, TubePanicDrum_Loop04
	smpsCall            TubePanicDrum_Call03
	smpsCall            TubePanicDrum_Call04
	smpsCall            TubePanicDrum_Call03
	dc.b	nCs3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nCs3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nFs3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	smpsCall            TubePanicDrum_Call03
	smpsCall            TubePanicDrum_Call04
	smpsCall            TubePanicDrum_Call03
	dc.b	nBb2, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nC3, $12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$12
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	smpsJump            TubePanicDrum_Loop04

TubePanicDrum_Call02:
	dc.b	nRst, $0C, nC3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsLoop            $00, $02, TubePanicDrum_Call02
	smpsReturn

TubePanicDrum_Call03:
	dc.b	nRst, $0C, nB2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nAb2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nB2, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsReturn

TubePanicDrum_Call04:
	dc.b	nCs3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	$0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nE3, $0C
	smpsFMAlterVol      $0F
	dc.b	$06
	smpsFMAlterVol      $F1
	dc.b	nEb3, $06
	smpsFMAlterVol      $0F
	dc.b	$06, nRst
	smpsFMAlterVol      $F1
	dc.b	nEb3, $18
	smpsReturn

; PSG1 Data
TubePanicDrum_PSG1:
	smpsPSGvoice        KCVolEnv_03
	dc.b	nRst, $18

TubePanicDrum_Loop0C:
	smpsCall            TubePanicDrum_Call12
	smpsChangeTransposition $02
	smpsCall            TubePanicDrum_Call12
	smpsChangeTransposition $FE
	smpsLoop            $00, $02, TubePanicDrum_Loop0C

TubePanicDrum_Loop0D:
	smpsCall            TubePanicDrum_Call13
	smpsLoop            $00, $03, TubePanicDrum_Loop0D
	dc.b	nA4, $06, nAb4, nE4, nB3, nRst, $0C, nA4, $06, nAb4, nE4, nB3
	dc.b	nRst, $0C, nA4, $06, nAb4, nE4, nB3, nRst, $0C, nEb4, $06, nD4
	dc.b	nBb3, nF3, nRst, $0C, nF4, $06, nE4, nC4, nG3, nF3, nE3, nC3
	dc.b	nG2
	smpsJump            TubePanicDrum_Loop0C

TubePanicDrum_Call12:
	smpsCall            TubePanicDrum_Call14
	dc.b	nRst, $0C
	smpsCall            TubePanicDrum_Call14
	dc.b	nRst, $0C
	smpsCall            TubePanicDrum_Call14
	dc.b	nRst, $0C
	smpsCall            TubePanicDrum_Call14
	dc.b	nRst, $0C
	smpsCall            TubePanicDrum_Call14
	smpsCall            TubePanicDrum_Call14
	smpsCall            TubePanicDrum_Call14
	dc.b	nRst, $0C
	smpsCall            TubePanicDrum_Call14
	dc.b	nRst, $0C
	smpsCall            TubePanicDrum_Call14
	dc.b	nRst, $0C
	smpsCall            TubePanicDrum_Call14
	dc.b	nRst, $0C
	smpsCall            TubePanicDrum_Call14
	smpsChangeTransposition $F4
	smpsCall            TubePanicDrum_Call14
	smpsChangeTransposition $0C
	smpsReturn

TubePanicDrum_Call14:
	dc.b	nG4, $06, nFs4, nD4, nA3
	smpsReturn

TubePanicDrum_Call13:
	dc.b	nA4, $06, nAb4, nE4, nB3, nRst, $0C, nA4, $06, nAb4, nE4, nB3
	dc.b	nRst, $0C, nA4, $06, nAb4, nE4, nB3, nRst, $0C, nA4, $06, nAb4
	dc.b	nE4, nCs4, nRst, $0C, nE4, $06, nEb4, nB3, nFs3, nE3, nEb3, nB2
	dc.b	nFs2
	smpsReturn

; PSG2 Data
TubePanicDrum_PSG2:
	smpsPSGvoice        KCVolEnv_03
	dc.b	nRst, $18
	smpsDetune          $FE
	dc.b	nRst, $06

TubePanicDrum_Loop0A:
	smpsCall            TubePanicDrum_Call12
	smpsChangeTransposition $02
	smpsCall            TubePanicDrum_Call12
	smpsChangeTransposition $FE
	smpsLoop            $00, $02, TubePanicDrum_Loop0A

TubePanicDrum_Loop0B:
	smpsCall            TubePanicDrum_Call13
	smpsLoop            $00, $03, TubePanicDrum_Loop0B
	dc.b	nA4, $06, nAb4, nE4, nB3, nRst, $0C, nA4, $06, nAb4, nE4, nB3
	dc.b	nRst, $0C, nA4, $06, nAb4, nE4, nB3, nRst, $0C, nEb4, $06, nD4
	dc.b	nBb3, nF3, nRst, $0C, nF4, $06, nE4, nC4, nG3, nF3, nE3, nC3
	dc.b	nG2
	smpsJump            TubePanicDrum_Loop0A

; PSG3 Data
TubePanicDrum_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $18

TubePanicDrum_Loop09:
	smpsCall            TubePanicDrum_Call11
	smpsLoop            $01, $18, TubePanicDrum_Loop09
	smpsJump            TubePanicDrum_Loop09

TubePanicDrum_Call11:
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGAlterVol     $03
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	$06, $06
	smpsLoop            $00, $04, TubePanicDrum_Call11
	smpsReturn

; PWM1 Data
TubePanicDrum_PWM1:
	smpsFMAlterVol      $33
	dc.b	$82, $06, $82
	smpsFMAlterVol      $CD
	dc.b	$81, $0C

TubePanicDrum_Loop03:
	smpsCall            TubePanicDrum_Call00
	smpsCall            TubePanicDrum_Call01
	smpsLoop            $00, $02, TubePanicDrum_Loop03
	smpsCall            TubePanicDrum_Call00
	dc.b	$81, $06
	smpsFMAlterVol      $F8
	dc.b	$91, $80
	smpsFMAlterVol      $08
	smpsFMAlterVol      $33
	dc.b	$82
	smpsFMAlterVol      $CD
	dc.b	$81, $80
	smpsFMAlterVol      $80
	dc.b	$90, $80
	smpsFMAlterVol      $80
	dc.b	$81
	smpsFMAlterVol      $F8
	dc.b	$91, $91, $91
	smpsFMAlterVol      $08
	dc.b	$81, $80
	smpsFMAlterVol      $F8
	dc.b	$91
	smpsFMAlterVol      $08
	smpsFMAlterVol      $33
	dc.b	$82
	smpsFMAlterVol      $CD
	smpsCall            TubePanicDrum_Call00
	dc.b	$81, $06
	smpsFMAlterVol      $F8
	dc.b	$91, $80
	smpsFMAlterVol      $08
	smpsFMAlterVol      $33
	dc.b	$82
	smpsFMAlterVol      $CD
	dc.b	$81, $80
	smpsFMAlterVol      $33
	dc.b	$82, $80
	smpsFMAlterVol      $CD
	dc.b	$81
	smpsFMAlterVol      $33
	dc.b	$82
	smpsFMAlterVol      $CD
	smpsFMAlterVol      $F8
	dc.b	$91
	smpsFMAlterVol      $08
	dc.b	$81
	smpsFMAlterVol      $33
	dc.b	$82, $80, $82, $82
	smpsFMAlterVol      $CD
	smpsLoop            $01, $03, TubePanicDrum_Loop03
	smpsJump            TubePanicDrum_Loop03

TubePanicDrum_Call00:
	dc.b	$81, $06
	smpsFMAlterVol      $F8
	dc.b	$91, $80
	smpsFMAlterVol      $08
	smpsFMAlterVol      $33
	dc.b	$82
	smpsFMAlterVol      $CD
	dc.b	$81, $80
	smpsFMAlterVol      $80
	dc.b	$90, $80
	smpsFMAlterVol      $80
	dc.b	$81
	smpsFMAlterVol      $80
	dc.b	$90, $80, $90
	smpsFMAlterVol      $80
	dc.b	$81
	smpsFMAlterVol      $F8
	dc.b	$91, $80
	smpsFMAlterVol      $08
	smpsFMAlterVol      $80
	dc.b	$90
	smpsFMAlterVol      $80
	smpsReturn

TubePanicDrum_Call01:
	dc.b	$81, $06
	smpsFMAlterVol      $F8
	dc.b	$91, $80
	smpsFMAlterVol      $08
	smpsFMAlterVol      $33
	dc.b	$82
	smpsFMAlterVol      $CD
	dc.b	$81, $80
	smpsFMAlterVol      $80
	dc.b	$90, $80
	smpsFMAlterVol      $80
	dc.b	$81
	smpsFMAlterVol      $F8
	dc.b	$91, $91, $91
	smpsFMAlterVol      $08
	dc.b	$81, $80
	smpsFMAlterVol      $F8
	dc.b	$91
	smpsFMAlterVol      $08
	smpsFMAlterVol      $80
	dc.b	$90
	smpsFMAlterVol      $80
	smpsReturn

; PWM2 Data
TubePanicDrum_PWM2:
	dc.b	$82, $06, $06, $80, $0C

TubePanicDrum_Loop02:
	dc.b	$80, $12, $82, $06, $80, $30, $82, $18, $80, $12, $82, $06
	dc.b	$80, $2A, $82, $06, $18, $80, $12, $82, $06, $80, $30, $82
	dc.b	$18, $80, $12, $82, $06, $80, $2A, $82, $06, $18, $80, $12
	dc.b	$82, $06, $80, $30, $82, $18, $80, $12, $82, $06, $80, $2A
	dc.b	$82, $06, $12, $06, $80, $12, $82, $06, $80, $30, $82, $18
	dc.b	$80, $12, $82, $06, $80, $0C, $82, $0C, $06, $0C, $06, $0C
	dc.b	$06, $06
	smpsLoop            $00, $03, TubePanicDrum_Loop02
	smpsJump            TubePanicDrum_Loop02

; PWM3 Data
TubePanicDrum_PWM3:
	dc.b	$96, $18

TubePanicDrum_Loop01:
	smpsFMAlterVol      $C0
	dc.b	$89, $60
	smpsFMAlterVol      $40
	dc.b	$80, $80, $80
	smpsFMAlterVol      $FC
	dc.b	$83, $60
	smpsFMAlterVol      $04
	dc.b	$80, $80, $80
	smpsLoop            $00, $02, TubePanicDrum_Loop01
	smpsFMAlterVol      $C0
	dc.b	$89, $60
	smpsFMAlterVol      $40
	dc.b	$80, $80, $80
	smpsFMAlterVol      $FC
	dc.b	$83, $60
	smpsFMAlterVol      $04
	dc.b	$80, $80
	smpsFMAlterVol      $C0
	dc.b	$89, $30
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	$83, $30
	smpsFMAlterVol      $04
	smpsJump            TubePanicDrum_Loop01

; PWM4 Data
TubePanicDrum_PWM4:
	dc.b	$80, $18

TubePanicDrum_Loop00:
	smpsFMAlterVol      $FA
	dc.b	$91, $12, $12
	smpsFMAlterVol      $06
	smpsFMAlterVol      $A0
	dc.b	$90, $0C
	smpsFMAlterVol      $60
	smpsFMAlterVol      $FA
	dc.b	$91, $06
	smpsFMAlterVol      $06
	smpsFMAlterVol      $A0
	dc.b	$90, $12
	smpsFMAlterVol      $60
	smpsFMAlterVol      $FA
	dc.b	$91, $06, $06
	smpsFMAlterVol      $06
	smpsFMAlterVol      $A0
	dc.b	$90, $0C
	smpsFMAlterVol      $60
	smpsFMAlterVol      $FA
	dc.b	$91, $12, $12
	smpsFMAlterVol      $06
	smpsFMAlterVol      $A0
	dc.b	$90, $0C
	smpsFMAlterVol      $60
	smpsFMAlterVol      $FA
	dc.b	$91, $06, $06, $06, $06
	smpsFMAlterVol      $06
	smpsFMAlterVol      $A0
	dc.b	$90, $0C
	smpsFMAlterVol      $60
	smpsFMAlterVol      $FA
	dc.b	$91, $06
	smpsFMAlterVol      $06
	smpsFMAlterVol      $A0
	dc.b	$90
	smpsFMAlterVol      $60
	smpsLoop            $00, $0C, TubePanicDrum_Loop00
	smpsJump            TubePanicDrum_Loop00

TubePanicDrum_Voices:
;	Voice $00
;	$4B
;	$12, $12, $23, $62, 	$3F, $9F, $9F, $9F, 	$02, $0C, $13, $07
;	$12, $11, $05, $0A, 	$0F, $3F, $5F, $6F, 	$14, $0D, $15, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $01
	smpsVcUnusedBits    $01
	smpsVcDetune        $06, $02, $01, $01
	smpsVcCoarseFreq    $02, $03, $02, $02
	smpsVcRateScale     $02, $02, $02, $00
	smpsVcAttackRate    $1F, $1F, $1F, $3F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $13, $0C, $02
	smpsVcDecayRate2    $0A, $05, $11, $12
	smpsVcDecayLevel    $06, $05, $03, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $15, $0D, $14

;	Voice $01
;	$3C
;	$02, $14, $03, $00, 	$AF, $FF, $AF, $FF, 	$00, $05, $00, $05
;	$08, $04, $08, $01, 	$4F, $5F, $4F, $1F, 	$20, $80, $25, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $01, $00
	smpsVcCoarseFreq    $00, $03, $04, $02
	smpsVcRateScale     $03, $02, $03, $02
	smpsVcAttackRate    $3F, $2F, $3F, $2F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $00, $05, $00
	smpsVcDecayRate2    $01, $08, $04, $08
	smpsVcDecayLevel    $01, $04, $05, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $25, $00, $20

;	Voice $02
;	$2C
;	$22, $04, $02, $14, 	$51, $52, $50, $52, 	$0D, $00, $06, $04
;	$03, $05, $02, $00, 	$1C, $1F, $2B, $1F, 	$0F, $80, $13, $80
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
	smpsVcReleaseRate   $0F, $0B, $0F, $0C
	smpsVcTotalLevel    $00, $13, $00, $0F

