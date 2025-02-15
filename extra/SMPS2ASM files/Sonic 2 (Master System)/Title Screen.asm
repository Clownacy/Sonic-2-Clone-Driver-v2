S28Bit_TitleScreen_Header:
	smpsHeaderStartSong 1, 1
	smpsHeaderVoiceNull
	smpsHeaderChan      $00, $04
	smpsHeaderTempo     $02, $00

	smpsHeaderPSG       S28Bit_TitleScreen_PSG1,	$00, $04, $00, $00
	smpsHeaderPSG       S28Bit_TitleScreen_PSG2,	$00, $03, $00, $00
	smpsHeaderPSG       S28Bit_TitleScreen_PSG3,	$00, $03, $00, $00
	smpsHeaderPSG       S28Bit_TitleScreen_PSG4,	$01, $00, $00, $00

; PSG1 Data
S28Bit_TitleScreen_PSG1:
	smpsCall            S28Bit_TitleScreen_Call01
	smpsLoop            $00, $08, S28Bit_TitleScreen_PSG1
	smpsPSGAlterVol     $FF
	smpsPSGvoice        s28BitTone_08
	smpsModSet          $09, $01, $01, $05
	dc.b	nFs2, $01, nG2, $0B, nFs2, $01, nG2, $08, nF2, $09, nE2, $06
	dc.b	nE2, $01, nF2, $05, nE2, $0C, nC2, nG1, $12
	smpsModSet          $01, $01, $FB, $01
	dc.b	nG1, $0C
	smpsModSet          $09, $01, $01, $05
	dc.b	nG2, nFs2, $01, nG2, $08, nF2, $09, nE2, $06, nE2, $01, nF2
	dc.b	$05, nE2, $2A
	smpsModSet          $01, $01, $FB, $01
	dc.b	nG1, $0C
	smpsModSet          $09, $01, $01, $05
	dc.b	nFs2, $01, nG2, $0B, nFs2, $01, nG2, $08, nF2, $09, nE2, $06
	dc.b	nE2, $01, nF2, $05, nE2, $0C, nC2, nG1, $12
	smpsModSet          $01, $01, $FB, $01
	dc.b	nG1, $0C
	smpsModSet          $09, $01, $01, $05
	dc.b	nG2, nFs2, $01, nG2, $08, nF2, $09, nE2, $06, nE2, $01, nF2
	dc.b	$0B
	smpsPSGvoice        s28BitTone_03
	dc.b	nF2, $06, nG2, $09, nB2

S28Bit_TitleScreen_Loop04:
	dc.b	nC3, $06
	smpsPSGAlterVol     $02
	smpsLoop            $00, $06, S28Bit_TitleScreen_Loop04
	smpsStop

S28Bit_TitleScreen_Call01:
	smpsPSGvoice        s28BitTone_03
	dc.b	nG2, $03, nD3, nF3, nG3, nC4, nG3, nF3, nD3
	smpsReturn

; PSG3 Data
S28Bit_TitleScreen_PSG3:
	smpsPSGvoice        s28BitTone_07
	dc.b	nG0, $02, nRst, $01, nG0, $02, nRst, $01
	smpsPSGAlterVol     $02
	dc.b	nG0, $05, nRst, $01
	smpsPSGAlterVol     $02
	dc.b	nG0, $05, nRst, $01
	smpsPSGAlterVol     $FC
	dc.b	nG0, $02, nRst, $01, nG0, $02, nRst, $01
	smpsPSGAlterVol     $02
	dc.b	nG0, $05, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nE0, $06, nF0, nFs0
	smpsLoop            $00, $04, S28Bit_TitleScreen_PSG3

S28Bit_TitleScreen_Loop02:
	dc.b	nC0, $06, nG0, nBb0, nC1, $03, nC0, $06, nC0, $03, nG0, $06
	dc.b	nBb0, nC1
	smpsLoop            $00, $07, S28Bit_TitleScreen_Loop02
	dc.b	nG0, $06, nG0, nRst, $03, nG0, $09

S28Bit_TitleScreen_Loop03:
	dc.b	nC0, $06
	smpsPSGAlterVol     $02
	smpsLoop            $00, $06, S28Bit_TitleScreen_Loop03
	smpsStop

