s3p35_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     s3p35_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $25

	smpsHeaderDAC       s3p35_DAC
	smpsHeaderFM        s3p35_FM1,	$0C, $10
	smpsHeaderFM        s3p35_FM2,	$00, $10
	smpsHeaderFM        s3p35_FM3,	$18, $0F
	smpsHeaderFM        s3p35_FM4,	$0C, $05
	smpsHeaderFM        s3p35_FM5,	$0C, $0F
	smpsHeaderPSG       s3p35_PSG1,	$F4, $03, $00, sTone_0C
	smpsHeaderPSG       s3p35_PSG2,	$F4, $04, $00, sTone_0C
	smpsHeaderPSG       s3p35_PSG3,	$00, $02, $00, sTone_0C

; DAC Data
s3p35_DAC:
	dc.b	dKickS3, $12, dKickS3, $06, dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dKickS3, $12
	dc.b	dKickS3, $06, dSnareS3, $18, dKickS3, $12, dKickS3, $06, dSnareS3, $0C, dKickS3, $06
	dc.b	dKickS3, $06, dKickS3, $12, dKickS3, $06, dSnareS3, $18, dKickS3, $12, dKickS3, $06
	dc.b	dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dKickS3, $12, dKickS3, $06, dSnareS3, $18
	dc.b	dKickS3, $12, dKickS3, $06, dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dKickS3, $12
	dc.b	dKickS3, $06, dSnareS3, $0C, dSnareS3, $06, dSnareS3, $06, dKickS3, $12, dKickS3, $06
	dc.b	dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dKickS3, $12, dKickS3, $06, dSnareS3, $18
	dc.b	dKickS3, $12, dKickS3, $06, dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dKickS3, $12
	dc.b	dKickS3, $06, dSnareS3, $18, dKickS3, $12, dKickS3, $06, dSnareS3, $0C, dKickS3, $06
	dc.b	dKickS3, $06, dKickS3, $12, dKickS3, $06, dSnareS3, $18, dKickS3, $12, dKickS3, $06
	dc.b	dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dKickS3, $12, dKickS3, $06, dSnareS3, $0C
	dc.b	dSnareS3, $06, dSnareS3, $06, dKickS3, $0C, dKickS3, $06, dSnareS3, $0C, dKickS3, $06
	dc.b	dSnareS3, $12, dKickS3, $0C, dKickS3, $06, dSnareS3, $18, dKickS3, $12, dKickS3, $06
	dc.b	dSnareS3, $0C, dKickS3, $06, dKickS3, $0C, dKickS3, $0C, dKickS3, $06, dSnareS3, $18
	dc.b	dKickS3, $0C, dKickS3, $06, dSnareS3, $0C, dKickS3, $06, dSnareS3, $12, dKickS3, $0C
	dc.b	dKickS3, $06, dSnareS3, $18, dKickS3, $12, dKickS3, $06, dSnareS3, $0C, dKickS3, $06
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dSnareS3, $06, dSnareS3, $06, dSnareS3, $06
	dc.b	dSnareS3, $06, dKickS3, $0C, dKickS3, $06, dSnareS3, $0C, dKickS3, $06, dSnareS3, $12
	dc.b	dKickS3, $0C, dKickS3, $06, dSnareS3, $18, dKickS3, $12, dKickS3, $06, dSnareS3, $0C
	dc.b	dKickS3, $06, dKickS3, $0C, dKickS3, $0C, dKickS3, $06, dSnareS3, $18, dKickS3, $0C
	dc.b	dKickS3, $06, dSnareS3, $0C, dKickS3, $06, dSnareS3, $06, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $06, dSnareS3, $12, dSnareS3, $06, dKickS3, $06, dSnareS3, $0C, dSnareS3, $06
	dc.b	dSnareS3, $0C, dSnareS3, $06, dSnareS3, $06, dKickS3, $12, dKickS3, $06, dSnareS3, $02
	dc.b	dSnareS3, $04, dSnareS3, $06, dSnareS3, $06, dSnareS3, $06, dKickS3, $12, dKickS3, $06
	dc.b	dSnareS3, $06, dKickS3, $06, dKickS3, $18, dKickS3, $06, dKickS3, $06, dSnareS3, $18
	dc.b	dKickS3, $12, dKickS3, $06, dSnareS3, $06, dKickS3, $06, dKickS3, $18, dKickS3, $06
	dc.b	dKickS3, $06, dSnareS3, $18, dKickS3, $12, dKickS3, $06, dSnareS3, $06, dKickS3, $06
	dc.b	dKickS3, $18, dKickS3, $06, dKickS3, $06, dSnareS3, $18, dKickS3, $12, dKickS3, $06
	dc.b	dSnareS3, $06, dKickS3, $06, dKickS3, $18, dKickS3, $06, dKickS3, $06, dSnareS3, $0C
	dc.b	dSnareS3, $06, dSnareS3, $06, dKickS3, $12, dKickS3, $06, dSnareS3, $06, dKickS3, $06
	dc.b	dKickS3, $18, dKickS3, $06, dKickS3, $06, dSnareS3, $18, dKickS3, $12, dKickS3, $06
	dc.b	dSnareS3, $06, dKickS3, $06, dKickS3, $18, dKickS3, $06, dKickS3, $06, dSnareS3, $18
	dc.b	dKickS3, $12, dKickS3, $06, dSnareS3, $06, dKickS3, $06, dKickS3, $18, dKickS3, $06
	dc.b	dKickS3, $06, dSnareS3, $18, dKickS3, $12, dKickS3, $06, dSnareS3, $0C, dKickS3, $06
	dc.b	dKickS3, $06, dKickS3, $06, dSnareS3, $06, dSnareS3, $06, dKickS3, $06, dSnareS3, $06
	dc.b	dSnareS3, $06, dSnareS3, $06, dSnareS3, $06, dKickS3, $12, dKickS3, $06, dSnareS3, $06
	dc.b	dKickS3, $06, dKickS3, $18, dKickS3, $06, dKickS3, $06, dSnareS3, $18, dKickS3, $12
	dc.b	dKickS3, $06, dSnareS3, $06, dKickS3, $06, dKickS3, $18, dKickS3, $06, dKickS3, $06
	dc.b	dSnareS3, $18, dKickS3, $12, dKickS3, $06, dSnareS3, $06, dKickS3, $06, dKickS3, $18
	dc.b	dKickS3, $06, dKickS3, $06, dSnareS3, $18, dKickS3, $12, dKickS3, $06, dSnareS3, $06
	dc.b	dKickS3, $06, dKickS3, $12, dSnareS3, $06, dKickS3, $06, dKickS3, $06, dSnareS3, $0C
	dc.b	dSnareS3, $06, dSnareS3, $06, dKickS3, $12, dKickS3, $06, dSnareS3, $06, dKickS3, $06
	dc.b	dKickS3, $18, dKickS3, $06, dKickS3, $06, dSnareS3, $18, dKickS3, $12, dKickS3, $06
	dc.b	dSnareS3, $06, dKickS3, $06, dKickS3, $18, dKickS3, $06, dKickS3, $06, dSnareS3, $18
	dc.b	dSnareS3, $12, dKickS3, $06, dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $12
	dc.b	dKickS3, $06, dSnareS3, $18, dSnareS3, $0C, dSnareS3, $06, dSnareS3, $06, dSnareS3, $06
	dc.b	dSnareS3, $06, dSnareS3, $06, dSnareS3, $06, dKickS3, $12, dKickS3, $06, dSnareS3, $02
	dc.b	dSnareS3, $04, dSnareS3, $06, dSnareS3, $06, dSnareS3, $06
	smpsJump            s3p35_DAC

