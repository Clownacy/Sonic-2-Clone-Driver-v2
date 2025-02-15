S28Bit_AquaLake_Header:
	smpsHeaderStartSong 1, 1
	smpsHeaderVoiceNull
	smpsHeaderChan      $00, $04
	smpsHeaderTempo     $02, $03

	smpsHeaderPSG       S28Bit_AquaLake_PSG1,	$00, $05, $00, $00
	smpsHeaderPSG       S28Bit_AquaLake_PSG2,	$00, $05, $00, $00
	smpsHeaderPSG       S28Bit_AquaLake_PSG3,	$00, $03, $00, $00
	smpsHeaderPSG       S28Bit_AquaLake_PSG4,	$01, $00, $00, $00

; PSG1 Data
S28Bit_AquaLake_PSG1:
	smpsPSGvoice        s28BitTone_06
	dc.b	nEb0, $02, nG0, nBb0, nG0, nBb0, nD1, nBb0, nD1, nF1, nD1, nF1
	dc.b	nA1

S28Bit_AquaLake_Loop06:
	smpsCall            S28Bit_AquaLake_Call01
	smpsLoop            $00, $07, S28Bit_AquaLake_Loop06
	smpsPSGvoice        s28BitTone_07
	smpsChangeTransposition $0C
	smpsPSGAlterVol     $03
	dc.b	nC0, $04
	smpsPSGAlterVol     $04
	dc.b	nC0, $02
	smpsPSGAlterVol     $FC
	dc.b	nEb0, $04
	smpsPSGAlterVol     $04
	dc.b	nEb0, $02
	smpsPSGAlterVol     $FC
	dc.b	nF0, $04
	smpsPSGAlterVol     $04
	dc.b	nF0, $02
	smpsPSGAlterVol     $FC
	dc.b	nC0, $04, nEb0, $04
	smpsPSGAlterVol     $04
	dc.b	nEb0, $02
	smpsPSGAlterVol     $FC
	dc.b	nF0, $04
	smpsPSGAlterVol     $04
	dc.b	nF0, $02
	smpsPSGAlterVol     $FC
	dc.b	nC0, $02, nEb0, $04
	smpsPSGAlterVol     $04
	dc.b	nEb0, $02
	smpsPSGAlterVol     $FC
	dc.b	nF0, $03
	smpsPSGAlterVol     $FD
	smpsChangeTransposition $F4
	smpsPSGvoice        s28BitTone_06
	dc.b	nB2, $01, nC3, nCs3

S28Bit_AquaLake_Loop0A:
	smpsPSGAlterVol     $FE
	smpsPSGvoice        s28BitTone_06

S28Bit_AquaLake_Loop07:
	dc.b	nD3, $04, nRst, $02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, S28Bit_AquaLake_Loop07
	smpsPSGAlterVol     $F8

S28Bit_AquaLake_Loop08:
	dc.b	nD3, $04, nRst, $02
	smpsPSGAlterVol     $02
	dc.b	nD3, $04, nRst, $02
	smpsPSGAlterVol     $FE
	smpsChangeTransposition $FE
	smpsLoop            $00, $03, S28Bit_AquaLake_Loop08
	smpsChangeTransposition $06
	dc.b	nA2, $04, nRst, $02
	smpsPSGAlterVol     $02
	dc.b	nA2, $04, nRst, $02
	smpsPSGAlterVol     $FE

S28Bit_AquaLake_Loop09:
	dc.b	nG2, $04, nRst, $02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, S28Bit_AquaLake_Loop09
	smpsPSGAlterVol     $F8
	smpsPSGAlterVol     $02
	smpsChangeTransposition $F4
	smpsPSGvoice        s28BitTone_06
	dc.b	nG2, $04, nC3, $02, nD3, $04, nG3, $02
	smpsPSGAlterVol     $03
	dc.b	nG3, $04
	smpsPSGAlterVol     $FD
	dc.b	nG2, $02, nC3, $04, nD3, $02, nG3, $06
	smpsPSGAlterVol     $03
	dc.b	nG3, $04
	smpsPSGAlterVol     $FD
	dc.b	nG2, $02, nC3, $04, nD3, $02, nG3, $06
	smpsChangeTransposition $0C
	smpsLoop            $01, $04, S28Bit_AquaLake_Loop0A

