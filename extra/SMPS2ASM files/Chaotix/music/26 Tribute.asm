Tribute_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Tribute_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $2C

	smpsHeaderDAC       Tribute_DAC
	smpsHeaderFM        Tribute_FM1,	$00, $0D
	smpsHeaderFM        Tribute_FM2,	$00, $16
	smpsHeaderFM        Tribute_FM3,	$00, $16
	smpsHeaderFM        Tribute_FM4,	$00, $16
	smpsHeaderFM        Tribute_FM5,	$0C, $15
	smpsHeaderFM        Tribute_FM6,	$0C, $17
	smpsHeaderPSG       Tribute_PSG1,	$F4, $03, $00, KCVolEnv_0C
	smpsHeaderPSG       Tribute_PSG2,	$F4, $03, $00, KCVolEnv_0C
	smpsHeaderPSG       Tribute_PSG3,	$23, $02, $00, KCVolEnv_02
	smpsHeaderPWM       Tribute_PWM1,	$00, $AA
	smpsHeaderPWM       Tribute_PWM2,	$00, $BB
	smpsHeaderPWM       Tribute_PWM3,	$00, $BB
	smpsHeaderPWM       Tribute_PWM4,	$00, $32

; Dummy DAC data
Tribute_DAC:
	smpsStop

; FM1 Data
Tribute_FM1:
	smpsSetvoice        $00
	smpsCall            Tribute_Call07
	dc.b	smpsNoAttack, $12, nD2, $06, nRst, $24, nD2, $06, nRst, nRst, nD2, nRst
	dc.b	nD2, smpsNoAttack, $06, nD2, $06, nD3, nD2, nD3, nD2, nRst, nD2, $0C
	dc.b	$06, nD3, nD2, nC2, nCs2, nD2, nF2
	smpsCall            Tribute_Call07
	dc.b	smpsNoAttack, $12, nD2, $06, nRst, $24, nD2, $06, nRst, nRst, nD2, nRst
	dc.b	nG1
	smpsSetTempoMod     $1B
	dc.b	smpsNoAttack, $60, smpsNoAttack, $48, nRst, $18

Tribute_Loop09:
	dc.b	nC2, $18, $0C, $0C, $12, $06, nRst, nC3, nRst, nB1, smpsNoAttack, $18
	dc.b	$0C, $0C, $12, $0C, nG2, $06, nG1, $0C, nA1, $18, $0C, $0C
	dc.b	$12, $06, nRst, nA2, nRst, nG1, smpsNoAttack, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, nC2, nD2, $18, $0C, $0C, $12, $06, nRst, nD3, nRst
	dc.b	nBb1, smpsNoAttack, $0C, $0C, $0C, $0C, $12, $12, nBb2, $06, nRst, nA1
	dc.b	$18, $0C, $0C, $12, $06, nRst, nA2, nRst, nF1, smpsNoAttack, $0C, $0C
	dc.b	$0C, $0C, nE1, $0C, $0C, $0C, nD2
	smpsLoop            $00, $02, Tribute_Loop09
	dc.b	nA1, $24, nAb1, $30, nG1, $0C, smpsNoAttack, $24, nFs1, $30, nF1, $0C
	dc.b	smpsNoAttack, $4E, nRst, $06, nG1, $0C, smpsNoAttack, $60
	smpsCall            Tribute_Call02
	smpsStop

Tribute_Call07:
	dc.b	nD2, $12, $06, nRst, $24, nD2, $06, nRst, nRst, nD2, nRst, nD2
	dc.b	smpsNoAttack, $12, nD2, $06, nRst, $1E, nD3, $06, nD2, nRst, nRst, nD2
	dc.b	nRst, nD2
	smpsReturn