; FM1 Data
s3p35_FM1:
	smpsPan             panRight, $00
	smpsSetvoice        $0A
	smpsDetune          $02
	smpsModSet          $0A, $01, $03, $06

s3p35_Jump03:
	dc.b	nE3, $04, nRst, $14, nD3, $10, nRst, $02, nE3, $02, nRst, $0A
	dc.b	nC3, $04, nRst, $02, nC4, $04, nRst, $02, nC4, $04, nRst, $1A
	dc.b	nG2, $10, nRst, $02, nG2, $04, nRst, $0E, nG2, $22, nRst, $02
	dc.b	nG3, $16, nRst, $02, nF3, $3A, nRst, $02, nF3, $04, nRst, $14
	dc.b	nD3, $22, nRst, $02, nD4, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nD4, $04, nRst, $1A, nF3, $16, nRst, $02
	dc.b	nE3, $04, nRst, $14, nD3, $10, nRst, $02, nE3, $02, nRst, $0A
	dc.b	nC3, $04, nRst, $02, nC4, $04, nRst, $02, nC4, $04, nRst, $1A
	dc.b	nG2, $10, nRst, $02, nG2, $04, nRst, $0E, nG2, $22, nRst, $02
	dc.b	nG3, $16, nRst, $02, nF3, $3A, nRst, $02, nF3, $04, nRst, $14
	dc.b	nD3, $22, nRst, $02, nD4, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nD4, $04, nRst, $1A, nF3, $16, nRst, $0E
	dc.b	nG2, $04, nRst, $02, nBb2, $0A, nRst, $02, nG2, $04, nRst, $02
	dc.b	nBb2, $22, nRst, $02, nF3, $16, nRst, $02, nF3, $10, nRst, $02
	dc.b	nEb3, $04, nRst, $0E, nEb3, $0A, nRst, $02, nC3, $10, nRst, $02
	dc.b	nEb3, $10, nRst, $02, nF3, $0A, nRst, $0E, nAb2, $04, nRst, $02
	dc.b	nC3, $0A, nRst, $02, nAb2, $04, nRst, $02, nC3, $24, nEb3, $16
	dc.b	nRst, $02, nF3, $10, nRst, $02, nF3, $04, nRst, $0E, nC3, $2E
	dc.b	nRst, $1A, nG2, $04, nRst, $02, nBb2, $0A, nRst, $02, nG2, $04
	dc.b	nRst, $02, nBb2, $22, nRst, $02, nF3, $16, nRst, $02, nF3, $10
	dc.b	nRst, $02, nEb3, $04, nRst, $0E, nEb3, $0A, nRst, $02, nC3, $10
	dc.b	nRst, $02, nEb3, $10, nRst, $02, nF3, $0A, nRst, $0E, nC3, $04
	dc.b	nRst, $02, nG3, $0A, nRst, $02, nC3, $04, nRst, $02, nG3, $04
	dc.b	nRst, $02, nG3, $28, nRst, $02, nEb3, $04, nRst, $02, nCs3, $04
	dc.b	nRst, $08, nCs3, $04, nRst, $08, nF3, $04, nRst, $02, nF3, $04
	dc.b	nRst, $08, nF3, $04, nRst, $02, nF3, $04, nRst, $1A, nEb3, $16
	dc.b	nRst, $02, nF3, $10, nRst, $02, nF3, $04, nRst, $0E, nF3, $10
	dc.b	nRst, $02, nBb2, $10, nRst, $02, nC3, $04, nRst, $08, nEb3, $04
	dc.b	nRst, $08, nF3, $10, nRst, $02, nF3, $04, nRst, $0E, nF3, $10
	dc.b	nRst, $02, nF3, $04, nRst, $08, nEb3, $04, nRst, $02, nF3, $0A
	dc.b	nRst, $02, nEb3, $0A, nRst, $02, nD3, $10, nRst, $02, nD3, $04
	dc.b	nRst, $08, nD3, $04, nRst, $08, nD3, $34, nRst, $08, nD3, $04
	dc.b	nRst, $02, nF3, $04, nRst, $02, nBb3, $04, nRst, $02, nBb3, $04
	dc.b	nRst, $02, nF3, $04, nRst, $02, nBb3, $04, nRst, $02, nD4, $04
	dc.b	nRst, $08, nF4, $04, nRst, $0E, nF4, $04, nRst, $08, nF4, $04
	dc.b	nRst, $08, nF3, $10, nRst, $02, nF3, $04, nRst, $0E, nF3, $10
	dc.b	nRst, $02, nBb2, $10, nRst, $02, nC3, $04, nRst, $08, nEb3, $04
	dc.b	nRst, $08, nF3, $10, nRst, $02, nF3, $04, nRst, $0E, nF3, $10
	dc.b	nRst, $02, nF3, $04, nRst, $08, nEb3, $04, nRst, $02, nF3, $0A
	dc.b	nRst, $02, nEb3, $0A, nRst, $02, nD3, $10, nRst, $02, nD3, $04
	dc.b	nRst, $08, nD3, $04, nRst, $02, nBb3, $04, nRst, $02, nF3, $10
	dc.b	nRst, $2C, nD3, $04, nRst, $02, nF3, $04, nRst, $02, nBb3, $04
	dc.b	nRst, $02, nBb3, $04, nRst, $02, nF3, $04, nRst, $02, nBb3, $04
	dc.b	nRst, $02, nD4, $04, nRst, $08, nF4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $08, nBb3, $16, nRst, $02, nF3, $10, nRst, $02, nF3, $04
	dc.b	nRst, $0E, nF3, $10, nRst, $02, nBb2, $10, nRst, $02, nC3, $04
	dc.b	nRst, $08, nEb3, $04, nRst, $08, nF3, $10, nRst, $02, nF3, $04
	dc.b	nRst, $0E, nF3, $10, nRst, $02, nF3, $04, nRst, $08, nEb3, $04
	dc.b	nRst, $02, nF3, $0A, nRst, $02, nEb3, $0A, nRst, $02, nD3, $10
	dc.b	nRst, $02, nD3, $04, nRst, $08, nD3, $04, nRst, $08, nD3, $34
	dc.b	nRst, $08, nD3, $04, nRst, $02, nF3, $04, nRst, $02, nBb3, $04
	dc.b	nRst, $02, nBb3, $04, nRst, $02, nF3, $04, nRst, $02, nBb3, $04
	dc.b	nRst, $02, nD4, $04, nRst, $08, nF4, $04, nRst, $0E, nF4, $04
	dc.b	nRst, $08, nF4, $04, nRst, $08, nF3, $10, nRst, $02, nF3, $04
	dc.b	nRst, $0E, nF3, $10, nRst, $02, nF3, $04, nRst, $0E, nF3, $0A
	dc.b	nRst, $02, nF3, $0A, nRst, $02, nF3, $10, nRst, $02, nF3, $04
	dc.b	nRst, $0E, nF3, $10, nRst, $02, nF3, $04, nRst, $0E, nF3, $0A
	dc.b	nRst, $02, nF3, $0A, nRst, $02, nF3, $5E, nRst, $02, nE3, $2E
	dc.b	nRst, $08, nE3, $04, nRst, $08, nC3, $04, nRst, $08, nE3, $04
	dc.b	nRst, $02, nE3, $0A, nRst, $02
	smpsJump            s3p35_Jump03

