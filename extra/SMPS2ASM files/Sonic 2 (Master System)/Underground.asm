S28Bit_Underground_Header:
	smpsHeaderStartSong 1, 1
	smpsHeaderVoiceNull
	smpsHeaderChan      $00, $04
	smpsHeaderTempo     $02, $00

	smpsHeaderPSG       S28Bit_Underground_PSG1,	$00, $03, $00, $00
	smpsHeaderPSG       S28Bit_Underground_PSG2,	$00, $03, $00, $00
	smpsHeaderPSG       S28Bit_Underground_PSG3,	$00, $03, $00, $00
	smpsHeaderPSG       S28Bit_Underground_PSG4,	$01, $00, $00, $00

; PSG1 Data
S28Bit_Underground_PSG1:
	smpsModSet          $0C, $01, $01, $04

S28Bit_Underground_Loop0C:
	smpsPSGvoice        s28BitTone_08
	dc.b	nC3, $07, nB2, $01, nA2, nG2, nF2, nE2
	smpsPSGAlterVol     $02
	smpsLoop            $00, $06, S28Bit_Underground_Loop0C
	smpsPSGAlterVol     $F4
	dc.b	nRst, $06, nE1, $01, nF1, nG1, nA1
	smpsPSGvoice        s28BitTone_05
	dc.b	nBb1, $0E

S28Bit_Underground_Loop0D:
	smpsPSGvoice        s28BitTone_08
	dc.b	nC3, $07, nB2, $01, nA2, nG2, nF2, nE2
	smpsPSGAlterVol     $02
	smpsLoop            $00, $06, S28Bit_Underground_Loop0D
	smpsPSGAlterVol     $F4
	dc.b	nRst, $06, nB1, $01, nC2, nD2, nEb2
	smpsPSGvoice        s28BitTone_05
	dc.b	nEb2, $0E
	smpsLoop            $01, $02, S28Bit_Underground_Loop0C

S28Bit_Underground_Loop0E:
	dc.b	nC2, $0A, nG2, $01, nA2, nBb2, $0C, nA2, nF2, nEb2, $03, nF2
	dc.b	$06, nG2, nC2, nC2, $0C, nRst, $03, nBb1, nC2, nEb2, $06, nF2
	dc.b	$09, nFs2, nG2, $1E, smpsNoAttack, $30, nRst, $0A, nG2, $01, nA2, nBb2
	dc.b	$0C, nA2, nF2, nEb2, $03, nF2, $06, nG2, nC2, nC2, $0C, nRst
	dc.b	$03, nBb1, nC2, nEb2, $06, nF2, $09, nEb2, $30, smpsNoAttack, $27
	smpsLoop            $00, $02, S28Bit_Underground_Loop0E
	smpsCall            S28Bit_Underground_Call0A
	dc.b	nFs2, $01, nG2, $08, nA2, $09, nBb2, $06, nBb2, $01, nC3, $08
	dc.b	nBb2, $09, nC3, $06, nD3, $09, nD3, $01, nEb3, $08, nD3, $06
	dc.b	nC3, $0C, nBb2, $06, nC3, $0C, nG2, $2A, smpsNoAttack, $30
	smpsCall            S28Bit_Underground_Call0A
	dc.b	nFs2, $01, nG2, $08, nA2, $09, nBb2, $06, nBb2, $01, nC3, $08
	dc.b	nBb2, $09, nC3, $06, nD3, $09, nD3, $01, nEb3, $08, nD3, $06
	dc.b	nB2, $01, nC3, $08, nD3, $09, nEb3, $06, nF3, $30, nAb3, $30
	smpsCall            S28Bit_Underground_Call0B
	smpsCall            S28Bit_Underground_Call0C
	smpsCall            S28Bit_Underground_Call0B
	smpsCall            S28Bit_Underground_Call0D
	smpsJump            S28Bit_Underground_Loop0C

S28Bit_Underground_Call0B:
	dc.b	nBb2, $01, nC3, $0B, nBb2, $06, nG2, $0C, nE3, $01, nF3, $0B
	dc.b	nE3, $0C, nC3, $0C, nFs2, $01, nG2, $1D, nA2, $01, nBb2, $0B
	dc.b	nA2, $06, nF2, $0C, nAb2, $01, nA2, $0B, nG2, $0C, nC2, $0C
	dc.b	nB1, $01, nC2, $1D
	smpsReturn

