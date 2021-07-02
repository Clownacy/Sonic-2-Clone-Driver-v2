s3p47_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     s3p47_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $40

	smpsHeaderDAC       s3p47_DAC
	smpsHeaderFM        s3p47_FM1,	$0C, $12
	smpsHeaderFM        s3p47_FM2,	$0C, $19
	smpsHeaderFM        s3p47_FM3,	$0C, $19
	smpsHeaderFM        s3p47_FM4,	$0C, $19
	smpsHeaderFM        s3p47_FM5,	$0C, $19
	smpsHeaderPSG       s3p47_PSG1,	$00, $06, $00, sTone_0C
	smpsHeaderPSG       s3p47_PSG2,	$00, $06, $00, sTone_0C
	smpsHeaderPSG       s3p47_PSG3,	$00, $04, $00, sTone_0C

; DAC Data
s3p47_DAC:
	dc.b	nRst, $2A

s3p47_Jump00:
	dc.b	dKickS3, $12, dKickS3, $06, dKickS3, dElectricHighTom, $0C, dKickS3, $06, dKickS3, $12, dKickS3
	dc.b	$06, dKickS3, dElectricMidTom, dElectricLowTom, $0C, dKickS3, $12, dKickS3, $06, dKickS3, dElectricHighTom, $0C
	dc.b	dKickS3, $06, dKickS3, $12, dKickS3, $06, dKickS3, dElectricMidTom, dElectricLowTom, $0C, dKickS3, $12
	dc.b	dKickS3, $06, dKickS3, dElectricHighTom, $0C, dKickS3, $06, dKickS3, $12, dKickS3, $06, dKickS3
	dc.b	dElectricMidTom, dElectricLowTom, $0C, dKickS3, $12, dKickS3, $06, dKickS3, dElectricHighTom, $0C, dKickS3, $06
	dc.b	dKickS3, $02, dHigherMetalHit, $03, dHigherMetalHit, $01, dHigherMetalHit, $0C, dHigherMetalHit, $06, dHigherMetalHit, $08
	dc.b	dHigherMetalHit, dMidMetalHit, dKickS3, $12, dKickS3, $06, dKickS3, dElectricHighTom, $0C, dKickS3, $06, dKickS3
	dc.b	$12, dKickS3, $06, dKickS3, dElectricMidTom, dElectricLowTom, $0C, dKickS3, $12, dKickS3, $06, dKickS3
	dc.b	dElectricHighTom, $0C, dKickS3, $06, dKickS3, $12, dKickS3, $06, dKickS3, dElectricMidTom, dElectricLowTom, $0C
	dc.b	dKickS3, $12, dKickS3, $06, dKickS3, dElectricHighTom, $0C, dKickS3, $06, dKickS3, $12, dKickS3
	dc.b	$06, dKickS3, dElectricMidTom, dElectricLowTom, $0C, dElectricLowTom, $06, dElectricLowTom, dElectricLowTom, $12, dElectricLowTom, $06
	dc.b	dElectricLowTom, dElectricLowTom, $1E, dElectricMidTom, $18, dKickS3, $12, dKickS3, $06, dKickS3, dElectricHighTom, $0C
	dc.b	dKickS3, $06, dKickS3, $12, dKickS3, $06, dKickS3, dElectricMidTom, dElectricLowTom, $0C, dKickS3, $12
	dc.b	dKickS3, $06, dKickS3, dElectricHighTom, $0C, dKickS3, $06, dKickS3, $12, dKickS3, $06, dKickS3
	dc.b	dElectricMidTom, dElectricLowTom, $0C, dKickS3, $12, dKickS3, $06, dKickS3, dElectricHighTom, $0C, dKickS3, $06
	dc.b	dKickS3, $12, dKickS3, $06, dKickS3, dElectricMidTom, dElectricLowTom, $0C, dKickS3, $12, dKickS3, $06
	dc.b	dKickS3, dElectricHighTom, $0C, dKickS3, $06, dKickS3, $12, dKickS3, $06, dKickS3, dElectricMidTom, dElectricLowTom
	dc.b	$0C, dKickS3, $12, dKickS3, $06, dKickS3, dElectricHighTom, $0C, dKickS3, $06, dKickS3, $12
	dc.b	dKickS3, $06, dKickS3, dElectricMidTom, dElectricLowTom, $0C, dKickS3, $12, dKickS3, $06, dKickS3, dElectricHighTom
	dc.b	$0C, dKickS3, $06, dKickS3, $12, dKickS3, $06, dKickS3, dElectricMidTom, dElectricLowTom, $0C, dKickS3
	dc.b	$12, dKickS3, $06, dKickS3, dElectricHighTom, $0C, dKickS3, $06, dKickS3, $12, dKickS3, $06
	dc.b	dKickS3, dElectricMidTom, dElectricLowTom, $0C, dKickS3, $12, dKickS3, $06, dKickS3, dElectricHighTom, $0C, dKickS3
	dc.b	$06, dKickS3, dHigherMetalHit, $0C, dHigherMetalHit, $06, dHigherMetalHit, $0C, dElectricLowTom, dKickS3, $12, dKickS3
	dc.b	$06, dKickS3, dElectricHighTom, $0C, dKickS3, $06, dKickS3, $12, dKickS3, $06, dKickS3, dElectricMidTom
	dc.b	dElectricLowTom, $0C, dKickS3, $12, dKickS3, $06, dKickS3, dElectricHighTom, $0C, dKickS3, $06, dKickS3
	dc.b	$12, dKickS3, $06, dKickS3, dElectricMidTom, dElectricLowTom, $0C, dKickS3, $12, dKickS3, $06, dKickS3
	dc.b	dElectricHighTom, $0C, dKickS3, $06, dKickS3, $12, dKickS3, $06, dKickS3, dElectricMidTom, dElectricLowTom, $0C
	dc.b	dElectricLowTom, $06, dElectricLowTom, dElectricLowTom, $12, dElectricLowTom, $06, dElectricLowTom, dElectricLowTom, $1E, dElectricMidTom, $18
	dc.b	dKickS3, $12, dKickS3, $06, dKickS3, dElectricHighTom, $0C, dKickS3, $06, dKickS3, $12, dKickS3
	dc.b	$06, dKickS3, dElectricMidTom, dElectricLowTom, $0C, dKickS3, $12, dKickS3, $06, dKickS3, dElectricHighTom, $0C
	dc.b	dKickS3, $06, dKickS3, $12, dKickS3, $06, dKickS3, dElectricMidTom, dElectricLowTom, $0C, dKickS3, $12
	dc.b	dKickS3, $06, dKickS3, dElectricHighTom, $0C, dKickS3, $06, dKickS3, $12, dKickS3, $06, dKickS3
	dc.b	dElectricMidTom, dElectricLowTom, $0C, dKickS3, $12, dKickS3, $06, dKickS3, dElectricHighTom, $0C, dElectricLowTom, $06
	dc.b	dKickS3, $0C, dElectricLowTom, $06, dKickS3, dElectricLowTom, dElectricLowTom, dElectricMidTom, $0C, dKickS3, $12, dKickS3
	dc.b	$06, dKickS3, dElectricHighTom, $0C, dKickS3, $06, dKickS3, $12, dKickS3, $06, dKickS3, dElectricMidTom
	dc.b	dElectricLowTom, $0C, dKickS3, $12, dKickS3, $06, dKickS3, dElectricHighTom, $0C, dKickS3, $06, dKickS3
	dc.b	$12, dKickS3, $06, dKickS3, dElectricMidTom, dElectricLowTom, $0C, dKickS3, $12, dKickS3, $06, dKickS3
	dc.b	dElectricHighTom, $0C, dKickS3, $06, dKickS3, $12, dKickS3, $06, dKickS3, dElectricMidTom, dElectricLowTom, $0C
	dc.b	dElectricLowTom, dKickS3, $06, dElectricLowTom, $0C, dKickS3, $06, dElectricLowTom, nRst, $36
	smpsJump            s3p47_Jump00

