S28Bit_BadEnding_Header:
	smpsHeaderStartSong 1, 1
	smpsHeaderVoiceNull
	smpsHeaderChan      $00, $04
	smpsHeaderTempo     $02, $03

	smpsHeaderPSG       S28Bit_BadEnding_PSG1,	$D8, $02, $00, $00
	smpsHeaderPSG       S28Bit_BadEnding_PSG2,	$D8, $04, $00, $00
	smpsHeaderPSG       S28Bit_BadEnding_PSG3,	$CC, $02, $00, $00
	smpsHeaderPSG       S28Bit_BadEnding_PSG4,	$01, $00, $00, $00

; PSG1 Data
S28Bit_BadEnding_PSG1:
	smpsPSGvoice        s28BitTone_14

S28Bit_BadEnding_Loop06:
	dc.b	nE6, $12, nD6, $1E, nB5, $12, nC6, nB5, $0C
	smpsLoop            $00, $02, S28Bit_BadEnding_Loop06
	smpsPSGvoice        s28BitTone_06
	smpsModSet          $15, $02, $01, $04
	dc.b	nRst, $0C, nA5, $06, nC6, nC6, nA5, nC6, nA5, nE6, nD6, $0C
	dc.b	nC6, nD6, $06, nG5, $0C, nRst, nA5, $06, nC6, nC6, nA5, nC6
	dc.b	nA5, nE6, nD6, $0C, nC6, nD6, $12, nRst, $0C, nA5, $06, nC6
	dc.b	nC6, nA5, nC6, nA5, nA6, nG6, $0C, nE6, nE6, $06, $06, nF6
	dc.b	nG6, $30
	smpsModSet          $0A, $01, $03, $03
	dc.b	nRst, $1E, nBb4, $12
	smpsModSet          $15, $02, $01, $04
	dc.b	nRst, $0C, nA5, $06, nC6, nC6, nA5, nC6, nA5, nE6, nD6, $0C
	dc.b	nC6, nD6, $06, nG5, $0C, nRst, nA5, $06, nC6, nC6, nA5, nC6
	dc.b	nA5, nE6, nD6, $0C, nC6, nD6, $12, nRst, $0C, nA5, $06, nC6
	dc.b	nC6, nA5, nC6, nA5, nA6, nG6, $0C, nE6, nE6, $06, $06, nF6
	dc.b	nG6, $30, nRst, $24, nC7, $06, nB6, nA6, $0C, nG6, nE6, $06
	dc.b	nC6, nD6, nE6, smpsNoAttack, $06, nB5, nG5, $18, nA6, $06, nB6, nC7
	dc.b	$0C, nB6, nA6, $06, nC6, nD6, nE6, smpsNoAttack, $0C, nRst, $12, nE6
	dc.b	$06, nG6, nFs6, nF6, $0C, nA5, $06, nBb5, nB5, $0C, nE6, $06
	dc.b	nD6, nC6, nB5, nC6, nC7, $0C, nA6, $06, nB6, nC7, nC7, $0C
	dc.b	nAb6, nG6, $06, nEb6, nF6, nG6, smpsNoAttack, $0C, nRst, $24, nRst, $18
	dc.b	nE6, $06, nF6, nG6, nA6, nF6, $12, nC7, nB6, $06, nA6, nG6
	dc.b	$0C, nG5, $06, nA5, nB5, nC6, nD6, nE6, smpsNoAttack, $18, nRst, $06
	dc.b	nE6, nE6, nE6, nF6, nE6, nC6, nA5, $12, $06, $06, nB5, nC6
	dc.b	nD6, nE6, $0C, nD6, $06, nE6, nF6, smpsNoAttack, $0C, nE6, nF6, $06
	dc.b	nE6, nD6, nC6, smpsNoAttack, $06, nD6, nD6, $24, nRst, $18, nE6, $06
	dc.b	nF6, nG6, nA6, nF6, $12, nC7, nB6, $06, nA6, nG6, $0C, nG5
	dc.b	$06, nA5, nB5, nC6, nE6, nB6, smpsNoAttack, $06, nA6, $12, nRst, $06
	dc.b	nE6, nE6, nE6, nF6, nE6, nD6, nC6, $12, $06, nB5, nA5, nG5
	dc.b	nG5, smpsNoAttack, $0C, nB5, $06, nC6, nD6, nD6, $12, nC6, $1E, smpsNoAttack
	dc.b	$24, nRst, $0C