S28Bit_Underground_Call0C:
	dc.b	nC2, $01, nCs2, $0B, nF2, $06, nAb2, $0C, nC3, $01, nCs3, $0B
	dc.b	nC3, $0C, nG2, $0C, nD2, $01, nEb2, $1D, nCs2, $01, nD2, $0B
	dc.b	nF2, $06, nBb2, $0C, nCs3, $01, nD3, $0B, nC3, $0C, nE3, $0C
	dc.b	nF3, $01, nG3, $1D
	smpsReturn

S28Bit_Underground_Call0D:
	dc.b	nC2, $01, nCs2, $0B, nF2, $06, nAb2, $0C, nC3, $01, nCs3, $0B
	dc.b	nC3, $0C, nG2, $0C, nD2, $01, nEb2, $0B, nG2, $06, nC3, nEb3
	dc.b	nE3, $30, nFs3
	smpsReturn

S28Bit_Underground_Call0A:
	dc.b	nBb2, $03
	smpsPSGAlterVol     $02
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	dc.b	nCs3, $03
	smpsPSGAlterVol     $02
	dc.b	nCs3
	smpsPSGAlterVol     $FE
	dc.b	nEb3, $03
	smpsPSGAlterVol     $02
	dc.b	nEb3
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $03
	smpsPSGAlterVol     $02
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	dc.b	nC3, $01, nCs3, $08, nEb3, $03
	smpsPSGAlterVol     $02
	dc.b	nEb3
	smpsPSGAlterVol     $02
	dc.b	nEb3
	smpsPSGAlterVol     $FC
	dc.b	nBb2, $03
	smpsPSGAlterVol     $02
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	dc.b	nB2, $01, nC3, $08, nCs3, $09, nEb3, $06, nE3, $01, nF3, $08
	dc.b	nEb3, $09, nCs3, $06, nB2, $01, nC3, $08, nCs3, $09, nC3, $06
	dc.b	nBb2, $0C, nAb2, $06, nA2, $01, nBb2, $0B, nEb2, $2A
	smpsReturn

; PSG3 Data
S28Bit_Underground_PSG3:
	smpsPSGvoice        s28BitTone_07

S28Bit_Underground_Loop05:
	smpsCall            S28Bit_Underground_Call04
	smpsLoop            $00, $18, S28Bit_Underground_Loop05

S28Bit_Underground_Loop06:
	smpsCall            S28Bit_Underground_Call05
	smpsLoop            $00, $04, S28Bit_Underground_Loop06

S28Bit_Underground_Loop07:
	smpsCall            S28Bit_Underground_Call04
	smpsLoop            $00, $04, S28Bit_Underground_Loop07

S28Bit_Underground_Loop08:
	smpsCall            S28Bit_Underground_Call05
	smpsLoop            $00, $04, S28Bit_Underground_Loop08
	smpsCall            S28Bit_Underground_Call04
	smpsCall            S28Bit_Underground_Call04
	smpsCall            S28Bit_Underground_Call06
	smpsCall            S28Bit_Underground_Call06

S28Bit_Underground_Loop09:
	smpsCall            S28Bit_Underground_Call04
	smpsLoop            $00, $04, S28Bit_Underground_Loop09
	smpsCall            S28Bit_Underground_Call07
	smpsCall            S28Bit_Underground_Call04
	smpsCall            S28Bit_Underground_Call08
	smpsCall            S28Bit_Underground_Call09

S28Bit_Underground_Loop0A:
	smpsCall            S28Bit_Underground_Call04
	smpsLoop            $00, $04, S28Bit_Underground_Loop0A
	smpsCall            S28Bit_Underground_Call07
	smpsCall            S28Bit_Underground_Call04

S28Bit_Underground_Loop0B:
	dc.b	nE0, $06, nE0, nAb0, nE0, $03, nB0, $06, nE0, $06, nE0, $03
	dc.b	nAb0, $06, nB0
	smpsChangeTransposition $02
	smpsLoop            $00, $02, S28Bit_Underground_Loop0B
	smpsChangeTransposition $FC
	smpsJump            S28Bit_Underground_Loop05

S28Bit_Underground_Call04:
	dc.b	nC0, $06, nC0, nEb0, nC0, $03, nF0, $06, nC0, $03, nFs0, $06
	dc.b	nF0, nEb0
	smpsReturn

