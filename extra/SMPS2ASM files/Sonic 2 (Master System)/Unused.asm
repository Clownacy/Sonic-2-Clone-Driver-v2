S28Bit_Unused_Header:
	smpsHeaderStartSong 1, 1
	smpsHeaderVoiceNull
	smpsHeaderChan      $00, $04
	smpsHeaderTempo     $02, $05

	smpsHeaderPSG       S28Bit_Unused_PSG1,	$00, $02, $00, $00
	smpsHeaderPSG       S28Bit_Unused_PSG2,	$00, $02, $00, $00
	smpsHeaderPSG       S28Bit_Unused_PSG3,	$00, $04, $00, $00
	smpsHeaderPSG       S28Bit_Unused_PSG4,	$01, $00, $00, $00

; PSG1 Data
S28Bit_Unused_PSG1:
	smpsPSGvoice        s28BitTone_04
	dc.b	nA3, $03, nF3, nB3, nF3, nC4, nF3, nD4, nF3
	smpsLoop            $00, $08, S28Bit_Unused_PSG1

S28Bit_Unused_Loop02:
	dc.b	nG3, $03, nE3, nA3, nE3, nB3, nE3, nC4, nE3
	smpsLoop            $00, $08, S28Bit_Unused_Loop02

S28Bit_Unused_Loop03:
	smpsPSGvoice        s28BitTone_04
	dc.b	nA3, $03, nF3, nB3, nF3, nC4, nF3, nD4, nF3
	smpsLoop            $00, $08, S28Bit_Unused_Loop03

S28Bit_Unused_Loop04:
	dc.b	nG3, $03, nE3, nA3, nE3, nB3, nE3, nC4, nE3
	smpsLoop            $00, $08, S28Bit_Unused_Loop04

S28Bit_Unused_Loop05:
	dc.b	nC4, $03, nA3, nD4, nA3, nE4, nA3, nF4, nA3
	smpsLoop            $00, $08, S28Bit_Unused_Loop05

S28Bit_Unused_Loop06:
	dc.b	nB3, $03, nG3, nC4, nG3, nD4, nG3, nE4, nG3
	smpsLoop            $00, $08, S28Bit_Unused_Loop06
	smpsJump            S28Bit_Unused_Loop03

; PSG3 Data
S28Bit_Unused_PSG3:
	smpsPSGvoice        s28BitTone_02
	dc.b	nF1, $02, nA1, nC2, nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $FD
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, S28Bit_Unused_PSG3
	smpsPSGAlterVol     $F8
	smpsLoop            $01, $04, S28Bit_Unused_PSG3
	smpsChangeTransposition $FB
	smpsLoop            $02, $02, S28Bit_Unused_PSG3
	smpsChangeTransposition $0A

S28Bit_Unused_Loop00:
	smpsPSGvoice        s28BitTone_03
	dc.b	nF0, $03
	smpsPSGAlterVol     $05
	dc.b	nF0
	smpsPSGAlterVol     $FB
	dc.b	nA0
	smpsPSGAlterVol     $05
	dc.b	nA0
	smpsPSGAlterVol     $FB
	dc.b	nC1
	smpsPSGAlterVol     $05
	dc.b	nC1
	smpsPSGAlterVol     $FB
	dc.b	nE1, nF0
	smpsPSGAlterVol     $05
	dc.b	nF0
	smpsPSGAlterVol     $FB
	dc.b	nF0, nA0
	smpsPSGAlterVol     $05
	dc.b	nA0
	smpsPSGAlterVol     $FB
	dc.b	nC1
	smpsPSGAlterVol     $05
	dc.b	nC1
	smpsPSGAlterVol     $FB
	dc.b	nE1
	smpsPSGAlterVol     $05
	dc.b	nE1
	smpsPSGAlterVol     $FB
	smpsLoop            $00, $04, S28Bit_Unused_Loop00

S28Bit_Unused_Loop01:
	smpsPSGvoice        s28BitTone_03
	dc.b	nC0, $03
	smpsPSGAlterVol     $05
	dc.b	nC0
	smpsPSGAlterVol     $FB
	dc.b	nE0
	smpsPSGAlterVol     $05
	dc.b	nE0
	smpsPSGAlterVol     $FB
	dc.b	nG0
	smpsPSGAlterVol     $05
	dc.b	nG0
	smpsPSGAlterVol     $FB
	dc.b	nB0, nC0
	smpsPSGAlterVol     $05
	dc.b	nC0
	smpsPSGAlterVol     $FB
	dc.b	nC0, nE0
	smpsPSGAlterVol     $05
	dc.b	nE0
	smpsPSGAlterVol     $FB
	dc.b	nG0
	smpsPSGAlterVol     $05
	dc.b	nG0
	smpsPSGAlterVol     $FB
	dc.b	nB0
	smpsPSGAlterVol     $05
	dc.b	nB0
	smpsPSGAlterVol     $FB
	smpsLoop            $00, $04, S28Bit_Unused_Loop01
	smpsJump            S28Bit_Unused_Loop00

; PSG2 Data
S28Bit_Unused_PSG2:
	dc.b	nRst, $09
	smpsPSGAlterVol     $05
	smpsJump            S28Bit_Unused_PSG1

; PSG4 Data
S28Bit_Unused_PSG4:
	dc.b	nRst, $30
	smpsLoop            $00, $07, S28Bit_Unused_PSG4
	smpsPSGDrumAlterVol $01
	dc.b	nRst, $18, dNoise1, $03, dNoise4, dNoise1, dNoise1, dNoise4, dNoise1, dNoise4, dNoise4

S28Bit_Unused_Loop07:
	dc.b	dNoise1, $03, dNoise1, dNoise1, dNoise1, dNoise4, dNoise1, dNoise1, dNoise1, dNoise1, dNoise1, dNoise1
	dc.b	dNoise1, dNoise4, dNoise1, dNoise1, dNoise1
	smpsLoop            $00, $07, S28Bit_Unused_Loop07
	dc.b	dNoise1, $03, dNoise1, dNoise1, dNoise1, dNoise4, dNoise1, dNoise1, dNoise1, dNoise1, dNoise4, dNoise1
	dc.b	dNoise1, dNoise4, dNoise1, dNoise4, dNoise4
	smpsJump            S28Bit_Unused_Loop07
