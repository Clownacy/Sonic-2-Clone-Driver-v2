s3p34_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     s3p34_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $23

	smpsHeaderDAC       s3p34_DAC
	smpsHeaderFM        s3p34_FM1,	$00, $14
	smpsHeaderFM        s3p34_FM2,	$00, $14
	smpsHeaderFM        s3p34_FM3,	$18, $0F
	smpsHeaderFM        s3p34_FM4,	$0C, $16
	smpsHeaderFM        s3p34_FM5,	$0C, $16
	smpsHeaderPSG       s3p34_PSG1,	$F4, $05, $00, sTone_0C
	smpsHeaderPSG       s3p34_PSG2,	$F4, $05, $00, sTone_0C
	smpsHeaderPSG       s3p34_PSG3,	$00, $01, $00, sTone_0C

; DAC Data
s3p34_DAC:
	dc.b	dSnareS3, $18, dSnareS3, $18, dSnareS3, $18, dSnareS3, $18, dKickS3, $12, dKickS3, $06
	dc.b	dSnareS3, $0C, dKickS3, $0C, dKickS3, $12, dKickS3, $06, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $18, dSnareS3, $18, dKickS3, $06, dSnareS3, $12, dSnareS3, $0C, dSnareS3, $06
	dc.b	dSnareS3, $06, dKickS3, $12, dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dKickS3, $12
	dc.b	dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $18, dSnareS3, $18, dSnareS3, $18
	dc.b	dSnareS3, $18, dKickS3, $12, dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dKickS3, $12
	dc.b	dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $18, dSnareS3, $18, dKickS3, $06
	dc.b	dSnareS3, $12, dSnareS3, $0C, dSnareS3, $06, dSnareS3, $06, dKickS3, $12, dKickS3, $06
	dc.b	dSnareS3, $0C, dKickS3, $0C, dKickS3, $12, dKickS3, $06, dSnareS3, $06, dSnareS3, $06
	dc.b	dSnareS3, $06, dSnareS3, $06, dKickS3, $18, dSnareS3, $12, dKickS3, $06, dKickS3, $18
	dc.b	dSnareS3, $18, dKickS3, $18, dSnareS3, $12, dKickS3, $06, dKickS3, $18, dSnareS3, $18
	dc.b	dKickS3, $18, dSnareS3, $12, dKickS3, $06, dKickS3, $18, dSnareS3, $18, dKickS3, $18
	dc.b	dSnareS3, $12, dKickS3, $06, dKickS3, $18, dSnareS3, $0C, dSnareS3, $0C, dKickS3, $18
	dc.b	dSnareS3, $12, dKickS3, $06, dKickS3, $18, dSnareS3, $18, dKickS3, $18, dSnareS3, $12
	dc.b	dKickS3, $06, dKickS3, $18, dSnareS3, $18, dKickS3, $18, dSnareS3, $12, dKickS3, $06
	dc.b	dKickS3, $18, dSnareS3, $18, dKickS3, $18, dSnareS3, $12, dKickS3, $06, dKickS3, $06
	dc.b	dSnareS3, $0C, dSnareS3, $06, dSnareS3, $0C, dSnareS3, $06, dSnareS3, $06, dKickS3, $18
	dc.b	dSnareS3, $12, dKickS3, $06, dKickS3, $18, dSnareS3, $18, dKickS3, $18, dSnareS3, $12
	dc.b	dKickS3, $06, dKickS3, $18, dSnareS3, $18, dKickS3, $18, dSnareS3, $12, dKickS3, $06
	dc.b	dKickS3, $18, dSnareS3, $0C, dSnareS3, $0C, dSnareS3, $18, dSnareS3, $18, dSnareS3, $18
	dc.b	dSnareS3, $0C, dSnareS3, $0C, dKickS3, $18, dSnareS3, $12, dKickS3, $06, dKickS3, $18
	dc.b	dSnareS3, $18, dKickS3, $18, dSnareS3, $12, dKickS3, $06, dKickS3, $18, dSnareS3, $18
	dc.b	dSnareS3, $06, dKickS3, $06, dSnareS3, $06, dSnareS3, $06, nRst, $0C, dSnareS3, $06
	dc.b	dKickS3, $06, dKickS3, $0C, dSnareS3, $06, dKickS3, $06, dSnareS3, $06, dSnareS3, $0C
	dc.b	dKickS3, $06, dSnareS3, $06, dSnareS3, $0C, dSnareS3, $06, nRst, $06, dKickS3, $06
	dc.b	dSnareS3, $0C, nRst, $0C, dSnareS3, $06, dSnareS3, $06, dSnareS3, $06, dSnareS3, $06
	dc.b	dSnareS3, $02, nRst, $08
	smpsJump            s3p34_DAC

