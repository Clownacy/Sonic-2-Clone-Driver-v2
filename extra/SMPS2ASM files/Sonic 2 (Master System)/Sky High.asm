S28Bit_SkyHigh_Header:
	smpsHeaderStartSong 1, 1
	smpsHeaderVoiceNull
	smpsHeaderChan      $00, $04
	smpsHeaderTempo     $02, $03

	smpsHeaderPSG       S28Bit_SkyHigh_PSG1,	$C9, $04, $00, $00
	smpsHeaderPSG       S28Bit_SkyHigh_PSG2,	$C9, $04, $00, $00
	smpsHeaderPSG       S28Bit_SkyHigh_PSG3,	$C9, $04, $00, $00
	smpsHeaderPSG       S28Bit_SkyHigh_PSG4,	$01, $00, $00, $00

; PSG1 Data
S28Bit_SkyHigh_PSG1:
	smpsPSGvoice        s28BitTone_0D
	dc.b	nA4, $04, nE5, $02, nA5, $04, nE6, $06
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$04
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FA
	dc.b	nFs6, $0A, nG6, $06
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$04
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FA
	dc.b	nA4, $04, nE5, $02, nA5, $04, nE6, $08, nFs6, $0A, nG6, $08
	dc.b	nFs6, $04
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$04
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FA
	smpsLoop            $00, $02, S28Bit_SkyHigh_PSG1
	smpsPSGAlterVol     $FF
	smpsChangeTransposition $02
	smpsModSet          $20, $01, $02, $06
	smpsPSGvoice        s28BitTone_0B
	dc.b	nF7, $06, nE7, nD7, $04, nE7, $02, nBb6, $18, nA6, $06, $06
	dc.b	nBb6, nG6, nA6, $04, nF6, $06, nG6, $02, nD6, $0C, nF6, $06
	dc.b	$06, nG6, $04, nD6, $26, nRst, $28, nG6, $02, nBb6, $04, nD7
	dc.b	$02, nF7, $06, nE7, nD7, $04, nE7, $02, nBb6, $18, nA6, $06
	dc.b	$06, nBb6, nG6, nRst, $04, nF6, $06, nG6, $02, nD6, $0C, nC6
	dc.b	$04, nBb5, $02, nC6, $04, nBb5, $26, nA5, $04, nG5, $02, nA5
	dc.b	$04, nG5, $2A
	smpsChangeTransposition $FE
	smpsPSGvoice        s28BitTone_14

S28Bit_SkyHigh_Loop01:
	dc.b	nA5, $02, nE6, $04, nA5, $02, nFs6, $04, nA5, $02, nG6, $04
	dc.b	nFs6, $06, nRst, $02
	smpsPSGvoice        s28BitTone_0B
	dc.b	nE7, $06, nC7, $04, nA6, $06, $02, nG6, $04
	smpsPSGvoice        s28BitTone_14
	dc.b	nA5, $02, nE6, $04, nA5, $02, nFs6, $04, nA5, $02, nG6, $04
	dc.b	nFs6, $06
	smpsPSGvoice        s28BitTone_0B
	dc.b	nG6, $02, nC7, $06, nEb6, $04, nD6, $0C
	smpsPSGvoice        s28BitTone_14
	dc.b	nA5, $02, nE6, $04, nA5, $02, nFs6, $04, nA5, $02, nG6, $04
	dc.b	nFs6, $06, nC6, $02, nEb6, $06, nD6, nC6, nD6, $04, nA5, $02
	dc.b	nC6, $04, nD6, $06, nC6, nRst, $1E
	smpsPSGvoice        s28BitTone_14
	smpsLoop            $00, $02, S28Bit_SkyHigh_Loop01
	dc.b	nRst, $02
	smpsPSGAlterVol     $01
	smpsJump            S28Bit_SkyHigh_PSG1

; PSG3 Data
S28Bit_SkyHigh_PSG3:
	smpsPSGvoice        s28BitTone_07

S28Bit_SkyHigh_Jump00:
	dc.b	nA4, $04, nG4, $02, nA4, $04, nC5, $0E, nG4, $0A, $06, $02
	dc.b	nAb4, $06, nA4, $04, nG4, $02, nA4, $04, nC5, $0E, nG4, $0A
	dc.b	$06, nG5, $02, nD5, $06
	smpsJump            S28Bit_SkyHigh_Jump00

