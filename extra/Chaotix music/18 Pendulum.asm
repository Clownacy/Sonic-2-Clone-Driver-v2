Pendulum_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Pendulum_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $15

	smpsHeaderDAC       Pendulum_DAC
	smpsHeaderFM        Pendulum_FM1,	$00, $0A
	smpsHeaderFM        Pendulum_FM2,	$00, $08
	smpsHeaderFM        Pendulum_FM3,	$00, $08
	smpsHeaderFM        Pendulum_FM4,	$00, $13
	smpsHeaderFM        Pendulum_FM5,	$00, $13
	smpsHeaderFM        Pendulum_FM6,	$00, $00
	smpsHeaderPSG       Pendulum_PSG1,	$E8, $00, $00, $00
	smpsHeaderPSG       Pendulum_PSG2,	$E8, $03, $00, $00
	smpsHeaderPSG       Pendulum_PSG3,	$23, $03, $00, $00
	smpsHeaderPWM       Pendulum_PWM1,	$00, $FF
	smpsHeaderPWM       Pendulum_PWM2,	$00, $89
	smpsHeaderPWM       Pendulum_PWM3,	$00, $99
	smpsHeaderPWM       Pendulum_PWM4,	$00, $BA

; Dummy DAC data
Pendulum_DAC:
	smpsStop

; FM1 Data
Pendulum_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nRst, $30, nE2, $06, $0C, $06, nEb3, $03, nE3, $09, smpsNoAttack, $0C

Pendulum_Loop0C:
	smpsSetvoice        $00
	smpsFMAlterVol      $FC
	dc.b	nA2, $06
	smpsFMAlterVol      $04
	dc.b	nA2, $0C, nD3, $06, nRst, $06, nE3, $06, nG3, $06, nA3, $06
	dc.b	nEb4, $03, nE4, $09, nG3, $0C, nA3, $18
	smpsFMAlterVol      $FC
	dc.b	nA2, $06
	smpsFMAlterVol      $04
	dc.b	nA2, $0C, nD3, nE3, $06, nG3, nB3, nC4, $0C, nFs3, nG3, $06
	dc.b	nCs3, $12
	smpsFMAlterVol      $FC
	dc.b	nA2, $06
	smpsFMAlterVol      $04
	dc.b	nA2, $0C, nD3, $06, nRst, $06, nE3, $06, nG3, $06, nA3, $06
	dc.b	nEb4, $03, nE4, $09, nG3, $0C, nA3, $18, nB3, $06, nC4, nRst
	dc.b	nBb3, nRst, nA3, nG3, nD3, nF3, $0C, nFs3, $24
	smpsLoop            $00, $03, Pendulum_Loop0C
	smpsFMAlterVol      $FC
	dc.b	nA2, $06
	smpsFMAlterVol      $04
	dc.b	nA2, $0C, nD3, $06, nRst, $06, nE3, $06, nG3, $06, nA3, $06
	dc.b	nEb4, $03, nE4, $09, nG3, $0C, nA3, $18
	smpsFMAlterVol      $FC
	dc.b	nA2, $06
	smpsFMAlterVol      $04
	dc.b	nA2, $0C, nD3, nE3, $06, nG3, nB3, nC4, $0C, nFs3, nG3, $06
	dc.b	nCs3, $12
	smpsFMAlterVol      $FC
	dc.b	nA2, $06
	smpsFMAlterVol      $04
	dc.b	nA2, $0C, nD3, $06, nRst, $06, nE3, $06, nG3, $06, nA3, $06
	dc.b	nEb4, $03, nE4, $09, nG3, $0C, nA3, $18, nB3, $06, nC4, nRst
	dc.b	nBb3, nRst, nA3, nG3, nD3, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	dc.b	nC3
	smpsSetvoice        $01
	smpsFMAlterVol      $05

