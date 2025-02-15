S28Bit_Boss_Header:
	smpsHeaderStartSong 1, 1
	smpsHeaderVoiceNull
	smpsHeaderChan      $00, $04
	smpsHeaderTempo     $01, $03

	smpsHeaderPSG       S28Bit_Boss_PSG1,	$EB, $05, $00, $00
	smpsHeaderPSG       S28Bit_Boss_PSG2,	$C7, $04, $00, $00
	smpsHeaderPSG       S28Bit_Boss_PSG3,	$C7, $03, $00, $00
	smpsHeaderPSG       S28Bit_Boss_PSG4,	$01, $00, $00, $00

; PSG1 Data
S28Bit_Boss_PSG1:
	dc.b	nRst, $20
	smpsChangeTransposition $E8

S28Bit_Boss_Loop04:
	smpsPSGvoice        s28BitTone_0F
	dc.b	nRst, $04, nC6, nA5, nRst, nC6, nA5, nRst, nC6, nA5, nRst, nC6
	dc.b	nA5, nRst, nC6, nA5, nE6, nRst, nD6, nA5, nRst, nD6, nA5, nRst
	dc.b	nD6, nA5, nRst, nD6, nA5, nRst, nD6, nA5, nF6, nRst, nC6, nA5
	dc.b	nRst, nC6, nA5, nRst, nC6, nA5, nRst, nC6, nA5, nRst, nC6, nA5
	dc.b	nEb6, nRst, nC6, nA5, nRst, nC6, nA5, nRst, nC6, nA5, nRst, nC6
	dc.b	nA5, nRst, nC6, nA5, nE6
	smpsLoop            $00, $02, S28Bit_Boss_Loop04
	smpsPSGAlterVol     $FE
	smpsPSGvoice        s28BitTone_06
	smpsModSet          $01, $01, $01, $04

S28Bit_Boss_Loop05:
	dc.b	nE6, $04, nC6
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, S28Bit_Boss_Loop05
	smpsPSGAlterVol     $F8

S28Bit_Boss_Loop06:
	dc.b	nF6, $04, nD6
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, S28Bit_Boss_Loop06
	smpsPSGAlterVol     $F8

S28Bit_Boss_Loop07:
	dc.b	nEb6, $04, nC6
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, S28Bit_Boss_Loop07
	smpsPSGAlterVol     $F8

S28Bit_Boss_Loop08:
	dc.b	nE6, $04, nC6
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, S28Bit_Boss_Loop08
	smpsPSGAlterVol     $F8
	smpsLoop            $01, $02, S28Bit_Boss_Loop05

S28Bit_Boss_Loop09:
	dc.b	nF6, $04, nD6
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, S28Bit_Boss_Loop09
	smpsPSGAlterVol     $F8

S28Bit_Boss_Loop0A:
	dc.b	nA6, $04, nF6
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, S28Bit_Boss_Loop0A
	smpsPSGAlterVol     $F8

S28Bit_Boss_Loop0B:
	dc.b	nF6, $04, nD6
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, S28Bit_Boss_Loop0B
	smpsPSGAlterVol     $F8

S28Bit_Boss_Loop0C:
	dc.b	nD6, $04, nB5
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, S28Bit_Boss_Loop0C
	smpsPSGAlterVol     $F8
	smpsLoop            $01, $02, S28Bit_Boss_Loop09
	smpsPSGvoice        s28BitTone_07
	smpsModSet          $00, $00, $00, $00
	smpsPSGAlterVol     $02
	smpsPSGAlterVol     $FE

S28Bit_Boss_Loop0E:
	smpsNoteFill        $03
	dc.b	nA6, $04, $04
	smpsNoteFill        $00

S28Bit_Boss_Loop0D:
	dc.b	nA6, $04, nRst
	smpsPSGAlterVol     $02
	smpsLoop            $00, $07, S28Bit_Boss_Loop0D
	smpsPSGAlterVol     $F2
	smpsLoop            $01, $02, S28Bit_Boss_Loop0E
	dc.b	nRst, $40, nRst
	smpsPSGAlterVol     $02
	smpsJump            S28Bit_Boss_Loop04

; PSG2 Data
S28Bit_Boss_PSG2:
	smpsDetune          $01
	dc.b	nRst, $04

; PSG3 Data
S28Bit_Boss_PSG3:
	dc.b	nRst, $20
	smpsPSGvoice        s28BitTone_14

S28Bit_Boss_Loop00:
	smpsCall            S28Bit_Boss_Call00
	smpsLoop            $00, $10, S28Bit_Boss_Loop00
	smpsChangeTransposition $02

S28Bit_Boss_Loop01:
	smpsCall            S28Bit_Boss_Call00
	smpsLoop            $00, $08, S28Bit_Boss_Loop01
	smpsChangeTransposition $FE

S28Bit_Boss_Loop02:
	smpsCall            S28Bit_Boss_Call00
	smpsLoop            $00, $03, S28Bit_Boss_Loop02
	dc.b	nA4, $08

S28Bit_Boss_Loop03:
	dc.b	nA4, $08
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, S28Bit_Boss_Loop03
	smpsPSGAlterVol     $F9
	smpsJump            S28Bit_Boss_Loop00

S28Bit_Boss_Call00:
	dc.b	nA4, $04, $04, nRst, nA4, nG5, nA5, nA4, nA4, nRst, nG5, nA5
	dc.b	nA4, nG5, nA5, nA4, nA4
	smpsReturn

; PSG4 Data
S28Bit_Boss_PSG4:
	dc.b	dNoise4, $04, dNoise4, dNoise4, dNoise4, dNoise4, nRst, $08, dNoise4, $04

S28Bit_Boss_Loop0F:
	dc.b	dNoise3, $04, dNoise1, dNoise1, dNoise1, dNoise4, dNoise1, dNoise1, dNoise4, dNoise3, dNoise4, dNoise1
	dc.b	dNoise1, dNoise4, dNoise1, dNoise1, dNoise4
	smpsLoop            $00, $03, S28Bit_Boss_Loop0F
	dc.b	dNoise3, $04, dNoise4, dNoise1, dNoise1, dNoise4, dNoise4, dNoise1, dNoise4, dNoise4, dNoise4, dNoise3
	dc.b	dNoise4, dNoise4, dNoise4, dNoise4, dNoise4
	smpsLoop            $01, $06, S28Bit_Boss_Loop0F

S28Bit_Boss_Loop10:
	dc.b	dNoise1, dNoise1, dNoise6, dNoise1
	smpsLoop            $00, $0C, S28Bit_Boss_Loop10
	dc.b	dNoise4, dNoise4, dNoise4, dNoise4, dNoise4, dNoise1, dNoise1, dNoise4, dNoise1, nRst, $0C, dNoise4
	dc.b	$04, nRst, $08, dNoise4, $04
	smpsJump            S28Bit_Boss_Loop0F
