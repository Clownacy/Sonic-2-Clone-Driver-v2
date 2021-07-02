TachyTouch_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     TachyTouch_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $55

	smpsHeaderDAC       TachyTouch_DAC
	smpsHeaderFM        TachyTouch_FM1,	$F4, $0E
	smpsHeaderFM        TachyTouch_FM2,	$00, $07
	smpsHeaderFM        TachyTouch_FM3,	$FC, $0A
	smpsHeaderFM        TachyTouch_FM4,	$00, $15
	smpsHeaderFM        TachyTouch_FM5,	$FC, $18
	smpsHeaderFM        TachyTouch_FM6,	$00, $1C
	smpsHeaderPSG       TachyTouch_PSG1,	$E8, $01, $00, $00
	smpsHeaderPSG       TachyTouch_PSG2,	$E8, $02, $00, $00
	smpsHeaderPSG       TachyTouch_PSG3,	$23, $02, $00, $00
	smpsHeaderPWM       TachyTouch_PWM1,	$00, $FF
	smpsHeaderPWM       TachyTouch_PWM2,	$00, $DD
	smpsHeaderPWM       TachyTouch_PWM3,	$00, $BB
	smpsHeaderPWM       TachyTouch_PWM4,	$00, $00

; Dummy DAC data
TachyTouch_DAC:
	smpsStop

; FM1 Data
TachyTouch_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nRst, $40, nRst, $40, nRst, $40, nCs3, $04, nCs3, nCs3, nCs3, nCs3
	dc.b	nCs3, nCs3, nCs3, nCs3, nRst, nCs4, nRst, nC3, $02, nCs3, $0E

TachyTouch_Loop0C:
	dc.b	nEb3, $04, nRst, nEb3, nEb3, nEb3, nRst, nEb3, nEb3, nEb3, nRst, nEb3
	dc.b	nEb3, nEb3, nRst, nEb3, nEb3, nCs3, $04, nRst, nCs3, nCs3, nCs3, nRst
	dc.b	nCs3, nCs3, nCs3, nRst, nCs3, nCs3, nCs3, nRst, nCs3, nCs3
	smpsLoop            $00, $04, TachyTouch_Loop0C
	dc.b	nEb3, $08, nRst, nBb3, nRst, $04, nEb3, $08, nRst, $04, nEb3, $08
	dc.b	nRst, $04, nBb3, $08, nRst, $04, nCs3, $08, nRst, nAb3, nRst, $04
	dc.b	nCs3, $08, nRst, $04, nCs3, $08, nRst, $04, nAb3, $08, nRst, $04
	dc.b	nEb3, $08, nRst, nBb3, nRst, $04, nEb3, $08, nRst, $04, nEb3, $08
	dc.b	nRst, $04, nBb3, $08, nRst, $04, nCs3, $08, nRst, nAb3, nRst, $04
	dc.b	nCs3, $08, nRst, $1C, nEb3, $08, nRst, nBb3, nRst, $04, nEb3, $08
	dc.b	nRst, $04, nEb3, $08, nRst, $04, nBb3, $08, nRst, $04, nCs3, $08
	dc.b	nRst, nAb3, nRst, $04, nCs3, $08, nRst, $04, nCs3, $08, nRst, $04
	dc.b	nAb3, $08, nRst, $04, nEb3, $40, nCs3, $20, nRst, $08, nCs3, nC4
	dc.b	$02, nCs3, $0E
	smpsJump            TachyTouch_Loop0C

; FM2 Data
TachyTouch_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsCall            TachyTouch_Call01
	smpsCall            TachyTouch_Call02

