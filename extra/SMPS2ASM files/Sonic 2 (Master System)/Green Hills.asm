S28Bit_GreenHills_Header:
	smpsHeaderStartSong 1, 1
	smpsHeaderVoiceNull
	smpsHeaderChan      $00, $04
	smpsHeaderTempo     $02, $00

	smpsHeaderPSG       S28Bit_GreenHills_PSG1,	$00, $03, $00, $00
	smpsHeaderPSG       S28Bit_GreenHills_PSG2,	$00, $05, $00, $00
	smpsHeaderPSG       S28Bit_GreenHills_PSG3,	$00, $03, $00, $00
	smpsHeaderPSG       S28Bit_GreenHills_PSG4,	$01, $00, $00, $00

; PSG1 Data
S28Bit_GreenHills_PSG1:
	smpsPSGvoice        s28BitTone_04
	smpsChangeTransposition $F4

S28Bit_GreenHills_Loop0E:
	smpsCall            S28Bit_GreenHills_Call04
	smpsLoop            $00, $02, S28Bit_GreenHills_Loop0E
	smpsChangeTransposition $0C

S28Bit_GreenHills_Loop11:
	smpsPSGvoice        s28BitTone_06

S28Bit_GreenHills_Loop0F:
	dc.b	nE3, $06, smpsNoAttack, $02, nD3, $01, nC3, nB2, nA2
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, S28Bit_GreenHills_Loop0F
	smpsPSGAlterVol     $F8
	dc.b	nE2, $03, nA2, nB2, nD3, nE3, $06, smpsNoAttack, $02, nD3, $01, nC3
	dc.b	nB2, nA2, nF3, $01, nFs3, $08, nD3, $09, nCs3, $06

S28Bit_GreenHills_Loop10:
	dc.b	nE3, $06, smpsNoAttack, $02, nD3, $01, nC3, nB2, nA2
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, S28Bit_GreenHills_Loop10
	smpsPSGAlterVol     $F8
	dc.b	nE2, $03, nA2, nB2, nD3, nE3, $06, smpsNoAttack, $02, nD3, $01, nC3
	dc.b	nB2, nA2, nAb3, $01, nA3, $08, nAb3, $09, nD3, $06
	smpsLoop            $02, $02, S28Bit_GreenHills_Loop11
	smpsCall            S28Bit_GreenHills_Call05
	smpsPSGvoice        s28BitTone_08
	dc.b	nBb2, $09, nB2, nBb2, $06, nA2, $09, nG2, nE2, $06, nRst, $06
	dc.b	nE2, nG2, nE2, nG2, nE2, $03, nG2, $05, nRst, $01, nG2, $03
	dc.b	nE2, $06, nD2, $09, nE2
	smpsModSet          $0F, $01, $01, $06
	dc.b	nB1, $42, nRst, $0C
	smpsModSet          $00, $00, $00, $00
	smpsPSGAlterVol     $01
	smpsPSGvoice        s28BitTone_05
	dc.b	nD3, $01, nE3, $04, nRst, $01, nD3, $04, nRst, $02, nD3, $01
	dc.b	nE3, $04, nRst, $01, nD3, $04, nRst, $02
	smpsPSGvoice        s28BitTone_05
	dc.b	nE3, $09, nG3, $03
	smpsPSGAlterVol     $02
	dc.b	nRst, nG3, nRst
	smpsPSGAlterVol     $02
	dc.b	nG3
	smpsPSGAlterVol     $FC
	smpsPSGvoice        s28BitTone_05
	dc.b	nRst, $03, nD3, $01, nE3, $01, nRst, $01, nD3, $04, nRst, $02
	dc.b	nD3, $01, nE3, $04, nRst, $01, nD3, $04, nRst, $02
	smpsPSGvoice        s28BitTone_05
	dc.b	nE3, $09, nG3, $03
	smpsPSGAlterVol     $02
	dc.b	nRst, nG3, nRst
	smpsPSGAlterVol     $02
	dc.b	nG3
	smpsPSGAlterVol     $FC
	smpsPSGAlterVol     $FF
	smpsCall            S28Bit_GreenHills_Call05
	smpsPSGvoice        s28BitTone_08
	dc.b	nBb2, $09, nB2, nBb2, $06, nA2, $09, nG2, nE2, $06, nRst, $06
	dc.b	nE2, nG2, nE2, nG2, nE2, $03, nG2, $05, nRst, $01, nE2, $03
	dc.b	nD2, nE2, nA2, $09, nBb2
	smpsModSet          $0F, $01, $01, $06
	dc.b	nB2, $42, nRst, $0C
	smpsModSet          $00, $00, $00, $00