; FM1 Data
s3p34_FM1:
	smpsSetvoice        $19
	smpsDetune          $03
	smpsModSet          $00, $01, $03, $06
	dc.b	nC4, $10, nRst, $02, nC4, $04, nRst, $02, nRst, $06, nB3, $02
	dc.b	nRst, $04, nB3, $04, nRst, $08, nA3, $16, nRst, $02, nG3, $16
	dc.b	nRst, $02, nRst, $18, nC4, $16, nRst, $02, nD4, $16, nRst, $02
	dc.b	nB3, $16, nRst, $02, nC4, $10, nRst, $02, nC4, $04, nRst, $02
	dc.b	nRst, $06, nB3, $02, nRst, $04, nB3, $04, nRst, $08, nRst, $06
	dc.b	nA3, $10, nRst, $02, nG3, $16, nRst, $02, nRst, $18, nD4, $16
	dc.b	nRst, $02, nE4, $16, nRst, $02, nB3, $16, nRst, $02, nC4, $10
	dc.b	nRst, $02, nC4, $04, nRst, $02, nRst, $06, nB3, $02, nRst, $04
	dc.b	nB3, $04, nRst, $08, nA3, $16, nRst, $02, nG3, $16, nRst, $02
	dc.b	nRst, $18, nC4, $16, nRst, $02, nD4, $16, nRst, $02, nB3, $16
	dc.b	nRst, $02, nC4, $10, nRst, $02, nC4, $04, nRst, $02, nRst, $06
	dc.b	nB3, $02, nRst, $04, nB3, $04, nRst, $08, nRst, $06, nA3, $10
	dc.b	nRst, $02, nG3, $16, nRst, $02, nRst, $18, nD4, $16, nRst, $02
	dc.b	nE4, $16, nRst, $02, nB3, $16, nRst, $02, nC2, $10, nRst, $02
	dc.b	nC2, $04, nRst, $02, nRst, $06, nG3, $04, nRst, $08, nG3, $04
	dc.b	nRst, $02, nRst, $06, nC2, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nC2, $04, nRst, $02, nRst, $06, nC2, $04, nRst, $02, nG3, $0A
	dc.b	nRst, $02, nBb1, $10, nRst, $02, nBb1, $04, nRst, $02, nRst, $06
	dc.b	nF3, $04, nRst, $08, nF3, $04, nRst, $02, nRst, $06, nBb1, $04
	dc.b	nRst, $02, nF3, $04, nRst, $02, nBb1, $04, nRst, $02, nF3, $16
	dc.b	nRst, $02, nA1, $10, nRst, $02, nA1, $04, nRst, $02, nRst, $06
	dc.b	nE3, $04, nRst, $08, nE3, $04, nRst, $02, nRst, $06, nA1, $04
	dc.b	nRst, $02, nE3, $04, nRst, $02, nA1, $04, nRst, $02, nRst, $06
	dc.b	nA1, $04, nRst, $02, nE3, $0A, nRst, $02, nRst, $06, nG2, $04
	dc.b	nRst, $02, nB2, $04, nRst, $02, nD3, $04, nRst, $02, nG3, $04
	dc.b	nRst, $02, nD3, $04, nRst, $02, nG3, $04, nRst, $02, nG3, $04
	dc.b	nRst, $02, nRst, $06, nB3, $04, nRst, $08, nB3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $08, nD4, $04, nRst, $08, nC2, $10, nRst, $02
	dc.b	nC2, $04, nRst, $02, nRst, $06, nG3, $04, nRst, $08, nG3, $04
	dc.b	nRst, $02, nRst, $06, nC2, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nC2, $04, nRst, $02, nRst, $06, nC2, $04, nRst, $02, nG3, $0A
	dc.b	nRst, $02, nBb1, $10, nRst, $02, nBb1, $04, nRst, $02, nRst, $06
	dc.b	nF3, $04, nRst, $08, nF3, $04, nRst, $02, nRst, $06, nBb1, $04
	dc.b	nRst, $02, nF3, $04, nRst, $02, nBb1, $04, nRst, $02, nF3, $16
	dc.b	nRst, $02, nA1, $10, nRst, $02, nA1, $04, nRst, $02, nRst, $06
	dc.b	nE3, $04, nRst, $08, nE3, $04, nRst, $02, nRst, $06, nA1, $04
	dc.b	nRst, $02, nE3, $04, nRst, $02, nA1, $04, nRst, $02, nRst, $06
	dc.b	nA1, $04, nRst, $02, nE3, $0A, nRst, $02, nRst, $06, nG2, $04
	dc.b	nRst, $02, nB2, $04, nRst, $02, nD3, $04, nRst, $02, nG3, $04
	dc.b	nRst, $02, nD3, $04, nRst, $02, nG3, $04, nRst, $02, nG3, $04
	dc.b	nRst, $02, nRst, $06, nB3, $04, nRst, $08, nB3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $08, nC4, $04, nRst, $08, nA3, $18, smpsNoAttack, $16
	dc.b	nRst, $02, nA3, $10, nRst, $02, nB3, $06, smpsNoAttack, $0A, nRst, $02
	dc.b	nC4, $0A, nRst, $02, nB3, $18, smpsNoAttack, $16, nRst, $02, nG3, $10
	dc.b	nRst, $02, nA3, $06, smpsNoAttack, $0A, nRst, $02, nB3, $0A, nRst, $02
	dc.b	nA3, $18, smpsNoAttack, $16, nRst, $02, nF3, $10, nRst, $02, nG3, $06
	dc.b	smpsNoAttack, $0A, nRst, $02, nA3, $0A, nRst, $02, nRst, $06, nC3, $04
	dc.b	nRst, $02, nE3, $04, nRst, $02, nG3, $04, nRst, $02, nC4, $04
	dc.b	nRst, $02, nG3, $04, nRst, $02, nC4, $04, nRst, $02, nC4, $04
	dc.b	nRst, $02, nRst, $06, nE4, $04, nRst, $08, nE4, $04, nRst, $02
	dc.b	nF4, $04, nRst, $08, nG4, $04, nRst, $08, nC4, $18, smpsNoAttack, $18
	dc.b	nC4, $12, nD4, $06, smpsNoAttack, $0A, nRst, $02, nF4, $0A, nRst, $02
	dc.b	nE4, $04, nRst, $08, nE4, $0C, smpsNoAttack, $0A, nRst, $02, nE4, $0A
	dc.b	nRst, $02, nA4, $18, smpsNoAttack, $16, nRst, $02, nRst, $0C, nB4, $06
	dc.b	nA4, $06, nB4, $06, nRst, $06, nC5, $04, nRst, $02, nB4, $06
	dc.b	nC5, $04, nRst, $08, nD5, $04, nRst, $02, nC5, $06, nD5, $04
	dc.b	nRst, $08, nE5, $06, nD5, $06, nE5, $04, nRst, $08, nF5, $04
	dc.b	nRst, $02, nE5, $06, nF5, $04, nRst, $08, nE5, $0C, smpsNoAttack, $0A
	dc.b	nRst, $02, nC5, $0C, smpsNoAttack, $16
	smpsJump            s3p34_FM1