; FM2 Data
s3p35_FM2:
	smpsPan             panLeft, $00
	smpsSetvoice        $0A
	smpsDetune          $FE
	smpsModSet          $0A, $01, $03, $06

s3p35_Jump02:
	dc.b	nG3, $04, nRst, $14, nG3, $10, nRst, $02, nG3, $02, nRst, $0A
	dc.b	nE3, $04, nRst, $02, nE4, $04, nRst, $02, nE4, $04, nRst, $1A
	dc.b	nB2, $10, nRst, $02, nB2, $04, nRst, $0E, nC3, $22, nRst, $02
	dc.b	nB3, $16, nRst, $02, nBb3, $3A, nRst, $02, nBb3, $04, nRst, $14
	dc.b	nF3, $22, nRst, $02, nF4, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b	nEb4, $04, nRst, $02, nF4, $04, nRst, $1A, nAb3, $16, nRst, $02
	dc.b	nG3, $04, nRst, $14, nG3, $10, nRst, $02, nG3, $02, nRst, $0A
	dc.b	nE3, $04, nRst, $02, nE4, $04, nRst, $02, nE4, $04, nRst, $1A
	dc.b	nB2, $10, nRst, $02, nB2, $04, nRst, $0E, nC3, $22, nRst, $02
	dc.b	nB3, $16, nRst, $02, nBb3, $3A, nRst, $02, nBb3, $04, nRst, $14
	dc.b	nF3, $22, nRst, $02, nF4, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b	nEb4, $04, nRst, $02, nF4, $04, nRst, $1A, nAb3, $16, nRst, $0E
	dc.b	nE3, $04, nRst, $02, nF3, $0A, nRst, $02, nE3, $04, nRst, $02
	dc.b	nF3, $22, nRst, $02, nBb3, $16, nRst, $02, nC4, $10, nRst, $02
	dc.b	nBb3, $04, nRst, $0E, nBb3, $0A, nRst, $02, nAb3, $10, nRst, $02
	dc.b	nBb3, $10, nRst, $02, nC4, $0A, nRst, $0E, nC3, $04, nRst, $02
	dc.b	nEb3, $0A, nRst, $02, nC3, $04, nRst, $02, nEb3, $24, nAb3, $16
	dc.b	nRst, $02, nC4, $10, nRst, $02, nC4, $04, nRst, $0E, nF3, $2E
	dc.b	nRst, $1A, nE3, $04, nRst, $02, nF3, $0A, nRst, $02, nE3, $04
	dc.b	nRst, $02, nF3, $22, nRst, $02, nBb3, $16, nRst, $02, nC4, $10
	dc.b	nRst, $02, nBb3, $04, nRst, $0E, nBb3, $0A, nRst, $02, nAb3, $10
	dc.b	nRst, $02, nBb3, $10, nRst, $02, nC4, $0A, nRst, $0E, nEb3, $04
	dc.b	nRst, $02, nBb3, $0A, nRst, $02, nEb3, $04, nRst, $02, nBb3, $04
	dc.b	nRst, $02, nBb3, $28, nRst, $02, nG3, $04, nRst, $02, nF3, $04
	dc.b	nRst, $08, nF3, $04, nRst, $08, nBb3, $04, nRst, $02, nBb3, $04
	dc.b	nRst, $08, nBb3, $04, nRst, $02, nC4, $04, nRst, $1A, nA3, $16
	dc.b	nRst, $02, nC4, $10, nRst, $02, nC4, $04, nRst, $0E, nC4, $10
	dc.b	nRst, $02, nEb3, $10, nRst, $02, nF3, $04, nRst, $08, nG3, $04
	dc.b	nRst, $08, nC4, $10, nRst, $02, nC4, $04, nRst, $0E, nC4, $10
	dc.b	nRst, $02, nA3, $04, nRst, $08, nG3, $04, nRst, $02, nA3, $0A
	dc.b	nRst, $02, nG3, $0A, nRst, $02, nF3, $10, nRst, $02, nF3, $04
	dc.b	nRst, $08, nF3, $04, nRst, $08, nBb3, $34, nRst, $08, nF3, $04
	dc.b	nRst, $02, nBb3, $04, nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nBb3, $04, nRst, $02, nD4, $04, nRst, $02, nF4, $04
	dc.b	nRst, $08, nBb4, $04, nRst, $0E, nA4, $04, nRst, $08, nBb4, $04
	dc.b	nRst, $08, nC4, $10, nRst, $02, nC4, $04, nRst, $0E, nC4, $10
	dc.b	nRst, $02, nEb3, $10, nRst, $02, nF3, $04, nRst, $08, nG3, $04
	dc.b	nRst, $08, nC4, $10, nRst, $02, nC4, $04, nRst, $0E, nC4, $10
	dc.b	nRst, $02, nA3, $04, nRst, $08, nG3, $04, nRst, $02, nA3, $0A
	dc.b	nRst, $02, nG3, $0A, nRst, $02, nF3, $10, nRst, $02, nF3, $04
	dc.b	nRst, $08, nF3, $04, nRst, $02, nD4, $04, nRst, $02, nBb3, $10
	dc.b	nRst, $02, nF4, $04, nRst, $02, nG4, $04, nRst, $02, nF4, $0A
	dc.b	nRst, $02, nEb4, $04, nRst, $02, nD4, $0A, nRst, $02, nF3, $04
	dc.b	nRst, $02, nBb3, $04, nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nBb3, $04, nRst, $02, nD4, $04, nRst, $02, nF4, $04
	dc.b	nRst, $08, nA4, $04, nRst, $02, nF4, $04, nRst, $08, nD4, $16
	dc.b	nRst, $02, nC4, $10, nRst, $02, nC4, $04, nRst, $0E, nC4, $10
	dc.b	nRst, $02, nEb3, $10, nRst, $02, nF3, $04, nRst, $08, nG3, $04
	dc.b	nRst, $08, nC4, $10, nRst, $02, nC4, $04, nRst, $0E, nC4, $10
	dc.b	nRst, $02, nA3, $04, nRst, $08, nG3, $04, nRst, $02, nA3, $0A
	dc.b	nRst, $02, nG3, $0A, nRst, $02, nF3, $10, nRst, $02, nF3, $04
	dc.b	nRst, $08, nF3, $04, nRst, $08, nBb3, $34, nRst, $08, nF3, $04
	dc.b	nRst, $02, nBb3, $04, nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nBb3, $04, nRst, $02, nD4, $04, nRst, $02, nF4, $04
	dc.b	nRst, $08, nBb4, $04, nRst, $0E, nA4, $04, nRst, $08, nBb4, $04
	dc.b	nRst, $08, nC4, $10, nRst, $02, nC4, $04, nRst, $0E, nC4, $10
	dc.b	nRst, $02, nC4, $04, nRst, $0E, nC4, $0A, nRst, $02, nC4, $0A
	dc.b	nRst, $02, nC4, $10, nRst, $02, nC4, $04, nRst, $0E, nC4, $10
	dc.b	nRst, $02, nC4, $04, nRst, $0E, nC4, $0A, nRst, $02, nC4, $0A
	dc.b	nRst, $02, nC4, $5E, nRst, $02, nC4, $2E, nRst, $08, nG3, $04
	dc.b	nRst, $08, nE3, $04, nRst, $08, nG3, $04, nRst, $02, nG3, $0A
	dc.b	nRst, $02
	smpsJump            s3p35_Jump02

