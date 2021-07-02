s3p1_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     s3p1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $25

	smpsHeaderDAC       s3p1_DAC
	smpsHeaderFM        s3p1_FM1,	$18, $12
	smpsHeaderFM        s3p1_FM2,	$0C, $19
	smpsHeaderFM        s3p1_FM3,	$0C, $19
	smpsHeaderFM        s3p1_FM4,	$0C, $19
	smpsHeaderFM        s3p1_FM5,	$0C, $19
	smpsHeaderPSG       s3p1_PSG1,	$F4, $04, $00, sTone_0C
	smpsHeaderPSG       s3p1_PSG2,	$F4, $04, $00, sTone_0C
	smpsHeaderPSG       s3p1_PSG3,	$00, $04, $00, sTone_0C

; DAC Data
s3p1_DAC:
	dc.b	dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dMidTomS3, $06, dLowMetalHit, dKickS3, $0C
	dc.b	dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dHighTom, $06, dMetalHit, dKickS3, $0C, dHighMetalHit, $06
	dc.b	dLowTomS3, dKickS3, $0C, dMidTomS3, $06, dLowMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3
	dc.b	$0C, dHighTom, $06, dMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dMidTomS3
	dc.b	$06, dLowMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dHighTom, $06, dMetalHit
	dc.b	dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dMidTomS3, $06, dLowMetalHit, dKickS3, $0C
	dc.b	dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dSnareS3, dKickS3, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C
	dc.b	dMidTomS3, $06, dLowMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dHighTom, $06
	dc.b	dMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dMidTomS3, $06, dLowMetalHit, dKickS3
	dc.b	$0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dHighTom, $06, dMetalHit, dKickS3, $0C, dHighMetalHit
	dc.b	$06, dLowTomS3, dKickS3, $0C, dMidTomS3, $06, dLowMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3
	dc.b	dKickS3, $0C, dHighTom, $06, dMetalHit, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dKickS3, dHighTom, dMidTomS3
	dc.b	dLowTomS3, dKickS3, dHigherMetalHit, $09, dHigherMetalHit, $02, dHigherMetalHit, $01, dHigherMetalHit, $06, dHigherMetalHit, dHigherMetalHit
	dc.b	$12, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dMidTomS3, $06, dLowMetalHit, dKickS3
	dc.b	$0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dHighTom, $06, dMetalHit, dKickS3, $0C, dHighMetalHit
	dc.b	$06, dLowTomS3, dKickS3, $0C, dMidTomS3, $06, dLowMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3
	dc.b	dKickS3, $0C, dHighTom, $06, dMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C
	dc.b	dMidTomS3, $06, dLowMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dHighTom, $06
	dc.b	dMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dMidTomS3, $06, dLowMetalHit, dKickS3
	dc.b	$0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dHighTom, $06, dMetalHit, dKickS3, $0C, dHighMetalHit
	dc.b	$06, dLowTomS3, dKickS3, $0C, dMidTomS3, $06, dLowMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3
	dc.b	dKickS3, $0C, dHighTom, $06, dMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C
	dc.b	dMidTomS3, $06, dLowMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dHighTom, $06
	dc.b	dMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dMidTomS3, $06, dLowMetalHit, dKickS3
	dc.b	$0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dHighTom, $06, dMetalHit, dKickS3, $18, dKickS3
	dc.b	$17, dSnareS3, $01, dSnareS3, $06, dSnareS3, $0C, dSnareS3, dSnareS3, $06, dSnareS3, $0C
	dc.b	dKickS3, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dMidTomS3, $06, dLowMetalHit, dKickS3, $0C, dHighMetalHit
	dc.b	$06, dLowTomS3, dKickS3, $0C, dHighTom, $06, dMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3
	dc.b	dKickS3, $0C, dMidTomS3, $06, dLowMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C
	dc.b	dSnareS3, dKickS3, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dMidTomS3, $06, dLowMetalHit, dKickS3, $0C
	dc.b	dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dHighTom, $06, dMetalHit, dKickS3, $0C, dHighMetalHit, $06
	dc.b	dLowTomS3, dKickS3, $0C, dMidTomS3, $06, dLowMetalHit, dKickS3, dHigherMetalHit, dHighMetalHit, dLowTomS3, dKickS3, $0C
	dc.b	dSnareS3, $06, dSnareS3, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dMidTomS3, $06
	dc.b	dLowMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dHighTom, $06, dMetalHit, dKickS3
	dc.b	$0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dMidTomS3, $06, dLowMetalHit, dKickS3, $0C, dHighMetalHit
	dc.b	$06, dLowTomS3, dKickS3, $0C, dSnareS3, dKickS3, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dMidTomS3
	dc.b	$06, dLowMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dHighTom, $06, dMetalHit
	dc.b	dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dMidTomS3, $06, dLowMetalHit, dSnareS3, dSnareS3
	dc.b	dSnareS3, $0C, dSnareS3, $06, dSnareS3, dSnareS3, $0C, dKickS3, dHighMetalHit, $06, dLowTomS3, dKickS3
	dc.b	$0C, dMidTomS3, $06, dLowMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dSnareS3, $0C, dHighTom
	dc.b	$06, dMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dMidTomS3, $06, dLowMetalHit
	dc.b	dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dSnareS3, $0C, dHighTom, $06, dMetalHit, dKickS3, $0C
	dc.b	dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dMidTomS3, $06, dLowMetalHit, dKickS3, $0C, dHighMetalHit, $06
	dc.b	dLowTomS3, dSnareS3, $0C, dHighTom, $06, dMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3
	dc.b	$0C, dMidTomS3, $06, dLowMetalHit, dKickS3, dSnareS3, dHighMetalHit, dSnareS3, dSnareS3, $0C, dSnareS3, $06
	dc.b	dMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dMidTomS3, $06, dLowMetalHit, dKickS3
	dc.b	$0C, dHighMetalHit, $06, dLowTomS3, dSnareS3, $0C, dHighTom, $06, dMetalHit, dKickS3, $0C, dHighMetalHit
	dc.b	$06, dLowTomS3, dKickS3, $0C, dMidTomS3, $06, dLowMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3
	dc.b	dSnareS3, $0C, dHighTom, $06, dMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C
	dc.b	dMidTomS3, $06, dLowMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dSnareS3, $0C, dHighTom, $06
	dc.b	dMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dMidTomS3, $06, dLowMetalHit, dKickS3
	dc.b	$0C, dHighMetalHit, $06, dLowTomS3, dSnareS3, $0C, dSnareS3, $06, dMetalHit, dKickS3, $0C, dHighMetalHit
	dc.b	$06, dLowTomS3, dKickS3, $0C, dMidTomS3, $06, dLowMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3
	dc.b	dSnareS3, $0C, dHighTom, $06, dMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C
	dc.b	dMidTomS3, $06, dLowMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dSnareS3, $0C, dHighTom, $06
	dc.b	dMetalHit, dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dMidTomS3, $06, dLowMetalHit, dKickS3
	dc.b	$0C, dHighMetalHit, $06, dLowTomS3, dSnareS3, $0C, dHighTom, $06, dMetalHit, $03, dMidMetalHit, $02
	dc.b	dMidMetalHit, $01, dHigherMetalHit, $06, dHigherMetalHit, $0C, dHigherMetalHit, dLowTomS3, $06, dSnareS3, dKickS3, $0C
	dc.b	dKickS3, dKickS3, $03, dKickS3, dSnareS3, $06, nRst, $12
	smpsJump            s3p1_DAC