; FM1 Data
s3p47_FM1:
	dc.b	nRst, $2A

s3p47_Jump05:
	smpsSetvoice        $00
	dc.b	nC1, $12, nG1, nC2, $0C, nF1, $12, nC2, nF2, $0C, nBb0, $12
	dc.b	nF1, nBb1, $0C, nG0, $12, nD1, nG1, $0C, nC1, $12, nG1, nC2
	dc.b	$0C, nF1, $12, nC2, nF2, $0C, nBb0, $12, nC1, nD1, $0C, nRst
	dc.b	$30, nC1, $12, nG1, nC2, $0C, nF1, $12, nC2, nF2, $0C, nBb0
	dc.b	$12, nF1, nBb1, $0C, nG1, $12, nD2, nG2, $0C, nC1, $12, nG1
	dc.b	nC2, $0C, nF1, $12, nC2, nF2, $0C, nBb0, $06, nBb0, nBb0, nRst
	dc.b	$0C, nBb0, $06, nBb0, nBb0, nRst, $30, nF1, $12, nC2, nF2, $0C
	dc.b	nBb0, $12, nF1, nBb1, $0C, nEb1, $12, nBb1, nEb2, $0C, nEb1, $12
	dc.b	nBb1, nEb2, $0C, nF1, $12, nC2, nF2, $0C, nBb0, $12, nF1, nBb1
	dc.b	$0C, nEb1, $12, nBb1, nEb2, $0C, nEb1, $12, nF1, nFs1, $0C, nG1
	dc.b	$12, nD2, nG2, $0C, nC1, $12, nG1, nC2, $0C, nF1, $12, nC2
	dc.b	nF2, $0C, nD1, $12, nA1, nD2, $0C, nG1, $12, nD2, nG2, $0C
	dc.b	nC1, $12, nG1, nC2, $0C, nF1, $12, nC1, nF0, $0C, nRst, $30
	dc.b	nC1, $12, nG1, nC2, $0C, nF1, $12, nC2, nF2, $0C, nBb0, $12
	dc.b	nF1, nBb1, $0C, nG1, $12, nD2, nG2, $0C, nC1, $12, nG1, nC2
	dc.b	$0C, nF1, $12, nC2, nF2, $0C, nBb0, $06, nBb0, nBb0, nRst, $0C
	dc.b	nBb0, $06, nBb0, nBb0, nRst, $30, nF1, $12, nC2, nF2, $0C, nF1
	dc.b	$12, nC2, nF2, $0C, nF1, $12, nC2, nF2, $0C, nG1, $18, nFs1
	dc.b	nF1, $12, nC2, nF2, $0C, nF1, $12, nC2, nF2, $0C, nBb1, $12
	dc.b	nBb1, $06, nRst, nF1, nFs1, nG1, $0C, nG1, $06, nD2, $0C, nG2
	dc.b	$06, nD2, nG1, $0C, nF1, $12, nC2, nF2, $0C, nF1, $12, nC2
	dc.b	nF2, $0C, nF1, $12, nC2, nF2, $0C, nG1, $18, nFs1, nF1, $12
	dc.b	nC2, nF2, $0C, nF1, $12, nC2, nF2, $0C, nBb0, $12, nC1, nD1
	dc.b	$0C, nRst, $30
	smpsJump            s3p47_Jump05

; FM2 Data
s3p47_FM2:
	smpsSetvoice        $12
	smpsDetune          $00
	smpsModSet          $03, $01, $FC, $05
	smpsPan             panCenter, $00
	dc.b	nBb3, $0C, nBb3, $06, nBb3, $08, nA3, nBb3

