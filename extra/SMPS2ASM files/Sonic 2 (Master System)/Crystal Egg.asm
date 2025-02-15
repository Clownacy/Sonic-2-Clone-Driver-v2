S28Bit_CrystalEgg_Header:
	smpsHeaderStartSong 1, 1
	smpsHeaderVoiceNull
	smpsHeaderChan      $00, $04
	smpsHeaderTempo     $02, $00

	smpsHeaderPSG       S28Bit_CrystalEgg_PSG1,	$00, $04, $00, $00
	smpsHeaderPSG       S28Bit_CrystalEgg_PSG2,	$00, $04, $00, $00
	smpsHeaderPSG       S28Bit_CrystalEgg_PSG3,	$00, $04, $00, $00
	smpsHeaderPSG       S28Bit_CrystalEgg_PSG4,	$01, $00, $00, $00

; PSG1 Data
S28Bit_CrystalEgg_PSG1:
	smpsPSGvoice        s28BitTone_08
	dc.b	nG2, $02, nD3, nB2, nC3, nD3, $08, nD3, $02, nC3, nA2, nB2
	dc.b	nG2, $08
	smpsLoop            $00, $04, S28Bit_CrystalEgg_PSG1

S28Bit_CrystalEgg_Loop06:
	dc.b	nF2, $02, nC3, nA2, nBb2, nC3, $08, nC3, $02, nBb2, nG2, nA2
	dc.b	nF2, $08
	smpsLoop            $00, $04, S28Bit_CrystalEgg_Loop06

S28Bit_CrystalEgg_Loop07:
	dc.b	nG2, $02, nD3, nB2, nC3, nD3, $08, nD3, $02, nC3, nA2, nB2
	dc.b	nG2, $08
	smpsLoop            $00, $04, S28Bit_CrystalEgg_Loop07

S28Bit_CrystalEgg_Loop08:
	dc.b	nF2, $02, nC3, nA2, nBb2, nC3, $08, nC3, $02, nBb2, nG2, nA2
	dc.b	nF2, $08
	smpsLoop            $00, $04, S28Bit_CrystalEgg_Loop08

S28Bit_CrystalEgg_Loop09:
	smpsCall            S28Bit_CrystalEgg_Call04
	dc.b	nB2, $10
	smpsCall            S28Bit_CrystalEgg_Call04
	dc.b	nB2, $08, nC3
	smpsCall            S28Bit_CrystalEgg_Call05
	dc.b	nA2, $08, nC2
	smpsCall            S28Bit_CrystalEgg_Call05
	dc.b	nA2, $10
	smpsCall            S28Bit_CrystalEgg_Call04
	dc.b	nB2, $10
	smpsCall            S28Bit_CrystalEgg_Call04
	dc.b	nB2, $08, nE3
	smpsCall            S28Bit_CrystalEgg_Call06
	dc.b	nA2, $08, nE3
	smpsCall            S28Bit_CrystalEgg_Call06
	dc.b	nA2, $10
	smpsLoop            $00, $02, S28Bit_CrystalEgg_Loop09
	smpsCall            S28Bit_CrystalEgg_Call07
	dc.b	nD2, $08, nD2, nD2, $04
	smpsCall            S28Bit_CrystalEgg_Call07
	dc.b	nB2, $08, nB2, nB2, $04
	smpsCall            S28Bit_CrystalEgg_Call07
	dc.b	nD2, $08, nD2, nD2, $04
	smpsCall            S28Bit_CrystalEgg_Call07
	dc.b	nD3, $08, nD3, nD3, $04
	smpsCall            S28Bit_CrystalEgg_Call07
	dc.b	nD2, $08, nD2, nD2, $04
	smpsCall            S28Bit_CrystalEgg_Call07
	dc.b	nB2, $08, nB2, nB2, $04
	smpsCall            S28Bit_CrystalEgg_Call07
	dc.b	nB2, $08, nB2, nB2, $04, nD3, $08, nD3, nD3, nD3, $04, nD3
	dc.b	$08, nD3, $04, nD3, $08, nD3, nD3
	smpsJump            S28Bit_CrystalEgg_Loop07

S28Bit_CrystalEgg_Call04:
	dc.b	nRst, $08, nD2, nB2, nD2, $04, nB2, $08, nB2, $04, nD2, $08
	smpsReturn

S28Bit_CrystalEgg_Call05:
	dc.b	nC3, $08, nB2, nA2, $0C, nA2, $08, nA2, $04, nD2, $08
	smpsReturn

S28Bit_CrystalEgg_Call06:
	dc.b	nE3, $08, nD2, nA2, $0C, nA2, $04, nRst, $04, nA2, $04, nD3
	dc.b	$08
	smpsReturn

