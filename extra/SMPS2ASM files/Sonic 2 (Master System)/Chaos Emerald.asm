S28Bit_ChaosEmerald_Header:
	smpsHeaderStartSong 1, 1
	smpsHeaderVoiceNull
	smpsHeaderChan      $00, $04
	smpsHeaderTempo     $02, $00

	smpsHeaderPSG       S28Bit_ChaosEmerald_PSG1,	$D5, $02, $00, $00
	smpsHeaderPSG       S28Bit_ChaosEmerald_PSG2,	$D5, $03, $00, $00
	smpsHeaderPSG       S28Bit_ChaosEmerald_PSG3,	$C9, $02, $00, $00
	smpsHeaderPSG       S28Bit_ChaosEmerald_PSG4,	$01, $00, $00, $00

; PSG1 Data
S28Bit_ChaosEmerald_PSG1:
	smpsPSGvoice        s28BitTone_08
	dc.b	nC7, $08, $02, $02, $02, $02, $04, $04, $04, $04, nAb6, $08
	dc.b	nBb6, $08, nAb6, $08, nBb6, $08
	smpsPSGvoice        $00
	smpsPSGAlterVol     $07
	smpsModSet          $01, $01, $01, $04
	dc.b	nC7, $04

S28Bit_ChaosEmerald_Loop02:
	dc.b	smpsNoAttack, $04
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $07, S28Bit_ChaosEmerald_Loop02
	smpsStop

; PSG3 Data
S28Bit_ChaosEmerald_PSG3:
	smpsPSGvoice        s28BitTone_08
	dc.b	nC5, $08, $02, $02, $02, $02, $04, $04, $04, $04, nAb4, $08
	dc.b	nG4, $08, nAb4, $08, nBb4, $08
	smpsPSGvoice        $00
	smpsPSGAlterVol     $07
	smpsModSet          $01, $01, $01, $04
	dc.b	nC5, $04

S28Bit_ChaosEmerald_Loop01:
	dc.b	smpsNoAttack, $04
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $07, S28Bit_ChaosEmerald_Loop01
	smpsStop

; PSG2 Data
S28Bit_ChaosEmerald_PSG2:
	smpsPSGvoice        s28BitTone_11
	dc.b	nE6, $08, $02, $02, $02, $02, $04, $04, $04, $04, nC6, $02
	dc.b	nEb5, nAb5, nC6, nD6, nB4, nF5, nBb5, nC6, nC5, nEb5, nAb5, nD6
	dc.b	nD5, nF5, nBb5, nE6, nG6
	smpsPSGAlterVol     $05
	smpsPSGvoice        s28BitTone_06

S28Bit_ChaosEmerald_Loop00:
	dc.b	nE7, nG7
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $07, S28Bit_ChaosEmerald_Loop00
	smpsStop

; PSG4 Data
S28Bit_ChaosEmerald_PSG4:
	dc.b	dNoise4, $08, dNoise1, $02, $02, $02, $02, $04, $04, $04, $04, dNoise4
	dc.b	$08, $08, $08, $08
	smpsPSGDrumAlterVol $0C

S28Bit_ChaosEmerald_Loop03:
	dc.b	dNoise1, $02
	smpsPSGDrumAlterVol $FF
	smpsLoop            $00, $0C, S28Bit_ChaosEmerald_Loop03

S28Bit_ChaosEmerald_Loop04:
	dc.b	dNoise1, $02
	smpsLoop            $00, $04, S28Bit_ChaosEmerald_Loop04
	smpsStop