S28Bit_BadEnding_Loop07:
	dc.b	nE6, $12, nD6, $1E, nB5, $12, nC6, nB5, $0C
	smpsLoop            $00, $03, S28Bit_BadEnding_Loop07
	smpsSetTempoMod     $03
	dc.b	nE6, $12, nD6, nC6, $0C, nB5, $30
	smpsStop

; PSG3 Data
S28Bit_BadEnding_PSG3:
	smpsPSGvoice        s28BitTone_11

S28Bit_BadEnding_Loop02:
	smpsCall            S28Bit_BadEnding_Call00
	smpsLoop            $00, $02, S28Bit_BadEnding_Loop02

S28Bit_BadEnding_Loop03:
	smpsCall            S28Bit_BadEnding_Call00
	smpsLoop            $00, $02, S28Bit_BadEnding_Loop03
	smpsCall            S28Bit_BadEnding_Call01
	smpsCall            S28Bit_BadEnding_Call02

S28Bit_BadEnding_Loop04:
	smpsCall            S28Bit_BadEnding_Call00
	smpsLoop            $00, $02, S28Bit_BadEnding_Loop04
	smpsCall            S28Bit_BadEnding_Call01
	smpsCall            S28Bit_BadEnding_Call03
	dc.b	nF4, $04
	smpsPSGAlterVol     $04
	dc.b	nC6, $02, nB5, nRst
	smpsPSGAlterVol     $FC
	dc.b	nF4
	smpsPSGAlterVol     $04
	dc.b	nA5, nRst, nG5
	smpsPSGAlterVol     $FC
	dc.b	nF4, $04
	smpsPSGAlterVol     $04
	dc.b	nG5, $02, nA5, nRst, nA5, nG5, nRst
	smpsPSGAlterVol     $FC
	dc.b	nC5, nD5, $04
	smpsPSGAlterVol     $04
	dc.b	nA5, $02
	smpsPSGAlterVol     $FC
	dc.b	nEb5, $04
	smpsPSGAlterVol     $04
	dc.b	nB5, $02
	smpsPSGAlterVol     $FC
	dc.b	nE4, $04
	smpsPSGAlterVol     $04
	dc.b	nB5, $02, nA5, nRst
	smpsPSGAlterVol     $FC
	dc.b	nE4
	smpsPSGAlterVol     $04
	dc.b	nG5, nRst, nG5
	smpsPSGAlterVol     $FC
	dc.b	nE4, $04
	smpsPSGAlterVol     $04
	dc.b	nE5, $02, nG5, nRst, nG5, nE5, nRst
	smpsPSGAlterVol     $FC
	dc.b	nE4, nG4, $04
	smpsPSGAlterVol     $04
	dc.b	nG5, $02
	smpsPSGAlterVol     $FC
	dc.b	nAb4, $04
	smpsPSGAlterVol     $04
	dc.b	nA5, $02
	smpsPSGAlterVol     $FC
	dc.b	nA4, $04
	smpsPSGAlterVol     $04
	dc.b	nC6, $02, nB5, nRst
	smpsPSGAlterVol     $FC
	dc.b	nA4
	smpsPSGAlterVol     $04
	dc.b	nA5, nRst, nG5
	smpsPSGAlterVol     $FC
	dc.b	nA4, $04
	smpsPSGAlterVol     $04
	dc.b	nA5, $02, $02, nRst, nA5, nG5, nRst
	smpsPSGAlterVol     $FC
	dc.b	nB4, nD5, $04
	smpsPSGAlterVol     $04
	dc.b	nA5, $02
	smpsPSGAlterVol     $FC
	dc.b	nEb5, $04
	smpsPSGAlterVol     $04
	dc.b	nB5, $02
	smpsPSGAlterVol     $FC
	dc.b	nE4, $04
	smpsPSGAlterVol     $04
	dc.b	nB5, $02, nA5, nRst
	smpsPSGAlterVol     $FC
	dc.b	nE4
	smpsPSGAlterVol     $04
	dc.b	nG5, nRst, nE5
	smpsPSGAlterVol     $FC
	dc.b	nE4, $04
	smpsPSGAlterVol     $04
	dc.b	nG5, $02, nE5, nRst, nG5, nE5, nRst
	smpsPSGAlterVol     $FC
	dc.b	nE4, nE5, $04
	smpsPSGAlterVol     $04
	dc.b	nG6, $02
	smpsPSGAlterVol     $FC
	dc.b	nEb5, $04
	smpsPSGAlterVol     $04
	dc.b	nFs6, $02
	smpsPSGAlterVol     $FC
	dc.b	nD5, $04
	smpsPSGAlterVol     $04
	dc.b	nE6, $02, nD6, nRst
	smpsPSGAlterVol     $FC
	dc.b	nD5
	smpsPSGAlterVol     $04
	dc.b	nE6, nRst, nD6
	smpsPSGAlterVol     $FC
	dc.b	nG4, $04
	smpsPSGAlterVol     $04
	dc.b	$02, nC6, nRst, nC6, nB5, nRst, nB5, nC6, nRst, nC6, nD6, nRst
	dc.b	nD6
	smpsPSGAlterVol     $FC
	dc.b	nA4, $04
	smpsPSGAlterVol     $04
	dc.b	nC6, $02, nB5, nRst
	smpsPSGAlterVol     $FC
	dc.b	nA4
	smpsPSGAlterVol     $04
	dc.b	nA5, nRst, nA5
	smpsPSGAlterVol     $FC
	dc.b	nA4, $04
	smpsPSGAlterVol     $04
	dc.b	nG5, $02, nA5, nRst, nA5, nG5, nRst, nG5, nA5, nRst, nA5, nB5
	dc.b	nRst, nB5
	smpsPSGAlterVol     $FC
	dc.b	nF4, $04
	smpsPSGAlterVol     $04
	dc.b	nC6, $02, nAb5, nRst
	smpsPSGAlterVol     $FC
	dc.b	nF4
	smpsPSGAlterVol     $04
	dc.b	nC6, nRst, nAb5
	smpsPSGAlterVol     $FC
	dc.b	nF4, $04
	smpsPSGAlterVol     $04
	dc.b	nAb5, $02, nEb6, nRst, nEb6, nC6, nRst, nC6, nAb5, nRst, nAb5, nF5
	dc.b	nRst, nF5
	smpsPSGAlterVol     $FC
	dc.b	nG4, $04
	smpsPSGAlterVol     $04
	dc.b	nB5, $02, nG5, nRst
	smpsPSGAlterVol     $FC
	dc.b	nG4
	smpsPSGAlterVol     $04
	dc.b	nB5, nRst, nG5
	smpsPSGAlterVol     $FC
	dc.b	nG4, $04
	smpsPSGAlterVol     $04
	dc.b	nG5, $02, nA5, nRst, nG5
	smpsPSGAlterVol     $FC
	dc.b	nG4, $04
	smpsPSGAlterVol     $04
	dc.b	nG5, $02
	smpsPSGAlterVol     $FC
	dc.b	nA4, $04
	smpsPSGAlterVol     $04
	dc.b	nA5, $02
	smpsPSGAlterVol     $FC
	dc.b	nG4, $04
	smpsPSGAlterVol     $04
	dc.b	nB5, $02
	smpsPSGAlterVol     $FC
	smpsPSGvoice        s28BitTone_0C
	smpsCall            S28Bit_BadEnding_Call04
	dc.b	nE4, nE4, nE4, nE4, $04, nE4, $06, nE4, $02, $06, $06, $06
	dc.b	nF4, nF4, nF4, nF4, nF4, nF4, nF4, nF4, nG4, nG4, nG4, nG4
	dc.b	$04, nG4, $06, nG4, $02, $06, $06, $06
	smpsCall            S28Bit_BadEnding_Call04
	dc.b	nG4, nG4, nG4, nG4, $04, nG4, $06, nG4, $02, $06, $06, $06
	dc.b	nF4, $15, nC5, $02, nF5, $04, nG5, $02, nF5, $07, nC5, $04
	dc.b	nF5, nC5, nF4, $30

