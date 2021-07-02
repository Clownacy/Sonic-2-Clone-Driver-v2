s3p19_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     s3p19_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $26

	smpsHeaderDAC       s3p19_DAC
	smpsHeaderFM        s3p19_FM1,	$0C, $1C
	smpsHeaderFM        s3p19_FM2,	$0C, $18
	smpsHeaderFM        s3p19_FM3,	$0C, $0F
	smpsHeaderFM        s3p19_FM4,	$0C, $0C
	smpsHeaderFM        s3p19_FM5,	$0C, $0C
	smpsHeaderPSG       s3p19_PSG1,	$F4, $05, $00, sTone_0C
	smpsHeaderPSG       s3p19_PSG2,	$F4, $05, $00, sTone_0C
	smpsHeaderPSG       s3p19_PSG3,	$F4, $01, $00, sTone_0C

; DAC Data
s3p19_DAC:
	dc.b	dKickS3, $0C, dElectricFloorTom, $02, nRst, $04, dElectricFloorTom, $06, dSnareS3, $22, nRst, $0E
	dc.b	dSnareS3, $0C, nRst, dKickS3, dElectricFloorTom, $02, nRst, $04, dElectricFloorTom, $06, dSnareS3, $24
	dc.b	nRst, $0C, dSnareS3, $06, dElectricFloorTom, $04, nRst, $02, dMidpitchSnare, $0A, nRst, $02
	dc.b	dKickS3, $0C, dElectricFloorTom, $02, nRst, $04, dElectricFloorTom, $06, dSnareS3, $22, nRst, $0E
	dc.b	dSnareS3, $0A, nRst, $0E, dKickS3, $0C, dElectricFloorTom, $02, nRst, $04, dElectricFloorTom, $06
	dc.b	dSnareS3, $1E, nRst, $12, dSnareS3, $06, dElectricFloorTom, $02, nRst, $04, dMidpitchSnare, $0A
	dc.b	nRst, $02, dKickS3, $08, nRst, $04, dElectricFloorTom, $02, nRst, $04, dElectricFloorTom, $06
	dc.b	dSnareS3, $1C, nRst, $14, dSnareS3, $0C, nRst, dKickS3, $0A, nRst, $02, dElectricFloorTom
	dc.b	nRst, $04, dElectricFloorTom, $06, dSnareS3, $1E, nRst, $12, dSnareS3, $06, dElectricFloorTom, $02
	dc.b	nRst, $04, dMidpitchSnare, $0A, nRst, $02, dKickS3, $0A, nRst, $02, dElectricFloorTom, nRst
	dc.b	$04, dElectricFloorTom, $06, dSnareS3, $20, nRst, $10, dSnareS3, $0C, nRst, dKickS3, $0A
	dc.b	nRst, $02, dElectricFloorTom, nRst, $04, dElectricFloorTom, $06, dSnareS3, $18, nRst, dSnareS3, $06
	dc.b	dElectricFloorTom, $02, nRst, $04, dMidpitchSnare, $0C, dKickS3, $0A, nRst, $02, dElectricFloorTom, nRst
	dc.b	$04, dElectricFloorTom, $06, dSnareS3, $20, nRst, $10, dSnareS3, $0A, nRst, $0E, dKickS3
	dc.b	$0C, dElectricFloorTom, $02, nRst, $04, dElectricFloorTom, $06, dSnareS3, $1C, nRst, $14, dSnareS3
	dc.b	$06, dElectricFloorTom, $02, nRst, $04, dMidpitchSnare, $0C, dKickS3, $0A, nRst, $02, dElectricFloorTom
	dc.b	nRst, $04, dElectricFloorTom, $06, dSnareS3, $1C, nRst, $14, dSnareS3, $0C, nRst, dKickS3
	dc.b	dElectricFloorTom, $02, nRst, $04, dElectricFloorTom, $06, dSnareS3, $18, nRst, dSnareS3, $06, dElectricFloorTom
	dc.b	$02, nRst, $04, dMidpitchSnare, $0A, nRst, $02, dKickS3, $06, dKickS3, dKickS3, dKickS3
	dc.b	dSnareS3, nRst, $1E, dElectricFloorTom, $02, nRst, $04, dElectricFloorTom, $06, dSnareS3, $04, nRst
	dc.b	$02, dKickS3, $06, dMidpitchSnare, $04, nRst, $08, dKickS3, $06, dKickS3, dKickS3, dKickS3
	dc.b	dSnareS3, $04, nRst, $20, dElectricFloorTom, $02, nRst, $04, dElectricFloorTom, $06, dSnareS3, $04
	dc.b	nRst, $02, dKickS3, $06, dMidpitchSnare, nRst, dKickS3, $04, nRst, $08, dKickS3, $04
	dc.b	nRst, $02, dKickS3, $06, dSnareS3, $0A, nRst, $02, dKickS3, $08, nRst, $04
	dc.b	dKickS3, $06, dKickS3, $10, nRst, $02, dSnareS3, $0C, dKickS3, $04, nRst, $02
	dc.b	dKickS3, $10, nRst, $02, dKickS3, $08, nRst, $04, dSnareS3, nRst, $02, dKickS3
	dc.b	$10, nRst, $02, dKickS3, $0E, nRst, $04, dSnareS3, nRst, $02, dSnareS3, $04
	dc.b	nRst, $02, dSnareS3, $06, dSnareS3, $04, nRst, $08, dKickS3, $06, nRst, dKickS3
	dc.b	$04, nRst, $02, dKickS3, $06, dSnareS3, $02, nRst, $0A, dKickS3, $04, nRst
	dc.b	$02, dKickS3, $10, nRst, $02, dElectricFloorTom, nRst, $04, dElectricFloorTom, $06, dSnareS3, $04
	dc.b	nRst, $02, dKickS3, nRst, $04, dMidpitchSnare, $06, nRst, dKickS3, $02, nRst, $0A
	dc.b	dKickS3, $04, nRst, $02, dSnareS3, $06, dKickS3, dKickS3, $04, nRst, $02, dSnareS3
	dc.b	nRst, $16, dKickS3, $06, dKickS3, $04, nRst, $02, dSnareS3, nRst, $04, dElectricFloorTom
	dc.b	$02, nRst, $04, dMidpitchSnare, nRst, $08, dKickS3, $02, nRst, $0A, dKickS3, $04
	dc.b	nRst, $02, dKickS3, $06, dSnareS3, $02, nRst, $0A, dKickS3, $04, nRst, $02
	dc.b	dKickS3, $12, dKickS3, $06, dKickS3, dSnareS3, $02, nRst, $04, dElectricFloorTom, $02, nRst
	dc.b	$04, dMidpitchSnare, nRst, $08, dKickS3, $04, nRst, $08, dKickS3, $02, nRst, $04
	dc.b	dSnareS3, $06, dKickS3, $02, nRst, $04, dKickS3, nRst, $02, dSnareS3, nRst, $16
	dc.b	dKickS3, $04, nRst, $02, dKickS3, $04, nRst, $02, dSnareS3, $04, nRst, $02
	dc.b	dSnareS3, $06, dSnareS3, $02, nRst, $04, dSnareS3, $06
	smpsJump            s3p19_DAC

