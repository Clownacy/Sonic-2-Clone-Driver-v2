s3p4_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     s3p4_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $25

	smpsHeaderDAC       s3p4_DAC
	smpsHeaderFM        s3p4_FM1,	$0C, $12
	smpsHeaderFM        s3p4_FM2,	$0C, $12
	smpsHeaderFM        s3p4_FM3,	$18, $18
	smpsHeaderFM        s3p4_FM4,	$18, $0D
	smpsHeaderFM        s3p4_FM5,	$18, $18
	smpsHeaderPSG       s3p4_PSG1,	$F4, $05, $00, sTone_0C
	smpsHeaderPSG       s3p4_PSG2,	$F4, $05, $00, sTone_0C
	smpsHeaderPSG       s3p4_PSG3,	$00, $03, $00, sTone_0C

; DAC Data
s3p4_DAC:
	dc.b	dKickS3, $06
	smpsPan             panLeft, $00
	dc.b	dHighTom, $02, dHighTom, $04, dHighTom, $06, dHighTom, dHighTom, dHighTom
	smpsPan             panCenter, $00
	dc.b	dMidTomS3, dMidTomS3, dMidTomS3, dMidTomS3, dMidTomS3, dLowTomS3
	smpsPan             panRight, $00
	dc.b	dLowTomS3, $02, dLowTomS3, $04, dLowTomS3, $06, dFloorTomS3, dFloorTomS3
	smpsPan             panCenter, $00
	dc.b	dKickS3, $0C, dSnareS3, $1E, dKickS3, $0C, dKickS3, $12, dKickS3, $0C, dSnareS3, dKickS3
	dc.b	$06
	smpsPan             panLeft, $00
	dc.b	dHighTom, $02, dHighTom, $04, dHighTom, $06, dHighTom, dHighTom, dHighTom
	smpsPan             panCenter, $00
	dc.b	dMidTomS3, dMidTomS3, dMidTomS3, dMidTomS3, dMidTomS3, dLowTomS3
	smpsPan             panRight, $00
	dc.b	dLowTomS3, $02, dLowTomS3, $04, dLowTomS3, $06, dFloorTomS3, dFloorTomS3
	smpsPan             panCenter, $00
	dc.b	dKickS3, $0C, dSnareS3, $1E, dKickS3, $0C, dKickS3, $12, dKickS3, $0C, dSnareS3, dKickS3
	dc.b	$18, dSnareS3, $06, dKickS3, $0C, dKickS3, dKickS3, $12, dSnareS3, $0C, dKickS3, dKickS3
	dc.b	$18, dSnareS3, $06, dKickS3, $0C, dKickS3, dKickS3, $12, dSnareS3, $0C, dKickS3, dKickS3
	dc.b	$18, dSnareS3, $06, dKickS3, $0C, dKickS3, dKickS3, $12, dSnareS3, $0C, dKickS3, dKickS3
	dc.b	$24, dSnareS3, $06, dKickS3, $0C, dKickS3, $12, dKickS3, $0C, dSnareS3, dKickS3, $18
	dc.b	dSnareS3, $06, dKickS3, $0C, dKickS3, dKickS3, $12, dSnareS3, $0C, dKickS3, dKickS3, $18
	dc.b	dSnareS3, $06, dKickS3, $0C, dKickS3, dKickS3, $12, dSnareS3, $0C, dKickS3, dKickS3, $18
	dc.b	dSnareS3, $06, dKickS3, $0C, dKickS3, dKickS3, $12, dSnareS3, $0C, dKickS3, $06, dSnareS3
	dc.b	$0C, dKickS3, dKickS3, $06, dHighTom, dMidTomS3, dLowTomS3, dSnareS3, $18, dSnareS3, $0C, dSnareS3
	dc.b	$02, dSnareS3, $04, dSnareS3, $06, dSnareS3, dKickS3, $18, dSnareS3, $06, dKickS3, $0C
	dc.b	dKickS3, $1E, dSnareS3, $0C, dKickS3, dKickS3, $18, dSnareS3, $06, dKickS3, $0C, dKickS3
	dc.b	$1E, dSnareS3, $0C, dKickS3, dKickS3, $18, dSnareS3, $06, dKickS3, $0C, dKickS3, $1E
	dc.b	dSnareS3, $0C, dKickS3, $12, dSnareS3, dSnareS3, $0C, dSnareS3, $06, dSnareS3, $0C, dSnareS3
	dc.b	$12, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3, dKickS3, $18, dSnareS3, $06, dKickS3, $0C
	dc.b	dKickS3, $1E, dSnareS3, $0C, dKickS3, dKickS3, $18, dSnareS3, $06, dKickS3, $0C, dKickS3
	dc.b	$1E, dSnareS3, $0C, dKickS3, dKickS3, $18, dSnareS3, $06, dKickS3, $0C, dKickS3, $1E
	dc.b	dSnareS3, $0C, dKickS3, $06, dKickS3, $0C, dKickS3, dKickS3, $06, dSnareS3, dKickS3, dKickS3
	dc.b	dSnareS3, dKickS3, dKickS3, $0C, dSnareS3, dSnareS3, $06, dSnareS3, dSnareS3, dKickS3, $12, dKickS3
	dc.b	$06, dSnareS3, $1E, dKickS3, $06, dKickS3, $0C, dSnareS3, $18, dKickS3, $12, dKickS3
	dc.b	$06, dSnareS3, $1E, dKickS3, $06, dKickS3, $0C, dSnareS3, $18, dKickS3, $12, dKickS3
	dc.b	$06, dSnareS3, $1E, dKickS3, $06, dKickS3, $0C, dSnareS3, $18, dKickS3, $0C, dSnareS3
	dc.b	dKickS3, $06, dSnareS3, $0C, dSnareS3, $06, dKickS3, dSnareS3, $12, dSnareS3, $04, dSnareS3
	dc.b	dSnareS3, dSnareS3, $06, dSnareS3, dKickS3, $12, dKickS3, $06, dSnareS3, $1E, dKickS3, $06
	dc.b	dKickS3, $0C, dSnareS3, $18, dKickS3, $12, dKickS3, $06, dSnareS3, $1E, dKickS3, $06
	dc.b	dKickS3, $0C, dSnareS3, $18, dKickS3, $12, dKickS3, $06, dSnareS3, $1E, dKickS3, $06
	dc.b	dKickS3, $0C, dSnareS3, $1E, dSnareS3, $0C, dSnareS3, dSnareS3, $06, dSnareS3, $0C, dSnareS3
	dc.b	$18, dSnareS3, $02, dSnareS3, dSnareS3, dSnareS3, $06, dSnareS3, dSnareS3
	smpsJump            s3p4_DAC

