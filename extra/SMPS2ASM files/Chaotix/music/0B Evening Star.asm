EveningStar_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     EveningStar_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $46

	smpsHeaderDAC       EveningStar_DAC
	smpsHeaderFM        EveningStar_FM1,	$00, $0A
	smpsHeaderFM        EveningStar_FM2,	$00, $10
	smpsHeaderFM        EveningStar_FM3,	$00, $10
	smpsHeaderFM        EveningStar_FM4,	$00, $10
	smpsHeaderFM        EveningStar_FM5,	$00, $13
	smpsHeaderFM        EveningStar_FM6,	$00, $10
	smpsHeaderPSG       EveningStar_PSG1,	$F4, $01, $00, KCVolEnv_0C
	smpsHeaderPSG       EveningStar_PSG2,	$F4, $02, $00, KCVolEnv_0C
	smpsHeaderPSG       EveningStar_PSG3,	$23, $02, $00, KCVolEnv_02
	smpsHeaderPWM       EveningStar_PWM1,	$00, $AA
	smpsHeaderPWM       EveningStar_PWM2,	$00, $99
	smpsHeaderPWM       EveningStar_PWM3,	$00, $AA
	smpsHeaderPWM       EveningStar_PWM4,	$00, $75

; Dummy DAC data
EveningStar_DAC:
	smpsStop

; FM1 Data
EveningStar_FM1:
	smpsSetvoice        $00
	dc.b	nEb2, $60, nD2, $60, nG1, $60, smpsNoAttack, $30, nG1, $08, nG2, $0C
	dc.b	nG1, $04, nBb1, $08, nA1, $04, nG1, $08, nF1, $04

EveningStar_Loop0D:
	smpsCall            EveningStar_Call0F
	dc.b	nRst, $0C, nG2, nRst, $08, nC2, $04, nD2, $08, nF2, $04, nG1
	dc.b	$04, nF1, nG1, nG2, $08, nG1, $04, nRst, $08, nG2, $04, nRst
	dc.b	$0C, nRst, $18, nRst, $08, nG1, $04, nG2, $08, nF2, $04
	smpsCall            EveningStar_Call0F
	dc.b	nRst, $0C, nG2, $08, nRst, $04, nRst, $08, nG2, $0C, $04, nG1
	dc.b	$08, nG2, $0C, $04, nA1, $08, nA2, $0C, $04, nBb1, $08, nBb2
	dc.b	$0C, $04, nC2, $08, nC3, $0C, $04
	smpsLoop            $00, $02, EveningStar_Loop0D
	smpsJump            EveningStar_Loop0D

EveningStar_Call0F:
	dc.b	nEb2, $04, nD2, nEb2, nEb3, $08, nEb2, $04, nRst, $08, nEb2, $04
	dc.b	nRst, $0C, nRst, $0C, nEb2, nRst, $08, nD2, $04, nEb2, $08, nF2
	dc.b	$04, nD2, $04, nC2, nD2, nD3, $08, nD2, $04, nRst, $18, nRst
	dc.b	$0C, nD2, nRst, $08, nC2, $04, nD2, $08, nF2, $04, nG1, $04
	dc.b	nF1, nG1, nG2, $08, nG1, $04, nRst, $08, nG2, $04, nRst, $0C
	smpsReturn

; FM2 Data
EveningStar_FM2:
	smpsSetvoice        $01
	smpsChangeTransposition $F9
	smpsCall            EveningStar_Call03
	smpsChangeTransposition $04
	smpsCall            EveningStar_Call04
	smpsChangeTransposition $FF
	smpsCall            EveningStar_Call03
	smpsCall            EveningStar_Call05
	smpsChangeTransposition $04
	smpsSetvoice        $02

EveningStar_Loop0C:
	smpsCall            EveningStar_Call09
	dc.b	nRst, $60
	smpsLoop            $00, $02, EveningStar_Loop0C
	smpsJump            EveningStar_Loop0C

