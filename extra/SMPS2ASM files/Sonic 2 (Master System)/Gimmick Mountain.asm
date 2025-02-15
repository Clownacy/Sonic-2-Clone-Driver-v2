S28Bit_GimmickMountain_Header:
	smpsHeaderStartSong 1, 1
	smpsHeaderVoiceNull
	smpsHeaderChan      $00, $04
	smpsHeaderTempo     $02, $05

	smpsHeaderPSG       S28Bit_GimmickMountain_PSG1,	$00, $03, $00, $00
	smpsHeaderPSG       S28Bit_GimmickMountain_PSG2,	$00, $04, $00, $00
	smpsHeaderPSG       S28Bit_GimmickMountain_PSG3,	$00, $03, $00, $00
	smpsHeaderPSG       S28Bit_GimmickMountain_PSG4,	$01, $00, $00, $00

; PSG1 Data
S28Bit_GimmickMountain_PSG1:
	smpsADSRMode        $03, $FF, $02, $01
	dc.b	nBb1, $30
	smpsADSRMode        $00, $00, $00, $00

S28Bit_GimmickMountain_Jump02:
	smpsCall            S28Bit_GimmickMountain_Call05
	smpsCall            S28Bit_GimmickMountain_Call05
	smpsChangeTransposition $01
	smpsCall            S28Bit_GimmickMountain_Call05
	smpsCall            S28Bit_GimmickMountain_Call05
	smpsChangeTransposition $FF
	smpsChangeTransposition $13
	smpsCall            S28Bit_GimmickMountain_Call04
	smpsChangeTransposition $ED
	smpsPSGAlterVol     $02

S28Bit_GimmickMountain_Loop03:
	smpsPSGvoice        s28BitTone_06
	dc.b	nC2, $06, nG2, $03, nC2, nA2, $06, nC2, $03, nBb2, $06, nC2
	dc.b	$03, nC3, $12
	smpsLoop            $00, $04, S28Bit_GimmickMountain_Loop03
	smpsChangeTransposition $01
	smpsLoop            $01, $02, S28Bit_GimmickMountain_Loop03
	smpsChangeTransposition $FE
	smpsCall            S28Bit_GimmickMountain_Call02

S28Bit_GimmickMountain_Loop04:
	smpsPSGvoice        s28BitTone_06
	dc.b	nC2, $06, nG2, $03, nC2, nA2, $06, nC2, $03, nBb2, $06, nC2
	dc.b	$03, nC3, $12
	smpsLoop            $00, $04, S28Bit_GimmickMountain_Loop04
	smpsChangeTransposition $01
	smpsLoop            $01, $02, S28Bit_GimmickMountain_Loop04
	smpsChangeTransposition $FE
	smpsPSGAlterVol     $FE
	smpsJump            S28Bit_GimmickMountain_Jump02

S28Bit_GimmickMountain_Call02:
	smpsPSGvoice        s28BitTone_06
	dc.b	nC2, $03, nG1, nBb1, nEb2, nC2
	smpsPSGAlterVol     $02
	dc.b	nC2
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $05, S28Bit_GimmickMountain_Call02
	smpsPSGAlterVol     $04
	dc.b	nC2
	smpsPSGAlterVol     $02
	dc.b	nC2
	smpsPSGAlterVol     $FA
	smpsLoop            $01, $02, S28Bit_GimmickMountain_Call02
	smpsChangeTransposition $01
	smpsLoop            $02, $02, S28Bit_GimmickMountain_Call02
	smpsChangeTransposition $FE
	smpsReturn

S28Bit_GimmickMountain_Call05:
	smpsPSGAlterVol     $08

S28Bit_GimmickMountain_Loop0E:
	smpsPSGvoice        s28BitTone_03
	dc.b	nG1, $03, nG1
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $08, S28Bit_GimmickMountain_Loop0E

S28Bit_GimmickMountain_Loop0F:
	dc.b	nG1
	smpsLoop            $00, $08, S28Bit_GimmickMountain_Loop0F
	smpsPSGvoice        s28BitTone_08
	dc.b	nAb1, $01, nA1, nBb1, $0A, nAb1, $0C
	smpsReturn