Pendulum_Loop0D:
	smpsFMAlterVol      $FE
	dc.b	nA2
	smpsFMAlterVol      $02
	dc.b	nE3, nA3, nF2, nC3, nF3, nE3, nC3, nA2, nE3, nA3, nF2, nC3
	dc.b	nF3, nE3, nC3
	smpsLoop            $00, $04, Pendulum_Loop0D
	smpsFMAlterVol      $FE
	dc.b	nBb2
	smpsFMAlterVol      $02
	dc.b	nF3, nBb3, nFs2, nCs3, nFs3, nF3, nCs3, nBb2, nF3, nBb3, nFs2, nCs3
	dc.b	nFs3, nF3, nCs3
	smpsFMAlterVol      $FE
	dc.b	nBb2
	smpsFMAlterVol      $02
	dc.b	nF3, nBb3, nFs2, nCs3, nFs3, nF3, nCs3, nBb2, nF3, nBb3, nFs2, nCs3
	dc.b	nFs3, nF3, nCs3
	smpsFMAlterVol      $FE
	dc.b	nB2
	smpsFMAlterVol      $02
	dc.b	nFs3, nB3, nG2, nD3, nG3, nFs3, nD3, nB2, nFs3, nB3, nG2, nD3
	dc.b	nG3, nFs3, nD3
	smpsFMAlterVol      $FE
	dc.b	nB2
	smpsFMAlterVol      $02
	dc.b	nFs3, nB3, nG2, nD3, nG3, nFs3, nD3, nE2, $06, $0C, $06, nEb3
	dc.b	$03, nE3, $09, smpsNoAttack, $0C
	smpsFMAlterVol      $FB
	smpsJump            Pendulum_Loop0C

; FM2 Data
Pendulum_FM2:
	dc.b	nRst, $60

Pendulum_Loop0B:
	smpsCall            Pendulum_Call02
	smpsChangeTransposition $F4
	dc.b	nRst, $2A, nG5, $06, nRst, nG5, $06, nFs5, $06, nRst, nE5, $03
	dc.b	nRst, nFs5, $06
	smpsFMAlterVol      $07
	dc.b	nFs5, $06, nRst
	smpsFMAlterVol      $F9
	smpsChangeTransposition $0C
	smpsCall            Pendulum_Call02
	dc.b	nRst, $30, nA3, $03, nRst, nB3, nRst, nC4, nRst, nD4, nRst, nE4
	dc.b	nRst, nF4, nRst, nG4, nRst, nAb4, $06
	smpsLoop            $00, $02, Pendulum_Loop0B
	smpsSetvoice        $02
	smpsPan             panRight, $00
	smpsCall            Pendulum_Call03
	smpsJump            Pendulum_Loop0B

Pendulum_Call02:
	dc.b	nRst, $4E
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	dc.b	nE5, $03, nRst, nE5, $03, nRst, nD5, $03
	smpsFMAlterVol      $07
	dc.b	nD5
	smpsFMAlterVol      $F9
	smpsChangeTransposition $F4
	dc.b	nRst, $2A, nG5, $06, nRst, nG5, $06, nFs5, $06, nRst, nE5, $03
	dc.b	nRst, nD5, $06
	smpsFMAlterVol      $07
	dc.b	nD5, $06, nRst
	smpsFMAlterVol      $F9
	smpsChangeTransposition $0C
	dc.b	nRst, $4E, nE5, $03, nRst, nE5, $03, nRst, nD5, $03
	smpsFMAlterVol      $07
	dc.b	nD5
	smpsFMAlterVol      $F9
	smpsReturn

Pendulum_Call03:
	dc.b	nA3, $06, nE4, nA4, nF3, nC4, nF4, nE4, nC4, nA3, nE4, nA4
	dc.b	nF3, nC4, nF4, nE4, nC4
	smpsLoop            $00, $04, Pendulum_Call03
	dc.b	nBb3, nF4, nBb4, nFs3, nCs4, nFs4, nF4, nCs4, nBb3, nF4, nBb4, nFs3
	dc.b	nCs4, nFs4, nF4, nCs4, nBb3, nF4, nBb4, nFs3, nCs4, nFs4, nF4, nCs4
	dc.b	nBb3, nF4, nBb4, nFs3, nCs4, nFs4, nF4, nCs4, nB3, nFs4, nB4, nG3
	dc.b	nD4, nG4, nFs4, nD4, nB3, nFs4, nB4, nG3, nD4, nG4, nFs4, nD4
	dc.b	nB3, nFs4, nB4, nG3, nD4, nG4, nFs4, nD4, nA4, nAb4, nG4, nF4
	dc.b	nE4, nD4, nC4, nB3
	smpsReturn

