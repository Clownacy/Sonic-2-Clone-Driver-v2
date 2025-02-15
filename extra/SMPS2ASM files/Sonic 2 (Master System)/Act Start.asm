S28Bit_ActStart_Header:
	smpsHeaderStartSong 1, 1
	smpsHeaderVoiceNull
	smpsHeaderChan      $00, $04
	smpsHeaderTempo     $02, $07

	smpsHeaderPSG       S28Bit_ActStart_PSG1,	$00, $03, $00, $00
	smpsHeaderPSG       S28Bit_ActStart_PSG2,	$0C, $03, $00, $00
	smpsHeaderPSG       S28Bit_ActStart_PSG3,	$07, $03, $00, $00
	smpsHeaderPSG       S28Bit_ActStart_PSG4,	$01, $00, $00, $00

; PSG1 Data
S28Bit_ActStart_PSG1:
	smpsPSGvoice        s28BitTone_08
	dc.b	nC0, $03, nEb0, nF0, nFs0, nRst, nG0, nRst, nBb0, nRst, nB0, nRst
	dc.b	nC1, nRst, nEb1, nF1, nFs1, nG1, nG1, nG1, nG1, nRst
	smpsPSGAlterVol     $04

S28Bit_ActStart_Loop00:
	dc.b	nG1, $03, nRst
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, S28Bit_ActStart_Loop00
	smpsStop

; PSG3 Data
S28Bit_ActStart_PSG3:
	smpsJump            S28Bit_ActStart_PSG1

; PSG2 Data
S28Bit_ActStart_PSG2:
	smpsJump            S28Bit_ActStart_PSG1

; PSG4 Data
S28Bit_ActStart_PSG4:
	dc.b	dNoise3, $03, dNoise1, dNoise4, dNoise1, dNoise3, dNoise1, dNoise4, dNoise1, dNoise3, dNoise1, dNoise4
	dc.b	dNoise1, dNoise3, dNoise1, dNoise4, dNoise1, dNoise4, $03, dNoise4, dNoise4, dNoise4
	smpsStop