S28Bit_BadEnding_Loop05:
	smpsCall            S28Bit_BadEnding_Call00
	smpsLoop            $00, $03, S28Bit_BadEnding_Loop05
	dc.b	nD5, $04
	smpsPSGAlterVol     $04
	dc.b	nC6, $02, nB5, nRst
	smpsPSGAlterVol     $FC
	dc.b	nD5
	smpsPSGAlterVol     $04
	dc.b	nC6, nRst, nB5
	smpsPSGAlterVol     $FC
	dc.b	nG4, $04
	smpsPSGAlterVol     $04
	dc.b	nC6, $02, nB5, nRst, nC6, nRst, nD6
	smpsPSGAlterVol     $FC
	dc.b	nG4, nD5, $06, nCs5, $06, nC5, $30
	smpsStop

S28Bit_BadEnding_Call00:
	dc.b	nD5, $04
	smpsPSGAlterVol     $04
	dc.b	nC6, $02, nB5, nRst
	smpsPSGAlterVol     $FC
	dc.b	nD5
	smpsPSGAlterVol     $04
	dc.b	nC6, nRst, nB5
	smpsPSGAlterVol     $FC
	dc.b	nD5, $04
	smpsPSGAlterVol     $04
	dc.b	nC6, $02, nB5, nRst, nC6, nD5, nD6
	smpsPSGAlterVol     $FC
	dc.b	nD5, nF4, $04
	smpsPSGAlterVol     $04
	dc.b	nC6, $02
	smpsPSGAlterVol     $FC
	dc.b	nFs4, $04
	smpsPSGAlterVol     $04
	dc.b	nB5, $02
	smpsPSGAlterVol     $FC
	dc.b	nG4, $04
	smpsPSGAlterVol     $04
	dc.b	nC6, $02, nB5, nRst
	smpsPSGAlterVol     $FC
	dc.b	nG4
	smpsPSGAlterVol     $04
	dc.b	nC6, nRst, nB5
	smpsPSGAlterVol     $FC
	dc.b	nG4, $04
	smpsPSGAlterVol     $04
	dc.b	nC6, $02, nB5, nRst, nC6, nRst, nD6
	smpsPSGAlterVol     $FC
	dc.b	nG4, nC5, $04
	smpsPSGAlterVol     $04
	dc.b	nC6, $02
	smpsPSGAlterVol     $FC
	dc.b	nCs5, $04
	smpsPSGAlterVol     $04
	dc.b	nB5, $02
	smpsPSGAlterVol     $FC
	smpsReturn