; FM3 Data
Pendulum_FM3:
	dc.b	nRst, $60

Pendulum_Loop0A:
	smpsCall            Pendulum_Call00
	smpsChangeTransposition $F4
	dc.b	nRst, $2A, nD5, $06, nRst, nD5, $06, nD5, $06, nRst, nC5, $03
	dc.b	nRst, nD5, $06
	smpsFMAlterVol      $09
	dc.b	nD5, $06, nRst
	smpsFMAlterVol      $F7
	smpsChangeTransposition $0C
	smpsCall            Pendulum_Call00
	dc.b	nRst, $30, nF3, $03, nRst, nG3, nRst, nAb3, nRst, nBb3, nRst, nC4
	dc.b	nRst, nCs4, nRst, nEb4, nRst, nE4, $06
	smpsLoop            $00, $02, Pendulum_Loop0A
	smpsSetvoice        $02
	smpsPan             panLeft, $00
	smpsFMAlterVol      $03
	smpsCall            Pendulum_Call01
	smpsFMAlterVol      $FD
	smpsJump            Pendulum_Loop0A

Pendulum_Call00:
	dc.b	nRst, $4E
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	dc.b	nC5, $03, nRst, nC5, $03, nRst, nC5, $03
	smpsFMAlterVol      $09
	dc.b	nC5
	smpsFMAlterVol      $F7
	smpsChangeTransposition $F4
	dc.b	nRst, $2A, nD5, $06, nRst, nD5, $06, nD5, $06, nRst, nC5, $03
	dc.b	nRst, nB4, $06
	smpsFMAlterVol      $09
	dc.b	nB4, $06, nRst
	smpsFMAlterVol      $F7
	smpsChangeTransposition $0C
	dc.b	nRst, $4E, nC5, $03, nRst, nC5, $03, nRst, nC5, $03
	smpsFMAlterVol      $09
	dc.b	nC5
	smpsFMAlterVol      $F7
	smpsReturn

Pendulum_Call01:
	dc.b	nE3, $06, nB3, nE4, nC3, nG3, nC4, nB3, nG3, nE3, nB3, nE4
	dc.b	nC3, nG3, nC4, nB3, nG3
	smpsLoop            $00, $04, Pendulum_Call01
	dc.b	nF3, nC4, nF4, nCs3, nAb3, nCs4, nC4, nAb3, nF3, nC4, nF4, nCs3
	dc.b	nAb3, nCs4, nC4, nAb3, nF3, nC4, nF4, nCs3, nAb3, nCs4, nC4, nAb3
	dc.b	nF3, nC4, nF4, nCs3, nAb3, nCs4, nC4, nAb3, nFs3, nCs4, nFs4, nD3
	dc.b	nA3, nD4, nCs4, nA3, nFs3, nCs4, nFs4, nD3, nA3, nD4, nCs4, nA3
	dc.b	nFs3, nCs4, nFs4, nD3, nA3, nD4, nCs4, nA3, nE4, nEb4, nD4, nC4
	dc.b	nB3, nA3, nG3, nFs3
	smpsReturn

; FM4 Data
Pendulum_FM4:
	smpsPan             panRight, $00
	smpsModSet          $01, $01, $02, $06
	dc.b	nRst, $06, nRst, $60

