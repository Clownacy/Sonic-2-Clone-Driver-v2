s3p21_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     s3p21_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $15

	smpsHeaderDAC       s3p21_DAC
	smpsHeaderFM        s3p21_FM1,	$0C, $12
	smpsHeaderFM        s3p21_FM2,	$18, $17
	smpsHeaderFM        s3p21_FM3,	$0C, $12
	smpsHeaderFM        s3p21_FM4,	$00, $14
	smpsHeaderFM        s3p21_FM5,	$00, $14
	smpsHeaderPSG       s3p21_PSG1,	$00, $06, $00, sTone_0C
	smpsHeaderPSG       s3p21_PSG2,	$00, $06, $00, sTone_0C
	smpsHeaderPSG       s3p21_PSG3,	$00, $02, $00, sTone_0C

; DAC Data
s3p21_DAC:
	dc.b	nRst, $32, nRst, $4D, nRst, $32, nRst, $4D, nRst, $46, dKickS3, $18
	dc.b	dKickS3, dSnareS3, $06, dSnareS3, $0C, dSnareS3, $06, dSnareS3, $18, dKickS3, $04, dKickS3
	dc.b	$02, dKickS3, $06, dKickS3, $0C, dKickS3, $18, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3
	dc.b	dSnareS3, $18, dKickS3, $06, dKickS3, dKickS3, $0C, dKickS3, $24, dSnareS3, $06, dSnareS3
	dc.b	dSnareS3, $24, dKickS3, $0C, dKickS3, $24, dSnareS3, $06, dSnareS3, dSnareS3, $18, dKickS3
	dc.b	$06, dKickS3, dSnareS3, dFloorTomS3, dFloorTomS3, dFloorTomS3, dFloorTomS3, dLowTomS3, dMidTomS3, $0C, dSnareS3, $06
	dc.b	dSnareS3, dSnareS3, $18, dKickS3, $04, dKickS3, $02, dKickS3, $06, dKickS3, $0C, dKickS3
	dc.b	$18, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3, dSnareS3, $18, dKickS3, $06, dKickS3, dKickS3
	dc.b	$0C, dKickS3, $24, dSnareS3, $06, dSnareS3, dSnareS3, $24, dKickS3, $0C, dKickS3, $24
	dc.b	dSnareS3, $06, dSnareS3, dSnareS3, $18, dKickS3, $06, dKickS3, dSnareS3, dFloorTomS3, dFloorTomS3, dFloorTomS3
	dc.b	dFloorTomS3, dLowTomS3, dMidTomS3, $0C, dSnareS3, $06, dSnareS3, dSnareS3, $18, dKickS3, $04, dKickS3
	dc.b	$02, dKickS3, $06, dKickS3, $0C, dKickS3, $18, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3
	dc.b	dSnareS3, $18, dKickS3, $06, dKickS3, dKickS3, $0C, dKickS3, $24, dSnareS3, $06, dSnareS3
	dc.b	dSnareS3, $24, dKickS3, $0C, dKickS3, $24, dSnareS3, $06, dSnareS3, dSnareS3, $18, dKickS3
	dc.b	$06, dKickS3, dSnareS3, dFloorTomS3, dFloorTomS3, dFloorTomS3, dFloorTomS3, dLowTomS3, dMidTomS3, $0C, dSnareS3, $06
	dc.b	dSnareS3, dSnareS3, $18, dKickS3, $04, dKickS3, $02, dKickS3, $06, dKickS3, $0C, dKickS3
	dc.b	$18, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3, dSnareS3, $18, dKickS3, $06, dKickS3, dKickS3
	dc.b	$0C, dKickS3, $24, dSnareS3, $06, dSnareS3, dSnareS3, $24, dKickS3, $0C, dKickS3, $24
	dc.b	dSnareS3, $06, dSnareS3, dSnareS3, $18, dKickS3, $06, dKickS3, dSnareS3, dFloorTomS3, dFloorTomS3, dFloorTomS3
	dc.b	dFloorTomS3, dLowTomS3, dMidTomS3, $0C, dSnareS3, $06, dSnareS3, dSnareS3, $18, dKickS3, $04, dKickS3
	dc.b	$02, dKickS3, $06, dKickS3, $0C, dKickS3, $18, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3
	dc.b	dSnareS3, $18, dKickS3, $06, dKickS3, dKickS3, $0C, dKickS3, $24, dSnareS3, $06, dSnareS3
	dc.b	dSnareS3, $24, dKickS3, $0C, dKickS3, $24, dSnareS3, $06, dSnareS3, dSnareS3, $18, dKickS3
	dc.b	$06, dKickS3, dSnareS3, dFloorTomS3, dFloorTomS3, dFloorTomS3, dFloorTomS3, dLowTomS3, dMidTomS3, $0C, dSnareS3, $06
	dc.b	dSnareS3, dSnareS3, $18, dKickS3, $04, dKickS3, $02, dKickS3, $06, dKickS3, $0C, dKickS3
	dc.b	$18, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3, dSnareS3, $18, dKickS3, $06, dKickS3, dKickS3
	dc.b	$0C, dKickS3, $24, dSnareS3, $06, dSnareS3, dSnareS3, $24, dKickS3, $0C, dKickS3, $24
	dc.b	dSnareS3, $06, dSnareS3, dSnareS3, $18, dKickS3, $06, dKickS3, dSnareS3, dFloorTomS3, dFloorTomS3, dFloorTomS3
	dc.b	dFloorTomS3, dLowTomS3, dMidTomS3, $0C, dSnareS3, $06, dSnareS3, dSnareS3, $18, dKickS3, $04, dKickS3
	dc.b	$02, dKickS3, $06, dKickS3, $0C, dKickS3, $18, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3
	dc.b	dSnareS3, $18, dKickS3, $06, dKickS3, dKickS3, $0C, dKickS3, $24, dSnareS3, $06, dSnareS3
	dc.b	dSnareS3, $24, dKickS3, $0C, dKickS3, $24, dSnareS3, $06, dSnareS3, dSnareS3, $18, dKickS3
	dc.b	$06, dKickS3, dSnareS3, dFloorTomS3, dFloorTomS3, dFloorTomS3, dFloorTomS3, dLowTomS3, dMidTomS3, $0C, dSnareS3, $06
	dc.b	dSnareS3, dSnareS3, $18, dKickS3, $04, dKickS3, $02, dKickS3, $06, dKickS3, $0C, dKickS3
	dc.b	$18, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3, dSnareS3, $18, dKickS3, $06, dKickS3, dKickS3
	dc.b	$0C, dKickS3, $24, dSnareS3, $06, dSnareS3, dSnareS3, $24, dKickS3, $0C, dKickS3, $24
	dc.b	dSnareS3, $06, dSnareS3, dSnareS3, $18, dKickS3, $06, dKickS3, dSnareS3, dFloorTomS3, dFloorTomS3, dFloorTomS3
	dc.b	dFloorTomS3, dLowTomS3, dMidTomS3, $0C
	smpsJump            s3p21_DAC

