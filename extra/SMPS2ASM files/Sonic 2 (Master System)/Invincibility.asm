S28Bit_Invincibility_Header:
	smpsHeaderStartSong 1, 1
	smpsHeaderVoiceNull
	smpsHeaderChan      $00, $04
	smpsHeaderTempo     $01, $03

	smpsHeaderPSG       S28Bit_Invincibility_PSG1,	$00, $03, $00, $00
	smpsHeaderPSG       S28Bit_Invincibility_PSG2,	$00, $03, $00, $00
	smpsHeaderPSG       S28Bit_Invincibility_PSG3,	$00, $03, $00, $00
	smpsHeaderPSG       S28Bit_Invincibility_PSG4,	$01, $00, $00, $00

; PSG1 Data
S28Bit_Invincibility_PSG1:
	smpsPSGvoice        s28BitTone_03
	smpsModSet          $01, $01, $16, $01
	dc.b	nE2, $03, nE2, nAb1, nAb1, nC1, nC1
	smpsPSGvoice        s28BitTone_08
	dc.b	nEb0, $06
	smpsModSet          $01, $01, $00, $01

S28Bit_Invincibility_Loop05:
	smpsPSGvoice        s28BitTone_08
	smpsModSet          $0B, $01, $08, $01
	dc.b	nC3, $0C
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, S28Bit_Invincibility_Loop05
	smpsPSGAlterVol     $F8
	dc.b	nBb2, $06
	smpsModSet          $0B, $01, $FF, $01
	dc.b	nC3, $0C
	smpsModSet          $10, $01, $02, $03
	dc.b	nEb3, $1E

S28Bit_Invincibility_Loop06:
	smpsPSGvoice        s28BitTone_08
	smpsModSet          $0B, $01, $08, $01
	dc.b	nC3, $0C
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, S28Bit_Invincibility_Loop06
	smpsPSGAlterVol     $F8
	dc.b	nBb2, $06
	smpsModSet          $08, $01, $02, $01
	dc.b	nC3, $0C
	smpsModSet          $10, $01, $02, $03
	dc.b	nFs2, $1E
	smpsLoop            $01, $02, S28Bit_Invincibility_Loop05
	smpsPSGAlterVol     $FE

S28Bit_Invincibility_Loop09:
	smpsPSGAlterVol     $08
	dc.b	nRst, $06, nBb2
	smpsPSGAlterVol     $FF

S28Bit_Invincibility_Loop07:
	dc.b	nBb2, nBb2
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $07, S28Bit_Invincibility_Loop07
	dc.b	nBb2, nC3, nRst
	smpsModSet          $10, $01, $08, $01
	dc.b	nC3, $12
	smpsPSGAlterVol     $02

S28Bit_Invincibility_Loop08:
	smpsModSet          $0C, $01, $08, $01
	dc.b	nC3, $0C
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, S28Bit_Invincibility_Loop08
	smpsPSGAlterVol     $F9
	smpsLoop            $01, $02, S28Bit_Invincibility_Loop09
	smpsPSGAlterVol     $02
	smpsJump            S28Bit_Invincibility_Loop05

; PSG3 Data
S28Bit_Invincibility_PSG3:
	smpsPSGAlterVol     $04
	smpsPSGvoice        s28BitTone_03
	smpsModSet          $01, $01, $16, $01
	smpsChangeTransposition $22
	dc.b	nE2, $03, nE2, nAb1, nAb1, nC1, nC1, nEb0, $06
	smpsChangeTransposition $DE
	smpsPSGAlterVol     $FC
	smpsModSet          $01, $01, $00, $01

S28Bit_Invincibility_Jump00:
	smpsPSGvoice        s28BitTone_07
	dc.b	nC0, $06, nC0, nEb0, nC0, nF0, nC0, nFs0, nG0
	smpsJump            S28Bit_Invincibility_Jump00

; PSG2 Data
S28Bit_Invincibility_PSG2:
	smpsPSGvoice        s28BitTone_03
	smpsModSet          $01, $01, $16, $01
	smpsChangeTransposition $03
	dc.b	nE2, $03, nE2, nAb1, nAb1, nC1, nC1
	smpsPSGvoice        s28BitTone_08
	dc.b	nEb0, $06
	smpsChangeTransposition $FD
	smpsModSet          $01, $01, $00, $01
	smpsDetune          $01

S28Bit_Invincibility_Loop00:
	smpsPSGvoice        s28BitTone_08
	smpsModSet          $0B, $01, $08, $01
	dc.b	nC3, $0C
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, S28Bit_Invincibility_Loop00
	smpsPSGAlterVol     $F8
	dc.b	nBb2, $06
	smpsModSet          $0B, $01, $FF, $01
	dc.b	nC3, $0C
	smpsModSet          $10, $01, $02, $03
	dc.b	nEb3, $1E

S28Bit_Invincibility_Loop01:
	smpsPSGvoice        s28BitTone_08
	smpsModSet          $0B, $01, $08, $01
	dc.b	nC3, $0C
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, S28Bit_Invincibility_Loop01
	smpsPSGAlterVol     $F8
	dc.b	nBb2, $06
	smpsModSet          $08, $01, $02, $01
	dc.b	nC3, $0C
	smpsModSet          $10, $01, $02, $03
	dc.b	nFs2, $1E
	smpsLoop            $01, $02, S28Bit_Invincibility_Loop00
	smpsDetune          $FF
	smpsPSGAlterVol     $FE

S28Bit_Invincibility_Loop04:
	smpsPSGAlterVol     $08
	dc.b	nRst, $06, nG2
	smpsPSGAlterVol     $FF

S28Bit_Invincibility_Loop02:
	dc.b	nG2, nG2
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $07, S28Bit_Invincibility_Loop02
	dc.b	nG2, nG2, nRst
	smpsModSet          $10, $01, $08, $01
	dc.b	nG2, $12
	smpsPSGAlterVol     $02

S28Bit_Invincibility_Loop03:
	smpsModSet          $0C, $01, $08, $01
	dc.b	nG2, $0C
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, S28Bit_Invincibility_Loop03
	smpsPSGAlterVol     $F9
	smpsLoop            $01, $02, S28Bit_Invincibility_Loop04
	smpsPSGAlterVol     $02
	smpsJump            S28Bit_Invincibility_Loop00

; PSG4 Data
S28Bit_Invincibility_PSG4:
	dc.b	nRst, $06, dNoise6, dNoise4, dNoise1

S28Bit_Invincibility_Jump01:
	dc.b	dNoise3, $03, nRst, dNoise1, dNoise1, dNoise4, nRst, dNoise1, dNoise1, dNoise3, nRst, dNoise1
	dc.b	dNoise1, dNoise4, nRst, dNoise1, dNoise1
	smpsJump            S28Bit_Invincibility_Jump01