Tribute_Call02:
	dc.b	nRst, $06, nC2, nD2, nG2, nF2, nE2, nG1, nC2, smpsNoAttack, $06, nG2
	dc.b	nF2, nC3, nG2, nC3, nD3, nG3, smpsNoAttack, $06, nF2, nE2, nC2, nF1
	dc.b	nG1, nA1, nC2, smpsNoAttack, $06
	smpsReturn

; FM2 Data
Tribute_FM2:
	smpsSetvoice        $01
	dc.b	nE4, $12, nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nG4
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nF4, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD4
	smpsSetvoice        $02
	smpsChangeTransposition $18
	smpsCall            Tribute_Call06
	smpsSetvoice        $01
	smpsChangeTransposition $E8
	smpsCall            Tribute_Call06
	dc.b	nEb4, $06, smpsNoAttack, $12, $18, nF4, $18, $18
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nE4, $12, nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nG4
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nF4, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD4
	smpsSetvoice        $02
	smpsChangeTransposition $18
	smpsCall            Tribute_Call06
	smpsSetvoice        $01
	smpsChangeTransposition $E8
	smpsCall            Tribute_Call06
	dc.b	nC4, $06, smpsNoAttack, $60, smpsNoAttack, $48, nRst, $18

Tribute_Loop08:
	dc.b	nRst, $18, nE4, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nE4, $0C
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
	dc.b	nD4, smpsNoAttack, $60
	smpsLoop            $00, $03, Tribute_Loop08
	dc.b	nRst, $18, nE4, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nE4, $0C
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
	dc.b	nE4, smpsNoAttack, $30, nD4, $18, nG4
	smpsLoop            $01, $02, Tribute_Loop08
	dc.b	nE4, $1E
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF4, $2A
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nE4, $2A
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nE4, $2A
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nE4, $0C, smpsNoAttack, $4E
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD4, $0C, smpsNoAttack, $60
	smpsCall            Tribute_Call05
	smpsStop

Tribute_Call06:
	dc.b	nE4, $06, smpsNoAttack, $12, nD4, $06
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nG4
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nF4, nE4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nD4
	smpsReturn

Tribute_Call05:
	smpsChangeTransposition $18
	dc.b	nRst, $06, nC2, nD2, nG2, nF2, nE2, nG1, nC2
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG2, nF2, nC3, nG2, nC3, nD3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF2, nE2, nC2, nF1, nG1, nA1, nC2
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	smpsChangeTransposition $E8
	smpsReturn

; FM3 Data
Tribute_FM3:
	smpsSetvoice        $01
	dc.b	nC4, $12, nB3, $06
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nD4
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nC4, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nA3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nB3
	smpsSetvoice        $02
	smpsChangeTransposition $18
	smpsPan             panLeft, $00
	smpsCall            Tribute_Call04
	smpsSetvoice        $01
	smpsChangeTransposition $E8
	smpsPan             panCenter, $00
	smpsCall            Tribute_Call04
	dc.b	nBb3, $06, smpsNoAttack, $12, $18, nC4, $18, $18
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4, $12, nB3, $06
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nD4
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nC4, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nA3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nB3
	smpsSetvoice        $02
	smpsChangeTransposition $18
	smpsPan             panLeft, $00
	smpsCall            Tribute_Call04
	smpsSetvoice        $01
	smpsChangeTransposition $E8
	smpsPan             panCenter, $00
	smpsCall            Tribute_Call04
	dc.b	nA3, $06, smpsNoAttack, $60, smpsNoAttack, $48, nRst, $18

Tribute_Loop07:
	dc.b	nRst, $18, nC4, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$0C
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
	dc.b	nB3, smpsNoAttack, $60
	smpsLoop            $00, $02, Tribute_Loop07
	dc.b	nRst, $18, nC4, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$0C
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
	dc.b	nBb3, smpsNoAttack, $60, nRst, $18, nC4, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$0C
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
	dc.b	nC4, smpsNoAttack, $30, nB3, $18, nD4
	smpsLoop            $01, $02, Tribute_Loop07
	dc.b	nC4, $1E
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4, $2A
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4, $2A
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4, $2A
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nC4, $0C, smpsNoAttack, $4E
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nB3, $0C, smpsNoAttack, $60
	smpsChangeTransposition $F4
	smpsCall            Tribute_Call05
	smpsChangeTransposition $0C
	smpsStop