; PSG2 Data
S28Bit_SkyHigh_PSG2:
	smpsPSGvoice        s28BitTone_0D
	dc.b	nRst, $0A, nC6, $06
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$04
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FA
	dc.b	$0A, $06
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$04
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FA
	dc.b	nRst, $0A, nC6, $08, $0A, $08, $04
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$04
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FA
	smpsLoop            $00, $02, S28Bit_SkyHigh_PSG2
	smpsChangeTransposition $02
	smpsPSGAlterVol     $02
	smpsPSGvoice        s28BitTone_0B
	dc.b	nRst, $06, nF7, $06, nE7, nD7, $04, nE7, $02, nBb6, $18, nA6
	dc.b	$06, $06, nBb6, nG6, nA6, $04, nF6, $06, nG6, $02, nD6, $0C
	dc.b	nF6, $06, $06, nG6, $04, nD6, $26, nRst, $28, nG6, $02, nBb6
	dc.b	$04, nD7, $02, nF7, $06, nE7, nD7, $04, nE7, $02, nBb6, $18
	dc.b	nA6, $06, $06, nBb6, nG6, nRst, $04, nF6, $06, nG6, $02, nD6
	dc.b	$0C, nC6, $04, nBb5, $02, nC6, $04, nBb5, $26, nA5, $04, nG5
	dc.b	$02, nA5, $04, nG5, $26
	smpsChangeTransposition $FE
	smpsPSGAlterVol     $FE

S28Bit_SkyHigh_Loop00:
	smpsPSGvoice        s28BitTone_14
	dc.b	nC6, $04, nRst, $02, nD6, $04, nRst, $02, nE6, $04, nD6, $06
	dc.b	nRst, $02
	smpsPSGAlterVol     $02
	smpsPSGvoice        s28BitTone_0B
	dc.b	nRst, $06, nE7, $06, nC7, $04, nA6, $06, $02
	smpsPSGAlterVol     $FE
	smpsPSGvoice        s28BitTone_14
	dc.b	nC6, $04, nRst, $02, nD6, $04, nRst, $02, nE6, $04, nD6, $06
	smpsPSGAlterVol     $02
	smpsPSGvoice        s28BitTone_0B
	dc.b	nRst, $06, nG6, $02, nC7, $06, nEb6, $04, nD6, $08
	smpsPSGAlterVol     $FE
	smpsPSGvoice        s28BitTone_14
	dc.b	nC6, $04, nRst, $02, nD6, $04, nRst, $02, nE6, $04, nD6, $06
	dc.b	nA5, $02, nC6, $06, nB5, nA5, nB5, $04, nG5, $02, nA5, $04
	dc.b	nB5, $06, nA5, nRst, $20
	smpsLoop            $00, $02, S28Bit_SkyHigh_Loop00
	smpsJump            S28Bit_SkyHigh_PSG2

; PSG4 Data
S28Bit_SkyHigh_PSG4:
	smpsCall            S28Bit_SkyHigh_Call00
	smpsLoop            $00, $03, S28Bit_SkyHigh_PSG4
	smpsCall            S28Bit_SkyHigh_Call01
	smpsJump            S28Bit_SkyHigh_PSG4

S28Bit_SkyHigh_Call00:
	dc.b	dNoise3, $04, dNoise1, $02, dNoise3, $04, dNoise1, $02, dNoise4, $04
	smpsPSGDrumAlterVol $02
	dc.b	dNoise4, $02
	smpsPSGDrumAlterVol $02
	dc.b	dNoise4, $04
	smpsPSGDrumAlterVol $02
	dc.b	dNoise4, $02
	smpsPSGDrumAlterVol $FA
	dc.b	dNoise3, $04, dNoise4, $02, dNoise1, $04, $02, dNoise4, $04, dNoise1, $02, $04
	dc.b	$02
	smpsReturn

S28Bit_SkyHigh_Call01:
	dc.b	dNoise3, $04, dNoise4, $02, dNoise3, $04, dNoise3, $02, dNoise4, $04, dNoise1, $02
	dc.b	dNoise1, $04, dNoise4, $02, dNoise3, $04, dNoise4, $02, dNoise1, $04, $02, dNoise4
	dc.b	$02, dNoise4, dNoise4, dNoise4, dNoise4, dNoise4
	smpsReturn