TachyTouch_Loop0B:
	smpsCall            TachyTouch_Call01
	smpsLoop            $00, $03, TachyTouch_Loop0B
	smpsCall            TachyTouch_Call02
	smpsSetvoice        $02
	dc.b	nEb4, $08, nRst, nG4, nRst, nAb4, nRst, $04, nBb4, $08, nRst, $04
	dc.b	nEb4, $08, nRst, nCs4, nF4, nRst, nAb4, nRst, $04, nBb4, $08, nRst
	dc.b	$04, nCs4, $08, nEb4, nRst, nG4, nRst, nAb4, nRst, $04, nBb4, $08
	dc.b	nRst, $04, nEb4, $08, nRst, nCs4, nF4, nRst, nAb4, nRst, $04, nBb4
	dc.b	$08, nRst, $04, nCs4, $08, nEb4, nRst, nG4, nRst, nAb4, nRst, $04
	dc.b	nBb4, $08, nRst, $04, nEb5, $08, nRst, nCs4, nF4, nRst, nAb4, nRst
	dc.b	$04, nBb4, $08, nRst, $04, nCs5, $08, nEb4, nRst, nG4, nRst, nAb4
	dc.b	nRst, $04, nBb4, $08, nRst, $04, nEb5, $08, nRst, nCs4, nF4, nRst
	dc.b	nAb4, nRst, $04, nBb4, $08, nRst, $0C
	smpsJump            TachyTouch_Loop0B

TachyTouch_Call01:
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $04, nG5, $08, nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nC5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nC5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nC5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nC5, $04, nF5, $08
	smpsReturn

TachyTouch_Call02:
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $04, nG5, $08, nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nC5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nF4, $04, nRst, $20
	smpsReturn

; FM3 Data
TachyTouch_FM3:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsCall            TachyTouch_Call01
	smpsCall            TachyTouch_Call02

TachyTouch_Loop0A:
	smpsCall            TachyTouch_Call01
	smpsLoop            $00, $03, TachyTouch_Loop0A
	smpsCall            TachyTouch_Call02
	smpsSetvoice        $02
	smpsChangeTransposition $FF
	dc.b	nEb4, $08, nRst, nG4, nRst, nAb4, nRst, $04, nBb4, $08, nRst, $04
	dc.b	nEb4, $08, nRst, nCs4, nF4, nRst, nAb4, nRst, $04, nBb4, $08, nRst
	dc.b	$04, nCs4, $08, nEb4, nRst, nG4, nRst, nAb4, nRst, $04, nBb4, $08
	dc.b	nRst, $04, nEb4, $08, nRst, nCs4, nF4, nRst, nAb4, nRst, $04, nBb4
	dc.b	$08, nRst, $04, nCs4, $08, nEb4, nRst, nG4, nRst, nAb4, nRst, $04
	dc.b	nBb4, $08, nRst, $04, nEb5, $08, nRst, nCs4, nF4, nRst, nAb4, nRst
	dc.b	$04, nBb4, $08, nRst, $04, nCs5, $08, nEb4, nRst, nG4, nRst, nAb4
	dc.b	nRst, $04, nBb4, $08, nRst, $04, nEb5, $08, nRst, nCs4, nF4, nRst
	dc.b	nAb4, nRst, $04, nBb4, $08, nRst, $0C
	smpsChangeTransposition $01
	smpsJump            TachyTouch_Loop0A

; FM4 Data
TachyTouch_FM4:
	smpsSetvoice        $01
	smpsPan             panLeft, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $04
	smpsCall            TachyTouch_Call01
	smpsCall            TachyTouch_Call02

TachyTouch_Loop08:
	smpsCall            TachyTouch_Call01
	smpsLoop            $00, $03, TachyTouch_Loop08
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $04, nG5, $08, nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nC5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nF4, $04, nRst, $1C
	smpsSetvoice        $03
	smpsModSet          $00, $00, $00, $00
	smpsFMAlterVol      $03

TachyTouch_Loop09:
	dc.b	nG4, $40, nF4
	smpsLoop            $00, $04, TachyTouch_Loop09
	dc.b	nRst, $04
	smpsSetvoice        $01
	smpsModSet          $01, $01, $02, $05
	smpsFMAlterVol      $FD
	smpsJump            TachyTouch_Loop08

; FM5 Data
TachyTouch_FM5:
	smpsSetvoice        $01
	smpsPan             panRight, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $04
	smpsCall            TachyTouch_Call01
	smpsCall            TachyTouch_Call02