; FM1 Data
s3p1_FM1:
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nC1, $0B, nRst, $01
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nRst, nC2, $04, nRst, $07, nBb1, $0B, nRst, $01, nA1, $05, nRst
	dc.b	$01, nBb1, $05, nRst, $07, nA1, $05, nRst, $01, nBb1, $05, nRst
	dc.b	$07, nBb1, $05, nRst, $07, nC2, $0B, nRst, $01
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nC1, $0B, nRst, $01
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nBb1, nC2, $04, nRst, $07, nBb1, $0B, nRst, $01, nA1, $05, nRst
	dc.b	$01, nBb1, $05, nRst, $07
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nBb0, $05, nRst, $07, nBb0, $05, nRst, $07, nBb0, $05, nRst, $01
	dc.b	nB0, $0B, nRst, $01, nC1, $0B, nRst, $01
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nB1, nC2, $04, nRst, $07, nBb1, $0B, nRst, $01, nA1, $05, nRst
	dc.b	$01, nBb1, $05, nRst, $07, nA1, $05, nRst, $01, nBb1, $05, nRst
	dc.b	$07, nBb1, $05, nRst, $08, nC2, $0A, nRst, $01
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nC1, $0B, nRst, $01
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nC2, $05, nRst, $07, nBb1, $0B, nRst, $01, nA1, $05, nRst, $01
	dc.b	nBb1, $05, nRst, $07
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nBb0, $05, nRst, $07, nBb0, $05, nRst, $07, nBb0, $05, nRst, $01
	dc.b	nB0, $0B, nRst, $01
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nC1, $0B, nRst, $01
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nRst, nC2, $04, nRst, $07, nBb1, $0B, nRst, $01, nA1, $05, nRst
	dc.b	$01, nBb1, $05, nRst, $07, nA1, $05, nRst, $01, nBb1, $05, nRst
	dc.b	$07, nBb1, $05, nRst, $07, nC2, $0B, nRst, $01
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nC1, $0B, nRst, $01
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nBb1, nC2, $04, nRst, $07, nBb1, $0B, nRst, $01, nA1, $05, nRst
	dc.b	$01, nBb1, $05, nRst, $07
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nBb0, $05, nRst, $07, nBb0, $05, nRst, $07, nBb0, $05, nRst, $01
	dc.b	nB0, $0B, nRst, $01, nC1, $0B, nRst, $01
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nB1, nC2, $04, nRst, $07, nBb1, $0B, nRst, $01, nA1, $05, nRst
	dc.b	$01, nBb1, $05, nRst, $07, nA1, $05, nRst, $01, nBb1, $05, nRst
	dc.b	$07, nBb1, $05, nRst, $08, nC2, $0A, nRst, $01
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nG0, $05, nRst, $01, nG0, $05, nRst, $01, nG0, $05, nRst, $01
	dc.b	nG0, $05, nRst, $1F, nF0, $05, nRst, $01, nA0, $0B, nRst, $01
	dc.b	nBb0, $0B, nRst, $01, nB0, $0B, nRst, $01, nC1, $16, nRst, $02
	dc.b	nC1, $10, nRst, $02, nC1, $10, nRst, $02, nG0, $0A, nRst, $02
	dc.b	nC1, $0A, nRst, $02, nG0, $0A, nRst, $02, nF0, $16, nRst, $02
	dc.b	nF0, $10, nRst, $02, nF0, $0A, nRst, $02, nF0, $04, nRst, $02
	dc.b	nA0, $0A, nRst, $02, nBb0, $0A, nRst, $02, nB0, $0A, nRst, $02
	dc.b	nC1, $16, nRst, $02, nC1, $10, nRst, $02, nC1, $10, nRst, $02
	dc.b	nG0, $0A, nRst, $02, nC1, $0A, nRst, $02, nG0, $0A, nRst, $02
	dc.b	nF0, $16, nRst, $02, nF0, $10, nRst, $02, nF0, $0A, nRst, $02
	dc.b	nF0, $04, nRst, $02, nA0, $0A, nRst, $02, nBb0, $0A, nRst, $02
	dc.b	nB0, $0A, nRst, $02, nC1, $16, nRst, $02, nC1, $10, nRst, $02
	dc.b	nC1, $10, nRst, $02, nG0, $0A, nRst, $02, nC1, $0A, nRst, $02
	dc.b	nG0, $0A, nRst, $02, nF0, $16, nRst, $02, nF0, $10, nRst, $02
	dc.b	nF0, $0A, nRst, $02, nF0, $04, nRst, $02, nA0, $0A, nRst, $02
	dc.b	nBb0, $0A, nRst, $02, nB0, $0A, nRst, $02, nC1, $16, nRst, $02
	dc.b	nC1, $10, nRst, $02, nC1, $10, nRst, $02, nG0, $0A, nRst, $02
	dc.b	nC1, $0A, nRst, $02, nG0, $0A, nRst, $02, nF0, $16, nRst, $02
	dc.b	nF0, $10, nRst, $02, nF0, $0A, nRst, $02, nF0, $04, nRst, $02
	dc.b	nA0, $0A, nRst, $02, nBb0, $0A, nRst, $02, nB0, $0A, nRst, $02
	dc.b	nC1, $16, nRst, $02, nC1, $10, nRst, $02, nC1, $10, nRst, $02
	dc.b	nG0, $0A, nRst, $02, nC1, $0A, nRst, $02, nG0, $0A, nRst, $02
	dc.b	nF0, $16, nRst, $02, nF0, $10, nRst, $02, nF0, $0A, nRst, $02
	dc.b	nF0, $04, nRst, $02, nA0, $0A, nRst, $02, nBb0, $0A, nRst, $02
	dc.b	nB0, $0A, nRst, $02, nC1, $16, nRst, $02, nC1, $10, nRst, $02
	dc.b	nC1, $10, nRst, $02, nG0, $0A, nRst, $02, nC1, $0A, nRst, $02
	dc.b	nG0, $0A, nRst, $02, nF0, $16, nRst, $02, nF0, $10, nRst, $02
	dc.b	nF0, $0A, nRst, $02, nF0, $04, nRst, $02, nA0, $0A, nRst, $02
	dc.b	nBb0, $0A, nRst, $02, nB0, $0A, nRst, $02, nC1, $16, nRst, $02
	dc.b	nC1, $10, nRst, $02, nC1, $10, nRst, $02, nG0, $0A, nRst, $02
	dc.b	nC1, $0A, nRst, $02, nG0, $0A, nRst, $02, nF0, $16, nRst, $02
	dc.b	nF0, $10, nRst, $02, nF0, $0A, nRst, $02, nF0, $04, nRst, $02
	dc.b	nA0, $0A, nRst, $02, nBb0, $0A, nRst, $02, nB0, $0A, nRst, $02
	dc.b	nC1, $16, nRst, $02, nC1, $10, nRst, $02, nC1, $10, nRst, $02
	dc.b	nG0, $0A, nRst, $02, nC1, $0A, nRst, $02, nG0, $0A, nRst, $02
	dc.b	nF0, $16, nRst, $02, nF0, $10, nRst, $02, nF0, $0A, nRst, $02
	dc.b	nF0, $04, nRst, $02, nC1, $04, nRst, $02, nF1, $04, nRst, $02
	dc.b	nF1, $04, nRst, $02, nC1, $04, nRst, $02, nF0, $0A, nRst, $02
	dc.b	nE0, $16, nRst, $02, nE0, $10, nRst, $02, nA0, $10, nRst, $02
	dc.b	nA0, $0A, nRst, $02, nE1, $0A, nRst, $02, nA0, $0A, nRst, $02
	dc.b	nD1, $16, nRst, $02, nD1, $10, nRst, $02, nG0, $0A, nRst, $02
	dc.b	nG0, $04, nRst, $02, nG1, $0A, nRst, $02, nG1, $0A, nRst, $02
	dc.b	nF1, $0A, nRst, $02, nE1, $16, nRst, $02, nE1, $10, nRst, $02
	dc.b	nA0, $10, nRst, $02, nA0, $0A, nRst, $02, nE1, $0A, nRst, $02
	dc.b	nA0, $0A, nRst, $02, nD1, $16, nRst, $02, nD1, $10, nRst, $02
	dc.b	nG0, $0A, nRst, $02, nG0, $04, nRst, $02, nG1, $0A, nRst, $02
	dc.b	nG1, $0A, nRst, $02, nF1, $0A, nRst, $02, nE1, $16, nRst, $02
	dc.b	nE1, $10, nRst, $02, nA0, $10, nRst, $02, nA0, $0A, nRst, $02
	dc.b	nE1, $0A, nRst, $02, nA0, $0A, nRst, $02, nD1, $16, nRst, $02
	dc.b	nD1, $10, nRst, $02, nG0, $0A, nRst, $02, nG0, $04, nRst, $02
	dc.b	nG1, $0A, nRst, $02, nG1, $0A, nRst, $02, nF1, $0A, nRst, $02
	dc.b	nE1, $16, nRst, $02, nE1, $10, nRst, $02, nA0, $10, nRst, $02
	dc.b	nA0, $0A, nRst, $02, nE1, $0A, nRst, $02, nA0, $0A, nRst, $02
	dc.b	nD1, $16, nRst, $02, nD1, $10, nRst, $02, nG0, $0A, nRst, $02
	dc.b	nG0, $04, nRst, $02, nG1, $0A, nRst, $02, nFs1, $0A, nRst, $02
	dc.b	nFs1, $0A, nRst, $02, nF1, $16, nRst, $02, nF1, $10, nRst, $02
	dc.b	nC1, $10, nRst, $02, nC1, $0A, nRst, $02, nF1, $0A, nRst, $02
	dc.b	nF1, $0A, nRst, $02, nD1, $16, nRst, $02, nD1, $10, nRst, $02
	dc.b	nA0, $10, nRst, $02, nA0, $0A, nRst, $02, nD1, $0A, nRst, $02
	dc.b	nD1, $0A, nRst, $02, nBb0, $16, nRst, $02, nBb0, $10, nRst, $02
	dc.b	nF0, $10, nRst, $02, nF0, $0A, nRst, $02, nBb0, $0A, nRst, $02
	dc.b	nBb0, $0A, nRst, $02, nG0, $16, nRst, $02, nG0, $10, nRst, $02
	dc.b	nB0, $10, nRst, $02, nB0, $0A, nRst, $02, nC1, $0A, nRst, $02
	dc.b	nD1, $0A, nRst, $02
	smpsJump            s3p1_FM1