Tribute_Call04:
	dc.b	nC4, $06, smpsNoAttack, $12, nB3, $06
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nD4
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nC4, nC4
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nA3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nB3
	smpsReturn

; FM4 Data
Tribute_FM4:
	smpsSetvoice        $01
	dc.b	nG3, $12, $06
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nBb3
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nG3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3
	smpsSetvoice        $02
	smpsChangeTransposition $18
	smpsPan             panRight, $00
	smpsCall            Tribute_Call03
	smpsSetvoice        $01
	smpsChangeTransposition $E8
	smpsPan             panCenter, $00
	smpsCall            Tribute_Call03
	dc.b	nG3, $06, smpsNoAttack, $12, $18, nA3, $18, $18
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3, $12, $06
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nBb3
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nG3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3
	smpsSetvoice        $02
	smpsChangeTransposition $18
	smpsPan             panRight, $00
	smpsCall            Tribute_Call03
	smpsSetvoice        $01
	smpsChangeTransposition $E8
	smpsPan             panCenter, $00
	smpsCall            Tribute_Call03
	dc.b	nF3, $06, smpsNoAttack, $60, smpsNoAttack, $48, nRst, $18

Tribute_Loop06:
	dc.b	nRst, $18, nG3, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$0C
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
	dc.b	nG3, smpsNoAttack, $60
	smpsLoop            $00, $02, Tribute_Loop06
	dc.b	nRst, $18, nG3, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$0C
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
	dc.b	nF3, smpsNoAttack, $60, nRst, $18, nG3, $12
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	$0C
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
	dc.b	nA3, smpsNoAttack, $30, nAb3, $18, nB3
	smpsLoop            $01, $02, Tribute_Loop06
	dc.b	nG3, $1E
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nAb3, $2A
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3, $2A
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nA3, $2A
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nA3, $0C, smpsNoAttack, $4E
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3, $0C, smpsNoAttack, $60, nRst, $60
	smpsStop

Tribute_Call03:
	dc.b	nG3, $06, smpsNoAttack, $12, nG3, $06
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nBb3
	smpsFMAlterVol      $0A
	dc.b	$06, nRst
	smpsFMAlterVol      $F6
	dc.b	nG3, nG3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nF3
	smpsFMAlterVol      $0A
	dc.b	$06
	smpsFMAlterVol      $F6
	dc.b	nG3
	smpsReturn

; FM5 Data
Tribute_FM5:
	smpsSetvoice        $02

Tribute_Jump00:
	dc.b	nRst, $60, nRst, nRst, nRst, $0C, nEb4, $06, nF4, nG4, nD5, $12
	dc.b	nRst, $0C, nF4, $06, nG4, nA4, nG5, $12, nRst, $60, nRst, $60
	dc.b	nRst, $5A, nD7, $06, nF6, nE6, nC6, nG5, nF6, nE6, nC6, nG5
	dc.b	nF5, nE5, nC5, nG4, nF4, nE4, nC4, nG3, nF3, $48, nRst, $18

