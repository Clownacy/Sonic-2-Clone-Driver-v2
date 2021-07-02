s3p2_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     s3p2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $25

	smpsHeaderDAC       s3p2_DAC
	smpsHeaderFM        s3p2_FM1,	$18, $12
	smpsHeaderFM        s3p2_FM2,	$0C, $19
	smpsHeaderFM        s3p2_FM3,	$0C, $19
	smpsHeaderFM        s3p2_FM4,	$0C, $19
	smpsHeaderFM        s3p2_FM5,	$0C, $19
	smpsHeaderPSG       s3p2_PSG1,	$F4, $04, $00, sTone_0C
	smpsHeaderPSG       s3p2_PSG2,	$F4, $04, $00, sTone_0C
	smpsHeaderPSG       s3p2_PSG3,	$00, $04, $00, sTone_0C

; DAC Data
s3p2_DAC:
	dc.b	dKickS3, $0C, dKickS3, dSnareS3, dKickS3, $06, dSnareS3, $0C, dSnareS3, $06, dKickS3, $0C
	dc.b	dSnareS3, dKickS3, dKickS3, dKickS3, dSnareS3, dKickS3, $06, dSnareS3, $0C, dSnareS3, $06, dKickS3
	dc.b	dSnareS3, dSnareS3, $0C, dKickS3, $06, dSnareS3, dKickS3, $0C, dKickS3, dSnareS3, dKickS3, $06
	dc.b	dSnareS3, $0C, dSnareS3, $06, dKickS3, $0C, dSnareS3, dKickS3, dKickS3, dKickS3, dSnareS3, dKickS3
	dc.b	$06, dSnareS3, $0C, dSnareS3, $06, dKickS3, dSnareS3, dSnareS3, $0C, dKickS3, $06, dSnareS3
	dc.b	dKickS3, $0C, dKickS3, dSnareS3, dKickS3, $06, dSnareS3, $0C, dSnareS3, $06, dKickS3, $0C
	dc.b	dSnareS3, dKickS3, dKickS3, dKickS3, dSnareS3, dKickS3, $06, dSnareS3, $0C, dSnareS3, $06, dKickS3
	dc.b	dSnareS3, dSnareS3, $0C, dKickS3, $06, dSnareS3, dKickS3, $0C, dKickS3, dSnareS3, dKickS3, $06
	dc.b	dSnareS3, $0C, dSnareS3, $06, dKickS3, $0C, dSnareS3, dKickS3, dKickS3, dKickS3, dSnareS3, dKickS3
	dc.b	$06, dSnareS3, $0C, dSnareS3, $06, dKickS3, dSnareS3, dSnareS3, dSnareS3, dMidTomS3, $0C, dKickS3
	dc.b	dKickS3, dSnareS3, dKickS3, $06, dSnareS3, $0C, dSnareS3, $06, dKickS3, $0C, dSnareS3, dKickS3
	dc.b	dKickS3, dKickS3, dSnareS3, dKickS3, $06, dSnareS3, $0C, dSnareS3, $06, dKickS3, dSnareS3, dSnareS3
	dc.b	$0C, dKickS3, $06, dSnareS3, dKickS3, $0C, dKickS3, dSnareS3, dKickS3, $06, dSnareS3, $0C
	dc.b	dSnareS3, $06, dKickS3, $0C, dSnareS3, dKickS3, dKickS3, dKickS3, dSnareS3, dKickS3, $06, dSnareS3
	dc.b	$0C, dSnareS3, $06, dKickS3, dSnareS3, dSnareS3, $0C, dKickS3, $06, dSnareS3, dKickS3, $0C
	dc.b	dKickS3, dSnareS3, dKickS3, $06, dSnareS3, $0C, dSnareS3, $06, dKickS3, $0C, dSnareS3, dKickS3
	dc.b	dKickS3, dKickS3, dSnareS3, dKickS3, $06, dSnareS3, $0C, dSnareS3, $06, dKickS3, dSnareS3, dSnareS3
	dc.b	$0C, dKickS3, $06, dSnareS3, dKickS3, $0C, dKickS3, dSnareS3, dKickS3, $06, dSnareS3, $0C
	dc.b	dSnareS3, $06, dKickS3, $0C, dSnareS3, dKickS3, dKickS3, $18, dKickS3, $15, dSnareS3, $02
	dc.b	dSnareS3, $01, dSnareS3, $06, dSnareS3, $0C, dSnareS3, dSnareS3, $06, dSnareS3, $0C, dKickS3
	dc.b	dKickS3, dSnareS3, dKickS3, $06, dSnareS3, $0C, dSnareS3, $06, dKickS3, $0C, dSnareS3, dKickS3
	dc.b	dKickS3, dKickS3, dSnareS3, dKickS3, $06, dSnareS3, $0C, dSnareS3, $06, dKickS3, dSnareS3, dSnareS3
	dc.b	$0C, dKickS3, $06, dSnareS3, dKickS3, $0C, dKickS3, dSnareS3, dKickS3, $06, dSnareS3, $0C
	dc.b	dSnareS3, $06, dKickS3, $0C, dSnareS3, dKickS3, dKickS3, dKickS3, dSnareS3, dKickS3, $06, dSnareS3
	dc.b	$0C, dSnareS3, $06, dKickS3, dSnareS3, dSnareS3, $0C, dKickS3, $06, dSnareS3, dKickS3, $0C
	dc.b	dKickS3, dSnareS3, dKickS3, $06, dSnareS3, $0C, dSnareS3, $06, dKickS3, $0C, dSnareS3, dKickS3
	dc.b	dKickS3, dKickS3, dSnareS3, dKickS3, $06, dSnareS3, $0C, dSnareS3, $06, dKickS3, dSnareS3, dSnareS3
	dc.b	$0C, dKickS3, $06, dSnareS3, dKickS3, $0C, dKickS3, dSnareS3, dKickS3, $06, dSnareS3, $0C
	dc.b	dSnareS3, $06, dKickS3, $0C, dSnareS3, dKickS3, dKickS3, $06, dSnareS3, $0C, dSnareS3, $06
	dc.b	dMidTomS3, $0C, dKickS3, $06, dSnareS3, $0C, dSnareS3, $06, dHighTom, $0C, dSnareS3, $06
	dc.b	dSnareS3, dFloorTomS3, dSnareS3, dKickS3, $0C, dKickS3, dSnareS3, dKickS3, $06, dSnareS3, $0C, dSnareS3
	dc.b	$06, dKickS3, $0C, dSnareS3, dKickS3, dKickS3, dKickS3, dSnareS3, dKickS3, $06, dSnareS3, $0C
	dc.b	dSnareS3, $06, dKickS3, dSnareS3, dSnareS3, $0C, dKickS3, $06, dSnareS3, dKickS3, $0C, dKickS3
	dc.b	dSnareS3, dKickS3, $06, dSnareS3, $0C, dSnareS3, $06, dKickS3, $0C, dSnareS3, dKickS3, dKickS3
	dc.b	dKickS3, dSnareS3, dKickS3, $06, dSnareS3, $0C, dSnareS3, $06, dKickS3, dSnareS3, dSnareS3, dSnareS3
	dc.b	dMidTomS3, $0C, dKickS3, dKickS3, dSnareS3, dKickS3, $06, dSnareS3, $0C, dSnareS3, $06, dKickS3
	dc.b	$0C, dSnareS3, dKickS3, dKickS3, dKickS3, dSnareS3, dKickS3, $06, dSnareS3, $0C, dSnareS3, $06
	dc.b	dKickS3, dSnareS3, dSnareS3, $0C, dKickS3, $06, dSnareS3, dKickS3, $0C, dKickS3, dSnareS3, dKickS3
	dc.b	$06, dSnareS3, $0C, dSnareS3, $06, dKickS3, $0C, dSnareS3, dKickS3, dKickS3, dKickS3, dSnareS3
	dc.b	$06, dSnareS3, dKickS3, dSnareS3, $0C, dSnareS3, $06, dKickS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3
	dc.b	dSnareS3, dKickS3, $0C, dKickS3, dSnareS3, dKickS3, $06, dSnareS3, $0C, dSnareS3, $06, dKickS3
	dc.b	$0C, dSnareS3, dKickS3, dKickS3, dKickS3, dSnareS3, dKickS3, $06, dSnareS3, $0C, dSnareS3, $06
	dc.b	dKickS3, dSnareS3, dSnareS3, $0C, dKickS3, $06, dSnareS3, dKickS3, $0C, dKickS3, dSnareS3, dKickS3
	dc.b	$06, dSnareS3, $0C, dSnareS3, $06, dKickS3, $0C, dSnareS3, dKickS3, dKickS3, dKickS3, dSnareS3
	dc.b	$06, dKickS3, $0C, dKickS3, $06, dHighTom, dMidTomS3, $0C, dFloorTomS3, $06, dSnareS3, dSnareS3
	dc.b	dMidTomS3, $0C
	smpsJump            s3p2_DAC