; FM3 Data
s3p21_FM3:
	smpsSetvoice        $15
	smpsDetune          $04
	smpsModSet          $0F, $01, $FD, $07
	smpsPan             panLeft, $00
	smpsJump            s3p21_Jump02

; FM1 Data
s3p21_FM1:
	smpsSetvoice        $15
	smpsDetune          $FC
	smpsModSet          $0F, $01, $00, $07
	smpsPan             panCenter, $00

s3p21_Jump02:
	dc.b	nG1, $04, nRst, $08, nG1, $06, nRst, nG1, $24, nG2, nG1, $1C
	dc.b	nRst, $08, nG1, $0E, nRst, $0A, nC2, $18, nB1, $0A, nRst, $02
	dc.b	nG1, $04, nRst, $08, nG1, $06, nRst, nG1, $24, nG2, nG1, $1C
	dc.b	nRst, $08, nG1, $0A, nRst, $0E, nG1, $0A, nRst, $1A, nC2, $06
	dc.b	nRst, nC2, $52, nRst, $02, nC3, $22, nRst, $02, nC2, $1E, nRst
	dc.b	$06, nC2, $14, nRst, $04, nBb1, $08, nRst, $04, nBb1, $52, nRst
	dc.b	$02, nBb2, $24, nBb1, nBb2, $16, nRst, $02, nA1, $06, nRst, nA1
	dc.b	$48, nG2, $06, nAb2, $04, nRst, $02, nA2, $22, nRst, $02, nA1
	dc.b	$24, nA2, $18, nAb1, $08, nRst, $04, nAb1, $52, nRst, $02, nAb2
	dc.b	$24, nAb1, nAb2, $16, nRst, $02, nC2, $08, nRst, $04, nC2, $52
	dc.b	nRst, $02, nC3, $24, nC2, nC3, $18, nBb1, $06, nRst, nBb1, $42
	dc.b	nRst, $06, nG2, nA2, nBb2, $22, nRst, $02, nA2, $24, nF2, $16
	dc.b	nRst, $02, nA1, $06, nRst, nA1, $48, nG2, $06, nAb2, $04, nRst
	dc.b	$02, nA2, $22, nRst, $02, nA1, $24, nA2, $18, nAb1, $06, nRst
	dc.b	nAb1, $4E, nRst, $06, nBb1, nRst, nBb1, $4E, nRst, $06, nG1, $48
	dc.b	nG2, $06, nRst, nG2, $46, nRst, $02, nG1, $18, nG2, $0C, nAb1
	dc.b	$46, nRst, $02, nAb2, $08, nRst, $04, nAb2, $46, nRst, $02, nAb1
	dc.b	$0C, nAb2, nAb1, $0A, nRst, $02, nG1, $68, nRst, $04, nG2, $18
	dc.b	nG1, $24, nG2, $18, nAb1, $3C, nAb2, $22, nRst, $02, nBb1, $3C
	dc.b	nBb2, $24, nC2, $5A, nRst, $06, nC3, $24, nC2, nC3, $18, nBb1
	dc.b	$06, nRst, nBb1, $42, nRst, $06, nG2, nA2, nBb2, $22, nRst, $02
	dc.b	nA2, $24, nF2, $16, nRst, $02, nA1, $06, nRst, nA1, $48, nG2
	dc.b	$06, nAb2, $04, nRst, $02, nA2, $22, nRst, $02, nA1, $24, nA2
	dc.b	$18, nAb1, $06, nRst, nAb1, $4E, nRst, $06, nBb1, nRst, nBb1, $4E
	dc.b	nRst, $06
	smpsJump            s3p21_Jump02

; FM2 Data
s3p21_FM2:
	smpsFMAlterVol      $08
	smpsSetvoice        $08
	smpsJump            s3p21_Jump01