; FM2 Data
s3p1_FM2:
	smpsSetvoice        $16
	smpsDetune          $FB
	smpsModSet          $03, $01, $02, $05
	smpsPan             panRight, $00
	dc.b	nG3, $05, nRst, $0D, nG3, $05, nRst, $19, nG3, $05, nRst, $0D
	dc.b	nG3, $05, nRst, $19, nF3, $05, nRst, $0D, nF3, $05, nRst, $07
	smpsSetvoice        $0D
	smpsDetune          $FE
	smpsModSet          $0C, $01, $06, $05
	smpsPan             panLeft, $00
	dc.b	nD3, $04, nRst, $02, nE3, $04, nRst, $02, nF3, $04, nRst, $08
	smpsSetvoice        $16
	smpsDetune          $FB
	smpsModSet          $03, $01, $02, $05
	smpsPan             panRight, $00
	dc.b	nF3, $05, nRst, $07, nF3, $05, nRst, $07, nF3, $05, nRst, $01
	dc.b	nFs3, $05, nRst, $07, nG3, $05, nRst, $0D, nG3, $05, nRst, $19
	dc.b	nG3, $05, nRst, $0D, nG3, $05, nRst, $19, nF3, $05, nRst, $0D
	dc.b	nF3, $05, nRst, $19
	smpsSetvoice        $0D
	smpsDetune          $FE
	smpsModSet          $0C, $01, $06, $05
	smpsPan             panLeft, $00
	dc.b	nF3, $02, nRst, $04, nBb3, $02, nRst, $04, nF4, $02, nRst, $04
	dc.b	nE4, $1D, nRst, $01
	smpsSetvoice        $16
	smpsDetune          $FB
	smpsModSet          $03, $01, $02, $05
	smpsPan             panRight, $00
	dc.b	nG3, $05, nRst, $0D, nG3, $05, nRst, $19, nG3, $05, nRst, $0D
	dc.b	nG3, $05, nRst, $19, nF3, $05, nRst, $0D, nF3, $05, nRst, $07
	smpsSetvoice        $0D
	smpsDetune          $FE
	smpsModSet          $0C, $01, $06, $05
	smpsPan             panLeft, $00
	dc.b	nD3, $04, nRst, $02, nE3, $04, nRst, $02, nF3, $04, nRst, $08
	smpsSetvoice        $16
	smpsDetune          $FB
	smpsModSet          $03, $01, $02, $05
	smpsPan             panRight, $00
	dc.b	nF3, $05, nRst, $07, nF3, $05, nRst, $07, nF3, $05, nRst, $01
	dc.b	nFs3, $05, nRst, $07, nG3, $05, nRst, $0D, nG3, $05, nRst, $19
	dc.b	nG3, $05, nRst, $0D, nG3, $05, nRst, $19
	smpsSetvoice        $0D
	smpsDetune          $FE
	smpsModSet          $0C, $01, $06, $05
	smpsPan             panLeft, $00
	dc.b	nC4, $05, nRst, $01, nC4, $05, nRst, $01, nC4, $05, nRst, $01
	dc.b	nC4, $05, nRst, $55
	smpsSetvoice        $17
	smpsDetune          $FB
	smpsModSet          $0F, $01, $03, $05
	smpsPan             panLeft, $00
	dc.b	nD3, $02, nRst, $0A, nE3, $02, nRst, $16, nD3, $11, nRst, $01
	dc.b	nE3, $02, nRst, $28, nA4, $05, nRst, $01, nBb4, $05, nRst, $07
	dc.b	nBb4, $02, nRst, $04, nBb4, $02, nRst, $04, nBb4, $02, nRst, $04
	dc.b	nBb4, $02, nRst, $0A, nA4, $23, nRst, $0D, nD3, $02, nRst, $0A
	dc.b	nE3, $02, nRst, $16, nD3, $11, nRst, $01, nE3, $02, nRst, $28
	dc.b	nA4, $05, nRst, $01, nBb4, $05, nRst, $07, nBb4, $02, nRst, $04
	dc.b	nBb4, $02, nRst, $04, nBb4, $02, nRst, $04, nBb4, $02, nRst, $0A
	dc.b	nC5, $05, nRst, $01, nBb4, $1D, nRst, $0D, nD3, $02, nRst, $0A
	dc.b	nE3, $02, nRst, $16, nD3, $11, nRst, $01, nE3, $02, nRst, $28
	dc.b	nA4, $05, nRst, $01, nBb4, $05, nRst, $07, nBb4, $02, nRst, $04
	dc.b	nBb4, $02, nRst, $04, nBb4, $02, nRst, $04, nBb4, $02, nRst, $0A
	dc.b	nA4, $23, nRst, $0D, nD3, $02, nRst, $0A, nE3, $02, nRst, $16
	dc.b	nD3, $11, nRst, $01, nE3, $02, nRst, $28, nA4, $05, nRst, $01
	dc.b	nBb4, $05, nRst, $07, nBb4, $02, nRst, $04, nBb4, $02, nRst, $04
	dc.b	nBb4, $02, nRst, $04, nBb4, $02, nRst, $0A, nC5, $05, nRst, $01
	dc.b	nBb4, $1D, nRst, $0D
	smpsSetvoice        $16
	smpsDetune          $FB
	smpsModSet          $03, $01, $02, $05
	smpsPan             panRight, $00
	dc.b	nE3, $0B, nRst, $01, nE3, $0B, nRst, $0D, nD3, $05, nRst, $0D
	dc.b	nE3, $05, nRst, $19, nC2, $05, nRst, $01, nG2, $05, nRst, $01
	dc.b	nC3, $05, nRst, $01, nBb2, $05, nRst, $07, nBb2, $05, nRst, $07
	dc.b	nA2, $05, nRst, $07, nA2, $05, nRst, $07, nF2, $05, nRst, $01
	dc.b	nC2, $05, nRst, $1F, nE3, $0B, nRst, $01, nE3, $0B, nRst, $0D
	dc.b	nD3, $05, nRst, $0D, nE3, $05, nRst, $19, nC2, $05, nRst, $01
	dc.b	nG2, $05, nRst, $01, nC3, $05, nRst, $01, nBb2, $05, nRst, $07
	dc.b	nBb2, $05, nRst, $07, nA2, $05, nRst, $07, nA2, $05, nRst, $07
	dc.b	nBb2, $05, nRst, $01, nC3, $05, nRst, $1F, nE3, $0B, nRst, $01
	dc.b	nE3, $0B, nRst, $0D, nD3, $05, nRst, $0D, nE3, $05, nRst, $19
	dc.b	nC2, $05, nRst, $01, nG2, $05, nRst, $01, nC3, $05, nRst, $01
	dc.b	nBb2, $05, nRst, $07, nBb2, $05, nRst, $07, nA2, $05, nRst, $07
	dc.b	nA2, $05, nRst, $07, nF2, $05, nRst, $01, nC2, $05, nRst, $1F
	dc.b	nE3, $0B, nRst, $01, nE3, $0B, nRst, $0D, nD3, $05, nRst, $0D
	dc.b	nE3, $05, nRst, $19, nC2, $05, nRst, $01, nG2, $05, nRst, $01
	dc.b	nC3, $05, nRst, $01, nBb2, $05, nRst, $07, nBb2, $05, nRst, $07
	dc.b	nA2, $05, nRst, $07
	smpsSetvoice        $0D
	smpsDetune          $FE
	smpsModSet          $0C, $01, $06, $05
	smpsPan             panLeft, $00
	dc.b	nA3, $02, nRst, $04, nBb3, $02, nRst, $04, nC4, $02, nRst, $04
	dc.b	nEb4, $02, nRst, $04, nD4, $02, nRst, $04, nBb3, $02, nRst, $04
	dc.b	nC4, $02, nRst, $10
	smpsSetvoice        $18
	smpsDetune          $05
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panLeft, $00
	dc.b	nG3, $0B, nRst, $01, nC4, $0B, nRst, $01, nG4, $0B, nRst, $01
	dc.b	nF4, $05, nRst, $0D, nE4, $05, nRst, $0D, nC4, $05, nRst, $07
	dc.b	nA3, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nA3, $03, nRst, $01, nA3, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nA3, $03, nRst, $01, nA3, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nA3, $03, nRst, $01, nA3, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nA3, $03, nRst, $01, nA3, $03, nRst, $01
	smpsFMAlterVol      $F8
	dc.b	nC4, $05, nRst, $07, nB3, $05, nRst, $0D, nC4, $05, nRst, $0D
	dc.b	nD4, $05, nRst, $07, nE4, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nE4, $03, nRst, $01, nE4, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nE4, $03, nRst, $01, nE4, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nE4, $03, nRst, $01, nE4, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nE4, $03, nRst, $01, nE4, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nE4, $03, nRst, $01, nE4, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nE4, $03, nRst, $01
	smpsFMAlterVol      $F4
	dc.b	nA3, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nA3, $03, nRst, $01, nA3, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nA3, $03, nRst, $01, nA3, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nA3, $03, nRst, $01, nA3, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nA3, $03, nRst, $01, nA3, $03, nRst, $01
	smpsFMAlterVol      $F8
	dc.b	nA3, $03, nRst, $09, nF4, $05, nRst, $0D, nE4, $05, nRst, $0D
	dc.b	nD4, $05, nRst, $07, nB3, $05, nRst, $0D, nA3, $05, nRst, $0D
	dc.b	nG3, $05, nRst, $13, nG3, $0B, nRst, $01, nC4, $0B, nRst, $01
	dc.b	nG4, $0B, nRst, $01, nF4, $05, nRst, $0D, nE4, $05, nRst, $0D
	dc.b	nC4, $05, nRst, $07, nA3, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nA3, $03, nRst, $01, nA3, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nA3, $03, nRst, $01, nA3, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nA3, $03, nRst, $01, nA3, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nA3, $03, nRst, $01, nA3, $03, nRst, $01
	smpsFMAlterVol      $F8
	dc.b	nC4, $05, nRst, $07, nB3, $05, nRst, $0D, nC4, $05, nRst, $0D
	dc.b	nD4, $05, nRst, $07, nG4, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nG4, $03, nRst, $01, nG4, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nG4, $03, nRst, $01, nG4, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nG4, $03, nRst, $01, nG4, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nG4, $03, nRst, $01, nG4, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nG4, $03, nRst, $01, nG4, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nG4, $03, nRst, $01
	smpsFMAlterVol      $F4
	dc.b	nE4, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nE4, $03, nRst, $01, nE4, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nE4, $03, nRst, $01, nE4, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nE4, $03, nRst, $01, nE4, $03, nRst, $01
	smpsFMAlterVol      $02
	dc.b	nE4, $03, nRst, $01, nE4, $03, nRst, $01
	smpsFMAlterVol      $F8
	dc.b	nA3, $03, nRst, $09, nF4, $05, nRst, $0D, nE4, $05, nRst, $0D
	dc.b	nD4, $05, nRst, $07, nB3, $05, nRst, $0D, nA3, $05, nRst, $0D
	dc.b	nG3, $05, nRst, $07
	smpsFMAlterVol      $F8
	smpsSetvoice        $17
	smpsDetune          $FB
	smpsModSet          $0F, $01, $03, $05
	smpsPan             panLeft, $00
	dc.b	nE4, $0B, nRst, $07, nE4, $03, nRst, $0F
	smpsSetvoice        $16
	smpsDetune          $FB
	smpsModSet          $03, $01, $02, $05
	smpsPan             panRight, $00
	dc.b	nF3, $05, nRst, $01, nG3, $05, nRst, $01, nA3, $05, nRst, $0D
	dc.b	nB3, $05, nRst, $0D, nC4, $05, nRst, $07
	smpsSetvoice        $17
	smpsDetune          $FB
	smpsModSet          $0F, $01, $03, $05
	smpsPan             panLeft, $00
	dc.b	nE4, $0B, nRst, $07, nE4, $03, nRst, $0F
	smpsSetvoice        $16
	smpsDetune          $FB
	smpsModSet          $03, $01, $02, $05
	smpsPan             panRight, $00
	dc.b	nF3, $05, nRst, $01, nG3, $05, nRst, $01, nA3, $05, nRst, $0D
	dc.b	nB3, $05, nRst, $0D, nC4, $05, nRst, $07, nF2, $05, nRst, $01
	dc.b	nA2, $05, nRst, $01, nD3, $05, nRst, $01, nF3, $05, nRst, $01
	dc.b	nD3, $05, nRst, $01, nF3, $05, nRst, $01, nA3, $05, nRst, $01
	dc.b	nD4, $05, nRst, $01, nA3, $05, nRst, $01, nD4, $05, nRst, $01
	dc.b	nF4, $05, nRst, $01, nA4, $05, nRst, $01, nF4, $05, nRst, $01
	dc.b	nA4, $05, nRst, $01, nD5, $05, nRst, $01, nF5, $05, nRst, $01
	smpsSetvoice        $11
	smpsDetune          $FB
	smpsModSet          $0F, $01, $06, $06
	smpsPan             panRight, $00
	dc.b	nC4, $17, nRst, $01, nB3, $17, nRst, $01, nC4, $17, nRst, $01
	dc.b	nD4, $17, nRst, $01
	smpsFMAlterVol      $08
	smpsJump            s3p1_FM2