Pendulum_Loop09:
	smpsSetvoice        $03
	smpsCall            Pendulum_Call02
	smpsChangeTransposition $F4
	dc.b	nRst, $2A, nG5, $06, nRst, nG5, $06, nFs5, $06, nRst, nE5, $03
	dc.b	nRst, nFs5, $06
	smpsFMAlterVol      $07
	dc.b	nFs5, $06, nRst
	smpsFMAlterVol      $F9
	smpsChangeTransposition $0C
	smpsCall            Pendulum_Call02
	dc.b	nRst, $30, nA3, $03, nRst, nB3, nRst, nC4, nRst, nD4, nRst, nE4
	dc.b	nRst, nF4, nRst, nG4, nRst, nAb4, $06
	smpsLoop            $00, $02, Pendulum_Loop09
	smpsSetvoice        $02
	smpsPan             panRight, $00
	smpsFMAlterVol      $03
	smpsCall            Pendulum_Call03
	smpsFMAlterVol      $FD
	smpsJump            Pendulum_Loop09

; FM5 Data
Pendulum_FM5:
	smpsSetvoice        $03
	smpsPan             panRight, $00
	smpsModSet          $01, $01, $02, $06
	dc.b	nRst, $06, nRst, $60

Pendulum_Loop08:
	smpsCall            Pendulum_Call00
	smpsChangeTransposition $F4
	dc.b	nRst, $2A, nD5, $06, nRst, nD5, $06, nD5, $06, nRst, nC5, $03
	dc.b	nRst, nD5, $06
	smpsFMAlterVol      $09
	dc.b	nD5, $06, nRst
	smpsFMAlterVol      $F7
	smpsChangeTransposition $0C
	smpsCall            Pendulum_Call00
	dc.b	nRst, $30, nF3, $03, nRst, nG3, nRst, nAb3, nRst, nBb3, nRst, nC4
	dc.b	nRst, nCs4, nRst, nEb4, nRst, nE4, $06
	smpsLoop            $00, $02, Pendulum_Loop08
	smpsSetvoice        $02
	smpsPan             panLeft, $00
	smpsFMAlterVol      $03
	smpsCall            Pendulum_Call01
	smpsFMAlterVol      $FD
	smpsJump            Pendulum_Loop08

; FM6 Data
Pendulum_FM6:
	smpsStop

; PSG1 Data
Pendulum_PSG1:
	smpsPSGvoice        KCVolEnv_08
	dc.b	nRst, $60

Pendulum_Loop0F:
	smpsPSGAlterVol     $01
	dc.b	nA4, $06, nA4, $03, nRst
	smpsPSGAlterVol     $FF
	dc.b	nA5, $03, nRst, nA4, nRst, nE5, nRst, nA4, nRst, nG5, nRst, nA4
	dc.b	nRst
	smpsPSGAlterVol     $01
	dc.b	nA4, $06, nA4, $03, nRst
	smpsPSGAlterVol     $FF
	dc.b	nA5, $03, nRst, nA4, nRst, nC5, nRst, nD5, nRst, nE5, nRst, nG5
	dc.b	nRst
	smpsPSGAlterVol     $01
	dc.b	nA4, $06, nA4, $03, nRst
	smpsPSGAlterVol     $FF
	dc.b	nA5, $03, nRst, nA4, nRst, nE5, nRst, nA4, nRst, nG5, nRst, nA4
	dc.b	nRst
	smpsPSGAlterVol     $01
	dc.b	nA4, $06, nA4, $03, nRst
	smpsPSGAlterVol     $FF
	dc.b	nA5, $03, nRst, nA4, nRst, nC5, nRst, nB4, nRst, nA4, nRst, nG4
	dc.b	nRst
	smpsLoop            $01, $03, Pendulum_Loop0F
	smpsPSGAlterVol     $01
	dc.b	nA4, $06, nA4, $03, nRst
	smpsPSGAlterVol     $FF
	dc.b	nA5, $03, nRst, nA4, nRst, nE5, nRst, nA4, nRst, nG5, nRst, nA4
	dc.b	nRst
	smpsPSGAlterVol     $01
	dc.b	nA4, $06, nA4, $03, nRst
	smpsPSGAlterVol     $FF
	dc.b	nA5, $03, nRst, nA4, nRst, nC5, nRst, nD5, nRst, nE5, nRst, nG5
	dc.b	nRst
	smpsPSGAlterVol     $01
	dc.b	nA4, $06, nA4, $03, nRst
	smpsPSGAlterVol     $FF
	dc.b	nA5, $03, nRst, nA4, nRst, nE5, nRst, nA4, nRst, nG5, nRst, nA4
	dc.b	nRst, nA4, nRst, nB4, nRst, nC5, nRst, nD5, nRst, nE5, nRst, nF5
	dc.b	nRst, nG5, nRst, nAb5, nRst
	smpsLoop            $00, $02, Pendulum_Loop0F
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60
	dc.b	nRst, $60, nRst, $60
	smpsJump            Pendulum_Loop0F

