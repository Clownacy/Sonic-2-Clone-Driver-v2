S28Bit_ActClear_Header:
	smpsHeaderStartSong 1, 1
	smpsHeaderVoiceNull
	smpsHeaderChan      $00, $04
	smpsHeaderTempo     $01, $03

	smpsHeaderPSG       S28Bit_ActClear_PSG1,	$00, $02, $00, $00
	smpsHeaderPSG       S28Bit_ActClear_PSG2,	$00, $02, $00, $00
	smpsHeaderPSG       S28Bit_ActClear_PSG3,	$00, $02, $00, $00
	smpsHeaderPSG       S28Bit_ActClear_PSG4,	$01, $00, $00, $00

; PSG1 Data
S28Bit_ActClear_PSG1:
	smpsPSGvoice        s28BitTone_03
	smpsModSet          $01, $01, $16, $01
	dc.b	nE2, $03, nE2, nE1, nE1
	smpsPSGvoice        s28BitTone_08
	smpsModSet          $01, $01, $10, $01
	dc.b	nEb0, $0C
	smpsModSet          $10, $01, $01, $04
	dc.b	nD2, $06, nE2, $0C, nG2, nE2, $06, nG2, nA2, nBb2, nB2, nD3
	dc.b	nE3, $30
	smpsPSGvoice        s28BitTone_03
	smpsModSet          $01, $01, $16, $01
	dc.b	nE1, $03, nA0
	smpsPSGvoice        s28BitTone_08
	smpsModSet          $01, $01, $10, $01
	dc.b	nEb0, $0C
	smpsStop

; PSG3 Data
S28Bit_ActClear_PSG3:
	smpsPSGAlterVol     $04
	smpsPSGvoice        s28BitTone_03
	smpsModSet          $01, $01, $16, $01
	smpsChangeTransposition $22
	dc.b	nE2, $03, nE2, nE1, nE1
	smpsModSet          $01, $01, $10, $01
	dc.b	nEb0, $0C
	smpsChangeTransposition $DE
	smpsPSGAlterVol     $FC
	smpsModSet          $10, $01, $01, $04
	smpsPSGvoice        s28BitTone_08
	dc.b	nD0, $06, nE0, $0C, nG0, nE0, $06, nG0, nA0, nBb0, nB0, nD1
	dc.b	nE0, $30
	smpsPSGAlterVol     $04
	smpsPSGvoice        s28BitTone_03
	smpsModSet          $01, $01, $16, $01
	smpsChangeTransposition $22
	dc.b	nE1, $03, nA0
	smpsModSet          $01, $01, $10, $01
	dc.b	nEb0, $0C
	smpsChangeTransposition $DE
	smpsPSGAlterVol     $FC
	smpsStop

; PSG2 Data
S28Bit_ActClear_PSG2:
	smpsPSGvoice        s28BitTone_03
	smpsModSet          $01, $01, $16, $01
	smpsChangeTransposition $03
	dc.b	nE2, $03, nE2, nE1, nE1
	smpsPSGvoice        s28BitTone_08
	smpsModSet          $01, $01, $10, $01
	dc.b	nEb0, $0C
	smpsChangeTransposition $FD
	smpsModSet          $10, $01, $01, $04
	smpsPSGvoice        s28BitTone_08
	dc.b	nA0, $06, nB0, $0C, nD1, nB0, $06, nD1, nE1, nF1, nFs1, nA1
	dc.b	nB1, $30
	smpsPSGvoice        s28BitTone_03
	smpsModSet          $01, $01, $16, $01
	smpsChangeTransposition $03
	dc.b	nE1, $03, nA0
	smpsPSGvoice        s28BitTone_08
	smpsModSet          $01, $01, $10, $01
	dc.b	nEb0, $0C
	smpsChangeTransposition $FD
	smpsStop

; PSG4 Data
S28Bit_ActClear_PSG4:
	dc.b	dNoise1, $06, dNoise6, dNoise4, $0C, dNoise4, $06, dNoise4, $0C, dNoise4, dNoise4, $06
	dc.b	dNoise4, dNoise4, dNoise4, dNoise4, dNoise4, dNoise1, $0C, dNoise1, dNoise1, dNoise1, dNoise4, $03
	dc.b	dNoise4, dNoise4, $0C
	smpsStop