; FM1 Data
s3p4_FM1:
	smpsSetvoice        $06
	smpsDetune          $01
	smpsModSet          $0A, $01, $03, $06
	dc.b	nF3, $04, nRst, $08, nF3, $04, nRst, $0E, nF3, $04, nRst, $02
	dc.b	nF3, nRst, $04, nF3, $0A, nRst, $02, nF3, $0A, nRst, $02, nBb2
	dc.b	$04, nRst, $02, nF3, $04, nRst, $08, nF3, $04, nRst, $08, nEb3
	dc.b	$04, nRst, $08, nEb3, $04, nRst, $0E, nEb3, $04, nRst, $02, nEb3
	dc.b	nRst, $04, nE3, nRst, $08, nE3, $10, nRst, $02, nE3, $04, nRst
	dc.b	$08, nE3, $04, nRst, $08, nF3, $04, nRst, $08, nF3, $04, nRst
	dc.b	$0E, nF3, $04, nRst, $02, nF3, nRst, $04, nF3, $0A, nRst, $02
	dc.b	nF3, $0A, nRst, $02, nBb2, $04, nRst, $02, nF3, $04, nRst, $08
	dc.b	nF3, $04, nRst, $08, nEb3, $04, nRst, $08, nEb3, $04, nRst, $0E
	dc.b	nEb3, $04, nRst, $02, nEb3, nRst, $04, nE3, nRst, $08, nE3, $10
	dc.b	nRst, $02, nE3, $04, nRst, $08, nE3, $04, nRst, $08, nF3, $04
	dc.b	nRst, $08, nF3, $04, nRst, $0E, nF3, $04, nRst, $02, nF3, nRst
	dc.b	$04, nF3, $0A, nRst, $02, nF3, $0A, nRst, $02, nBb2, $04, nRst
	dc.b	$02, nF3, $04, nRst, $08, nF3, $04, nRst, $08, nEb3, $04, nRst
	dc.b	$08, nEb3, $04, nRst, $0E, nEb3, $04, nRst, $02, nEb3, nRst, $04
	dc.b	nE3, nRst, $08, nE3, $10, nRst, $02, nE3, $04, nRst, $08, nE3
	dc.b	$04, nRst, $08, nF3, $04, nRst, $08, nF3, $04, nRst, $0E, nF3
	dc.b	$04, nRst, $02, nF3, nRst, $04, nF3, $0A, nRst, $02, nF3, $0A
	dc.b	nRst, $02, nBb2, $04, nRst, $02, nF3, $04, nRst, $08, nF3, $04
	dc.b	nRst, $08, nEb3, $04, nRst, $08, nEb3, $04, nRst, $0E, nEb3, $04
	dc.b	nRst, $02, nEb3, nRst, $04, nE3, nRst, $08, nE3, $10, nRst, $02
	dc.b	nE3, $04, nRst, $08, nE3, $04, nRst, $08, nF3, $04, nRst, $08
	dc.b	nF3, $04, nRst, $0E, nF3, $04, nRst, $02, nF3, nRst, $04, nF3
	dc.b	$0A, nRst, $02, nF3, $0A, nRst, $02, nBb2, $04, nRst, $02, nF3
	dc.b	$04, nRst, $08, nF3, $04, nRst, $08, nEb3, $04, nRst, $08, nEb3
	dc.b	$04, nRst, $0E, nEb3, $04, nRst, $02, nEb3, nRst, $04, nE3, nRst
	dc.b	$08, nE3, $10, nRst, $02, nE3, $04, nRst, $08, nE3, $04, nRst
	dc.b	$08, nF3, $04, nRst, $08, nF3, $04, nRst, $0E, nF3, $04, nRst
	dc.b	$02, nF3, nRst, $04, nF3, $0A, nRst, $02, nF3, $0A, nRst, $02
	dc.b	nBb2, $04, nRst, $02, nF3, $04, nRst, $08, nF3, $04, nRst, $02
	dc.b	nEb3, $04, nRst, $08, nC4, $06, nBb3, nG3, nF3, $04, nFs3, nF3
	dc.b	nEb3, $06, nC3, nRst, $12, nF3, $1E, nEb3, $0A, nRst, $02, nD3
	dc.b	$04, nRst, $02, nEb3, $0A, nRst, $02, nD3, $0A, nRst, $02, nEb3
	dc.b	$04, nRst, $0E, nC4, $04, nRst, $02, nC4, $04, nRst, $08, nD4
	dc.b	$02, nRst, $04, nEb4, $0A, nRst, $02, nD3, $0A, nRst, $02, nF3
	dc.b	$04, nRst, $02, nD3, $0A, nRst, $02, nF3, $0A, nRst, $02, nD3
	dc.b	$04, nRst, $0E, nBb3, $04, nRst, $02, nBb3, $04, nRst, $08, nC4
	dc.b	$02, nRst, $04, nD4, $0A, nRst, $02, nD3, $0A, nRst, $02, nC3
	dc.b	$04, nRst, $02, nD3, $0A, nRst, $02, nC3, $0A, nRst, $02, nD3
	dc.b	$04, nRst, $0E, nD4, $04, nRst, $02, nD4, $04, nRst, $08, nEb4
	dc.b	$02, nRst, $04, nF4, $0A, nRst, $08, nBb3, $04, nRst, $0E, nBb3
	dc.b	$0A, nRst, $02, nBb3, $04, nRst, $02, nBb3, $04, nRst, $08, nBb3
	dc.b	$10, nRst, $02, nEb3, $0A, nRst, $02, nF3, $0A, nRst, $02, nEb3
	dc.b	$0A, nRst, $02, nD3, $04, nRst, $02, nEb3, $0A, nRst, $02, nD3
	dc.b	$0A, nRst, $02, nEb3, $04, nRst, $0E, nC4, $04, nRst, $02, nC4
	dc.b	$04, nRst, $08, nD4, $02, nRst, $04, nEb4, $0A, nRst, $02, nD3
	dc.b	$0A, nRst, $02, nF3, $04, nRst, $02, nD3, $0A, nRst, $02, nF3
	dc.b	$0A, nRst, $02, nBb2, $04, nRst, $0E, nBb3, $04, nRst, $02, nBb3
	dc.b	$04, nRst, $08, nEb4, $02, nRst, $04, nG4, $0A, nRst, $02, nEb3
	dc.b	$0A, nRst, $02, nBb2, $04, nRst, $02, nEb3, $0A, nRst, $02, nBb2
	dc.b	$0A, nRst, $02, nC3, $04, nRst, $0E, nA3, $04, nRst, $02, nA3
	dc.b	$04, nRst, $08, nC4, $02, nRst, $04, nEb4, $0A, nRst, $08, nEb4
	dc.b	$04, nRst, $08, nEb4, $04, nRst, $08, nEb4, $04, nRst, $02, nEb4
	dc.b	$0A, nRst, $02, nB3, $04, nRst, $02, nB3, $04, nRst, $08, nB3
	dc.b	$04, nRst, $0E, nEb3, $04, nRst, $02, nF3, $04, nRst, $08, nG3
	dc.b	$04, nRst, $02, nF3, $04, nRst, $02, nEb3, $04, nRst, $08, nD3
	dc.b	$04, nRst, $02, nEb3, $04, nRst, $02, nC3, $04, nRst, $08, nBb3
	dc.b	$10, nRst, $02, nG3, $04, nRst, $08, nF3, $04, nRst, $0E, nD4
	dc.b	$04, nRst, $02, nBb3, $04, nRst, $02, nG3, $04, nRst, $02, nEb3
	dc.b	$10, nRst, $02, nD3, $34, nRst, $08, nG3, $04, nRst, $02, nF3
	dc.b	$04, nRst, $02, nEb3, $04, nRst, $08, nD3, $04, nRst, $02, nEb3
	dc.b	$04, nRst, $02, nC3, $04, nRst, $08, nB3, $10, nRst, $02, nG3
	dc.b	$04, nRst, $08, nF3, $04, nRst, $08, nG3, $16, nRst, $02, nBb3
	dc.b	$10, nRst, $02, nBb3, $04, nRst, $08, nAb3, $10, nRst, $02, nG3
	dc.b	$16, nRst, $08, nG3, $04, nRst, $02, nF3, $04, nRst, $02, nEb3
	dc.b	$04, nRst, $08, nD3, $04, nRst, $02, nEb3, $04, nRst, $02, nC3
	dc.b	$04, nRst, $08, nBb3, $10, nRst, $02, nG3, $04, nRst, $08, nF3
	dc.b	$04, nRst, $0E, nD4, $04, nRst, $02, nBb3, $04, nRst, $02, nG3
	dc.b	$04, nRst, $02, nEb3, $10, nRst, $02, nD3, $34, nRst, $08, nG3
	dc.b	$04, nRst, $02, nF3, $04, nRst, $02, nEb3, $04, nRst, $08, nD3
	dc.b	$04, nRst, $02, nEb3, $04, nRst, $02, nC3, $04, nRst, $08, nEb2
	dc.b	$04, nRst, $02, nAb2, $04, nRst, $02, nEb2, $04, nRst, $02, nEb3
	dc.b	$0A, nRst, $02, nAb3, $0A, nRst, $08, nG3, $04, nRst, $08, nG3
	dc.b	$04, nRst, $08, nG3, $04, nRst, $02, nG3, $0A, nRst, $02, nG3
	dc.b	$04, nRst, $2C
	smpsJump            s3p4_FM1