TachyTouch_Loop06:
	smpsCall            TachyTouch_Call01
	smpsLoop            $00, $03, TachyTouch_Loop06
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $04, nG5, $08, nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nC5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nF4, $04, nRst, $1C
	smpsSetvoice        $03
	smpsChangeTransposition $FF
	smpsFMAlterVol      $03

TachyTouch_Loop07:
	dc.b	nG4, $40, nF4
	smpsLoop            $00, $04, TachyTouch_Loop07
	smpsChangeTransposition $01
	dc.b	nRst, $04
	smpsSetvoice        $01
	smpsModSet          $00, $00, $00, $00
	smpsFMAlterVol      $FD
	smpsJump            TachyTouch_Loop06

; FM6 Data
TachyTouch_FM6:
	smpsPan             panCenter, $00
	dc.b	nRst, $40, $40, $40, $40
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $04

TachyTouch_Loop05:
	smpsSetvoice        $04
	dc.b	nBb5, $03, nRst, $01, nBb5, $03, nRst, $01, nBb5, $03, nRst, $01
	dc.b	nF5, $03, nRst, $01, nBb5, $03, nRst, $01, nBb5, $03, nRst, $01
	dc.b	nBb5, $03, nRst, $01, nF5, $03, nRst, $01, nD5, $03, nRst, $01
	dc.b	nD5, $03, nRst, $01, nD5, $03, nRst, $01, nF5, $03, nRst, $01
	dc.b	nD5, $03, nRst, $01, nD5, $03, nRst, $01, nD5, $03, nRst, $01
	dc.b	nF5, $03, nRst, $01, nAb5, $03, nRst, $01, nAb5, $03, nRst, $01
	dc.b	nAb5, $03, nRst, $01, nEb5, $03, nRst, $01, nAb5, $03, nRst, $01
	dc.b	nAb5, $03, nRst, $01, nAb5, $03, nRst, $01, nEb5, $03, nRst, $01
	dc.b	nC5, $03, nRst, $01, nC5, $03, nRst, $01, nC5, $03, nRst, $01
	dc.b	nEb5, $03, nRst, $01, nC5, $03, nRst, $01, nC5, $03, nRst, $01
	dc.b	nC5, $03, nRst, $01, nEb5, $03, nRst, $01
	smpsLoop            $00, $04, TachyTouch_Loop05
	smpsSetvoice        $02
	dc.b	nEb4, $08, nRst, nG4, nRst, nAb4, nRst, $04, nBb4, $08, nRst, $04
	dc.b	nEb4, $08, nRst, nCs4, nF4, nRst, nAb4, nRst, $04, nBb4, $08, nRst
	dc.b	$04, nCs4, $08, nEb4, nRst, nG4, nRst, nAb4, nRst, $04, nBb4, $08
	dc.b	nRst, $04, nEb4, $08, nRst, nCs4, nF4, nRst, nAb4, nRst, $04, nBb4
	dc.b	$08, nRst, $04, nCs4, $08, nEb4, nRst, nG4, nRst, nAb4, nRst, $04
	dc.b	nBb4, $08, nRst, $04, nEb5, $08, nRst, nCs4, nF4, nRst, nAb4, nRst
	dc.b	$04, nBb4, $08, nRst, $04, nCs5, $08, nEb4, nRst, nG4, nRst, nAb4
	dc.b	nRst, $04, nBb4, $08, nRst, $04, nEb5, $08, nRst, nCs4, nF4, nRst
	dc.b	nAb4, nRst, $04, nBb4, $08, nRst, $0C
	smpsJump            TachyTouch_Loop05

; PSG1 Data
TachyTouch_PSG1:
	smpsPSGvoice        KCVolEnv_08
	dc.b	nRst, $40, $40, $40, $40