; FM3 Data
s3p1_FM3:
	smpsSetvoice        $16
	smpsDetune          $05
	smpsModSet          $03, $01, $02, $05
	smpsPan             panLeft, $00
	dc.b	nE3, $05, nRst, $0D, nE3, $05, nRst, $19, nE3, $05, nRst, $0D
	dc.b	nE3, $05, nRst, $19, nD3, $05, nRst, $0D, nD3, $05, nRst, $07
	smpsSetvoice        $11
	smpsDetune          $FB
	smpsModSet          $0F, $01, $06, $06
	smpsPan             panRight, $00
	dc.b	nBb2, $04, nRst, $02, nC3, $04, nRst, $02, nD3, $04, nRst, $08
	smpsSetvoice        $16
	smpsDetune          $05
	smpsModSet          $03, $01, $02, $05
	smpsPan             panLeft, $00
	dc.b	nD3, $05, nRst, $07, nD3, $05, nRst, $07, nD3, $05, nRst, $01
	dc.b	nEb3, $05, nRst, $07, nE3, $05, nRst, $0D, nE3, $05, nRst, $19
	dc.b	nE3, $05, nRst, $0D, nE3, $05, nRst, $19, nD3, $05, nRst, $0D
	dc.b	nD3, $05, nRst, $19
	smpsSetvoice        $0D
	smpsDetune          $02
	smpsModSet          $0C, $01, $FA, $05
	smpsPan             panRight, $00
	dc.b	nD3, $02, nRst, $04, nF3, $02, nRst, $04, nD4, $02, nRst, $04
	dc.b	nC4, $18, nRst, $06
	smpsSetvoice        $16
	smpsDetune          $05
	smpsModSet          $03, $01, $02, $05
	smpsPan             panLeft, $00
	dc.b	nE3, $05, nRst, $0D, nE3, $05, nRst, $19, nE3, $05, nRst, $0D
	dc.b	nE3, $05, nRst, $19, nD3, $05, nRst, $0D, nD3, $05, nRst, $07
	smpsSetvoice        $11
	smpsDetune          $FB
	smpsModSet          $0F, $01, $06, $06
	smpsPan             panRight, $00
	dc.b	nBb2, $04, nRst, $02, nC3, $04, nRst, $02, nD3, $04, nRst, $08
	smpsSetvoice        $16
	smpsDetune          $05
	smpsModSet          $03, $01, $02, $05
	smpsPan             panLeft, $00
	dc.b	nD3, $05, nRst, $07, nD3, $05, nRst, $07, nD3, $05, nRst, $01
	dc.b	nEb3, $05, nRst, $07, nE3, $05, nRst, $0D, nE3, $05, nRst, $19
	dc.b	nE3, $05, nRst, $0D, nE3, $05, nRst, $19
	smpsSetvoice        $11
	smpsDetune          $FB
	smpsModSet          $0F, $01, $06, $06
	smpsPan             panRight, $00
	dc.b	nA3, $05, nRst, $01, nA3, $05, nRst, $01, nA3, $05, nRst, $01
	dc.b	nA3, $05, nRst, $28
	smpsFMAlterVol      $04
	smpsSetvoice        $0D
	smpsDetune          $05
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nF2, $0B, nRst, $01, nBb2, $0B, nRst, $01, nF3, $0B, nRst, $01
	dc.b	nE3, $05, nRst, $0D, nC3, $05, nRst, $0D, nBb2, $3B, nRst, $3D
	dc.b	nF2, $0B, nRst, $01, nBb2, $0B, nRst, $01, nF3, $0B, nRst, $01
	dc.b	nE3, $05, nRst, $0D, nC3, $05, nRst, $0D, nD3, $3B, nRst, $3D
	dc.b	nF2, $0B, nRst, $01, nBb2, $0B, nRst, $01, nF3, $0B, nRst, $01
	dc.b	nE3, $05, nRst, $0D, nC3, $05, nRst, $0D, nBb2, $3B, nRst, $3D
	dc.b	nF2, $0B, nRst, $01, nBb2, $0B, nRst, $01, nF3, $0B, nRst, $01
	dc.b	nE3, $05, nRst, $0D, nC3, $05, nRst, $0D, nD3, $3B, nRst, $5E
	smpsFMAlterVol      $FC
	dc.b	nRst, $0C
	smpsSetvoice        $16
	smpsDetune          $05
	smpsModSet          $03, $01, $02, $05
	smpsPan             panLeft, $00
	dc.b	nC3, $0B, nRst, $01, nC3, $0B, nRst, $0D, nBb2, $05, nRst, $0D
	dc.b	nC3, $05, nRst, $19
	smpsFMAlterVol      $08
	smpsSetvoice        $10
	smpsDetune          $05
	smpsModSet          $0F, $01, $FA, $06
	smpsPan             panLeft, $00
	dc.b	nC5, $0C, nA4, $06, nBb4, $0C, nG4, nC5, nA4, $06, nBb4, $0C
	dc.b	nG4, $24
	smpsFMAlterVol      $F8
	smpsSetvoice        $16
	smpsDetune          $05
	smpsModSet          $03, $01, $02, $05
	smpsPan             panLeft, $00
	dc.b	nC3, $0B, nRst, $01, nC3, $0B, nRst, $0D, nBb2, $05, nRst, $0D
	dc.b	nC3, $05, nRst, $19
	smpsFMAlterVol      $08
	smpsSetvoice        $10
	smpsDetune          $05
	smpsModSet          $0F, $01, $FA, $06
	smpsPan             panLeft, $00
	dc.b	nC5, $0C, nA4, $06, nBb4, $0C, nG4, nC5, nA4, $06, nBb4, $0C
	dc.b	nG4, $24
	smpsFMAlterVol      $F8
	smpsSetvoice        $16
	smpsDetune          $05
	smpsModSet          $03, $01, $02, $05
	smpsPan             panLeft, $00
	dc.b	nC3, $0B, nRst, $01, nC3, $0B, nRst, $0D, nBb2, $05, nRst, $0D
	dc.b	nC3, $05, nRst, $19
	smpsFMAlterVol      $08
	smpsSetvoice        $10
	smpsDetune          $05
	smpsModSet          $0F, $01, $FA, $06
	smpsPan             panLeft, $00
	dc.b	nC5, $0C, nA4, $06, nBb4, $0C, nG4, nC5, nA4, $06, nBb4, $0C
	dc.b	nG4, $24
	smpsFMAlterVol      $F8
	smpsSetvoice        $16
	smpsDetune          $05
	smpsModSet          $03, $01, $02, $05
	smpsPan             panLeft, $00
	dc.b	nC3, $0B, nRst, $01, nC3, $0B, nRst, $0D, nBb2, $05, nRst, $0D
	dc.b	nC3, $05, nRst, $19
	smpsFMAlterVol      $08
	smpsSetvoice        $10
	smpsDetune          $05
	smpsModSet          $0F, $01, $FA, $06
	smpsPan             panLeft, $00
	dc.b	nC5, $0C, nA4, $06, nBb4, $0C, nG4, nC5, $05, nRst, $07
	smpsFMAlterVol      $F8
	smpsSetvoice        $11
	smpsDetune          $FB
	smpsModSet          $0F, $01, $06, $06
	smpsPan             panRight, $00
	dc.b	nF3, $02, nRst, $04, nG3, $02, nRst, $04, nA3, $02, nRst, $04
	dc.b	nC4, $02, nRst, $04, nBb3, $02, nRst, $04, nG3, $02, nRst, $04
	dc.b	nA3, $02, nRst, $04
	smpsSetvoice        $10
	smpsDetune          $05
	smpsModSet          $0F, $01, $FA, $06
	smpsPan             panLeft, $00
	dc.b	nRst, $0C, nG4, $0B, nRst, $01, nC5, $0B, nRst, $01, nG5, $0B
	dc.b	nRst, $01, nF5, $11, nRst, $01, nE5, $11, nRst, $01, nC5, $0B
	dc.b	nRst, $01, nA4, $23, nRst, $01, nC5, $0B, nRst, $01, nB4, $11
	dc.b	nRst, $01, nC5, $11, nRst, $01, nD5, $0B, nRst, $01, nE5, $2F
	dc.b	nRst, $01, nA4, $23, nRst, $01, nA4, $0B, nRst, $01, nF5, $11
	dc.b	nRst, $01, nE5, $11, nRst, $01, nD5, $0B, nRst, $01, nB4, $11
	dc.b	nRst, $01, nA4, $11, nRst, $01, nG4, $17, nRst, $01, nG4, $0B
	dc.b	nRst, $01, nC5, $0B, nRst, $01, nG5, $0B, nRst, $01, nF5, $11
	dc.b	nRst, $01, nE5, $11, nRst, $01, nC5, $0B, nRst, $01, nA4, $23
	dc.b	nRst, $01, nC5, $0B, nRst, $01, nB4, $11, nRst, $01, nC5, $11
	dc.b	nRst, $01, nD5, $0B, nRst, $01, nG5, $2F, nRst, $01, nE5, $23
	dc.b	nRst, $01, nA4, $0B, nRst, $01, nF5, $11, nRst, $01, nE5, $11
	dc.b	nRst, $01, nD5, $0B, nRst, $01, nB4, $11, nRst, $01, nA4, $11
	dc.b	nRst, $01, nG4, $0B, nRst, $01
	smpsSetvoice        $17
	smpsDetune          $05
	smpsModSet          $0F, $01, $03, $05
	smpsPan             panRight, $00
	dc.b	nC4, $0B, nRst, $07, nC4, $03, nRst, $0F
	smpsSetvoice        $16
	smpsDetune          $05
	smpsModSet          $03, $01, $02, $05
	smpsPan             panLeft, $00
	dc.b	nD3, $05, nRst, $01, nE3, $05, nRst, $01, nF3, $05, nRst, $0D
	dc.b	nG3, $05, nRst, $0D, nA3, $05, nRst, $07
	smpsSetvoice        $17
	smpsDetune          $05
	smpsModSet          $0F, $01, $03, $05
	smpsPan             panRight, $00
	dc.b	nC4, $0B, nRst, $07, nC4, $03, nRst, $0F
	smpsSetvoice        $16
	smpsDetune          $05
	smpsModSet          $03, $01, $02, $05
	smpsPan             panLeft, $00
	dc.b	nD3, $05, nRst, $01, nE3, $05, nRst, $01, nF3, $05, nRst, $0D
	dc.b	nG3, $05, nRst, $0D, nA3, $05, nRst, $07
	smpsSetvoice        $10
	smpsDetune          $05
	smpsModSet          $0F, $01, $FA, $06
	smpsPan             panLeft, $00
	dc.b	nD5, $24, nD5, $06, nE5, nF5, $12, nE5, nD5, $0C, nG5, $60
	smpsJump            s3p1_FM3