S28Bit_BadEnding_Call01:
	dc.b	nD5, $04
	smpsPSGAlterVol     $04
	dc.b	nC6, $02, nB5, nRst
	smpsPSGAlterVol     $FC
	dc.b	nD5
	smpsPSGAlterVol     $04
	dc.b	nC6, nRst, nB5
	smpsPSGAlterVol     $FC
	dc.b	nD5, $04
	smpsPSGAlterVol     $04
	dc.b	nC6, $02, nB5, nRst, nC6, nRst, nD6
	smpsPSGAlterVol     $FC
	dc.b	nD5, nF5, $04
	smpsPSGAlterVol     $04
	dc.b	nC6, $02
	smpsPSGAlterVol     $FC
	dc.b	nFs5, $04
	smpsPSGAlterVol     $04
	dc.b	nB5, $02
	smpsPSGAlterVol     $FC
	dc.b	nG5, $04
	smpsPSGAlterVol     $04
	dc.b	nC6, $02, nB5, nRst
	smpsPSGAlterVol     $FC
	dc.b	nD5
	smpsPSGAlterVol     $04
	dc.b	nC6, nRst, nB5
	smpsPSGAlterVol     $FC
	dc.b	nG4, $04
	smpsPSGAlterVol     $04
	dc.b	nC6, $02, nB5, nRst, nC6, nRst, nD6
	smpsPSGAlterVol     $FC
	dc.b	nG4, nD5, $04
	smpsPSGAlterVol     $04
	dc.b	nA5, $02
	smpsPSGAlterVol     $FC
	dc.b	nCs5, $04
	smpsPSGAlterVol     $04
	dc.b	nAb5, $02
	smpsPSGAlterVol     $FC
	smpsReturn