S28Bit_AquaLake_Loop0B:
	smpsCall            S28Bit_AquaLake_Call03
	smpsPSGvoice        s28BitTone_06
	smpsChangeTransposition $F4
	dc.b	nG2, $04
	smpsPSGAlterVol     $02
	dc.b	nG2, $02
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $04
	smpsPSGAlterVol     $02
	dc.b	nBb2, $02
	smpsPSGAlterVol     $FE
	dc.b	nA2, $04, nBb2, $02
	smpsPSGAlterVol     $02
	dc.b	nBb2, $04
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $02, nC3, $04
	smpsPSGAlterVol     $02
	dc.b	nC3, $02
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $04
	smpsPSGAlterVol     $02
	dc.b	nBb2, $02
	smpsPSGAlterVol     $FE
	dc.b	nA2, $04
	smpsPSGAlterVol     $02
	dc.b	nA2, $02
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $04
	smpsPSGAlterVol     $02
	dc.b	nBb2, $02
	smpsPSGAlterVol     $FE
	smpsModSet          $10, $01, $FA, $01
	dc.b	nG2, $0C
	smpsModSet          $00, $00, $00, $00
	dc.b	nG3, $24
	smpsChangeTransposition $0C
	smpsLoop            $01, $02, S28Bit_AquaLake_Loop0B

S28Bit_AquaLake_Loop0C:
	smpsCall            S28Bit_AquaLake_Call02
	smpsLoop            $00, $08, S28Bit_AquaLake_Loop0C
	smpsJump            S28Bit_AquaLake_Loop06

S28Bit_AquaLake_Call01:
	smpsPSGvoice        s28BitTone_07
	smpsChangeTransposition $F4
	dc.b	nG3, $04
	smpsPSGAlterVol     $04
	dc.b	nG3, $02
	smpsPSGAlterVol     $FC
	dc.b	nC3, $04
	smpsPSGAlterVol     $04
	dc.b	nC3, $02
	smpsPSGAlterVol     $FC
	dc.b	nA3, $04
	smpsPSGAlterVol     $04
	dc.b	nA3, $02
	smpsPSGAlterVol     $FC
	dc.b	nC3, $04, nBb3, $04
	smpsPSGAlterVol     $04
	dc.b	nBb3, $02
	smpsPSGAlterVol     $FC
	dc.b	nC3, $04
	smpsPSGAlterVol     $04
	dc.b	nC3, $02
	smpsPSGAlterVol     $FC
	dc.b	nC3, $02, nC4, $04
	smpsPSGAlterVol     $04
	dc.b	nC4, $02
	smpsPSGAlterVol     $FC
	dc.b	nBb3, $04
	smpsPSGAlterVol     $04
	dc.b	nBb3, $02
	smpsPSGAlterVol     $FC
	smpsChangeTransposition $0C
	smpsReturn

S28Bit_AquaLake_Call03:
	smpsChangeTransposition $F4
	smpsPSGAlterVol     $FD
	smpsModSet          $0E, $01, $02, $06
	dc.b	nBb4, $06, nF4, $04, nG4, $06, nD4, $02, nF4, $06, nC4, $04
	dc.b	nD4, $06, nBb3, $02, nC4, $06, nG3, $04, nBb3, $06, nF3, $02
	dc.b	nG3, $06, nD3, $04, nF3, $06, nC3, $02, nD3, $06, nBb2, $04
	dc.b	nC3, $06, nG2, $02, nBb2, $06
	smpsModSet          $00, $00, $00, $00
	smpsPSGAlterVol     $03
	smpsChangeTransposition $0C
	smpsReturn

; PSG3 Data
S28Bit_AquaLake_PSG3:
	smpsPSGvoice        s28BitTone_06
	dc.b	nC0, $02, nEb0, nG0, nEb0, nG0, nBb0, nG0, nBb0, nD1, nBb0, nD1
	dc.b	nF1

S28Bit_AquaLake_Loop03:
	smpsCall            S28Bit_AquaLake_Call02
	smpsLoop            $00, $08, S28Bit_AquaLake_Loop03

S28Bit_AquaLake_Loop04:
	smpsCall            S28Bit_AquaLake_Call02
	smpsLoop            $00, $18, S28Bit_AquaLake_Loop04
	smpsChangeTransposition $0C

S28Bit_AquaLake_Loop05:
	smpsCall            S28Bit_AquaLake_Call02
	smpsLoop            $00, $08, S28Bit_AquaLake_Loop05
	smpsChangeTransposition $F4
	smpsJump            S28Bit_AquaLake_Loop03