; FM2 Data
s3p34_FM2:
	smpsSetvoice        $17
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	smpsChangeTransposition $F4
	dc.b	nE5, $18, smpsNoAttack, $16, nRst, $02, nF5, $10, nRst, $02, nF5, $04
	dc.b	nRst, $02, nG5, $16, nRst, $02, nC6, $10, nRst, $02, nB5, $06
	dc.b	smpsNoAttack, $0A, nRst, $02, nA5, $0A, nRst, $02, nG5, $10, nRst, $02
	dc.b	nE5, $06, smpsNoAttack, $0A, nRst, $02, nF5, $0A, nRst, $02, nE5, $18
	dc.b	smpsNoAttack, $16, nRst, $02, nRst, $06, nA5, $10, nRst, $02, nB5, $16
	dc.b	nRst, $02, nC6, $10, nRst, $02, nB5, $06, smpsNoAttack, $0A, nRst, $02
	dc.b	nA5, $0A, nRst, $02, nG5, $10, nRst, $02, nE5, $06, smpsNoAttack, $0A
	dc.b	nRst, $02, nG5, $0A, nRst, $02, nE5, $18, smpsNoAttack, $16, nRst, $02
	dc.b	nF5, $10, nRst, $02, nF5, $04, nRst, $02, nG5, $16, nRst, $02
	dc.b	nC6, $10, nRst, $02, nB5, $06, smpsNoAttack, $0A, nRst, $02, nA5, $0A
	dc.b	nRst, $02, nG5, $10, nRst, $02, nE5, $06, smpsNoAttack, $0A, nRst, $02
	dc.b	nF5, $0A, nRst, $02, nE5, $18, smpsNoAttack, $16, nRst, $02, nRst, $06
	dc.b	nA5, $10, nRst, $02, nB5, $16, nRst, $02, nC6, $10, nRst, $02
	dc.b	nB5, $06, smpsNoAttack, $0A, nRst, $02, nA5, $0A, nRst, $02, nG5, $10
	dc.b	nRst, $02, nE5, $06, smpsNoAttack, $0A, nRst, $02, nG5, $0A, nRst, $02
	dc.b	nE5, $18, smpsNoAttack, $04, nRst, $02
	smpsSetvoice        $19
	smpsDetune          $FD
	smpsModSet          $00, $01, $03, $06
	smpsChangeTransposition $0C
	dc.b	nE3, $04, nRst, $08, nE3, $04, nRst, $02, nRst, $0C, nE3, $04
	dc.b	nRst, $08, nRst, $0C, nE3, $0A, nRst, $02, nRst, $18, nRst, $06
	dc.b	nD3, $04, nRst, $08, nD3, $04, nRst, $02, nRst, $0C, nD3, $04
	dc.b	nRst, $08, nD3, $16, nRst, $02, nRst, $18, nRst, $06, nC3, $04
	dc.b	nRst, $08, nC3, $04, nRst, $02, nRst, $0C, nC3, $04, nRst, $08
	dc.b	nRst, $0C, nC3, $0A, nRst, $02, nRst, $18, nRst, $18, nRst, $06
	dc.b	nG3, $04, nRst, $08, nG3, $04, nRst, $02, nA3, $04, nRst, $08
	dc.b	nB3, $04, nRst, $08, nRst, $18, nRst, $06, nE3, $04, nRst, $08
	dc.b	nE3, $04, nRst, $02, nRst, $0C, nE3, $04, nRst, $08, nRst, $0C
	dc.b	nE3, $0A, nRst, $02, nRst, $18, nRst, $06, nD3, $04, nRst, $08
	dc.b	nD3, $04, nRst, $02, nRst, $0C, nD3, $04, nRst, $08, nD3, $16
	dc.b	nRst, $02, nRst, $18, nRst, $06, nC3, $04, nRst, $08, nC3, $04
	dc.b	nRst, $02, nRst, $0C, nC3, $04, nRst, $08, nRst, $0C, nC3, $0A
	dc.b	nRst, $02, nRst, $18, nRst, $18, nRst, $06, nG3, $04, nRst, $08
	dc.b	nG3, $04, nRst, $02, nA3, $04, nRst, $08, nA3, $04, nRst, $08
	dc.b	nC4, $10, nRst, $02, nC4, $04, nRst, $02, nRst, $0C, nC4, $04
	dc.b	nRst, $08, nRst, $18, nRst, $18, nG3, $10, nRst, $02, nG3, $04
	dc.b	nRst, $02, nRst, $0C, nG3, $04, nRst, $08, nRst, $18, nRst, $18
	dc.b	nF3, $10, nRst, $02, nF3, $04, nRst, $02, nRst, $0C, nF3, $04
	dc.b	nRst, $08, nRst, $18, nRst, $18, nRst, $18, nRst, $18, nRst, $06
	dc.b	nC4, $04, nRst, $08, nC4, $04, nRst, $02, nD4, $04, nRst, $08
	dc.b	nE4, $04, nRst, $08, nC4, $10, nRst, $02, nC4, $04, nRst, $02
	dc.b	nRst, $0C, nC4, $04, nRst, $08, nRst, $18, nRst, $18, nB3, $10
	dc.b	nRst, $02, nB3, $04, nRst, $02, nRst, $06, nB3, $04, nRst, $0E
	dc.b	nE4, $10, nRst, $02, nE4, $04, nRst, $02, nRst, $06, nE4, $04
	dc.b	nRst, $0E, nRst, $18, nRst, $18, nRst, $18, nRst, $18, nRst, $18
	dc.b	nRst, $18, nRst, $18, nRst, $16
	smpsJump            s3p34_FM2