; FM2 Data
s3p4_FM2:
	smpsSetvoice        $06
	smpsDetune          $FF
	smpsModSet          $0A, $01, $03, $06
	dc.b	nBb2, $04, nRst, $08, nBb2, $04, nRst, $0E, nBb2, $04, nRst, $02
	dc.b	nBb2, nRst, $04, nBb2, $0A, nRst, $02, nBb2, $0A, nRst, $08, nBb2
	dc.b	$04, nRst, $08, nBb2, $04, nRst, $08, nA2, $04, nRst, $08, nA2
	dc.b	$04, nRst, $0E, nA2, $04, nRst, $02, nA2, nRst, $04, nBb2, nRst
	dc.b	$08, nBb2, $10, nRst, $02, nBb2, $04, nRst, $08, nBb2, $04, nRst
	dc.b	$08, nBb2, $04, nRst, $08, nBb2, $04, nRst, $0E, nBb2, $04, nRst
	dc.b	$02, nBb2, nRst, $04, nBb2, $0A, nRst, $02, nBb2, $0A, nRst, $08
	dc.b	nBb2, $04, nRst, $08, nBb2, $04, nRst, $08, nA2, $04, nRst, $08
	dc.b	nA2, $04, nRst, $0E, nA2, $04, nRst, $02, nA2, nRst, $04, nBb2
	dc.b	nRst, $08, nBb2, $10, nRst, $02, nBb2, $04, nRst, $08, nBb2, $04
	dc.b	nRst, $08, nBb2, $04, nRst, $08, nBb2, $04, nRst, $0E, nBb2, $04
	dc.b	nRst, $02, nBb2, nRst, $04, nBb2, $0A, nRst, $02, nBb2, $0A, nRst
	dc.b	$08, nBb2, $04, nRst, $08, nBb2, $04, nRst, $08, nA2, $04, nRst
	dc.b	$08, nA2, $04, nRst, $0E, nA2, $04, nRst, $02, nA2, nRst, $04
	dc.b	nBb2, nRst, $08, nBb2, $10, nRst, $02, nBb2, $04, nRst, $08, nBb2
	dc.b	$04, nRst, $08, nBb2, $04, nRst, $08, nBb2, $04, nRst, $0E, nBb2
	dc.b	$04, nRst, $02, nBb2, nRst, $04, nBb2, $0A, nRst, $02, nBb2, $0A
	dc.b	nRst, $08, nBb2, $04, nRst, $08, nBb2, $04, nRst, $08, nA2, $04
	dc.b	nRst, $08, nA2, $04, nRst, $0E, nA2, $04, nRst, $02, nA2, nRst
	dc.b	$04, nBb2, nRst, $08, nBb2, $10, nRst, $02, nBb2, $04, nRst, $08
	dc.b	nBb2, $04, nRst, $08, nBb2, $04, nRst, $08, nBb2, $04, nRst, $0E
	dc.b	nBb2, $04, nRst, $02, nBb2, nRst, $04, nBb2, $0A, nRst, $02, nBb2
	dc.b	$0A, nRst, $08, nBb2, $04, nRst, $08, nBb2, $04, nRst, $08, nA2
	dc.b	$04, nRst, $08, nA2, $04, nRst, $0E, nA2, $04, nRst, $02, nA2
	dc.b	nRst, $04, nBb2, nRst, $08, nBb2, $10, nRst, $02, nBb2, $04, nRst
	dc.b	$08, nBb2, $04, nRst, $08, nBb2, $04, nRst, $08, nBb2, $04, nRst
	dc.b	$0E, nBb2, $04, nRst, $02, nBb2, nRst, $04, nBb2, $0A, nRst, $02
	dc.b	nBb2, $0A, nRst, $08, nBb2, $04, nRst, $08, nBb2, $04, nRst, $02
	dc.b	nBb2, $04, nRst, $44, nB2, $1E, nC3, $0A, nRst, $02, nBb2, $04
	dc.b	nRst, $02, nC3, $0A, nRst, $02, nBb2, $0A, nRst, $02, nC3, $04
	dc.b	nRst, $0E, nAb3, $04, nRst, $02, nAb3, $04, nRst, $08, nBb3, $02
	dc.b	nRst, $04, nC4, $0A, nRst, $02, nBb2, $0A, nRst, $02, nD3, $04
	dc.b	nRst, $02, nBb2, $0A, nRst, $02, nD3, $0A, nRst, $02, nBb2, $04
	dc.b	nRst, $0E, nG3, $04, nRst, $02, nG3, $04, nRst, $08, nAb3, $02
	dc.b	nRst, $04, nBb3, $0A, nRst, $02, nBb2, $0A, nRst, $02, nAb2, $04
	dc.b	nRst, $02, nBb2, $0A, nRst, $02, nAb2, $0A, nRst, $02, nBb2, $04
	dc.b	nRst, $0E, nBb3, $04, nRst, $02, nBb3, $04, nRst, $08, nC4, $02
	dc.b	nRst, $04, nD4, $0A, nRst, $08, nG3, $04, nRst, $0E, nF3, $0A
	dc.b	nRst, $02, nF3, $04, nRst, $02, nG3, $04, nRst, $08, nD3, $10
	dc.b	nRst, $02, nC3, $0A, nRst, $02, nD3, $0A, nRst, $02, nC3, $0A
	dc.b	nRst, $02, nBb2, $04, nRst, $02, nC3, $0A, nRst, $02, nBb2, $0A
	dc.b	nRst, $02, nC3, $04, nRst, $0E, nAb3, $04, nRst, $02, nAb3, $04
	dc.b	nRst, $08, nBb3, $02, nRst, $04, nC4, $0A, nRst, $02, nBb2, $0A
	dc.b	nRst, $02, nD3, $04, nRst, $02, nBb2, $0A, nRst, $02, nD3, $0A
	dc.b	nRst, $02, nG2, $04, nRst, $0E, nG3, $04, nRst, $02, nG3, $04
	dc.b	nRst, $08, nBb3, $02, nRst, $04, nEb4, $0A, nRst, $02, nBb2, $0A
	dc.b	nRst, $02, nG2, $04, nRst, $02, nBb2, $0A, nRst, $02, nG2, $0A
	dc.b	nRst, $02, nA2, $04, nRst, $0E, nF3, $04, nRst, $02, nF3, $04
	dc.b	nRst, $08, nA3, $02, nRst, $04, nC4, $0A, nRst, $08, nG3, $04
	dc.b	nRst, $08, nG3, $04, nRst, $08, nG3, $04, nRst, $02, nG3, $0A
	dc.b	nRst, $02, nF3, $04, nRst, $02, nF3, $04, nRst, $08, nF3, $04
	dc.b	nRst, $0E, nC3, $04, nRst, $02, nD3, $04, nRst, $08, nEb3, $04
	dc.b	nRst, $02, nD3, $04, nRst, $02, nC3, $04, nRst, $08, nBb2, $04
	dc.b	nRst, $02, nC3, $04, nRst, $02, nAb2, $04, nRst, $08, nF3, $10
	dc.b	nRst, $02, nEb3, $04, nRst, $08, nD3, $04, nRst, $0E, nBb3, $04
	dc.b	nRst, $02, nG3, $04, nRst, $02, nEb3, $04, nRst, $02, nC3, $10
	dc.b	nRst, $02, nF2, $34, nRst, $08, nEb3, $04, nRst, $02, nD3, $04
	dc.b	nRst, $02, nC3, $04, nRst, $08, nBb2, $04, nRst, $02, nC3, $04
	dc.b	nRst, $02, nAb2, $04, nRst, $08, nF3, $10, nRst, $02, nEb3, $04
	dc.b	nRst, $08, nD3, $04, nRst, $08, nEb3, $16, nRst, $02, nF3, $10
	dc.b	nRst, $02, nF3, $04, nRst, $08, nEb3, $10, nRst, $02, nD3, $16
	dc.b	nRst, $08, nEb3, $04, nRst, $02, nD3, $04, nRst, $02, nC3, $04
	dc.b	nRst, $08, nBb2, $04, nRst, $02, nC3, $04, nRst, $02, nAb2, $04
	dc.b	nRst, $08, nF3, $10, nRst, $02, nEb3, $04, nRst, $08, nD3, $04
	dc.b	nRst, $0E, nBb3, $04, nRst, $02, nG3, $04, nRst, $02, nEb3, $04
	dc.b	nRst, $02, nC3, $10, nRst, $02, nF2, $34, nRst, $08, nEb3, $04
	dc.b	nRst, $02, nD3, $04, nRst, $02, nC3, $04, nRst, $08, nBb2, $04
	dc.b	nRst, $02, nC3, $04, nRst, $02, nAb2, $04, nRst, $1A, nC3, $0A
	dc.b	nRst, $02, nEb3, $0A, nRst, $08, nD3, $04, nRst, $08, nD3, $04
	dc.b	nRst, $08, nD3, $04, nRst, $02, nD3, $0A, nRst, $02, nD3, $04
	dc.b	nRst, $2C
	smpsJump            s3p4_FM2