; PSG2 Data
Pendulum_PSG2:
	smpsPSGvoice        KCVolEnv_08
	smpsModSet          $01, $01, $02, $04
	dc.b	nRst, $60, nRst, $06

Pendulum_Loop0E:
	dc.b	nA4, $06, nA4, nA5, nA4, nE5, nA4, nG5, nA4, nA4, nA4, nA5
	dc.b	nA4, nC5, nD5, nE5, nG5, nA4, $06, nA4, nA5, nA4, nE5, nA4
	dc.b	nG5, nA4, nA4, nA4, nA5, nA4, nC5, nB4, nA4, nG4
	smpsLoop            $01, $03, Pendulum_Loop0E
	dc.b	nA4, $06, nA4, nA5, nA4, nE5, nA4, nG5, nA4, nA4, nA4, nA5
	dc.b	nA4, nC5, nD5, nE5, nG5, nA4, $06, nA4, nA5, nA4, nE5, nA4
	dc.b	nG5, nA4, nA4, nB4, nC5, nD5, nE5, nF5, nG5, nAb5
	smpsLoop            $00, $02, Pendulum_Loop0E
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60
	dc.b	nRst, $60, nRst, $60
	smpsJump            Pendulum_Loop0E

; PSG3 Data
Pendulum_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        KCVolEnv_02
	dc.b	nRst, $60

Pendulum_Jump00:
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGAlterVol     $04
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FD
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $03
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FD
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $03
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FD
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $03
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FC
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $04
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FD
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $03
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FD
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $03
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FD
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $03
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FC
	smpsJump            Pendulum_Jump00

; PWM1 Data
Pendulum_PWM1:
	dc.b	pwmAcousticKick, $18, pwmElectricSnare, $18, pwmElectricSnare, $06, pwmElectricSnare, pwmElectricSnare, pwmElectricSnare, pwmElectricSnare, $0C, pwmElectricSnare
	dc.b	$06, pwmElectricSnare

Pendulum_Loop06:
	dc.b	pwmAcousticKick, $18, pwmElectricSnare, $18, nRst, $18, pwmElectricSnare, $18
	smpsLoop            $00, $07, Pendulum_Loop06
	smpsLoop            $01, $02, Pendulum_PWM1
	dc.b	pwmAcousticKick, $18, pwmElectricSnare, $18, pwmElectricSnare, $06, pwmElectricSnare, pwmElectricSnare, pwmElectricSnare, pwmElectricSnare, $0C, pwmElectricSnare
	dc.b	$06, pwmElectricSnare

Pendulum_Loop07:
	dc.b	pwmAcousticKick, $18, pwmAcousticKick, pwmAcousticKick, pwmAcousticKick
	smpsLoop            $00, $07, Pendulum_Loop07
	dc.b	pwmAcousticKick, $18, pwmAcousticKick, $18, pwmElectricSnare, $06, pwmElectricSnare, pwmElectricSnare, pwmElectricSnare, pwmElectricSnare, pwmElectricSnare, pwmElectricSnare
	dc.b	pwmElectricSnare
	smpsJump            Pendulum_Loop06

; PWM2 Data
Pendulum_PWM2:
	dc.b	pwmSilence, $0C, pwmLowTom, $0C, nRst, $0C, pwmLowTom, $0C, nRst, $30