TachyTouch_Loop12:
	dc.b	nBb5, $02, nRst, nBb5, nRst, nBb5, nRst, nF5, nRst, nBb5, nRst, nBb5
	dc.b	nRst, nBb5, nRst, nF5, nRst, nD5, nRst, nD5, nRst, nD5, nRst, nF5
	dc.b	nRst, nD5, nRst, nD5, nRst, nD5, nRst, nF5, nRst, nAb5, nRst, nAb5
	dc.b	nRst, nAb5, nRst, nEb5, nRst, nAb5, nRst, nAb5, nRst, nAb5, nRst, nEb5
	dc.b	nRst, nC5, nRst, nC5, nRst, nC5, nRst, nEb5, nRst, nC5, nRst, nC5
	dc.b	nRst, nC5, nRst, nEb5, nRst
	smpsLoop            $00, $04, TachyTouch_Loop12
	smpsPSGAlterVol     $FF

TachyTouch_Loop13:
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06, nCs5, $02, nRst, $06
	dc.b	nBb4, $02, nRst, nEb5, nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, $06
	smpsLoop            $00, $04, TachyTouch_Loop13

TachyTouch_Loop14:
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06, nCs5, $02, nRst, $06
	dc.b	nBb4, $02, nRst, nEb5, nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nF5, $02, nRst, $06, nEb5, $02, nRst, $06
	dc.b	nBb4, $02, nRst, $06, nCs5, $02, nRst, $06, nBb4, $02, nRst, nEb5
	dc.b	nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06, nCs5, $02, nRst, $06
	dc.b	nBb4, $02, nRst, $06
	smpsLoop            $00, $02, TachyTouch_Loop14
	smpsPSGAlterVol     $01
	smpsJump            TachyTouch_Loop12

; PSG2 Data
TachyTouch_PSG2:
	smpsPSGvoice        KCVolEnv_08
	dc.b	nRst, $40, nRst, $40, nRst, $40, nRst, $40

TachyTouch_Loop0F:
	smpsChangeTransposition $FE
	dc.b	nBb5, $02, nRst, nBb5, nRst, nBb5, nRst, nF5, nRst, nBb5, nRst, nBb5
	dc.b	nRst, nBb5, nRst, nF5, nRst, nD5, nRst, nD5, nRst, nD5, nRst, nF5
	dc.b	nRst, nD5, nRst, nD5, nRst, nD5, nRst, nF5, nRst, nAb5, nRst, nAb5
	dc.b	nRst, nAb5, nRst, nEb5, nRst, nAb5, nRst, nAb5, nRst, nAb5, nRst, nEb5
	dc.b	nRst, nC5, nRst, nC5, nRst, nC5, nRst, nEb5, nRst, nC5, nRst, nC5
	dc.b	nRst, nC5, nRst, nEb5, nRst
	smpsChangeTransposition $02
	smpsLoop            $00, $04, TachyTouch_Loop0F
	smpsPSGAlterVol     $03
	smpsModSet          $01, $01, $03, $06
	dc.b	nRst, $08

TachyTouch_Loop10:
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06, nCs5, $02, nRst, $06
	dc.b	nBb4, $02, nRst, nEb5, nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, $06
	smpsLoop            $00, $03, TachyTouch_Loop10
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06, nCs5, $02, nRst, $06
	dc.b	nBb4, $02, nRst, nEb5, nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06
	smpsModSet          $00, $00, $00, $00
	smpsPSGAlterVol     $FD
	smpsPSGAlterVol     $FE

TachyTouch_Loop11:
	smpsChangeTransposition $07
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06, nCs5, $02, nRst, $06
	dc.b	nBb4, $02, nRst, nEb5, nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nF5, $02, nRst, $06, nEb5, $02, nRst, $06
	dc.b	nBb4, $02, nRst, $06, nCs5, $02, nRst, $06, nBb4, $02, nRst, nEb5
	dc.b	nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06, nCs5, $02, nRst, $06
	dc.b	nBb4, $02, nRst, $06
	smpsChangeTransposition $F9
	smpsLoop            $00, $02, TachyTouch_Loop11
	smpsPSGAlterVol     $02
	smpsJump            TachyTouch_Loop0F

; PSG3 Data
TachyTouch_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        KCVolEnv_02