; FM1 Data
s3p2_FM1:
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nC1, $0C
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nC2, $03, nRst, $09
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nA0, $0C
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nA1, $03, nRst
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nBb0, $0C, nBb0, $03, nRst, nA0, $0C, nBb0, nG0, nC1
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nC2, $03, nRst, $09
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nA0, $0C
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nA1, $03, nRst
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nBb0, $0C, nF0, $06, nRst
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nF1, $03, nRst, $09
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nG0, $06
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nG1, $0C
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nC1
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nC2, $03, nRst, $09
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nA0, $0C
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nA1, $03, nRst
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nBb0, $0C, nBb0, $03, nRst, nA0, $0C, nBb0, nG0, nC1
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nC2, $03, nRst, $09
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nA0, $0C
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nA1, $03, nRst
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nBb0, $0C, nF0, $06, nRst
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nF1, $03, nRst, $09
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nG0, $06
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nG1, $0C
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nC1
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nC2, $03, nRst, $09
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nA0, $0C
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nA1, $03, nRst
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nBb0, $0C, nBb0, $03, nRst, nA0, $0C, nBb0, nG0, nC1
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nC2, $03, nRst, $09
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nA0, $0C
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nA1, $03, nRst
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nBb0, $0C, nF0, $06, nRst
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nF1, $03, nRst, $09
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nG0, $06
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nG1, $0C
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nC1
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nC2, $03, nRst, $09
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nA0, $0C
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nA1, $03, nRst
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nBb0, $0C, nBb0, $03, nRst, nA0, $0C, nBb0, nG0, nF0, $06
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nF1, $03, nRst, $09
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nF0, $0C
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nF1, $03, nRst
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nG0, $0C, nRst, $06
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nG1
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nF1, nEb1, nF1, nEb1, nD1, nBb0, nC1, $18, nEb1, $12, nF1, $0C
	dc.b	nEb1, $03, nRst, nF1, $0C, nG1, nEb1, nC1, $18, nEb1, $12, nF1
	dc.b	$0C, nEb1, $03, nRst, nF1, $0C, nG1, nBb1, nC1, $18, nEb1, $12
	dc.b	nF1, $0C, nEb1, $03, nRst, nF1, $0C, nG1, nEb1, nC1, $18, nEb1
	dc.b	$12, nF1, $0C, nEb1, $03, nRst, nF1, $0C, nG0, nBb0, nC1, $18
	dc.b	nEb1, $12, nF1, $0C, nEb1, $03, nRst, nF1, $0C, nG1, nEb1, nC1
	dc.b	$18, nEb1, $12, nF1, $0C, nEb1, $03, nRst, nF1, $0C, nG1, nBb1
	dc.b	nC1, $18, nEb1, $12, nF1, $0C, nEb1, $03, nRst, nF1, $0C, nF1
	dc.b	nEb1, nG0, $18, nD1, $12, nF1, $0C, nFs1, $03, nRst, nG1, $0C
	dc.b	nG0, $18, nC1, nC1, $12, nEb1, $0C, nC1, $03, nRst, nEb1, $0C
	dc.b	nF1, nG1, nF0, $18, nF0, $12, nG0, $0C, nF0, $03, nRst, nG0
	dc.b	$0C, nBb0, nB0, nC1, $18, nC1, $12, nEb1, $0C, nC1, $03, nRst
	dc.b	nEb1, $0C, nF1, nG1, nF0, $18, nF0, $12, nG0, $0C, nF0, $03
	dc.b	nRst, nG0, $0C, nBb0, nB0, nC1, $18, nC1, $12, nEb1, $0C, nC1
	dc.b	$03, nRst, nEb1, $0C, nF1, nG1, nF0, $18, nF0, $12, nG0, $0C
	dc.b	nF0, $03, nRst, nG0, $0C, nBb0, nB0, nC1, $18, nC1, $12, nEb1
	dc.b	$0C, nC1, $03, nRst, nEb1, $0C, nF1, nG1, nF0, $12, nF1, $03
	dc.b	nRst, $09, nF0, $06, nG0, $18, nG1, $03, nRst, $09, nFs0, $0C
	dc.b	nFs1, $03, nRst, $09, nF0, $18, nF0, $12, nF0, $0C, nF0, $03
	dc.b	nRst, nC1, $0C, nF1, nF0, nG0, $18, nG0, $12, nG0, $0C, nG0
	dc.b	$03, nRst, nD1, $0C, nG1, nG0, nC1, nG0, nBb0, nG0, $06, nC1
	dc.b	$0C, nC1, $06, nG0, $0C, nBb0, nG0, nC1, nG0, nBb0, nG0, $06
	dc.b	nC1, $0C, nC1, $06, nG0, $0C, nBb0, nG0, nF0, $18, nF0, $12
	dc.b	nF0, $0C, nF0, $03, nRst, nC1, $0C, nF1, nF0, nG0, $18, nG0
	dc.b	$12, nG0, $0C, nG0, $03, nRst, nD1, $0C, nG1, nG0, nC1, nG0
	dc.b	nBb0, nG0, $06, nC1, $0C, nC1, $06, nG0, $0C, nBb0, nG0, nC1
	dc.b	nC1, nEb1, nEb1, $06, nF1, $0C, nEb1, $06, nF1, $0C, nG0, nFs0
	dc.b	nF0, $18, nF0, $12, nF0, $0C, nF0, $03, nRst, nC1, $0C, nF1
	dc.b	nF0, nG0, $18, nG0, $12, nG0, $0C, nG0, $03, nRst, nD1, $0C
	dc.b	nG1, nG0, nAb0, $18, nAb0, $12, nAb0, $0C, nAb0, $03, nRst, nEb1
	dc.b	$0C, nAb1, nAb0, nBb0, $18, nBb0, $12, nBb0, $0C, nBb0, $03, nRst
	dc.b	nD1, $0C, nEb1, nF1
	smpsJump            s3p2_FM1