Tribute_Loop05:
	dc.b	nRst, $60, nRst, $0C, nC4, $06, nD4, nG4, nC5, nD5, nG5, nC5
	dc.b	nD5, nG5, nD5, nG5, nC6, nG5, nD5, nRst, $60, nRst, $0C, nC5
	dc.b	$06, nG5, nC5, nD5, nG5, nA5, nC5, nG4, nC5, nD5, nG5, nC5
	dc.b	nD5, nG5, nRst, $60, nRst, $0C, nG4, $06, nA4, nC5, nA4, nC5
	dc.b	nD5, nG5, nF5, nC5, nD5, nG4, nD4, nC5, nD5, nRst, $60, nG5
	dc.b	$06, nF5, nC5, nA4, nG5, nF5, nC5, nA4, nG5, nF5, nD5, nB4
	dc.b	nAb4, nA4, nB4, nD5
	smpsLoop            $00, $02, Tribute_Loop05
	dc.b	nRst, $0C, nG4, $06, nC5, nD5, nE5, nF5, $0C, nRst, $30, nRst
	dc.b	$0C, nG4, $06, nC5, nD5, nE5, nA5, $0C, nRst, $30, nRst, $0C
	dc.b	nA5, nG5, nF5, nE5, $18, nC5, $0C, nD5, smpsNoAttack, $0C, nB4, nC5
	dc.b	nD5, nD4, $06, nG4, nA4, nD5, nG4, nA4, nD5, nG5
	smpsChangeTransposition $18
	smpsCall            Tribute_Call02
	smpsChangeTransposition $E8
	smpsStop

; FM6 Data
Tribute_FM6:
	smpsSetvoice        $02
	smpsPan             panRight, $00
	smpsModSet          $01, $01, $03, $05
	smpsDetune          $04
	dc.b	nRst, $06
	smpsJump            Tribute_Jump00

; PSG1 Data
Tribute_PSG1:
	smpsPSGvoice        KCVolEnv_04
	smpsModSet          $04, $01, $03, $03
	dc.b	nD3, $60, smpsNoAttack, $60, smpsNoAttack, $60, smpsNoAttack, $60, nD3, $60, smpsNoAttack, $60
	dc.b	smpsNoAttack, $5A, nG3, $06, smpsNoAttack, $60, smpsNoAttack, $48, nRst, $18
	smpsModSet          $00, $00, $00, $00
	smpsPSGAlterVol     $FD

Tribute_Jump01:
	smpsPSGvoice        KCVolEnv_08
	smpsCall            Tribute_Call09
	dc.b	smpsNoAttack, $06, nF3, nG3, nA3, nB3, $02, nC4, nB3, nG3, $06, nA3
	dc.b	nB3, nC4, nA3, nB3, nC4, nD4, nE4, nF4, nA4
	smpsCall            Tribute_Call09
	dc.b	smpsNoAttack, $0C, nA3, nB3, nC4, $06, nRst, nD4, $0C, nE4, $06, nRst
	dc.b	nF4, $0C, nD4, $06, nRst, nG4, $1E, nRst, $06, nAb4, $18, nG4
	dc.b	$06, nRst, nF4, nRst, nE4, $0C, smpsNoAttack, $0C, nD4, nC4, $06, nRst
	dc.b	nD4, $18, nA3, $0C, nB3, $06, nRst, nC4, $0C, smpsNoAttack, $3C, nB3
	dc.b	$0C, nC4, $06, nRst, nD4, $0C, smpsNoAttack, $3C, nG4, $0C, nD5, nG5
	smpsChangeTransposition $18
	smpsCall            Tribute_Call02
	smpsChangeTransposition $E8
	smpsStop

Tribute_Call09:
	dc.b	nFs4, $03, nG4, $33, nRst, $06, nB4, nRst, nC5, nD5, nRst, nFs4
	dc.b	$03, nG4, $03, smpsNoAttack, $36, nRst, $06, nE4, nRst, nD4, nC4, nRst
	dc.b	nFs4, $02, nG4, $04, smpsNoAttack, $36, nRst, $06, nB4, nRst, nC5, nD5
	dc.b	nRst, nG4, smpsNoAttack, $12, nRst, $06, nE4, $12, nRst, $06, nD4, $12
	dc.b	nRst, $06, nE4, $0C, nRst, $06, nC4, smpsNoAttack, $36, nRst, $06, nC5
	dc.b	nRst, nB4, nC5, nRst, nC4, smpsNoAttack, $36, nRst, $06, nC5, nRst, nB4
	dc.b	nC5, nRst, nC4, smpsNoAttack, $3C, nE4, $0C, nD4, nC4
	smpsReturn