TachyTouch_Loop0D:
	dc.b	nRst, $08, (nMaxPSG2-$23)&$FF, $04, (nMaxPSG2-$23)&$FF, nRst, $08, (nMaxPSG2-$23)&$FF, $04, (nMaxPSG2-$23)&$FF, nRst, $08
	dc.b	(nMaxPSG2-$23)&$FF, $04, (nMaxPSG2-$23)&$FF, nRst, $04, (nMaxPSG2-$23)&$FF, nRst, $08
	smpsLoop            $00, $04, TachyTouch_Loop0D
	smpsPSGAlterVol     $FE

TachyTouch_Jump01:
	smpsPSGvoice        KCVolEnv_05
	dc.b	(nMaxPSG2-$23)&$FF, $04
	smpsPSGvoice        KCVolEnv_02
	smpsPSGAlterVol     $03
	dc.b	(nMaxPSG2-$23)&$FF, $04
	smpsPSGAlterVol     $FE
	dc.b	(nMaxPSG2-$23)&$FF, $04
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG2-$23)&$FF, $04
	smpsPSGAlterVol     $FD

TachyTouch_Loop0E:
	dc.b	(nMaxPSG2-$23)&$FF, $04
	smpsPSGAlterVol     $03
	dc.b	(nMaxPSG2-$23)&$FF, $04
	smpsPSGAlterVol     $FE
	dc.b	(nMaxPSG2-$23)&$FF, $04
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG2-$23)&$FF, $04
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, TachyTouch_Loop0E
	smpsJump            TachyTouch_Jump01

; PWM1 Data
TachyTouch_PWM1:
	dc.b	pwmSilence, $40, $40, $40, $40

TachyTouch_Loop03:
	dc.b	pwmAcousticKick, $10, pwmAcousticKick, pwmAcousticKick, pwmAcousticKick, pwmAcousticKick, pwmAcousticKick, pwmAcousticKick, pwmAcousticKick, $0C, pwmAcousticKick, $04
	smpsLoop            $00, $04, TachyTouch_Loop03

TachyTouch_Loop04:
	dc.b	pwmAcousticKick, $10, pwmAcousticKick, pwmAcousticKick, pwmAcousticKick
	smpsLoop            $00, $08, TachyTouch_Loop04
	smpsJump            TachyTouch_Loop03

; PWM2 Data
TachyTouch_PWM2:
	dc.b	pwmSilence, $40, pwmSilence, $40, pwmSilence, $40, pwmSilence, $20, pwmElectricSnare, $04, $08, $04
	dc.b	$08, $08

TachyTouch_Jump00:
	smpsCall            TachyTouch_Call00
	dc.b	nRst, $10, pwmElectricSnare, $0C, $04, nRst, $04, pwmElectricSnare, $04, $08, $10, nRst
	dc.b	$10, pwmElectricSnare, $0C, $04, nRst, $04, pwmElectricSnare, $04, $08, pwmElectricSnare, $08, $04
	dc.b	$04, nRst, $10, pwmElectricSnare, $0C, $04, nRst, $04, pwmElectricSnare, $04, $08, $10
	dc.b	nRst, $10, pwmElectricSnare, $0C, $04, pwmElectricSnare, $04, $08, $04, pwmElectricSnare, $08, $08

TachyTouch_Loop02:
	smpsCall            TachyTouch_Call00
	smpsLoop            $00, $02, TachyTouch_Loop02
	smpsJump            TachyTouch_Jump00

TachyTouch_Call00:
	dc.b	nRst, $10, pwmElectricSnare, $0C, $04, nRst, $04, pwmElectricSnare, $04, $08, $10, nRst
	dc.b	$10, pwmElectricSnare, $0C, $04, nRst, $04, pwmElectricSnare, $04, $08, $08, $04, $04
	dc.b	nRst, $10, pwmElectricSnare, $0C, $04, nRst, $04, pwmElectricSnare, $04, $08, $10, nRst
	dc.b	$10, pwmElectricSnare, $0C, $04, nRst, $04, pwmElectricSnare, pwmElectricSnare, pwmElectricSnare, pwmElectricSnare, $08, $04
	dc.b	$04
	smpsReturn

; PWM3 Data
TachyTouch_PWM3:
	dc.b	nRst, $40, nRst, $40, nRst, $40, nRst, $40