; FM2 Data
s3p2_FM2:
	dc.b	nRst, $0C
	smpsSetvoice        $12
	smpsDetune          $01
	smpsModSet          $0F, $01, $06, $06
	dc.b	nG3, $06, nRst, $0C, nA3, $06, nRst, $0C, nBb3, $06, nRst, $36
	smpsSetvoice        $06
	smpsDetune          $03
	smpsModSet          $0F, $01, $06, $06
	dc.b	nC4, $02, nRst, $16, nD3, $02, nRst, $04, nC3, $02, nRst, $34
	smpsSetvoice        $12
	smpsDetune          $01
	smpsModSet          $0F, $01, $06, $06
	dc.b	nRst, $0C, nBb3, $06, nRst, $0C, nA3, $06, nRst, $0C, nG3, $06
	dc.b	nRst, $2A
	smpsSetvoice        $06
	smpsDetune          $03
	smpsModSet          $0F, $01, $06, $06
	dc.b	nRst, $30, nF3, $02, nRst, $04, nA3, $02, nRst, $04, nF4, $02
	dc.b	nRst, $04, nEb4, $1D, nRst, $01
	smpsSetvoice        $12
	smpsDetune          $01
	smpsModSet          $0F, $01, $06, $06
	dc.b	nRst, $0C, nG3, $06, nRst, $0C, nA3, $06, nRst, $0C, nBb3, $06
	dc.b	nRst, $2A
	smpsSetvoice        $06
	smpsDetune          $03
	smpsModSet          $0F, $01, $06, $06
	dc.b	nRst, $0C, nC4, $02, nRst, $16, nD3, $02, nRst, $04, nC3, $02
	dc.b	nRst, $34
	smpsSetvoice        $12
	smpsDetune          $01
	smpsModSet          $0F, $01, $06, $06
	dc.b	nRst, $0C, nBb3, $06, nRst, $0C, nA3, $06, nRst, $0C, nG3, $06
	dc.b	nRst, $2A
	smpsSetvoice        $06
	smpsDetune          $03
	smpsModSet          $0F, $01, $06, $06
	dc.b	nA3, $02, nRst, $10, nA3, $02, nRst, $10, nB3, $17, nRst, $01
	smpsSetvoice        $04
	smpsDetune          $01
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb2, $0B, nRst, $01, nG2, $0B, nRst, $01, nEb3, $0B, nRst, $01
	dc.b	nD3, $05, nRst, $0D, nBb2, $05, nRst, $0D, nG2, $3B, nRst, $3D
	smpsSetvoice        $04
	smpsDetune          $01
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb2, $0B, nRst, $01, nG2, $0B, nRst, $01, nEb3, $0B, nRst, $01
	dc.b	nD3, $05, nRst, $0D, nBb2, $05, nRst, $0D, nC3, $3B, nRst, $3D
	smpsSetvoice        $04
	smpsDetune          $01
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb2, $0B, nRst, $01, nG2, $0B, nRst, $01, nEb3, $0B, nRst, $01
	dc.b	nD3, $05, nRst, $0D, nBb2, $05, nRst, $0D, nG2, $3B, nRst, $31
	smpsSetvoice        $04
	smpsDetune          $01
	smpsModSet          $0F, $01, $06, $06
	dc.b	nRst, $0C, nEb2, $0B, nRst, $01, nG2, $0B, nRst, $01, nEb3, $0B
	dc.b	nRst, $01, nD3, $05, nRst, $0D, nBb2, $05, nRst, $0D, nC3, $3B
	dc.b	nRst, $01
	smpsSetvoice        $17
	smpsDetune          $01
	smpsModSet          $0F, $01, $06, $06
	dc.b	nRst, $0C, nA3, $05, nRst, $01, nB3, $05, nRst, $07, nB3, $02
	dc.b	nRst, $04, nB3, $02, nRst, $04, nB3, $02, nRst, $04, nB3, $02
	dc.b	nRst, $0A, nC4, $05, nRst, $01, nB3, $1D, nRst, $0D, nBb3, $0B
	dc.b	nRst, $01, nBb3, $0B, nRst, $0D, nA3, $05, nRst, $0D, nBb3, $05
	dc.b	nRst, $19, nC3, $05, nRst, $01, nG3, $05, nRst, $01, nC4, $05
	dc.b	nRst, $01, nBb3, $05, nRst, $07, nBb3, $05, nRst, $07, nA3, $05
	dc.b	nRst, $07, nA3, $05, nRst, $07, nF3, $05, nRst, $01, nC3, $05
	dc.b	nRst, $1F, nBb3, $0B, nRst, $01, nBb3, $0B, nRst, $0D, nA3, $05
	dc.b	nRst, $0D, nBb3, $05, nRst, $19, nC3, $05, nRst, $01, nG3, $05
	dc.b	nRst, $01, nC4, $05, nRst, $01, nBb3, $05, nRst, $07, nBb3, $05
	dc.b	nRst, $07, nA3, $05, nRst, $07, nA3, $05, nRst, $07, nBb3, $05
	dc.b	nRst, $01, nC4, $05, nRst, $1F, nBb3, $0B, nRst, $01, nBb3, $0B
	dc.b	nRst, $0D, nA3, $05, nRst, $0D, nBb3, $05, nRst, $19, nC3, $05
	dc.b	nRst, $01, nG3, $05, nRst, $01, nC4, $05, nRst, $01, nBb3, $05
	dc.b	nRst, $07, nBb3, $05, nRst, $07, nA3, $05, nRst, $07, nA3, $05
	dc.b	nRst, $07, nF3, $05, nRst, $01, nC3, $05, nRst, $1F, nBb3, $0B
	dc.b	nRst, $01, nBb3, $0B, nRst, $0D, nA3, $05, nRst, $0D, nBb3, $05
	dc.b	nRst, $19, nC3, $05, nRst, $01, nG3, $05, nRst, $01, nC4, $05
	dc.b	nRst, $01, nBb3, $05, nRst, $07, nBb3, $05, nRst, $07, nA3, $05
	dc.b	nRst, $07
	smpsSetvoice        $06
	smpsDetune          $03
	smpsModSet          $0F, $01, $06, $06
	dc.b	nA3, $02, nRst, $04, nBb3, $02, nRst, $04, nC4, $02, nRst, $04
	dc.b	nEb4, $02, nRst, $04, nD4, $02, nRst, $04, nBb3, $02, nRst, $04
	dc.b	nC4, $02, nRst, $04
	smpsSetvoice        $12
	smpsDetune          $01
	smpsModSet          $0F, $01, $06, $06
	dc.b	nRst, $0C, nAb3, $0B, nRst, $01, nC4, $0B, nRst, $01, nG4, $0B
	dc.b	nRst, $01, nF4, $05, nRst, $0D, nEb4, $05, nRst, $0D, nD4, $05
	dc.b	nRst, $07, nB3, $03, nRst, $01, nB3, $03, nRst, $01, nB3, $03
	dc.b	nRst, $01, nB3, $03, nRst, $01, nB3, $03, nRst, $01, nB3, $03
	dc.b	nRst, $01, nB3, $03, nRst, $01, nB3, $03, nRst, $01, nB3, $03
	dc.b	nRst, $01, nG3, $05, nRst, $07, nB3, $05, nRst, $0D, nC4, $05
	dc.b	nRst, $0D, nD4, $05, nRst, $07, nEb4, $03, nRst, $01, nEb4, $03
	dc.b	nRst, $01, nEb4, $03, nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b	nRst, $01, nEb4, $03, nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b	nRst, $01, nEb4, $03, nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b	nRst, $01, nEb4, $03, nRst, $01, nD4, $03, nRst, $01, nD4, $03
	dc.b	nRst, $01, nD4, $03, nRst, $01, nD4, $03, nRst, $01, nD4, $03
	dc.b	nRst, $01, nD4, $03, nRst, $01, nD4, $03, nRst, $01, nD4, $03
	dc.b	nRst, $01, nD4, $03, nRst, $01, nD4, $03, nRst, $01, nD4, $03
	dc.b	nRst, $01, nD4, $03, nRst, $01, nC4, $03, nRst, $01, nC4, $03
	dc.b	nRst, $01, nC4, $03, nRst, $01, nC4, $03, nRst, $01, nC4, $03
	dc.b	nRst, $01, nC4, $03, nRst, $01, nC4, $03, nRst, $01, nC4, $03
	dc.b	nRst, $01, nC4, $03, nRst, $01, nC4, $03, nRst, $01, nC4, $03
	dc.b	nRst, $01, nC4, $03, nRst, $01, nG3, $03, nRst, $01, nG3, $03
	dc.b	nRst, $01, nG3, $03, nRst, $01, nG3, $03, nRst, $01, nG3, $03
	dc.b	nRst, $01, nG3, $03, nRst, $01, nG3, $03, nRst, $01, nG3, $03
	dc.b	nRst, $01, nG3, $03, nRst, $01, nG3, $03, nRst, $01, nG3, $03
	dc.b	nRst, $01, nG3, $03, nRst, $0D, nAb3, $0B, nRst, $01, nC4, $0B
	dc.b	nRst, $01, nG4, $0B, nRst, $01, nF4, $05, nRst, $0D, nEb4, $05
	dc.b	nRst, $0D, nD4, $05, nRst, $07, nB3, $03, nRst, $01, nB3, $03
	dc.b	nRst, $01, nB3, $03, nRst, $01, nB3, $03, nRst, $01, nB3, $03
	dc.b	nRst, $01, nB3, $03, nRst, $01, nB3, $03, nRst, $01, nB3, $03
	dc.b	nRst, $01, nB3, $03, nRst, $01, nG3, $05, nRst, $07, nB3, $05
	dc.b	nRst, $0D, nC4, $05, nRst, $0D, nD4, $05, nRst, $07, nEb4, $03
	dc.b	nRst, $01, nEb4, $03, nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b	nRst, $01, nEb4, $03, nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b	nRst, $01, nEb4, $03, nRst, $01, nEb4, $03, nRst, $01, nD4, $05
	dc.b	nRst, $01, nEb4, $05, nRst, $01, nF4, $03, nRst, $01, nF4, $03
	dc.b	nRst, $01, nF4, $03, nRst, $01, nF4, $03, nRst, $01, nF4, $03
	dc.b	nRst, $01, nF4, $03, nRst, $01, nF4, $03, nRst, $01, nF4, $03
	dc.b	nRst, $01, nF4, $03, nRst, $01, nEb4, $05, nRst, $01, nF4, $05
	dc.b	nRst, $01, nG4, $03, nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b	nRst, $01, nG4, $03, nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b	nRst, $01, nG4, $03, nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b	nRst, $01, nG4, $03, nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b	nRst, $01, nG4, $03, nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b	nRst, $01, nG4, $03, nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b	nRst, $01, nG4, $03, nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b	nRst, $01, nG4, $03, nRst, $2D, nF3, $05, nRst, $01, nG3, $05
	dc.b	nRst, $01, nAb3, $05, nRst, $0D, nBb3, $05, nRst, $0D, nC4, $05
	dc.b	nRst, $2B, nG3, $05, nRst, $01, nAb3, $05, nRst, $01, nBb3, $05
	dc.b	nRst, $0D, nC4, $05, nRst, $0D, nD4, $05, nRst, $07, nAb2, $05
	dc.b	nRst, $01, nC3, $05, nRst, $01, nEb3, $05, nRst, $01, nAb3, $05
	dc.b	nRst, $01, nEb3, $05, nRst, $01, nAb3, $05, nRst, $01, nC4, $05
	dc.b	nRst, $01, nEb4, $05, nRst, $01, nC4, $05, nRst, $01, nEb4, $05
	dc.b	nRst, $01, nAb4, $05, nRst, $01, nC5, $05, nRst, $01, nAb4, $05
	dc.b	nRst, $01, nC5, $05, nRst, $01, nEb5, $05, nRst, $01, nAb5, $05
	dc.b	nRst, $60, nRst, $01
	smpsJump            s3p2_FM2