; FM1 Data
s3p19_FM1:
	smpsSetvoice        $06
	smpsDetune          $01
	smpsModSet          $0A, $01, $03, $06
	dc.b	nA2, $0A, nRst, $02, nC3, $04, nRst, $02, nA2, $0A, nRst, $02
	dc.b	nB2, $0A, nRst, $02, nG2, $0C, nA2, $0A, nRst, $02, nG2, $06
	dc.b	nF2, $08, nRst, $04, nE2, $04, nRst, $08, nA2, $0C, nC3, $04
	dc.b	nRst, $02, nA2, $0C, nB2, $0A, nRst, $02, nG2, $0A, nRst, $02
	dc.b	nA2, $0A, nRst, $02, nD2, $06, nG2, $0C, nE2, $04, nRst, $08
	dc.b	nA2, $0A, nRst, $02, nC3, $04, nRst, $02, nA2, $0C, nB2, $0A
	dc.b	nRst, $02, nG2, $0A, nRst, $02, nA2, $0A, nRst, $02, nG2, $06
	dc.b	nF2, $0C, nE2, $04, nRst, $08, nA2, $0C, nC3, $04, nRst, $02
	dc.b	nA2, $0C, nB2, $0A, nRst, $02, nG2, $0A, nRst, $02, nA2, $0A
	dc.b	nRst, $02, nD2, $06, nG2, $0C, nE2, $04, nRst, $08, nA2, $0A
	dc.b	nRst, $02, nC3, $04, nRst, $02, nA2, $0A, nRst, $02, nB2, $0A
	dc.b	nRst, $02, nG2, $0C, nA2, $0A, nRst, $02, nG2, $06, nF2, $08
	dc.b	nRst, $04, nE2, $04, nRst, $08, nA2, $0C, nC3, $04, nRst, $02
	dc.b	nA2, $0C, nB2, $0A, nRst, $02, nG2, $0A, nRst, $02, nA2, $0A
	dc.b	nRst, $02, nD2, $06, nG2, $0C, nE2, $04, nRst, $08, nA2, $0A
	dc.b	nRst, $02, nC3, $04, nRst, $02, nA2, $0C, nB2, $0A, nRst, $02
	dc.b	nG2, $0A, nRst, $02, nA2, $0A, nRst, $02, nG2, $06, nF2, $0C
	dc.b	nE2, $04, nRst, $08, nA2, $0C, nC3, $04, nRst, $02, nA2, $0C
	dc.b	nB2, $0A, nRst, $02, nG2, $0A, nRst, $02, nA2, $0A, nRst, $02
	dc.b	nD2, $06, nG2, $0C, nE2, $04, nRst, $08, nA2, $0A, nRst, $02
	dc.b	nC3, $04, nRst, $02, nA2, $0A, nRst, $02, nB2, $0A, nRst, $02
	dc.b	nG2, $0C, nA2, $0A, nRst, $02, nG2, $06, nF2, $08, nRst, $04
	dc.b	nE2, $04, nRst, $08, nA2, $0C, nC3, $04, nRst, $02, nA2, $0C
	dc.b	nB2, $0A, nRst, $02, nG2, $0A, nRst, $02, nA2, $0A, nRst, $02
	dc.b	nD2, $06, nG2, $0C, nE2, $04, nRst, $08, nA2, $0A, nRst, $02
	dc.b	nC3, $04, nRst, $02, nA2, $0C, nB2, $0A, nRst, $02, nG2, $0A
	dc.b	nRst, $02, nA2, $0A, nRst, $02, nG2, $06, nF2, $0C, nE2, $04
	dc.b	nRst, $08, nA2, $0C, nC3, $04, nRst, $02, nA2, $0C, nB2, $0A
	dc.b	nRst, $02, nG2, $0A, nRst, $02, nA2, $0A, nRst, $02, nD2, $06
	dc.b	nG2, $0C, nE2, $04, nRst, $08
	smpsSetvoice        $06
	smpsDetune          $03
	smpsModSet          $00, $01, $03, $06
	dc.b	nF3, $04, nRst, $02, nF3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $1A, nA3, $02, nB3, $02, nC4, $0E, nC4, $12
	dc.b	nE4, $06, nRst, $06, nG3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nG3, $04, nRst, $1C, nG3, $14, nRst, $02
	dc.b	nD4, $10, nRst, $14, nA3, $0C, nG3, $06, nRst, $06, nA3, $04
	dc.b	nRst, $08, nC4, $10, nRst, $02, nB3, $04, nRst, $0C, nA3, $06
	dc.b	nRst, $08, nB3, $10, nRst, $02, nC4, $04, nRst, $0E, nD4, $04
	dc.b	nRst, $08, nE4, $16, nRst, $02, nB3, $16, nRst, $02
	smpsSetvoice        $0C
	smpsDetune          $03
	smpsModSet          $00, $01, $03, $06
	smpsFMAlterVol      $F6
	dc.b	nE3, $0C, nA2, $04, nRst, $02, nE3, $04, nRst, $0E, nA2, $24
	dc.b	nC3, $16, nRst, $02, nB2, $06, nRst, $06, nB2, $04, nRst, $02
	dc.b	nD3, $06, nRst, $0C, nC3, $36, nRst, $06, nE3, $0C, nA2, $04
	dc.b	nRst, $02, nE3, $04, nRst, $0E, nA2, $24, nC3, $16, nRst, $02
	dc.b	nB2, $06, nRst, $06, nB2, $04, nRst, $02, nD3, $06, nRst, $06
	dc.b	nB2, $04, nRst, $02, nC3, $3C
	smpsFMAlterVol      $0A
	smpsJump            s3p19_FM1