; PSG2 Data
Tribute_PSG2:
	smpsPSGvoice        KCVolEnv_04
	smpsModSet          $06, $01, $02, $03
	dc.b	nD2, $60, smpsNoAttack, $60, smpsNoAttack, $60, smpsNoAttack, $60, nD2, $60, smpsNoAttack, $60
	dc.b	smpsNoAttack, $5A, nG2, $06, smpsNoAttack, $60, smpsNoAttack, $48, nRst, $18
	smpsPSGAlterVol     $FF
	smpsModSet          $01, $01, $02, $03
	dc.b	nRst, $06
	smpsJump            Tribute_Jump01

; PSG3 Data
Tribute_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $18, $18, $18, $06, $06, $06
	smpsPSGvoice        KCVolEnv_05
	dc.b	$06, nRst, $18
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $18, $18, $06
	smpsPSGvoice        KCVolEnv_05
	dc.b	$06
	smpsPSGvoice        KCVolEnv_02
	dc.b	$06
	smpsPSGvoice        KCVolEnv_05
	dc.b	$06
	smpsPSGvoice        KCVolEnv_02
	dc.b	nRst, $18, (nMaxPSG2-$23)&$FF, $18, $18, $06, $06, $06
	smpsPSGvoice        KCVolEnv_05
	dc.b	$06, nRst, $12, (nMaxPSG2-$23)&$FF, $06
	smpsPSGvoice        KCVolEnv_02
	dc.b	$06
	smpsPSGvoice        KCVolEnv_05
	dc.b	$06
	smpsPSGvoice        KCVolEnv_02
	dc.b	$06
	smpsPSGvoice        KCVolEnv_05
	dc.b	$06
	smpsPSGvoice        KCVolEnv_02
	dc.b	nRst, $0C, (nMaxPSG2-$23)&$FF, $06
	smpsPSGvoice        KCVolEnv_05
	dc.b	$06
	smpsPSGvoice        KCVolEnv_02
	dc.b	$06
	smpsPSGvoice        KCVolEnv_05
	dc.b	$06
	smpsPSGvoice        KCVolEnv_02
	dc.b	$0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $18, $18, $18, $06, $06, $06
	smpsPSGvoice        KCVolEnv_05
	dc.b	$06
	smpsPSGvoice        KCVolEnv_02
	dc.b	nRst, $18, (nMaxPSG2-$23)&$FF, $18, $18, $06
	smpsPSGvoice        KCVolEnv_05
	dc.b	$06
	smpsPSGvoice        KCVolEnv_02
	dc.b	$06
	smpsPSGvoice        KCVolEnv_05
	dc.b	$06
	smpsPSGvoice        KCVolEnv_02
	dc.b	nRst, $18, (nMaxPSG2-$23)&$FF, $18, $18, $06, $06, $06
	smpsPSGvoice        KCVolEnv_05
	dc.b	$06, nRst, $60, nRst

Tribute_Loop0A:
	smpsCall            Tribute_Call08
	dc.b	nRst, $0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $0C, $0C, $0C, $0C, nRst, $18
	smpsCall            Tribute_Call08
	dc.b	nRst, $0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $0C, $0C, nRst, $30
	smpsLoop            $00, $02, Tribute_Loop0A
	dc.b	smpsNoAttack, $18
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, nRst, (nMaxPSG2-$23)&$FF, nRst, (nMaxPSG2-$23)&$FF, nRst, (nMaxPSG2-$23)&$FF, nRst, (nMaxPSG2-$23)&$FF, nRst, (nMaxPSG2-$23)&$FF, nRst
	dc.b	(nMaxPSG2-$23)&$FF
	smpsStop