S28Bit_GreenHills_Loop12:
	smpsPSGvoice        s28BitTone_06
	dc.b	nB3, $06, smpsNoAttack, $02, nBb3, $01, nA3, nAb2, nG2
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, S28Bit_GreenHills_Loop12
	smpsPSGAlterVol     $F8
	smpsLoop            $01, $02, S28Bit_GreenHills_Loop12
	smpsPSGvoice        s28BitTone_06
	dc.b	nG3, $01, nAb3, $05, nAb3, $06, nA3, nAb3, nE3, $09, nB2, nAb3
	dc.b	$0C, nAb3, $06, nA3, nAb3, nE3, $18, nG3, $01, nAb3, $05, nAb3
	dc.b	$06, nA3, nAb3, nE3, $09, nB2, nAb3, $0C, nA3, $06, nBb3, nB3
	dc.b	nE3, $18, nB3, $06, nB3, nA3, $09, nE3, nCs3, $0C, nB3, nB3
	dc.b	$06, nA3, $09, nE3, $09, nCs3, $06, nE3, nFs3, nG3, $1E, nFs3
	dc.b	$0C, nG3, $06, nA3, $09, nG3, nA3, $06, nA3, $01, nB3, $17
	dc.b	nG3, $01, nAb3, $05, nAb3, $06, nA3, nAb3, nE3, $09, nB2, nAb3
	dc.b	$0C, nAb3, $06, nA3, nAb3, nE3, $18, nG3, $01, nAb3, $05, nAb3
	dc.b	$06, nA3, nAb3, nE3, $09, nB2, nAb3, $0C, nA3, $06, nBb3, nB3
	dc.b	nE3, $18, nB3, $06, nB3, nA3, $09, nE3, nCs3, $0C, nB3, nB3
	dc.b	$06, nA3, $09, nE3, $09, nCs3, $06, nE3, nFs3, nG3, $1E, nFs3
	dc.b	$0C, nG3, $06, nA3, $09, nG3, nA3, $06, nA3, $01, nB3, $17
	smpsJump            S28Bit_GreenHills_Loop11

S28Bit_GreenHills_Call01:
	dc.b	nE2, $03, nB1, nD2, nE2, nRst, nB1, nD2, nE2, nFs2, nE2, nD2
	dc.b	nB1, nA2, nAb2, nFs2, nD2
	smpsReturn

S28Bit_GreenHills_Call05:
	smpsPSGvoice        s28BitTone_07
	dc.b	nD2, $01, nE2, $04, nRst, $01, nD2, $04, nRst, $02, nD2, $01
	dc.b	nE2, $04, nRst, $01, nD2, $04, nRst, $02
	smpsPSGvoice        s28BitTone_05
	dc.b	nE2, $09, nG2, $03
	smpsPSGAlterVol     $02
	dc.b	nRst, nG2, nRst
	smpsPSGAlterVol     $02
	dc.b	nG2
	smpsPSGAlterVol     $FC
	dc.b	nRst, $03, nE2, nD2, nRst, nD2, $01, nE2, $04, nRst, $01, nD2
	dc.b	$04, nRst, $02
	smpsPSGvoice        s28BitTone_05
	dc.b	nE2, $09, nG2, nA2, $06
	smpsReturn

; PSG3 Data
S28Bit_GreenHills_PSG3:
	smpsDetune          $FF

S28Bit_GreenHills_Loop04:
	smpsPSGvoice        s28BitTone_07
	dc.b	nE0, $06, nE0, nE1, nE0, $02, nRst, $01, nE0, $06, nE0, nE0
	dc.b	$02, nRst, $01, nE1, $06, nE0, nE0, $06, nE0, nE1, nE0, $02
	dc.b	nRst, $01, nD0, $06, nD0, nD0, $02, nRst, $01, nCs0, $06, nD0
	smpsLoop            $00, $02, S28Bit_GreenHills_Loop04

S28Bit_GreenHills_Loop05:
	smpsPSGvoice        s28BitTone_07
	dc.b	nE0, $06, nE0, nE1, nE0, $02, nRst, $01, nE0, $06, nE0, nE0
	dc.b	$02, nRst, $01, nE1, $06, nE0, nE0, $06, nE0, nE1, nE0, $02
	dc.b	nRst, $01, nD0, $06, nD0, nD0, $02, nRst, $01, nCs0, $06, nD0
	smpsLoop            $00, $04, S28Bit_GreenHills_Loop05