; FM2 Data
s3p19_FM2:
	smpsSetvoice        $0B
	smpsDetune          $FF
	smpsModSet          $0A, $01, $03, $06
	dc.b	nA3, $0A, nRst, $02, nC4, $04, nRst, $02, nA3, $0A, nRst, $02
	dc.b	nB3, $0A, nRst, $02, nG3, $0C, nA3, $0A, nRst, $02, nG3, $06
	dc.b	nF3, $08, nRst, $04, nE3, $04, nRst, $08, nA3, $0C, nC4, $04
	dc.b	nRst, $02, nA3, $0C, nB3, $0A, nRst, $02, nG3, $0A, nRst, $02
	dc.b	nA3, $0A, nRst, $02, nD3, $06, nG3, $0C, nE3, $04, nRst, $08
	dc.b	nA3, $0A, nRst, $02, nC4, $04, nRst, $02, nA3, $0C, nB3, $0A
	dc.b	nRst, $02, nG3, $0A, nRst, $02, nA3, $0A, nRst, $02, nG3, $08
	dc.b	nRst, $0A, nE3, $04, nRst, $08, nA3, $0C, nC4, $04, nRst, $02
	dc.b	nA3, $0C, nB3, $0A, nRst, $02, nG3, $0A, nRst, $02, nA3, $0A
	dc.b	nRst, $02, nD3, $06, nG3, $0C, nE3, $04, nRst, $08, nA3, $0A
	dc.b	nRst, $02, nC4, $06, nA3, $0C, nB3, $0C, nG3, $0C, nA3, $0A
	dc.b	nRst, $02, nG3, $08, nRst, $0A, nE3, $04, nRst, $08, nA3, $0A
	dc.b	nRst, $02, nC4, $06, nA3, $0C, nB3, $0A, nRst, $02, nG3, $0C
	dc.b	nA3, $0A, nRst, $02, nD3, $04, nRst, $02, nG3, $0C, nE3, $04
	dc.b	nRst, $08, nA3, $0A, nRst, $02, nC4, $06, nA3, $0C, nB3, $0A
	dc.b	nRst, $02, nG3, $0C, nA3, $0A, nRst, $02, nG3, $08, nRst, $0A
	dc.b	nE3, $04, nRst, $08, nA3, $0A, nRst, $02, nC4, $06, nA3, $0A
	dc.b	nRst, $02, nB3, $0A, nRst, $02, nG3, $0C, nA3, $0A, nRst, $02
	dc.b	nD3, $06, nG3, $0C, nE3, $04, nRst, $08, nA3, $0C, nC4, $06
	dc.b	nA3, $0C, nB3, $0C, nG3, $0C, nA3, $0A, nRst, $02, nG3, $08
	dc.b	nRst, $0A, nE3, $04, nRst, $08, nA3, $0C, nC4, $06, nA3, $0C
	dc.b	nB3, $0A, nRst, $02, nG3, $0C, nA3, $08, nRst, $04, nD3, $06
	dc.b	nG3, $0C, nE3, $04, nRst, $08, nA3, $0C, nC4, $06, nA3, $0C
	dc.b	nB3, $0C, nG3, $0C, nA3, $0A, nRst, $02, nG3, $08, nRst, $0A
	dc.b	nE3, $04, nRst, $08, nA3, $0A, nRst, $02, nC4, $06, nA3, $0C
	dc.b	nB3, $0A, nRst, $02, nG3, $0C, nA3, $0A, nRst, $02, nD3, $06
	dc.b	nG3, $0E, nRst, $0A
	smpsSetvoice        $06
	smpsDetune          $FD
	smpsModSet          $00, $01, $03, $06
	dc.b	nC4, $04, nRst, $02, nC4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nC4, $04, nRst, $1A, nF4, $02, nG4, $02, nA4, $0E, nA4, $12
	dc.b	nC5, $06, nB4, $02, nA4, $02, nG4, $02, nD4, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nD4, $04, nRst, $02, nD4, $04, nRst, $1A
	dc.b	nEb4, $02, nE4, $14, nRst, $02, nB4, $10, nB4, $02, nA4, $02
	dc.b	nG4, $02, nF4, $02, nRst, $0C, nC4, $0C, nC4, $06, nRst, $06
	dc.b	nC4, $04, nRst, $08, nE4, $10, nRst, $02, nE4, $04, nRst, $0C
	dc.b	nE4, $06, nRst, $08, nF4, $10, nRst, $02, nF4, $04, nRst, $0E
	dc.b	nF4, $04, nRst, $08, nG4, $16, nRst, $02, nD4, $16, nRst, $02
	smpsSetvoice        $0C
	smpsDetune          $FD
	smpsModSet          $00, $01, $03, $06
	smpsFMAlterVol      $F6
	dc.b	nC4, $0C, nF3, $04, nRst, $02, nC4, $04, nRst, $0E, nF3, $24
	dc.b	nA3, $16, nRst, $02, nG3, $06, nRst, $06, nG3, $04, nRst, $02
	dc.b	nB3, $06, nRst, $0C, nA3, $36, nRst, $06, nC4, $0C, nF3, $04
	dc.b	nRst, $02, nC4, $04, nRst, $0E, nF3, $24, nA3, $16, nRst, $02
	dc.b	nG3, $06, nRst, $06, nG3, $04, nRst, $02, nB3, $06, nRst, $06
	dc.b	nG3, $04, nRst, $02, nA3, $3C
	smpsFMAlterVol      $0A
	smpsJump            s3p19_FM2