S28Bit_Underground_Call05:
	dc.b	nEb0, $06, nEb0, nFs0, nEb0, $03, nAb0, $06, nEb0, nEb0, $03, nA0
	dc.b	$06, nBb0
	smpsReturn

S28Bit_Underground_Call06:
	dc.b	nCs0, $06, nCs0, nF0, nCs0, $03, nAb0, $06, nCs0, nCs0, $03, nB0
	dc.b	$06, nCs1
	smpsReturn

S28Bit_Underground_Call07:
	dc.b	nCs0, $06, nCs0, nF0, nCs0, $03, nAb0, $06, nCs0, $03, nB0, $06
	dc.b	nBb0, nAb0
	smpsReturn

S28Bit_Underground_Call08:
	dc.b	nD0, $06, nD0, nF0, nD0, $03, nBb0, $06, nD0, $06, nD0, $03
	dc.b	nF0, $06, nBb0
	smpsReturn

S28Bit_Underground_Call09:
	dc.b	nE0, $06, nE0, nG0, nE0, $03, nC1, $06, nE0, $06, nE0, $03
	dc.b	nG0, $06, nC1
	smpsReturn

; PSG2 Data
S28Bit_Underground_PSG2:
	smpsModSet          $0D, $01, $01, $04

S28Bit_Underground_Loop00:
	smpsPSGvoice        s28BitTone_06
	dc.b	nG2, $07, nF2, $01, nE2, nD2, nC2, nB1
	smpsPSGAlterVol     $02
	smpsLoop            $00, $06, S28Bit_Underground_Loop00
	smpsPSGAlterVol     $F4
	dc.b	nRst, $06, nB0, $01, nC1, nD1, nE1
	smpsPSGvoice        s28BitTone_05
	dc.b	nF1, $0E

S28Bit_Underground_Loop01:
	smpsPSGvoice        s28BitTone_06
	dc.b	nG2, $07, nF2, $01, nE2, nD2, nC2, nB1
	smpsPSGAlterVol     $02
	smpsLoop            $00, $06, S28Bit_Underground_Loop01
	smpsPSGAlterVol     $F4
	dc.b	nRst, $06, nE1, $01, nF1, nG1, nA1
	smpsPSGvoice        s28BitTone_05
	dc.b	nBb1, $0E
	smpsLoop            $01, $02, S28Bit_Underground_Loop00

S28Bit_Underground_Loop02:
	smpsPSGvoice        s28BitTone_03
	dc.b	nG3, $03
	smpsPSGAlterVol     $02
	dc.b	nG3
	smpsPSGAlterVol     $FE
	dc.b	nC3
	smpsPSGAlterVol     $02
	dc.b	nC3
	smpsPSGAlterVol     $FE
	dc.b	nA3
	smpsPSGAlterVol     $02
	dc.b	nA3
	smpsPSGAlterVol     $FE
	dc.b	nC3, nBb3
	smpsPSGAlterVol     $02
	dc.b	nBb3
	smpsPSGAlterVol     $FE
	dc.b	nC3
	smpsPSGAlterVol     $02
	dc.b	nC3
	smpsPSGAlterVol     $FE
	dc.b	nC3, nC4
	smpsPSGAlterVol     $02
	dc.b	nC4
	smpsPSGAlterVol     $FE
	dc.b	nBb3
	smpsPSGAlterVol     $02
	dc.b	nBb3
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $07, S28Bit_Underground_Loop02
	smpsPSGvoice        s28BitTone_08
	dc.b	nFs3, $01, nG3, $05, nFs3, $03
	smpsPSGvoice        s28BitTone_03
	dc.b	nF3
	smpsPSGAlterVol     $02
	dc.b	nF3
	smpsPSGAlterVol     $FE
	dc.b	nEb3
	smpsPSGAlterVol     $02
	dc.b	nEb3
	smpsPSGAlterVol     $FE
	dc.b	nC3
	smpsPSGAlterVol     $02
	dc.b	nC3
	smpsPSGAlterVol     $FE
	dc.b	nBb2
	smpsPSGAlterVol     $02
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	dc.b	nG2
	smpsPSGAlterVol     $02
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	nFs2, nF2, nEb2
	smpsLoop            $01, $02, S28Bit_Underground_Loop02