; FM3 Data
s3p4_FM3:
	smpsPan             panLeft, $00
	smpsSetvoice        $03
	smpsDetune          $FE
	smpsModSet          $0F, $01, $06, $06
	dc.b	nRst, $7F, nRst, nRst, $76, nG4, $06, nBb4, nC5, nG4, nF4, $02
	dc.b	nEb4, nD4, nC4, nBb3, nA3, nG3, nRst, $04, nBb3, $06, nC4, nG3
	dc.b	nF3, $02, nFs3, $04, nF3, $06, nEb3, nC3, nG3, $02, nA3, nBb3
	dc.b	$08, nBb3, $02, nBb3, $04, nA3, $12, nG3, $02, nFs3, nF3, nEb3
	dc.b	nD3, nC3, nBb2, nA2, nG2, nRst, $36, nBb3, $06, nB3, nC4, nFs3
	dc.b	$02, nG3, $04, nF3, $02, nEb3, nC3, nBb2, nA2, nG2, nF2, nEb2
	dc.b	$04, nF3, $02, nFs3, $04, nF3, $06, nEb3, nF3, nEb3, nC3, nBb2
	dc.b	nG3, $0C, nG3, $06, nC4, $12, nA3, $02, nG3, nF3, nEb3, nD3
	dc.b	nC3, nRst, $3C, nG4, $06, nBb4, nC5, nG4, nF4, $02, nEb4, nD4
	dc.b	nC4, nBb3, nA3, nG3, nRst, $04, nBb3, $06, nC4, nG3, nF3, $02
	dc.b	nFs3, $04, nF3, $06, nEb3, nC3, nG3, $02, nA3, nBb3, $08, nBb3
	dc.b	$02, nBb3, $04, nA3, $12, nG3, $02, nF3, nEb3, nD3, nC3, nBb2
	dc.b	nA2, nG2, nF2, nRst, $36, nBb3, $06, nB3, nC4, nFs3, $02, nG3
	dc.b	$04, nF3, $02, nEb3, nC3, nBb2, nA2, nG2, nF2, nEb2, $04, nF3
	dc.b	$02, nFs3, $04, nF3, $06, nEb3, nF3, nEb3, nC3, nBb2, nG3, $0C
	dc.b	nG3, $06, nEb3, $12, nD3, $02, nC3, nBb2, nA2, nG2, nF2, nRst
	dc.b	$1E
	smpsSetvoice        $0E
	smpsDetune          $01
	smpsModSet          $0F, $01, $06, $06
	smpsChangeTransposition $F4
	dc.b	nF3, $06, nFs3, $02, nG3, $04, nBb3, $06, nEb4, nF4, nG4, nBb4
	dc.b	nD5, $02, nEb5, $08, nRst, $02, nF5, $04, nRst, $02, nFs5, nG5
	dc.b	$08, nRst, $02, nC5, $0A, nRst, $02, nFs5, nG5, $26, nRst, $02
	dc.b	nF5, $04, nRst, $02, nEb5, $04, nRst, $02, nCs5, nD5, $26, nRst
	dc.b	$02, nBb4, $34, nRst, $02, nCs5, nD5, $08, nRst, $02, nEb5, $04
	dc.b	nRst, $02, nE5, nF5, $08, nRst, $02, nBb4, $0A, nRst, $02, nF5
	dc.b	nF5, $26, nRst, $02, nEb5, $04, nRst, $02, nD5, $04, nRst, $02
	dc.b	nC5, $2E, nRst, $08, nD5, $10, nRst, $02, nEb5, $0A, nRst, $02
	dc.b	nF5, $0A, nRst, $02, nD5, nEb5, $08, nRst, $02, nF5, $04, nRst
	dc.b	$02, nFs5, nG5, $08, nRst, $02, nC5, $0A, nRst, $02, nG5, $28
	dc.b	nRst, $02, nF5, $04, nRst, $02, nEb5, $04, nRst, $02, nCs5, nD5
	dc.b	$26, nRst, $02, nEb5, $1C, nRst, $0E, nEb5, $04, nRst, $02, nF5
	dc.b	$04, nRst, $02, nFs5, nG5, $08, nRst, $02, nEb5, $04, nRst, $02
	dc.b	nG5, $0A, nRst, $02, nBb4, $0A, nRst, $02, nC5, $28, nRst, $02
	dc.b	nEb5, $04, nRst, $02, nF5, $04, nRst, $02, nG5, $2E, nRst, $02
	dc.b	nF5, $12, nEb5, $02, nD5, nC5, nBb4, nAb4, nG4, nF4, nEb4, nD4
	smpsSetvoice        $03
	smpsDetune          $FE
	smpsModSet          $0F, $01, $06, $06
	smpsChangeTransposition $0C
	dc.b	nC4, $04, nRst, $02, nD4, $04, nRst, $02, nEb4, $0C, nD4, $02
	dc.b	nC4, nBb3, nAb3, nG3, nF3, nC4, $0A, nRst, $02, nEb4, $04, nRst
	dc.b	$02, nE4, nF4, nRst, $08, nD4, $10, nRst, $02, nC4, $04, nRst
	dc.b	$08, nBb3, $04, nRst, $08, nFs3, $02, nG3, $14, nRst, $02, nFs3
	dc.b	nG3, $08, nRst, $02, nF3, $04, nRst, $02, nFs3, nG3, $28, nC4
	dc.b	$04, nRst, $02, nD4, $04, nRst, $02, nEb4, $0C, nD4, $02, nC4
	dc.b	nBb3, nAb3, nG3, nF3, nC4, $0A, nRst, $02, nEb4, $04, nRst, $02
	dc.b	nE4, nF4, nRst, $08, nD4, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b	nB3, $04, nRst, $08, nC4, $10, nRst, $02, nC4, $04, nRst, $02
	dc.b	nD4, $0A, nRst, $02, nC4, $04, nRst, $02, nD4, $04, nRst, $08
	dc.b	nEb4, $10, nRst, $02, nF4, $0A, nRst, $02, nC4, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nEb4, $0C, nD4, $02, nC4, nBb3, nAb3, nG3
	dc.b	nF3, nC4, $0A, nRst, $02, nEb4, $04, nRst, $02, nE4, nF4, nRst
	dc.b	$08, nD4, $10, nRst, $02, nC4, $04, nRst, $08, nBb3, $04, nRst
	dc.b	$08, nFs3, $02, nG3, $14, nRst, $02, nFs3, nG3, $08, nRst, $02
	dc.b	nF3, $04, nRst, $02, nFs3, nG3, $28, nC4, $04, nRst, $02, nD4
	dc.b	$04, nRst, $02, nEb4, $10, nRst, $02, nEb4, $04, nRst, $08, nD4
	dc.b	$04, nRst, $02, nEb4, $10, nRst, $02, nEb4, $04, nRst, $02, nF4
	dc.b	$0A, nRst, $02, nEb4, $04, nRst, $08, nAb4, $04, nRst, $0E, nC5
	dc.b	$04, nRst, $08, nC5, $04, nRst, $08, nC5, $04, nRst, $02, nC5
	dc.b	$0A, nRst, $02, nB4, $04, nRst, $2C
	smpsJump            s3p4_FM3