; FM3 Data
s3p19_FM3:
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $0F, $01, $03, $06

s3p19_Jump02:
	dc.b	nA1, $04, nRst, $08, nG1, $02, nRst, $04, nA1, $44, nRst, $0A
	dc.b	nF1, $04, nRst, $08, nF1, $02, nRst, $04, nF1, $04, nRst, $08
	dc.b	nF1, $04, nRst, $08, nG1, $2E, nRst, $08, nA1, $04, nRst, $08
	dc.b	nG1, $02, nRst, $04, nA1, $42, nRst, $0C, nF1, $04, nRst, $08
	dc.b	nF1, $02, nRst, $04, nF1, $04, nRst, $08, nF1, $04, nRst, $08
	dc.b	nG1, $2E, nRst, $08, nA1, $04, nRst, $08, nG1, $02, nRst, $04
	dc.b	nA1, $44, nRst, $0A, nF1, $04, nRst, $08, nF1, $02, nRst, $04
	dc.b	nF1, $04, nRst, $08, nF1, $04, nRst, $08, nG1, $2A, nRst, $0C
	dc.b	nA1, $04, nRst, $08, nG1, $02, nRst, $04, nA1, $42, nRst, $0C
	dc.b	nF1, $04, nRst, $08, nF1, $02, nRst, $04, nF1, $04, nRst, $08
	dc.b	nF1, $04, nRst, $08, nG1, $2C, nRst, $0A, nA1, $04, nRst, $08
	dc.b	nG1, $04, nRst, $02, nA1, $46, nRst, $08, nF1, $04, nRst, $08
	dc.b	nF1, $02, nRst, $04, nF1, $04, nRst, $08, nF1, $04, nRst, $08
	dc.b	nG1, $2E, nRst, $08, nA1, $04, nRst, $08, nG1, $04, nRst, $02
	dc.b	nA1, $44, nRst, $0A, nF1, $04, nRst, $08, nF1, $02, nRst, $04
	dc.b	nF1, $04, nRst, $08, nF1, $04, nRst, $08, nG1, $2C, nRst, $0A
	dc.b	nF1, $04, nRst, $02, nF1, $04, nRst, $02, nF1, $04, nRst, $02
	dc.b	nF1, $06, nF1, $02, nRst, $46, nG1, $04, nRst, $02, nG1, $04
	dc.b	nRst, $02, nG1, $04, nRst, $02, nG1, $04, nRst, $02, nG1, $04
	dc.b	nRst, $14, nC2, $10, nRst, $08, nG1, $0E, nRst, $0A, nA1, $04
	dc.b	nRst, $08, nG1, $02, nRst, $04, nA1, $08, nRst, $0A, nC2, $04
	dc.b	nRst, $08, nB1, $02, nRst, $04, nC2, $08, nRst, $0A, nD2, $04
	dc.b	nRst, $08, nC2, $02, nRst, $04, nD2, $08, nRst, $0A, nE2, $04
	dc.b	nRst, $08, nD2, $02, nRst, $04, nE2, $08, nRst, $0A, nG2, $16
	dc.b	nRst, $02, nG1, $16, nRst, $02, nA1, $02, nRst, $0A, nA1, $04
	dc.b	nRst, $02, nA1, $08, nRst, $0A, nC2, $04, nRst, $08, nC2, $06
	dc.b	nC2, $04, nRst, $0E, nD2, $04, nRst, $02, nC2, $06, nA1, $02
	dc.b	nRst, $0A, nG1, $06, nRst, $0C, nG1, $06, nRst, $0C, nA1, $24
	dc.b	nRst, $18, nA1, $04, nRst, $08, nA1, $04, nRst, $02, nA1, $06
	dc.b	nRst, $0C, nC2, $06, nRst, $06, nC2, $04, nRst, $02, nC2, $04
	dc.b	nRst, $0E, nD2, $02, nRst, $04, nC2, $06, nA1, $04, nRst, $08
	dc.b	nG1, $06, nRst, $0C, nG1, $06, nRst, $0C, nA1, $36, nRst, $06
	smpsJump            s3p19_Jump02