; FM4 Data
s3p1_FM4:
	smpsSetvoice        $18
	smpsDetune          $05
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panLeft, $00
	dc.b	nG3, $04, nE3
	smpsFMAlterVol      $06
	dc.b	nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3, nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3, nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3
	smpsFMAlterVol      $FA
	dc.b	nG3, nE3
	smpsFMAlterVol      $FE
	dc.b	nG3, nE3
	smpsFMAlterVol      $FC
	dc.b	nA3, nF3
	smpsFMAlterVol      $06
	dc.b	nA3, nF3
	smpsFMAlterVol      $02
	dc.b	nA3, nF3
	smpsFMAlterVol      $F8
	smpsSetvoice        $18
	smpsDetune          $05
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panLeft, $00
	dc.b	nBb3, nG3
	smpsFMAlterVol      $04
	dc.b	nBb3, nG3
	smpsFMAlterVol      $02
	dc.b	nBb3, nG3
	smpsFMAlterVol      $02
	dc.b	nBb3, nG3
	smpsFMAlterVol      $02
	dc.b	nBb3, nG3, nBb3, nG3
	smpsFMAlterVol      $FE
	dc.b	nBb3, nG3
	smpsFMAlterVol      $FE
	dc.b	nBb3
	smpsFMAlterVol      $FE
	dc.b	nG3
	smpsFMAlterVol      $FE
	dc.b	nBb3, nG3
	smpsFMAlterVol      $FE
	dc.b	nA3, nF3
	smpsFMAlterVol      $04
	dc.b	nA3, nF3
	smpsFMAlterVol      $02
	dc.b	nA3, nF3
	smpsFMAlterVol      $FE
	dc.b	nA3
	smpsFMAlterVol      $FE
	dc.b	nBb3
	smpsFMAlterVol      $02
	dc.b	nA3
	smpsFMAlterVol      $FE
	dc.b	nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3
	smpsFMAlterVol      $FE
	dc.b	nG3, nE3
	smpsFMAlterVol      $FE
	dc.b	nG3, nE3
	smpsFMAlterVol      $FE
	dc.b	nG3, nE3
	smpsFMAlterVol      $FE
	dc.b	nG3, nE3, nG3, nE3
	smpsFMAlterVol      $FE
	dc.b	nG3
	smpsSetvoice        $17
	smpsDetune          $FB
	smpsModSet          $0F, $01, $03, $05
	smpsPan             panLeft, $00
	dc.b	nC4, $06, nC4, nC5, nC4, nBb4, nC4, nBb4, nC5
	smpsSetvoice        $0D
	smpsDetune          $FE
	smpsModSet          $0C, $01, $06, $05
	smpsPan             panLeft, $00
	dc.b	nF3, nBb3, nF4, nE4, $1E
	smpsSetvoice        $18
	smpsDetune          $05
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panLeft, $00
	dc.b	nG3, $04, nE3
	smpsFMAlterVol      $06
	dc.b	nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3, nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3, nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3
	smpsFMAlterVol      $FA
	dc.b	nG3, nE3
	smpsFMAlterVol      $FE
	dc.b	nG3, nE3
	smpsFMAlterVol      $FC
	dc.b	nA3, nF3
	smpsFMAlterVol      $06
	dc.b	nA3, nF3
	smpsFMAlterVol      $02
	dc.b	nA3, nF3
	smpsFMAlterVol      $F8
	dc.b	nBb3, nG3
	smpsFMAlterVol      $04
	dc.b	nBb3, nG3
	smpsFMAlterVol      $02
	dc.b	nBb3, nG3
	smpsFMAlterVol      $02
	dc.b	nBb3, nG3
	smpsFMAlterVol      $02
	dc.b	nBb3, nG3, nBb3, nG3
	smpsFMAlterVol      $FE
	dc.b	nBb3, nG3
	smpsFMAlterVol      $FE
	dc.b	nBb3
	smpsFMAlterVol      $FE
	dc.b	nG3
	smpsFMAlterVol      $FE
	dc.b	nBb3, nG3
	smpsFMAlterVol      $FE
	dc.b	nA3, nF3
	smpsFMAlterVol      $04
	dc.b	nA3, nF3
	smpsFMAlterVol      $02
	dc.b	nA3, nF3
	smpsFMAlterVol      $FE
	dc.b	nA3
	smpsFMAlterVol      $FE
	dc.b	nBb3
	smpsFMAlterVol      $02
	dc.b	nA3
	smpsFMAlterVol      $FE
	dc.b	nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3
	smpsFMAlterVol      $FE
	dc.b	nG3, nE3
	smpsFMAlterVol      $FE
	dc.b	nG3, nE3
	smpsFMAlterVol      $FE
	dc.b	nG3, nE3
	smpsFMAlterVol      $FE
	dc.b	nG3, nE3, nG3, nE3
	smpsFMAlterVol      $FE
	dc.b	nG3, nC5, $06, nC5, nC5, nC5, nRst, $24
	smpsFMAlterVol      $FA
	smpsSetvoice        $0D
	smpsDetune          $05
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nF2, $0B, nRst, $01, nBb2, $0B, nRst, $01, nF3, $0B, nRst, $01
	dc.b	nE3, $05, nRst, $0D, nC3, $05, nRst, $0D, nBb2, $3B, nRst, $3D
	dc.b	nF2, $0B, nRst, $01, nBb2, $0B, nRst, $01, nF3, $0B, nRst, $01
	dc.b	nE3, $05, nRst, $0D, nC3, $05, nRst, $0D, nD3, $3B, nRst, $3D
	dc.b	nF2, $0B, nRst, $01, nBb2, $0B, nRst, $01, nF3, $0B, nRst, $01
	dc.b	nE3, $05, nRst, $0D, nC3, $05, nRst, $0D, nBb2, $3B, nRst, $3D
	dc.b	nF2, $0B, nRst, $01, nBb2, $0B, nRst, $01, nF3, $0B, nRst, $01
	dc.b	nE3, $05, nRst, $0D, nC3, $05, nRst, $0D, nD3, $3B, nRst, $49
	smpsFMAlterVol      $06
	dc.b	nRst, $0C
	smpsSetvoice        $0F
	smpsDetune          $FB
	smpsModSet          $0F, $01, $06, $06
	smpsPan             panRight, $00
	dc.b	nE4, $05, nRst, $01, nF4, $05, nRst, $01, nG4, $05, nRst, $0D
	dc.b	nC4, $05, nRst, $0D, nBb4, $11, nRst, $07, nBb4, $05, nRst, $07
	dc.b	nBb4, $05, nRst, $07, nG4, $05, nRst, $07, nA4, $05, nRst, $0D
	dc.b	nF4, $05, nRst, $0D, nC4, $29, nRst, $07, nE4, $05, nRst, $01
	dc.b	nF4, $05, nRst, $01, nG4, $05, nRst, $0D, nC4, $05, nRst, $0D
	dc.b	nBb4, $11, nRst, $07, nBb4, $05, nRst, $07, nBb4, $05, nRst, $07
	dc.b	nC5, $05, nRst, $07, nA4, $2F, nRst, $25, nE4, $05, nRst, $01
	dc.b	nF4, $05, nRst, $01, nG4, $05, nRst, $0D, nC4, $05, nRst, $0D
	dc.b	nBb4, $0B, nRst, $07, nBb4, $02, nRst, $04, nBb4, $02, nRst, $0A
	dc.b	nBb4, $05, nRst, $07, nG4, $05, nRst, $07, nA4, $05, nRst, $0D
	dc.b	nF4, $05, nRst, $0D, nC4, $23, nRst, $0D, nE4, $05, nRst, $01
	dc.b	nF4, $05, nRst, $01, nG4, $05, nRst, $0D, nC4, $05, nRst, $0D
	dc.b	nBb4, $11, nRst, $07, nBb4, $05, nRst, $07, nBb4, $05, nRst, $07
	dc.b	nC5, $05, nRst, $07, nA4, $11, nRst, $01, nBb4, $11, nRst, $01
	dc.b	nC5, $23, nRst, $19
	smpsSetvoice        $0D
	smpsDetune          $05
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nG2, $2F, nRst, $01, nE2, $2F, nRst, $01, nA2, $0F, nRst, $01
	dc.b	nG2, $0F, nRst, $01, nF2, $0F, nRst, $01, nE2, $0F, nRst, $01
	dc.b	nF2, $0F, nRst, $01, nA2, $0F, nRst, $01
	smpsSetvoice        $0D
	smpsDetune          $05
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nG2, $5F, nRst, $07, nA3, $2F, nRst, $01, nD4, $05, nRst, $0D
	dc.b	nC4, $05, nRst, $0D, nB3, $05, nRst, $01, nG2, $2F, nRst, $01
	dc.b	nE2, $2F, nRst, $01
	smpsSetvoice        $0D
	smpsDetune          $05
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nA2, $0F, nRst, $01, nG2, $0F, nRst, $01, nF2, $0F, nRst, $01
	dc.b	nE2, $0F, nRst, $01, nF2, $0F, nRst, $01, nA2, $0F, nRst, $01
	dc.b	nG2, $5F, nRst, $01, nA3, $2F, nRst, $01, nD4, $05, nRst, $0D
	dc.b	nC4, $05, nRst, $0D, nB3, $05, nRst, $07
	smpsSetvoice        $0F
	smpsDetune          $FB
	smpsModSet          $0F, $01, $06, $06
	smpsPan             panRight, $00
	dc.b	nRst, $60, nF3, $1D, nRst, $07, nF3, $02, nRst, $04, nG3, $02
	dc.b	nRst, $04, nA3, $11, nRst, $01, nG3, $11, nRst, $01, nF3, $0B
	dc.b	nRst, $01
	smpsSetvoice        $11
	smpsDetune          $FB
	smpsModSet          $0F, $01, $06, $06
	smpsPan             panRight, $00
	dc.b	nA3, $2F, nRst, $01, nF3, $2F, nRst, $01, nA3, $17, nRst, $01
	dc.b	nG3, $17, nRst, $01, nA3, $17, nRst, $01, nB3, $17, nRst, $01
	smpsJump            s3p1_FM4