EveningStar_Call09:
	dc.b	nF4, $0C, nRst, nG4, nRst, nA4, $03, smpsNoAttack, nBb4, $11, nG4, $04
	dc.b	nRst, $0C, nC5, smpsNoAttack, $08, nRst, $04, nC5, $08, nRst, $04, nC5
	dc.b	$08, nRst, $04, nD5, $08, nRst, $04, nBb4, $03, smpsNoAttack, nC5, $05
	dc.b	nBb4, $04, nRst, $08, nG4, $1C, nF4, $0C, nRst, nG4, nRst, nBb4
	dc.b	$14, nG4, $04, nRst, $0C, nF5, smpsNoAttack, $08, nRst, $04, nG5, $08
	dc.b	nRst, $04, nF5, $08, nE5, $04, nRst, $08, nD5, $34, nRst, $0C
	dc.b	nBb4, $14, nRst, $04, nG4, $08, nRst, $04, nBb4, $14, nC5, $04
	dc.b	nRst, $0C, nF5, smpsNoAttack, $0C, nEb5, nD5, $08, nEb5, $04, nRst, $08
	dc.b	nC5, $03, smpsNoAttack, nD5, $09, nRst, $04, nC5, $0C, nBb4, $08, nC5
	dc.b	$0C, nG4, $04, smpsNoAttack, $14, nD5, $4C
	smpsReturn

; FM3 Data
EveningStar_FM3:
	smpsSetvoice        $01
	smpsCall            EveningStar_Call03
	smpsCall            EveningStar_Call04
	smpsCall            EveningStar_Call03
	smpsCall            EveningStar_Call05
	smpsFMAlterVol      $FB

EveningStar_Loop0B:
	smpsCall            EveningStar_Call03
	smpsCall            EveningStar_Call04
	smpsCall            EveningStar_Call03
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nD4, $0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$08, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsCall            EveningStar_Call0E
	smpsCall            EveningStar_Call03
	smpsCall            EveningStar_Call04
	smpsCall            EveningStar_Call03
	smpsCall            EveningStar_Call05
	smpsLoop            $01, $02, EveningStar_Loop0B
	smpsJump            EveningStar_Loop0B

EveningStar_Call03:
	dc.b	nD4, $08
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$08, $04, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $0C, nD4, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsReturn

EveningStar_Call04:
	dc.b	nRst, $0C, nC4, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$08, $04
	smpsReturn

EveningStar_Call0E:
	smpsFMAlterVol      $FE
	dc.b	nRst, $08, nF3, $04, nG3, $08, nBb3, $0C, nG3, $04, nBb3, $08
	dc.b	nC4, $04
	smpsFMAlterVol      $02
	smpsReturn

EveningStar_Call05:
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b	nD4, $08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsLoop            $00, $08, EveningStar_Call05
	smpsReturn

; FM4 Data
EveningStar_FM4:
	smpsSetvoice        $01
	smpsChangeTransposition $FC
	smpsCall            EveningStar_Call0A
	smpsChangeTransposition $FE
	smpsCall            EveningStar_Call0B
	smpsChangeTransposition $FD
	smpsCall            EveningStar_Call0A
	smpsCall            EveningStar_Call0C
	smpsChangeTransposition $09
	smpsFMAlterVol      $FB

EveningStar_Loop0A:
	smpsChangeTransposition $FC
	smpsCall            EveningStar_Call0A
	smpsChangeTransposition $FE
	smpsCall            EveningStar_Call0B
	smpsChangeTransposition $FD
	smpsCall            EveningStar_Call0A
	smpsChangeTransposition $09
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nF3, $0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$08, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsCall            EveningStar_Call0D
	smpsChangeTransposition $FC
	smpsCall            EveningStar_Call0A
	smpsChangeTransposition $FE
	smpsCall            EveningStar_Call0B
	smpsChangeTransposition $FD
	smpsCall            EveningStar_Call0A
	smpsCall            EveningStar_Call0C
	smpsChangeTransposition $09
	smpsLoop            $01, $02, EveningStar_Loop0A
	smpsJump            EveningStar_Loop0A

EveningStar_Call0D:
	smpsPan             panRight, $00
	smpsFMAlterVol      $08
	dc.b	nRst, $0B, nF3, $04, nG3, $08, nBb3, $0C, nG3, $04, nBb3, $08
	dc.b	nC4, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F8
	smpsReturn

EveningStar_Call0A:
	dc.b	nD4, $08
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$08, $04, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $0C, nD4, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsReturn

EveningStar_Call0B:
	dc.b	nRst, $0C, nC4, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$08, $04
	smpsReturn

EveningStar_Call0C:
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	nD4, $08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsLoop            $00, $08, EveningStar_Call0C
	smpsReturn