s3p47_Jump04:
	dc.b	nA3, $03, nBb3, nA3, $0C, nG3, $26, nA3, $08, nBb3, nC4, nA3
	dc.b	nG3, nG3, $03, nA3, nG3, $0C, nF3, $21, nCs3, $03, nD3, $0C
	dc.b	nEb3, $06, nF3, $08, nG3, nD3, nF3, $12, nEb3, $0F, nA3, $03
	dc.b	nBb3, $0C, nA3, $12, nG3, nA3, $0C, nG3, $03, nA3, nG3, $0C
	dc.b	nF3, $24, nBb3, $0C, nBb3, $06, nBb3, $08, nA3, nBb3, nA3, $03
	dc.b	nBb3, nA3, $0C, nG3, $26, nA3, $08, nBb3, nC4, nA3, nG3, nG3
	dc.b	$03, nA3, nG3, $0C, nF3, $22, nFs3, $04, nG3, $08, nA3, nB3
	dc.b	nC4, nD4, nEb4, $12, nG3, nBb3, $0C, nA3, $12, nG3, nA3, $0C
	dc.b	nBb3, $06, nBb3, nBb3, $12, nBb3, $06, nBb3, nBb3, $2A
	smpsSetvoice        $0F
	smpsDetune          $04
	smpsModSet          $0F, $01, $06, $05
	dc.b	nC5, $03, nRst, nD5, nRst, nEb5, $12, nAb4, nEb5, $0C, nD5, $18
	dc.b	nRst, $0C, nBb4, $03, nRst, nC5, nRst, nD5, $12, nG5, nD5, $0C
	dc.b	nC5, $18, nRst, $0C, nC5, $03, nRst, nD5, nRst, nEb5, $12, nAb4
	dc.b	nEb5, $0C, nD5, $12, nF5, nD5, $0C, nC5, $03, nD5, nC5, $0C
	dc.b	nBb4, $36, nRst, $0C, nD5, $03, nRst, nE5, nRst, nF5, $12, nBb4
	dc.b	nF5, $0C, nE5, $18, nRst, $0C, nC5, $03, nRst, nD5, nRst, nE5
	dc.b	$12, nA5, nE5, $0C, nD5, $18, nRst, $0C, nA4, $06, nBb4, nC5
	dc.b	$03, nRst, $09, nD5, $03, nRst, nBb4, nRst, $09, nC5, $03, nRst
	dc.b	$09, nA4, $03, nRst, $09, nBb4, $03, nRst, $09, nG4, $03, nRst
	dc.b	$09, nA4, $0C, nAb4, $02, nG4, nFs4, nF4, $06, nRst, $30
	smpsSetvoice        $12
	smpsDetune          $00
	smpsModSet          $03, $01, $FC, $05
	smpsPan             panCenter, $00
	dc.b	nBb3, $0C, nBb3, $06, nBb3, $08, nA3, nBb3, nA3, $03, nBb3, nA3
	dc.b	$0C, nG3, $26, nA3, $08, nBb3, nC4, nA3, nG3, nG3, $03, nA3
	dc.b	nG3, $0C, nF3, $22, nFs3, $04, nG3, $08, nA3, nB3, nC4, nD4
	dc.b	nEb4, $12, nG3, nBb3, $0C, nA3, $12, nG3, nA3, $0C, nBb3, $06
	dc.b	nBb3, nBb3, $12, nBb3, $06, nBb3, nBb3, $3C
	smpsSetvoice        $0D
	smpsDetune          $04
	smpsModSet          $0F, $01, $FA, $05
	smpsPan             panLeft, $00
	dc.b	nEb3, $03, nRst, nG3, nRst, nBb3, nRst, nD4, nRst, $09, nC4, $03
	dc.b	nRst, nD4, nRst, $09, nC4, $03, nRst, nD4, nRst, nC4, $12, nRst
	dc.b	nD3, $03, nRst, nF3, nRst, nA3, nRst, nC4, nRst, $09, nBb3, $03
	dc.b	nRst, nC4, nRst, $09, nBb3, $03, nRst, nC4, nRst, nBb3, $0C
	smpsSetvoice        $0B
	smpsDetune          $04
	smpsModSet          $0F, $01, $FA, $05
	smpsPan             panLeft, $00
	dc.b	nG3, $03, nRst, nA3, $06, nBb3, $0C
	smpsSetvoice        $0D
	smpsDetune          $04
	smpsModSet          $0F, $01, $FA, $05
	smpsPan             panLeft, $00
	dc.b	nEb3, $06, nG3, $03, nRst, nBb3, nRst, nD4, nRst, $09, nC4, $03
	dc.b	nRst, nD4, nRst, $09, nC4, $03, nRst, nD4, nRst, nC4, $12, nRst
	smpsSetvoice        $0F
	smpsDetune          $04
	smpsModSet          $0F, $01, $06, $05
	dc.b	nBb4, $06, nA4, nF4, nD4, nBb3, nA3, nG3, $0C, nRst, $30
	smpsSetvoice        $0D
	smpsDetune          $04
	smpsModSet          $0F, $01, $FA, $05
	smpsPan             panLeft, $00
	dc.b	nEb3, $03, nRst, nG3, nRst, nBb3, nRst, nD4, nRst, $09, nC4, $03
	dc.b	nRst, nD4, nRst, $09, nC4, $03, nRst, nD4, nRst, nC4, $12, nRst
	dc.b	nD3, $03, nRst, nF3, nRst, nA3, nRst, nC4, nRst, $09, nBb3, $03
	dc.b	nRst, nC4, nRst, $09, nBb3, $03, nRst, nC4, nRst, nBb3, $0C
	smpsSetvoice        $0B
	smpsDetune          $04
	smpsModSet          $0F, $01, $FA, $05
	smpsPan             panLeft, $00
	dc.b	nG3, $03, nRst, nA3, $06, nBb3, $0C
	smpsSetvoice        $0D
	smpsDetune          $04
	smpsModSet          $0F, $01, $FA, $05
	smpsPan             panLeft, $00
	dc.b	nEb3, $03, nRst, nG3, nRst, nBb3, nRst, nD4, nRst, $09, nC4, $03
	dc.b	nRst, nD4, nRst, $09, nC4, $03, nRst, nD4, nRst, nC4, $12, nRst
	smpsSetvoice        $0F
	smpsDetune          $04
	smpsModSet          $0F, $01, $06, $05
	dc.b	nBb4, $06, nA4, nF4, nD4, nBb3, nA3, nG3, $0C
	smpsSetvoice        $12
	smpsDetune          $00
	smpsModSet          $03, $01, $FC, $05
	smpsPan             panCenter, $00
	dc.b	nBb3, $0C, nBb3, $06, nBb3, $08, nA3, nBb3
	smpsJump            s3p47_Jump04

; FM3 Data
s3p47_FM3:
	smpsSetvoice        $12
	smpsDetune          $FD
	smpsModSet          $03, $01, $04, $05
	smpsPan             panCenter, $00
	dc.b	nBb2, $0C, nBb2, $06, nBb2, $08, nA2, nBb2