; FM3 Data
s3p34_FM3:
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nA1, $04, nRst, $02, nC2, $04, nRst, $02, nA1, $04, nRst, $08
	dc.b	nG1, $04, nRst, $02, nB1, $04, nRst, $02, nG1, $04, nRst, $08
	dc.b	nF1, $04, nRst, $02, nA1, $04, nRst, $02, nF1, $04, nRst, $08
	dc.b	nE1, $04, nRst, $02, nG1, $04, nRst, $02, nE1, $04, nRst, $08
	dc.b	nD1, $10, nRst, $02, nD1, $06, smpsNoAttack, $0A, nRst, $02, nD1, $04
	dc.b	nRst, $08, nE1, $10, nRst, $02, nE1, $06, smpsNoAttack, $0A, nRst, $02
	dc.b	nE1, $04, nRst, $08, nA1, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b	nA1, $04, nRst, $08, nG1, $04, nRst, $02, nB1, $04, nRst, $02
	dc.b	nG1, $04, nRst, $08, nF1, $04, nRst, $02, nA1, $04, nRst, $02
	dc.b	nF1, $04, nRst, $08, nE1, $04, nRst, $02, nG1, $04, nRst, $02
	dc.b	nE1, $04, nRst, $08, nD1, $10, nRst, $02, nD1, $06, smpsNoAttack, $0A
	dc.b	nRst, $02, nD1, $04, nRst, $08, nE1, $10, nRst, $02, nE1, $06
	dc.b	smpsNoAttack, $0A, nRst, $02, nE1, $04, nRst, $08, nA1, $04, nRst, $02
	dc.b	nC2, $04, nRst, $02, nA1, $04, nRst, $08, nG1, $04, nRst, $02
	dc.b	nB1, $04, nRst, $02, nG1, $04, nRst, $08, nF1, $04, nRst, $02
	dc.b	nA1, $04, nRst, $02, nF1, $04, nRst, $08, nE1, $04, nRst, $02
	dc.b	nG1, $04, nRst, $02, nE1, $04, nRst, $08, nD1, $10, nRst, $02
	dc.b	nD1, $06, smpsNoAttack, $0A, nRst, $02, nD1, $04, nRst, $08, nE1, $10
	dc.b	nRst, $02, nE1, $06, smpsNoAttack, $0A, nRst, $02, nE1, $04, nRst, $08
	dc.b	nA1, $04, nRst, $02, nC2, $04, nRst, $02, nA1, $04, nRst, $08
	dc.b	nG1, $04, nRst, $02, nB1, $04, nRst, $02, nG1, $04, nRst, $08
	dc.b	nF1, $04, nRst, $02, nA1, $04, nRst, $02, nF1, $04, nRst, $08
	dc.b	nE1, $04, nRst, $02, nG1, $04, nRst, $02, nE1, $04, nRst, $08
	dc.b	nD1, $10, nRst, $02, nD1, $06, smpsNoAttack, $0A, nRst, $02, nD1, $04
	dc.b	nRst, $08, nE1, $10, nRst, $02, nE1, $06, smpsNoAttack, $0A, nRst, $02
	dc.b	nG1, $04, nRst, $08, nC2, $10, nRst, $02, nC2, $02, nRst, $04
	dc.b	nRst, $06, nG1, $04, nRst, $02, nA1, $06, nG1, $06, nC2, $10
	dc.b	nRst, $02, nC2, $02, nRst, $04, nRst, $06, nG1, $04, nRst, $02
	dc.b	nA1, $06, nC2, $06, nBb1, $10, nRst, $02, nBb1, $02, nRst, $04
	dc.b	nRst, $06, nF1, $04, nRst, $02, nG1, $06, nF1, $06, nBb1, $10
	dc.b	nRst, $02, nBb1, $02, nRst, $04, nRst, $06, nF1, $04, nRst, $02
	dc.b	nG1, $06, nBb1, $06, nA1, $10, nRst, $02, nA1, $02, nRst, $04
	dc.b	nRst, $06, nF1, $04, nRst, $02, nG1, $06, nF1, $06, nA1, $10
	dc.b	nRst, $02, nA1, $02, nRst, $04, nRst, $06, nF1, $04, nRst, $02
	dc.b	nG1, $06, nA1, $06, nG1, $04, nRst, $08, nG1, $0C, nA1, $02
	dc.b	nRst, $0A, nA1, $0A, nRst, $02, nB1, $04, nRst, $08, nB1, $0C
	dc.b	nC2, $02, nRst, $0A, nD2, $0C, nC2, $0E, nRst, $04, nC2, $04
	dc.b	nRst, $02, nRst, $06, nG1, $06, nA1, $06, nG1, $04, nRst, $02
	dc.b	nC2, $0E, nRst, $04, nC2, $04, nRst, $02, nRst, $06, nG1, $06
	dc.b	nA1, $06, nC2, $04, nRst, $02, nBb1, $10, nRst, $02, nBb1, $04
	dc.b	nRst, $02, nRst, $06, nF1, $06, nG1, $06, nF1, $06, nBb1, $10
	dc.b	nRst, $02, nBb1, $04, nRst, $02, nRst, $06, nF1, $06, nG1, $06
	dc.b	nBb1, $04, nRst, $02, nA1, $10, nRst, $02, nA1, $04, nRst, $02
	dc.b	nRst, $06, nF1, $04, nRst, $02, nG1, $06, nF1, $04, nRst, $02
	dc.b	nA1, $0E, nRst, $04, nA1, $06, nRst, $06, nF1, $06, nG1, $06
	dc.b	nA1, $04, nRst, $02, nG1, $02, nRst, $0A, nG1, $0C, nA1, $04
	dc.b	nRst, $08, nA1, $0C, nB1, $04, nRst, $08, nB1, $0C, nC2, $02
	dc.b	nRst, $0A, nD2, $0A, nRst, $02, nF1, $10, nRst, $02, nF1, $04
	dc.b	nRst, $02, nRst, $06, nC1, $06, nD1, $06, nC1, $06, nF1, $10
	dc.b	nRst, $02, nF1, $02, nRst, $04, nRst, $06, nC1, $06, nD1, $06
	dc.b	nF1, $06, nE1, $10, nRst, $02, nE1, $02, nRst, $04, nRst, $06
	dc.b	nG0, $06, nA0, $06, nG0, $06, nE1, $10, nRst, $02, nE1, $02
	dc.b	nRst, $04, nRst, $06, nG0, $06, nA0, $06, nG0, $06, nD1, $10
	dc.b	nRst, $02, nD1, $02, nRst, $04, nRst, $06, nG0, $06, nA0, $06
	dc.b	nG0, $06, nD1, $10, nRst, $02, nD1, $02, nRst, $04, nRst, $06
	dc.b	nG0, $06, nA0, $06, nG0, $06, nC1, $04, nRst, $08, nC1, $0C
	dc.b	nD1, $02, nRst, $0A, nD1, $0C, nE1, $04, nRst, $08, nE1, $0C
	dc.b	nF1, $04, nRst, $08, nG1, $0C, nF1, $10, nRst, $02, nF1, $04
	dc.b	nRst, $02, nRst, $06, nC1, $06, nD1, $06, nC1, $06, nF1, $10
	dc.b	nRst, $02, nF1, $04, nRst, $02, nRst, $06, nG1, $06, nA1, $06
	dc.b	nC2, $06, nB1, $12, nG1, $02, nRst, $04, nRst, $06, nG0, $06
	dc.b	nA0, $06, nC1, $06, nA1, $12, nE1, $02, nRst, $04, nRst, $18
	dc.b	nD1, $06, nRst, $06, nD1, $02, nRst, $04, nD1, $04, nRst, $02
	dc.b	nRst, $0C, nD1, $06, nRst, $06, nRst, $0C, nD1, $06, nRst, $06
	dc.b	nC1, $06, nD1, $06, nRst, $0C, nG1, $04, nRst, $02, nG1, $06
	dc.b	nRst, $06, nG1, $04, nRst, $02, nRst, $0C, nAb1, $0C, smpsNoAttack, $0A
	dc.b	nRst, $02, nE1, $0C, smpsNoAttack, $12, nRst, $04
	smpsJump            s3p34_FM3

