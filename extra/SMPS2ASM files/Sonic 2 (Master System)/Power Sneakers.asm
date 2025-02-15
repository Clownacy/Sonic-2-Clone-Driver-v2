S28Bit_PowerSneakers_Header:
	smpsHeaderStartSong 1, 1
	smpsHeaderVoiceNull
	smpsHeaderChan      $00, $04
	smpsHeaderTempo     $01, $04

	smpsHeaderPSG       S28Bit_PowerSneakers_PSG1,	$CC, $04, $00, $00
	smpsHeaderPSG       S28Bit_PowerSneakers_PSG2,	$CC, $05, $00, $00
	smpsHeaderPSG       S28Bit_PowerSneakers_PSG3,	$CC, $03, $00, $00
	smpsHeaderPSG       S28Bit_PowerSneakers_PSG4,	$01, $00, $00, $00

; PSG1 Data
S28Bit_PowerSneakers_PSG1:
	dc.b	nRst, $40
	smpsPSGvoice        s28BitTone_08

S28Bit_PowerSneakers_Loop02:
	dc.b	nC5, $04, nE5, nG5, nC6, nE6, nC6, nG5, nE5, nC5, nE5, nG5
	dc.b	nRst, nE6, nC6, nG5, nE5
	smpsLoop            $00, $02, S28Bit_PowerSneakers_Loop02

S28Bit_PowerSneakers_Loop03:
	dc.b	nG5, $04, nB5, nD6, nFs6, nA6, nFs6, nD6, nB5, nG5, nB5, nD6
	dc.b	nFs6, nA6, nFs6, nD6, nB5
	smpsLoop            $00, $02, S28Bit_PowerSneakers_Loop03

S28Bit_PowerSneakers_Loop08:
	smpsPSGAlterVol     $07

S28Bit_PowerSneakers_Loop04:
	dc.b	nA6, $02, nA7, nA6, nA7
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $08, S28Bit_PowerSneakers_Loop04
	smpsPSGAlterVol     $01
	smpsPSGAlterVol     $07

S28Bit_PowerSneakers_Loop05:
	dc.b	nG6, nG7, nG6, nG7
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $08, S28Bit_PowerSneakers_Loop05
	smpsPSGAlterVol     $01
	smpsPSGAlterVol     $07

S28Bit_PowerSneakers_Loop06:
	dc.b	nD6, nD7, nD6, nD7
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $08, S28Bit_PowerSneakers_Loop06
	smpsPSGAlterVol     $01

S28Bit_PowerSneakers_Loop07:
	dc.b	nD6, nD7, nD6, nD7
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, S28Bit_PowerSneakers_Loop07
	smpsPSGAlterVol     $F8
	smpsLoop            $01, $02, S28Bit_PowerSneakers_Loop08
	smpsJump            S28Bit_PowerSneakers_Loop02

; PSG3 Data
S28Bit_PowerSneakers_PSG3:
	smpsPSGvoice        s28BitTone_07
	dc.b	nRst, $40

S28Bit_PowerSneakers_Jump00:
	dc.b	nA4, $08, nC5, nE4, nG4, nA4, $04, nC5, nRst, nC5, nE4, $08
	dc.b	nG4
	smpsJump            S28Bit_PowerSneakers_Jump00

; PSG2 Data
S28Bit_PowerSneakers_PSG2:
	smpsPSGvoice        s28BitTone_08
	dc.b	nRst, $40

S28Bit_PowerSneakers_Loop00:
	dc.b	nA5, $04, nC6, nE6, nG6, nA6, nG6, nE6, nC6, nA5, nC6, nE6
	dc.b	nG6, nA6, nG6, nE6, nC6
	smpsLoop            $00, $02, S28Bit_PowerSneakers_Loop00

S28Bit_PowerSneakers_Loop01:
	dc.b	nA5, $04, nD6, nFs6, nA6, nC7, nA6, nFs6, nD6, nA5, nD6, nFs6
	dc.b	nA6, nC7, nA6, nFs6, nD6
	smpsLoop            $00, $02, S28Bit_PowerSneakers_Loop01
	smpsJump            S28Bit_PowerSneakers_Loop00

; PSG4 Data
S28Bit_PowerSneakers_PSG4:
	dc.b	dNoise4, $04, $04, $04, $04, dNoise3, dNoise4, dNoise4, nRst, dNoise4, dNoise3, dNoise4
	dc.b	nRst, dNoise4, dNoise4, dNoise4, nRst

S28Bit_PowerSneakers_Jump01:
	dc.b	dNoise1, $04
	smpsPSGDrumAlterVol $02
	dc.b	dNoise1, $04, dNoise1, dNoise1
	smpsPSGDrumAlterVol $FE
	smpsJump            S28Bit_PowerSneakers_Jump01
