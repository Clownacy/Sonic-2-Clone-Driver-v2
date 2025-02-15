S28Bit_Death_Header:
	smpsHeaderStartSong 1, 1
	smpsHeaderVoiceNull
	smpsHeaderChan      $00, $04
	smpsHeaderTempo     $02, $05

	smpsHeaderPSG       S28Bit_Death_PSG1,	$00, $03, $00, $00
	smpsHeaderPSG       S28Bit_Death_PSG2,	$00, $03, $00, $00
	smpsHeaderPSG       S28Bit_Death_PSG3,	$00, $03, $00, $00
	smpsHeaderPSG       S28Bit_Death_PSG4,	$01, $00, $00, $00

; PSG1 Data
S28Bit_Death_PSG1:
	smpsPSGvoice        s28BitTone_08
	smpsModSet          $0D, $01, $01, $04
	dc.b	nD1, $02, nE1, nF1, nFs1, nA1, nB1, nC1, $0C, nC1, $09, nC1
	dc.b	$09, nB0, $06, nBb0, $30
	smpsStop

; PSG3 Data
S28Bit_Death_PSG3:
	smpsPSGvoice        s28BitTone_08
	smpsModSet          $0D, $01, $01, $04
	dc.b	nD0, $02, nE0, nF0, nFs0, nA0, nB0, nD2, $0C, nD2, $09, nD2
	dc.b	$09, nCs2, $06, nC2, $30
	smpsStop

; PSG2 Data
S28Bit_Death_PSG2:
	smpsPSGvoice        s28BitTone_08
	smpsModSet          $01, $01, $06, $01
	dc.b	nC4, $0C
	smpsPSGvoice        s28BitTone_08
	smpsModSet          $0D, $01, $01, $04
	dc.b	nFs2, $0C, nFs2, $09, nFs2, $09, nE2, $06, nEb2, $30
	smpsStop

; PSG4 Data
S28Bit_Death_PSG4:
	dc.b	dNoise1, $02, dNoise1, dNoise1, dNoise1, dNoise1, dNoise1, dNoise4, $0C, dNoise4, $09, dNoise4
	dc.b	dNoise4, $06

S28Bit_Death_Loop00:
	dc.b	dNoise4, $01, dNoise4, dNoise4
	smpsPSGDrumAlterVol $01
	smpsLoop            $00, $08, S28Bit_Death_Loop00

S28Bit_Death_Loop01:
	dc.b	dNoise4, $01, dNoise4, dNoise4
	smpsPSGDrumAlterVol $FF
	smpsLoop            $00, $08, S28Bit_Death_Loop01
	smpsStop