S28Bit_BadEnding_Call02:
	dc.b	nC5, $04
	smpsPSGAlterVol     $04
	dc.b	nG5, $02, nA5, nRst
	smpsPSGAlterVol     $FC
	dc.b	nC5
	smpsPSGAlterVol     $04
	dc.b	nG5, nRst, nA5
	smpsPSGAlterVol     $FC
	dc.b	nC5, $04
	smpsPSGAlterVol     $04
	dc.b	nG5, $02, nA5, nRst, nG5, nRst, nD6
	smpsPSGAlterVol     $FC
	dc.b	nG4, nA4, $04
	smpsPSGAlterVol     $04
	dc.b	nE6, $02
	smpsPSGAlterVol     $FC
	dc.b	nG4, $04
	smpsPSGAlterVol     $04
	dc.b	nD6, $02
	smpsPSGAlterVol     $FC
	dc.b	nC5, $04
	smpsPSGAlterVol     $04
	dc.b	nG5, $02, nA5, nRst
	smpsPSGAlterVol     $FC
	dc.b	nC5
	smpsPSGAlterVol     $04
	dc.b	nG5, nRst, nA5
	smpsPSGAlterVol     $FC
	dc.b	nC5, $04
	smpsPSGAlterVol     $04
	dc.b	nG5, $02, nA5, nRst, nG5
	smpsPSGAlterVol     $FC
	dc.b	nEb5, $12
	smpsReturn

S28Bit_BadEnding_Call03:
	dc.b	nC5, $04
	smpsPSGAlterVol     $04
	dc.b	nG5, $02, nA5, nRst
	smpsPSGAlterVol     $FC
	dc.b	nC5
	smpsPSGAlterVol     $04
	dc.b	nG5, nRst, nA5
	smpsPSGAlterVol     $FC
	dc.b	nC5, $04
	smpsPSGAlterVol     $04
	dc.b	nG5, $02, nA5, nRst, nB5, nD6, nRst
	smpsPSGAlterVol     $FC
	dc.b	nG4, nA4, $04
	smpsPSGAlterVol     $04
	dc.b	nF6, $02
	smpsPSGAlterVol     $FC
	dc.b	nG4, $04
	smpsPSGAlterVol     $04
	dc.b	nE6, $02
	smpsPSGAlterVol     $FC
	dc.b	nC5, $04
	smpsPSGAlterVol     $04
	dc.b	nG5, $02, nA5, nRst
	smpsPSGAlterVol     $FC
	dc.b	nC5
	smpsPSGAlterVol     $04
	dc.b	nG5, nRst, nA5
	smpsPSGAlterVol     $FC
	dc.b	nC5, $04
	smpsPSGAlterVol     $04
	dc.b	nG5, $02
	smpsPSGAlterVol     $FC
	dc.b	nB4, $04
	smpsPSGAlterVol     $04
	dc.b	nF5, $02, nB5, nRst, nD6
	smpsPSGAlterVol     $FC
	dc.b	nE4, $04
	smpsPSGAlterVol     $04
	dc.b	nAb5, $02, nB5, nRst, nF6
	smpsPSGAlterVol     $FC
	smpsReturn