; FM3 Data
s3p35_FM3:
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02

s3p35_Jump01:
	dc.b	nA0, $0A, nRst, $02, nE1, $04, nRst, $02, nA1, $0A, nRst, $02
	dc.b	nE1, $04, nRst, $02, nA1, $04, nRst, $02, nE1, $04, nRst, $02
	dc.b	nA0, $0A, nRst, $02, nE1, $04, nRst, $02, nA1, $0A, nRst, $02
	dc.b	nE1, $04, nRst, $02, nA1, $0A, nRst, $02, nA0, $0A, nRst, $02
	dc.b	nE1, $04, nRst, $02, nA1, $0A, nRst, $02, nE1, $04, nRst, $02
	dc.b	nA1, $04, nRst, $02, nE1, $04, nRst, $02, nA0, $0A, nRst, $02
	dc.b	nE1, $04, nRst, $02, nA1, $0A, nRst, $02, nE1, $04, nRst, $02
	dc.b	nA1, $0A, nRst, $02, nAb0, $0A, nRst, $02, nEb1, $04, nRst, $02
	dc.b	nAb1, $0A, nRst, $02, nEb1, $04, nRst, $02, nAb1, $04, nRst, $02
	dc.b	nEb1, $04, nRst, $02, nAb0, $0A, nRst, $02, nEb1, $04, nRst, $02
	dc.b	nAb1, $0A, nRst, $02, nEb1, $04, nRst, $02, nAb1, $0A, nRst, $02
	dc.b	nAb0, $0A, nRst, $02, nEb1, $04, nRst, $02, nAb1, $0A, nRst, $02
	dc.b	nEb1, $04, nRst, $02, nAb1, $04, nRst, $02, nEb1, $04, nRst, $02
	dc.b	nAb0, $0A, nRst, $02, nEb1, $04, nRst, $02, nAb1, $0A, nRst, $02
	dc.b	nEb1, $04, nRst, $02, nAb1, $0A, nRst, $02, nA0, $0A, nRst, $02
	dc.b	nE1, $04, nRst, $02, nA1, $0A, nRst, $02, nE1, $04, nRst, $02
	dc.b	nA1, $04, nRst, $02, nE1, $04, nRst, $02, nA0, $0A, nRst, $02
	dc.b	nE1, $04, nRst, $02, nA1, $0A, nRst, $02, nE1, $04, nRst, $02
	dc.b	nA1, $0A, nRst, $02, nA0, $0A, nRst, $02, nE1, $04, nRst, $02
	dc.b	nA1, $0A, nRst, $02, nE1, $04, nRst, $02, nA1, $04, nRst, $02
	dc.b	nE1, $04, nRst, $02, nA0, $0A, nRst, $02, nE1, $04, nRst, $02
	dc.b	nA1, $0A, nRst, $02, nE1, $04, nRst, $02, nA1, $0A, nRst, $02
	dc.b	nAb0, $0A, nRst, $02, nEb1, $04, nRst, $02, nAb1, $0A, nRst, $02
	dc.b	nEb1, $04, nRst, $02, nAb1, $04, nRst, $02, nEb1, $04, nRst, $02
	dc.b	nAb0, $0A, nRst, $02, nEb1, $04, nRst, $02, nAb1, $0A, nRst, $02
	dc.b	nEb1, $04, nRst, $02, nAb1, $0A, nRst, $02, nAb0, $0A, nRst, $02
	dc.b	nEb1, $04, nRst, $02, nAb1, $0A, nRst, $02, nEb1, $04, nRst, $02
	dc.b	nAb1, $04, nRst, $02, nEb1, $04, nRst, $02, nAb0, $0A, nRst, $02
	dc.b	nEb1, $04, nRst, $02, nAb1, $0A, nRst, $02, nEb1, $04, nRst, $02
	dc.b	nAb1, $0A, nRst, $02, nD1, $0A, nRst, $02, nD1, $04, nRst, $02
	dc.b	nD1, $0A, nRst, $02, nD1, $04, nRst, $02, nD1, $10, nRst, $02
	dc.b	nD2, $0A, nRst, $02, nD1, $04, nRst, $02, nD1, $0A, nRst, $02
	dc.b	nD1, $04, nRst, $02, nD1, $04, nRst, $02, nCs1, $0A, nRst, $02
	dc.b	nCs1, $04, nRst, $02, nCs1, $0A, nRst, $02, nCs1, $04, nRst, $02
	dc.b	nCs1, $10, nRst, $02, nCs1, $0A, nRst, $02, nCs1, $04, nRst, $02
	dc.b	nCs1, $0A, nRst, $02, nCs1, $04, nRst, $02, nCs1, $04, nRst, $02
	dc.b	nC1, $0A, nRst, $02, nC1, $04, nRst, $02, nC1, $0A, nRst, $02
	dc.b	nC1, $04, nRst, $02, nC1, $10, nRst, $02, nC2, $0A, nRst, $02
	dc.b	nC1, $04, nRst, $02, nC1, $0A, nRst, $02, nC1, $04, nRst, $02
	dc.b	nC1, $04, nRst, $02, nCs1, $0A, nRst, $02, nCs1, $04, nRst, $02
	dc.b	nCs1, $0A, nRst, $02, nCs1, $04, nRst, $02, nCs1, $10, nRst, $02
	dc.b	nCs1, $0A, nRst, $02, nCs1, $04, nRst, $02, nCs1, $0A, nRst, $02
	dc.b	nCs1, $04, nRst, $02, nCs1, $04, nRst, $02, nD1, $0A, nRst, $02
	dc.b	nD1, $04, nRst, $02, nD1, $0A, nRst, $02, nD1, $04, nRst, $02
	dc.b	nD1, $10, nRst, $02, nD2, $0A, nRst, $02, nD1, $04, nRst, $02
	dc.b	nD1, $0A, nRst, $02, nD1, $04, nRst, $02, nD1, $04, nRst, $02
	dc.b	nCs1, $0A, nRst, $02, nCs1, $04, nRst, $02, nCs1, $0A, nRst, $02
	dc.b	nCs1, $04, nRst, $02, nCs1, $10, nRst, $02, nCs1, $0A, nRst, $02
	dc.b	nCs1, $04, nRst, $02, nCs1, $0A, nRst, $02, nCs1, $04, nRst, $02
	dc.b	nCs1, $04, nRst, $02, nC1, $0A, nRst, $02, nC2, $04, nRst, $02
	dc.b	nC1, $0A, nRst, $02, nC1, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b	nC1, $04, nRst, $08, nEb2, $04, nRst, $02, nCs2, $04, nRst, $02
	dc.b	nC2, $04, nRst, $02, nBb1, $04, nRst, $02, nAb1, $04, nRst, $02
	dc.b	nG1, $04, nRst, $02, nFs1, $04, nRst, $08, nFs1, $04, nRst, $08
	dc.b	nFs1, $04, nRst, $02, nFs1, $04, nRst, $08, nFs1, $04, nRst, $02
	dc.b	nAb1, $04, nRst, $1A, nF1, $16, nRst, $02, nEb1, $04, nRst, $02
	dc.b	nEb1, $04, nRst, $08, nEb2, $0A, nRst, $02, nD2, $04, nRst, $02
	dc.b	nEb2, $10, nRst, $08, nEb1, $04, nRst, $02, nEb1, $04, nRst, $02
	dc.b	nBb1, $04, nRst, $02, nBb1, $04, nRst, $02, nEb1, $04, nRst, $02
	dc.b	nEb1, $04, nRst, $02, nEb1, $04, nRst, $02, nEb1, $04, nRst, $08
	dc.b	nEb2, $0A, nRst, $02, nD2, $04, nRst, $02, nEb2, $10, nRst, $08
	dc.b	nEb1, $04, nRst, $02, nEb1, $04, nRst, $02, nBb1, $04, nRst, $02
	dc.b	nBb1, $04, nRst, $02, nEb1, $04, nRst, $02, nEb1, $04, nRst, $02
	dc.b	nD1, $04, nRst, $02, nD1, $04, nRst, $08, nD2, $0A, nRst, $02
	dc.b	nC2, $04, nRst, $02, nD2, $10, nRst, $08, nD1, $04, nRst, $02
	dc.b	nD1, $04, nRst, $02, nD2, $04, nRst, $02, nD2, $04, nRst, $02
	dc.b	nD1, $04, nRst, $02, nD1, $04, nRst, $02, nD1, $04, nRst, $02
	dc.b	nD1, $04, nRst, $08, nD2, $0A, nRst, $02, nC2, $04, nRst, $02
	dc.b	nD2, $10, nRst, $08, nD1, $04, nRst, $02, nD1, $04, nRst, $02
	dc.b	nD2, $04, nRst, $02, nD2, $04, nRst, $02, nD1, $04, nRst, $02
	dc.b	nD1, $04, nRst, $02, nEb1, $04, nRst, $02, nEb1, $04, nRst, $08
	dc.b	nEb2, $0A, nRst, $02, nD2, $04, nRst, $02, nEb2, $10, nRst, $08
	dc.b	nEb1, $04, nRst, $02, nEb1, $04, nRst, $02, nBb1, $04, nRst, $02
	dc.b	nBb1, $04, nRst, $02, nEb1, $04, nRst, $02, nEb1, $04, nRst, $02
	dc.b	nEb1, $04, nRst, $02, nEb1, $04, nRst, $08, nEb2, $0A, nRst, $02
	dc.b	nD2, $04, nRst, $02, nEb2, $10, nRst, $08, nEb1, $04, nRst, $02
	dc.b	nEb1, $04, nRst, $02, nBb1, $04, nRst, $02, nBb1, $04, nRst, $02
	dc.b	nEb1, $04, nRst, $02, nEb1, $04, nRst, $02, nD1, $04, nRst, $02
	dc.b	nD1, $04, nRst, $08, nD2, $0A, nRst, $02, nC2, $04, nRst, $02
	dc.b	nD2, $10, nRst, $08, nD1, $04, nRst, $02, nD1, $04, nRst, $02
	dc.b	nD2, $04, nRst, $02, nD2, $04, nRst, $02, nD1, $04, nRst, $02
	dc.b	nD1, $04, nRst, $02, nD1, $04, nRst, $02, nD1, $04, nRst, $08
	dc.b	nD2, $0A, nRst, $02, nC2, $04, nRst, $02, nD2, $10, nRst, $08
	dc.b	nD1, $04, nRst, $02, nD1, $04, nRst, $02, nD2, $04, nRst, $02
	dc.b	nD2, $04, nRst, $02, nD1, $04, nRst, $02, nD1, $04, nRst, $02
	dc.b	nEb1, $04, nRst, $02, nEb1, $04, nRst, $08, nEb2, $0A, nRst, $02
	dc.b	nD2, $04, nRst, $02, nEb2, $10, nRst, $08, nEb1, $04, nRst, $02
	dc.b	nEb1, $04, nRst, $02, nBb1, $04, nRst, $02, nBb1, $04, nRst, $02
	dc.b	nEb1, $04, nRst, $02, nEb1, $04, nRst, $02, nEb1, $04, nRst, $02
	dc.b	nEb1, $04, nRst, $08, nEb2, $0A, nRst, $02, nD2, $04, nRst, $02
	dc.b	nEb2, $10, nRst, $08, nEb1, $04, nRst, $02, nEb1, $04, nRst, $02
	dc.b	nBb1, $04, nRst, $02, nBb1, $04, nRst, $02, nEb1, $04, nRst, $02
	dc.b	nEb1, $04, nRst, $02, nD1, $04, nRst, $02, nD1, $04, nRst, $08
	dc.b	nD2, $0A, nRst, $02, nC2, $04, nRst, $02, nD2, $10, nRst, $08
	dc.b	nD1, $04, nRst, $02, nD1, $04, nRst, $02, nD2, $04, nRst, $02
	dc.b	nD2, $04, nRst, $02, nD1, $04, nRst, $02, nD1, $04, nRst, $02
	dc.b	nD1, $04, nRst, $02, nD1, $04, nRst, $08, nD2, $0A, nRst, $02
	dc.b	nC2, $04, nRst, $02, nD2, $10, nRst, $08, nD1, $04, nRst, $02
	dc.b	nD1, $04, nRst, $02, nD2, $04, nRst, $02, nD2, $04, nRst, $02
	dc.b	nD1, $04, nRst, $02, nD1, $04, nRst, $02, nCs1, $04, nRst, $02
	dc.b	nCs1, $04, nRst, $08, nCs2, $0A, nRst, $02, nC2, $04, nRst, $02
	dc.b	nCs2, $10, nRst, $08, nCs1, $04, nRst, $02, nCs1, $04, nRst, $02
	dc.b	nCs2, $04, nRst, $02, nCs2, $04, nRst, $02, nCs1, $04, nRst, $02
	dc.b	nCs1, $04, nRst, $02, nCs1, $04, nRst, $02, nCs1, $04, nRst, $08
	dc.b	nCs2, $0A, nRst, $02, nC2, $04, nRst, $02, nCs2, $10, nRst, $08
	dc.b	nCs1, $04, nRst, $02, nCs1, $04, nRst, $02, nCs2, $04, nRst, $02
	dc.b	nCs2, $04, nRst, $02, nCs1, $04, nRst, $02, nCs1, $04, nRst, $02
	dc.b	nC1, $04, nRst, $08, nC1, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b	nC1, $04, nRst, $08, nC1, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b	nC1, $04, nRst, $08, nC1, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b	nC1, $04, nRst, $08, nC1, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b	nC1, $04, nRst, $08, nC1, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b	nC1, $04, nRst, $08, nC1, $04, nRst, $02, nC2, $04, nRst, $08
	dc.b	nC1, $04, nRst, $08, nC1, $04, nRst, $02, nC1, $04, nRst, $02
	dc.b	nC1, $04, nRst, $02, nG1, $04, nRst, $02, nC2, $04, nRst, $02
	smpsJump            s3p35_Jump01