s3p47_Jump03:
	smpsSetvoice        $12
	smpsDetune          $FD
	smpsModSet          $03, $01, $04, $05
	smpsPan             panCenter, $00
	dc.b	nA2, $03, nBb2, nA2, $0C, nG2, $26, nA2, $08, nBb2, nC3, nA2
	dc.b	nG2, nG2, $03, nA2, nG2, $0C, nF2, $21, nCs2, $03, nD2, $0C
	dc.b	nEb2, $06, nF2, $08, nG2, nD2, nF2, $12, nEb2, $0F, nA2, $03
	dc.b	nBb2, $0C, nA2, $12, nG2, nA2, $0C, nG2, $03, nA2, nG2, $0C
	dc.b	nF2, $24, nBb2, $0C, nBb2, $06, nBb2, $08, nA2, nBb2, nA2, $03
	dc.b	nBb2, nA2, $0C, nG2, $26, nA2, $08, nBb2, nC3, nA2, nG2, nG2
	dc.b	$03, nA2, nG2, $0C, nF2, $22, nFs2, $04, nG2, $08, nA2, nB2
	dc.b	nC3, nD3, nEb3, $12, nG2, nBb2, $0C, nA2, $12, nG2, nA2, $0C
	dc.b	nBb2, $06, nBb2, nBb2, $12, nBb2, $06, nBb2, nBb2, $30
	smpsSetvoice        $0F
	smpsDetune          $04
	smpsModSet          $0F, $01, $06, $05
	smpsFMAlterVol      $14
	dc.b	nC5, $03, nRst, nD5, nRst, nEb5, $12, nAb4, nEb5, $0C, nD5, $18
	dc.b	nRst, $0C, nBb4, $03, nRst, nC5, nRst, nD5, $12, nG5, nD5, $0C
	dc.b	nC5, $18, nRst, $0C, nC5, $03, nRst, nD5, nRst, nEb5, $12, nAb4
	dc.b	nEb5, $0C, nD5, $12, nF5, nD5, $0C, nC5, $03, nD5, nC5, $0C
	dc.b	nBb4, $36, nRst, $0C, nD5, $03, nRst, nE5, nRst, nF5, $12, nBb4
	dc.b	nF5, $0C, nE5, $18, nRst, $0C, nC5, $03, nRst, nD5, nRst, nE5
	dc.b	$12, nA5, nE5, $0C, nD5, $18, nRst, $0C, nA4, $06, nBb4, nC5
	dc.b	$03, nRst, $09, nD5, $03, nRst, nBb4, nRst, $09, nC5, $03, nRst
	dc.b	$09, nA4, $03, nRst, $09, nBb4, $03, nRst, $09, nG4, $03, nRst
	dc.b	$09, nA4, $0C, nAb4, $02, nG4, nFs4, nF4, $06, nRst, $2A
	smpsFMAlterVol      $EC
	smpsSetvoice        $12
	smpsDetune          $FD
	smpsModSet          $03, $01, $04, $05
	smpsPan             panCenter, $00
	dc.b	nBb2, $0C, nBb2, $06, nBb2, $08, nA2, nBb2, nA2, $03, nBb2, nA2
	dc.b	$0C, nG2, $26, nA2, $08, nBb2, nC3, nA2, nG2, nG2, $03, nA2
	dc.b	nG2, $0C, nF2, $22, nFs2, $04, nG2, $08, nA2, nB2, nC3, nD3
	dc.b	nEb3, $12, nG2, nBb2, $0C, nA2, $12, nG2, nA2, $0C, nBb2, $06
	dc.b	nBb2, nBb2, $12, nBb2, $06, nBb2, nBb2, $3C
	smpsSetvoice        $0D
	smpsDetune          $FC
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nC3, $03, nRst, nEb3, nRst, nG3, nRst, nBb3, nRst, $09, nA3, $03
	dc.b	nRst, nBb3, nRst, $09, nA3, $03, nRst, nBb3, nRst, nA3, $12, nRst
	dc.b	nBb2, $03, nRst, nD3, nRst, nF3, nRst, nA3, nRst, $09, nG3, $03
	dc.b	nRst, nA3, nRst, $09, nG3, $03, nRst, nA3, nRst, nG3, $0C
	smpsSetvoice        $0B
	smpsDetune          $FC
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nEb3, $03, nRst, nF3, $06, nG3, $0C
	smpsSetvoice        $0D
	smpsDetune          $FC
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nC3, $06, nEb3, $03, nRst, nG3, nRst, nBb3, nRst, $09, nA3, $03
	dc.b	nRst, nBb3, nRst, $09, nA3, $03, nRst, nBb3, nRst, nA3, $12, nRst
	smpsSetvoice        $0F
	smpsDetune          $FC
	smpsModSet          $0F, $01, $06, $05
	dc.b	nG4, $06, nF4, nD4, nBb3, nG3, nF3, nD3, $0C, nRst, $30
	smpsSetvoice        $0D
	smpsDetune          $FC
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nC3, $03, nRst, nEb3, nRst, nG3, nRst, nBb3, nRst, $09, nA3, $03
	dc.b	nRst, nBb3, nRst, $09, nA3, $03, nRst, nBb3, nRst, nA3, $12, nRst
	dc.b	nBb2, $03, nRst, nD3, nRst, nF3, nRst, nA3, nRst, $09, nG3, $03
	dc.b	nRst, nA3, nRst, $09, nG3, $03, nRst, nA3, nRst, nG3, $0C
	smpsSetvoice        $0B
	smpsDetune          $FC
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nEb3, $03, nRst, nF3, $06, nG3, $0C
	smpsSetvoice        $0D
	smpsDetune          $FC
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nC3, $03, nRst, nEb3, nRst, nG3, nRst, nBb3, nRst, $09, nA3, $03
	dc.b	nRst, nBb3, nRst, $09, nA3, $03, nRst, nBb3, nRst, nA3, $12, nRst
	smpsSetvoice        $0F
	smpsDetune          $FC
	smpsModSet          $0F, $01, $06, $05
	dc.b	nG4, $06, nF4, nD4, nBb3, nG3, nF3, nD3, $0C
	smpsSetvoice        $12
	smpsDetune          $FD
	smpsModSet          $03, $01, $04, $05
	smpsPan             panCenter, $00
	dc.b	nBb2, $08, nRst, $04, nBb2, $06, nBb2, $08, nA2, nBb2
	smpsJump            s3p47_Jump03

; FM4 Data
s3p47_FM4:
	dc.b	nRst, $2A
	smpsSetvoice        $0B
	smpsDetune          $04
	smpsModSet          $0F, $01, $FA, $05
	smpsPan             panLeft, $00