; FM4 Data
s3p4_FM4:
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nC1, $0A, nRst, $02, nEb1, nRst, $04, nC1, $10, nRst, $02, nEb1
	dc.b	nRst, $04, nF1, nRst, $08, nEb1, $10, nRst, $02, nF1, $16, nRst
	dc.b	$02, nC1, $0A, nRst, $02, nA0, nRst, $04, nC1, $12, nA0, $04
	dc.b	nRst, $02, nBb0, $04, nRst, $08, nG0, $10, nRst, $02, nBb0, $16
	dc.b	nRst, $02, nC1, $0A, nRst, $02, nEb1, nRst, $04, nC1, $10, nRst
	dc.b	$02, nEb1, nRst, $04, nF1, nRst, $08, nEb1, $10, nRst, $02, nF1
	dc.b	$16, nRst, $02, nC1, $0A, nRst, $02, nA0, nRst, $04, nC1, $12
	dc.b	nA0, $04, nRst, $02, nBb0, $04, nRst, $08, nG0, $10, nRst, $02
	dc.b	nBb0, $16, nRst, $02, nC1, $0A, nRst, $02, nEb1, nRst, $04, nC1
	dc.b	$10, nRst, $02, nEb1, nRst, $04, nF1, nRst, $08, nEb1, $10, nRst
	dc.b	$02, nF1, $16, nRst, $02, nC1, $0A, nRst, $02, nA0, nRst, $04
	dc.b	nC1, $12, nA0, $04, nRst, $02, nBb0, $04, nRst, $08, nG0, $10
	dc.b	nRst, $02, nBb0, $16, nRst, $02, nC1, $0A, nRst, $02, nEb1, nRst
	dc.b	$04, nC1, $10, nRst, $02, nEb1, nRst, $04, nF1, nRst, $08, nEb1
	dc.b	$10, nRst, $02, nF1, $16, nRst, $02, nC1, $0A, nRst, $02, nA0
	dc.b	nRst, $04, nC1, $12, nA0, $04, nRst, $02, nBb0, $04, nRst, $08
	dc.b	nG0, $10, nRst, $02, nBb0, $16, nRst, $02, nC1, $0A, nRst, $02
	dc.b	nEb1, nRst, $04, nC1, $10, nRst, $02, nEb1, $04, nRst, $02, nF1
	dc.b	$04, nRst, $08, nEb1, $10, nRst, $02, nF1, $16, nRst, $02, nC1
	dc.b	$0A, nRst, $02, nA0, nRst, $04, nC1, $12, nA0, $04, nRst, $02
	dc.b	nBb0, $04, nRst, $08, nG0, $10, nRst, $02, nBb0, $16, nRst, $02
	dc.b	nC1, $0A, nRst, $02, nEb1, nRst, $04, nC1, $10, nRst, $02, nEb1
	dc.b	$04, nRst, $02, nF1, $04, nRst, $08, nEb1, $10, nRst, $02, nF1
	dc.b	$10, nRst, $02, nEb1, $04, nRst, $08, nC2, $04, nRst, $02, nBb1
	dc.b	$04, nRst, $02, nG1, $04, nRst, $02, nF1, $04, nFs1, nF1, nEb1
	dc.b	$06, nC1, $04, nRst, $14, nG0, $1C, nRst, $02, nAb0, $0A, nRst
	dc.b	$02, nAb0, nRst, $04, nAb1, nRst, $08, nAb0, $04, nRst, $08, nAb0
	dc.b	$04, nRst, $08, nAb1, $04, nRst, $02, nAb0, $16, nRst, $02, nAb0
	dc.b	$04, nRst, $08, nG0, $0A, nRst, $02, nG0, nRst, $04, nG1, nRst
	dc.b	$08, nG0, $04, nRst, $08, nG0, $04, nRst, $08, nG1, $04, nRst
	dc.b	$02, nG0, $16, nRst, $02, nG0, $04, nRst, $08, nBb0, $0A, nRst
	dc.b	$02, nBb0, nRst, $04, nBb1, nRst, $08, nBb0, $04, nRst, $08, nBb0
	dc.b	$04, nRst, $08, nBb1, $04, nRst, $02, nBb0, $10, nRst, $02, nBb0
	dc.b	nRst, $04, nBb0, nRst, $0E, nC1, $04, nRst, $0E, nC1, $04, nRst
	dc.b	$08, nC2, $04, nRst, $02, nC1, $04, nRst, $08, nC2, $10, nRst
	dc.b	$02, nC1, $0A, nRst, $02, nC2, $0A, nRst, $02, nAb0, $0A, nRst
	dc.b	$02, nAb0, nRst, $04, nAb1, nRst, $08, nAb0, $04, nRst, $08, nAb0
	dc.b	$04, nRst, $08, nAb1, $04, nRst, $02, nAb0, $16, nRst, $02, nAb0
	dc.b	$04, nRst, $08, nG0, $0A, nRst, $02, nG0, nRst, $04, nG1, nRst
	dc.b	$08, nG0, $04, nRst, $08, nG0, $04, nRst, $08, nG1, $04, nRst
	dc.b	$02, nG0, $16, nRst, $02, nG0, $04, nRst, $08, nF0, $0A, nRst
	dc.b	$02, nF0, nRst, $04, nF1, nRst, $08, nF0, $04, nRst, $08, nF0
	dc.b	$04, nRst, $08, nF1, $04, nRst, $02, nF0, $16, nRst, $02, nF0
	dc.b	nRst, $04, nAb0, nRst, $08, nAb0, $04, nRst, $08, nAb0, $04, nRst
	dc.b	$08, nAb0, $04, nRst, $02, nAb0, $0A, nRst, $02, nG0, $04, nRst
	dc.b	$02, nG0, $04, nRst, $08, nG0, $04, nRst, $08, nG1, $04, nRst
	dc.b	$02, nG0, $04, nRst, $02, nG0, $04, nRst, $02, nF0, $10, nRst
	dc.b	$02, nF0, nRst, $22, nG0, $02, nRst, $04, nG1, $0A, nRst, $02
	dc.b	nG0, $16, nRst, $02, nAb0, $10, nRst, $02, nAb0, nRst, $22, nBb0
	dc.b	$02, nRst, $04, nBb1, $0A, nRst, $02, nBb0, $0A, nRst, $02, nBb1
	dc.b	$0A, nRst, $02, nF0, $10, nRst, $02, nF0, nRst, $22, nG0, $02
	dc.b	nRst, $04, nG1, $0A, nRst, $02, nG0, $16, nRst, $02, nC1, $10
	dc.b	nRst, $02, nC2, nRst, $04, nBb0, $10, nRst, $02, nBb1, nRst, $0A
	dc.b	nAb0, $02, nRst, $04, nAb1, $0A, nRst, $02, nG0, $0A, nRst, $02
	dc.b	nG1, $0A, nRst, $02, nF0, $10, nRst, $02, nF0, nRst, $22, nG0
	dc.b	$02, nRst, $04, nG1, $0A, nRst, $02, nG0, $16, nRst, $02, nAb0
	dc.b	$10, nRst, $02, nAb0, nRst, $22, nBb0, $02, nRst, $04, nBb1, $0A
	dc.b	nRst, $02, nBb0, $0A, nRst, $02, nBb1, $0A, nRst, $02, nAb0, $10
	dc.b	nRst, $02, nAb0, nRst, $22, nF0, $02, nRst, $04, nF0, $0A, nRst
	dc.b	$02, nEb0, $0A, nRst, $02, nF0, $0A, nRst, $08, nG0, $04, nRst
	dc.b	$08, nG0, $04, nRst, $08, nG0, $04, nRst, $02, nG0, $0A, nRst
	dc.b	$02, nG0, $04, nRst, $14, nF0, $04, nRst, $02, nFs0, $04, nRst
	dc.b	$02, nG0, $04, nRst, $02, nBb0, $04, nRst, $02
	smpsJump            s3p4_FM4