; FM4 Data
s3p35_FM4:
	smpsSetvoice        $0C
	smpsDetune          $02
	smpsModSet          $0F, $01, $07, $07

s3p35_Jump00:
	dc.b	nC4, $04, nRst, $14, nB3, $10, nRst, $02, nC4, $04, nRst, $0E
	dc.b	nA3, $16, nRst, $02, nB3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nD4, $22, nRst, $02, nC4, $04, nRst, $02, nB3, $04, nRst, $02
	dc.b	nA3, $16, nRst, $02, nG3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b	nB3, $04, nRst, $02, nC4, $04, nRst, $02, nD4, $34, nRst, $08
	dc.b	nD4, $04, nRst, $14, nBb3, $34, nRst, $0E, nC3, $04, nRst, $02
	dc.b	nD3, $04, nRst, $02, nEb3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nAb3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $14, nB3, $10, nRst, $02, nC4, $04, nRst, $0E
	dc.b	nA3, $16, nRst, $02, nB3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nD4, $22, nRst, $02, nC4, $04, nRst, $02, nB3, $04, nRst, $02
	dc.b	nA3, $16, nRst, $02, nG3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b	nB3, $04, nRst, $02, nC4, $04, nRst, $02, nD4, $34, nRst, $08
	dc.b	nD4, $04, nRst, $14, nBb3, $34, nRst, $0E, nC3, $04, nRst, $02
	dc.b	nD3, $04, nRst, $02, nEb3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nAb3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nC4, $52, nRst, $02, nF3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nAb3, $10, nRst, $02, nG3, $04, nRst, $0E, nG3, $0A, nRst, $02
	dc.b	nF3, $10, nRst, $02, nG3, $10, nRst, $02, nAb3, $0A, nRst, $02
	dc.b	nAb3, $22, nRst, $02, nEb3, $2E, nRst, $02, nAb3, $04, nRst, $02
	dc.b	nEb4, $04, nRst, $02, nEb4, $22, nRst, $02, nAb3, $16, nRst, $0E
	dc.b	nG3, $0A, nRst, $02, nAb3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nC4, $52, nRst, $02, nF3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nAb3, $10, nRst, $02, nG3, $04, nRst, $0E, nG3, $0A, nRst, $02
	dc.b	nF3, $10, nRst, $02, nG3, $10, nRst, $02, nAb3, $0A, nRst, $02
	dc.b	nBb3, $0A, nRst, $02, nBb3, $04, nRst, $02, nEb4, $0A, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nEb4, $04, nRst, $02, nEb4, $28, nRst, $02
	dc.b	nG3, $04, nRst, $02, nBb3, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b	nCs4, $04, nRst, $02, nCs4, $04, nRst, $08, nCs4, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nBb3, $02, nAb3, $02, nFs3, $02, nF3, $02
	dc.b	nEb3, $02, nCs3, $02, nC3, $02, nBb2, $02, nAb2, $02, nFs2, $02
	dc.b	nF2, $02, nEb2, $02, nEb3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nA3, $04, nRst, $02, nBb3, $10, nRst, $02
	dc.b	nA3, $04, nRst, $0E, nBb3, $10, nRst, $02, nG3, $10, nRst, $02
	dc.b	nA3, $04, nRst, $08, nBb3, $04, nRst, $08, nBb3, $10, nRst, $02
	dc.b	nA3, $04, nRst, $0E, nBb3, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b	nBb3, $04, nRst, $02, nC4, $0A, nRst, $02, nBb3, $0A, nRst, $02
	dc.b	nBb3, $28, nRst, $02, nF3, $34, nRst, $38, nBb4, $04, nRst, $0E
	dc.b	nA4, $04, nRst, $08, nBb4, $04, nRst, $08, nBb3, $10, nRst, $02
	dc.b	nA3, $04, nRst, $0E, nBb3, $10, nRst, $02, nG3, $10, nRst, $02
	dc.b	nA3, $04, nRst, $08, nBb3, $04, nRst, $08, nBb3, $0A, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nA3, $04, nRst, $08, nA3, $04, nRst, $02
	dc.b	nBb3, $10, nRst, $02, nC4, $04, nRst, $08, nBb3, $04, nRst, $02
	dc.b	nC4, $0A, nRst, $02, nBb3, $0A, nRst, $02, nBb3, $1C, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nF4, $04, nRst, $02, nD4, $10, nRst, $02
	dc.b	nD4, $04, nRst, $02, nEb4, $04, nRst, $02, nD4, $0A, nRst, $02
	dc.b	nC4, $04, nRst, $02, nBb3, $34, nRst, $08, nC4, $04, nRst, $02
	dc.b	nBb3, $0A, nRst, $02, nF3, $16, nRst, $02, nBb3, $10, nRst, $02
	dc.b	nA3, $04, nRst, $0E, nBb3, $10, nRst, $02, nG3, $10, nRst, $02
	dc.b	nA3, $04, nRst, $08, nBb3, $04, nRst, $08, nBb3, $10, nRst, $02
	dc.b	nA3, $04, nRst, $0E, nBb3, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b	nBb3, $04, nRst, $02, nC4, $0A, nRst, $02, nBb3, $0A, nRst, $02
	dc.b	nBb3, $28, nRst, $02, nF3, $34, nRst, $38, nBb4, $04, nRst, $0E
	dc.b	nA4, $04, nRst, $08, nBb4, $04, nRst, $08, nBb3, $0A, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nAb3, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b	nBb3, $10, nRst, $02, nBb3, $04, nRst, $0E, nEb3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nG3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b	nBb3, $0A, nRst, $02, nBb3, $04, nRst, $02, nAb3, $04, nRst, $08
	dc.b	nAb3, $04, nRst, $02, nBb3, $10, nRst, $02, nBb3, $04, nRst, $08
	dc.b	nF3, $04, nRst, $02, nG3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nC4, $04, nRst, $02, nG3, $60, $2E, nRst
	dc.b	$08, nBb3, $04, nRst, $08, nG3, $04, nRst, $08, nBb3, $04, nRst
	dc.b	$02, nC4, $0A, nRst, $02
	smpsJump            s3p35_Jump00