; FM4 Data
s3p19_FM4:
	smpsPan             panLeft, $00
	smpsSetvoice        $0C
	smpsDetune          $FE
	smpsModSet          $0F, $01, $06, $06

s3p19_Jump01:
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $54, nD4, $06, nEb4, $06
	dc.b	nE4, $12, nG4, $04, nRst, $0E, nC4, $22, nRst, $02, nE4, $04
	dc.b	nRst, $08, nA3, $10, nRst, $02, nC4, $04, nRst, $02, nE4, $48
	dc.b	nD4, $06, nEb4, $06, nE4, $12, nG4, $04, nRst, $0E, nC4, $20
	dc.b	nRst, $04, nE4, $04, nRst, $08, nD4, $12, nC4, $06, nA3, $48
	smpsSetvoice        $0C
	smpsDetune          $FE
	smpsModSet          $0F, $01, $06, $06
	dc.b	nD4, $06, nEb4, $06, nE4, $12, nG4, $04, nRst, $0E, nC4, $22
	dc.b	nRst, $02, nE4, $04, nRst, $08, nA3, $12, nC4, $06, nE4, $48
	dc.b	nD4, $06, nEb4, $06, nE4, $10, nRst, $02, nG4, $04, nRst, $0E
	dc.b	nC4, $24, nE4, $04, nRst, $08, nD4, $12, nC4, $06, nA3, $48
	dc.b	nE4, $06, nF4, $06, nG4, $24, nC4, $36, nRst, $06, nG4, $18
	dc.b	nA4, $04, nRst, $08, nG4, $38, nRst, $10, nA4, $0C, nG4, $06
	dc.b	nRst, $06, nA4, $04, nRst, $08, nC5, $10, nRst, $02, nB4, $04
	dc.b	nRst, $0C, nA4, $06, nRst, $08, nB4, $10, nRst, $02, nC5, $04
	dc.b	nRst, $0E, nD5, $04, nRst, $08, nC5, $16, nRst, $02, nB4, $16
	dc.b	nRst, $02
	smpsSetvoice        $0C
	smpsDetune          $FE
	smpsModSet          $0F, $01, $06, $06
	dc.b	nE5, $0C, nA4, $06, nE5, $04, nRst, $0E, nA4, $22, nRst, $02
	dc.b	nC5, $14, nRst, $04, nB4, $06, nRst, $06, nB4, $04, nRst, $02
	dc.b	nD5, $06, nRst, $06, nB4, $04, nRst, $02, nC5, $32, nRst, $0A
	dc.b	nE5, $0C, nA4, $04, nRst, $02, nE5, $06, nRst, $0C, nA4, $22
	dc.b	nRst, $02, nC5, $14, nRst, $04, nB4, $06, nRst, $06, nB4, $04
	dc.b	nRst, $02, nD5, $06, nRst, $06, nB4, $04, nRst, $02, nC5, $26
	dc.b	nRst, $16
	smpsJump            s3p19_Jump01

; FM5 Data
s3p19_FM5:
	dc.b	nRst, $02
	smpsSetvoice        $0C
	smpsDetune          $02
	smpsModSet          $0F, $01, $06, $06
	smpsPan             panRight, $00

s3p19_Jump00:
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $54, nD4, $06, nEb4, $06
	dc.b	nE4, $12, nG4, $04, nRst, $0E, nC4, $22, nRst, $02, nE4, $04
	dc.b	nRst, $08, nA3, $10, nRst, $02, nC4, $04, nRst, $02, nE4, $48
	dc.b	nD4, $06, nEb4, $06, nE4, $12, nG4, $04, nRst, $0E, nC4, $20
	dc.b	nRst, $04, nE4, $04, nRst, $08, nD4, $12, nC4, $06, nA3, $48
	smpsSetvoice        $0C
	smpsDetune          $02
	smpsModSet          $0F, $01, $06, $06
	smpsPan             panRight, $00
	dc.b	nD4, $06, nEb4, $06, nE4, $12, nG4, $04, nRst, $0E, nC4, $22
	dc.b	nRst, $02, nE4, $04, nRst, $08, nA3, $12, nC4, $06, nE4, $48
	dc.b	nD4, $06, nEb4, $06, nE4, $10, nRst, $02, nG4, $04, nRst, $0E
	dc.b	nC4, $24, nE4, $04, nRst, $08, nD4, $12, nC4, $06, nA3, $48
	dc.b	nE4, $06, nF4, $06, nG4, $24, nC4, $36, nRst, $06, nG4, $18
	dc.b	nA4, $04, nRst, $08, nG4, $38, nRst, $10, nA4, $0C, nG4, $06
	dc.b	nRst, $06, nA4, $04, nRst, $08, nC5, $10, nRst, $02, nB4, $04
	dc.b	nRst, $0C, nA4, $06, nRst, $08, nB4, $10, nRst, $02, nC5, $04
	dc.b	nRst, $0E, nD5, $04, nRst, $08, nC5, $16, nRst, $02, nB4, $16
	dc.b	nRst, $02
	smpsSetvoice        $0C
	smpsDetune          $02
	smpsModSet          $0F, $01, $06, $06
	smpsPan             panRight, $00
	dc.b	nE5, $0C, nA4, $06, nE5, $04, nRst, $0E, nA4, $22, nRst, $02
	dc.b	nC5, $14, nRst, $04, nB4, $06, nRst, $06, nB4, $04, nRst, $02
	dc.b	nD5, $06, nRst, $06, nB4, $04, nRst, $02, nC5, $32, nRst, $0A
	dc.b	nE5, $0C, nA4, $04, nRst, $02, nE5, $06, nRst, $0C, nA4, $22
	dc.b	nRst, $02, nC5, $14, nRst, $04, nB4, $06, nRst, $06, nB4, $04
	dc.b	nRst, $02, nD5, $06, nRst, $06, nB4, $04, nRst, $02, nC5, $26
	dc.b	nRst, $16
	smpsJump            s3p19_Jump00