s3p21_Jump04:
	dc.b	nG4, $06, nF4, $04, nRst, $02, nB3, $06, nC4, $04, nRst, $02
	dc.b	nG4, $06, nF4, nB3, $04, nRst, $02, nC4, $06, nG4, nF4, $04
	dc.b	nRst, $02, nB3, $06, nC4, $04, nRst, $02, nG4, $06, nF4, nB3
	dc.b	$04, nRst, $02, nC4, $06, nG4, nF4, $04, nRst, $02, nB3, $06
	dc.b	nC4, $04, nRst, $02, nG4, $06, nF4, nB3, $04, nRst, $02, nC4
	dc.b	$06, nG4, nF4, $04, nRst, $02, nB3, $06, nC4, $04, nRst, $02
	dc.b	nG4, $06, nF4, nB3, $04, nRst, $02, nC4, $06, nG4, nF4, $04
	dc.b	nRst, $02, nB3, $06, nC4, $04, nRst, $02, nG4, $06, nF4, nB3
	dc.b	$04, nRst, $02, nC4, $06, nG4, nF4, $04, nRst, $02, nB3, $06
	dc.b	nC4, $04, nRst, $02, nG4, $06, nF4, nB3, $04, nRst, $02, nC4
	dc.b	$06, nG4, nF4, $04, nRst, $02, nB3, $06, nC4, $04, nRst, $02
	dc.b	nG4, $06, nF4, nB3, $02, nRst, $16, nB3, $02, nRst, $22, nC5
	dc.b	$06, nC4, $04, nRst, $02, nC5, $06, nC4, nC5, nC4, nC5, nC4
	dc.b	nC6, $04, nRst, $02, nC4, $04, nRst, $02, nC6, $04, nRst, $02
	dc.b	nC4, $06, nC5, $04, nRst, $02, nC4, $06, nC5, nC4, nC5, nC4
	dc.b	nC5, $04, nRst, $02, nC4, $06, nC5, nC4, nC5, nC4, nC6, $04
	dc.b	nRst, $02, nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4, nC5, nC4
	dc.b	$04, nRst, $02, nC5, $06, nC4, nC5, nC4, nC5, nC4, nC6, $04
	dc.b	nRst, $02, nC4, $04, nRst, $02, nC6, $04, nRst, $02, nC4, $06
	dc.b	nC5, $04, nRst, $02, nC4, $06, nC5, nC4, nC5, nC4, nC5, $04
	dc.b	nRst, $02, nC4, $06, nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b	nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4, nC5, nC4, $04, nRst
	dc.b	$02, nC5, $06, nC4, nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nC6, $04, nRst, $02, nC4, $06, nC5, $04
	dc.b	nRst, $02, nC4, $06, nC5, nC4, nC5, nC4, nC5, $04, nRst, $02
	dc.b	nC4, $06, nC5, nC4, nC5, nC4, nC6, $04, nRst, $02, nC4, $06
	dc.b	nC6, nC4, nC5, nC4, nC5, nC4, nC5, nC4, $04, nRst, $02, nC5
	dc.b	$06, nC4, nC5, nC4, nC5, nC4, nC6, $04, nRst, $02, nC4, $04
	dc.b	nRst, $02, nC6, $04, nRst, $02, nC4, $06, nC5, $04, nRst, $02
	dc.b	nC4, $06, nC5, nC4, nC5, nC4, nC5, $04, nRst, $02, nC4, $06
	dc.b	nC5, nC4, nC5, nC4, nC6, $04, nRst, $02, nC4, $06, nC6, nC4
	dc.b	nC5, nC4, nC5, nC4, nC5, nC4, $04, nRst, $02, nC5, $06, nC4
	dc.b	nC5, nC4, nC5, nC4, nC6, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nC6, $04, nRst, $02, nC4, $06, nC5, $04, nRst, $02, nC4, $06
	dc.b	nC5, nC4, nC5, nC4, nC5, $04, nRst, $02, nC4, $06, nC5, nC4
	dc.b	nC5, nC4, nC6, $04, nRst, $02, nC4, $06, nC6, nC4, nC5, nC4
	dc.b	nC5, nC4, nC5, nC4, $04, nRst, $02, nC5, $06, nC4, nC5, nC4
	dc.b	nC5, nC4, nC6, $04, nRst, $02, nC4, $04, nRst, $02, nC6, $04
	dc.b	nRst, $02, nC4, $06, nC5, $04, nRst, $02, nC4, $06, nC5, nC4
	dc.b	nC5, nC4, nC5, $04, nRst, $02, nC4, $06, nC5, nC4, nC5, nC4
	dc.b	nC6, $04, nRst, $02, nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4
	dc.b	nC5, nC4, $04, nRst, $02, nC5, $06, nC4, nC5, nC4, nC5, nC4
	dc.b	nC6, $04, nRst, $02, nC4, $04, nRst, $02, nC6, $04, nRst, $02
	dc.b	nC4, $06, nC5, $04, nRst, $02, nC4, $06, nC5, nC4, nC5, nC4
	dc.b	nC5, $04, nRst, $02, nC4, $06, nC5, nC4, nC5, nC4, nC6, $04
	dc.b	nRst, $02, nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4, nC5, nC4
	dc.b	$04, nRst, $02, nC5, $06, nC4, nC5, nC4, nC5, nC4, nC6, $04
	dc.b	nRst, $02, nC4, $04, nRst, $02, nC6, $04, nRst, $02, nC4, $06
	dc.b	nC5, $04, nRst, $02, nC4, $06, nC5, nC4, nC5, nC4, nC5, $04
	dc.b	nRst, $02, nC4, $06, nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b	nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4, nG5, nG4, nG5, $04
	dc.b	nRst, $02, nG4, $06, nG5, nG4, nG5, nG4, nG6, $04, nRst, $02
	dc.b	nG4, $06, nG6, nG4, nG5, nG4, nG5, nG4, nG5, nG4, nG5, $04
	dc.b	nRst, $02, nG4, $06, nG5, nG4, nG5, nG4, nG6, $04, nRst, $02
	dc.b	nG4, $06, nG6, nG4, nG5, nG4, nG5, nG4, nAb5, nAb4, nAb5, $04
	dc.b	nRst, $02, nAb4, $06, nAb5, nAb4, nAb5, nAb4, nAb6, $04, nRst, $02
	dc.b	nAb4, $06, nAb6, nAb4, nAb5, nAb4, nAb5, nAb4, nAb5, nAb4, nAb5, $04
	dc.b	nRst, $02, nAb4, $06, nAb5, nAb4, nAb5, nAb4, nAb6, $04, nRst, $02
	dc.b	nAb4, $06, nAb6, nAb4, nAb5, nAb4, nAb5, nAb4, nG5, nG4, nG5, $04
	dc.b	nRst, $02, nG4, $06, nG5, nG4, nG5, nG4, nG6, $04, nRst, $02
	dc.b	nG4, $06, nG6, nG4, nG5, nG4, nG5, nG4, nG5, nG4, nG5, $04
	dc.b	nRst, $02, nG4, $06, nG5, nG4, nG5, nG4, nG6, $04, nRst, $02
	dc.b	nG4, $06, nG6, nG4, nG5, nG4, nG5, nG4, nC5, nC4, nC5, $04
	dc.b	nRst, $02, nC4, $06, nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b	nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4, nC5, nC4, nC5, $04
	dc.b	nRst, $02, nC4, $06, nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b	nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4, nC5, nC4, nC5, $04
	dc.b	nRst, $02, nC4, $06, nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b	nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4, nC5, nC4, nC5, $04
	dc.b	nRst, $02, nC4, $06, nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b	nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4, nC5, nC4, nC5, $04
	dc.b	nRst, $02, nC4, $06, nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b	nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4, nC5, nC4, nC5, $04
	dc.b	nRst, $02, nC4, $06, nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b	nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4, nC5, nC4, nC5, $04
	dc.b	nRst, $02, nC4, $06, nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b	nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4, nC5, nC4, nC5, $04
	dc.b	nRst, $02, nC4, $06, nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b	nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4, nC5, nC4, nC5, $04
	dc.b	nRst, $02, nC4, $06, nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b	nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4, nC5, nC4, nC5, $04
	dc.b	nRst, $02, nC4, $06, nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b	nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4
	smpsJump            s3p21_Jump04