; PSG3 Data
S28Bit_GimmickMountain_PSG3:
	smpsADSRMode        $03, $FF, $02, $01
	dc.b	nG0, $30
	smpsADSRMode        $00, $00, $00, $00

S28Bit_GimmickMountain_Jump01:
	smpsCall            S28Bit_GimmickMountain_Call03
	smpsCall            S28Bit_GimmickMountain_Call03
	smpsChangeTransposition $01
	smpsCall            S28Bit_GimmickMountain_Call03
	smpsCall            S28Bit_GimmickMountain_Call03
	smpsChangeTransposition $FF
	smpsCall            S28Bit_GimmickMountain_Call04

S28Bit_GimmickMountain_Loop02:
	smpsCall            S28Bit_GimmickMountain_Call03
	smpsCall            S28Bit_GimmickMountain_Call03
	smpsChangeTransposition $01
	smpsCall            S28Bit_GimmickMountain_Call03
	smpsCall            S28Bit_GimmickMountain_Call03
	smpsChangeTransposition $FF
	smpsLoop            $02, $03, S28Bit_GimmickMountain_Loop02
	smpsJump            S28Bit_GimmickMountain_Jump01

S28Bit_GimmickMountain_Call03:
	smpsPSGvoice        s28BitTone_04
	dc.b	nC0, $06, nEb0, nC0, $03, nG0, $06, nC0, $03, nEb0, $06, nC0
	dc.b	$03, nG0, $06, nC0, $03, nEb0, $06, nC0, $06, nEb0, nC0, $03
	dc.b	nG0, $06, nC0, $03, nEb0, $06, nC0, $03, nFs0, $06, nC0, $03
	dc.b	nEb0, $06
	smpsReturn

S28Bit_GimmickMountain_Call04:
	smpsPSGvoice        s28BitTone_03
	dc.b	nC0, $03
	smpsPSGAlterVol     $04
	dc.b	nC0
	smpsPSGAlterVol     $FC

S28Bit_GimmickMountain_Loop0B:
	dc.b	nC0
	smpsPSGAlterVol     $02
	dc.b	nC0
	smpsPSGAlterVol     $02
	dc.b	nC0
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $04, S28Bit_GimmickMountain_Loop0B
	dc.b	nCs0
	smpsPSGAlterVol     $02
	dc.b	nCs0
	smpsPSGAlterVol     $FE
	dc.b	nC0
	smpsPSGAlterVol     $04
	dc.b	nC0
	smpsPSGAlterVol     $FC

S28Bit_GimmickMountain_Loop0C:
	dc.b	nC0
	smpsPSGAlterVol     $02
	dc.b	nC0
	smpsPSGAlterVol     $02
	dc.b	nC0
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $04, S28Bit_GimmickMountain_Loop0C
	dc.b	nEb0
	smpsPSGAlterVol     $02
	dc.b	nEb0
	smpsPSGAlterVol     $FE
	smpsPSGvoice        s28BitTone_03
	dc.b	nC0, $03
	smpsPSGAlterVol     $04
	dc.b	nC0
	smpsPSGAlterVol     $FC