; FM4 Data
s3p34_FM4:
	smpsPan             panLeft, $00
	smpsSetvoice        $0C
	smpsDetune          $FD
	smpsModSet          $0F, $01, $06, $06
	dc.b	nA3, $10, nRst, $02, nA3, $04, nRst, $02, nRst, $06, nG3, $02
	dc.b	nRst, $04, nG3, $04, nRst, $08, nF3, $16, nRst, $02, nE3, $16
	dc.b	nRst, $02, nRst, $18, nA3, $16, nRst, $02, nB3, $16, nRst, $02
	dc.b	nG3, $16, nRst, $02, nA3, $10, nRst, $02, nA3, $04, nRst, $02
	dc.b	nRst, $06, nG3, $02, nRst, $04, nG3, $04, nRst, $08, nRst, $06
	dc.b	nF3, $10, nRst, $02, nE3, $16, nRst, $02, nRst, $18, nA3, $16
	dc.b	nRst, $02, nB3, $16, nRst, $02, nG3, $16, nRst, $02, nA3, $10
	dc.b	nRst, $02, nA3, $04, nRst, $02, nRst, $06, nG3, $02, nRst, $04
	dc.b	nG3, $04, nRst, $08, nF3, $16, nRst, $02, nE3, $16, nRst, $02
	dc.b	nRst, $18, nA3, $16, nRst, $02, nB3, $16, nRst, $02, nG3, $16
	dc.b	nRst, $02, nA3, $10, nRst, $02, nA3, $04, nRst, $02, nRst, $06
	dc.b	nG3, $02, nRst, $04, nG3, $04, nRst, $08, nRst, $06, nF3, $10
	dc.b	nRst, $02, nE3, $16, nRst, $02, nRst, $18, nA3, $16, nRst, $02
	dc.b	nB3, $16, nRst, $02, nG3, $16, nRst, $02
	smpsSetvoice        $03
	smpsDetune          $FE
	smpsModSet          $0F, $01, $06, $06
	dc.b	nG4, $18, smpsNoAttack, $0A, nRst, $02, nE4, $0C, smpsNoAttack, $18, smpsNoAttack, $0A
	dc.b	nRst, $02, nF4, $04, nRst, $02, nG4, $04, nRst, $02, nF4, $18
	dc.b	smpsNoAttack, $0A, nRst, $02, nD4, $0C, smpsNoAttack, $18, smpsNoAttack, $0A, nRst, $02
	dc.b	nE4, $04, nRst, $02, nF4, $04, nRst, $02, nE4, $18, smpsNoAttack, $0A
	dc.b	nRst, $02, nC4, $0C, smpsNoAttack, $18, smpsNoAttack, $0A, nRst, $02, nD4, $04
	dc.b	nRst, $02, nE4, $04, nRst, $02, nD4, $04, nRst, $08, nD4, $0A
	dc.b	nRst, $02, nRst, $0C, nG3, $0C, smpsNoAttack, $18, smpsNoAttack, $0A, nRst, $0E
	dc.b	nG4, $18, smpsNoAttack, $0A, nRst, $02, nE4, $0C, smpsNoAttack, $18, smpsNoAttack, $0A
	dc.b	nRst, $02, nF4, $04, nRst, $02, nG4, $04, nRst, $02, nF4, $18
	dc.b	smpsNoAttack, $0A, nRst, $02, nD4, $0C, smpsNoAttack, $18, smpsNoAttack, $0A, nRst, $02
	dc.b	nE4, $04, nRst, $02, nF4, $04, nRst, $02, nE4, $18, smpsNoAttack, $0A
	dc.b	nRst, $02, nC4, $0C, smpsNoAttack, $18, smpsNoAttack, $0A, nRst, $02, nD4, $04
	dc.b	nRst, $02, nE4, $04, nRst, $02, nD4, $04, nRst, $08, nD4, $0C
	dc.b	smpsNoAttack, $02, nRst, $0A, nG3, $0C, smpsNoAttack, $16, nRst, $02, nRst, $0C
	dc.b	nC5, $04, nRst, $02, nD5, $04, nRst, $02, nE5, $18, smpsNoAttack, $16
	dc.b	nRst, $02, nD5, $10, nRst, $02, nG5, $06, smpsNoAttack, $0A, nRst, $02
	dc.b	nF5, $0A, nRst, $02, nE5, $18, smpsNoAttack, $16, nRst, $02, nC5, $10
	dc.b	nRst, $02, nD5, $06, smpsNoAttack, $0A, nRst, $02, nE5, $0A, nRst, $02
	dc.b	nD5, $18, smpsNoAttack, $18, smpsNoAttack, $0A, nRst, $02, nE5, $0C, smpsNoAttack, $0A
	dc.b	nRst, $02, nF5, $0A, nRst, $02, nE5, $18, smpsNoAttack, $18, smpsNoAttack, $16
	dc.b	nRst, $02, nRst, $0C, nD5, $04, nRst, $02, nE5, $04, nRst, $02
	dc.b	nF5, $18, smpsNoAttack, $16, nRst, $02, nD5, $10, nRst, $02, nG5, $06
	dc.b	smpsNoAttack, $0A, nRst, $02, nF5, $0A, nRst, $02, nE5, $04, nRst, $08
	dc.b	nE5, $0C, smpsNoAttack, $16, nRst, $02, nC5, $18, smpsNoAttack, $16, nRst, $02
	dc.b	nRst, $0C, nD5, $04, nRst, $02, nC5, $04, nRst, $02, nD5, $04
	dc.b	nRst, $08, nE5, $04, nRst, $02, nD5, $04, nRst, $02, nE5, $04
	dc.b	nRst, $08, nF5, $04, nRst, $02, nE5, $04, nRst, $02, nF5, $04
	dc.b	nRst, $08, nG5, $04, nRst, $02, nF5, $04, nRst, $02, nG5, $04
	dc.b	nRst, $08, nA5, $04, nRst, $02, nAb5, $04, nRst, $02, nA5, $04
	dc.b	nRst, $08, nAb5, $0C, smpsNoAttack, $0A, nRst, $02, nE5, $0C, smpsNoAttack, $16
	smpsJump            s3p34_FM4