; PSG1 Data
s3p21_PSG1:
	smpsPSGvoice        sTone_02
	smpsDetune          $00
	dc.b	nRst, $01
	smpsJump            s3p21_Jump04

; PSG2 Data
s3p21_PSG2:
	smpsPSGvoice        sTone_02
	smpsDetune          $FF
	smpsJump            s3p21_Jump04

s3p21_Jump01:
	dc.b	nF4, $12, nE4, nC4, $0C, nC5, $12, nB4, $10, nRst, $02, nG4
	dc.b	$0C, nF4, $12, nE4, nC4, $0C, nC5, $12, nB4, $10, nRst, $02
	dc.b	nG4, $0C, nF4, $12, nE4, nC4, $0C, nC5, $12, nB4, $10, nRst
	dc.b	$02, nG4, $0C, nF4, $12, nE4, nC4, $0A, nRst, $0E, nC4, $0A
	dc.b	nRst, $1A, nC2, $04, nRst, $02, nC2, $04, nRst, $02, nC2, nRst
	dc.b	$04, nC2, $06, nD2, $04, nRst, $02, nC2, $04, nRst, $02, nE2
	dc.b	$04, nRst, $02, nC2, $06, nF2, $04, nRst, $02, nC2, $06, nE2
	dc.b	$04, nRst, $02, nC2, $06, nD2, $04, nRst, $02, nC2, $06, nE2
	dc.b	nC2, $04, nRst, $02, nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b	nC2, nRst, $04, nC2, $06, nD2, $04, nRst, $02, nC2, $04, nRst
	dc.b	$02, nE2, $04, nRst, $02, nC2, $06, nF2, $04, nRst, $02, nC2
	dc.b	$06, nE2, $04, nRst, $02, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b	$06, nE2, nC2, $04, nRst, $02, nC2, $04, nRst, $02, nC2, $04
	dc.b	nRst, $02, nC2, nRst, $04, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b	$04, nRst, $02, nE2, $04, nRst, $02, nC2, $06, nF2, $04, nRst
	dc.b	$02, nC2, $06, nE2, $04, nRst, $02, nC2, $06, nD2, $04, nRst
	dc.b	$02, nC2, $06, nE2, nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b	nC2, $04, nRst, $02, nC2, nRst, $04, nC2, $06, nD2, $04, nRst
	dc.b	$02, nC2, $04, nRst, $02, nE2, $04, nRst, $02, nC2, $06, nF2
	dc.b	$04, nRst, $02, nC2, $06, nE2, $04, nRst, $02, nC2, $06, nD2
	dc.b	$04, nRst, $02, nC2, $06, nE2, nC2, $04, nRst, $02, nC2, $04
	dc.b	nRst, $02, nC2, $04, nRst, $02, nC2, nRst, $04, nC2, $06, nD2
	dc.b	$04, nRst, $02, nC2, $04, nRst, $02, nE2, $04, nRst, $02, nC2
	dc.b	$06, nF2, $04, nRst, $02, nC2, $06, nE2, $04, nRst, $02, nC2
	dc.b	$06, nD2, $04, nRst, $02, nC2, $06, nE2, nC2, $04, nRst, $02
	dc.b	nC2, $04, nRst, $02, nC2, $04, nRst, $02, nC2, nRst, $04, nC2
	dc.b	$06, nD2, $04, nRst, $02, nC2, $04, nRst, $02, nE2, $04, nRst
	dc.b	$02, nC2, $06, nF2, $04, nRst, $02, nC2, $06, nE2, $04, nRst
	dc.b	$02, nC2, $06, nD2, $04, nRst, $02, nC2, $06, nE2, nC2, $04
	dc.b	nRst, $02, nC2, $04, nRst, $02, nC2, $04, nRst, $02, nC2, nRst
	dc.b	$04, nC2, $06, nD2, $04, nRst, $02, nC2, $04, nRst, $02, nE2
	dc.b	$04, nRst, $02, nC2, $06, nF2, $04, nRst, $02, nC2, $06, nE2
	dc.b	$04, nRst, $02, nC2, $06, nD2, $04, nRst, $02, nC2, $06, nE2
	dc.b	nC2, $04, nRst, $02, nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b	nC2, nRst, $04, nC2, $06, nD2, $04, nRst, $02, nC2, $04, nRst
	dc.b	$02, nE2, $04, nRst, $02, nC2, $06, nF2, $04, nRst, $02, nC2
	dc.b	$06, nE2, $04, nRst, $02, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b	$06, nE2, nC2, $04, nRst, $02, nC2, $04, nRst, $02, nC2, $04
	dc.b	nRst, $02, nC2, nRst, $04, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b	$04, nRst, $02, nE2, $04, nRst, $02, nC2, $06, nF2, $04, nRst
	dc.b	$02, nC2, $06, nE2, $04, nRst, $02, nC2, $06, nD2, $04, nRst
	dc.b	$02, nC2, $06, nE2, nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b	nC2, $04, nRst, $02, nC2, nRst, $04, nC2, $06, nD2, $04, nRst
	dc.b	$02, nC2, $04, nRst, $02, nE2, $04, nRst, $02, nC2, $06, nF2
	dc.b	$04, nRst, $02, nC2, $06, nE2, $04, nRst, $02, nC2, $06, nD2
	dc.b	$04, nRst, $02, nC2, $06, nE2, nC2, $04, nRst, $02, nC2, $04
	dc.b	nRst, $02, nC2, $04, nRst, $02, nC2, nRst, $04, nC2, $06, nD2
	dc.b	$04, nRst, $02, nC2, $04, nRst, $02, nE2, $04, nRst, $02, nC2
	dc.b	$06, nF2, $04, nRst, $02, nC2, $06, nE2, $04, nRst, $02, nC2
	dc.b	$06, nD2, $04, nRst, $02, nC2, $06, nE2, nC2, $04, nRst, $02
	dc.b	nC2, $04, nRst, $02, nC2, $04, nRst, $02, nC2, nRst, $04, nC2
	dc.b	$06, nD2, $04, nRst, $02, nC2, $04, nRst, $02, nE2, $04, nRst
	dc.b	$02, nC2, $06, nF2, $04, nRst, $02, nC2, $06, nE2, $04, nRst
	dc.b	$02, nC2, $06, nD2, $04, nRst, $02, nC2, $06, nE2, nC2, $04
	dc.b	nRst, $02, nC2, $04, nRst, $02, nC2, $04, nRst, $02, nC2, nRst
	dc.b	$04, nC2, $06, nD2, $04, nRst, $02, nC2, $04, nRst, $02, nE2
	dc.b	$04, nRst, $02, nC2, $06, nF2, $04, nRst, $02, nC2, $06, nE2
	dc.b	$04, nRst, $02, nC2, $06, nD2, $04, nRst, $02, nC2, $06, nE2
	dc.b	nC2, $04, nRst, $02, nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b	nC2, nRst, $04, nC2, $06, nD2, $04, nRst, $02, nC2, $04, nRst
	dc.b	$02, nE2, $04, nRst, $02, nC2, $06, nF2, $04, nRst, $02, nC2
	dc.b	$06, nE2, $04, nRst, $02, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b	$06, nE2, nC2, $04, nRst, $02, nC2, $04, nRst, $02, nC2, $04
	dc.b	nRst, $02, nC2, nRst, $04, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b	$04, nRst, $02, nE2, $04, nRst, $02, nC2, $06, nF2, $04, nRst
	dc.b	$02, nC2, $06, nE2, $04, nRst, $02, nC2, $06, nD2, $04, nRst
	dc.b	$02, nC2, $06, nE2, nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b	nC2, $04, nRst, $02, nC2, nRst, $04, nC2, $06, nD2, $04, nRst
	dc.b	$02, nC2, $04, nRst, $02, nE2, $04, nRst, $02, nC2, $06, nF2
	dc.b	$04, nRst, $02, nC2, $06, nE2, $04, nRst, $02, nC2, $06, nD2
	dc.b	$04, nRst, $02, nC2, $06, nE2, nC2, $04, nRst, $02, nC2, $04
	dc.b	nRst, $02, nC2, $04, nRst, $02, nC2, nRst, $04, nC2, $06, nD2
	dc.b	$04, nRst, $02, nC2, $04, nRst, $02, nE2, $04, nRst, $02, nC2
	dc.b	$06, nF2, $04, nRst, $02, nC2, $06, nE2, $04, nRst, $02, nC2
	dc.b	$06, nD2, $04, nRst, $02, nC2, $06, nE2, nC2, $04, nRst, $02
	dc.b	nC2, $04, nRst, $02, nC2, $04, nRst, $02, nC2, nRst, $04, nC2
	dc.b	$06, nD2, $04, nRst, $02, nC2, $04, nRst, $02, nE2, $04, nRst
	dc.b	$02, nC2, $06, nF2, $04, nRst, $02, nC2, $06, nE2, $04, nRst
	dc.b	$02, nC2, $06, nD2, $04, nRst, $02, nC2, $06, nE2, nC2, $04
	dc.b	nRst, $02, nC2, $04, nRst, $02, nC2, $04, nRst, $02, nC2, nRst
	dc.b	$04, nC2, $06, nD2, $04, nRst, $02, nC2, $04, nRst, $02, nE2
	dc.b	$04, nRst, $02, nC2, $06, nF2, $04, nRst, $02, nC2, $06, nE2
	dc.b	$04, nRst, $02, nC2, $06, nD2, $04, nRst, $02, nC2, $06, nE2
	dc.b	nC2, $04, nRst, $02, nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b	nC2, nRst, $04, nC2, $06, nD2, $04, nRst, $02, nC2, $04, nRst
	dc.b	$02, nE2, $04, nRst, $02, nC2, $06, nF2, $04, nRst, $02, nC2
	dc.b	$06, nE2, $04, nRst, $02, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b	$06, nE2, nC2, $04, nRst, $02, nC2, $04, nRst, $02, nC2, $04
	dc.b	nRst, $02, nC2, nRst, $04, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b	$04, nRst, $02, nE2, $04, nRst, $02, nC2, $06, nF2, $04, nRst
	dc.b	$02, nC2, $06, nE2, $04, nRst, $02, nC2, $06, nD2, $04, nRst
	dc.b	$02, nC2, $06, nE2, nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b	nC2, $04, nRst, $02, nC2, nRst, $04, nC2, $06, nD2, $04, nRst
	dc.b	$02, nC2, $04, nRst, $02, nE2, $04, nRst, $02, nC2, $06, nF2
	dc.b	$04, nRst, $02, nC2, $06, nE2, $04, nRst, $02, nC2, $06, nD2
	dc.b	$04, nRst, $02, nC2, $06, nE2, nC2, $04, nRst, $02, nC2, $04
	dc.b	nRst, $02, nC2, $04, nRst, $02, nC2, nRst, $04, nC2, $06, nD2
	dc.b	$04, nRst, $02, nC2, $04, nRst, $02, nE2, $04, nRst, $02, nC2
	dc.b	$06, nF2, $04, nRst, $02, nC2, $06, nE2, $04, nRst, $02, nC2
	dc.b	$06, nD2, $04, nRst, $02, nC2, $06, nE2, nC2, $04, nRst, $02
	dc.b	nC2, $04, nRst, $02, nC2, $04, nRst, $02, nC2, nRst, $04, nC2
	dc.b	$06, nD2, $04, nRst, $02, nC2, $04, nRst, $02, nE2, $04, nRst
	dc.b	$02, nC2, $06, nF2, $04, nRst, $02, nC2, $06, nE2, $04, nRst
	dc.b	$02, nC2, $06, nD2, $04, nRst, $02, nC2, $06, nE2, nC2, $04
	dc.b	nRst, $02, nC2, $04, nRst, $02, nC2, $04, nRst, $02, nC2, nRst
	dc.b	$04, nC2, $06, nD2, $04, nRst, $02, nC2, $04, nRst, $02, nE2
	dc.b	$04, nRst, $02, nC2, $06, nF2, $04, nRst, $02, nC2, $06, nE2
	dc.b	$04, nRst, $02, nC2, $06, nD2, $04, nRst, $02, nC2, $06, nE2
	dc.b	nC2, $04, nRst, $02, nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b	nC2, nRst, $04, nC2, $06, nD2, $04, nRst, $02, nC2, $04, nRst
	dc.b	$02, nE2, $04, nRst, $02, nC2, $06, nF2, $04, nRst, $02, nC2
	dc.b	$06, nE2, $04, nRst, $02, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b	$06, nE2, nC2, $04, nRst, $02, nC2, $04, nRst, $02, nC2, $04
	dc.b	nRst, $02, nC2, nRst, $04, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b	$04, nRst, $02, nE2, $04, nRst, $02, nC2, $06, nF2, $04, nRst
	dc.b	$02, nC2, $06, nE2, $04, nRst, $02, nC2, $06, nD2, $04, nRst
	dc.b	$02, nC2, $06, nE2, nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b	nC2, $04, nRst, $02, nC2, nRst, $04, nC2, $06, nD2, $04, nRst
	dc.b	$02, nC2, $04, nRst, $02, nE2, $04, nRst, $02, nC2, $06, nF2
	dc.b	$04, nRst, $02, nC2, $06, nE2, $04, nRst, $02, nC2, $06, nD2
	dc.b	$04, nRst, $02, nC2, $06, nE2, nC2, $04, nRst, $02, nC2, $04
	dc.b	nRst, $02, nC2, $04, nRst, $02, nC2, nRst, $04, nC2, $06, nD2
	dc.b	$04, nRst, $02, nC2, $04, nRst, $02, nE2, $04, nRst, $02, nC2
	dc.b	$06, nF2, $04, nRst, $02, nC2, $06, nE2, $04, nRst, $02, nC2
	dc.b	$06, nD2, $04, nRst, $02, nC2, $06, nE2, nC2, $04, nRst, $02
	dc.b	nC2, $04, nRst, $02, nC2, $04, nRst, $02, nC2, nRst, $04, nC2
	dc.b	$06, nD2, $04, nRst, $02, nC2, $04, nRst, $02, nE2, $04, nRst
	dc.b	$02, nC2, $06, nF2, $04, nRst, $02, nC2, $06, nE2, $04, nRst
	dc.b	$02, nC2, $06, nD2, $04, nRst, $02, nC2, $06, nE2, nC2, $04
	dc.b	nRst, $02, nC2, $04, nRst, $02, nC2, $04, nRst, $02, nC2, nRst
	dc.b	$04, nC2, $06, nD2, $04, nRst, $02, nC2, $04, nRst, $02, nE2
	dc.b	$04, nRst, $02, nC2, $06, nF2, $04, nRst, $02, nC2, $06, nE2
	dc.b	$04, nRst, $02, nC2, $06, nD2, $04, nRst, $02, nC2, $06, nE2
	dc.b	nC2, $04, nRst, $02, nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b	nC2, nRst, $04, nC2, $06, nD2, $04, nRst, $02, nC2, $04, nRst
	dc.b	$02, nE2, $04, nRst, $02, nC2, $06, nF2, $04, nRst, $02, nC2
	dc.b	$06, nE2, $04, nRst, $02, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b	$06, nE2, nC2, $04, nRst, $02
	smpsJump            s3p21_Jump01