; FM3 Data
s3p2_FM3:
	smpsSetvoice        $12
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nRst, $0C, nEb3, $06, nRst, $0C, nF3, $06, nRst, $0C, nG3, $06
	dc.b	nRst, $36
	smpsSetvoice        $06
	smpsDetune          $FD
	smpsModSet          $0F, $01, $06, $06
	dc.b	nG3, $02, nRst, $16, nF2, $02, nRst, $04, nG2, $02, nRst, $34
	smpsSetvoice        $12
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nRst, $0C, nG3, $06, nRst, $0C, nF3, $06, nRst, $0C, nEb3, $06
	dc.b	nRst, $2A
	smpsSetvoice        $06
	smpsDetune          $FD
	smpsModSet          $0F, $01, $06, $06
	dc.b	nRst, $30, nD3, $02, nRst, $04, nF3, $02, nRst, $04, nD4, $02
	dc.b	nRst, $04, nC4, $1D, nRst, $01
	smpsSetvoice        $12
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nRst, $0C, nEb3, $06, nRst, $0C, nF3, $06, nRst, $0C, nG3, $06
	dc.b	nRst, $2A
	smpsSetvoice        $06
	smpsDetune          $FD
	smpsModSet          $0F, $01, $06, $06
	dc.b	nRst, $0C, nG3, $02, nRst, $16, nF2, $02, nRst, $04, nG2, $02
	dc.b	nRst, $34
	smpsSetvoice        $12
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nRst, $0C, nG3, $06, nRst, $0C, nF3, $06, nRst, $0C, nEb3, $06
	dc.b	nRst, $2A
	smpsSetvoice        $06
	smpsDetune          $FD
	smpsModSet          $0F, $01, $06, $06
	dc.b	nF3, $02, nRst, $10, nF3, $02, nRst, $10, nG3, $17, nRst, $01
	smpsSetvoice        $04
	smpsDetune          $FF
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb2, $0B, nRst, $01, nG2, $0B, nRst, $01, nEb3, $0B, nRst, $01
	dc.b	nD3, $05, nRst, $0D, nBb2, $05, nRst, $0D, nG2, $3B, nRst, $31
	smpsSetvoice        $04
	smpsDetune          $FF
	smpsModSet          $0F, $01, $06, $06
	dc.b	nRst, $0C, nEb2, $0B, nRst, $01, nG2, $0B, nRst, $01, nEb3, $0B
	dc.b	nRst, $01, nD3, $05, nRst, $0D, nBb2, $05, nRst, $0D, nC3, $3B
	dc.b	nRst, $3D
	smpsSetvoice        $04
	smpsDetune          $FF
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb2, $0B, nRst, $01, nG2, $0B, nRst, $01, nEb3, $0B, nRst, $01
	dc.b	nD3, $05, nRst, $0D, nBb2, $05, nRst, $0D, nG2, $3B, nRst, $3D
	smpsSetvoice        $04
	smpsDetune          $FF
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb2, $0B, nRst, $01, nG2, $0B, nRst, $01, nEb3, $0B, nRst, $01
	dc.b	nD3, $05, nRst, $0D, nBb2, $05, nRst, $0D, nC3, $3B, nRst, $01
	smpsSetvoice        $04
	smpsDetune          $FF
	smpsModSet          $0F, $01, $06, $06
	dc.b	nRst, $0C, nCs4, $05, nRst, $01, nD4, $05, nRst, $07, nD4, $02
	dc.b	nRst, $04, nD4, $02, nRst, $04, nD4, $02, nRst, $04, nD4, $02
	dc.b	nRst, $0A, nEb4, $05, nRst, $01, nD4, $1D, nRst, $0D, nG3, $0B
	dc.b	nRst, $01, nG3, $0B, nRst, $0D, nF3, $05, nRst, $0D, nG3, $05
	dc.b	nRst, $19
	smpsSetvoice        $10
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nC5, $05, nRst, $07, nA4, $05, nRst, $01, nBb4, $05, nRst, $07
	dc.b	nG4, $05, nRst, $07, nC5, $05, nRst, $07, nA4, $05, nRst, $01
	dc.b	nBb4, $05, nRst, $07, nG4, $05, nRst, $1F, nG3, $0B, nRst, $01
	dc.b	nG3, $0B, nRst, $0D, nF3, $05, nRst, $0D, nG3, $05, nRst, $19
	smpsSetvoice        $10
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nC5, $05, nRst, $07, nA4, $05, nRst, $01, nBb4, $05, nRst, $07
	dc.b	nG4, $05, nRst, $07, nC5, $05, nRst, $07, nA4, $05, nRst, $01
	dc.b	nBb4, $05, nRst, $07, nG4, $05, nRst, $1F, nG3, $0B, nRst, $01
	dc.b	nG3, $0B, nRst, $0D, nF3, $05, nRst, $0D, nG3, $05, nRst, $19
	smpsSetvoice        $10
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nC5, $05, nRst, $07, nA4, $05, nRst, $01, nBb4, $05, nRst, $07
	dc.b	nG4, $05, nRst, $07, nC5, $05, nRst, $07, nA4, $05, nRst, $01
	dc.b	nBb4, $05, nRst, $07, nG4, $05, nRst, $1F, nG3, $0B, nRst, $01
	dc.b	nG3, $0B, nRst, $0D, nF3, $05, nRst, $0D, nG3, $05, nRst, $4F
	dc.b	nF3, $02, nRst, $04, nG3, $02, nRst, $04, nA3, $02, nRst, $04
	dc.b	nC4, $02, nRst, $04, nBb3, $02, nRst, $04, nG3, $02, nRst, $04
	dc.b	nA3, $02, nRst, $04
	smpsSetvoice        $12
	smpsDetune          $01
	smpsModSet          $0F, $01, $06, $06
	dc.b	nRst, $0C, nAb3, $0B, nRst, $01, nC4, $0B, nRst, $01, nG4, $0B
	dc.b	nRst, $01, nF4, $05, nRst, $0D, nEb4, $05, nRst, $0D, nD4, $05
	dc.b	nRst, $07, nB3, $03, nRst, $01, nB3, $03, nRst, $01, nB3, $03
	dc.b	nRst, $01, nB3, $03, nRst, $01, nB3, $03, nRst, $01, nB3, $03
	dc.b	nRst, $01, nB3, $03, nRst, $01, nB3, $03, nRst, $01, nB3, $03
	dc.b	nRst, $01, nG3, $05, nRst, $07, nB3, $05, nRst, $0D, nC4, $05
	dc.b	nRst, $0D, nD4, $05, nRst, $07, nEb4, $03, nRst, $01, nEb4, $03
	dc.b	nRst, $01, nEb4, $03, nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b	nRst, $01, nEb4, $03, nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b	nRst, $01, nEb4, $03, nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b	nRst, $01, nEb4, $03, nRst, $01, nD4, $03, nRst, $01, nD4, $03
	dc.b	nRst, $01, nD4, $03, nRst, $01, nD4, $03, nRst, $01, nD4, $03
	dc.b	nRst, $01, nD4, $03, nRst, $01, nD4, $03, nRst, $01, nD4, $03
	dc.b	nRst, $01, nD4, $03, nRst, $01, nD4, $03, nRst, $01, nD4, $03
	dc.b	nRst, $01, nD4, $03, nRst, $01, nC4, $03, nRst, $01, nC4, $03
	dc.b	nRst, $01, nC4, $03, nRst, $01, nC4, $03, nRst, $01, nC4, $03
	dc.b	nRst, $01, nC4, $03, nRst, $01, nC4, $03, nRst, $01, nC4, $03
	dc.b	nRst, $01, nC4, $03, nRst, $01, nC4, $03, nRst, $01, nC4, $03
	dc.b	nRst, $01, nC4, $03, nRst, $01, nG3, $03, nRst, $01, nG3, $03
	dc.b	nRst, $01, nG3, $03, nRst, $01, nG3, $03, nRst, $01, nG3, $03
	dc.b	nRst, $01, nG3, $03, nRst, $01, nG3, $03, nRst, $01, nG3, $03
	dc.b	nRst, $01, nG3, $03, nRst, $01, nG3, $03, nRst, $01, nG3, $03
	dc.b	nRst, $01, nG3, $03, nRst, $0D, nAb3, $0B, nRst, $01, nC4, $0B
	dc.b	nRst, $01, nG4, $0B, nRst, $01, nF4, $05, nRst, $0D, nEb4, $05
	dc.b	nRst, $0D, nD4, $05, nRst, $07, nB3, $03, nRst, $01, nB3, $03
	dc.b	nRst, $01, nB3, $03, nRst, $01, nB3, $03, nRst, $01, nB3, $03
	dc.b	nRst, $01, nB3, $03, nRst, $01, nB3, $03, nRst, $01, nB3, $03
	dc.b	nRst, $01, nB3, $03, nRst, $01, nG3, $05, nRst, $07, nB3, $05
	dc.b	nRst, $0D, nC4, $05, nRst, $0D, nD4, $05, nRst, $07, nEb4, $03
	dc.b	nRst, $01, nEb4, $03, nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b	nRst, $01, nEb4, $03, nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b	nRst, $01, nEb4, $03, nRst, $01, nEb4, $03, nRst, $01, nD4, $05
	dc.b	nRst, $01, nEb4, $05, nRst, $01, nF4, $03, nRst, $01, nF4, $03
	dc.b	nRst, $01, nF4, $03, nRst, $01, nF4, $03, nRst, $01, nF4, $03
	dc.b	nRst, $01, nF4, $03, nRst, $01, nF4, $03, nRst, $01, nF4, $03
	dc.b	nRst, $01, nF4, $03, nRst, $01, nEb4, $05, nRst, $01, nF4, $05
	dc.b	nRst, $01, nG4, $03, nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b	nRst, $01, nG4, $03, nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b	nRst, $01, nG4, $03, nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b	nRst, $01, nG4, $03, nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b	nRst, $01, nG4, $03, nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b	nRst, $01, nG4, $03, nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b	nRst, $01, nG4, $03, nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b	nRst, $01, nG4, $03, nRst, $2D, nD3, $05, nRst, $01, nEb3, $05
	dc.b	nRst, $01, nF3, $05, nRst, $0D, nG3, $05, nRst, $0D, nAb3, $05
	dc.b	nRst, $2B, nEb3, $05, nRst, $01, nF3, $05, nRst, $01, nG3, $05
	dc.b	nRst, $0D, nAb3, $05, nRst, $0D, nBb3, $05, nRst, $07
	smpsSetvoice        $10
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nC5, $23, nRst, $01, nC5, $05, nRst, $01, nD5, $05, nRst, $01
	dc.b	nEb5, $11, nRst, $01, nD5, $11, nRst, $01, nC5, $0B, nRst, $01
	dc.b	nG5, $5F, nRst, $01
	smpsJump            s3p2_FM3