S28Bit_GimmickMountain_Loop0D:
	dc.b	nC0
	smpsPSGAlterVol     $02
	dc.b	nC0
	smpsPSGAlterVol     $02
	dc.b	nC0
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $04, S28Bit_GimmickMountain_Loop0D
	dc.b	nCs0
	smpsPSGAlterVol     $02
	dc.b	nCs0
	smpsPSGAlterVol     $FE
	dc.b	nC0
	smpsPSGAlterVol     $04
	dc.b	nC0
	smpsPSGAlterVol     $FC
	dc.b	nC0
	smpsPSGAlterVol     $02
	dc.b	nC0
	smpsPSGAlterVol     $02
	dc.b	nC0
	smpsPSGAlterVol     $FC
	dc.b	nC0
	smpsPSGAlterVol     $02
	dc.b	nC0
	smpsPSGAlterVol     $FE
	dc.b	nEb0
	smpsPSGAlterVol     $02
	dc.b	nEb0
	smpsPSGAlterVol     $02
	dc.b	nEb0
	smpsPSGAlterVol     $FC
	dc.b	nEb0
	smpsPSGAlterVol     $02
	dc.b	nEb0
	smpsPSGAlterVol     $FE
	dc.b	nCs0
	smpsPSGAlterVol     $02
	dc.b	nCs0
	smpsPSGAlterVol     $FE
	dc.b	nCs0
	smpsPSGAlterVol     $02
	dc.b	nCs0
	smpsPSGAlterVol     $FE
	smpsLoop            $01, $02, S28Bit_GimmickMountain_Call04
	smpsReturn

; PSG2 Data
S28Bit_GimmickMountain_PSG2:
	smpsADSRMode        $03, $FF, $02, $01
	dc.b	nF1, $30
	smpsADSRMode        $00, $00, $00, $00

S28Bit_GimmickMountain_Jump00:
	smpsCall            S28Bit_GimmickMountain_Call00
	smpsCall            S28Bit_GimmickMountain_Call00
	smpsChangeTransposition $01
	smpsCall            S28Bit_GimmickMountain_Call00
	smpsCall            S28Bit_GimmickMountain_Call00
	smpsChangeTransposition $FF
	smpsChangeTransposition $0C
	smpsCall            S28Bit_GimmickMountain_Call01
	smpsChangeTransposition $F4
	smpsPSGAlterVol     $02

S28Bit_GimmickMountain_Loop00:
	smpsPSGvoice        s28BitTone_06
	dc.b	nG1, $06, nC2, $03, nG1, nD2, $06, nG1, $03, nEb2, $06, nG1
	dc.b	$03
	smpsPSGvoice        s28BitTone_04
	smpsNoteFill        $03
	dc.b	nC4, $06
	smpsPSGAlterVol     $02
	dc.b	nC4
	smpsPSGAlterVol     $02
	dc.b	nC4
	smpsPSGAlterVol     $FC
	smpsNoteFill        $00
	smpsLoop            $00, $04, S28Bit_GimmickMountain_Loop00
	smpsChangeTransposition $01
	smpsLoop            $01, $02, S28Bit_GimmickMountain_Loop00
	smpsChangeTransposition $FE
	smpsChangeTransposition $FB
	smpsCall            S28Bit_GimmickMountain_Call02
	smpsChangeTransposition $05

S28Bit_GimmickMountain_Loop01:
	smpsPSGvoice        s28BitTone_06
	dc.b	nG1, $06, nC2, $03, nG1, nD2, $06, nG1, $03, nEb2, $06, nG1
	dc.b	$03
	smpsPSGvoice        s28BitTone_04
	smpsNoteFill        $03
	dc.b	nC4, $06
	smpsPSGAlterVol     $02
	dc.b	nC4
	smpsPSGAlterVol     $02
	dc.b	nC4
	smpsPSGAlterVol     $FC
	smpsNoteFill        $00
	smpsLoop            $00, $04, S28Bit_GimmickMountain_Loop01
	smpsChangeTransposition $01
	smpsLoop            $01, $02, S28Bit_GimmickMountain_Loop01
	smpsChangeTransposition $FE
	smpsPSGAlterVol     $FE
	smpsJump            S28Bit_GimmickMountain_Jump00

S28Bit_GimmickMountain_Call00:
	smpsPSGAlterVol     $08

S28Bit_GimmickMountain_Loop09:
	smpsPSGvoice        s28BitTone_03
	dc.b	nD1, $03, nD1
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $08, S28Bit_GimmickMountain_Loop09

S28Bit_GimmickMountain_Loop0A:
	dc.b	nD1
	smpsLoop            $00, $08, S28Bit_GimmickMountain_Loop0A
	smpsPSGvoice        s28BitTone_08
	dc.b	nEb1, $01, nE1, nF1, $0A, nEb1, $0C
	smpsReturn