Pendulum_Loop04:
	dc.b	nRst, $0C, pwmLowTom, nRst, pwmLowTom, nRst, pwmLowTom, nRst, pwmLowTom
	smpsLoop            $00, $07, Pendulum_Loop04
	dc.b	nRst, $0C, pwmLowTom, nRst, pwmLowTom, nRst, $30
	smpsLoop            $01, $02, Pendulum_Loop04

Pendulum_Loop05:
	dc.b	nRst, $60
	smpsLoop            $00, $08, Pendulum_Loop05
	smpsJump            Pendulum_Loop04

; PWM3 Data
Pendulum_PWM3:
	dc.b	pwmSilence, $12, pwmMidTom, $06, nRst, $12, pwmMidTom, $06, nRst, $30

Pendulum_Loop02:
	dc.b	nRst, $12, pwmMidTom, $06, nRst, $12, pwmMidTom, $06, nRst, $12, pwmMidTom, $06
	dc.b	nRst, $18
	smpsLoop            $00, $07, Pendulum_Loop02
	dc.b	nRst, $12, pwmMidTom, $06, nRst, $12, pwmMidTom, $06, nRst, $30
	smpsLoop            $01, $02, Pendulum_Loop02

Pendulum_Loop03:
	dc.b	nRst, $60
	smpsLoop            $00, $08, Pendulum_Loop03
	smpsJump            Pendulum_Loop02

; PWM4 Data
Pendulum_PWM4:
	dc.b	pwmSilence, $60

Pendulum_Loop00:
	dc.b	pwmSilence, $30, pwmLowTom, $18, nRst, $18
	smpsLoop            $00, $07, Pendulum_Loop00
	dc.b	nRst, $60
	smpsLoop            $01, $02, Pendulum_Loop00

Pendulum_Loop01:
	dc.b	nRst, $60
	smpsLoop            $00, $08, Pendulum_Loop01
	smpsJump            Pendulum_Loop00

Pendulum_Voices:
;	Voice $00
;	$3A
;	$20, $23, $60, $00, 	$1E, $1F, $1F, $1F, 	$0A, $0A, $0B, $09
;	$05, $07, $0A, $00, 	$A4, $85, $96, $D7, 	$21, $25, $28, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $06, $02, $02
	smpsVcCoarseFreq    $00, $00, $03, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $0B, $0A, $0A
	smpsVcDecayRate2    $00, $0A, $07, $05
	smpsVcDecayLevel    $0D, $09, $08, $0A
	smpsVcReleaseRate   $07, $06, $05, $04
	smpsVcTotalLevel    $00, $28, $25, $21

;	Voice $01
;	$23
;	$0D, $01, $00, $00, 	$1F, $1F, $1F, $1F, 	$0E, $0D, $09, $09
;	$00, $00, $00, $00, 	$D6, $D6, $D6, $D7, 	$33, $15, $17, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $01, $0D
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $09, $0D, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0D, $0D, $0D, $0D
	smpsVcReleaseRate   $07, $06, $06, $06
	smpsVcTotalLevel    $00, $17, $15, $33

;	Voice $02
;	$3A
;	$01, $01, $03, $02, 	$0D, $07, $07, $19, 	$09, $00, $00, $03
;	$01, $01, $01, $08, 	$52, $02, $03, $38, 	$1A, $23, $1E, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $03, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $19, $07, $07, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $00, $00, $09
	smpsVcDecayRate2    $08, $01, $01, $01
	smpsVcDecayLevel    $03, $00, $00, $05
	smpsVcReleaseRate   $08, $03, $02, $02
	smpsVcTotalLevel    $00, $1E, $23, $1A

;	Voice $03
;	$3A
;	$01, $03, $02, $01, 	$0F, $10, $11, $19, 	$0A, $05, $0A, $05
;	$02, $02, $02, $02, 	$36, $36, $36, $58, 	$19, $1E, $32, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $03, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $19, $11, $10, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $0A, $05, $0A
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $05, $03, $03, $03
	smpsVcReleaseRate   $08, $06, $06, $06
	smpsVcTotalLevel    $00, $32, $1E, $19