; FM5 Data
s3p34_FM5:
	dc.b	nRst, $02
	smpsPan             panRight, $00
	smpsSetvoice        $0C
	smpsDetune          $03
	smpsModSet          $0F, $01, $06, $06
	dc.b	nA3, $10, nRst, $02, nA3, $04, nRst, $02, nRst, $06, nG3, $02
	dc.b	nRst, $04, nG3, $04, nRst, $08, nF3, $16, nRst, $02, nE3, $16
	dc.b	nRst, $02, nRst, $18, nA3, $16, nRst, $02, nB3, $16, nRst, $02
	dc.b	nG3, $16, nRst, $02, nA3, $10, nRst, $02, nA3, $04, nRst, $02
	dc.b	nRst, $06, nG3, $02, nRst, $04, nG3, $04, nRst, $08, nRst, $06
	dc.b	nF3, $10, nRst, $02, nE3, $16, nRst, $02, nRst, $18, nA3, $16
	dc.b	nRst, $02, nB3, $16, nRst, $02, nG3, $16, nRst, $02, nA3, $10
	dc.b	nRst, $02, nA3, $04, nRst, $02, nRst, $06, nG3, $02, nRst, $04
	dc.b	nG3, $04, nRst, $08, nF3, $16, nRst, $02, nE3, $16, nRst, $02
	dc.b	nRst, $18, nA3, $16, nRst, $02, nB3, $16, nRst, $02, nG3, $16
	dc.b	nRst, $02, nA3, $10, nRst, $02, nA3, $04, nRst, $02, nRst, $06
	dc.b	nG3, $02, nRst, $04, nG3, $04, nRst, $08, nRst, $06, nF3, $10
	dc.b	nRst, $02, nE3, $16, nRst, $02, nRst, $18, nA3, $16, nRst, $02
	dc.b	nB3, $16, nRst, $02, nG3, $16, nRst, $02
	smpsSetvoice        $03
	smpsDetune          $02
	smpsModSet          $0F, $01, $06, $06
	dc.b	nG4, $18, smpsNoAttack, $0A, nRst, $02, nE4, $0C, smpsNoAttack, $18, smpsNoAttack, $0A
	dc.b	nRst, $02, nF4, $04, nRst, $02, nG4, $04, nRst, $02, nF4, $18
	dc.b	smpsNoAttack, $0A, nRst, $02, nD4, $0C, smpsNoAttack, $18, smpsNoAttack, $0A, nRst, $02
	dc.b	nE4, $04, nRst, $02, nF4, $04, nRst, $02, nE4, $18, smpsNoAttack, $0A
	dc.b	nRst, $02, nC4, $0C, smpsNoAttack, $18, smpsNoAttack, $0A, nRst, $02, nD4, $04
	dc.b	nRst, $02, nE4, $04, nRst, $02, nD4, $04, nRst, $08, nD4, $0A
	dc.b	nRst, $02, nRst, $0C, nG3, $0C, smpsNoAttack, $18, smpsNoAttack, $0A, nRst, $0E
	dc.b	nG4, $18, smpsNoAttack, $0A, nRst, $02, nE4, $0C, smpsNoAttack, $18, smpsNoAttack, $0A
	dc.b	nRst, $02, nF4, $04, nRst, $02, nG4, $04, nRst, $02, nF4, $18
	dc.b	smpsNoAttack, $0A, nRst, $02, nD4, $0C, smpsNoAttack, $18, smpsNoAttack, $0A, nRst, $02
	dc.b	nE4, $04, nRst, $02, nF4, $04, nRst, $02, nE4, $18, smpsNoAttack, $0A
	dc.b	nRst, $02, nC4, $0C, smpsNoAttack, $18, smpsNoAttack, $0A, nRst, $02, nD4, $04
	dc.b	nRst, $02, nE4, $04, nRst, $02, nD4, $04, nRst, $08, nD4, $0C
	dc.b	smpsNoAttack, $02, nRst, $0A, nG3, $0C, smpsNoAttack, $16, nRst, $02, nRst, $0C
	dc.b	nC5, $04, nRst, $02, nD5, $04, nRst, $02, nE5, $18, smpsNoAttack, $16
	dc.b	nRst, $02, nD5, $10, nRst, $02, nG5, $06, smpsNoAttack, $0A, nRst, $02
	dc.b	nF5, $0A, nRst, $02, nE5, $18, smpsNoAttack, $16, nRst, $02, nC5, $10
	dc.b	nRst, $02, nD5, $06, smpsNoAttack, $0A, nRst, $02, nE5, $0A, nRst, $02
	dc.b	nD5, $18, smpsNoAttack, $18, smpsNoAttack, $0A, nRst, $02, nE5, $0C, smpsNoAttack, $0A
	dc.b	nRst, $02, nF5, $0A, nRst, $02, nE5, $18, smpsNoAttack, $18, smpsNoAttack, $16
	dc.b	nRst, $02, nRst, $0C, nD5, $04, nRst, $02, nE5, $04, nRst, $02
	dc.b	nF5, $18, smpsNoAttack, $16, nRst, $02, nD5, $10, nRst, $02, nG5, $06
	dc.b	smpsNoAttack, $0A, nRst, $02, nF5, $0A, nRst, $02, nE5, $04, nRst, $08
	dc.b	nE5, $0C, smpsNoAttack, $16, nRst, $02, nC5, $18, smpsNoAttack, $16, nRst, $02
	dc.b	nRst, $0C, nD5, $04, nRst, $02, nC5, $04, nRst, $02, nD5, $04
	dc.b	nRst, $08, nE5, $04, nRst, $02, nD5, $04, nRst, $02, nE5, $04
	dc.b	nRst, $08, nF5, $04, nRst, $02, nE5, $04, nRst, $02, nF5, $04
	dc.b	nRst, $08, nG5, $04, nRst, $02, nF5, $04, nRst, $02, nG5, $04
	dc.b	nRst, $08, nA5, $04, nRst, $02, nAb5, $04, nRst, $02, nA5, $04
	dc.b	nRst, $08, nAb5, $0C, smpsNoAttack, $0A, nRst, $02, nE5, $0C, smpsNoAttack, $16
	smpsJump            s3p34_FM5