; PSG1 Data
s3p19_PSG1:
	dc.b	nRst, $01
	smpsPSGvoice        sTone_04
	smpsDetune          $FF

s3p19_Jump05:
	dc.b	nA3, $06, nA4, $06, nRst, $06, nA3, $06, nA4, $06, nRst, $06
	dc.b	nA3, $06, nA4, $06, nRst, $06, nA3, $06, nA4, $06, nRst, $06
	dc.b	nA3, $06, nRst, $06, nA4, $06, nRst, $06, nF3, $06, nF4, $06
	dc.b	nRst, $06, nF3, $06, nF4, $06, nRst, $06, nF3, $06, nG3, $06
	dc.b	nRst, $06, nG4, $06, nG3, $06, nRst, $06, nG4, $06, nRst, $06
	dc.b	nG3, $06, nRst, $06, nA3, $06, nA4, $06, nRst, $06, nA3, $06
	dc.b	nA4, $06, nRst, $06, nA3, $06, nA4, $06, nRst, $06, nA3, $06
	dc.b	nA4, $06, nRst, $06, nA3, $06, nRst, $06, nA4, $06, nRst, $06
	dc.b	nF3, $06, nF4, $06, nRst, $06, nF3, $06, nF4, $06, nRst, $06
	dc.b	nF3, $06, nG3, $06, nRst, $06, nG4, $06, nG3, $06, nRst, $06
	dc.b	nG4, $06, nRst, $06, nG3, $06, nRst, $06, nA3, $06, nA4, $06
	dc.b	nRst, $06, nA3, $06, nA4, $06, nRst, $06, nA3, $06, nA4, $06
	dc.b	nRst, $06, nA3, $06, nA4, $06, nRst, $06, nA3, $06, nRst, $06
	dc.b	nA4, $06, nRst, $06, nF3, $06, nF4, $06, nRst, $06, nF3, $06
	dc.b	nF4, $06, nRst, $06, nF3, $06, nG3, $06, nRst, $06, nG4, $06
	dc.b	nG3, $06, nRst, $06, nG4, $06, nRst, $06, nG3, $06, nRst, $06
	dc.b	nA3, $06, nA4, $06, nRst, $06, nA3, $06, nA4, $06, nRst, $06
	dc.b	nA3, $06, nA4, $06, nRst, $06, nA3, $06, nA4, $06, nRst, $06
	dc.b	nA3, $06, nRst, $06, nA4, $06, nRst, $06, nF3, $06, nF4, $06
	dc.b	nRst, $06, nF3, $06, nF4, $06, nRst, $06, nF3, $06, nG3, $06
	dc.b	nRst, $06, nG4, $06, nG3, $06, nRst, $06, nG4, $06, nRst, $06
	dc.b	nG3, $06, nRst, $06, nA3, $06, nA4, $06, nRst, $06, nA3, $06
	dc.b	nA4, $06, nRst, $06, nA3, $06, nA4, $06, nRst, $06, nA3, $06
	dc.b	nA4, $06, nRst, $06, nA3, $06, nRst, $06, nA4, $06, nRst, $06
	dc.b	nF3, $06, nF4, $06, nRst, $06, nF3, $06, nF4, $06, nRst, $06
	dc.b	nF3, $06, nG3, $06, nRst, $06, nG4, $06, nG3, $06, nRst, $06
	dc.b	nG4, $06, nRst, $06, nG3, $06, nRst, $06, nA3, $06, nA4, $06
	dc.b	nRst, $06, nA3, $06, nA4, $06, nRst, $06, nA3, $06, nA4, $06
	dc.b	nRst, $06, nA3, $06, nA4, $06, nRst, $06, nA3, $06, nRst, $06
	dc.b	nA4, $06, nRst, $06, nF3, $06, nF4, $06, nRst, $06, nF3, $06
	dc.b	nF4, $06, nRst, $06, nF3, $06, nG3, $06, nRst, $06, nG4, $06
	dc.b	nG3, $06, nRst, $06, nG4, $06, nRst, $06, nG3, $06, nRst, $06
	dc.b	nF3, $04, nRst, $08, nF3, $04, nRst, $08, nF3, $0A, nRst, $02
	dc.b	nC3, $04, nRst, $02, nF3, $04, nRst, $08, nF3, $0A, nRst, $02
	dc.b	nC3, $04, nRst, $02, nF3, $0C, nC3, $06, nRst, $06, nG3, $06
	dc.b	nRst, $06, nG3, $04, nRst, $08, nG3, $0A, nRst, $02, nD3, $04
	dc.b	nRst, $02, nG3, $06, nRst, $06, nG3, $0A, nRst, $02, nD3, $04
	dc.b	nRst, $02, nG3, $0C, nD3, $08, nRst, $04, nD3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nA3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nE3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nB3, $04, nRst, $02, nD4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nB3, $04, nRst, $02, nA3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nE4, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nB3, $04, nRst, $02, nB3, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nF4, $04, nRst, $02, nE4, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nC4, $04, nRst, $02, nG4, $04, nRst, $02
	dc.b	nF4, $04, nRst, $02, nE4, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b	nE4, $04, nRst, $02, nD4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nG3, $06, nA3, $04, nRst, $02, nA3, $04, nRst, $02, nA3, $04
	dc.b	nRst, $02, nA3, $04, nRst, $0E, nC4, $04, nRst, $02, nC4, $04
	dc.b	nRst, $02, nC4, $04, nRst, $02, nC4, $04, nRst, $0E, nD4, $04
	dc.b	nRst, $02, nD4, $04, nRst, $02, nC4, $04, nRst, $08, nB3, $04
	dc.b	nRst, $08, nB3, $04, nRst, $02, nB3, $04, nRst, $08, nB3, $04
	dc.b	nRst, $02, nC4, $04, nRst, $14, nC4, $04, nRst, $02, nC4, $04
	dc.b	nRst, $02, nC4, $04, nRst, $02, nC4, $04, nRst, $02, nB3, $04
	dc.b	nRst, $08, nA3, $04, nRst, $02, nA3, $04, nRst, $02, nA3, $04
	dc.b	nRst, $02, nA3, $04, nRst, $02, nA3, $04, nRst, $08, nC4, $04
	dc.b	nRst, $02, nC4, $04, nRst, $02, nC4, $04, nRst, $02, nC4, $04
	dc.b	nRst, $0E, nD4, $04, nRst, $02, nC4, $04, nRst, $02, nB3, $04
	dc.b	nRst, $08, nG3, $04, nRst, $0E, nG3, $04, nRst, $0E, nA3, $26
	dc.b	nRst, $16
	smpsJump            s3p19_Jump05

