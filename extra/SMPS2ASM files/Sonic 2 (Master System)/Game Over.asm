S28Bit_GameOver_Header:
	smpsHeaderStartSong 1, 1
	smpsHeaderVoiceNull
	smpsHeaderChan      $00, $04
	smpsHeaderTempo     $02, $05

	smpsHeaderPSG       S28Bit_GameOver_PSG1,	$00, $03, $00, $00
	smpsHeaderPSG       S28Bit_GameOver_PSG2,	$00, $03, $00, $00
	smpsHeaderPSG       S28Bit_GameOver_PSG3,	$00, $03, $00, $00
	smpsHeaderPSG       S28Bit_GameOver_PSG4,	$01, $00, $00, $00

; PSG1 Data
S28Bit_GameOver_PSG1:
	smpsPSGvoice        s28BitTone_06
	smpsPSGAlterVol     $03
	smpsModSet          $0F, $01, $03, $01
	dc.b	nG2, $0C
	smpsPSGAlterVol     $FD
	smpsModSet          $13, $01, $01, $05
	dc.b	nC2, $0C, nBb1, $06, nG1, $0C, nF2, $0D, nE2, $0E, nC2, $10
	smpsModSet          $19, $01, $03, $07
	dc.b	nB1, $36
	smpsStop

; PSG3 Data
S28Bit_GameOver_PSG3:
	smpsPSGvoice        s28BitTone_06
	smpsPSGAlterVol     $03
	smpsModSet          $0F, $01, $04, $01
	dc.b	nC3, $0C
	smpsPSGAlterVol     $FD
	smpsModSet          $13, $01, $01, $05
	dc.b	nE2, $0C, nD2, $06, nBb1, $0C, nBb2, $0D, nG2, $0E, nE2, $10
	smpsModSet          $19, $01, $04, $07
	dc.b	nEb2, $36
	smpsStop

; PSG2 Data
S28Bit_GameOver_PSG2:
	smpsPSGvoice        s28BitTone_06
	smpsPSGAlterVol     $03
	smpsModSet          $0F, $01, $04, $01
	dc.b	nC1, $0C
	smpsPSGAlterVol     $FD
	smpsModSet          $13, $01, $01, $05
	dc.b	nC1, $0C, nBb0, $06, nG0, $0C, nF1, $0D, nE1, $0E, nC1, $10
	smpsModSet          $19, $01, $03, $07
	dc.b	nF0, $36
	smpsStop

; PSG4 Data
S28Bit_GameOver_PSG4:
	dc.b	nRst, $0C, dNoise1, $03, dNoise1, dNoise1, dNoise1, dNoise4, dNoise1, dNoise1, dNoise1, dNoise1
	dc.b	dNoise1, dNoise1, dNoise1, dNoise4, dNoise1, $04, dNoise4, $03, dNoise1, dNoise1, $04, dNoise1
	dc.b	dNoise4, $04, dNoise1, dNoise1, dNoise1

S28Bit_GameOver_Loop00:
	dc.b	dNoise4, $01, dNoise4, dNoise4
	smpsPSGDrumAlterVol $01
	smpsLoop            $00, $0A, S28Bit_GameOver_Loop00

S28Bit_GameOver_Loop01:
	dc.b	dNoise4, $01, dNoise4, dNoise4
	smpsPSGDrumAlterVol $FF
	smpsLoop            $00, $08, S28Bit_GameOver_Loop01
	smpsStop