; PSG2 Data
s3p34_PSG2:
	dc.b	nRst, $01
	smpsPSGvoice        sTone_0A
	smpsDetune          $FF
	smpsJump            s3p34_Jump01

; PSG1 Data
s3p34_PSG1:
	smpsDetune          $00
	smpsPSGvoice        sTone_0A

s3p34_Jump01:
	dc.b	nC5, $04, nRst, $02, nE5, $04, nRst, $02, nC5, $04, nRst, $08
	dc.b	nB4, $04, nRst, $02, nD5, $04, nRst, $02, nB4, $04, nRst, $08
	dc.b	nA4, $04, nRst, $02, nC5, $04, nRst, $02, nA4, $04, nRst, $08
	dc.b	nG4, $04, nRst, $02, nB4, $04, nRst, $02, nG4, $04, nRst, $08
	dc.b	nF4, $0C, nRst, $06, nF4, $06, smpsNoAttack, $04, nRst, $08, nF4, $04
	dc.b	nRst, $08, nG4, $0C, nRst, $06, nG4, $06, smpsNoAttack, $04, nRst, $08
	dc.b	nG4, $04, nRst, $08, nC5, $04, nRst, $02, nE5, $04, nRst, $02
	dc.b	nC5, $04, nRst, $08, nB4, $04, nRst, $02, nD5, $04, nRst, $02
	dc.b	nB4, $04, nRst, $08, nA4, $04, nRst, $02, nC5, $04, nRst, $02
	dc.b	nA4, $04, nRst, $08, nG4, $04, nRst, $02, nB4, $04, nRst, $02
	dc.b	nG4, $04, nRst, $08, nF4, $0C, nRst, $06, nF4, $06, smpsNoAttack, $04
	dc.b	nRst, $08, nF4, $06, nRst, $06, nG4, $0A, nRst, $08, nG4, $06
	dc.b	smpsNoAttack, $02, nRst, $0A, nG4, $02, nRst, $0A, nC5, $04, nRst, $02
	dc.b	nE5, $04, nRst, $02, nC5, $04, nRst, $08, nB4, $04, nRst, $02
	dc.b	nD5, $04, nRst, $02, nB4, $04, nRst, $08, nA4, $04, nRst, $02
	dc.b	nC5, $04, nRst, $02, nA4, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b	nB4, $04, nRst, $02, nG4, $04, nRst, $08, nF4, $0C, nRst, $06
	dc.b	nF4, $06, smpsNoAttack, $04, nRst, $08, nF4, $04, nRst, $08, nG4, $0C
	dc.b	nRst, $06, nG4, $06, smpsNoAttack, $02, nRst, $0A, nG4, $02, nRst, $0A
	dc.b	nC5, $04, nRst, $02, nE5, $04, nRst, $02, nC5, $04, nRst, $08
	dc.b	nB4, $04, nRst, $02, nD5, $04, nRst, $02, nB4, $04, nRst, $08
	dc.b	nA4, $04, nRst, $02, nC5, $04, nRst, $02, nA4, $04, nRst, $08
	dc.b	nG4, $04, nRst, $02, nB4, $04, nRst, $02, nG4, $04, nRst, $08
	dc.b	nF4, $0C, nRst, $06, nF4, $06, smpsNoAttack, $04, nRst, $08, nF4, $06
	dc.b	nRst, $06, nG4, $0C, nRst, $06, nG4, $06, smpsNoAttack, $02, nRst, $0A
	dc.b	nD4, $0A, nRst, $02, nC4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nC5, $04, nRst, $02, nC4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nC5, $04, nRst, $0E, nRst, $18, nRst, $18, nBb3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nBb4, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nRst, $18, nRst, $18, nRst, $18, nA3, $04, nRst, $02, nA3, $04
	dc.b	nRst, $02, nA4, $04, nRst, $02, nA3, $04, nRst, $02, nA3, $04
	dc.b	nRst, $02, nA4, $04, nRst, $02, nA3, $04, nRst, $02, nA3, $04
	dc.b	nRst, $02, nRst, $18, nRst, $18, nRst, $06, nG3, $04, nRst, $02
	dc.b	nB3, $04, nRst, $02, nD4, $04, nRst, $02, nG4, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nG4, $04, nRst, $02, nG4, $04, nRst, $02
	dc.b	nRst, $06, nB4, $04, nRst, $08, nB4, $04, nRst, $02, nC5, $04
	dc.b	nRst, $08, nD5, $04, nRst, $08, nC4, $04, nRst, $02, nC4, $04
	dc.b	nRst, $02, nC5, $04, nRst, $02, nC4, $04, nRst, $02, nC4, $04
	dc.b	nRst, $02, nC5, $04, nRst, $02, nC4, $04, nRst, $02, nC4, $04
	dc.b	nRst, $02, nRst, $18, nRst, $18, nBb3, $04, nRst, $02, nBb3, $04
	dc.b	nRst, $02, nBb4, $04, nRst, $02, nBb3, $04, nRst, $02, nBb3, $04
	dc.b	nRst, $02, nBb4, $04, nRst, $02, nBb3, $04, nRst, $02, nBb3, $04
	dc.b	nRst, $02, nRst, $18, nRst, $18, nA3, $04, nRst, $02, nA3, $04
	dc.b	nRst, $02, nA4, $04, nRst, $02, nA3, $04, nRst, $02, nA3, $04
	dc.b	nRst, $02, nA4, $04, nRst, $02, nA3, $04, nRst, $02, nA3, $04
	dc.b	nRst, $02, nRst, $18, nRst, $18, nRst, $06, nG3, $04, nRst, $02
	dc.b	nB3, $04, nRst, $02, nD4, $04, nRst, $02, nG4, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nG4, $04, nRst, $02, nG4, $04, nRst, $02
	dc.b	nRst, $06, nB4, $04, nRst, $08, nB4, $04, nRst, $02, nC5, $04
	dc.b	nRst, $14, nE4, $10, nRst, $02, nE4, $04, nRst, $02, nRst, $0C
	dc.b	nE4, $04, nRst, $08, nRst, $0C, nA4, $04, nRst, $02, nB4, $04
	dc.b	nRst, $02, nRst, $06, nB4, $04, nRst, $02, nC5, $04, nRst, $08
	dc.b	nB3, $10, nRst, $02, nB3, $04, nRst, $02, nRst, $0C, nB3, $04
	dc.b	nRst, $08, nRst, $0C, nG4, $04, nRst, $02, nA4, $04, nRst, $02
	dc.b	nRst, $06, nA4, $04, nRst, $02, nB4, $04, nRst, $08, nA3, $10
	dc.b	nRst, $02, nA3, $04, nRst, $02, nRst, $0C, nA3, $04, nRst, $08
	dc.b	nRst, $0C, nF4, $04, nRst, $02, nG4, $04, nRst, $02, nRst, $06
	dc.b	nG4, $04, nRst, $02, nA4, $04, nRst, $08, nRst, $06, nC4, $04
	dc.b	nRst, $02, nE4, $04, nRst, $02, nG4, $04, nRst, $02, nC5, $04
	dc.b	nRst, $02, nG4, $04, nRst, $02, nC5, $04, nRst, $02, nC5, $04
	dc.b	nRst, $02, nRst, $06, nE5, $04, nRst, $08, nE5, $04, nRst, $02
	dc.b	nF5, $04, nRst, $08, nG5, $04, nRst, $08, nF4, $10, nRst, $02
	dc.b	nF4, $04, nRst, $02, nRst, $0C, nF4, $04, nRst, $08, nRst, $0C
	dc.b	nC4, $04, nRst, $02, nD4, $04, nRst, $02, nRst, $06, nD4, $04
	dc.b	nRst, $02, nF4, $04, nRst, $08, nE4, $04, nRst, $02, nE5, $04
	dc.b	nRst, $02, nE4, $04, nRst, $02, nE5, $04, nRst, $02, nE4, $04
	dc.b	nRst, $02, nE5, $04, nRst, $02, nE4, $04, nRst, $08, nA4, $04
	dc.b	nRst, $02, nA4, $04, nRst, $02, nA3, $04, nRst, $02, nA4, $04
	dc.b	nRst, $02, nA3, $04, nRst, $02, nA4, $04, nRst, $02, nA3, $04
	dc.b	nRst, $08, nD4, $04, nRst, $02, nD4, $04, nRst, $02, nD5, $04
	dc.b	nRst, $02, nD4, $04, nRst, $02, nD4, $04, nRst, $02, nD5, $04
	dc.b	nRst, $02, nE4, $04, nRst, $02, nE4, $04, nRst, $02, nE5, $04
	dc.b	nRst, $02, nE4, $04, nRst, $02, nF4, $04, nRst, $02, nF4, $04
	dc.b	nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $02, nG4, $04
	dc.b	nRst, $02, nG4, $04, nRst, $02, nG5, $04, nRst, $02, nG4, $04
	dc.b	nRst, $02, nG4, $04, nRst, $02, nAb4, $04, nRst, $02, nA4, $04
	dc.b	nRst, $08, nAb4, $0C, smpsNoAttack, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b	nFs4, $04, nRst, $02, nG4, $04, nRst, $02, nAb4, $04, nRst, $02
	dc.b	nA4, $04, nRst, $02, nBb4, $04, nRst, $02, nB4, $04
	smpsJump            s3p34_PSG1