S28Bit_GreenHills_Loop06:
	dc.b	nA0, $06, nA0, nA1, nG0, $02, nRst, $01, nG0, $06, nG0, nG0
	dc.b	$02, nRst, $01, nFs0, $06, nG0
	smpsLoop            $00, $04, S28Bit_GreenHills_Loop06

S28Bit_GreenHills_Loop07:
	dc.b	nE0, $06, nE0, nE1, nE0, $02, nRst, $01, nD0, $06, nD0, nD0
	dc.b	$02, nRst, $01, nCs0, $06, nD0
	smpsLoop            $00, $04, S28Bit_GreenHills_Loop07

S28Bit_GreenHills_Loop08:
	dc.b	nA0, $06, nA0, nA1, nG0, $02, nRst, $01, nG0, $06, nG0, nG0
	dc.b	$02, nRst, $01, nFs0, $06, nG0
	smpsLoop            $00, $04, S28Bit_GreenHills_Loop08

S28Bit_GreenHills_Loop09:
	dc.b	nE0, $06, nE0, nE1, nE0, $02, nRst, $01, nD0, $06, nD0, nD0
	dc.b	$02, nRst, $01, nCs0, $06, nD0
	smpsLoop            $00, $02, S28Bit_GreenHills_Loop09

S28Bit_GreenHills_Loop0A:
	dc.b	nB0, $06, nB0, nB1, nB0, $02, nRst, $01, nA0, $06, nA0, nA0
	dc.b	$02, nRst, $01, nAb0, $06, nA0
	smpsLoop            $00, $02, S28Bit_GreenHills_Loop0A

S28Bit_GreenHills_Loop0B:
	dc.b	nE0, $06, nE0, nE1, nE0, $02, nRst, $01, nE0, $06, nE0, nE0
	dc.b	$02, nRst, $01, nE1, $06, nE0
	smpsLoop            $00, $02, S28Bit_GreenHills_Loop0B

S28Bit_GreenHills_Loop0C:
	dc.b	nD0, $06, nD0, nD1, nD0, $02, nRst, $01, nD0, $06, nD0, nD0
	dc.b	$02, nRst, $01, nD1, $06, nD0
	smpsLoop            $00, $02, S28Bit_GreenHills_Loop0C

S28Bit_GreenHills_Loop0D:
	dc.b	nCs0, $06, nCs0, nCs1, nCs0, $02, nRst, $01, nCs0, $06, nCs0, nCs0
	dc.b	$02, nRst, $01, nCs1, $06, nCs0
	smpsLoop            $00, $02, S28Bit_GreenHills_Loop0D
	dc.b	nC0, $06, nC0, nC1, nC0, $02, nRst, $01, nC0, $06, nC0, nC0
	dc.b	$02, nRst, $01, nC1, $06, nC0, nC0, $06, nC0, nC1, nC0, $02
	dc.b	nRst, $01, nC0, $06, nD0, nD0, $02, nRst, $01, nD1, $06, nD0
	smpsLoop            $01, $02, S28Bit_GreenHills_Loop0B
	smpsJump            S28Bit_GreenHills_Loop05

; PSG2 Data
S28Bit_GreenHills_PSG2:
	smpsChangeTransposition $F4

S28Bit_GreenHills_Loop00:
	smpsPSGvoice        s28BitTone_05
	smpsCall            S28Bit_GreenHills_Call00
	smpsLoop            $00, $02, S28Bit_GreenHills_Loop00

S28Bit_GreenHills_Loop01:
	smpsPSGvoice        s28BitTone_03
	smpsChangeTransposition $0C
	smpsCall            S28Bit_GreenHills_Call01
	smpsChangeTransposition $F4
	smpsLoop            $01, $08, S28Bit_GreenHills_Loop01
	smpsCall            S28Bit_GreenHills_Call02
	smpsChangeTransposition $FB
	smpsCall            S28Bit_GreenHills_Call02
	smpsChangeTransposition $05
	smpsCall            S28Bit_GreenHills_Call02
	smpsChangeTransposition $FB
	smpsCall            S28Bit_GreenHills_Call03
	smpsCall            S28Bit_GreenHills_Call03
	smpsChangeTransposition $07
	smpsCall            S28Bit_GreenHills_Call03
	smpsCall            S28Bit_GreenHills_Call03
	smpsChangeTransposition $FE
	smpsChangeTransposition $F4
	smpsDetune          $FF

