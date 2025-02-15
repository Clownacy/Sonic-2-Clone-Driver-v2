S28Bit_Continue_Header:
	smpsHeaderStartSong 1, 1
	smpsHeaderVoiceNull
	smpsHeaderChan      $00, $04
	smpsHeaderTempo     $02, $05

	smpsHeaderPSG       S28Bit_Continue_PSG1,	$00, $03, $00, $00
	smpsHeaderPSG       S28Bit_Continue_PSG2,	$00, $03, $00, $00
	smpsHeaderPSG       S28Bit_Continue_PSG3,	$00, $03, $00, $00
	smpsHeaderPSG       S28Bit_Continue_PSG4,	$01, $00, $00, $00

; PSG1 Data
S28Bit_Continue_PSG1:
	smpsCall            S28Bit_Continue_Call00
	smpsSetTempoMod     $0A
	smpsCall            S28Bit_Continue_Call00
	smpsSetTempoMod     $14
	smpsCall            S28Bit_Continue_Call00
	smpsSetTempoMod     $00
	smpsCall            S28Bit_Continue_Call00
	smpsModSet          $09, $01, $01, $05
	smpsChangeTransposition $FC
	smpsPSGvoice        s28BitTone_03
	dc.b	nC2, $03, nC2, nC2, nC2, nRst, $0C
	smpsPSGvoice        s28BitTone_06
	dc.b	nBb1, nB1
	smpsPSGvoice        s28BitTone_08
	dc.b	nC2, $06, nC1

S28Bit_Continue_Loop02:
	smpsPSGAlterVol     $02
	dc.b	nC1
	smpsLoop            $00, $05, S28Bit_Continue_Loop02
	smpsStop

S28Bit_Continue_Call00:
	smpsPSGvoice        s28BitTone_08
	smpsModSet          $09, $01, $01, $05
	dc.b	nFs2, $01, nG2, $0B, nFs2, $01, nG2, $08, nF2, $09, nE2, $06
	dc.b	nE2, $01, nF2, $05, nE2, $0C, nC2, nG1, $12
	smpsModSet          $01, $01, $FB, $01
	dc.b	nG1, $0C
	smpsChangeTransposition $01
	smpsReturn

; PSG3 Data
S28Bit_Continue_PSG3:
	smpsPSGvoice        s28BitTone_07
	dc.b	nC1, $06, nA0, nG0, nA0, $03, nC1, $06, nC1, $03, nA0, $06
	dc.b	nG0, nA0
	smpsLoop            $00, $02, S28Bit_Continue_PSG3
	smpsChangeTransposition $01
	smpsLoop            $01, $04, S28Bit_Continue_PSG3
	smpsChangeTransposition $FC
	smpsPSGvoice        s28BitTone_03
	dc.b	nC0, $03, nC0, nC0, nC0, nRst, $0C
	smpsPSGvoice        s28BitTone_06
	dc.b	nBb0, nB0
	smpsPSGvoice        s28BitTone_08
	dc.b	nC1, $06, nC0

S28Bit_Continue_Loop01:
	smpsPSGAlterVol     $02
	dc.b	nC0
	smpsLoop            $00, $05, S28Bit_Continue_Loop01
	smpsStop

; PSG2 Data
S28Bit_Continue_PSG2:
	smpsPSGvoice        s28BitTone_08
	smpsModSet          $09, $01, $01, $05
	dc.b	nEb2, $01, nE2, $0B, nEb2, $01, nE2, $08, nD2, $09, nC2, $06
	dc.b	nC2, $01, nD2, $05, nC2, $0C, nG1, nE1, $12
	smpsModSet          $01, $01, $FB, $01
	dc.b	nE1, $0C
	smpsChangeTransposition $01
	smpsLoop            $00, $04, S28Bit_Continue_PSG2
	smpsModSet          $09, $01, $01, $05
	smpsChangeTransposition $FC
	smpsPSGvoice        s28BitTone_03
	dc.b	nE1, $03, nE1, nE1, nE1, nRst, $0C
	smpsPSGvoice        s28BitTone_06
	dc.b	nD1, nEb1
	smpsPSGvoice        s28BitTone_08
	dc.b	nE1, $06, nE0

S28Bit_Continue_Loop00:
	smpsPSGAlterVol     $02
	dc.b	nE0
	smpsLoop            $00, $05, S28Bit_Continue_Loop00
	smpsStop

; PSG4 Data
S28Bit_Continue_PSG4:
	dc.b	dNoise1, $03, dNoise1, dNoise4, dNoise1
	smpsLoop            $00, $1F, S28Bit_Continue_PSG4
	dc.b	dNoise4, $03, dNoise1, dNoise4, dNoise4, dNoise4, $03, dNoise4, dNoise4, dNoise4, nRst, $0C
	dc.b	dNoise1, $03, dNoise1, dNoise4, dNoise1, dNoise1, dNoise1, dNoise4, dNoise1, dNoise4, $06, dNoise4
	dc.b	nRst, $30
	smpsStop