; FM5 Data
EveningStar_FM5:
	smpsSetvoice        $02
	dc.b	nRst, $60, nRst, nRst, nRst
	smpsPan             panRight, $00
	smpsModSet          $05, $01, $03, $02

EveningStar_Jump01:
	dc.b	nRst, $04
	smpsCall            EveningStar_Call09
	dc.b	nRst, $60
	smpsCall            EveningStar_Call09
	dc.b	nRst, $5C
	smpsJump            EveningStar_Jump01

; FM6 Data
EveningStar_FM6:
	smpsSetvoice        $01
	smpsFMAlterVol      $05
	smpsDetune          $03
	smpsCall            EveningStar_Call03
	smpsCall            EveningStar_Call04
	smpsCall            EveningStar_Call03
	smpsCall            EveningStar_Call05
	smpsFMAlterVol      $FB
	smpsDetune          $FD
	smpsFMAlterVol      $FB

EveningStar_Loop09:
	smpsCall            EveningStar_Call06
	smpsCall            EveningStar_Call07
	smpsChangeTransposition $03
	smpsCall            EveningStar_Call06
	smpsChangeTransposition $FD
	dc.b	nRst, $0C, nBb3, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04, nRst, $30
	smpsCall            EveningStar_Call06
	smpsCall            EveningStar_Call07
	smpsChangeTransposition $03
	smpsCall            EveningStar_Call06
	smpsChangeTransposition $FD
	smpsCall            EveningStar_Call08
	smpsLoop            $01, $02, EveningStar_Loop09
	smpsJump            EveningStar_Loop09

EveningStar_Call06:
	dc.b	nG3, $08
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$08, $04, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $0C, nG3, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsReturn

EveningStar_Call07:
	dc.b	nRst, $0C, nA3, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04, $08, $04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$0C
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$08, $04
	smpsReturn

EveningStar_Call08:
	dc.b	nRst, $08, nBb3, $04

EveningStar_Loop10:
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b	$08
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsLoop            $00, $07, EveningStar_Loop10
	smpsReturn

; PSG1 Data
EveningStar_PSG1:
	smpsPSGvoice        KCVolEnv_04
	dc.b	nRst, $60, nRst, nRst, nRst, $30, nG3, $0C, nA3, nBb3, $08, nC4
	dc.b	$04, nD4, $08, nEb4, $04

EveningStar_Jump03:
	dc.b	nF4, $60, smpsNoAttack, $18, nEb4, nD4, nEb4, nD4, $60, smpsNoAttack, $18, nC4
	dc.b	nBb3, nC4, nG3, $60, nFs3, $30, nD3, nG3, $60, nG3, $18, nA3
	dc.b	nBb3, nC4, nF4, $60, smpsNoAttack, $18, nEb4, nD4, nEb4, nD4, $60, smpsNoAttack
	dc.b	$30, nRst, $20, nBb3, $04, nC4, $08, nD4, $04, nG3, $60, nFs3
	dc.b	$30, nD3, nG3, $60, nG3, $18, nA3, nBb3, $0C, nC4, nD4, nEb4
	smpsJump            EveningStar_Jump03

; PSG2 Data
EveningStar_PSG2:
	smpsPSGvoice        KCVolEnv_04
	smpsModSet          $04, $01, $01, $03
	dc.b	nRst, $04, nRst, $60, nRst, nRst, nRst, $30, nG3, $0C, nA3, nBb3
	dc.b	$08, nC4, $04, nD4, $08, nEb4, $04

EveningStar_Jump02:
	dc.b	nF4, $60, smpsNoAttack, $18, nEb4, nD4, nEb4, nD4, $60, smpsNoAttack, $18, nC4
	dc.b	nBb3, nC4, nG3, $60, nFs3, $30, nD3, nG3, $60, nG3, $18, nA3
	dc.b	nBb3, nC4, nF4, $60, smpsNoAttack, $18, nEb4, nD4, nEb4, nD4, $60, smpsNoAttack
	dc.b	$30, nRst, $20, nBb3, $04, nC4, $08, nD4, $04, nG3, $60, nFs3
	dc.b	$30, nD3, nG3, $60, nG3, $18, nA3, nBb3, $0C, nC4, nD4, nEb4
	smpsJump            EveningStar_Jump02

; PSG3 Data
EveningStar_PSG3:
	smpsPSGform         $E7