; FM4 Data
s3p2_FM4:
	smpsSetvoice        $16
	smpsDetune          $00
	smpsModSet          $0A, $01, $06, $06
	dc.b	nRst, $0C, nG3, nRst, $06, nG3, $0C, nRst, $06, nG3, $0C, nRst
	dc.b	$06, nG3, $0C, nRst, $06, nG3, $0C, nRst, $60
	smpsSetvoice        $16
	smpsDetune          $00
	smpsModSet          $0A, $01, $06, $06
	dc.b	nRst, $0C, nG3, nRst, $06, nG3, $0C, nRst, nA3, $03, nRst, $09
	dc.b	nG3, $06, nRst, $0C, nF3
	smpsSetvoice        $17
	smpsDetune          $01
	smpsModSet          $0F, $01, $06, $06
	dc.b	nC4, $01, nRst, $05, nC4, $01, nRst, $05, nC5, $01, nRst, $05
	dc.b	nC4, $01, nRst, $05, nBb4, $01, nRst, $05, nC4, $01, nRst, $05
	dc.b	nBb4, $01, nRst, $05, nC5, $01, nRst, $35
	smpsSetvoice        $16
	smpsDetune          $00
	smpsModSet          $0A, $01, $06, $06
	dc.b	nRst, $0C, nG3, nRst, $06, nG3, $0C, nRst, $06, nG3, $0C, nRst
	dc.b	$06, nG3, $0C, nRst, $06, nG3, $0C, nRst, $60
	smpsSetvoice        $16
	smpsDetune          $00
	smpsModSet          $0A, $01, $06, $06
	dc.b	nRst, $0C, nG3, nRst, $06, nG3, $0C, nRst, nA3, $03, nRst, $09
	dc.b	nG3, $06, nRst, $0C, nF3, nRst, $60
	smpsSetvoice        $16
	smpsDetune          $00
	smpsModSet          $0A, $01, $06, $06
	dc.b	nRst, $0C, nEb3, nRst, $06, nEb3, $0C, nRst, $06, nF3, $0C, nRst
	dc.b	$06, nF3, $0C, nRst, $06, nF3, $0C, nRst, nG3, nRst, $06, nG3
	dc.b	$0C, nRst, $06, nF3, $0C, nRst, $06, nF3, $0C, nRst, $06, nF3
	dc.b	$0C, nRst, nEb3, nRst, $06, nEb3, $0C, nRst, $06, nF3, $0C, nRst
	dc.b	$06, nF3, $0C, nRst, $06, nF3, $0C
	smpsSetvoice        $17
	smpsDetune          $01
	smpsModSet          $0F, $01, $06, $06
	dc.b	nRst, nA4, $05, nRst, $01, nBb4, $05, nRst, $07, nBb4, $02, nRst
	dc.b	$04, nBb4, $02, nRst, $04, nBb4, $02, nRst, $04, nBb4, $02, nRst
	dc.b	$0A, nC5, $05, nRst, $01, nBb4, $1D, nRst, $01
	smpsSetvoice        $16
	smpsDetune          $00
	smpsModSet          $0A, $01, $06, $06
	dc.b	nRst, $0C, nEb3, nRst, $06, nEb3, $0C, nRst, $06, nF3, $0C, nRst
	dc.b	$06, nF3, $0C, nRst, $06, nF3, $0C, nRst, nG3, nRst, $06, nG3
	dc.b	$0C, nRst, $06, nF3, $0C, nRst, $06, nF3, $0C, nRst, $06, nF3
	dc.b	$0C, nRst, nEb3, nRst, $06, nEb3, $0C, nRst, $06, nF3, $0C, nRst
	dc.b	$06, nF3, $0C, nRst, $06, nF3, $0C, nRst, $54
	smpsSetvoice        $04
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb4, $05, nRst, $01, nF4, $05, nRst, $01, nG4, $05, nRst, $0D
	dc.b	nC4, $05, nRst, $0D, nBb4, $11, nRst, $07, nBb4, $05, nRst, $07
	dc.b	nBb4, $05, nRst, $07, nG4, $05, nRst, $07, nA4, $05, nRst, $0D
	dc.b	nF4, $05, nRst, $0D, nC4, $29, nRst, $07, nEb4, $05, nRst, $01
	dc.b	nF4, $05, nRst, $01, nG4, $05, nRst, $0D, nC4, $05, nRst, $0D
	dc.b	nBb4, $11, nRst, $07, nBb4, $05, nRst, $07, nBb4, $05, nRst, $07
	dc.b	nC5, $05, nRst, $07, nA4, $2F, nRst, $25, nEb4, $05, nRst, $01
	dc.b	nF4, $05, nRst, $01, nG4, $05, nRst, $0D, nC4, $05, nRst, $0D
	dc.b	nBb4, $0B, nRst, $07, nBb4, $02, nRst, $04, nBb4, $02, nRst, $0A
	dc.b	nBb4, $05, nRst, $07, nG4, $05, nRst, $07, nA4, $05, nRst, $0D
	dc.b	nF4, $05, nRst, $0D, nC4, $23, nRst, $0D, nEb4, $05, nRst, $01
	dc.b	nF4, $05, nRst, $01, nG4, $05, nRst, $0D, nC4, $05, nRst, $0D
	dc.b	nBb4, $11, nRst, $07, nBb4, $05, nRst, $07, nBb4, $05, nRst, $07
	dc.b	nC5, $05, nRst, $07, nA4, $11, nRst, $01, nBb4, $11, nRst, $01
	dc.b	nC5, $23, nRst, $19
	smpsSetvoice        $04
	smpsDetune          $01
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb3, $2F, nRst, $01, nC3, $2F, nRst, $01, nG3, $0F, nRst, $01
	dc.b	nF3, $0F, nRst, $01, nEb3, $0F, nRst, $01, nD3, $0F, nRst, $01
	dc.b	nEb3, $0F, nRst, $01, nF3, $0F, nRst, $01, nG3, $0C
	smpsSetvoice        $04
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nG3, nBb3, $0B, nRst, $01, nEb4, $0B, nRst, $01, nD4, $05, nRst
	dc.b	$0D, nBb3, $05, nRst, $0D, nC4, $05, nRst, $07, nG3, $2F, nRst
	dc.b	$01
	smpsSetvoice        $04
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nBb3, $05, nRst, $0D, nAb3, $05, nRst, $0D, nG3, $05, nRst, $07
	smpsSetvoice        $04
	smpsDetune          $01
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb3, $2F, nRst, $01, nC3, $2F, nRst, $01, nG3, $0F, nRst, $01
	dc.b	nF3, $0F, nRst, $01, nEb3, $0F, nRst, $01, nD3, $0F, nRst, $01
	dc.b	nEb3, $0F, nRst, $01, nF3, $0F, nRst, $01, nG3, $0C
	smpsSetvoice        $04
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nG3, nBb3, $0B, nRst, $01, nEb4, $0B, nRst, $01, nD4, $05, nRst
	dc.b	$0D, nBb3, $05, nRst, $0D, nC4, $05, nRst, $07, nG3, $2F, nRst
	dc.b	$01, nBb3, $05, nRst, $0D, nAb3, $05, nRst, $0D, nG3, $05, nRst
	dc.b	$07
	smpsSetvoice        $06
	smpsDetune          $03
	smpsModSet          $0F, $01, $06, $06
	dc.b	nAb3, $1D, nRst, $07, nAb3, $02, nRst, $04, nBb3, $02, nRst, $04
	dc.b	nC4, $11, nRst, $01, nBb3, $11, nRst, $01, nAb3, $0B, nRst, $01
	dc.b	nBb3, $1D, nRst, $07, nBb3, $02, nRst, $04, nC4, $02, nRst, $04
	dc.b	nD4, $11, nRst, $01, nC4, $11, nRst, $01, nBb3, $0B, nRst, $01
	dc.b	nC4, $2F, nRst, $01, nAb3, $2F, nRst, $01, nEb4, $17, nRst, $01
	dc.b	nD4, $17, nRst, $01, nEb4, $17, nRst, $01, nF4, $17, nRst, $01
	smpsJump            s3p2_FM4