S28Bit_BadEnding_Call04:
	dc.b	nC5, $06, nC5, nC5, nC5, nC5, nC5, nC5, nC5, nD5, nD5, nD5
	dc.b	nD5, $04, nD5, $06, nD5, $02, $06, $06, $06, nE4, nE4, nE4
	dc.b	nE4, nE4, nE4, nE4, nE4, nA4, nA4, nA4, nA4, $04, nA4, $06
	dc.b	nA4, $02, $06, $06, $06, nD5, nD5, nD5, nD5, nD5, nD5, nD5
	dc.b	nD5
	smpsReturn

; PSG2 Data
S28Bit_BadEnding_PSG2:
	smpsPSGvoice        s28BitTone_14

S28Bit_BadEnding_Loop00:
	dc.b	nG5, $12, nF5, $1E, nD5, $12, nE5, nD5, $0C
	smpsLoop            $00, $02, S28Bit_BadEnding_Loop00
	smpsPSGvoice        s28BitTone_06
	dc.b	nRst, $04, nRst, $0C, nA5, $06, nC6, nC6, nA5, nC6, nA5, nE6
	dc.b	nD6, $0C, nC6, nD6, $06, nG5, $0C, nRst, nA5, $06, nC6, nC6
	dc.b	nA5, nC6, nA5, nE6, nD6, $0C, nC6, nD6, $12, nRst, $0C, nA5
	dc.b	$06, nC6, nC6, nA5, nC6, nA5, nA6, nG6, $0C, nE6, nE6, $06
	dc.b	$06, nF6, nG6, $2C
	smpsModSet          $0A, $01, $03, $03
	dc.b	nRst, $1E, nFs4, $12
	smpsModSet          $00, $00, $00, $00
	dc.b	nRst, $04, nRst, $0C, nA5, $06, nC6, nC6, nA5, nC6, nA5, nE6
	dc.b	nD6, $0C, nC6, nD6, $06, nG5, $0C, nRst, nA5, $06, nC6, nC6
	dc.b	nA5, nC6, nA5, nE6, nD6, $0C, nC6, nD6, $12, nRst, $0C, nA5
	dc.b	$06, nC6, nC6, nA5, nC6, nA5, nA6, nG6, $0C, nE6, nE6, $06
	dc.b	$06, nF6, nG6, $30, nRst, $24, nC7, $06, nB6, $02
	smpsPSGAlterVol     $01
	smpsModSet          $15, $02, $01, $04
	smpsChangeTransposition $F4
	dc.b	nC7, $0C, nB6, nG6, $06, nE6, nF6, nG6, smpsNoAttack, $06, nD6, nB5
	dc.b	$18, nRst, $0C
	smpsPSGAlterVol     $FF
	smpsChangeTransposition $0C
	smpsModSet          $00, $00, $00, $00
	dc.b	nRst, $04, nC7, $0C, nB6, nA6, $06, nC6, nD6, nE6, smpsNoAttack, $0C
	dc.b	nRst, $0E
	smpsPSGAlterVol     $01
	smpsChangeTransposition $F4
	smpsModSet          $15, $02, $01, $04
	dc.b	nG6, $06, nB6, nBb6, nA6, $0C, nC6, $06, nCs6, nD6, $0C, nG6
	dc.b	$06, nF6, nE6, nD6, nE6, nE7, $0C
	smpsPSGAlterVol     $FF
	smpsChangeTransposition $0C
	smpsModSet          $00, $00, $00, $00
	dc.b	nRst, $04, nA6, $06, nB6, nC7, nC7, $0C, nAb6, nG6, $06, nEb6
	dc.b	nF6, nG6, smpsNoAttack, $0C, nRst, $24, nRst, $18, nE6, $06, nF6, nG6
	dc.b	nA6, nF6, $12, nC7, nB6, $06, nA6, nG6, $0C, nG5, $06, nA5
	dc.b	nB5, nC6, nD6, nE6, smpsNoAttack, $18, nRst, $06, nE6, nE6, nE6, nF6
	dc.b	nE6, nC6, nA5, $12, $06, $06, nB5, nC6, nD6, nE6, $0C, nD6
	dc.b	$06, nE6, nF6, smpsNoAttack, $0C, nE6, nF6, $06, nE6, nD6, nC6, smpsNoAttack
	dc.b	$06, nD6, nD6, $20
	smpsModSet          $15, $02, $01, $04
	dc.b	nRst, $18, nC6, $06, nD6, nE6, nF6, nD6, $12, nA6, nG6, $06
	dc.b	nF6, nE6, $0C, nE5, $06, nF5, nG5, nA5, nC6, nG6, smpsNoAttack, $06
	dc.b	nE6, $12, nRst, $06, nC6, nC6, nC6, nD6, nC6, nB5, nA5, $12
	dc.b	$06, nG5, nF5, nE5, nD5, smpsNoAttack, $0C, nD5, $06, nE5, nF5, nF5
	dc.b	$12, $1E, smpsNoAttack, $24, nRst, $0C