; FM5 Data
s3p1_FM5:
	smpsSetvoice        $18
	smpsDetune          $FB
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nG3, $04, nE3
	smpsFMAlterVol      $06
	dc.b	nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3, nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3, nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3
	smpsFMAlterVol      $FA
	dc.b	nG3, nE3
	smpsFMAlterVol      $FE
	dc.b	nG3, nE3
	smpsFMAlterVol      $FC
	dc.b	nA3, nF3
	smpsFMAlterVol      $06
	dc.b	nA3, nF3
	smpsFMAlterVol      $02
	dc.b	nA3, nF3
	smpsFMAlterVol      $F8
	dc.b	nBb3, nG3
	smpsFMAlterVol      $04
	dc.b	nBb3, nG3
	smpsFMAlterVol      $02
	dc.b	nBb3, nG3
	smpsFMAlterVol      $02
	dc.b	nBb3, nG3
	smpsFMAlterVol      $02
	dc.b	nBb3, nG3, nBb3, nG3
	smpsFMAlterVol      $FE
	dc.b	nBb3, nG3
	smpsFMAlterVol      $FE
	dc.b	nBb3
	smpsFMAlterVol      $FE
	dc.b	nG3
	smpsFMAlterVol      $FE
	dc.b	nBb3, nG3
	smpsFMAlterVol      $FE
	dc.b	nA3, nF3
	smpsFMAlterVol      $04
	dc.b	nA3, nF3
	smpsFMAlterVol      $02
	dc.b	nA3, nF3
	smpsFMAlterVol      $FE
	dc.b	nA3
	smpsFMAlterVol      $FE
	dc.b	nBb3
	smpsFMAlterVol      $02
	dc.b	nA3
	smpsFMAlterVol      $FE
	dc.b	nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3
	smpsFMAlterVol      $FE
	dc.b	nG3, nE3
	smpsFMAlterVol      $FE
	dc.b	nG3, nE3
	smpsFMAlterVol      $FE
	dc.b	nG3, nE3
	smpsFMAlterVol      $FE
	dc.b	nG3, nE3, nG3, nE3
	smpsFMAlterVol      $FE
	dc.b	nG3
	smpsSetvoice        $17
	smpsDetune          $05
	smpsModSet          $0F, $01, $03, $05
	smpsPan             panRight, $00
	dc.b	nC4, $06, nC4, nC5, nC4, nBb4, nC4, nBb4, nC5
	smpsSetvoice        $11
	smpsDetune          $FB
	smpsModSet          $0F, $01, $06, $06
	smpsPan             panRight, $00
	dc.b	nD3, nF3, nD4, nC4, $1E
	smpsSetvoice        $18
	smpsDetune          $FB
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nG3, $04, nE3
	smpsFMAlterVol      $06
	dc.b	nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3, nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3, nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3
	smpsFMAlterVol      $FA
	dc.b	nG3, nE3
	smpsFMAlterVol      $FE
	dc.b	nG3, nE3
	smpsFMAlterVol      $FC
	dc.b	nA3, nF3
	smpsFMAlterVol      $06
	dc.b	nA3, nF3
	smpsFMAlterVol      $02
	dc.b	nA3, nF3
	smpsFMAlterVol      $F8
	dc.b	nBb3, nG3
	smpsFMAlterVol      $04
	dc.b	nBb3, nG3
	smpsFMAlterVol      $02
	dc.b	nBb3, nG3
	smpsFMAlterVol      $02
	dc.b	nBb3, nG3
	smpsFMAlterVol      $02
	dc.b	nBb3, nG3, nBb3, nG3
	smpsFMAlterVol      $FE
	dc.b	nBb3, nG3
	smpsFMAlterVol      $FE
	dc.b	nBb3
	smpsFMAlterVol      $FE
	dc.b	nG3
	smpsFMAlterVol      $FE
	dc.b	nBb3, nG3
	smpsFMAlterVol      $FE
	dc.b	nA3, nF3
	smpsFMAlterVol      $04
	dc.b	nA3, nF3
	smpsFMAlterVol      $02
	dc.b	nA3, nF3
	smpsFMAlterVol      $FE
	dc.b	nA3
	smpsFMAlterVol      $FE
	dc.b	nBb3
	smpsFMAlterVol      $02
	dc.b	nA3
	smpsFMAlterVol      $FE
	dc.b	nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3
	smpsFMAlterVol      $02
	dc.b	nG3, nE3
	smpsFMAlterVol      $FE
	dc.b	nG3, nE3
	smpsFMAlterVol      $FE
	dc.b	nG3, nE3
	smpsFMAlterVol      $FE
	dc.b	nG3, nE3
	smpsFMAlterVol      $FE
	dc.b	nG3, nE3, nG3, nE3
	smpsFMAlterVol      $FE
	dc.b	nG3
	smpsSetvoice        $11
	smpsDetune          $FB
	smpsModSet          $0F, $01, $06, $06
	smpsPan             panRight, $00
	dc.b	nA3, $06, nA3, nA3, nA3, nRst, $24
	smpsFMAlterVol      $FA
	smpsSetvoice        $0D
	smpsDetune          $FB
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panLeft, $00
	dc.b	nF2, $0B, nRst, $01, nBb2, $0B, nRst, $01, nF3, $0B, nRst, $01
	dc.b	nE3, $05, nRst, $0D, nC3, $05, nRst, $0D, nBb2, $3B, nRst, $3D
	smpsSetvoice        $0D
	smpsDetune          $FB
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panLeft, $00
	dc.b	nF2, $0B, nRst, $01, nBb2, $0B, nRst, $01, nF3, $0B, nRst, $01
	dc.b	nE3, $05, nRst, $0D, nC3, $05, nRst, $0D, nBb2, $3B, nRst, $3D
	smpsSetvoice        $0D
	smpsDetune          $FB
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panLeft, $00
	dc.b	nF2, $0B, nRst, $01, nBb2, $0B, nRst, $01, nF3, $0B, nRst, $01
	dc.b	nE3, $05, nRst, $0D, nC3, $05, nRst, $0D, nBb2, $3B, nRst, $3D
	smpsSetvoice        $0D
	smpsDetune          $FB
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panLeft, $00
	dc.b	nF2, $0B, nRst, $01, nBb2, $0B, nRst, $01, nF3, $0B, nRst, $01
	dc.b	nE3, $05, nRst, $0D, nC3, $05, nRst, $0D, nD3, $3B, nRst, $49
	smpsFMAlterVol      $06
	dc.b	nRst, $0C
	smpsFMAlterVol      $F8
	smpsSetvoice        $0F
	smpsDetune          $05
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nE4, $05, nRst, $01, nF4, $05, nRst, $01, nG4, $05, nRst, $0D
	dc.b	nC4, $05, nRst, $0D, nBb4, $11, nRst, $07, nBb4, $05, nRst, $07
	dc.b	nBb4, $05, nRst, $07, nG4, $05, nRst, $07, nA4, $05, nRst, $0D
	dc.b	nF4, $05, nRst, $0D, nC4, $29, nRst, $07, nE4, $05, nRst, $01
	dc.b	nF4, $05, nRst, $01, nG4, $05, nRst, $0D, nC4, $05, nRst, $0D
	dc.b	nBb4, $11, nRst, $07, nBb4, $05, nRst, $07, nBb4, $05, nRst, $07
	dc.b	nC5, $05, nRst, $07, nA4, $2F, nRst, $25, nE4, $05, nRst, $01
	dc.b	nF4, $05, nRst, $01, nG4, $05, nRst, $0D, nC4, $05, nRst, $0D
	dc.b	nBb4, $0B, nRst, $07, nBb4, $02, nRst, $04, nBb4, $02, nRst, $0A
	dc.b	nBb4, $05, nRst, $07, nG4, $05, nRst, $07, nA4, $05, nRst, $0D
	dc.b	nF4, $05, nRst, $0D, nC4, $23, nRst, $0D, nE4, $05, nRst, $01
	dc.b	nF4, $05, nRst, $01, nG4, $05, nRst, $0D, nC4, $05, nRst, $0D
	dc.b	nBb4, $11, nRst, $07, nBb4, $05, nRst, $07, nBb4, $05, nRst, $07
	dc.b	nC5, $05, nRst, $07, nA4, $11, nRst, $01, nBb4, $11, nRst, $01
	dc.b	nC5, $23, nRst, $1F
	smpsFMAlterVol      $08
	smpsSetvoice        $0D
	smpsDetune          $05
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nG2, $2F, nRst, $01, nE2, $2F, nRst, $01, nA2, $0F, nRst, $01
	dc.b	nG2, $0F, nRst, $01, nF2, $0F, nRst, $01, nE2, $0F, nRst, $01
	dc.b	nF2, $0F, nRst, $01, nA2, $0F, nRst, $07
	smpsFMAlterVol      $FE
	smpsSetvoice        $0F
	smpsDetune          $05
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nG3, $0B, nRst, $01, nD4, $0B, nRst, $01, nG4, $0B, nRst, $01
	smpsSetvoice        $0F
	smpsDetune          $05
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nF4, $05, nRst, $0D, nE4, $05, nRst, $0D, nC4, $05, nRst, $07
	dc.b	nA3, $2F, nRst, $01, nD4, $05, nRst, $0D, nC4, $05, nRst, $0D
	dc.b	nB3, $05, nRst, $0D
	smpsFMAlterVol      $02
	smpsSetvoice        $0D
	smpsDetune          $05
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nG2, $2F, nRst, $01, nE2, $2F, nRst, $01, nA2, $0F, nRst, $01
	dc.b	nG2, $0F, nRst, $01, nF2, $0F, nRst, $01, nE2, $0F, nRst, $01
	dc.b	nF2, $0F, nRst, $01, nA2, $0F, nRst, $07
	smpsFMAlterVol      $FE
	smpsSetvoice        $0F
	smpsDetune          $05
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nG3, $0B, nRst, $01, nD4, $0B, nRst, $01, nG4, $0B, nRst, $01
	dc.b	nF4, $05, nRst, $0D, nE4, $05, nRst, $0D, nC4, $05, nRst, $07
	dc.b	nA3, $2F, nRst, $01, nD4, $05, nRst, $0D, nC4, $05, nRst, $0D
	dc.b	nB3, $05, nRst, $07
	smpsSetvoice        $0D
	smpsDetune          $FE
	smpsModSet          $0C, $01, $06, $05
	smpsPan             panLeft, $00
	dc.b	nA3, $1D, nRst, $07, nA3, $02, nRst, $04, nB3, $02, nRst, $04
	dc.b	nC4, $11, nRst, $01, nB3, $11, nRst, $01, nA3, $0B, nRst, $01
	dc.b	nC4, $1D, nRst, $07, nC4, $02, nRst, $04, nD4, $02, nRst, $04
	dc.b	nE4, $11, nRst, $01, nD4, $11, nRst, $01, nC4, $0B, nRst, $01
	dc.b	nD4, $2F, nRst, $01, nA3, $2F, nRst, $01, nC4, $17, nRst, $01
	dc.b	nB3, $17, nRst, $01, nC4, $17, nRst, $01, nD4, $17, nRst, $01
	smpsFMAlterVol      $02
	smpsJump            s3p1_FM5