; FM5 Data
s3p4_FM5:
	dc.b	nRst, $01
	smpsPan             panRight, $00

s3p4_Jump00:
	smpsSetvoice        $03
	smpsDetune          $02
	smpsModSet          $0F, $01, $06, $06
	dc.b	nRst, $7F, nRst, nRst, $76, nG4, $06, nBb4, nC5, nG4, nF4, $02
	dc.b	nEb4, nD4, nC4, nBb3, nA3, nG3, nRst, $04, nBb3, $06, nC4, nG3
	dc.b	nF3, $02, nFs3, $04, nF3, $06, nEb3, nC3, nG3, $02, nA3, nBb3
	dc.b	$08, nBb3, $02, nBb3, $04, nA3, $12, nG3, $02, nFs3, nF3, nEb3
	dc.b	nD3, nC3, nBb2, nA2, nG2, nRst, $36, nBb3, $06, nB3, nC4, nFs3
	dc.b	$02, nG3, $04, nF3, $02, nEb3, nC3, nBb2, nA2, nG2, nF2, nEb2
	dc.b	$04, nF3, $02, nFs3, $04, nF3, $06, nEb3, nF3, nEb3, nC3, nBb2
	dc.b	nG3, $0C, nG3, $06, nC4, $12, nA3, $02, nG3, nF3, nEb3, nD3
	dc.b	nC3, nRst, $3C, nG4, $06, nBb4, nC5, nG4, nF4, $02, nEb4, nD4
	dc.b	nC4, nBb3, nA3, nG3, nRst, $04, nBb3, $06, nC4, nG3, nF3, $02
	dc.b	nFs3, $04, nF3, $06, nEb3, nC3, nG3, $02, nA3, nBb3, $08, nBb3
	dc.b	$02, nBb3, $04, nA3, $12, nG3, $02, nF3, nEb3, nD3, nC3, nBb2
	dc.b	nA2, nG2, nF2, nRst, $36, nBb3, $06, nB3, nC4, nFs3, $02, nG3
	dc.b	$04, nF3, $02, nEb3, nC3, nBb2, nA2, nG2, nF2, nEb2, $04, nF3
	dc.b	$02, nFs3, $04, nF3, $06, nEb3, nF3, nEb3, nC3, nBb2, nG3, $0C
	dc.b	nG3, $06, nEb3, $12, nD3, $02, nC3, nBb2, nA2, nG2, nF2, nRst
	dc.b	$1E
	smpsSetvoice        $0E
	smpsDetune          $FF
	smpsModSet          $0F, $01, $06, $06
	smpsChangeTransposition $F4
	dc.b	nF3, $06, nFs3, $02, nG3, $04, nBb3, $06, nEb4, nF4, nG4, nBb4
	dc.b	nD5, $02, nEb5, $08, nRst, $02, nF5, $04, nRst, $02, nFs5, nG5
	dc.b	$08, nRst, $02, nC5, $0A, nRst, $02, nFs5, nG5, $26, nRst, $02
	dc.b	nF5, $04, nRst, $02, nEb5, $04, nRst, $02, nCs5, nD5, $26, nRst
	dc.b	$02, nBb4, $34, nRst, $02, nCs5, nD5, $08, nRst, $02, nEb5, $04
	dc.b	nRst, $02, nE5, nF5, $08, nRst, $02, nBb4, $0A, nRst, $02, nF5
	dc.b	nF5, $26, nRst, $02, nEb5, $04, nRst, $02, nD5, $04, nRst, $02
	dc.b	nC5, $2E, nRst, $08, nD5, $10, nRst, $02, nEb5, $0A, nRst, $02
	dc.b	nF5, $0A, nRst, $02, nD5, nEb5, $08, nRst, $02, nF5, $04, nRst
	dc.b	$02, nFs5, nG5, $08, nRst, $02, nC5, $0A, nRst, $02, nG5, $28
	dc.b	nRst, $02, nF5, $04, nRst, $02, nEb5, $04, nRst, $02, nCs5, nD5
	dc.b	$26, nRst, $02, nEb5, $1C, nRst, $0E, nEb5, $04, nRst, $02, nF5
	dc.b	$04, nRst, $02, nFs5, nG5, $08, nRst, $02, nEb5, $04, nRst, $02
	dc.b	nG5, $0A, nRst, $02, nBb4, $0A, nRst, $02, nC5, $28, nRst, $02
	dc.b	nEb5, $04, nRst, $02, nF5, $04, nRst, $02, nG5, $2E, nRst, $02
	dc.b	nF5, $12, nEb5, $02, nD5, nC5, nBb4, nAb4, nG4, nF4, nEb4, nD4
	smpsSetvoice        $03
	smpsDetune          $02
	smpsModSet          $0F, $01, $06, $06
	smpsChangeTransposition $0C
	dc.b	nC4, $04, nRst, $02, nD4, $04, nRst, $02, nEb4, $0C, nD4, $02
	dc.b	nC4, nBb3, nAb3, nG3, nF3, nC4, $0A, nRst, $02, nEb4, $04, nRst
	dc.b	$02, nE4, nF4, nRst, $08, nD4, $10, nRst, $02, nC4, $04, nRst
	dc.b	$08, nBb3, $04, nRst, $08, nFs3, $02, nG3, $14, nRst, $02, nFs3
	dc.b	nG3, $08, nRst, $02, nF3, $04, nRst, $02, nFs3, nG3, $28, nC4
	dc.b	$04, nRst, $02, nD4, $04, nRst, $02, nEb4, $0C, nD4, $02, nC4
	dc.b	nBb3, nAb3, nG3, nF3, nC4, $0A, nRst, $02, nEb4, $04, nRst, $02
	dc.b	nE4, nF4, nRst, $08, nD4, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b	nB3, $04, nRst, $08, nC4, $10, nRst, $02, nC4, $04, nRst, $02
	dc.b	nD4, $0A, nRst, $02, nC4, $04, nRst, $02, nD4, $04, nRst, $08
	dc.b	nEb4, $10, nRst, $02, nF4, $0A, nRst, $02, nC4, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nEb4, $0C, nD4, $02, nC4, nBb3, nAb3, nG3
	dc.b	nF3, nC4, $0A, nRst, $02, nEb4, $04, nRst, $02, nE4, nF4, nRst
	dc.b	$08, nD4, $10, nRst, $02, nC4, $04, nRst, $08, nBb3, $04, nRst
	dc.b	$08, nFs3, $02, nG3, $14, nRst, $02, nFs3, nG3, $08, nRst, $02
	dc.b	nF3, $04, nRst, $02, nFs3, nG3, $28, nC4, $04, nRst, $02, nD4
	dc.b	$04, nRst, $02, nEb4, $10, nRst, $02, nEb4, $04, nRst, $08, nD4
	dc.b	$04, nRst, $02, nEb4, $10, nRst, $02, nEb4, $04, nRst, $02, nF4
	dc.b	$0A, nRst, $02, nEb4, $04, nRst, $08, nAb4, $04, nRst, $0E, nC5
	dc.b	$04, nRst, $08, nC5, $04, nRst, $08, nC5, $04, nRst, $02, nC5
	dc.b	$0A, nRst, $02, nB4, $04, nRst, $2C
	smpsJump            s3p4_Jump00