; FM4 Data
s3p21_FM4:
	smpsSetvoice        $0A
	smpsDetune          $04
	smpsModSet          $19, $01, $F9, $06
	smpsPan             panLeft, $00

s3p21_Jump00:
	dc.b	nC4, $12, nB3, nG3, $0C, nG4, $12, nF4, nE4, $0C, nC4, $10
	dc.b	nRst, $02, nB3, $12, nG3, $0C, nG4, $12, nF4, nE4, $0C, nC4
	dc.b	$10, nRst, $02, nB3, $12, nG3, $0C, nG4, $12, nF4, nE4, $0C
	dc.b	nC4, $12, nB3, $10, nRst, $02, nG3, $0E, nRst, $0A, nG3, $0E
	dc.b	nRst, $16, nC5, $54, nC4, $06, nE4, nF4, $22, nRst, $02, nE4
	dc.b	$18, nC4, $12, nRst, $06, nC4, $08, nRst, $04, nC5, $48, nRst
	dc.b	$0C, nC4, $06, nE4, nF4, $24, nE4, $16, nRst, $02, nC4, $1C
	dc.b	nRst, $20, nA3, $0E, nRst, $16, nC4, $0C, nRst, $18, nF3, $0C
	dc.b	nRst, $18, nA3, $1C, nRst, $08, nA3, $12, nRst, $2A, nAb3, $0C
	dc.b	nC4, nBb3, nAb3, nEb4, $18, nC4, $0C, nD4, nEb4, $16, nRst, $02
	dc.b	nD4, $0C, nC4, $18, nC5, $50, nRst, $04, nC4, $06, nE4, nF4
	dc.b	$22, nRst, $02, nE4, $14, nRst, $04, nC4, $14, nRst, $04, nC4
	dc.b	nRst, $02, nC4, $04, nRst, $02, nC5, $4E, nRst, $06, nC4, nE4
	dc.b	nF4, $24, nE4, $16, nRst, $02, nC4, $14, nRst, $04, nC4, $0E
	dc.b	nRst, $16, nA3, $0C, nRst, $18, nC4, $08, nRst, $1C, nF3, $08
	dc.b	nRst, $1C, nA3, $20, nRst, $04, nA3, $12, nRst, $2A, nAb3, $0C
	dc.b	nC4, nBb3, $0A, nRst, $02, nAb3, $0C, nEb4, $18, nD4, $0C, nC4
	dc.b	nF4, $18, nEb4, $0A, nRst, $02, nF4, $12, nRst, $06, nG4, $24
	dc.b	nEb5, $22, nRst, $02, nD5, $24, nG4, $54, nAb4, $24, nEb5, $22
	dc.b	nRst, $02, nC5, $24, nF5, nEb5, $18, nD5, $14, nRst, $04, nAb4
	dc.b	$24, nEb5, $1C, nRst, $08, nD5, $22, nRst, $02, nG4, $54, nAb4
	dc.b	$24, nC5, nEb5, $16, nRst, $02, nG5, $18, nF5, $0C, nEb5, $18
	dc.b	nF5, $1E, nRst, $06, nC5, $4E, nRst, $06, nC4, nE4, $04, nRst
	dc.b	$02, nF4, $24, nE4, $16, nRst, $02, nC4, $12, nRst, $06, nC4
	dc.b	$02, nRst, $04, nC4, $02, nRst, $04, nC5, $48, nRst, $0C, nC5
	dc.b	$04, nRst, $02, nE5, $04, nRst, $02, nF5, $1E, nRst, $06, nE5
	dc.b	$16, nRst, $02, nC5, $10, nRst, $08, nC5, $0A, nRst, $02, nG5
	dc.b	$0C, nC5, $10, nRst, $20, nC5, $08, nRst, $04, nG5, $0C, nC5
	dc.b	$08, nRst, $10, nC5, $0C, nRst, nC5, $08, nRst, $04, nG5, $0C
	dc.b	nC5, nRst, nC5, $06, nRst, nBb5, $24, nAb5, $22, nRst, $02, nG5
	dc.b	$20, nRst, $04, nF5, $24, nEb5, $12, nRst, $06, nF5, $08, nRst
	dc.b	$04, nG5, $0C
	smpsJump            s3p21_Jump00