S28Bit_BadEnding_Loop01:
	dc.b	nG5, $12, nF5, $1E, nD5, $12, nE5, nD5, $0C
	smpsLoop            $00, $03, S28Bit_BadEnding_Loop01
	dc.b	nG5, $12, nF5, nD5, $0C, nE5, $30
	smpsStop

; PSG4 Data
S28Bit_BadEnding_PSG4:
	dc.b	nRst, $30, nRst, nRst
	smpsPSGDrumAlterVol $07

S28Bit_BadEnding_Loop08:
	dc.b	dNoise1, $02, $02
	smpsPSGDrumAlterVol $FF
	smpsLoop            $00, $07, S28Bit_BadEnding_Loop08
	dc.b	dNoise1, $02, dNoise4, $06, dNoise4, $04, $02, dNoise3, $06

S28Bit_BadEnding_Loop09:
	dc.b	dNoise3, $04, dNoise1, $02, dNoise1, $04, dNoise3, $02, dNoise4, $04, dNoise1, $02
	dc.b	dNoise3, $04, dNoise1, $02, dNoise1, $04, dNoise1, $02, dNoise3, $04, dNoise1, $02
	dc.b	dNoise4, $04, dNoise1, $02, dNoise1, $02, dNoise1, dNoise1, dNoise3, $04, dNoise1, $02
	dc.b	dNoise1, $04, dNoise3, $02, dNoise4, $04, dNoise1, $02, dNoise3, $04, dNoise1, $02
	dc.b	dNoise1, $04, dNoise1, $02, dNoise3, $04, dNoise1, $02, dNoise4, $04, dNoise1, $02
	dc.b	dNoise1, $04, dNoise4, $02
	smpsLoop            $00, $17, S28Bit_BadEnding_Loop09
	dc.b	dNoise3, $04, dNoise1, $02, dNoise1, $04, dNoise3, $02, dNoise4, $04, dNoise1, $02
	dc.b	dNoise3, $04, dNoise1, $02, dNoise1, $04, dNoise1, $02, dNoise3, $04, dNoise1, $02
	dc.b	dNoise4, $04, dNoise1, $02, dNoise1, $02, dNoise1, dNoise1, dNoise6, $06, nRst, $2A
	dc.b	dNoise3, $06
	smpsStop