S28Bit_CrystalEgg_Call07:
	dc.b	nG2, $04, nA2, nG2, nA2, $08, nA2, nA2, $04, nG2, nA2, nG2
	smpsReturn

; PSG3 Data
S28Bit_CrystalEgg_PSG3:
	smpsPSGvoice        s28BitTone_08
	dc.b	nE3, $04, nF3, $08, nA3, $04, nRst, $08, nG3, nRst, $04, nG3
	dc.b	$0C, nG3, $08, nG3
	smpsLoop            $00, $04, S28Bit_CrystalEgg_PSG3

S28Bit_CrystalEgg_Jump00:
	smpsPSGvoice        s28BitTone_07
	smpsCall            S28Bit_CrystalEgg_Call03

S28Bit_CrystalEgg_Loop04:
	smpsCall            S28Bit_CrystalEgg_Call03
	smpsLoop            $00, $04, S28Bit_CrystalEgg_Loop04

S28Bit_CrystalEgg_Loop05:
	dc.b	nG0, $04, nG0, nG0, $08, nG0, nG0, $04, nA0, $08, nA0, nA0
	dc.b	nA0, $04, nA0, nA0, nB0, $04, nB0, nB0, $08, nB0, nB0, $04
	dc.b	nC1, $08, nC1, nC1, nG0, $04, nG0, nG0
	smpsLoop            $00, $03, S28Bit_CrystalEgg_Loop05
	dc.b	nD1, $04, nD1, nD1, $08, nD1, nD0, $04, nD1, $08, nD1, nD1
	dc.b	nD0, $04, nD0, nD0, nD1, $04, nD1, nD1, $08, nD1, nD0, $04
	dc.b	nD1, $08, nD1, nD1, nD1, $04, nD1, nD1
	smpsJump            S28Bit_CrystalEgg_Jump00

S28Bit_CrystalEgg_Call03:
	dc.b	nG0, $04, nG0, nG0, $08, nG0, nG0, $04, nG0, $08, nG0, $04
	dc.b	nG0, $08, nG0, nD0, nG0, $04, nG0, nG0, $08, nG0, nG0, $04
	dc.b	nG0, $08, nG0, $04, nG0, $08, nG0, nD0, nF0, $04, nF0, nF0
	dc.b	$08, nF0, nF0, $04, nF0, $08, nF0, $04, nF0, $08, nF0, nC0
	dc.b	nF0, $04, nF0, nF0, $08, nF0, nF0, $04, nF0, $08, nF0, $04
	dc.b	nF0, $08, nF0, nC0, $04, nF0
	smpsReturn

; PSG2 Data
S28Bit_CrystalEgg_PSG2:
	smpsPSGvoice        s28BitTone_06
	dc.b	nD1, $04, nB1, nG1, nA1, nD2, $10, nD2, $04, nC2, nB1, nC2
	dc.b	nG1, $10
	smpsLoop            $00, $02, S28Bit_CrystalEgg_PSG2

S28Bit_CrystalEgg_Loop00:
	dc.b	nC1, $04, nA1, nF1, nG1, nC2, $10, nC2, $04, nBb1, nA1, nBb1
	dc.b	nF1, $10
	smpsLoop            $00, $02, S28Bit_CrystalEgg_Loop00

S28Bit_CrystalEgg_Loop01:
	dc.b	nD1, $04, nB1, nG1, nA1, nD2, $10, nD2, $04, nC2, nB1, nC2
	dc.b	nG1, $10
	smpsLoop            $00, $02, S28Bit_CrystalEgg_Loop01

S28Bit_CrystalEgg_Loop02:
	dc.b	nC1, $04, nA1, nF1, nG1, nC2, $10, nC2, $04, nBb1, nA1, nBb1
	dc.b	nF1, $10
	smpsLoop            $00, $02, S28Bit_CrystalEgg_Loop02