; FM5 Data
s3p21_FM5:
	dc.b	nRst, $03
	smpsFMAlterVol      $04
	smpsSetvoice        $0A
	smpsDetune          $FC
	smpsModSet          $19, $01, $07, $06
	smpsPan             panRight, $00
	smpsJump            s3p21_Jump00

; PSG3 Data
s3p21_PSG3:
	smpsPSGform         $E7

s3p21_Jump03:
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG2, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG2, $06
	smpsPSGvoice        sTone_04
	dc.b	nMaxPSG2, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG2, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG2, $06
	smpsPSGvoice        sTone_04
	dc.b	nMaxPSG2, $0C
	smpsJump            s3p21_Jump03

s3p21_Voices:
;	Voice $00
;	$3C
;	$01, $00, $00, $00, 	$1F, $1F, $15, $1F, 	$11, $0D, $12, $05
;	$07, $04, $09, $02, 	$55, $3A, $25, $1A, 	$1A, $80, $07, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $15, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $12, $0D, $11
	smpsVcDecayRate2    $02, $09, $04, $07
	smpsVcDecayLevel    $01, $02, $03, $05
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $80, $07, $80, $1A

;	Voice $01
;	$3D
;	$01, $01, $01, $01, 	$94, $19, $19, $19, 	$0F, $0D, $0D, $0D
;	$07, $04, $04, $04, 	$25, $1A, $1A, $1A, 	$15, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0D, $0F
	smpsVcDecayRate2    $04, $04, $04, $07
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $80, $80, $80, $15