; PSG2 Data
s3p19_PSG2:
	smpsPSGvoice        sTone_04

s3p19_Jump04:
	dc.b	nA3, $06, nA4, $06, nRst, $06, nA3, $06, nA4, $06, nRst, $06
	dc.b	nA3, $06, nA4, $06, nRst, $06, nA3, $06, nA4, $06, nRst, $06
	dc.b	nA3, $06, nRst, $06, nA4, $06, nRst, $06, nF3, $06, nF4, $06
	dc.b	nRst, $06, nF3, $06, nF4, $06, nRst, $06, nF3, $06, nG3, $06
	dc.b	nRst, $06, nG4, $06, nG3, $06, nRst, $06, nG4, $06, nRst, $06
	dc.b	nG3, $06, nRst, $06, nA3, $06, nA4, $06, nRst, $06, nA3, $06
	dc.b	nA4, $06, nRst, $06, nA3, $06, nA4, $06, nRst, $06, nA3, $06
	dc.b	nA4, $06, nRst, $06, nA3, $06, nRst, $06, nA4, $06, nRst, $06
	dc.b	nF3, $06, nF4, $06, nRst, $06, nF3, $06, nF4, $06, nRst, $06
	dc.b	nF3, $06, nG3, $06, nRst, $06, nG4, $06, nG3, $06, nRst, $06
	dc.b	nG4, $06, nRst, $06, nG3, $06, nRst, $06, nA3, $06, nA4, $06
	dc.b	nRst, $06, nA3, $06, nA4, $06, nRst, $06, nA3, $06, nA4, $06
	dc.b	nRst, $06, nA3, $06, nA4, $06, nRst, $06, nA3, $06, nRst, $06
	dc.b	nA4, $06, nRst, $06, nF3, $06, nF4, $06, nRst, $06, nF3, $06
	dc.b	nF4, $06, nRst, $06, nF3, $06, nG3, $06, nRst, $06, nG4, $06
	dc.b	nG3, $06, nRst, $06, nG4, $06, nRst, $06, nG3, $06, nRst, $06
	dc.b	nA3, $06, nA4, $06, nRst, $06, nA3, $06, nA4, $06, nRst, $06
	dc.b	nA3, $06, nA4, $06, nRst, $06, nA3, $06, nA4, $06, nRst, $06
	dc.b	nA3, $06, nRst, $06, nA4, $06, nRst, $06, nF3, $06, nF4, $06
	dc.b	nRst, $06, nF3, $06, nF4, $06, nRst, $06, nF3, $06, nG3, $06
	dc.b	nRst, $06, nG4, $06, nG3, $06, nRst, $06, nG4, $06, nRst, $06
	dc.b	nG3, $06, nRst, $06, nA3, $06, nA4, $06, nRst, $06, nA3, $06
	dc.b	nA4, $06, nRst, $06, nA3, $06, nA4, $06, nRst, $06, nA3, $06
	dc.b	nA4, $06, nRst, $06, nA3, $06, nRst, $06, nA4, $06, nRst, $06
	dc.b	nF3, $06, nF4, $06, nRst, $06, nF3, $06, nF4, $06, nRst, $06
	dc.b	nF3, $06, nG3, $06, nRst, $06, nG4, $06, nG3, $06, nRst, $06
	dc.b	nG4, $06, nRst, $06, nG3, $06, nRst, $06, nA3, $06, nA4, $06
	dc.b	nRst, $06, nA3, $06, nA4, $06, nRst, $06, nA3, $06, nA4, $06
	dc.b	nRst, $06, nA3, $06, nA4, $06, nRst, $06, nA3, $06, nRst, $06
	dc.b	nA4, $06, nRst, $06, nF3, $06, nF4, $06, nRst, $06, nF3, $06
	dc.b	nF4, $06, nRst, $06, nF3, $06, nG3, $06, nRst, $06, nG4, $06
	dc.b	nG3, $06, nRst, $06, nG4, $06, nRst, $06, nG3, $06, nRst, $06
	dc.b	nF3, $04, nRst, $08, nF3, $04, nRst, $08, nF3, $0A, nRst, $02
	dc.b	nC3, $04, nRst, $02, nF3, $04, nRst, $08, nF3, $0A, nRst, $02
	dc.b	nC3, $04, nRst, $02, nF3, $0C, nC3, $06, nRst, $06, nG3, $06
	dc.b	nRst, $06, nG3, $04, nRst, $08, nG3, $0A, nRst, $02, nD3, $04
	dc.b	nRst, $02, nG3, $06, nRst, $06, nG3, $0A, nRst, $02, nD3, $04
	dc.b	nRst, $02, nG3, $0C, nD3, $08, nRst, $04, nD3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nA3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nE3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nB3, $04, nRst, $02, nD4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nB3, $04, nRst, $02, nA3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nE4, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nB3, $04, nRst, $02, nB3, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nF4, $04, nRst, $02, nE4, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nC4, $04, nRst, $02, nG4, $04, nRst, $02
	dc.b	nF4, $04, nRst, $02, nE4, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b	nE4, $04, nRst, $02, nD4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nG3, $06, nC4, $04, nRst, $08, nC4, $04, nRst, $02, nC5, $04
	dc.b	nRst, $08, nC4, $04, nRst, $02, nE4, $04, nRst, $02, nE5, $04
	dc.b	nRst, $08, nE4, $04, nRst, $02, nE4, $04, nRst, $02, nE5, $04
	dc.b	nRst, $02, nD5, $04, nRst, $02, nD5, $06, nC5, $02, nRst, $0A
	dc.b	nB3, $04, nRst, $08, nB3, $04, nRst, $02, nB4, $04, nRst, $08
	dc.b	nB3, $04, nRst, $02, nE4, $04, nRst, $02, nE5, $04, nRst, $08
	dc.b	nE4, $04, nRst, $02, nE4, $04, nRst, $02, nE4, $04, nRst, $1A
	dc.b	nC4, $04, nRst, $08, nC4, $04, nRst, $02, nC5, $04, nRst, $08
	dc.b	nC4, $04, nRst, $02, nE4, $04, nRst, $02, nE5, $04, nRst, $08
	dc.b	nE4, $04, nRst, $02, nE4, $04, nRst, $02, nE5, $04, nRst, $02
	dc.b	nD5, $04, nRst, $02, nC5, $06, nA4, $02, nRst, $0A, nB3, $04
	dc.b	nRst, $08, nB3, $04, nRst, $02, nB4, $04, nRst, $08, nB3, $04
	dc.b	nRst, $02, nE4, $04, nRst, $02, nE5, $04, nRst, $08, nE4, $04
	dc.b	nRst, $02, nE4, $04, nRst, $02, nE4, $04, nRst, $1A
	smpsJump            s3p19_Jump04