S28Bit_GimmickMountain_Call01:
	smpsPSGvoice        s28BitTone_03
	dc.b	nRst, $06

S28Bit_GimmickMountain_Loop06:
	dc.b	nEb0, $03
	smpsPSGAlterVol     $02
	dc.b	nEb0
	smpsPSGAlterVol     $02
	dc.b	nEb0
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $04, S28Bit_GimmickMountain_Loop06
	dc.b	nF0
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FE
	dc.b	nRst, $06

S28Bit_GimmickMountain_Loop07:
	dc.b	nEb0, $03
	smpsPSGAlterVol     $02
	dc.b	nEb0
	smpsPSGAlterVol     $02
	dc.b	nEb0
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $04, S28Bit_GimmickMountain_Loop07
	dc.b	nG0
	smpsPSGAlterVol     $02
	dc.b	nG0
	smpsPSGAlterVol     $FE
	smpsPSGvoice        s28BitTone_03
	dc.b	nEb0, $03
	smpsPSGAlterVol     $04
	dc.b	nEb0
	smpsPSGAlterVol     $FC

S28Bit_GimmickMountain_Loop08:
	dc.b	nEb0
	smpsPSGAlterVol     $02
	dc.b	nEb0
	smpsPSGAlterVol     $02
	dc.b	nEb0
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $04, S28Bit_GimmickMountain_Loop08
	dc.b	nF0
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FE
	dc.b	nEb0
	smpsPSGAlterVol     $04
	dc.b	nEb0
	smpsPSGAlterVol     $FC
	dc.b	nEb0
	smpsPSGAlterVol     $02
	dc.b	nEb0
	smpsPSGAlterVol     $02
	dc.b	nEb0
	smpsPSGAlterVol     $FC
	dc.b	nEb0
	smpsPSGAlterVol     $02
	dc.b	nEb0
	smpsPSGAlterVol     $FE
	dc.b	nG0
	smpsPSGAlterVol     $02
	dc.b	nG0
	smpsPSGAlterVol     $02
	dc.b	nG0
	smpsPSGAlterVol     $FC
	dc.b	nG0
	smpsPSGAlterVol     $02
	dc.b	nG0
	smpsPSGAlterVol     $FE
	dc.b	nF0
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FE
	dc.b	nF0
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FE
	smpsLoop            $01, $02, S28Bit_GimmickMountain_Call01
	smpsReturn

; PSG4 Data
S28Bit_GimmickMountain_PSG4:
	dc.b	nRst, $18, dNoise4, $03, dNoise4, dNoise4, dNoise4, dNoise3, dNoise4, dNoise4, dNoise4

S28Bit_GimmickMountain_Loop05:
	dc.b	dNoise3, $03, dNoise1, dNoise3, dNoise1, dNoise4, dNoise1, dNoise3, dNoise4, dNoise1, dNoise4, dNoise3
	dc.b	dNoise1, dNoise4, dNoise1, dNoise1, dNoise1, dNoise3, dNoise1, dNoise3, dNoise1, dNoise4, dNoise1, dNoise3
	dc.b	dNoise4, dNoise1, dNoise4, dNoise3, dNoise1, dNoise4, dNoise1, dNoise4, dNoise1
	smpsLoop            $00, $03, S28Bit_GimmickMountain_Loop05
	dc.b	dNoise3, dNoise1, dNoise3, dNoise1, dNoise4, dNoise1, dNoise3, dNoise4, dNoise1, dNoise4, dNoise3, dNoise1
	dc.b	dNoise4, dNoise1, dNoise1, dNoise1, dNoise3, dNoise1, dNoise3, dNoise1, dNoise4, dNoise1, dNoise3, dNoise4
	dc.b	dNoise1, dNoise4, dNoise3, dNoise1, dNoise4, dNoise4, dNoise4, dNoise4
	smpsJump            S28Bit_GimmickMountain_Loop05