Tribute_Call08:
	smpsPSGvoice        KCVolEnv_02
	dc.b	$0C, $0C, $0C, $0C, $0C, $06, $06, $06
	smpsPSGvoice        KCVolEnv_05
	dc.b	$06
	smpsPSGvoice        KCVolEnv_02
	dc.b	$06
	smpsPSGvoice        KCVolEnv_05
	dc.b	$06, nRst, $0C
	smpsPSGvoice        KCVolEnv_02
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $0C, $0C, $0C, $0C, $0C, $06, $06
	smpsPSGvoice        KCVolEnv_02
	dc.b	$0C, $0C, $0C, $0C, $0C, $06, $06, $06
	smpsPSGvoice        KCVolEnv_05
	dc.b	$06
	smpsPSGvoice        KCVolEnv_02
	dc.b	$06
	smpsPSGvoice        KCVolEnv_05
	dc.b	$06
	smpsReturn

; PWM1 Data
Tribute_PWM1:
	dc.b	pwmAcousticKick, $5A, $06, nRst, $5A, pwmAcousticKick, $06, nRst, $5A, pwmAcousticKick, $06, nRst
	dc.b	$2A, pwmAcousticKick, $36, pwmAcousticKick, $5A, $06, nRst, $5A, pwmAcousticKick, $06, nRst, $5A
	dc.b	pwmAcousticKick, $06, nRst, $60, nRst, $3C, pwmAcousticKick, $06, $06, nRst, $18

Tribute_Loop04:
	dc.b	pwmAcousticKick, $18, $18, $12, $06, nRst, pwmAcousticKick, nRst, pwmAcousticKick, nRst, $18, pwmAcousticKick
	dc.b	$18, $12, $12, $0C, pwmAcousticKick, $18, $18, $12, $06, nRst, pwmAcousticKick, nRst
	dc.b	pwmAcousticKick, nRst, $18, pwmAcousticKick, pwmAcousticKick, pwmAcousticKick
	smpsLoop            $00, $04, Tribute_Loop04
	dc.b	pwmAcousticKick, $24, $30, $0C, nRst, $24, pwmAcousticKick, $30, $0C, nRst, $54, pwmAcousticKick
	dc.b	$0C, nRst, $60, nRst, $2A, pwmAcousticKick, $06, nRst, $2A, pwmAcousticKick, $06, nRst
	dc.b	$2A, pwmAcousticKick, $06
	smpsStop

; PWM2 Data
Tribute_PWM2:
	dc.b	pwmSilence, $48, pwmElectricSnare, $18, nRst, $48, pwmElectricSnare, $06, pwmMidTom, $06
	smpsFMAlterVol      $90
	dc.b	pwmLowTom, $0C
	smpsFMAlterVol      $70
	dc.b	nRst, $48, pwmElectricSnare, $18, nRst, $30, pwmElectricSnare, $06
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom
	smpsFMAlterVol      $07
	dc.b	pwmMidTom, pwmElectricSnare
	smpsFMAlterVol      $90
	dc.b	pwmLowTom
	smpsFMAlterVol      $70
	dc.b	pwmElectricSnare, pwmElectricSnare, pwmElectricSnare, pwmSilence, $48, pwmElectricSnare, $18, nRst, $48, pwmElectricSnare, $06, pwmMidTom
	dc.b	$06
	smpsFMAlterVol      $90
	dc.b	pwmLowTom, $0C
	smpsFMAlterVol      $70
	dc.b	nRst, $48, pwmElectricSnare, $18, nRst, $60, nRst, $48, pwmElectricSnare, $18