; PSG3 Data
s3p19_PSG3:
	smpsPSGvoice        sTone_02
	smpsPSGform         $E7

s3p19_Jump03:
	dc.b	nRst, $0C
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $06
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $5A
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $06
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $3C
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $06
	smpsPSGvoice        sTone_08
	dc.b	nBb6, $18
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $06
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $5A
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $06
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $3C
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $06
	smpsPSGvoice        sTone_08
	dc.b	nBb6, $18
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $06
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $5A
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $06
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $3C
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $06
	smpsPSGvoice        sTone_08
	dc.b	nBb6, $18
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $06
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $5A
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $06
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $3C
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $06
	smpsPSGvoice        sTone_08
	dc.b	nBb6, $18
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $06
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $5A
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $06
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $3C
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $06
	smpsPSGvoice        sTone_08
	dc.b	nBb6, $18
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $06
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $5A
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $06
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $3C
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $06
	smpsPSGvoice        sTone_08
	dc.b	nBb6, $48
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $06
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $12
	smpsPSGvoice        sTone_08
	dc.b	nBb6, $48
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $06
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $12
	smpsPSGvoice        sTone_08
	dc.b	nBb6, $60, $60, $48
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $06
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $12
	smpsPSGvoice        sTone_08
	dc.b	nBb6, $5A
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $06
	smpsPSGvoice        sTone_08
	dc.b	nBb6, $5A
	smpsPSGvoice        sTone_01
	dc.b	nBb6, $06
	smpsPSGvoice        sTone_08
	dc.b	nBb6, $60, $0C
	smpsJump            s3p19_Jump03

s3p19_Voices:
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