; PSG3 Data
s3p34_PSG3:
	smpsPSGvoice        sTone_02
	smpsPSGform         $E7

s3p34_Jump00:
	dc.b	nRst, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C, nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04, smpsNoAttack, $02, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18
	dc.b	smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $16
	smpsJump            s3p34_Jump00

s3p34_Voices:
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

;	Voice $16
;	$3E
;	$38, $01, $7A, $34, 	$59, $D9, $5F, $9C, 	$0F, $04, $0F, $0A
;	$02, $02, $05, $05, 	$AF, $AF, $66, $66, 	$28, $80, $A3, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $00, $03
	smpsVcCoarseFreq    $04, $0A, $01, $08
	smpsVcRateScale     $02, $01, $03, $01
	smpsVcAttackRate    $1C, $1F, $19, $19
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0F, $04, $0F
	smpsVcDecayRate2    $05, $05, $02, $02
	smpsVcDecayLevel    $06, $06, $0A, $0A
	smpsVcReleaseRate   $06, $06, $0F, $0F
	smpsVcTotalLevel    $80, $A3, $80, $28

;	Voice $17
;	$39
;	$32, $31, $72, $71, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$1B, $32, $28, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $03, $03
	smpsVcCoarseFreq    $01, $02, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $28, $32, $1B

;	Voice $18
;	$07
;	$34, $74, $32, $71, 	$1F, $1F, $1F, $1F, 	$0A, $0A, $05, $03
;	$00, $00, $00, $00, 	$3F, $3F, $2F, $2F, 	$8A, $8A, $80, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $07, $03
	smpsVcCoarseFreq    $01, $02, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $05, $0A, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $02, $03, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $80, $8A, $8A

;	Voice $19
;	$3A
;	$31, $37, $31, $31, 	$8D, $8D, $8E, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $0F, 	$17, $28, $26, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0E, $0D, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $26, $28, $17