Tribute_Loop03:
	dc.b	nRst, $18, pwmElectricSnare, nRst, pwmElectricSnare, nRst, pwmElectricSnare, nRst, pwmElectricSnare, nRst, pwmElectricSnare, nRst
	dc.b	pwmElectricSnare, nRst, pwmElectricSnare, nRst, pwmElectricSnare, $06
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom
	smpsFMAlterVol      $07
	dc.b	pwmMidTom, pwmElectricSnare, nRst, $18, pwmElectricSnare, nRst, pwmElectricSnare, nRst, pwmElectricSnare, nRst, pwmElectricSnare, nRst
	dc.b	pwmElectricSnare, nRst, pwmElectricSnare, nRst, pwmElectricSnare, nRst, $06
	smpsFMAlterVol      $07
	dc.b	pwmHighTom
	smpsFMAlterVol      $F9
	dc.b	pwmMidTom, pwmElectricSnare, nRst, pwmElectricSnare, pwmElectricSnare, pwmElectricSnare
	smpsLoop            $00, $02, Tribute_Loop03
	dc.b	nRst, $3C, pwmElectricSnare, $0C
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom, $04
	smpsFMAlterVol      $07
	dc.b	pwmMidTom
	smpsFMAlterVol      $90
	dc.b	pwmLowTom
	smpsFMAlterVol      $70
	dc.b	nRst, $0C, nRst, $3C, pwmElectricSnare, $06, pwmElectricSnare, pwmElectricSnare, pwmElectricSnare, nRst, $0C, nRst
	dc.b	$60, nRst, $36
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom, $06
	smpsFMAlterVol      $07
	dc.b	pwmMidTom
	smpsFMAlterVol      $90
	dc.b	pwmLowTom
	smpsFMAlterVol      $70
	dc.b	pwmElectricSnare, pwmElectricSnare, pwmElectricSnare, pwmElectricSnare, nRst, pwmElectricSnare, pwmElectricSnare, pwmElectricSnare, pwmElectricSnare, pwmElectricSnare, pwmElectricSnare, nRst
	dc.b	nRst, pwmElectricSnare
	smpsFMAlterVol      $F9
	dc.b	pwmHighTom
	smpsFMAlterVol      $07
	dc.b	pwmMidTom, pwmElectricSnare
	smpsFMAlterVol      $90
	dc.b	pwmLowTom
	smpsFMAlterVol      $70
	dc.b	pwmElectricSnare, nRst, nRst, pwmElectricSnare, pwmElectricSnare, pwmMidTom, pwmElectricSnare
	smpsFMAlterVol      $90
	dc.b	pwmLowTom
	smpsFMAlterVol      $70
	dc.b	pwmElectricSnare, nRst
	smpsStop

; PWM3 Data
Tribute_PWM3:
	smpsFMAlterVol      $80
	dc.b	pwmCrashCymbal, $60, nRst, $60, nRst, $5A, pwmCrashCymbal, $06, nRst, $2A
	smpsFMAlterVol      $80
	smpsFMAlterVol      $F8
	dc.b	pwmSplashCymbal, $36
	smpsFMAlterVol      $08
	smpsFMAlterVol      $80
	dc.b	pwmCrashCymbal, $60, nRst, $60, nRst, $5A, pwmCrashCymbal, $06, nRst, $60
	smpsFMAlterVol      $80
	dc.b	nRst, $48
	smpsFMAlterVol      $F8
	dc.b	pwmSplashCymbal, $18
	smpsFMAlterVol      $08