S28Bit_Underground_Loop03:
	smpsCall            S28Bit_Underground_Call00
	smpsLoop            $00, $04, S28Bit_Underground_Loop03
	smpsPSGvoice        s28BitTone_06
	dc.b	nA1, $01, nBb1, $08, nC2, $09, nD2, $06, nD2, $01, nEb2, $08
	dc.b	nD2, $09, nEb2, $06, nF2, $09, nF2, $01, nG2, $08, nF2, $06
	dc.b	nEb2, $0C, nD2, $06, nEb2, $0C, nC2, $2A, smpsNoAttack, $30

S28Bit_Underground_Loop04:
	smpsCall            S28Bit_Underground_Call00
	smpsLoop            $00, $04, S28Bit_Underground_Loop04
	smpsPSGvoice        s28BitTone_06
	dc.b	nA1, $01, nBb1, $08, nC2, $09, nD2, $06, nD2, $01, nEb2, $08
	dc.b	nD2, $09, nEb2, $06, nF2, $09, nF2, $01, nG2, $08, nF2, $06
	dc.b	nEb2, $09, nF2, $09, nG2, $06, nAb2, $30, nB2
	smpsCall            S28Bit_Underground_Call01
	smpsCall            S28Bit_Underground_Call02
	smpsCall            S28Bit_Underground_Call01
	smpsCall            S28Bit_Underground_Call03
	smpsJump            S28Bit_Underground_Loop00

S28Bit_Underground_Call01:
	smpsPSGvoice        s28BitTone_06
	smpsPSGAlterVol     $02
	dc.b	nE3, $0C, nD3, $06, nBb2, $0C, nBb3, nG3, nE3, nC3, $1E, nEb3
	dc.b	$0C, nD3, $06, nBb2, $0C, nD3, nC3, nG2, nE2, $1E
	smpsPSGAlterVol     $FE
	smpsReturn

S28Bit_Underground_Call02:
	smpsPSGvoice        s28BitTone_03
	dc.b	nCs3, $03, nAb2, nF2, nCs2
	smpsPSGAlterVol     $02
	dc.b	nCs2
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $03, nF2, nAb2, nCs3
	smpsPSGAlterVol     $02
	dc.b	nCs3
	smpsPSGAlterVol     $FE
	dc.b	nF2
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FE
	dc.b	nAb2
	smpsPSGAlterVol     $02
	dc.b	nAb2
	smpsPSGAlterVol     $FE
	dc.b	nCs3
	smpsPSGAlterVol     $02
	dc.b	nCs3
	smpsPSGAlterVol     $FE
	dc.b	nC3, $03, nG2, nEb2, nC2
	smpsPSGAlterVol     $02
	dc.b	nC2
	smpsPSGAlterVol     $FE
	dc.b	nC2, $03, nEb2, nG2, nC3
	smpsPSGAlterVol     $02
	dc.b	nC3
	smpsPSGAlterVol     $FE
	dc.b	nEb2
	smpsPSGAlterVol     $02
	dc.b	nEb2
	smpsPSGAlterVol     $FE
	dc.b	nG2
	smpsPSGAlterVol     $02
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	nC3
	smpsPSGAlterVol     $02
	dc.b	nC3
	smpsPSGAlterVol     $FE
	dc.b	nD3, $03, nBb2, nF2, nD2
	smpsPSGAlterVol     $02
	dc.b	nD2
	smpsPSGAlterVol     $FE
	dc.b	nD2, $03, nF2, nBb2, nD3
	smpsPSGAlterVol     $02
	dc.b	nD3
	smpsPSGAlterVol     $FE
	dc.b	nF2
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FE
	dc.b	nBb2
	smpsPSGAlterVol     $02
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	dc.b	nD3
	smpsPSGAlterVol     $02
	dc.b	nD3
	smpsPSGAlterVol     $FE
	dc.b	nE3, $03, nC3, nG2, nE2
	smpsPSGAlterVol     $02
	dc.b	nE2
	smpsPSGAlterVol     $FE
	dc.b	nE2, $03, nG2, nC3, nE3
	smpsPSGAlterVol     $02
	dc.b	nE3
	smpsPSGAlterVol     $FE
	dc.b	nG2
	smpsPSGAlterVol     $02
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	nC3
	smpsPSGAlterVol     $02
	dc.b	nC3
	smpsPSGAlterVol     $FE
	dc.b	nE3
	smpsPSGAlterVol     $02
	dc.b	nE3
	smpsPSGAlterVol     $FE
	smpsReturn