s3p47_Jump02:
	dc.b	nEb3, $06, nRst, nBb3, nG3, nRst, nD4, nRst, nEb3, nRst, nA3, nRst
	dc.b	nG3, nRst, nD4, nEb3, nRst, nD3, nRst, nA3, nF3, nRst, nC4, nRst
	dc.b	nD3, nRst, nA3, nRst, nG3, nRst, nD4, nD3, nRst, nEb3, nRst, nBb3
	dc.b	nG3, nRst, nD4, nRst, nEb3, nRst, nA3, nRst, nG3, nRst, nD4, nEb3
	dc.b	nRst, nD3, nRst, $0C, nEb3, $06, nRst, $0C, nF3, $06, nRst, $0C
	smpsSetvoice        $10
	dc.b	nG4, $06, nG5, nG4, nRst, $18
	smpsSetvoice        $0B
	smpsDetune          $04
	smpsModSet          $0F, $01, $FA, $05
	smpsPan             panLeft, $00
	dc.b	nEb3, $06, nRst, nBb3, nG3, nRst, nD4, nRst, nEb3, nRst, nA3, nRst
	dc.b	nG3, nRst, nD4, nEb3, nRst, nD3, nRst, nA3, nF3, nRst, nC4, nRst
	dc.b	nD3, nRst, nA3, nRst, nG3, nRst, nD4, nD3, nRst, nEb3, nRst, nBb3
	dc.b	nG3, nRst, nD4, nRst, nEb3, nRst, nA3, nRst, nG3, nRst, nD4, nEb3
	dc.b	nRst, nF3, nF3, nF3, nRst, $0C, nF3, $06, nF3, nF3, nRst, $3C
	smpsSetvoice        $08
	smpsDetune          $03
	smpsModSet          $03, $01, $FD, $05
	smpsPan             panLeft, $00
	dc.b	nEb3, $03, nRst, $0F, nEb3, $03, nRst, $0F, nD3, $0C, nRst, $06
	dc.b	nD3, $03, nRst, $0F, nD3, $0C, nRst, nD3, $03, nRst, $0F, nD3
	dc.b	$03, nRst, $0F, nC3, $0C, nRst, $06, nD3, $0C, nRst, $06, nEb3
	dc.b	$0C, nRst, nEb3, $03, nRst, $0F, nEb3, $03, nRst, $0F, nD3, $0C
	dc.b	nRst, $06, nD3, $03, nRst, $0F, nD3, $0C, nRst, $06, nG3, $03
	dc.b	nRst, nAb3, nRst, nBb3, nRst, nEb4, nRst, nD4, nRst, nBb3, nRst, nG3
	dc.b	$12, nRst, $30
	smpsSetvoice        $08
	smpsDetune          $03
	smpsModSet          $03, $01, $FD, $05
	smpsPan             panLeft, $00
	dc.b	nF3, $03, nRst, $0F, nF3, $03, nRst, $0F, nE3, $0C, nRst, $06
	dc.b	nE3, $03, nRst, $0F, nE3, $0C, nRst, nE3, $03, nRst, $0F, nE3
	dc.b	$03, nRst, $0F, nD3, $0C, nRst, $06, nE3, $0C, nRst, $06, nF3
	dc.b	$0C, nRst, nF3, $03, nRst, $0F, nF3, $03, nRst, $0F, nE3, $0C
	dc.b	nRst, $06, nE3, $03, nRst, $0F, nE3, $0C, nF3, nRst, $06, nF3
	dc.b	$0C, nRst, $06, nF3, nRst, $36
	smpsSetvoice        $0B
	smpsDetune          $04
	smpsModSet          $0F, $01, $FA, $05
	smpsPan             panLeft, $00
	dc.b	nEb3, $06, nRst, nBb3, nG3, nRst, nD4, nRst, nEb3, nRst, nA3, nRst
	dc.b	nG3, nRst, nD4, nEb3, nRst, nD3, nRst, nA3, nF3, nRst, nC4, nRst
	dc.b	nD3, nRst, nA3, nRst, nG3, nRst, nD4, nD3, nRst, nEb3, nRst, nBb3
	dc.b	nG3, nRst, nD4, nRst, nEb3, nRst, nA3, nRst, nG3, nRst, nD4, nEb3
	dc.b	nRst, nF3, nF3, nF3, nRst, $0C, nF3, $06, nF3, nF3, nRst, $36
	smpsSetvoice        $08
	smpsDetune          $03
	smpsModSet          $03, $01, $FD, $05
	smpsPan             panLeft, $00
	dc.b	nEb3, $03, nRst, nG3, nRst, nBb3, nRst, nD4, nRst, $09, nC4, $03
	dc.b	nRst, nD4, nRst, $09, nC4, $03, nRst, nD4, nRst, nC4, $12, nRst
	dc.b	nD3, $03, nRst, nF3, nRst, nA3, nRst, nC4, nRst, $09, nBb3, $03
	dc.b	nRst, nC4, nRst, $09, nBb3, $03, nRst, nC4, nRst, nBb3, $0C
	smpsSetvoice        $0B
	smpsDetune          $04
	smpsModSet          $0F, $01, $FA, $05
	smpsPan             panLeft, $00
	dc.b	nG3, $03, nRst, nA3, nRst, nBb3, nRst, $09
	smpsSetvoice        $08
	smpsDetune          $03
	smpsModSet          $03, $01, $FD, $05
	smpsPan             panLeft, $00
	dc.b	nEb3, $03, nRst, nG3, nRst, nBb3, nRst, nD4, nRst, $09, nC4, $03
	dc.b	nRst, nD4, nRst, $09, nC4, $03, nRst, nD4, nRst, nC4, $12, nRst
	dc.b	$0C
	smpsSetvoice        $0B
	smpsDetune          $04
	smpsModSet          $0F, $01, $FA, $05
	smpsPan             panLeft, $00
	dc.b	nD3, $06, nRst, $0C, nEb3, $06, nRst, $0C, nF3, $06, nRst, $3C
	smpsSetvoice        $08
	smpsDetune          $03
	smpsModSet          $03, $01, $FD, $05
	smpsPan             panLeft, $00
	dc.b	nEb3, $03, nRst, nG3, nRst, nBb3, nRst, nD4, nRst, $09, nC4, $03
	dc.b	nRst, nD4, nRst, $09, nC4, $03, nRst, nD4, nRst, nC4, $12, nRst
	dc.b	nD3, $03, nRst, nF3, nRst, nA3, nRst, nC4, nRst, $09, nBb3, $03
	dc.b	nRst, nC4, nRst, $09, nBb3, $03, nRst, nC4, nRst, nBb3, $0C
	smpsSetvoice        $0B
	smpsDetune          $04
	smpsModSet          $0F, $01, $FA, $05
	smpsPan             panLeft, $00
	dc.b	nG3, $03, nRst, nA3, nRst, nBb3, nRst, $09
	smpsSetvoice        $08
	smpsDetune          $03
	smpsModSet          $03, $01, $FD, $05
	smpsPan             panLeft, $00
	dc.b	nEb3, $03, nRst, nG3, nRst, nBb3, nRst, nD4, nRst, $09, nC4, $03
	dc.b	nRst, nD4, nRst, $09, nC4, $03, nRst, nD4, nRst, nC4, $12, nRst
	dc.b	$0C
	smpsSetvoice        $0B
	smpsDetune          $04
	smpsModSet          $0F, $01, $FA, $05
	smpsPan             panLeft, $00
	dc.b	nD3, $06, nRst, $0C, nEb3, $06, nRst, $0C, nF3, $06, nRst, $36
	smpsJump            s3p47_Jump02

; FM5 Data
s3p47_FM5:
	dc.b	nRst, $2A