; FM5 Data
s3p35_FM5:
	dc.b	nRst, $08
	smpsSetvoice        $0C
	smpsDetune          $FE
	smpsModSet          $0F, $01, $07, $07
	smpsJump            s3p35_Jump00

; PSG1 Data
s3p35_PSG1:
	smpsPSGvoice        sTone_04
	smpsDetune          $FF

s3p35_Jump06:
	dc.b	nRst, $60, nRst, nRst, $24, nBb3, $04, nRst, $02, nC4, $04, nRst
	dc.b	$02, nD4, $34, nRst, $08, nD4, $04, nRst, $14, nBb3, $34, nRst
	dc.b	$60, nRst, nRst, $2C, nBb3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nD4, $34, nRst, $08, nD4, $04, nRst, $14, nBb3, $34, nRst, $14
	dc.b	nE4, $04, nRst, $02, nF4, $0A, nRst, $02, nE4, $04, nRst, $02
	dc.b	nF4, $10, nRst, $02, nF3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $1A, nC4, $10, nRst, $02, nBb3, $04, nRst, $0E
	dc.b	nBb3, $0A, nRst, $02, nAb3, $10, nRst, $02, nBb3, $10, nRst, $02
	dc.b	nC4, $0A, nRst, $0E, nEb4, $04, nRst, $02, nAb4, $0A, nRst, $02
	dc.b	nEb4, $04, nRst, $02, nAb4, $10, nRst, $02, nEb4, $04, nRst, $02
	dc.b	nEb4, $04, nRst, $02, nEb4, $04, nRst, $1A, nC4, $10, nRst, $02
	dc.b	nC4, $04, nRst, $0E, nF3, $10, nRst, $02, nF3, $04, nRst, $02
	dc.b	nF4, $04, nRst, $02, nF3, $04, nRst, $08, nF3, $04, nRst, $02
	dc.b	nF4, $04, nRst, $14, nE4, $04, nRst, $02, nF4, $0A, nRst, $02
	dc.b	nE4, $04, nRst, $02, nF4, $10, nRst, $02, nF3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nF3, $04, nRst, $1A, nC4, $10, nRst, $02
	dc.b	nBb3, $04, nRst, $0E, nBb3, $0A, nRst, $02, nAb3, $10, nRst, $02
	dc.b	nBb3, $10, nRst, $02, nC4, $0A, nRst, $0E, nEb4, $04, nRst, $02
	dc.b	nBb4, $0A, nRst, $02, nEb4, $04, nRst, $02, nBb4, $10, nRst, $02
	dc.b	nEb4, $04, nRst, $02, nEb4, $04, nRst, $02, nEb4, $04, nRst, $20
	dc.b	nBb3, $04, nRst, $08, nCs4, $04, nRst, $02, nCs4, $04, nRst, $08
	dc.b	nCs4, $04, nRst, $02, nC4, $04, nRst, $32
	smpsPSGvoice        sTone_0A
	dc.b	nF4, $04, nRst, $08, nF5, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF5, $04, nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF4, $04, nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b	nF4, $04, nRst, $08, nF4, $04, nRst, $02, nF5, $04, nRst, $02
	dc.b	nF4, $04, nRst, $08, nF5, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF5, $04, nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF4, $04, nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b	nF4, $04, nRst, $08, nF4, $04, nRst, $02, nF5, $04, nRst, $02
	dc.b	nF4, $04, nRst, $08, nF5, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF5, $04, nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF4, $04, nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b	nF4, $04, nRst, $08, nF4, $04, nRst, $02, nF5, $04, nRst, $02
	dc.b	nF4, $04, nRst, $08, nF5, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF5, $04, nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF4, $04, nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b	nF4, $04, nRst, $08, nF4, $04, nRst, $02, nF5, $04, nRst, $02
	dc.b	nF4, $04, nRst, $08, nF5, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF5, $04, nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF4, $04, nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b	nF4, $04, nRst, $08, nF4, $04, nRst, $02, nF5, $04, nRst, $02
	dc.b	nF4, $04, nRst, $08, nF5, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF5, $04, nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF4, $04, nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b	nF4, $04, nRst, $08, nF4, $04, nRst, $02, nF5, $04, nRst, $02
	dc.b	nF4, $04, nRst, $08, nF5, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF5, $04, nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF4, $04, nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b	nF4, $04, nRst, $08, nF4, $04, nRst, $02, nF5, $04, nRst, $02
	dc.b	nF4, $04, nRst, $08, nF5, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF5, $04, nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $26
	dc.b	nF4, $04, nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF5, $04, nRst, $02, nF4, $04, nRst, $08, nF5, $04, nRst, $02
	dc.b	nF5, $04, nRst, $02, nF4, $04, nRst, $08, nF4, $04, nRst, $02
	dc.b	nF5, $04, nRst, $02, nF4, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF4, $04, nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF5, $04, nRst, $02, nF4, $04, nRst, $08, nF5, $04, nRst, $02
	dc.b	nF5, $04, nRst, $02, nF4, $04, nRst, $08, nF4, $04, nRst, $02
	dc.b	nF5, $04, nRst, $02, nF4, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF4, $04, nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF5, $04, nRst, $02, nF4, $04, nRst, $08, nF5, $04, nRst, $02
	dc.b	nF5, $04, nRst, $02, nF4, $04, nRst, $08, nF4, $04, nRst, $02
	dc.b	nF5, $04, nRst, $02, nF4, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF4, $04, nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF5, $04, nRst, $02, nF4, $04, nRst, $08, nF5, $04, nRst, $02
	dc.b	nF5, $04, nRst, $02, nF4, $04, nRst, $08, nF4, $04, nRst, $02
	dc.b	nF5, $04, nRst, $02, nF4, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF4, $04, nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF5, $04, nRst, $02, nF4, $04, nRst, $08, nF5, $04, nRst, $02
	dc.b	nF5, $04, nRst, $02, nF4, $04, nRst, $08, nF4, $04, nRst, $02
	dc.b	nF5, $04, nRst, $02, nF4, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF4, $04, nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF5, $04, nRst, $02, nF4, $04, nRst, $08, nF5, $04, nRst, $02
	dc.b	nF5, $04, nRst, $02, nF4, $04, nRst, $08, nF4, $04, nRst, $02
	dc.b	nF5, $04, nRst, $02, nF4, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF4, $04, nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF5, $04, nRst, $02, nF4, $04, nRst, $08, nF5, $04, nRst, $02
	dc.b	nF5, $04, nRst, $02, nF4, $04, nRst, $08, nF4, $04, nRst, $02
	dc.b	nF5, $04, nRst, $02, nF4, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF4, $04, nRst, $02, nF5, $04, nRst, $02, nE4, $04, nRst, $08
	dc.b	nE5, $04, nRst, $02, nE4, $04, nRst, $08, nE5, $04, nRst, $02
	dc.b	nE5, $04, nRst, $02, nE4, $04, nRst, $32
	smpsJump            s3p35_Jump06