S28Bit_Underground_Call03:
	smpsPSGvoice        s28BitTone_03
	dc.b	nCs3, $03, nAb2, nF2, nCs2
	smpsPSGAlterVol     $02
	dc.b	nCs2
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $03, nF2, nAb2, nCs3
	smpsPSGAlterVol     $02
	dc.b	nCs3
	smpsPSGAlterVol     $FE
	dc.b	nF2
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FE
	dc.b	nAb2
	smpsPSGAlterVol     $02
	dc.b	nAb2
	smpsPSGAlterVol     $FE
	dc.b	nCs3
	smpsPSGAlterVol     $02
	dc.b	nCs3
	smpsPSGAlterVol     $FE
	dc.b	nC3, $03, nG2, nEb2, nC2
	smpsPSGAlterVol     $02
	dc.b	nC2
	smpsPSGAlterVol     $FE
	dc.b	nC2, $03, nEb2, nG2, nC3
	smpsPSGAlterVol     $02
	dc.b	nC3
	smpsPSGAlterVol     $FE
	dc.b	nEb2
	smpsPSGAlterVol     $02
	dc.b	nEb2
	smpsPSGAlterVol     $FE
	dc.b	nG2
	smpsPSGAlterVol     $02
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	nC3
	smpsPSGAlterVol     $02
	dc.b	nC3
	smpsPSGAlterVol     $FE
	dc.b	nE3, $03, nB2, nAb2, nE2
	smpsPSGAlterVol     $02
	dc.b	nE2
	smpsPSGAlterVol     $FE
	dc.b	nE2, $03, nAb2, nB2, nE3
	smpsPSGAlterVol     $02
	dc.b	nE3
	smpsPSGAlterVol     $FE
	dc.b	nAb2
	smpsPSGAlterVol     $02
	dc.b	nAb2
	smpsPSGAlterVol     $FE
	dc.b	nB2
	smpsPSGAlterVol     $02
	dc.b	nB2
	smpsPSGAlterVol     $FE
	dc.b	nE3
	smpsPSGAlterVol     $02
	dc.b	nE3
	smpsPSGAlterVol     $FE
	dc.b	nFs3, $03, nCs3, nBb2, nFs2
	smpsPSGAlterVol     $02
	dc.b	nFs2
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $03, nBb2, nCs3, nFs3
	smpsPSGAlterVol     $02
	dc.b	nFs3
	smpsPSGAlterVol     $FE
	dc.b	nBb2
	smpsPSGAlterVol     $02
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	dc.b	nCs3
	smpsPSGAlterVol     $02
	dc.b	nCs3
	smpsPSGAlterVol     $FE
	dc.b	nFs3
	smpsPSGAlterVol     $02
	dc.b	nFs3
	smpsPSGAlterVol     $FE
	smpsReturn

S28Bit_Underground_Call00:
	smpsPSGAlterVol     $02
	smpsPSGvoice        s28BitTone_08
	dc.b	nBb1, $06, nBb1, nCs2, nBb1, $03, nEb2, $06, nBb1, $03
	smpsNoteFill        $00
	dc.b	nCs2, $12
	smpsPSGAlterVol     $FE
	smpsReturn

; PSG4 Data
S28Bit_Underground_PSG4:
	dc.b	dNoise3, $03, dNoise1, dNoise3, dNoise1, dNoise4, dNoise1, dNoise3, dNoise4, dNoise1, dNoise4, dNoise3
	dc.b	dNoise1, dNoise4, dNoise1, dNoise1, dNoise1, dNoise3, dNoise1, dNoise3, dNoise1, dNoise4, dNoise1, dNoise3
	dc.b	dNoise4, dNoise1, dNoise4, dNoise3, dNoise1, dNoise4, dNoise1, dNoise4, dNoise1
	smpsLoop            $00, $03, S28Bit_Underground_PSG4
	dc.b	dNoise3, dNoise1, dNoise3, dNoise1, dNoise4, dNoise1, dNoise3, dNoise4, dNoise1, dNoise4, dNoise3, dNoise1
	dc.b	dNoise4, dNoise1, dNoise1, dNoise1, dNoise3, dNoise1, dNoise3, dNoise1, dNoise4, dNoise1, dNoise3, dNoise4
	dc.b	dNoise1, dNoise4, dNoise3, dNoise1, dNoise4, dNoise4, dNoise4, dNoise4
	smpsJump            S28Bit_Underground_PSG4