; FM5 Data
s3p2_FM5:
	smpsSetvoice        $16
	smpsDetune          $00
	smpsModSet          $0A, $01, $06, $06
	dc.b	nC3, $0C, nBb3, nC3, $06, nBb3, $0C, nC3, $06, nBb3, $0C, nC3
	dc.b	$06, nBb3, $0C, nC3, $06, nBb3, $60, $0C
	smpsSetvoice        $16
	smpsDetune          $00
	smpsModSet          $0A, $01, $06, $06
	dc.b	nC3, nBb3, nC3, $06, nBb3, $0C, nC3, nC4, $06, nC3, nBb3, $0C
	dc.b	nC3, $06, nA3, $0C
	smpsSetvoice        $17
	smpsDetune          $01
	smpsModSet          $0F, $01, $06, $06
	dc.b	nC4, $06, nC4, nC5, nC4, nBb4, nC4, nBb4, nC5, $36
	smpsSetvoice        $16
	smpsDetune          $00
	smpsModSet          $0A, $01, $06, $06
	dc.b	nC3, $0C, nBb3, nC3, $06, nBb3, $0C, nC3, $06, nBb3, $0C, nC3
	dc.b	$06, nBb3, $0C, nC3, $06, nBb3, $60, $0C
	smpsSetvoice        $16
	smpsDetune          $00
	smpsModSet          $0A, $01, $06, $06
	dc.b	nC3, nBb3, nC3, $06, nBb3, $0C, nC3, nC4, $06, nC3, nBb3, $0C
	dc.b	nC3, $06, nA3, $60, $0C
	smpsSetvoice        $16
	smpsDetune          $00
	smpsModSet          $0A, $01, $06, $06
	dc.b	nC3, nG3, nC3, $06, nG3, $0C, nC3, $06, nA3, $0C, nC3, $06
	dc.b	nA3, $0C, nC3, $06, nA3, $0C, nC3, nBb3, nC3, $06, nBb3, $0C
	dc.b	nC3, $06, nA3, $0C, nC3, $06, nA3, $0C, nC3, $06, nA3, $0C
	dc.b	nC3, nG3, nC3, $06, nG3, $0C, nC3, $06, nA3, $0C, nC3, $06
	dc.b	nA3, $0C, nC3, $06, nA3, $0C
	smpsSetvoice        $04
	smpsDetune          $FF
	smpsModSet          $0F, $01, $06, $06
	dc.b	smpsNoAttack, $0C, nD4, $06, nEb4, $0C, nEb4, $06, nEb4, nEb4, nEb4, $0C
	dc.b	nF4, $06, nEb4, $1E
	smpsSetvoice        $16
	smpsDetune          $00
	smpsModSet          $0A, $01, $06, $06
	dc.b	nC3, $0C, nG3, nC3, $06, nG3, $0C, nC3, $06, nA3, $0C, nC3
	dc.b	$06, nA3, $0C, nC3, $06, nA3, $0C, nC3, nBb3, nC3, $06, nBb3
	dc.b	$0C, nC3, $06, nA3, $0C, nC3, $06, nA3, $0C, nC3, $06, nA3
	dc.b	$0C, nC3, nG3, nC3, $06, nG3, $0C, nC3, $06, nA3, $0C, nC3
	dc.b	$06, nA3, $0C, nC3, $06, nA3, $60, $60, $60, $60, $60, $60
	dc.b	$60, $60, $0C
	smpsSetvoice        $10
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nC5, nA4, $06, nBb4, $0C, nG4, nC5, $42, nAb4, $0C, nC5, nG5
	dc.b	nF5, $12, nEb5, nD5, $0C, nB4, $24, nG4, $0C, nB4, $12, nC5
	dc.b	nD5, $0C, nEb5, $30, nD5, nC5, nG4, $3C, nAb4, $0C, nC5, nG5
	dc.b	nF5, $12, nEb5, nD5, $0C, nB4, $24, nG4, $0C, nB4, $12, nC5
	dc.b	nD5, $0C, nEb5, $24, nD5, $06, nEb5, nF5, $24, nEb5, $06, nF5
	dc.b	nG5, $60, $60
	smpsSetvoice        $06
	smpsDetune          $FD
	smpsModSet          $0F, $01, $06, $06
	dc.b	nD3, $24, nD3, $06, nEb3, nF3, $12, nEb3, nD3, $0C, nEb3, $30
	dc.b	nC3, nG3, $18, nF3, nG3, nAb3
	smpsJump            s3p2_FM5