; PSG2 Data
s3p35_PSG2:
	smpsPSGvoice        sTone_04

s3p35_Jump05:
	dc.b	nRst, $60, nRst, nRst, $24, nBb3, $04, nRst, $02, nC4, $04, nRst
	dc.b	$02, nD4, $34, nRst, $08, nD4, $04, nRst, $14, nBb3, $34, nRst
	dc.b	$60, nRst, nRst, $2C, nBb3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nD4, $34, nRst, $08, nD4, $04, nRst, $14, nBb3, $34, nRst, $14
	dc.b	nE4, $04, nRst, $02, nF4, $0A, nRst, $02, nE4, $04, nRst, $02
	dc.b	nF4, $10, nRst, $02, nF3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $1A, nC4, $10, nRst, $02, nBb3, $04, nRst, $0E
	dc.b	nBb3, $0A, nRst, $02, nAb3, $10, nRst, $02, nBb3, $10, nRst, $02
	dc.b	nC4, $0A, nRst, $0E, nEb4, $04, nRst, $02, nAb4, $0A, nRst, $02
	dc.b	nEb4, $04, nRst, $02, nAb4, $10, nRst, $02, nEb4, $04, nRst, $02
	dc.b	nEb4, $04, nRst, $02, nEb4, $04, nRst, $1A, nC4, $10, nRst, $02
	dc.b	nC4, $04, nRst, $0E, nF3, $10, nRst, $02, nF3, $04, nRst, $02
	dc.b	nF4, $04, nRst, $02, nF3, $04, nRst, $08, nF3, $04, nRst, $02
	dc.b	nF4, $04, nRst, $14, nE4, $04, nRst, $02, nF4, $0A, nRst, $02
	dc.b	nE4, $04, nRst, $02, nF4, $10, nRst, $02, nF3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nF3, $04, nRst, $1A, nC4, $10, nRst, $02
	dc.b	nBb3, $04, nRst, $0E, nBb3, $0A, nRst, $02, nAb3, $10, nRst, $02
	dc.b	nBb3, $10, nRst, $02, nC4, $0A, nRst, $0E, nEb4, $04, nRst, $02
	dc.b	nBb4, $0A, nRst, $02, nEb4, $04, nRst, $02, nBb4, $10, nRst, $02
	dc.b	nEb4, $04, nRst, $02, nEb4, $04, nRst, $02, nEb4, $04, nRst, $20
	dc.b	nBb3, $04, nRst, $08, nCs4, $04, nRst, $02, nCs4, $04, nRst, $08
	dc.b	nCs4, $04, nRst, $02, nC4, $04, nRst, $32
	smpsPSGvoice        sTone_0A
	dc.b	nBb3, $04, nRst, $08, nBb3, $04, nRst, $02, nA3, $04, nRst, $08
	dc.b	nA3, $04, nRst, $02, nBb3, $04, nRst, $38, nBb3, $04, nRst, $08
	dc.b	nBb3, $04, nRst, $02, nA3, $04, nRst, $08, nA3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $38, nD4, $04, nRst, $08, nC4, $04, nRst, $02
	dc.b	nD4, $04, nRst, $08, nC4, $04, nRst, $08, nD4, $04, nRst, $08
	dc.b	nD4, $04, nRst, $02, nEb4, $04, nRst, $08, nF4, $04, nRst, $08
	dc.b	nBb4, $04, nRst, $02, nF4, $04, nRst, $60, nRst, $02, nBb3, $04
	dc.b	nRst, $08, nBb3, $04, nRst, $02, nA3, $04, nRst, $08, nA3, $04
	dc.b	nRst, $02, nBb3, $04, nRst, $38, nBb3, $04, nRst, $08, nBb3, $04
	dc.b	nRst, $02, nA3, $04, nRst, $08, nA3, $04, nRst, $02, nBb3, $04
	dc.b	nRst, $38, nD4, $04, nRst, $08, nC4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $08, nBb3, $04, nRst, $02, nF4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $60, nRst, $1A, nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nC4, $04, nRst, $02, nD4, $0A, nRst, $02
	dc.b	nEb4, $04, nRst, $02, nF4, $04, nRst, $0E, nF4, $10, nRst, $02
	dc.b	nG4, $10, nRst, $02, nA4, $04, nRst, $08, nBb4, $04, nRst, $08
	dc.b	nC5, $0A, nRst, $02, nC5, $04, nRst, $02, nA4, $04, nRst, $08
	dc.b	nA4, $04, nRst, $02, nBb4, $10, nRst, $02, nC5, $04, nRst, $08
	dc.b	nBb4, $04, nRst, $02, nA4, $0A, nRst, $02, nG4, $0A, nRst, $02
	dc.b	nF4, $04, nRst, $08, nD4, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nD4, $0A, nRst, $02, nF4, $04, nRst, $08, nD4, $04, nRst, $02
	dc.b	nEb4, $04, nRst, $08, nF4, $04, nRst, $08, nBb4, $04, nRst, $02
	dc.b	nF4, $04, nRst, $38, nBb4, $10, nRst, $02, nC5, $0A, nRst, $02
	dc.b	nD5, $0A, nRst, $02, nEb5, $0A, nRst, $02, nC5, $04, nRst, $02
	dc.b	nAb4, $0A, nRst, $02, nF4, $04, nRst, $02, nBb4, $10, nRst, $02
	dc.b	nBb4, $04, nRst, $0E, nC5, $0A, nRst, $02, nEb5, $0A, nRst, $02
	dc.b	nF5, nG5, $08, nRst, $02, nEb5, $04, nRst, $02, nC5, $0A, nRst
	dc.b	$02, nAb4, $04, nRst, $02, nF4, $10, nRst, $02, nF4, $04, nRst
	dc.b	$1A, nBb3, $04, nRst, $02, nF3, $04, nRst, $02, nC3, $04, nRst
	dc.b	$02, nD3, $04, nRst, $02, nF3, $04, nRst, $02, nG3, $04, nRst
	dc.b	$02, nD3, $04, nRst, $02, nF3, $04, nRst, $02, nG3, $04, nRst
	dc.b	$02, nC4, $04, nRst, $02, nF3, $04, nRst, $02, nG3, $04, nRst
	dc.b	$02, nC4, $04, nRst, $02, nD4, $04, nRst, $02, nG3, $04, nRst
	dc.b	$02, nC4, $04, nRst, $02, nD4, $04, nRst, $02, nF4, $04, nRst
	dc.b	$02, nC3, $04, nRst, $02, nD3, $04, nRst, $02, nE3, $04, nRst
	dc.b	$02, nG3, $04, nRst, $02, nD3, $04, nRst, $02, nE3, $04, nRst
	dc.b	$02, nG3, $04, nRst, $02, nC4, $04, nRst, $32
	smpsJump            s3p35_Jump05

; PSG3 Data
s3p35_PSG3:
	smpsPSGvoice        sTone_02
	smpsPSGform         $E7

s3p35_Jump04:
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
	dc.b	nMaxPSG1, $60, $06
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
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $1E
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
	dc.b	nMaxPSG1, $36
	smpsJump            s3p35_Jump04

s3p35_Voices:
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