S28Bit_AquaLake_Call02:
	smpsPSGvoice        s28BitTone_07
	dc.b	nC0, $04
	smpsPSGAlterVol     $04
	dc.b	nC0, $02
	smpsPSGAlterVol     $FC
	dc.b	nEb0, $04
	smpsPSGAlterVol     $04
	dc.b	nEb0, $02
	smpsPSGAlterVol     $FC
	dc.b	nF0, $04
	smpsPSGAlterVol     $04
	dc.b	nF0, $02
	smpsPSGAlterVol     $FC
	dc.b	nC0, $04, nEb0, $04
	smpsPSGAlterVol     $04
	dc.b	nEb0, $02
	smpsPSGAlterVol     $FC
	dc.b	nF0, $04
	smpsPSGAlterVol     $04
	dc.b	nF0, $02
	smpsPSGAlterVol     $FC
	dc.b	nC0, $02, nEb0, $04
	smpsPSGAlterVol     $04
	dc.b	nEb0, $02
	smpsPSGAlterVol     $FC
	dc.b	nF0, $04
	smpsPSGAlterVol     $04
	dc.b	nF0, $02
	smpsPSGAlterVol     $FC
	smpsReturn

; PSG2 Data
S28Bit_AquaLake_PSG2:
	smpsPSGvoice        s28BitTone_06
	smpsChangeTransposition $13
	dc.b	nC0, $02, nEb0, nG0, nEb0, nG0, nBb0, nG0, nBb0, nD1, nBb0, nD1
	dc.b	nF1
	smpsChangeTransposition $ED

S28Bit_AquaLake_Loop00:
	smpsChangeTransposition $F4
	smpsCall            S28Bit_AquaLake_Call00
	smpsChangeTransposition $0C
	smpsLoop            $00, $07, S28Bit_AquaLake_Loop00
	smpsCall            S28Bit_AquaLake_Call01

S28Bit_AquaLake_Loop01:
	smpsCall            S28Bit_AquaLake_Call01
	smpsLoop            $00, $18, S28Bit_AquaLake_Loop01
	smpsChangeTransposition $F4

S28Bit_AquaLake_Loop02:
	smpsCall            S28Bit_AquaLake_Call01
	smpsLoop            $00, $08, S28Bit_AquaLake_Loop02
	smpsChangeTransposition $0C
	smpsJump            S28Bit_AquaLake_Loop00

S28Bit_AquaLake_Call00:
	smpsPSGvoice        s28BitTone_07
	dc.b	nG2, $04
	smpsPSGAlterVol     $04
	dc.b	nG2, $02
	smpsPSGAlterVol     $FC
	dc.b	nBb2, $04
	smpsPSGAlterVol     $04
	dc.b	nBb2, $02
	smpsPSGAlterVol     $FC
	dc.b	nC3, $04
	smpsPSGAlterVol     $04
	dc.b	nC3, $02
	smpsPSGAlterVol     $FC
	dc.b	nG2, $04, nBb2, $04
	smpsPSGAlterVol     $04
	dc.b	nBb2, $02
	smpsPSGAlterVol     $FC
	dc.b	nC3, $04
	smpsPSGAlterVol     $04
	dc.b	nC3, $02
	smpsPSGAlterVol     $FC
	dc.b	nG2, $02, nBb2, $04
	smpsPSGAlterVol     $04
	dc.b	nBb2, $02
	smpsPSGAlterVol     $FC
	dc.b	nC3, $04
	smpsPSGAlterVol     $04
	dc.b	nC3, $02
	smpsPSGAlterVol     $FC
	smpsReturn

; PSG4 Data
S28Bit_AquaLake_PSG4:
	dc.b	dNoise4, $02, dNoise1, dNoise1, dNoise6, dNoise1, dNoise1, dNoise4, $04, dNoise1, $02, dNoise4
	dc.b	dNoise1, dNoise4

S28Bit_AquaLake_Jump00:
	dc.b	dNoise3, $04, dNoise1, $02, dNoise1, $04, dNoise1, $02, dNoise4, $04, dNoise1, $02
	dc.b	dNoise1, $04, dNoise1, $02, dNoise3, $04, dNoise1, $02, dNoise1, $04, dNoise3, $02
	dc.b	dNoise4, $04, dNoise1, $02, dNoise1, $04, dNoise1, $02, dNoise3, $04, dNoise1, $02
	dc.b	dNoise1, $04, dNoise1, $02, dNoise4, $04, dNoise1, $02, dNoise1, $04, dNoise3, $02
	dc.b	dNoise1, $04, dNoise4, $02, dNoise3, $04, dNoise1, $02, dNoise4, $04, dNoise3, $02
	dc.b	dNoise4, $04, dNoise4, $02
	smpsJump            S28Bit_AquaLake_Jump00