; PSG1 Data
s3p1_PSG1:
	dc.b	nG3, $05, nRst, $0D, nG3, $05, nRst, $19, nG3, $05, nRst, $0D
	dc.b	nG3, $05, nRst, $19, nF3, $05, nRst, $0D, nF3, $05, nRst, $07
	dc.b	nD3, $02, nRst, $04, nE3, $02, nRst, $04, nF3, $02, nRst, $0A
	dc.b	nF3, $05, nRst, $07, nF3, $05, nRst, $07, nF3, $05, nRst, $01
	dc.b	nFs3, $05, nRst, $07, nG3, $05, nRst, $0D, nG3, $05, nRst, $19
	dc.b	nG3, $05, nRst, $0D, nG3, $05, nRst, $19, nC4, $03, nRst, nC4
	dc.b	nRst, nC5, nRst, nC4, nRst, nBb4, nRst, nC4, nRst, nBb4, nRst, nC5
	dc.b	nRst, nF4, $02, nRst, $04, nBb4, $02, nRst, $04, nF5, $02, nRst
	dc.b	$04, nE5, $1D, nRst, $01, nG3, $05, nRst, $0D, nG3, $05, nRst
	dc.b	$19, nG3, $05, nRst, $0D, nG3, $05, nRst, $19, nF3, $05, nRst
	dc.b	$0D, nF3, $05, nRst, $07, nD3, $02, nRst, $04, nE3, $02, nRst
	dc.b	$04, nF3, $02, nRst, $0A, nF3, $05, nRst, $07, nF3, $05, nRst
	dc.b	$07, nF3, $05, nRst, $01, nFs3, $05, nRst, $07, nG3, $05, nRst
	dc.b	$0D, nG3, $05, nRst, $19, nG3, $05, nRst, $0D, nG3, $05, nRst
	dc.b	$19, nC6, $05, nRst, $01, nC6, $05, nRst, $01, nC6, $05, nRst
	dc.b	$01, nC6, $05, nRst, $55, nD3, $02, nRst, $0A, nE3, $02, nRst
	dc.b	$16, nD3, $11, nRst, $01, nE3, $02, nRst, $28, nA4, $05, nRst
	dc.b	$01, nBb4, $05, nRst, $07, nBb4, $02, nRst, $04, nBb4, $02, nRst
	dc.b	$04, nBb4, $02, nRst, $04, nBb4, $02, nRst, $0A, nA4, $23, nRst
	dc.b	$0D, nD3, $02, nRst, $0A, nE3, $02, nRst, $16, nD3, $11, nRst
	dc.b	$01, nE3, $02, nRst, $28, nA4, $05, nRst, $01, nBb4, $05, nRst
	dc.b	$07, nBb4, $02, nRst, $04, nBb4, $02, nRst, $04, nBb4, $02, nRst
	dc.b	$04, nBb4, $02, nRst, $0A, nC5, $05, nRst, $01, nBb4, $1D, nRst
	dc.b	$0D, nD3, $02, nRst, $0A, nE3, $02, nRst, $16, nD3, $11, nRst
	dc.b	$01, nE3, $02, nRst, $28, nA4, $05, nRst, $01, nBb4, $05, nRst
	dc.b	$07, nBb4, $02, nRst, $04, nBb4, $02, nRst, $04, nBb4, $02, nRst
	dc.b	$04, nBb4, $02, nRst, $0A, nA4, $23, nRst, $0D, nD3, $02, nRst
	dc.b	$0A, nE3, $02, nRst, $16, nD3, $11, nRst, $01, nE3, $02, nRst
	dc.b	$28, nA4, $05, nRst, $01, nBb4, $05, nRst, $07, nBb4, $02, nRst
	dc.b	$04, nBb4, $02, nRst, $04, nBb4, $02, nRst, $04, nBb4, $02, nRst
	dc.b	$0A, nC5, $05, nRst, $01, nBb4, $1D, nRst, $0D, nC3, $0B, nRst
	dc.b	$01, nC3, $0B, nRst, $0D, nBb2, $05, nRst, $0D, nC3, $05, nRst
	dc.b	$19, nC5, $0C, nA4, $06, nBb4, $0C, nG4, nC5, nA4, $06, nBb4
	dc.b	$0C, nG4, $24, nC3, $0B, nRst, $01, nC3, $0B, nRst, $0D, nBb2
	dc.b	$05, nRst, $0D, nC3, $05, nRst, $19, nC5, $0C, nA4, $06, nBb4
	dc.b	$0C, nG4, nC5, nA4, $06, nBb4, $0C, nG4, $24, nC3, $0B, nRst
	dc.b	$01, nC3, $0B, nRst, $0D, nBb2, $05, nRst, $0D, nC3, $05, nRst
	dc.b	$19, nC5, $0C, nA4, $06, nBb4, $0C, nG4, nC5, nA4, $06, nBb4
	dc.b	$0C, nG4, $24, nC3, $0B, nRst, $01, nC3, $0B, nRst, $0D, nBb2
	dc.b	$05, nRst, $0D, nC3, $05, nRst, $19, nC5, $0C, nA4, $06, nBb4
	dc.b	$0C, nG4, nC5, nF3, $02, nRst, $04, nG3, $02, nRst, $04, nA3
	dc.b	$02, nRst, $04, nC4, $02, nRst, $04, nBb3, $02, nRst, $04, nG3
	dc.b	$02, nRst, $04, nA3, $02, nRst, $04, nD5, $03, nRst, nB4, nRst
	dc.b	nG4, nRst, nE4, nRst, nD4, nRst, nB3, nRst, nG3, nRst, nE3, nRst
	dc.b	nC5, nRst, nB4, nRst, nG4, nRst, nE4, nRst, nC4, nRst, nB3, nRst
	dc.b	nG3, nRst, nE3, nRst, nC5, nRst, nA4, nRst, nF4, nRst, nD4, nRst
	dc.b	nC4, nRst, nA3, nRst, nF3, nRst, nD3, nRst, nB4, nRst, nA4, nRst
	dc.b	nF4, nRst, nD4, nRst, nB3, nRst, nA3, nRst, nF3, nRst, nD3, nRst
	dc.b	$0F, nG3, $0B, nRst, $01, nD4, $0B, nRst, $01, nG4, $0B, nRst
	dc.b	$01, nF4, $05, nRst, $0D, nE4, $05, nRst, $0D, nC4, $05, nRst
	dc.b	$07, nA3, $2F, nRst, $01, nD4, $05, nRst, $0D, nC4, $05, nRst
	dc.b	$0D, nB3, $05, nRst, $07, nD5, $03, nRst, nB4, nRst, nG4, nRst
	dc.b	nE4, nRst, nD4, nRst, nB3, nRst, nG3, nRst, nE3, nRst, nC5, nRst
	dc.b	nB4, nRst, nG4, nRst, nE4, nRst, nC4, nRst, nB3, nRst, nG3, nRst
	dc.b	nE3, nRst, nC5, nRst, nA4, nRst, nF4, nRst, nD4, nRst, nC4, nRst
	dc.b	nA3, nRst, nF3, nRst, nD3, nRst, nB4, nRst, nA4, nRst, nF4, nRst
	dc.b	nD4, nRst, nB3, nRst, nA3, nRst, nF3, nRst, nD3, nRst, nG4, $2F
	dc.b	nRst, $01, nE4, $23, nRst, $01, nA3, $0B, nRst, $01, nF4, $11
	dc.b	nRst, $01, nE4, $11, nRst, $01, nD4, $0B, nRst, $01, nB3, $11
	dc.b	nRst, $01, nA3, $11, nRst, $01, nG3, $0B, nRst, $01, nE4, $0B
	dc.b	nRst, $07, nE4, $03, nRst, $0F, nA3, $02, nRst, $04, nB3, $02
	dc.b	nRst, $04, nC4, $11, nRst, $01, nB3, $11, nRst, $01, nA3, $0B
	dc.b	nRst, $01, nE4, $0B, nRst, $07, nE4, $03, nRst, $0F, nF3, $02
	dc.b	nRst, $04, nG3, $02, nRst, $04, nA3, $11, nRst, $01, nG3, $11
	dc.b	nRst, $01, nF3, $0B, nRst, $01, nF2, $05, nRst, $01, nA2, $05
	dc.b	nRst, $01, nD3, $05, nRst, $01, nF3, $05, nRst, $01, nD3, $05
	dc.b	nRst, $01, nF3, $05, nRst, $01, nA3, $05, nRst, $01, nD4, $05
	dc.b	nRst, $01, nA3, $05, nRst, $01, nD4, $05, nRst, $01, nF4, $05
	dc.b	nRst, $01, nA4, $05, nRst, $01, nF4, $05, nRst, $01, nA4, $05
	dc.b	nRst, $01, nD5, $05, nRst, $01, nF5, $05, nRst, $01, nC4, $17
	dc.b	nRst, $01, nB3, $17, nRst, $01, nC4, $17, nRst, $01, nD4, $17
	dc.b	nRst, $01
	smpsJump            s3p1_PSG1