EveningStar_Loop0E:
	smpsCall            EveningStar_Call10
	smpsCall            EveningStar_Call11
	smpsLoop            $01, $02, EveningStar_Loop0E

EveningStar_Loop0F:
	smpsCall            EveningStar_Call10
	smpsCall            EveningStar_Call11
	smpsLoop            $01, $04, EveningStar_Loop0F
	smpsCall            EveningStar_Call10
	smpsCall            EveningStar_Call11
	smpsCall            EveningStar_Call10
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $08, $04, $08, $04, $08, $04
	smpsPSGvoice        KCVolEnv_05
	dc.b	$08
	smpsPSGvoice        KCVolEnv_02
	dc.b	$04, nRst, $18, nRst, $08, (nMaxPSG2-$23)&$FF, $04
	smpsPSGvoice        KCVolEnv_05
	dc.b	$08
	smpsPSGvoice        KCVolEnv_02
	dc.b	$04
	smpsCall            EveningStar_Call10
	smpsCall            EveningStar_Call11
	smpsCall            EveningStar_Call10
	smpsCall            EveningStar_Call11
	smpsJump            EveningStar_Loop0F

EveningStar_Call10:
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $08, $04, $08, $04, $04, $04, $04, $08, $04
	smpsLoop            $00, $02, EveningStar_Call10
	smpsReturn

EveningStar_Call11:
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $08, $04, $08, $04, $04, $04, $04, $08, $04, $08, $04
	dc.b	$08, $04, $04, $04, $04
	smpsPSGvoice        KCVolEnv_05
	dc.b	$0C
	smpsReturn

; PWM1 Data
EveningStar_PWM1:
	dc.b	pwmSilence, $18, pwmAcousticKick, nRst, pwmAcousticKick, nRst, pwmAcousticKick, nRst, pwmAcousticKick, nRst, pwmAcousticKick, nRst
	dc.b	pwmAcousticKick, nRst, pwmAcousticKick, pwmAcousticKick, $0C, $0C, nRst, $08, pwmAcousticKick, $04, nRst, $08
	dc.b	pwmAcousticKick, $04

EveningStar_Loop07:
	dc.b	pwmAcousticKick, $0C, $0C, nRst, $24, pwmAcousticKick, $0C, nRst, $08, pwmAcousticKick, $04, nRst
	dc.b	$08, pwmAcousticKick, $04
	smpsLoop            $00, $0B, EveningStar_Loop07
	dc.b	pwmAcousticKick, $0C, pwmAcousticKick, nRst, $38, pwmAcousticKick, $04, nRst, $08, pwmAcousticKick, $04

EveningStar_Loop08:
	dc.b	pwmAcousticKick, $0C, $0C, nRst, $24, pwmAcousticKick, $0C, nRst, $08, pwmAcousticKick, $04, nRst
	dc.b	$08, pwmAcousticKick, $04
	smpsLoop            $00, $04, EveningStar_Loop08
	smpsJump            EveningStar_Loop07

; PWM2 Data
EveningStar_PWM2:
	smpsFMAlterVol      $03
	dc.b	pwmSilence, $18, pwmClap, nRst, pwmClap, nRst, pwmClap, nRst, pwmClap, nRst, pwmClap, nRst
	dc.b	pwmClap, nRst, pwmClap, nRst, $0C
	smpsFMAlterVol      $FD
	dc.b	pwmElectricSnare, $08, $04
	smpsFMAlterVol      $90
	dc.b	pwmLowTom, $08, $04, $08, $04
	smpsFMAlterVol      $70

EveningStar_Loop05:
	smpsCall            EveningStar_Call02
	smpsLoop            $00, $0B, EveningStar_Loop05
	dc.b	nRst, $18, pwmElectricSnare, nRst, $20
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom, $04
	smpsFMAlterVol      $07
	dc.b	pwmMidTom, $08
	smpsFMAlterVol      $90
	dc.b	pwmLowTom, $04
	smpsFMAlterVol      $70

EveningStar_Loop06:
	smpsCall            EveningStar_Call02
	smpsLoop            $00, $04, EveningStar_Loop06
	smpsJump            EveningStar_Loop05

EveningStar_Call02:
	dc.b	nRst, $18, pwmElectricSnare, nRst, pwmElectricSnare, $08
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom, $04
	smpsFMAlterVol      $07
	dc.b	pwmMidTom, $08
	smpsFMAlterVol      $90
	dc.b	pwmLowTom, $04
	smpsFMAlterVol      $70
	smpsReturn