; PSG1 Data
s3p2_PSG1:
	smpsPSGvoice        sTone_0A
	smpsDetune          $00
	smpsModSet          $0F, $01, $01, $06
	dc.b	nRst, $0C, nG3, nRst, $06, nG3, $0C, nRst, $06, nG3, $0C, nRst
	dc.b	$06, nG3, $0C, nRst, $06, nG3, $0C, nRst, $60
	smpsPSGvoice        sTone_0A
	smpsDetune          $00
	smpsModSet          $0F, $01, $01, $06
	dc.b	nRst, $0C, nG3, nRst, $06, nG3, $0C, nRst, nA3, $03, nRst, $09
	dc.b	nG3, $06, nRst, $0C, nF3
	smpsPSGvoice        sTone_0A
	smpsDetune          $00
	smpsModSet          $0F, $01, $01, $06
	dc.b	nC4, $01, nRst, $05, nC4, $01, nRst, $05, nC5, $01, nRst, $05
	dc.b	nC4, $01, nRst, $05, nBb4, $01, nRst, $05, nC4, $01, nRst, $05
	dc.b	nBb4, $01, nRst, $05, nC5, $01, nRst, $35
	smpsPSGvoice        sTone_0A
	smpsDetune          $00
	smpsModSet          $0F, $01, $01, $06
	dc.b	nRst, $0C, nG3, nRst, $06, nG3, $0C, nRst, $06, nG3, $0C, nRst
	dc.b	$06, nG3, $0C, nRst, $06, nG3, $0C, nRst, $60
	smpsPSGvoice        sTone_0A
	smpsDetune          $00
	smpsModSet          $0F, $01, $01, $06
	dc.b	nRst, $0C, nG3, nRst, $06, nG3, $0C, nRst, nA3, $03, nRst, $09
	dc.b	nG3, $06, nRst, $0C, nF3, nRst, $60
	smpsPSGvoice        sTone_0A
	smpsDetune          $00
	smpsModSet          $0F, $01, $01, $06
	dc.b	nRst, $0C, nEb3, nRst, $06, nEb3, $0C, nRst, $06, nF3, $0C, nRst
	dc.b	$06, nF3, $0C, nRst, $06, nF3, $0C, nRst, nG3, nRst, $06, nG3
	dc.b	$0C, nRst, $06, nF3, $0C, nRst, $06, nF3, $0C, nRst, $06, nF3
	dc.b	$0C, nRst, nEb3, nRst, $06, nEb3, $0C, nRst, $06, nF3, $0C, nRst
	dc.b	$06, nF3, $0C, nRst, $06, nF3, $0C
	smpsPSGvoice        sTone_0A
	smpsDetune          $00
	smpsModSet          $0F, $01, $01, $06
	dc.b	nRst, nA4, $05, nRst, $01, nBb4, $05, nRst, $07, nBb4, $02, nRst
	dc.b	$04, nBb4, $02, nRst, $04, nBb4, $02, nRst, $04, nBb4, $02, nRst
	dc.b	$0A, nC5, $05, nRst, $01, nBb4, $1D, nRst, $60, nRst, nRst, nRst
	dc.b	$01
	smpsPSGvoice        sTone_0A
	smpsDetune          $00
	smpsModSet          $0F, $01, $01, $06
	dc.b	nRst, $0C, nA3, $05, nRst, $01, nB3, $05, nRst, $07, nB3, $02
	dc.b	nRst, $04, nB3, $02, nRst, $04, nB3, $02, nRst, $04, nB3, $02
	dc.b	nRst, $0A, nC4, $05, nRst, $01, nB3, $1D, nRst, $60, nRst, nRst
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, $01
	smpsPSGvoice        sTone_0A
	smpsDetune          $00
	smpsModSet          $0F, $01, $01, $06
	dc.b	nEb5, nRst, $05, nC5, $01, nRst, $05, nAb4, $01, nRst, $05, nEb4
	dc.b	$01, nRst, $05, nC4, $01, nRst, $05, nAb3, $01, nRst, $05, nEb3
	dc.b	$01, nRst, $05, nC3, $01, nRst, $05, nC5, $01, nRst, $05, nAb4
	dc.b	$01, nRst, $05, nEb4, $01, nRst, $05, nC4, $01, nRst, $05, nAb3
	dc.b	$01, nRst, $05, nEb3, $01, nRst, $05, nC3, $01, nRst, $05, nAb2
	dc.b	$01, nRst, $05, nD5, $01, nRst, $05, nBb4, $01, nRst, $05, nF4
	dc.b	$01, nRst, $05, nD4, $01, nRst, $05, nBb3, $01, nRst, $05, nF3
	dc.b	$01, nRst, $05, nD3, $01, nRst, $05, nBb2, $01, nRst, $05, nBb4
	dc.b	$01, nRst, $05, nF4, $01, nRst, $05, nD4, $01, nRst, $05, nBb3
	dc.b	$01, nRst, $05, nF3, $01, nRst, $05, nD3, $01, nRst, $05, nBb2
	dc.b	$01, nRst, $05, nF2, $01, nRst, $60, nRst, nRst, $05
	smpsPSGvoice        sTone_0A
	smpsDetune          $00
	smpsModSet          $0F, $01, $01, $06
	dc.b	nEb5, $01, nRst, $05, nC5, $01, nRst, $05, nAb4, $01, nRst, $05
	dc.b	nEb4, $01, nRst, $05, nC4, $01, nRst, $05, nAb3, $01, nRst, $05
	dc.b	nEb3, $01, nRst, $05, nC3, $01, nRst, $05, nC5, $01, nRst, $05
	dc.b	nAb4, $01, nRst, $05, nEb4, $01, nRst, $05, nC4, $01, nRst, $05
	dc.b	nAb3, $01, nRst, $05, nEb3, $01, nRst, $05, nC3, $01, nRst, $05
	dc.b	nAb2, $01, nRst, $05, nD5, $01, nRst, $05, nBb4, $01, nRst, $05
	dc.b	nF4, $01, nRst, $05, nD4, $01, nRst, $05, nBb3, $01, nRst, $05
	dc.b	nF3, $01, nRst, $05, nD3, $01, nRst, $05, nBb2, $01, nRst, $05
	dc.b	nBb4, $01, nRst, $05, nF4, $01, nRst, $05, nD4, $01, nRst, $05
	dc.b	nBb3, $01, nRst, $05, nF3, $01, nRst, $05, nD3, $01, nRst, $05
	dc.b	nBb2, $01, nRst, $05, nF2, $01, nRst, $60, nRst, nRst, $05
	smpsPSGvoice        sTone_0A
	smpsDetune          $00
	smpsModSet          $0F, $01, $01, $06
	dc.b	nEb4, $0B, nRst, $07, nEb4, $02, nRst, $4C, nF4, $0B, nRst, $07
	dc.b	nF4, $02, nRst, $60, nRst, nRst, $4C
	smpsJump            s3p2_PSG1