S28Bit_GreenHills_Loop02:
	dc.b	nE3, $03, nA3, nB3, nD4, nE4, nA4, nB4, nD5, nE5, nD5, nB4
	dc.b	nA4, nE4, nD4, nB3, nA3
	smpsLoop            $00, $04, S28Bit_GreenHills_Loop02

S28Bit_GreenHills_Loop03:
	dc.b	nE3, nAb3, nA3, nB3, nE4, nAb4, nA4, nB4, nE5, nB4, nA4, nAb4
	dc.b	nE4, nB3, nA3, nAb3
	smpsLoop            $00, $02, S28Bit_GreenHills_Loop03
	dc.b	nE3, nG3, nC4, nD4, nE4, nG4, nC5, nD5, nE5, nD5, nC5, nG4
	dc.b	nE4, nD4, nC4, nG3, nE3, nG3, nC4, nD4, nE4, nG4, nC5, nE5
	dc.b	nFs5, nD5, nA4, nFs4, nD4, nA3, nFs3, nE3
	smpsLoop            $01, $02, S28Bit_GreenHills_Loop02
	smpsDetune          $FF
	smpsChangeTransposition $0C
	smpsJump            S28Bit_GreenHills_Loop01

S28Bit_GreenHills_Call00:
	dc.b	nE2, $06, nB2, nA2, nE2, nB2, $09, nA2, nB2, $06, nRst, $06
	dc.b	nB2, nA2, nRst, nB2, $09, nA2, nB2, $06
	smpsReturn

S28Bit_GreenHills_Call04:
	dc.b	nAb2, $06, nE3, nD3, nAb2, nE3, $09, nD3, nE3, $06, nAb2, $06
	dc.b	nE3, nD3, nAb2, nE3, $09, nD3, nE3, $06
	smpsReturn

S28Bit_GreenHills_Call02:
	dc.b	nA2, $03, nD3, nE3, nA3, nRst, nA2, nD3, nE3, nA3, nRst, nA2
	dc.b	nRst, nA3, nE3, nD3, nA2
	smpsLoop            $00, $04, S28Bit_GreenHills_Call02
	smpsReturn

S28Bit_GreenHills_Call03:
	dc.b	nA2, $03, nD3, nE3, nA3, nRst, nA2, nD3, nE3, nA3, nRst, nA2
	dc.b	nRst, nA3, nE3, nD3, nA2
	smpsReturn

; PSG4 Data
S28Bit_GreenHills_PSG4:
	dc.b	nRst, $0C, dNoise4, nRst, dNoise4, nRst, dNoise4, nRst, dNoise4, dNoise3, dNoise4, dNoise3
	dc.b	dNoise4, dNoise1, $06, dNoise3, dNoise1, $03, nRst, dNoise1, dNoise1, dNoise4, dNoise4, dNoise4
	dc.b	dNoise4, dNoise4, dNoise1, dNoise4, dNoise4

S28Bit_GreenHills_Loop13:
	dc.b	dNoise3, $03, dNoise1, dNoise1, dNoise1, dNoise4, dNoise1, dNoise1, dNoise3, dNoise1, dNoise4, dNoise3
	dc.b	dNoise1, dNoise4, dNoise1, dNoise1, dNoise1, dNoise3, $03, dNoise1, dNoise1, dNoise1, dNoise4, dNoise1
	dc.b	dNoise1, dNoise3, dNoise1, dNoise4, dNoise3, dNoise1, dNoise4, dNoise1, dNoise4, dNoise1
	smpsLoop            $00, $03, S28Bit_GreenHills_Loop13
	dc.b	dNoise3, $03, dNoise1, dNoise1, dNoise1, dNoise4, dNoise1, dNoise1, dNoise3, dNoise1, dNoise4, dNoise3
	dc.b	dNoise1, dNoise4, dNoise1, dNoise1, dNoise1, dNoise4, $03, dNoise1, dNoise1, dNoise1, dNoise4, dNoise1
	dc.b	dNoise1, dNoise3, dNoise1, dNoise4, dNoise3, dNoise1, dNoise4, dNoise4, dNoise4, dNoise4
	smpsJump            S28Bit_GreenHills_Loop13