s3p47_Jump01:
	smpsSetvoice        $0B
	smpsDetune          $FC
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nEb2, $06, nRst, nBb2, nG2, nRst, nD3, nRst, nEb2, nRst, nA2, nRst
	dc.b	nG2, nRst, nD3, nEb2, nRst, nD2, nRst, nA2, nF2, nRst, nC3, nRst
	dc.b	nD2, nRst, nA2, nRst, nG2, nRst, nD3, nD2, nRst, nEb2, nRst, nBb2
	dc.b	nG2, nRst, nD3, nRst, nEb2, nRst, nA2, nRst, nG2, nRst, nD3, nEb2
	dc.b	nRst, nBb2, nRst, $0C, nC3, $06, nRst, $0C, nD3, $06, nRst, $0C
	smpsSetvoice        $10
	dc.b	nG4, $06, nG5, nG4, nRst, $18
	smpsSetvoice        $0B
	smpsDetune          $FC
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nEb2, $06, nRst, nBb2, nG2, nRst, nD3, nRst, nEb2, nRst, nA2, nRst
	dc.b	nG2, nRst, nD3, nEb2, nRst, nD2, nRst, nA2, nF2, nRst, nC3, nRst
	dc.b	nD2, nRst, nA2, nRst, nG2, nRst, nD3, nD2, nRst, nEb2, nRst, nBb2
	dc.b	nG2, nRst, nD3, nRst, nEb2, nRst, nA2, nRst, nG2, nRst, nD3, nEb2
	dc.b	nRst, nD3, nD3, nD3, nRst, $0C, nD3, $06, nD3, nD3, nRst, $3C
	smpsSetvoice        $08
	smpsDetune          $FD
	smpsModSet          $03, $01, $03, $05
	smpsPan             panRight, $00
	dc.b	nAb2, $03, nRst, $0F, nAb2, $03, nRst, $0F, nAb2, $0C, nRst, $06
	dc.b	nAb2, $03, nRst, $0F, nAb2, $0C, nRst, nG2, $03, nRst, $0F, nG2
	dc.b	$03, nRst, $0F, nG2, $0C, nRst, $06, nF2, $0C, nRst, $06, nG2
	dc.b	$0C, nRst, nAb2, $03, nRst, $0F, nAb2, $03, nRst, $0F, nAb2, $0C
	dc.b	nRst, $06, nAb2, $03, nRst, $0F, nAb2, $0C, nRst, $06, nBb2, $03
	dc.b	nRst, nC3, nRst, nD3, nRst, nG3, nRst, nF3, nRst, nD3, nRst, nBb2
	dc.b	$12, nRst, $30
	smpsSetvoice        $08
	smpsDetune          $FD
	smpsModSet          $03, $01, $03, $05
	smpsPan             panRight, $00
	dc.b	nBb2, $03, nRst, $0F, nBb2, $03, nRst, $0F, nBb2, $0C, nRst, $06
	dc.b	nBb2, $03, nRst, $0F, nBb2, $0C, nRst, nA2, $03, nRst, $0F, nA2
	dc.b	$03, nRst, $0F, nA2, $0C, nRst, $06, nG2, $0C, nRst, $06, nA2
	dc.b	$0C, nRst, nBb2, $03, nRst, $0F, nBb2, $03, nRst, $0F, nBb2, $0C
	dc.b	nRst, $06, nBb2, $03, nRst, $0F, nBb2, $0C, nA2, nRst, $06, nA2
	dc.b	$0C, nRst, $06, nA2, nRst, $36
	smpsSetvoice        $0B
	smpsDetune          $FC
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nEb2, $06, nRst, nBb2, nG2, nRst, nD3, nRst, nEb2, nRst, nA2, nRst
	dc.b	nG2, nRst, nD3, nEb2, nRst, nD2, nRst, nA2, nF2, nRst, nC3, nRst
	dc.b	nD2, nRst, nA2, nRst, nG2, nRst, nD3, nD2, nRst, nEb2, nRst, nBb2
	dc.b	nG2, nRst, nD3, nRst, nEb2, nRst, nA2, nRst, nG2, nRst, nD3, nEb2
	dc.b	nRst, nD3, nD3, nD3, nRst, $0C, nD3, $06, nD3, nD3, nRst, $36
	smpsSetvoice        $08
	smpsDetune          $FD
	smpsModSet          $03, $01, $03, $05
	smpsPan             panRight, $00
	dc.b	nC3, $03, nRst, nEb3, nRst, nG3, nRst, nBb3, nRst, $09, nA3, $03
	dc.b	nRst, nBb3, nRst, $09, nA3, $03, nRst, nBb3, nRst, nA3, $12, nRst
	dc.b	nBb2, $03, nRst, nD3, nRst, nF3, nRst, nA3, nRst, $09, nG3, $03
	dc.b	nRst, nA3, nRst, $09, nG3, $03, nRst, nA3, nRst, nG3, $0C
	smpsSetvoice        $0B
	smpsDetune          $FC
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nEb3, $03, nRst, nF3, nRst, nG3, nRst, $09
	smpsSetvoice        $08
	smpsDetune          $FD
	smpsModSet          $03, $01, $03, $05
	smpsPan             panRight, $00
	dc.b	nC3, $03, nRst, nEb3, nRst, nG3, nRst, nBb3, nRst, $09, nA3, $03
	dc.b	nRst, nBb3, nRst, $09, nA3, $03, nRst, nBb3, nRst, nA3, $12, nRst
	dc.b	$0C
	smpsSetvoice        $0B
	smpsDetune          $FC
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nBb2, $06, nRst, $0C, nC3, $06, nRst, $0C, nD3, $06, nRst, $3C
	smpsSetvoice        $08
	smpsDetune          $FD
	smpsModSet          $03, $01, $03, $05
	smpsPan             panRight, $00
	dc.b	nC3, $03, nRst, nEb3, nRst, nG3, nRst, nBb3, nRst, $09, nA3, $03
	dc.b	nRst, nBb3, nRst, $09, nA3, $03, nRst, nBb3, nRst, nA3, $12, nRst
	dc.b	nBb2, $03, nRst, nD3, nRst, nF3, nRst, nA3, nRst, $09, nG3, $03
	dc.b	nRst, nA3, nRst, $09, nG3, $03, nRst, nA3, nRst, nG3, $0C
	smpsSetvoice        $0B
	smpsDetune          $FC
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nEb3, $03, nRst, nF3, nRst, nG3, nRst, $09
	smpsSetvoice        $08
	smpsDetune          $FD
	smpsModSet          $03, $01, $03, $05
	smpsPan             panRight, $00
	dc.b	nC3, $03, nRst, nEb3, nRst, nG3, nRst, nBb3, nRst, $09, nA3, $03
	dc.b	nRst, nBb3, nRst, $09, nA3, $03, nRst, nBb3, nRst, nA3, $12, nRst
	dc.b	$0C
	smpsSetvoice        $0B
	smpsDetune          $FC
	smpsModSet          $0F, $01, $06, $05
	smpsPan             panRight, $00
	dc.b	nBb2, $06, nRst, $0C, nC3, $06, nRst, $0C, nD3, $06, nRst, $36
	smpsJump            s3p47_Jump01

; PSG1 Data
s3p47_PSG1:
	smpsPSGvoice        sTone_04
	smpsDetune          $00
	dc.b	nRst, $2A