; PSG2 Data
s3p2_PSG2:
	smpsPSGvoice        sTone_0A
	smpsDetune          $FF
	smpsModSet          $0F, $01, $01, $06
	dc.b	nC3, $0C, nBb3, nC3, $06, nBb3, $0C, nC3, $06, nBb3, $0C, nC3
	dc.b	$06, nBb3, $0C, nC3, $06, nBb3, $0C, nRst, $60
	smpsPSGvoice        sTone_0A
	smpsDetune          $FF
	smpsModSet          $0F, $01, $01, $06
	dc.b	nC3, $0C, nBb3, nC3, $06, nBb3, $0C, nC3, $06, nRst, nC4, $03
	dc.b	nRst, nC3, $06, nBb3, nRst, nC3, nA3, $0C
	smpsPSGvoice        sTone_0A
	smpsDetune          $00
	smpsModSet          $0F, $01, $01, $06
	dc.b	nC4, $01, nRst, $05, nC4, $01, nRst, $05, nC5, $01, nRst, $05
	dc.b	nC4, $01, nRst, $05, nBb4, $01, nRst, $05, nC4, $01, nRst, $05
	dc.b	nBb4, $01, nRst, $05, nC5, $01, nRst, $35
	smpsPSGvoice        sTone_0A
	smpsDetune          $FF
	smpsModSet          $0F, $01, $01, $06
	dc.b	nC3, $0C, nBb3, nC3, $06, nBb3, $0C, nC3, $06, nBb3, $0C, nC3
	dc.b	$06, nBb3, $0C, nC3, $06, nBb3, $0C, nRst, $60
	smpsPSGvoice        sTone_0A
	smpsDetune          $FF
	smpsModSet          $0F, $01, $01, $06
	dc.b	nC3, $0C, nBb3, nC3, $06, nBb3, $0C, nC3, $06, nRst, nC4, $03
	dc.b	nRst, nC3, $06, nBb3, nRst, nC3, nA3, $0C, nRst, $60
	smpsPSGvoice        sTone_0A
	smpsDetune          $FF
	smpsModSet          $0F, $01, $01, $06
	dc.b	nC3, $0C, nG3, nC3, $06, nG3, $0C, nC3, $06, nA3, $0C, nC3
	dc.b	$06, nA3, $0C, nC3, $06, nA3, $0C, nC3, nBb3, nC3, $06, nBb3
	dc.b	$0C, nC3, $06, nA3, $0C, nC3, $06, nA3, $0C, nC3, $06, nA3
	dc.b	$0C, nC3, nG3, nC3, $06, nG3, $0C, nC3, $06, nA3, $0C, nC3
	dc.b	$06, nA3, $0C, nC3, $06, nA3, $0C
	smpsPSGvoice        sTone_0A
	smpsDetune          $FF
	smpsModSet          $0F, $01, $01, $06
	dc.b	nRst, nD4, $05, nRst, $01, nEb4, $05, nRst, $07, nEb4, $02, nRst
	dc.b	$04, nEb4, $02, nRst, $04, nEb4, $02, nRst, $04, nEb4, $02, nRst
	dc.b	$0A, nF4, $05, nRst, $01, nEb4, $1D, nRst, $60, nRst, nRst, nRst
	dc.b	$01
	smpsPSGvoice        sTone_0A
	smpsDetune          $FF
	smpsModSet          $0F, $01, $01, $06
	dc.b	nRst, $0C, nCs4, $05, nRst, $01, nD4, $05, nRst, $07, nD4, $02
	dc.b	nRst, $04, nD4, $02, nRst, $04, nD4, $02, nRst, $04, nD4, $02
	dc.b	nRst, $0A, nEb4, $05, nRst, $01, nD4, $1D, nRst, $60, nRst, nRst
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, $01
	smpsPSGvoice        sTone_0A
	smpsDetune          $00
	smpsModSet          $0F, $01, $01, $06
	dc.b	nEb5, nRst, $05, nC5, $01, nRst, $05, nAb4, $01, nRst, $05, nEb4
	dc.b	$01, nRst, $05, nC4, $01, nRst, $05, nAb3, $01, nRst, $05, nEb3
	dc.b	$01, nRst, $05, nC3, $01, nRst, $05, nC5, $01, nRst, $05, nAb4
	dc.b	$01, nRst, $05, nEb4, $01, nRst, $05, nC4, $01, nRst, $05, nAb3
	dc.b	$01, nRst, $05, nEb3, $01, nRst, $05, nC3, $01, nRst, $05, nAb2
	dc.b	$01, nRst, $05, nD5, $01, nRst, $05, nBb4, $01, nRst, $05, nF4
	dc.b	$01, nRst, $05, nD4, $01, nRst, $05, nBb3, $01, nRst, $05, nF3
	dc.b	$01, nRst, $05, nD3, $01, nRst, $05, nBb2, $01, nRst, $05, nBb4
	dc.b	$01, nRst, $05, nF4, $01, nRst, $05, nD4, $01, nRst, $05, nBb3
	dc.b	$01, nRst, $05, nF3, $01, nRst, $05, nD3, $01, nRst, $05, nBb2
	dc.b	$01, nRst, $05, nF2, $01, nRst, $60, nRst, nRst, $05
	smpsPSGvoice        sTone_0A
	smpsDetune          $00
	smpsModSet          $0F, $01, $01, $06
	dc.b	nEb5, $01, nRst, $05, nC5, $01, nRst, $05, nAb4, $01, nRst, $05
	dc.b	nEb4, $01, nRst, $05, nC4, $01, nRst, $05, nAb3, $01, nRst, $05
	dc.b	nEb3, $01, nRst, $05, nC3, $01, nRst, $05, nC5, $01, nRst, $05
	dc.b	nAb4, $01, nRst, $05, nEb4, $01, nRst, $05, nC4, $01, nRst, $05
	dc.b	nAb3, $01, nRst, $05, nEb3, $01, nRst, $05, nC3, $01, nRst, $05
	dc.b	nAb2, $01, nRst, $05, nD5, $01, nRst, $05, nBb4, $01, nRst, $05
	dc.b	nF4, $01, nRst, $05, nD4, $01, nRst, $05, nBb3, $01, nRst, $05
	dc.b	nF3, $01, nRst, $05, nD3, $01, nRst, $05, nBb2, $01, nRst, $05
	dc.b	nBb4, $01, nRst, $05, nF4, $01, nRst, $05, nD4, $01, nRst, $05
	dc.b	nBb3, $01, nRst, $05, nF3, $01, nRst, $05, nD3, $01, nRst, $05
	dc.b	nBb2, $01, nRst, $05, nF2, $01, nRst, $60, nRst, nRst, $05
	smpsPSGvoice        sTone_0A
	smpsDetune          $FF
	smpsModSet          $0F, $01, $01, $06
	dc.b	nC4, $0B, nRst, $07, nC4, $02, nRst, $4C, nD4, $0B, nRst, $07
	dc.b	nD4, $02, nRst, $60, nRst, nRst, $4C
	smpsJump            s3p2_PSG2

; PSG3 Data
s3p2_PSG3:
	smpsPSGvoice        sTone_02
	smpsPSGform         $E7

s3p2_Loop00:
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C
	smpsLoop            $01, $1C, s3p2_Loop00
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, $3C

s3p2_Loop01:
	dc.b	nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, $0C
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1
	dc.b	$06, nMaxPSG1
	smpsLoop            $01, $03, s3p2_Loop01
	dc.b	nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, $60, $06

s3p2_Loop02:
	dc.b	nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, $0C
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1
	dc.b	$06, nMaxPSG1
	smpsLoop            $01, $04, s3p2_Loop02

s3p2_Loop03:
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06
	dc.b	nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C
	smpsLoop            $01, $0A, s3p2_Loop03
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06
	dc.b	nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $60, $0C
	smpsJump            s3p2_Loop00

s3p2_Voices:
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