; PSG2 Data
S28Bit_TitleScreen_PSG2:
	smpsCall            S28Bit_TitleScreen_Call00
	smpsChangeTransposition $02
	smpsCall            S28Bit_TitleScreen_Call00
	smpsPSGvoice        s28BitTone_03
	smpsChangeTransposition $FE
	dc.b	nB1, $03, nB1
	smpsPSGAlterVol     $02
	dc.b	nB1, $06
	smpsPSGAlterVol     $02
	dc.b	nB1, $06
	smpsPSGAlterVol     $FC
	dc.b	nB1, $03, nB1
	smpsPSGAlterVol     $02
	dc.b	nB1, $06
	smpsPSGAlterVol     $02
	dc.b	nB1, $06
	smpsPSGAlterVol     $FC
	smpsPSGvoice        s28BitTone_06
	smpsModSet          $08, $01, $F8, $01
	dc.b	nG1, $0C

S28Bit_TitleScreen_Loop00:
	smpsModSet          $0B, $03, $05, $01
	dc.b	nG3, $0C
	smpsModSet          $00, $00, $00, $00
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, S28Bit_TitleScreen_Loop00
	smpsPSGAlterVol     $F8
	smpsPSGvoice        s28BitTone_08
	smpsPSGAlterVol     $01
	smpsModSet          $09, $01, $01, $05
	dc.b	nEb2, $01, nE2, $0B, nEb2, $01, nE2, $08, nD2, $09, nC2, $06
	dc.b	nC2, $01, nD2, $05, nC2, $0C, nG1, nE1, $12
	smpsModSet          $01, $01, $FB, $01
	dc.b	nE1, $0C
	smpsModSet          $09, $01, $01, $05
	dc.b	nE2, nEb2, $01, nE2, $08, nD2, $09, nC2, $06, nC2, $01, nD2
	dc.b	$05, nC2, $2A
	smpsModSet          $01, $01, $FB, $01
	dc.b	nE1, $0C
	smpsModSet          $09, $01, $01, $05
	dc.b	nEb2, $01, nE2, $0B, nEb2, $01, nE2, $08, nD2, $09, nC2, $06
	dc.b	nC2, $01, nD2, $05, nC2, $0C, nG1, nE1, $12
	smpsModSet          $01, $01, $FB, $01
	dc.b	nE1, $0C
	smpsModSet          $09, $01, $01, $05
	dc.b	nE2, nEb2, $01, nE2, $08, nD2, $09, nC2, $06, nC2, $01, nD2
	dc.b	$0B
	smpsPSGvoice        s28BitTone_03
	dc.b	nB1, $06, nD2, $09, nG2

S28Bit_TitleScreen_Loop01:
	dc.b	nE3, $06
	smpsPSGAlterVol     $02
	smpsLoop            $00, $06, S28Bit_TitleScreen_Loop01
	smpsStop

S28Bit_TitleScreen_Call00:
	smpsPSGvoice        s28BitTone_03
	dc.b	nG1, $03, nG1
	smpsPSGAlterVol     $02
	dc.b	nG1, $06
	smpsPSGAlterVol     $02
	dc.b	nG1, $06
	smpsPSGAlterVol     $FC
	dc.b	nG1, $03, nG1
	smpsPSGAlterVol     $02
	dc.b	nG1, $06
	smpsPSGAlterVol     $02
	dc.b	nG1, $06
	smpsPSGAlterVol     $FC
	dc.b	nG1, $03, nG1
	smpsPSGAlterVol     $02
	dc.b	nG1, $06
	smpsPSGAlterVol     $FE
	smpsReturn

; PSG4 Data
S28Bit_TitleScreen_PSG4:
	dc.b	dNoise4, $03, dNoise4, dNoise1, dNoise1, dNoise1, dNoise1, dNoise4, dNoise4, dNoise1, dNoise1, dNoise4
	dc.b	dNoise1, dNoise4, dNoise1, dNoise4, dNoise1
	smpsLoop            $00, $03, S28Bit_TitleScreen_PSG4
	dc.b	dNoise4, $03, dNoise1, dNoise1, dNoise1, dNoise4, dNoise1, dNoise1, dNoise1, dNoise4, dNoise1, dNoise4
	dc.b	dNoise1, dNoise4, dNoise4, dNoise4, dNoise4

S28Bit_TitleScreen_Loop05:
	dc.b	dNoise1, dNoise1, dNoise4, dNoise1, dNoise1, dNoise1, dNoise4, dNoise1, dNoise1, dNoise1, dNoise4, dNoise1
	dc.b	dNoise1, dNoise1, dNoise4, dNoise1
	smpsLoop            $00, $07, S28Bit_TitleScreen_Loop05
	dc.b	dNoise4, dNoise1, dNoise4, dNoise1, dNoise1, dNoise4, dNoise1, dNoise1, dNoise4, $18, nRst, $30
	smpsStop