;	Voice $02
;	$03
;	$00, $D7, $33, $02, 	$5F, $9F, $5F, $1F, 	$13, $0F, $0A, $0A
;	$10, $0F, $02, $09, 	$35, $15, $25, $1A, 	$13, $16, $15, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $0D, $00
	smpsVcCoarseFreq    $02, $03, $07, $00
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0F, $13
	smpsVcDecayRate2    $09, $02, $0F, $10
	smpsVcDecayLevel    $01, $02, $01, $03
	smpsVcReleaseRate   $0A, $05, $05, $05
	smpsVcTotalLevel    $80, $15, $16, $13

;	Voice $03
;	$34
;	$70, $72, $31, $31, 	$1F, $1F, $1F, $1F, 	$10, $06, $06, $06
;	$01, $06, $06, $06, 	$35, $1A, $15, $1A, 	$10, $80, $18, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $01, $02, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $06, $06, $10
	smpsVcDecayRate2    $06, $06, $06, $01
	smpsVcDecayLevel    $01, $01, $01, $03
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $80, $18, $80, $10

;	Voice $04
;	$3E
;	$77, $71, $32, $31, 	$1F, $1F, $1F, $1F, 	$0D, $06, $00, $00
;	$08, $06, $00, $00, 	$15, $0A, $0A, $0A, 	$1B, $80, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $02, $01, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $06, $0D
	smpsVcDecayRate2    $00, $00, $06, $08
	smpsVcDecayLevel    $00, $00, $00, $01
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $80, $80, $80, $1B

;	Voice $05
;	$34
;	$33, $41, $7E, $74, 	$5B, $9F, $5F, $1F, 	$04, $07, $07, $08
;	$00, $00, $00, $00, 	$FF, $FF, $EF, $FF, 	$23, $80, $29, $87
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $04, $03
	smpsVcCoarseFreq    $04, $0E, $01, $03
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $07, $07, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0E, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $87, $29, $80, $23

;	Voice $06
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $07, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $07, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $27, $28, $18

;	Voice $07
;	$3C
;	$32, $32, $71, $42, 	$1F, $18, $1F, $1E, 	$07, $1F, $07, $1F
;	$00, $00, $00, $00, 	$1F, $0F, $1F, $0F, 	$1E, $80, $0C, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $07, $03, $03
	smpsVcCoarseFreq    $02, $01, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1E, $1F, $18, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $07, $1F, $07
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $0C, $80, $1E

;	Voice $08
;	$3C
;	$71, $72, $3F, $34, 	$8D, $52, $9F, $1F, 	$09, $00, $00, $0D
;	$00, $00, $00, $00, 	$23, $08, $02, $F7, 	$15, $80, $1D, $87
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $0F, $02, $01
	smpsVcRateScale     $00, $02, $01, $02
	smpsVcAttackRate    $1F, $1F, $12, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $00, $00, $09
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $00, $00, $02
	smpsVcReleaseRate   $07, $02, $08, $03
	smpsVcTotalLevel    $87, $1D, $80, $15

;	Voice $09
;	$3D
;	$01, $01, $00, $00, 	$8E, $52, $14, $4C, 	$08, $08, $0E, $03
;	$00, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$1B, $80, $80, $9B
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $01, $01
	smpsVcRateScale     $01, $00, $01, $02
	smpsVcAttackRate    $0C, $14, $12, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $08, $08
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $9B, $80, $80, $1B