; PSG2 Data
s3p1_PSG2:
	dc.b	nE3, $05, nRst, $0D, nE3, $05, nRst, $19, nE3, $05, nRst, $0D
	dc.b	nE3, $05, nRst, $19, nD3, $05, nRst, $0D, nD3, $05, nRst, $07
	dc.b	nBb2, $02, nRst, $04, nC3, $02, nRst, $04, nD3, $02, nRst, $0A
	dc.b	nD3, $05, nRst, $07, nD3, $05, nRst, $07, nD3, $05, nRst, $01
	dc.b	nEb3, $05, nRst, $07, nE3, $05, nRst, $0D, nE3, $05, nRst, $19
	dc.b	nE3, $05, nRst, $0D, nE3, $05, nRst, $19, nC4, $03, nRst, nC4
	dc.b	nRst, nC5, nRst, nC4, nRst, nBb4, nRst, nC4, nRst, nBb4, nRst, nC5
	dc.b	nRst, nF4, $02, nRst, $04, nBb4, $02, nRst, $04, nF5, $02, nRst
	dc.b	$04, nE5, $1D, nRst, $01, nE3, $05, nRst, $0D, nE3, $05, nRst
	dc.b	$19, nE3, $05, nRst, $0D, nE3, $05, nRst, $19, nD3, $05, nRst
	dc.b	$0D, nD3, $05, nRst, $07, nBb2, $02, nRst, $04, nC3, $02, nRst
	dc.b	$04, nD3, $02, nRst, $0A, nD3, $05, nRst, $07, nD3, $05, nRst
	dc.b	$07, nD3, $05, nRst, $01, nEb3, $05, nRst, $07, nE3, $05, nRst
	dc.b	$0D, nE3, $05, nRst, $19, nE3, $05, nRst, $0D, nE3, $05, nRst
	dc.b	$19, nA4, $05, nRst, $01, nA4, $05, nRst, $01, nA4, $05, nRst
	dc.b	$01, nA4, $05, nRst, $55, nBb2, $02, nRst, $0A, nC3, $02, nRst
	dc.b	$16, nBb2, $11, nRst, $01, nC3, $02, nRst, $28, nFs4, $05, nRst
	dc.b	$01, nG4, $05, nRst, $07, nG4, $02, nRst, $04, nG4, $02, nRst
	dc.b	$04, nG4, $02, nRst, $04, nG4, $02, nRst, $0A, nF4, $23, nRst
	dc.b	$0D, nBb2, $02, nRst, $0A, nC3, $02, nRst, $16, nBb2, $11, nRst
	dc.b	$01, nC3, $02, nRst, $28, nFs4, $05, nRst, $01, nG4, $05, nRst
	dc.b	$07, nG4, $02, nRst, $04, nG4, $02, nRst, $04, nG4, $02, nRst
	dc.b	$04, nG4, $02, nRst, $0A, nA4, $05, nRst, $01, nG4, $1D, nRst
	dc.b	$0D, nBb2, $02, nRst, $0A, nC3, $02, nRst, $16, nBb2, $11, nRst
	dc.b	$01, nC3, $02, nRst, $28, nFs4, $05, nRst, $01, nG4, $05, nRst
	dc.b	$07, nG4, $02, nRst, $04, nG4, $02, nRst, $04, nG4, $02, nRst
	dc.b	$04, nG4, $02, nRst, $0A, nF4, $23, nRst, $0D, nBb2, $02, nRst
	dc.b	$0A, nC3, $02, nRst, $16, nBb2, $11, nRst, $01, nC3, $02, nRst
	dc.b	$28, nFs4, $05, nRst, $01, nG4, $05, nRst, $07, nG4, $02, nRst
	dc.b	$04, nG4, $02, nRst, $04, nG4, $02, nRst, $04, nG4, $02, nRst
	dc.b	$0A, nA4, $05, nRst, $01, nG4, $1D, nRst, $0D, nC3, $0B, nRst
	dc.b	$01, nC3, $0B, nRst, $0D, nBb2, $05, nRst, $0D, nC3, $05, nRst
	dc.b	$19, nC5, $0C, nA4, $06, nBb4, $0C, nG4, nC5, nA4, $06, nBb4
	dc.b	$0C, nG4, $24, nC3, $0B, nRst, $01, nC3, $0B, nRst, $0D, nBb2
	dc.b	$05, nRst, $0D, nC3, $05, nRst, $19, nC5, $0C, nA4, $06, nBb4
	dc.b	$0C, nG4, nC5, nA4, $06, nBb4, $0C, nG4, $24, nC3, $0B, nRst
	dc.b	$01, nC3, $0B, nRst, $0D, nBb2, $05, nRst, $0D, nC3, $05, nRst
	dc.b	$19, nC5, $0C, nA4, $06, nBb4, $0C, nG4, nC5, nA4, $06, nBb4
	dc.b	$0C, nG4, $24, nC3, $0B, nRst, $01, nC3, $0B, nRst, $0D, nBb2
	dc.b	$05, nRst, $0D, nC3, $05, nRst, $19, nC5, $0C, nA4, $06, nBb4
	dc.b	$0C, nG4, nC5, nF3, $02, nRst, $04, nG3, $02, nRst, $04, nA3
	dc.b	$02, nRst, $04, nC4, $02, nRst, $04, nBb3, $02, nRst, $04, nG3
	dc.b	$02, nRst, $04, nA3, $02, nRst, $04, nD5, $03, nRst, nB4, nRst
	dc.b	nG4, nRst, nE4, nRst, nD4, nRst, nB3, nRst, nG3, nRst, nE3, nRst
	dc.b	nC5, nRst, nB4, nRst, nG4, nRst, nE4, nRst, nC4, nRst, nB3, nRst
	dc.b	nG3, nRst, nE3, nRst, nC5, nRst, nA4, nRst, nF4, nRst, nD4, nRst
	dc.b	nC4, nRst, nA3, nRst, nF3, nRst, nD3, nRst, nB4, nRst, nA4, nRst
	dc.b	nF4, nRst, nD4, nRst, nB3, nRst, nA3, nRst, nF3, nRst, nD3, nRst
	dc.b	$15
	smpsFMAlterVol      $0A, $AC
	dc.b	$0B, nRst, $01, nD4, $0B, nRst, $01, nG4, $0B, nRst, $01, nF4
	dc.b	$05, nRst, $0D, nE4, $05, nRst, $0D, nC4, $05, nRst, $07, nA3
	dc.b	$2F, nRst, $01, nD4, $05, nRst, $0D, nC4, $05, nRst, $0D, nB3
	dc.b	$05, nRst, $01
	smpsFMAlterVol      $F6, $BF
	dc.b	$03, nRst, nB4, nRst, nG4, nRst, nE4, nRst, nD4, nRst, nB3, nRst
	dc.b	nG3, nRst, nE3, nRst, nC5, nRst, nB4, nRst, nG4, nRst, nE4, nRst
	dc.b	nC4, nRst, nB3, nRst, nG3, nRst, nE3, nRst, nC5, nRst, nA4, nRst
	dc.b	nF4, nRst, nD4, nRst, nC4, nRst, nA3, nRst, nF3, nRst, nD3, nRst
	dc.b	nB4, nRst, nA4, nRst, nF4, nRst, nD4, nRst, nB3, nRst, nA3, nRst
	dc.b	nF3, nRst, nD3, nRst, $09, nG4, $2F, nRst, $01, nE4, $23, nRst
	dc.b	$01, nA3, $0B, nRst, $01, nF4, $11, nRst, $01, nE4, $11, nRst
	dc.b	$01, nD4, $0B, nRst, $01, nB3, $11, nRst, $01, nA3, $11, nRst
	dc.b	$01, nG3, $06, nC4, $0B, nRst, $07, nC4, $03, nRst, $0F, nA3
	dc.b	$02, nRst, $04, nB3, $02, nRst, $04, nC4, $11, nRst, $01, nB3
	dc.b	$11, nRst, $01, nA3, $0B, nRst, $01, nC4, $0B, nRst, $07, nC4
	dc.b	$03, nRst, $0F, nF3, $02, nRst, $04, nG3, $02, nRst, $04, nA3
	dc.b	$11, nRst, $01, nG3, $11, nRst, $01, nF3, $0B, nRst, $01, nF2
	dc.b	$05, nRst, $01, nA2, $05, nRst, $01, nD3, $05, nRst, $01, nF3
	dc.b	$05, nRst, $01, nD3, $05, nRst, $01, nF3, $05, nRst, $01, nA3
	dc.b	$05, nRst, $01, nD4, $05, nRst, $01, nA3, $05, nRst, $01, nD4
	dc.b	$05, nRst, $01, nF4, $05, nRst, $01, nA4, $05, nRst, $01, nF4
	dc.b	$05, nRst, $01, nA4, $05, nRst, $01, nD5, $05, nRst, $01, nF5
	dc.b	$05, nRst, $01, nC4, $17, nRst, $01, nB3, $17, nRst, $01, nC4
	dc.b	$17, nRst, $01, nD4, $17, nRst, $01
	smpsJump            s3p1_PSG2

; PSG3 Data
s3p1_PSG3:
	smpsPSGvoice        sTone_02
	smpsPSGform         $E7
	dc.b	nMaxPSG1, $06, nMaxPSG1
	smpsPSGvoice        sTone_04
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01

s3p1_Loop00:
	dc.b	nMaxPSG1, $06, nMaxPSG1
	smpsPSGvoice        sTone_04
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	smpsLoop            $01, $1A, s3p1_Loop00
	dc.b	nMaxPSG1, $06, nMaxPSG1, nA6, $6C

s3p1_Loop01:
	dc.b	nMaxPSG1, $06, nMaxPSG1
	smpsPSGvoice        sTone_04
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	smpsLoop            $01, $1B, s3p1_Loop01
	dc.b	nMaxPSG1, $06, nMaxPSG1, nA6, $6C

s3p1_Loop02:
	dc.b	nMaxPSG1, $06, nMaxPSG1
	smpsPSGvoice        sTone_04
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	smpsLoop            $01, $4C, s3p1_Loop02
	dc.b	nRst, $60
	smpsJump            s3p1_PSG3

s3p1_Voices:
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