; PWM3 Data
EveningStar_PWM3:
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $60, nRst, pwmCrashCymbal, $60, nRst, $30
	smpsFMAlterVol      $40
	smpsFMAlterVol      $FC
	dc.b	pwmSplashCymbal, $30
	smpsFMAlterVol      $04

EveningStar_Jump00:
	smpsCall            EveningStar_Call01

EveningStar_Loop03:
	dc.b	nRst, pwmClap, nRst, pwmClap
	smpsLoop            $00, $07, EveningStar_Loop03
	smpsCall            EveningStar_Call01
	dc.b	nRst, pwmClap, nRst, pwmClap, nRst, pwmClap, nRst, pwmClap, nRst, pwmClap, $14, $04
	dc.b	nRst, $30

EveningStar_Loop04:
	dc.b	nRst, $18, pwmClap, nRst, pwmClap
	smpsLoop            $00, $04, EveningStar_Loop04
	smpsJump            EveningStar_Jump00

EveningStar_Call01:
	smpsFMAlterVol      $C0
	dc.b	pwmCrashCymbal, $18
	smpsFMAlterVol      $40
	dc.b	pwmClap, nRst, pwmClap
	smpsReturn

; PWM4 Data
EveningStar_PWM4:
	dc.b	pwmSilence, $60
	smpsLoop            $00, $04, EveningStar_PWM4

EveningStar_Loop00:
	smpsCall            EveningStar_Call00
	smpsLoop            $01, $0B, EveningStar_Loop00

EveningStar_Loop01:
	dc.b	pwmElectricHiHat, $08
	smpsFMAlterVol      $CD
	dc.b	$04
	smpsFMAlterVol      $22
	dc.b	$08
	smpsFMAlterVol      $DE
	dc.b	$04
	smpsFMAlterVol      $33
	smpsLoop            $00, $02, EveningStar_Loop01
	dc.b	nRst, $30

EveningStar_Loop02:
	smpsCall            EveningStar_Call00
	smpsLoop            $01, $04, EveningStar_Loop02
	smpsJump            EveningStar_Loop00

EveningStar_Call00:
	dc.b	pwmElectricHiHat, $08
	smpsFMAlterVol      $CD
	dc.b	$04
	smpsFMAlterVol      $22
	dc.b	$08
	smpsFMAlterVol      $DE
	dc.b	$04
	smpsFMAlterVol      $33
	smpsLoop            $00, $04, EveningStar_Call00
	smpsReturn

EveningStar_Voices:
;	Voice $00
;	$09
;	$52, $51, $01, $01, 	$DF, $DF, $9F, $9F, 	$10, $0C, $03, $05
;	$12, $0F, $04, $07, 	$7F, $2F, $4F, $9F, 	$20, $1C, $19, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $05, $05
	smpsVcCoarseFreq    $01, $01, $01, $02
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $03, $0C, $10
	smpsVcDecayRate2    $07, $04, $0F, $12
	smpsVcDecayLevel    $09, $04, $02, $07
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $19, $1C, $20

;	Voice $01
;	$01
;	$75, $75, $71, $31, 	$D5, $55, $96, $94, 	$02, $0B, $05, $0D
;	$0A, $0A, $0F, $06, 	$FF, $2F, $3F, $6F, 	$25, $2B, $0F, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $07
	smpsVcCoarseFreq    $01, $01, $05, $05
	smpsVcRateScale     $02, $02, $01, $03
	smpsVcAttackRate    $14, $16, $15, $15
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $05, $0B, $02
	smpsVcDecayRate2    $06, $0F, $0A, $0A
	smpsVcDecayLevel    $06, $03, $02, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $0F, $2B, $25

;	Voice $02
;	$0D
;	$77, $65, $05, $15, 	$1F, $5F, $5F, $5F, 	$00, $10, $08, $10
;	$00, $03, $05, $04, 	$0F, $FC, $8C, $CC, 	$1F, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $06, $07
	smpsVcCoarseFreq    $05, $05, $05, $07
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $08, $10, $00
	smpsVcDecayRate2    $04, $05, $03, $00
	smpsVcDecayLevel    $0C, $08, $0F, $00
	smpsVcReleaseRate   $0C, $0C, $0C, $0F
	smpsVcTotalLevel    $00, $00, $00, $1F