s3p47_Jump08:
	dc.b	nEb3, $06, nRst, nBb3, nG3, nRst, nD4, nRst, nEb3, nRst, nA3, nRst
	dc.b	nG3, nRst, nD4, nEb3, nRst, nD3, nRst, nA3, nF3, nRst, nC4, nRst
	dc.b	nD3, nRst, nA3, nRst, nG3, nRst, nD4, nD3, nRst, nEb3, nRst, nBb3
	dc.b	nG3, nRst, nD4, nRst, nEb3, nRst, nA3, nRst, nG3, nRst, nD4, nEb3
	dc.b	nRst, nD3, nRst, $0C, nEb3, $06, nRst, $0C, nF3, $06, nRst, $0C
	dc.b	nG4, $06, nG5, nG4, nRst, $18, nEb3, $06, nRst, nBb3, nG3, nRst
	dc.b	nD4, nRst, nEb3, nRst, nA3, nRst, nG3, nRst, nD4, nEb3, nRst, nD3
	dc.b	nRst, nA3, nF3, nRst, nC4, nRst, nD3, nRst, nA3, nRst, nG3, nRst
	dc.b	nD4, nD3, nRst, nEb3, nRst, nBb3, nG3, nRst, nD4, nRst, nEb3, nRst
	dc.b	nA3, nRst, nG3, nRst, nD4, nEb3, nRst, nF3, nF3, nF3, nRst, $0C
	dc.b	nF3, $06, nF3, nF3, nRst, $3C, nEb3, $03, nRst, $0F, nEb3, $03
	dc.b	nRst, $0F, nD3, $0C, nRst, $06, nD3, $03, nRst, $0F, nD3, $0C
	dc.b	nRst, nD3, $03, nRst, $0F, nD3, $03, nRst, $0F, nC3, $0C, nRst
	dc.b	$06, nD3, $0C, nRst, $06, nEb3, $0C, nRst, nEb3, $03, nRst, $0F
	dc.b	nEb3, $03, nRst, $0F, nD3, $0C, nRst, $06, nD3, $03, nRst, $0F
	dc.b	nD3, $0C, nRst, $06, nG3, $03, nRst, nAb3, nRst, nBb3, nRst, nEb4
	dc.b	nRst, nD4, nRst, nBb3, nRst, nG3, $12, nRst, $30, nF3, $03, nRst
	dc.b	$0F, nF3, $03, nRst, $0F, nE3, $0C, nRst, $06, nE3, $03, nRst
	dc.b	$0F, nE3, $0C, nRst, nE3, $03, nRst, $0F, nE3, $03, nRst, $0F
	dc.b	nD3, $0C, nRst, $06, nE3, $0C, nRst, $06, nF3, $0C, nRst, nF3
	dc.b	$03, nRst, $0F, nF3, $03, nRst, $0F, nE3, $0C, nRst, $06, nE3
	dc.b	$03, nRst, $0F, nE3, $0C, nF3, nRst, $06, nF3, $0C, nRst, $06
	dc.b	nF3, nRst, $36, nEb3, $06, nRst, nBb3, nG3, nRst, nD4, nRst, nEb3
	dc.b	nRst, nA3, nRst, nG3, nRst, nD4, nEb3, nRst, nD3, nRst, nA3, nF3
	dc.b	nRst, nC4, nRst, nD3, nRst, nA3, nRst, nG3, nRst, nD4, nD3, nRst
	dc.b	nEb3, nRst, nBb3, nG3, nRst, nD4, nRst, nEb3, nRst, nA3, nRst, nG3
	dc.b	nRst, nD4, nEb3, nRst, nF3, nF3, nF3, nRst, $0C, nF3, $06, nF3
	dc.b	nF3, nRst, $36, nF4, $01, nRst, $05, nF5, $06, nF4, $01, nRst
	dc.b	$0B, nF4, $06, nF5, $06, nF4, $01, nRst, $0B, nF4, $06, nF5
	dc.b	$06, nF4, $01, nRst, $0B, nF4, $06, nF5, $06, nF4, $0C, nF4
	dc.b	$06, nF5, $06, nF4, $0C, nF4, $06, nF5, $06, nF4, $0C, nF4
	dc.b	$06, nF5, $06, nF4, $0C, nF4, $06, nF5, $06, nF4, $0C, nF4
	dc.b	$06, nF5, $06, nF4, $0C, nF4, $06, nF5, $06, nF4, $0C, nF4
	dc.b	$06, nF5, $06, nF4, $0C, nF4, $06, nF5, $06, nF4, $0C, nF4
	dc.b	$06, nF5, $06, nF4, $0C, nF4, $06, nF5, $06, nF4, $0C, nF4
	dc.b	$06, nF5, $06, nF4, $0C, nF4, $06, nF5, $06, nF4, $0C, nF4
	dc.b	$06, nF5, $06, nF4, $0C, nF4, $06, nF5, $06, nF4, $0C, nF4
	dc.b	$06, nF5, $06, nF4, $0C, nF4, $06, nF5, $06, nF4, $0C, nF4
	dc.b	$06, nF5, $06, nF4, $0C, nF4, $06, nF5, $06, nF4, $0C, nF4
	dc.b	$06, nF5, $06, nF4, $0C, nF4, $06, nF5, $06, nF4, $0C, nF4
	dc.b	$06, nF5, $06, nF4, $0C, nF4, $06, nF5, $06, nF4, $0C, nF4
	dc.b	$06, nF5, $06, nF4, $0C, nF4, $06, nF5, $06, nF4, $0C, nF4
	dc.b	$06, nF5, $06, nF4, $0C, nF4, $06, nF5, $06, nF4, $36
	smpsJump            s3p47_Jump08

; PSG2 Data
s3p47_PSG2:
	smpsPSGvoice        sTone_04
	smpsDetune          $FF
	dc.b	nRst, $2A

s3p47_Jump07:
	dc.b	nEb3, $06, nRst, nBb3, nG3, nRst, nD4, nRst, nEb3, nRst, nA3, nRst
	dc.b	nG3, nRst, nD4, nEb3, nRst, nD3, nRst, nA3, nF3, nRst, nC4, nRst
	dc.b	nD3, nRst, nA3, nRst, nG3, nRst, nD4, nD3, nRst, nEb3, nRst, nBb3
	dc.b	nG3, nRst, nD4, nRst, nEb3, nRst, nA3, nRst, nG3, nRst, nD4, nEb3
	dc.b	nRst, nBb3, nRst, $0C, nC4, $06, nRst, $0C, nD4, $06, nRst, $0C
	dc.b	nG5, $06, nG6, nG5, nRst, $18, nEb3, $06, nRst, nBb3, nG3, nRst
	dc.b	nD4, nRst, nEb3, nRst, nA3, nRst, nG3, nRst, nD4, nEb3, nRst, nD3
	dc.b	nRst, nA3, nF3, nRst, nC4, nRst, nD3, nRst, nA3, nRst, nG3, nRst
	dc.b	nD4, nD3, nRst, nEb3, nRst, nBb3, nG3, nRst, nD4, nRst, nEb3, nRst
	dc.b	nA3, nRst, nG3, nRst, nD4, nEb3, nRst, nD4, nD4, nD4, nRst, $0C
	dc.b	nD4, $06, nD4, nD4, nRst, $3C, nAb2, $03, nRst, $0F, nAb2, $03
	dc.b	nRst, $0F, nAb2, $0C, nRst, $06, nAb2, $03, nRst, $0F, nAb2, $0C
	dc.b	nRst, nG2, $03, nRst, $0F, nG2, $03, nRst, $0F, nG2, $0C, nRst
	dc.b	$06, nF2, $0C, nRst, $06, nG2, $0C, nRst, nAb2, $03, nRst, $0F
	dc.b	nAb2, $03, nRst, $0F, nAb2, $0C, nRst, $06, nAb2, $03, nRst, $0F
	dc.b	nAb2, $0C, nRst, $06, nBb2, $03, nRst, nC3, nRst, nD3, nRst, nG3
	dc.b	nRst, nF3, nRst, nD3, nRst, nBb2, $12, nRst, $30, nBb2, $03, nRst
	dc.b	$0F, nBb2, $03, nRst, $0F, nBb2, $0C, nRst, $06, nBb2, $03, nRst
	dc.b	$0F, nBb2, $0C, nRst, nA2, $03, nRst, $0F, nA2, $03, nRst, $0F
	dc.b	nA2, $0C, nRst, $06, nG2, $0C, nRst, $06, nA2, $0C, nRst, nBb2
	dc.b	$03, nRst, $0F, nBb2, $03, nRst, $0F, nBb2, $0C, nRst, $06, nBb2
	dc.b	$03, nRst, $0F, nBb2, $0C, nA2, nRst, $06, nA2, $0C, nRst, $06
	dc.b	nA2, nRst, $36, nEb3, $06, nRst, nBb3, nG3, nRst, nD4, nRst, nEb3
	dc.b	nRst, nA3, nRst, nG3, nRst, nD4, nEb3, nRst, nD3, nRst, nA3, nF3
	dc.b	nRst, nC4, nRst, nD3, nRst, nA3, nRst, nG3, nRst, nD4, nD3, nRst
	dc.b	nEb3, nRst, nBb3, nG3, nRst, nD4, nRst, nEb3, nRst, nA3, nRst, nG3
	dc.b	nRst, nD4, nEb3, nRst, nF3, nF3, nF3, nRst, $0C, nF3, $06, nF3
	dc.b	nF3, nRst, $36, nF4, $06, nF5, nF4, $0C, nF4, $06, nF5, nF4
	dc.b	$0C, nF4, $06, nF5, nF4, $0C, nF4, $06, nF5, nF4, $0C, nF4
	dc.b	$06, nF5, nF4, $0C, nF4, $06, nF5, nF4, $0C, nF4, $06, nF5
	dc.b	nF4, $0C, nF4, $06, nF5, nF4, $0C, nF4, $06, nF5, nF4, $0C
	dc.b	nF4, $06, nF5, nF4, $0C, nF4, $06, nF5, nF4, $0C, nF4, $06
	dc.b	nF5, nF4, $0C, nF4, $06, nF5, nF4, $0C, nF4, $06, nF5, nF4
	dc.b	$0C, nF4, $06, nF5, nF4, $0C, nF4, $06, nF5, nF4, $0C, nF4
	dc.b	$06, nF5, nF4, $0C, nF4, $06, nF5, nF4, $0C, nF4, $06, nF5
	dc.b	nF4, $0C, nF4, $06, nF5, nF4, $0C, nF4, $06, nF5, nF4, $0C
	dc.b	nF4, $06, nF5, nF4, $0C, nF4, $06, nF5, nF4, $0C, nF4, $06
	dc.b	nF5, nF4, $0C, nF4, $06, nF5, nF4, $0C, nF4, $06, nF5, nF4
	dc.b	$0C, nF4, $06, nF5, nF4, $0C, nF4, $06, nF5, nF4, $0C, nF4
	dc.b	$06, nF5, nF4, $0C, nF4, $06, nF5, nF4, $36
	smpsJump            s3p47_Jump07