TachyTouch_Loop00:
	dc.b	nRst, $40
	smpsLoop            $00, $08, TachyTouch_Loop00

TachyTouch_Loop01:
	dc.b	pwmRideBell, $08, pwmSilence, pwmRideBell, pwmSilence, pwmRideBell, $08, pwmSilence, $04, pwmRideBell, $04, smpsNoAttack
	dc.b	$04, pwmSilence, pwmRideBell, $08, pwmSilence, $08, pwmRideBell, $04, pwmSilence, pwmRideBell, $08, pwmSilence
	dc.b	pwmRideBell, $08, pwmSilence, $04, pwmRideBell, $04, smpsNoAttack, $04, pwmSilence, pwmRideBell, $04, pwmSilence
	smpsLoop            $00, $03, TachyTouch_Loop01
	dc.b	pwmRideBell, $08, pwmSilence, pwmRideBell, pwmSilence, pwmRideBell, $08, pwmSilence, $04, pwmRideBell, $04, smpsNoAttack
	dc.b	$04, pwmSilence, pwmRideBell, $08, pwmSilence, $08, pwmRideBell, $04, pwmSilence, pwmRideBell, $08, pwmSilence
	dc.b	pwmRideBell, $08, pwmSilence, $04, pwmRideBell, $04, smpsNoAttack, $04, pwmSilence, nRst, $08
	smpsJump            TachyTouch_Loop00

; PWM4 Data
TachyTouch_PWM4:
	smpsStop

TachyTouch_Voices:
;	Voice $00
;	$3D
;	$01, $00, $01, $02, 	$1F, $1F, $1F, $1F, 	$0D, $0C, $0C, $0C
;	$0D, $0A, $0A, $0A, 	$F6, $97, $A7, $A7, 	$1C, $80, $80, $85
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0C, $0C, $0D
	smpsVcDecayRate2    $0A, $0A, $0A, $0D
	smpsVcDecayLevel    $0A, $0A, $09, $0F
	smpsVcReleaseRate   $07, $07, $07, $06
	smpsVcTotalLevel    $05, $00, $00, $1C

;	Voice $01
;	$3A
;	$01, $02, $01, $01, 	$14, $14, $17, $14, 	$0A, $0C, $03, $07
;	$02, $08, $08, $03, 	$07, $E9, $A8, $18, 	$1C, $2B, $28, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $17, $14, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $03, $0C, $0A
	smpsVcDecayRate2    $03, $08, $08, $02
	smpsVcDecayLevel    $01, $0A, $0E, $00
	smpsVcReleaseRate   $08, $08, $09, $07
	smpsVcTotalLevel    $00, $28, $2B, $1C

;	Voice $02
;	$3A
;	$01, $0F, $01, $01, 	$0F, $0F, $0F, $14, 	$0A, $0A, $0A, $05
;	$02, $02, $02, $08, 	$56, $A6, $56, $17, 	$19, $28, $28, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $0F, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $0F, $0F, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $0A, $0A, $0A
	smpsVcDecayRate2    $08, $02, $02, $02
	smpsVcDecayLevel    $01, $05, $0A, $05
	smpsVcReleaseRate   $07, $06, $06, $06
	smpsVcTotalLevel    $00, $28, $28, $19

;	Voice $03
;	$3D
;	$01, $22, $51, $01, 	$0F, $0F, $0F, $4F, 	$0A, $05, $05, $05
;	$00, $00, $00, $00, 	$56, $28, $28, $28, 	$23, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $02, $00
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $01, $00, $00, $00
	smpsVcAttackRate    $0F, $0F, $0F, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $02, $02, $05
	smpsVcReleaseRate   $08, $08, $08, $06
	smpsVcTotalLevel    $00, $00, $00, $23

;	Voice $04
;	$39
;	$02, $01, $02, $01, 	$5F, $5F, $1F, $0F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $76, 	$1B, $32, $28, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $02
	smpsVcRateScale     $00, $00, $01, $01
	smpsVcAttackRate    $0F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $07, $00, $00, $00
	smpsVcReleaseRate   $06, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $28, $32, $1B