Tribute_Loop02:
	smpsFMAlterVol      $80
	dc.b	pwmCrashCymbal, $60, nRst, nRst, nRst, pwmCrashCymbal, nRst, nRst
	smpsFMAlterVol      $80
	dc.b	nRst, $30
	smpsFMAlterVol      $F8
	dc.b	pwmSplashCymbal
	smpsFMAlterVol      $08
	smpsLoop            $00, $02, Tribute_Loop02
	smpsFMAlterVol      $80
	dc.b	pwmCrashCymbal, $24
	smpsFMAlterVol      $80
	smpsFMAlterVol      $F8
	dc.b	pwmSplashCymbal, $30
	smpsFMAlterVol      $08
	smpsFMAlterVol      $80
	dc.b	pwmCrashCymbal, $0C, nRst, $24
	smpsFMAlterVol      $80
	smpsFMAlterVol      $F8
	dc.b	pwmSplashCymbal, $30
	smpsFMAlterVol      $08
	smpsFMAlterVol      $80
	dc.b	pwmCrashCymbal, $0C, nRst, $54
	smpsFMAlterVol      $80
	smpsFMAlterVol      $F8
	dc.b	pwmSplashCymbal, $0C, nRst, $60
	smpsFMAlterVol      $08
	dc.b	nRst, $2A
	smpsFMAlterVol      $80
	dc.b	pwmCrashCymbal, $06, nRst, $2A
	smpsFMAlterVol      $80
	smpsFMAlterVol      $F8
	dc.b	pwmSplashCymbal, $06, nRst, $2A
	smpsFMAlterVol      $80
	dc.b	pwmCrashCymbal, $06, nRst, $60
	smpsFMAlterVol      $80
	smpsStop

; PWM4 Data
Tribute_PWM4:
	smpsCall            Tribute_Call00
	smpsLoop            $01, $04, Tribute_PWM4

Tribute_Loop00:
	smpsCall            Tribute_Call00
	smpsLoop            $01, $03, Tribute_Loop00
	smpsCall            Tribute_Call01

Tribute_Loop01:
	smpsCall            Tribute_Call00
	smpsLoop            $01, $10, Tribute_Loop01
	smpsCall            Tribute_Call00
	smpsCall            Tribute_Call00
	smpsCall            Tribute_Call01
	smpsStop

Tribute_Call00:
	dc.b	pwmElectricHiHat, $06, $06
	smpsFMAlterVol      $44
	dc.b	$06
	smpsFMAlterVol      $BC
	dc.b	$06
	smpsLoop            $00, $04, Tribute_Call00
	smpsReturn

Tribute_Call01:
	dc.b	pwmElectricHiHat, $04
	smpsLoop            $00, $0C, Tribute_Call01
	smpsFMAlterVol      $EF
	smpsLoop            $01, $02, Tribute_Call01
	dc.b	pwmElectricHiHat, $60
	smpsFMAlterVol      $22
	smpsReturn

Tribute_Voices:
;	Voice $00
;	$3B
;	$53, $31, $02, $03, 	$DF, $9F, $5F, $9F, 	$17, $08, $0E, $07
;	$0F, $0E, $0D, $02, 	$5F, $7F, $3F, $5F, 	$0C, $16, $1F, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $05
	smpsVcCoarseFreq    $03, $02, $01, $03
	smpsVcRateScale     $02, $01, $02, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $0E, $08, $17
	smpsVcDecayRate2    $02, $0D, $0E, $0F
	smpsVcDecayLevel    $05, $03, $07, $05
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1F, $16, $0C

;	Voice $01
;	$3D
;	$52, $02, $04, $01, 	$94, $19, $19, $19, 	$11, $0D, $0D, $0D
;	$07, $04, $04, $04, 	$35, $1A, $1A, $1A, 	$0D, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $05
	smpsVcCoarseFreq    $01, $04, $02, $02
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0D, $11
	smpsVcDecayRate2    $04, $04, $04, $07
	smpsVcDecayLevel    $01, $01, $01, $03
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $00, $00, $00, $0D

;	Voice $02
;	$1F
;	$26, $32, $07, $11, 	$9F, $9F, $9F, $9F, 	$06, $07, $09, $07
;	$0D, $0F, $0D, $11, 	$9C, $9C, $9C, $9C, 	$80, $80, $80, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $03, $02
	smpsVcCoarseFreq    $01, $07, $02, $06
	smpsVcRateScale     $02, $02, $02, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $09, $07, $06
	smpsVcDecayRate2    $11, $0D, $0F, $0D
	smpsVcDecayLevel    $09, $09, $09, $09
	smpsVcReleaseRate   $0C, $0C, $0C, $0C
	smpsVcTotalLevel    $00, $00, $00, $00