S28Bit_CrystalEgg_Loop03:
	smpsPSGvoice        s28BitTone_08
	smpsCall            S28Bit_CrystalEgg_Call00
	dc.b	nG2, $10
	smpsCall            S28Bit_CrystalEgg_Call00
	dc.b	nG2, $08, nA2
	smpsCall            S28Bit_CrystalEgg_Call01
	dc.b	nF2, $08, nA2
	smpsCall            S28Bit_CrystalEgg_Call01
	dc.b	nF2, $10
	smpsCall            S28Bit_CrystalEgg_Call00
	dc.b	nG2, $10
	smpsCall            S28Bit_CrystalEgg_Call00
	dc.b	nG2, $08, nC3
	smpsCall            S28Bit_CrystalEgg_Call02
	dc.b	nF2, $08, nC3
	smpsCall            S28Bit_CrystalEgg_Call02
	dc.b	nF2, $10
	smpsLoop            $00, $02, S28Bit_CrystalEgg_Loop03
	smpsPSGvoice        s28BitTone_06
	dc.b	nD2, $08, nC2, $04, nB1, nG1, $30, nD2, $08, nC2, $04, nB1
	dc.b	nG1, $08, nE1, $04, nD1, $20, nRst, $04, nD2, $08, nC2, $04
	dc.b	nB1, nG1, $30, nD2, $08, nC2, $04, nB1, nG1, $08, nE2, $04
	dc.b	nD2, $20, nRst, $04, nD2, $08, nC2, $04, nB1, nG1, $30, nD2
	dc.b	$08, nC2, $04, nB1, nG1, $08, nE1, $04, nD1, $20, nRst, $04
	dc.b	nD2, $08, nC2, $04, nB1, nD2, $08, nC2, $04, nB1, nD2, $08
	dc.b	nC2, $04, nB1, nD2, $08, nC2, $04, nB1, nD2, $08, nD1, nD2
	dc.b	nD1, nD2, $04, nD1, nD2, nD1, nD2, nD1, nD2, nD1
	smpsJump            S28Bit_CrystalEgg_Loop01

S28Bit_CrystalEgg_Call00:
	dc.b	nRst, $10, nG2, $08, nRst, $04, nG2, $08, nG2, $04, nRst, $08
	smpsReturn

S28Bit_CrystalEgg_Call01:
	dc.b	nA2, $08, nG2, nF2, $0C, nF2, $08, nF2, $04, nRst, $08
	smpsReturn

S28Bit_CrystalEgg_Call02:
	dc.b	nC3, $08, nB2, nF2, $0C, nF2, $04, nRst, $04, nF2, $04, nRst
	dc.b	$08
	smpsReturn

; PSG4 Data
S28Bit_CrystalEgg_PSG4:
	dc.b	nRst, $40
	smpsLoop            $00, $04, S28Bit_CrystalEgg_PSG4

S28Bit_CrystalEgg_Loop0A:
	dc.b	dNoise3, $04, dNoise1, dNoise1, dNoise1
	smpsLoop            $00, $0C, S28Bit_CrystalEgg_Loop0A
	dc.b	dNoise1, $04, dNoise1, dNoise1, dNoise1, dNoise1, dNoise1, dNoise1, dNoise1, nRst, $04, dNoise4
	dc.b	$04, dNoise4, $08, dNoise4, dNoise4, $04, dNoise4

S28Bit_CrystalEgg_Loop0B:
	dc.b	dNoise3, $04, dNoise1, dNoise1, dNoise1, dNoise4, dNoise1, dNoise1, dNoise1, dNoise3, dNoise1, dNoise1
	dc.b	dNoise1, dNoise4, dNoise1, dNoise1, dNoise4, dNoise3, $04, dNoise1, dNoise1, dNoise1, dNoise4, dNoise1
	dc.b	dNoise1, dNoise1, dNoise3, dNoise1, dNoise1, dNoise1, dNoise4, dNoise1, dNoise1, dNoise4, dNoise3, $04
	dc.b	dNoise1, dNoise1, dNoise1, dNoise4, dNoise1, dNoise1, dNoise1, dNoise3, dNoise1, dNoise1, dNoise1, dNoise4
	dc.b	dNoise1, dNoise1, dNoise4, dNoise3, $04, dNoise1, dNoise1, dNoise1, dNoise4, dNoise1, dNoise1, dNoise1
	dc.b	dNoise3, dNoise1, dNoise1, dNoise1, dNoise4, dNoise4, dNoise1, dNoise4, dNoise3, $04, dNoise1, dNoise1
	dc.b	dNoise1, dNoise4, dNoise1, dNoise1, dNoise1, dNoise3, dNoise1, dNoise1, dNoise1, dNoise4, dNoise1, dNoise1
	dc.b	dNoise4, dNoise3, $04, dNoise1, dNoise1, dNoise1, dNoise4, dNoise1, dNoise1, dNoise1, dNoise3, dNoise1
	dc.b	dNoise1, dNoise1, dNoise4, dNoise1, dNoise1, dNoise4, dNoise3, $04, dNoise1, dNoise1, dNoise1, dNoise4
	dc.b	dNoise1, dNoise1, dNoise1, dNoise3, dNoise1, dNoise1, dNoise1, dNoise4, dNoise1, dNoise1, dNoise4, dNoise3
	dc.b	$04, dNoise1, dNoise1, dNoise1, dNoise4, dNoise1, dNoise1, dNoise1, dNoise4, dNoise4, dNoise1, dNoise4
	dc.b	dNoise4, dNoise4, dNoise4, dNoise4
	smpsLoop            $00, $03, S28Bit_CrystalEgg_Loop0B
	smpsJump            S28Bit_CrystalEgg_Loop0A