; PSG3 Data
s3p47_PSG3:
	smpsPSGvoice        sTone_02
	smpsPSGform         $E7
	dc.b	nRst, $2A

s3p47_Jump06:
	smpsFMAlterVol      $FD, $D3
	dc.b	$06
	smpsFMAlterVol      $03, $D3
	dc.b	$03, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	smpsFMAlterVol      $FD, $D3
	dc.b	$06
	smpsFMAlterVol      $03, $D3
	dc.b	$03, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	smpsFMAlterVol      $FD, $D3
	dc.b	$06
	smpsFMAlterVol      $03, $D3
	dc.b	$03, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	smpsFMAlterVol      $FD, $D3
	dc.b	$06
	smpsFMAlterVol      $03, $D3
	dc.b	$03, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, $0C
	smpsFMAlterVol      $FD, $D3
	dc.b	$0C, nMaxPSG1, $06, nMaxPSG1, $08, nMaxPSG1, nMaxPSG1, $02
	smpsFMAlterVol      $03, $80
	dc.b	$06
	smpsFMAlterVol      $FD, $D3
	dc.b	$06
	smpsFMAlterVol      $03, $D3
	dc.b	$03, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	smpsFMAlterVol      $FD, $D3
	dc.b	$06
	smpsFMAlterVol      $03, $D3
	dc.b	$03, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	smpsFMAlterVol      $FD, $D3
	dc.b	$06
	smpsFMAlterVol      $03, $D3
	dc.b	$03, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, $32, nMaxPSG1, $34, nMaxPSG1, $06, nMaxPSG1, $03
	dc.b	nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, $03, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, $03, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, $03, nMaxPSG1, nMaxPSG1, $06
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, $03, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, $03, nMaxPSG1
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, $03, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	$03, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, $36
	smpsFMAlterVol      $FD, $D3
	dc.b	$06
	smpsFMAlterVol      $03, $D3
	dc.b	$03, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	smpsFMAlterVol      $FD, $D3
	smpsFMAlterVol      $03, $D3
	dc.b	$03, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	smpsFMAlterVol      $FD, $D3
	smpsFMAlterVol      $03, $D3
	dc.b	$03, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, $32, nMaxPSG1, $34, nMaxPSG1, $06, nMaxPSG1, $03
	dc.b	nMaxPSG1, nMaxPSG1, $06
	smpsFMAlterVol      $FD, $D3
	smpsFMAlterVol      $03, $D3
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, $03, nMaxPSG1, nMaxPSG1, $06
	smpsFMAlterVol      $FD, $D3
	smpsFMAlterVol      $03, $D3
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, $03, nMaxPSG1, nMaxPSG1, $06
	smpsFMAlterVol      $FD, $D3
	smpsFMAlterVol      $03, $D3
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, $03, nMaxPSG1, nMaxPSG1, $06
	smpsFMAlterVol      $FD, $D3
	smpsFMAlterVol      $03, $D3
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, $03, nMaxPSG1, nMaxPSG1, $06
	smpsFMAlterVol      $FD, $D3
	smpsFMAlterVol      $03, $D3
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, $03, nMaxPSG1, nMaxPSG1, $06
	smpsFMAlterVol      $FD, $D3
	smpsFMAlterVol      $03, $D3
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, $03, nMaxPSG1, nMaxPSG1, $06
	smpsFMAlterVol      $FD, $D3
	smpsFMAlterVol      $03, $D3
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, $03, nMaxPSG1, nMaxPSG1, $06
	smpsFMAlterVol      $FD, $D3
	smpsFMAlterVol      $03, $D3
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, $03, nMaxPSG1, nMaxPSG1, $06
	smpsFMAlterVol      $FD, $D3
	smpsFMAlterVol      $03, $D3
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, $03, nMaxPSG1, nMaxPSG1, $06
	smpsFMAlterVol      $FD, $D3
	dc.b	nMaxPSG1
	smpsJump            s3p47_Jump06

s3p47_Voices:
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
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$20, $10, $10, $F8, 	$19, $37, $13, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $06
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $08, $00, $00, $00
	smpsVcTotalLevel    $80, $13, $37, $19

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
;	$01, $01, $01, $02, 	$8D, $07, $07, $52, 	$09, $00, $00, $03
;	$01, $02, $02, $00, 	$52, $02, $02, $28, 	$18, $22, $18, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $01, $01
	smpsVcRateScale     $01, $00, $00, $02
	smpsVcAttackRate    $12, $07, $07, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $00, $00, $09
	smpsVcDecayRate2    $00, $02, $02, $01
	smpsVcDecayLevel    $02, $00, $00, $05
	smpsVcReleaseRate   $08, $02, $02, $02
	smpsVcTotalLevel    $80, $18, $22, $18

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
;	$1C
;	$7C, $37, $3E, $37, 	$94, $99, $94, $99, 	$08, $0A, $08, $0A
;	$00, $05, $00, $05, 	$3F, $4F, $3F, $4F, 	$2B, $80, $1B, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $07
	smpsVcCoarseFreq    $07, $0E, $07, $0C
	smpsVcRateScale     $02, $02, $02, $02
	smpsVcAttackRate    $19, $14, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $08, $0A, $08
	smpsVcDecayRate2    $05, $00, $05, $00
	smpsVcDecayLevel    $04, $03, $04, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1B, $80, $2B

;	Voice $0D
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
;	$14
;	$71, $72, $31, $31, 	$0F, $0F, $0F, $0F, 	$00, $0F, $00, $00
;	$00, $00, $00, $00, 	$0F, $AF, $0F, $0F, 	$32, $80, $28, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $0F, $0F, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $0F, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $0A, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $28, $80, $32

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