;	Voice $0A
;	$3A
;	$31, $53, $31, $41, 	$8D, $4F, $15, $52, 	$06, $08, $07, $04
;	$02, $00, $00, $00, 	$1F, $1F, $2F, $2F, 	$19, $20, $2A, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $03, $05, $03
	smpsVcCoarseFreq    $01, $01, $03, $01
	smpsVcRateScale     $01, $00, $01, $02
	smpsVcAttackRate    $12, $15, $0F, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $07, $08, $06
	smpsVcDecayRate2    $00, $00, $00, $02
	smpsVcDecayLevel    $02, $02, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $2A, $20, $19

;	Voice $0B
;	$3C
;	$36, $31, $76, $71, 	$94, $9F, $96, $9F, 	$12, $00, $14, $0F
;	$04, $0A, $04, $0D, 	$2F, $0F, $4F, $2F, 	$33, $80, $1A, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $03, $03
	smpsVcCoarseFreq    $01, $06, $01, $06
	smpsVcRateScale     $02, $02, $02, $02
	smpsVcAttackRate    $1F, $16, $1F, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $14, $00, $12
	smpsVcDecayRate2    $0D, $04, $0A, $04
	smpsVcDecayLevel    $02, $04, $00, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1A, $80, $33

;	Voice $0C
;	$34
;	$33, $41, $7E, $74, 	$5B, $9F, $5F, $1F, 	$04, $07, $07, $08
;	$00, $00, $00, $00, 	$FF, $FF, $EF, $FF, 	$23, $90, $29, $97
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $04, $03
	smpsVcCoarseFreq    $04, $0E, $01, $03
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $07, $07, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0E, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $97, $29, $90, $23

;	Voice $0D
;	$38
;	$63, $31, $31, $31, 	$10, $13, $1A, $1B, 	$0E, $00, $00, $00
;	$00, $00, $00, $00, 	$3F, $0F, $0F, $0F, 	$1A, $19, $1A, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $06
	smpsVcCoarseFreq    $01, $01, $01, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1B, $1A, $13, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1A, $19, $1A

;	Voice $0E
;	$3A
;	$31, $25, $73, $41, 	$5F, $1F, $1F, $9C, 	$08, $05, $04, $1E
;	$03, $04, $02, $06, 	$2F, $2F, $1F, $0F, 	$29, $27, $1F, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $07, $02, $03
	smpsVcCoarseFreq    $01, $03, $05, $01
	smpsVcRateScale     $02, $00, $00, $01
	smpsVcAttackRate    $1C, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1E, $04, $05, $08
	smpsVcDecayRate2    $06, $02, $04, $03
	smpsVcDecayLevel    $00, $01, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1F, $27, $29

;	Voice $0F
;	$04
;	$71, $41, $31, $31, 	$12, $12, $12, $12, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$23, $80, $23, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $04, $07
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $12, $12, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $23, $80, $23

;	Voice $10
;	$14
;	$75, $72, $35, $32, 	$9F, $9F, $9F, $9F, 	$05, $05, $00, $0A
;	$05, $05, $07, $05, 	$2F, $FF, $0F, $2F, 	$1E, $80, $14, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $02, $05, $02, $05
	smpsVcRateScale     $02, $02, $02, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $00, $05, $05
	smpsVcDecayRate2    $05, $07, $05, $05
	smpsVcDecayLevel    $02, $00, $0F, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $14, $80, $1E

;	Voice $11
;	$3D
;	$01, $00, $01, $02, 	$12, $1F, $1F, $14, 	$07, $02, $02, $0A
;	$05, $05, $05, $05, 	$2F, $2F, $2F, $AF, 	$1C, $80, $82, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $1F, $1F, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $02, $02, $07
	smpsVcDecayRate2    $05, $05, $05, $05
	smpsVcDecayLevel    $0A, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $82, $80, $1C

;	Voice $12
;	$1C
;	$73, $72, $33, $32, 	$94, $99, $94, $99, 	$08, $0A, $08, $0A
;	$00, $05, $00, $05, 	$3F, $4F, $3F, $4F, 	$1E, $80, $19, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $02, $03, $02, $03
	smpsVcRateScale     $02, $02, $02, $02
	smpsVcAttackRate    $19, $14, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $08, $0A, $08
	smpsVcDecayRate2    $05, $00, $05, $00
	smpsVcDecayLevel    $04, $03, $04, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $19, $80, $1E

;	Voice $13
;	$31
;	$33, $01, $00, $00, 	$9F, $1F, $1F, $1F, 	$0D, $0A, $0A, $0A
;	$0A, $07, $07, $07, 	$FF, $AF, $AF, $AF, 	$1E, $1E, $1E, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $03
	smpsVcCoarseFreq    $00, $00, $01, $03
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0A, $0D
	smpsVcDecayRate2    $07, $07, $07, $0A
	smpsVcDecayLevel    $0A, $0A, $0A, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1E, $1E, $1E

;	Voice $14
;	$3A
;	$70, $76, $30, $71, 	$1F, $95, $1F, $1F, 	$0E, $0F, $05, $0C
;	$07, $06, $06, $07, 	$2F, $4F, $1F, $5F, 	$21, $12, $28, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $07, $07
	smpsVcCoarseFreq    $01, $00, $06, $00
	smpsVcRateScale     $00, $00, $02, $00
	smpsVcAttackRate    $1F, $1F, $15, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $05, $0F, $0E
	smpsVcDecayRate2    $07, $06, $06, $07
	smpsVcDecayLevel    $05, $01, $04, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $28, $12, $21

;	Voice $15
;	$28
;	$71, $00, $30, $01, 	$1F, $1F, $1D, $1F, 	$13, $13, $06, $05
;	$03, $03, $02, $05, 	$4F, $4F, $2F, $3F, 	$0E, $14, $1E, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $07
	smpsVcCoarseFreq    $01, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1D, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $06, $13, $13
	smpsVcDecayRate2    $05, $02, $03, $03
	smpsVcDecayLevel    $03, $02, $04, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1E, $14, $0E