; PSG1 Data
s3p4_PSG1:
	smpsPSGvoice        sTone_0A

s3p4_Jump02:
	dc.b	nC4, $04, nRst, $02, nG3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $08, nG3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nC4, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nG3, $04, nRst, $60, nRst, $1A, nC4, $04
	dc.b	nRst, $02, nG3, $04, nRst, $02, nBb3, $04, nRst, $02, nG3, $04
	dc.b	nRst, $08, nG3, $04, nRst, $02, nBb3, $04, nRst, $02, nG3, $04
	dc.b	nRst, $02, nC4, $04, nRst, $02, nG3, $04, nRst, $02, nBb3, $04
	dc.b	nRst, $02, nG3, $04, nRst, $60, nRst, nRst, $38, nF4, $06, nFs4
	dc.b	nG4, nBb5, nRst, nC5, nFs5, $02, nG5, $12, nRst, $70, nC4, $04
	dc.b	nRst, $02, nA4, $04, nRst, $02, nG4, $04, nRst, $08, nF4, $04
	dc.b	nRst, $02, nFs4, nG4, $04, nE4, nRst, $7F, nRst, $31, nF4, $06
	dc.b	nFs4, nG4, nBb5, nRst, nC5, nFs5, $02, nG5, $12, nRst, $70, nC5
	dc.b	$06, nBb4, nG4, nF4, $04, nFs4, nF4, nEb4, $06, nC4, nRst, $12
	dc.b	nBb3, $1E, nRst, $3C, nC4, $04, nRst, $02, nC4, $04, nRst, $08
	dc.b	nD4, $02, nRst, $04, nEb4, $0A, nRst, $3E, nBb3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $08, nC4, $02, nRst, $04, nD4, $0A, nRst, $3E
	dc.b	nD4, $04, nRst, $02, nD4, $04, nRst, $08, nEb4, $02, nRst, $04
	dc.b	nF4, $0A, nRst, $08, nEb5, $04, nRst, $0E, nD5, $0A, nRst, $02
	dc.b	nD5, $04, nRst, $02, nEb5, $04, nRst, $08, nD5, $10, nRst, $02
	dc.b	nEb5, $0A, nRst, $02, nF5, $0A, nRst, $3E, nC4, $04, nRst, $02
	dc.b	nC4, $04, nRst, $08, nD4, $02, nRst, $04, nEb4, $0A, nRst, $3E
	dc.b	nBb3, $04, nRst, $02, nBb3, $04, nRst, $08, nEb4, $02, nRst, $04
	dc.b	nG4, $0A, nRst, $3E, nA3, $04, nRst, $02, nA3, $04, nRst, $08
	dc.b	nC4, $02, nRst, $04, nEb4, $0A, nRst, $08, nEb4, $04, nRst, $02
	dc.b	nEb3, $04, nRst, $02, nEb4, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b	nEb4, $04, nRst, $02, nEb4, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nD4, $04, nRst, $08, nD4, $04, nRst, $50
	dc.b	nBb3, $04, nRst, $02, nG3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $38, nD4, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nF4, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nG3, $04, nRst, $38, nB3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nB3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nB3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b	nC3, $04, nRst, $02, nEb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nEb3, $04, nRst, $02, nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nD3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b	nAb3, $04, nRst, $02, nC4, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nG3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b	nG3, $04, nRst, $38, nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nBb3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nBb3, $04, nRst, $38, nD4, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nD4, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nBb3, $04, nRst, $02, nG3, $04, nRst, $38
	dc.b	nEb3, $04, nRst, $02, nAb3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b	nEb3, $04, nRst, $02, nC4, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b	nEb4, $04, nRst, $08, nEb5, $04, nRst, $08, nEb5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $02, nEb5, $0A, nRst, $02, nD5, $04, nRst, $2C
	smpsJump            s3p4_Jump02

; PSG2 Data
s3p4_PSG2:
	smpsPSGvoice        sTone_08
	dc.b	nRst, $01
	smpsDetune          $01
	smpsJump            s3p4_Jump02

; PSG3 Data
s3p4_PSG3:
	smpsPSGvoice        sTone_02
	smpsPSGform         $E7

s3p4_Jump01:
	dc.b	nRst, $18, nRst, $18, nRst, $18, nRst, $18, nRst, $18
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18
	dc.b	smpsNoAttack, $18
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C, smpsNoAttack, $18

s3p4_Loop00:
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsLoop            $01, $03, s3p4_Loop00
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18

s3p4_Loop01:
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsLoop            $01, $03, s3p4_Loop01
	dc.b	smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18

s3p4_Loop02:
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsLoop            $01, $03, s3p4_Loop02
	dc.b	smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $18
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18
	smpsJump            s3p4_Jump01

s3p4_Voices:
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

