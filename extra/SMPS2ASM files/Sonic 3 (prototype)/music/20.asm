s3p20_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     s3p20_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $33

	smpsHeaderDAC       s3p20_DAC
	smpsHeaderFM        s3p20_FM1,	$0C, $16
	smpsHeaderFM        s3p20_FM2,	$0C, $1B
	smpsHeaderFM        s3p20_FM3,	$00, $16
	smpsHeaderFM        s3p20_FM4,	$00, $14
	smpsHeaderFM        s3p20_FM5,	$00, $19
	smpsHeaderPSG       s3p20_PSG1,	$F4, $05, $00, sTone_0C
	smpsHeaderPSG       s3p20_PSG2,	$F4, $04, $00, sTone_0C
	smpsHeaderPSG       s3p20_PSG3,	$00, $02, $00, sTone_0C

; DAC Data
s3p20_DAC:
	dc.b	nRst, $18, nRst, $0C
	smpsPan             panRight, $00
	dc.b	dHighTom, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $06
	smpsPan             panCenter, $00
	dc.b	dLowTomS3, $06
	smpsPan             panLeft, $00
	dc.b	dFloorTomS3, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $18, nRst, $18, nRst, $0C
	smpsPan             panRight, $00
	dc.b	dHighTom, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $06
	smpsPan             panCenter, $00
	dc.b	dLowTomS3, $06
	smpsPan             panLeft, $00
	dc.b	dFloorTomS3, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $18, nRst, $18, nRst, $0C
	smpsPan             panRight, $00
	dc.b	dHighTom, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $06
	smpsPan             panCenter, $00
	dc.b	dLowTomS3, $06
	smpsPan             panLeft, $00
	dc.b	dFloorTomS3, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $18

s3p20_Jump00:
	dc.b	dKickS3, $18, nRst, $0C
	smpsPan             panRight, $00
	dc.b	dHighTom, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $18, nRst, $0C, dKickS3, $0C, dKickS3, $18, nRst, $0C
	smpsPan             panRight, $00
	dc.b	dHighTom, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $18, nRst, $0C, dKickS3, $0C, dKickS3, $18, nRst, $0C
	smpsPan             panRight, $00
	dc.b	dHighTom, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $06
	smpsPan             panCenter, $00
	dc.b	dLowTomS3, $06
	smpsPan             panLeft, $00
	dc.b	dFloorTomS3, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $0C, dSnareS3, $0C, dKickS3, $18, nRst, $0C
	smpsPan             panRight, $00
	dc.b	dHighTom, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $18, nRst, $0C, dKickS3, $0C, dKickS3, $12, dKickS3, $06, nRst, $0C
	smpsPan             panRight, $00
	dc.b	dHighTom, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $18, nRst, $18, dKickS3, $12, dKickS3, $06, nRst, $0C
	smpsPan             panRight, $00
	dc.b	dHighTom, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $18, nRst, $0C, dSnareS3, $0C, dKickS3, $12, dKickS3, $06, nRst, $0C
	smpsPan             panRight, $00
	dc.b	dHighTom, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $06
	smpsPan             panCenter, $00
	dc.b	dLowTomS3, $06
	smpsPan             panLeft, $00
	dc.b	dFloorTomS3, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $18, dKickS3, $12, dKickS3, $06, nRst, $0C
	smpsPan             panRight, $00
	dc.b	dHighTom, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $18, nRst, $0C, dSnareS3, $0C, dKickS3, $12, dKickS3, $06, nRst, $0C
	smpsPan             panRight, $00
	dc.b	dHighTom, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $18, nRst, $18, dKickS3, $12, dKickS3, $06, nRst, $0C
	smpsPan             panRight, $00
	dc.b	dHighTom, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $18, nRst, $0C, dSnareS3, $0C, dKickS3, $12, dKickS3, $06, nRst, $0C
	smpsPan             panRight, $00
	dc.b	dHighTom, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $06
	smpsPan             panCenter, $00
	dc.b	dLowTomS3, $06
	smpsPan             panLeft, $00
	dc.b	dFloorTomS3, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $18, dKickS3, $12, dKickS3, $06, nRst, $0C
	smpsPan             panRight, $00
	dc.b	dHighTom, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $18, nRst, $0C, dSnareS3, $0C, dKickS3, $12, dKickS3, $06, dSnareS3, $0C
	smpsPan             panRight, $00
	dc.b	dHighTom, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $06, dKickS3, $12, nRst, $0C, dSnareS3, $0C, dKickS3, $12, dKickS3, $06
	dc.b	nRst, $0C
	smpsPan             panRight, $00
	dc.b	dHighTom, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $06
	smpsPan             panCenter, $00
	dc.b	dLowTomS3, $0C
	smpsPan             panLeft, $00
	dc.b	dFloorTomS3, $06
	smpsPan             panCenter, $00
	dc.b	nRst, $0C, dSnareS3, $0C, dKickS3, $12, dKickS3, $06, nRst, $0C
	smpsPan             panRight, $00
	dc.b	dHighTom, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $06, dKickS3, $0C, dKickS3, $06, nRst, $0C, dSnareS3, $0C, dKickS3, $12
	dc.b	dKickS3, $06, nRst, $0C
	smpsPan             panRight, $00
	dc.b	dHighTom, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $06
	smpsPan             panCenter, $00
	dc.b	dLowTomS3, $06
	smpsPan             panLeft, $00
	dc.b	dFloorTomS3, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $0C, dSnareS3, $0C, dKickS3, $12, dKickS3, $06, dSnareS3, $0C
	smpsPan             panRight, $00
	dc.b	dHighTom, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $06, dKickS3, $12, nRst, $0C, dSnareS3, $0C, dKickS3, $12, dKickS3, $06
	dc.b	nRst, $0C
	smpsPan             panRight, $00
	dc.b	dHighTom, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $06
	smpsPan             panCenter, $00
	dc.b	dLowTomS3, $06
	smpsPan             panLeft, $00
	dc.b	dFloorTomS3, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $0C, dSnareS3, $0C, dKickS3, $12, dKickS3, $06, nRst, $0C
	smpsPan             panRight, $00
	dc.b	dHighTom, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $06, dKickS3, $0C, dKickS3, $06, nRst, $0C, dSnareS3, $0C, dKickS3, $12
	dc.b	dKickS3, $06, nRst, $0C
	smpsPan             panRight, $00
	dc.b	dHighTom, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $06
	smpsPan             panCenter, $00
	dc.b	dLowTomS3, $06
	smpsPan             panLeft, $00
	dc.b	dFloorTomS3, $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $0C, dSnareS3, $06, nRst, $06
	smpsJump            s3p20_Jump00

; FM1 Data
s3p20_FM1:
	smpsDetune          $01
	smpsSetvoice        $0B
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nF4, $06, nG4, $06, nF4, $06, nG4, $06, nF4, $06, nG4, $06
	dc.b	nF4, $06, nG4, $06, nF4, $06, nG4, $06, nF4, $06, nG4, $06
	dc.b	nCs4, $06, nEb4, $06, nCs4, $06, nEb4, $06, nCs4, $06, nEb4, $06
	dc.b	nCs4, $06, nEb4, $06, nCs4, $06, nEb4, $06, nCs4, $06, nEb4, $06
	dc.b	nEb4, $06, nF4, $06, nEb4, $06, nF4, $06, nEb4, $06, nF4, $06
	dc.b	nEb4, $06, nF4, $06, nEb4, $06, nF4, $06, nEb4, $06, nF4, $06
	dc.b	nC4, $06, nD4, $06, nC4, $06, nD4, $06, nC4, $06, nD4, $06
	dc.b	nC4, $06, nD4, $06, nC4, $06, nD4, $06, nC4, $06, nD4, $06

s3p20_Jump05:
	dc.b	nG2, $06, nA2, $06, nC3, $06, nA2, $06, nD3, $06, nA2, $06
	dc.b	nE3, $06, nA2, $06, nG3, $06, nD3, $06, nA3, $06, nC4, $06
	dc.b	nG3, $06, nD3, $06, nE3, $06, nG3, $06, nG2, $06, nA2, $06
	dc.b	nC3, $06, nA2, $06, nD3, $06, nA2, $06, nE3, $06, nA2, $06
	dc.b	nG3, $06, nD3, $06, nA3, $06, nE3, $06, nG3, $06, nE3, $06
	dc.b	nD3, $06, nE3, $06, nG2, $06, nA2, $06, nC3, $06, nA2, $06
	dc.b	nD3, $06, nA2, $06, nE3, $06, nA2, $06, nG3, $06, nD3, $06
	dc.b	nA3, $06, nC4, $06, nG3, $06, nD3, $06, nE3, $06, nG3, $06
	dc.b	nG2, $06, nA2, $06, nC3, $06, nA2, $06, nD3, $06, nA2, $06
	dc.b	nE3, $06, nA2, $06, nG3, $06, nD3, $06, nA3, $06, nE3, $06
	dc.b	nG3, $06, nE3, $06, nD3, $06, nE3, $06, nG2, $06, nA2, $06
	dc.b	nC3, $06, nA2, $06, nD3, $06, nA2, $06, nE3, $06, nA2, $06
	dc.b	nG3, $06, nD3, $06, nA3, $06, nC4, $06, nG3, $06, nD3, $06
	dc.b	nE3, $06, nG3, $06, nG2, $06, nA2, $06, nC3, $06, nA2, $06
	dc.b	nD3, $06, nA2, $06, nE3, $06, nA2, $06, nG3, $06, nD3, $06
	dc.b	nA3, $06, nE3, $06, nG3, $06, nE3, $06, nD3, $06, nE3, $06
	dc.b	nG2, $06, nA2, $06, nC3, $06, nA2, $06, nD3, $06, nA2, $06
	dc.b	nE3, $06, nA2, $06, nG3, $06, nD3, $06, nA3, $06, nC4, $06
	dc.b	nG3, $06, nD3, $06, nE3, $06, nG3, $06, nG2, $06, nA2, $06
	dc.b	nC3, $06, nA2, $06, nD3, $06, nA2, $06, nE3, $06, nA2, $06
	dc.b	nG3, $06, nD3, $06, nA3, $06, nE3, $06, nG3, $06, nE3, $06
	dc.b	nD3, $06, nE3, $06, nG2, $06, nA2, $06, nC3, $06, nA2, $06
	dc.b	nD3, $06, nA2, $06, nE3, $06, nA2, $06, nG3, $06, nD3, $06
	dc.b	nA3, $06, nC4, $06, nG3, $06, nD3, $06, nE3, $06, nG3, $06
	dc.b	nG2, $06, nA2, $06, nC3, $06, nA2, $06, nD3, $06, nA2, $06
	dc.b	nE3, $06, nA2, $06, nG3, $06, nD3, $06, nA3, $06, nE3, $06
	dc.b	nG3, $06, nE3, $06, nD3, $06, nE3, $06, nG2, $06, nA2, $06
	dc.b	nC3, $06, nA2, $06, nD3, $06, nA2, $06, nE3, $06, nA2, $06
	dc.b	nG3, $06, nD3, $06, nA3, $06, nC4, $06, nG3, $06, nD3, $06
	dc.b	nE3, $06, nG3, $06, nG2, $06, nA2, $06, nC3, $06, nA2, $06
	dc.b	nD3, $06, nA2, $06, nE3, $06, nA2, $06, nG3, $06, nD3, $06
	dc.b	nA3, $06, nE3, $06, nG3, $06, nE3, $06, nD3, $06, nE3, $06
	dc.b	nG2, $06, nA2, $06, nC3, $06, nA2, $06, nD3, $06, nA2, $06
	dc.b	nE3, $06, nA2, $06, nG3, $06, nD3, $06, nA3, $06, nC4, $06
	dc.b	nG3, $06, nD3, $06, nE3, $06, nG3, $06, nG2, $06, nA2, $06
	dc.b	nC3, $06, nA2, $06, nD3, $06, nA2, $06, nE3, $06, nA2, $06
	dc.b	nG3, $06, nD3, $06, nA3, $06, nE3, $06, nG3, $06, nE3, $06
	dc.b	nD3, $06, nE3, $06, nG2, $06, nA2, $06, nC3, $06, nA2, $06
	dc.b	nD3, $06, nA2, $06, nE3, $06, nA2, $06, nG3, $06, nD3, $06
	dc.b	nA3, $06, nC4, $06, nG3, $06, nD3, $06, nE3, $06, nG3, $06
	dc.b	nG2, $06, nA2, $06, nC3, $06, nA2, $06, nD3, $06, nA2, $06
	dc.b	nE3, $06, nA2, $06, nG3, $06, nD3, $06, nA3, $06, nE3, $06
	dc.b	nG3, $06, nE3, $06, nD3, $06, nE3, $06, nG2, $06, nA2, $06
	dc.b	nC3, $06, nA2, $06, nD3, $06, nA2, $06, nE3, $06, nA2, $06
	dc.b	nG3, $06, nD3, $06, nA3, $06, nC4, $06, nG3, $06, nD3, $06
	dc.b	nE3, $06, nG3, $06, nG2, $06, nA2, $06, nC3, $06, nA2, $06
	dc.b	nD3, $06, nA2, $06, nE3, $06, nA2, $06, nG3, $06, nD3, $06
	dc.b	nA3, $06, nE3, $06, nG3, $06, nE3, $06, nD3, $06, nE3, $06
	dc.b	nG2, $06, nA2, $06, nC3, $06, nA2, $06, nD3, $06, nA2, $06
	dc.b	nE3, $06, nA2, $06, nG3, $06, nD3, $06, nA3, $06, nC4, $06
	dc.b	nG3, $06, nD3, $06, nE3, $06, nG3, $06, nG2, $06, nA2, $06
	dc.b	nC3, $06, nA2, $06, nD3, $06, nA2, $06, nE3, $06, nA2, $06
	dc.b	nG3, $06, nD3, $06, nA3, $06, nE3, $06, nG3, $06, nE3, $06
	dc.b	nD3, $06, nE3, $06
	smpsJump            s3p20_Jump05

; FM2 Data
s3p20_FM2:
	smpsPan             panRight, $00
	smpsDetune          $FF
	smpsSetvoice        $08
	smpsDetune          $FF
	smpsModSet          $0F, $01, $06, $06
	dc.b	nC3, $06, nF3, $06, nA3, $06, nC4, $06, nF4, $06, nA4, $06
	dc.b	nC5, $06, nA4, $06, nF4, $06, nC4, $06, nA3, $06, nF3, $06
	dc.b	nAb2, $06, nCs3, $06, nF3, $06, nAb3, $06, nCs4, $06, nF4, $06
	dc.b	nAb4, $06, nF4, $06, nCs4, $06, nAb3, $06, nF3, $06, nCs3, $06
	dc.b	nBb2, $06, nEb3, $06, nG3, $06, nBb3, $06, nEb4, $06, nG4, $06
	dc.b	nBb4, $06, nG4, $06, nEb4, $06, nBb3, $06, nG3, $06, nEb3, $06
	dc.b	nG2, $06, nC3, $06, nE3, $06, nG3, $06, nC4, $06, nE4, $06
	dc.b	nG4, $06, nE4, $06, nC4, $06, nG3, $06, nE3, $06, nC3, $06

s3p20_Jump04:
	smpsSetvoice        $0B
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nA4, $06, nA5, $06, nRst, $06, nA4, $06, nRst, $06, nA4, $06
	dc.b	nA5, $06, nA4, $06, nRst, $06, nE5, $06, nA4, $06, nD5, $06
	dc.b	nA4, $06, nG4, $06, nE5, $06, nG5, $06, nA4, $06, nA5, $06
	dc.b	nRst, $06, nA4, $06, nRst, $06, nA4, $06, nA5, $06, nA4, $06
	dc.b	nRst, $06, nE5, $06, nA4, $06, nD5, $06, nA4, $06, nG4, $06
	dc.b	nE5, $06, nG5, $06
	smpsSetvoice        $08
	smpsDetune          $FF
	smpsModSet          $0F, $01, $06, $06
	dc.b	nA4, $04, nRst, $08, nC5, $04, nRst, $02, nA4, $04, nRst, $02
	dc.b	nRst, $06, nB4, $04, nRst, $08, nG4, $04, nRst, $02, nRst, $06
	dc.b	nA4, $04, nRst, $08, nG4, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nE4, $04, nRst, $08, nA4, $04, nRst, $08, nC5, $04, nRst, $02
	dc.b	nA4, $04, nRst, $02, nRst, $06, nB4, $04, nRst, $08, nG4, $04
	dc.b	nRst, $02, nRst, $06, nA4, $04, nRst, $08, nD4, $04, nRst, $02
	dc.b	nG4, $04, nRst, $08, nE4, $04, nRst, $08, nA4, $04, nRst, $08
	dc.b	nC5, $04, nRst, $02, nA4, $04, nRst, $02, nRst, $06, nB4, $04
	dc.b	nRst, $08, nG4, $04, nRst, $02, nRst, $06, nA4, $04, nRst, $08
	dc.b	nG4, $04, nRst, $02, nF4, $04, nRst, $08, nE4, $04, nRst, $08
	dc.b	nA4, $04, nRst, $08, nC5, $04, nRst, $02, nA4, $04, nRst, $02
	dc.b	nRst, $06, nB4, $04, nRst, $08, nG4, $04, nRst, $02, nRst, $06
	dc.b	nA4, $04, nRst, $08, nD4, $04, nRst, $02, nG4, $04, nRst, $08
	dc.b	nE4, $04, nRst, $08, nA4, $04, nRst, $08, nC5, $04, nRst, $02
	dc.b	nA4, $04, nRst, $02, nRst, $06, nB4, $04, nRst, $08, nG4, $04
	dc.b	nRst, $02, nRst, $06, nA4, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b	nF4, $04, nRst, $08, nE4, $04, nRst, $08, nA4, $04, nRst, $08
	dc.b	nC5, $04, nRst, $02, nA4, $04, nRst, $02, nRst, $06, nB4, $04
	dc.b	nRst, $08, nG4, $04, nRst, $02, nRst, $06, nA4, $04, nRst, $08
	dc.b	nD4, $04, nRst, $02, nG4, $04, nRst, $08, nE4, $04, nRst, $08
	dc.b	nA4, $04, nRst, $08, nC5, $04, nRst, $02, nA4, $04, nRst, $02
	dc.b	nRst, $06, nB4, $04, nRst, $08, nG4, $04, nRst, $02, nRst, $06
	dc.b	nA4, $04, nRst, $08, nG4, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nE4, $04, nRst, $08, nA4, $04, nRst, $08, nC5, $04, nRst, $02
	dc.b	nA4, $04, nRst, $02, nRst, $06, nB4, $04, nRst, $08, nG4, $04
	dc.b	nRst, $02, nRst, $06, nA4, $04, nRst, $08, nD4, $04, nRst, $02
	dc.b	nG4, $04, nRst, $08, nE4, $04, nRst, $08, nA4, $04, nRst, $08
	dc.b	nC5, $04, nRst, $02, nA4, $04, nRst, $02, nRst, $06, nB4, $04
	dc.b	nRst, $08, nG4, $04, nRst, $02, nRst, $06, nA4, $04, nRst, $08
	dc.b	nG4, $04, nRst, $02, nF4, $04, nRst, $08, nE4, $04, nRst, $08
	dc.b	nA4, $04, nRst, $08, nC5, $04, nRst, $02, nA4, $04, nRst, $02
	dc.b	nRst, $06, nB4, $04, nRst, $08, nG4, $04, nRst, $02, nRst, $06
	dc.b	nA4, $04, nRst, $08, nD4, $04, nRst, $02, nG4, $04, nRst, $08
	dc.b	nE4, $04, nRst, $08, nA4, $04, nRst, $08, nC5, $04, nRst, $02
	dc.b	nA4, $04, nRst, $02, nRst, $06, nB4, $04, nRst, $08, nG4, $04
	dc.b	nRst, $02, nRst, $06, nA4, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b	nA4, $04, nRst, $08, nE4, $04, nRst, $08, nA4, $04, nRst, $08
	dc.b	nC5, $04, nRst, $02, nA4, $04, nRst, $02, nRst, $06, nB4, $04
	dc.b	nRst, $08, nG4, $04, nRst, $02, nRst, $06, nA4, $04, nRst, $08
	dc.b	nD4, $04, nRst, $02, nG4, $04, nRst, $08, nE4, $04, nRst, $08
	dc.b	nA4, $04, nRst, $08, nC5, $04, nRst, $02, nA4, $04, nRst, $02
	dc.b	nRst, $06, nB4, $04, nRst, $08, nG4, $04, nRst, $02, nRst, $06
	dc.b	nA4, $04, nRst, $08, nG4, $04, nRst, $02, nA4, $04, nRst, $08
	dc.b	nE4, $04, nRst, $08, nA4, $04, nRst, $08, nC5, $04, nRst, $02
	dc.b	nA4, $04, nRst, $02, nRst, $06, nB4, $04, nRst, $08, nG4, $04
	dc.b	nRst, $02, nRst, $06, nA4, $04, nRst, $08, nD4, $04, nRst, $02
	dc.b	nG4, $04, nRst, $08, nE4, $04, nRst, $08, nA4, $04, nRst, $08
	dc.b	nC5, $04, nRst, $02, nA4, $04, nRst, $02, nRst, $06, nB4, $04
	dc.b	nRst, $08, nG4, $04, nRst, $02, nRst, $06, nA4, $04, nRst, $08
	dc.b	nG4, $04, nRst, $02, nA4, $04, nRst, $08, nE4, $04, nRst, $08
	dc.b	nA4, $04, nRst, $08, nC5, $04, nRst, $02, nA4, $04, nRst, $02
	dc.b	nRst, $06, nB4, $04, nRst, $08, nG4, $04, nRst, $02, nRst, $06
	dc.b	nA4, $04, nRst, $08, nD4, $04, nRst, $02, nG4, $04, nRst, $08
	dc.b	nE4, $04, nRst, $08, nA4, $04, nRst, $08, nC5, $04, nRst, $02
	dc.b	nA4, $04, nRst, $02, nRst, $06, nB4, $04, nRst, $08, nG4, $04
	dc.b	nRst, $02, nRst, $06, nA4, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b	nA4, $04, nRst, $08, nE4, $04, nRst, $08, nA4, $04, nRst, $08
	dc.b	nC5, $04, nRst, $02, nA4, $04, nRst, $02, nRst, $06, nB4, $04
	dc.b	nRst, $08, nG4, $04, nRst, $02, nRst, $06, nA4, $04, nRst, $08
	dc.b	nD4, $04, nRst, $02, nG4, $04, nRst, $08, nE4, $04, nRst, $08
	smpsJump            s3p20_Jump04

; FM3 Data
s3p20_FM3:
	smpsPan             panRight, $00
	smpsSetvoice        $04
	smpsDetune          $05
	smpsModSet          $0A, $01, $06, $06
	dc.b	nA4, $18, smpsNoAttack, $18, smpsNoAttack, $18, nF4, $18, smpsNoAttack, $18, smpsNoAttack, $18
	dc.b	nG4, $18, smpsNoAttack, $18, smpsNoAttack, $18, nE4, $18, smpsNoAttack, $18, smpsNoAttack, $18

s3p20_Jump03:
	dc.b	nA4, $18, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18
	dc.b	smpsNoAttack, $18, smpsNoAttack, $18, nRst, $18, nRst, $18, nRst, $18, nRst, $18
	dc.b	nRst, $18, nRst, $18, nRst, $18, nA4, $18, nG4, $18, smpsNoAttack, $18
	dc.b	smpsNoAttack, $0C, nC5, $0C, smpsNoAttack, $0C, nB4, $0C, nG4, $18, smpsNoAttack, $18
	dc.b	nRst, $18, nRst, $18, nG4, $18, smpsNoAttack, $18, smpsNoAttack, $0C, nC5, $0C
	dc.b	smpsNoAttack, $0C, nB4, $0C, nG4, $18, smpsNoAttack, $18, smpsNoAttack, $18, nRst, $18
	dc.b	nG4, $18, smpsNoAttack, $18, smpsNoAttack, $0C, nB4, $0C, smpsNoAttack, $0C, nC5, $0C
	dc.b	nD5, $18, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18, nG4, $18, smpsNoAttack, $18
	dc.b	smpsNoAttack, $0C, nC5, $0C, smpsNoAttack, $0C, nB4, $0C, nG4, $18, smpsNoAttack, $18
	dc.b	nRst, $18, nRst, $18, nRst, $18, nRst, $18, nRst, $18, nRst, $18
	dc.b	nRst, $18, nRst, $18, nRst, $18, nRst, $18, nE5, $18, smpsNoAttack, $0C
	dc.b	nA4, $0C, smpsNoAttack, $18, nC5, $18, nB4, $18, smpsNoAttack, $18, smpsNoAttack, $18
	dc.b	smpsNoAttack, $0C, nG4, $0C, nA4, $18, smpsNoAttack, $18, smpsNoAttack, $0C, nRst, $0C
	dc.b	nRst, $18, nRst, $18, nRst, $18, nRst, $18, nRst, $18, nE5, $18
	dc.b	smpsNoAttack, $0C, nA4, $0C, smpsNoAttack, $18, nC5, $18, nB4, $18, smpsNoAttack, $18
	dc.b	smpsNoAttack, $18, smpsNoAttack, $18
	smpsJump            s3p20_Jump03

; FM4 Data
s3p20_FM4:
	smpsSetvoice        $03
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nF2, $48, nCs2, nEb2, nC2

s3p20_Jump02:
	smpsSetvoice        $0B
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	smpsFMAlterVol      $08
	dc.b	nG2, $06, nA2, nC3, nA2, nD3, nA2, nE3, nA2, nG3, nD3, nA3
	dc.b	nC4, nG3, nD3, nE3, nG3, nG2, nA2, nC3, nA2, nD3, nA2, nE3
	dc.b	nA2, nG3, nD3, nA3, nE3, nG3, nE3, nD3, nE3, nG2, nA2, nC3
	dc.b	nA2, nD3, nA2, nE3, nA2, nG3, nD3, nA3, nC4, nG3, nD3, nE3
	dc.b	nG3, nG2, nA2, nC3, nA2, nD3, nA2, nE3, nA2, nG3, nD3, nA3
	dc.b	nE3
	smpsSetvoice        $03
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	smpsFMAlterVol      $F8
	dc.b	nE2, $18, nA2, $0A, nRst, $02, nA2, nRst, $04, nA2, $48, nRst
	dc.b	$06, nA2, $0A, nRst, $02, nA2, nRst, $04, nA3, $48, nRst, $06
	dc.b	nA2, $0A, nRst, $02, nA2, nRst, $04, nA2, $48, nRst, $06, nA2
	dc.b	$0A, nRst, $02, nA2, nRst, $04, nA3, $48, nRst, $06, nF2, $0A
	dc.b	nRst, $02, nF2, nRst, $04, nF2, $48, nRst, $06, nF2, $0A, nRst
	dc.b	$02, nF2, nRst, $04, nF3, $48, nRst, $06, nF2, $0A, nRst, $02
	dc.b	nF2, nRst, $04, nF2, $48, nRst, $06, nF2, $0A, nRst, $02, nF2
	dc.b	nRst, $04, nF3, $30
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	smpsFMAlterVol      $FC
	dc.b	nF3, $0C, nC3, nG2, $06, nA2, $0A, nRst, $02, nA2, nRst, $04
	dc.b	nA2, $30, nG2, $0C, nG2, $02, nRst, $04, nAb2, $0C, nA2, $0A
	dc.b	nRst, $02, nA2, nRst, $04, nA3, $3A, nRst, $02, nG3, nRst, $04
	dc.b	nE3, $0C, nA2, $0A, nRst, $02, nA2, nRst, $04, nA2, $2E, nRst
	dc.b	$02, nG2, $0C, nG2, $02, nRst, $04, nAb2, $0C, nA2, $0A, nRst
	dc.b	$02, nA2, nRst, $04, nA3, $3A, nRst, $02, nG3, nRst, $04, nE3
	dc.b	$0C, nA2, $0A, nRst, $02, nA2, nRst, $04, nA2, $2E, nRst, $02
	dc.b	nG2, $0C, nG2, $02, nRst, $04, nAb2, $0C, nA2, $0A, nRst, $02
	dc.b	nA2, nRst, $04, nA3, $2E, nRst, $02, nA3, $0C, nE3, $0C, nG2
	dc.b	$06, nA2, $0A, nRst, $02, nA2, nRst, $04, nA2, $2E, nRst, $02
	dc.b	nG2, $0C, nG2, $02, nRst, $04, nAb2, $0C, nA2, $0A, nRst, $02
	dc.b	nA2, nRst, $04, nA3, $3A, nRst, $02, nG3, nRst, $04, nE3, $0C
	smpsFMAlterVol      $04
	smpsJump            s3p20_Jump02

; FM5 Data
s3p20_FM5:
	dc.b	nRst, $01
	smpsPan             panLeft, $00
	smpsSetvoice        $1F
	smpsDetune          $01
	smpsModSet          $0F, $01, $06, $06
	dc.b	nA4, $18, smpsNoAttack, $18, smpsNoAttack, $18, nF4, $18, smpsNoAttack, $18, smpsNoAttack, $18
	dc.b	nG4, $18, smpsNoAttack, $18, smpsNoAttack, $18, nE4, $18, smpsNoAttack, $18, smpsNoAttack, $18

s3p20_Jump01:
	dc.b	nA4, $18, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18
	dc.b	smpsNoAttack, $18, smpsNoAttack, $18, nRst, $18, nRst, $18, nRst, $18, nRst, $18
	dc.b	nRst, $18, nRst, $18, nRst, $18, nA4, $18, nG4, $18, smpsNoAttack, $18
	dc.b	smpsNoAttack, $0C, nC5, $0C, smpsNoAttack, $0C, nB4, $0C, nG4, $18, smpsNoAttack, $18
	dc.b	nRst, $18, nRst, $18, nG4, $18, smpsNoAttack, $18, smpsNoAttack, $0C, nC5, $0C
	dc.b	smpsNoAttack, $0C, nB4, $0C, nG4, $18, smpsNoAttack, $18, smpsNoAttack, $18, nRst, $18
	dc.b	nG4, $18, smpsNoAttack, $18, smpsNoAttack, $0C, nB4, $0C, smpsNoAttack, $0C, nC5, $0C
	dc.b	nD5, $18, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18, nG4, $18, smpsNoAttack, $18
	dc.b	smpsNoAttack, $0C, nC5, $0C, smpsNoAttack, $0C, nB4, $0C, nG4, $18, smpsNoAttack, $18
	dc.b	nRst, $18, nRst, $18, nRst, $18, nRst, $18, nRst, $18, nRst, $18
	dc.b	nRst, $18, nRst, $18, nRst, $18, nRst, $18, nE5, $18, smpsNoAttack, $0C
	dc.b	nA4, $0C, smpsNoAttack, $18, nC5, $18, nB4, $18, smpsNoAttack, $18, smpsNoAttack, $18
	dc.b	smpsNoAttack, $0C, nG4, $0C, nA4, $18, smpsNoAttack, $18, smpsNoAttack, $0C, nRst, $0C
	dc.b	nRst, $18, nRst, $18, nRst, $18, nRst, $18, nRst, $18, nE5, $18
	dc.b	smpsNoAttack, $0C, nA4, $0C, smpsNoAttack, $18, nC5, $18, nB4, $18, smpsNoAttack, $18
	dc.b	smpsNoAttack, $18, smpsNoAttack, $18
	smpsJump            s3p20_Jump01

; PSG1 Data
s3p20_PSG1:
	smpsPSGvoice        sTone_0A
	dc.b	nC3, $06, nF3, $06, nA3, $06, nC4, $06, nF4, $06, nA4, $06
	dc.b	nC5, $06, nA4, $06, nF4, $06, nC4, $06, nA3, $06, nF3, $06
	dc.b	nAb2, $06, nCs3, $06, nF3, $06, nAb3, $06, nCs4, $06, nF4, $06
	dc.b	nAb4, $06, nF4, $06, nCs4, $06, nAb3, $06, nF3, $06, nCs3, $06
	dc.b	nBb2, $06, nEb3, $06, nG3, $06, nBb3, $06, nEb4, $06, nG4, $06
	dc.b	nBb4, $06, nG4, $06, nEb4, $06, nBb3, $06, nG3, $06, nEb3, $06
	dc.b	nG2, $06, nC3, $06, nE3, $06, nG3, $06, nC4, $06, nE4, $06
	dc.b	nG4, $06, nE4, $06, nC4, $06, nG3, $06, nE3, $06, nC3, $06

s3p20_Jump08:
	dc.b	nA4, $06, nA5, $06, nRst, $06, nA4, $06, nRst, $06, nA4, $06
	dc.b	nA5, $06, nA4, $06, nRst, $06, nE5, $06, nA4, $06, nD5, $06
	dc.b	nA4, $06, nG4, $06, nE5, $06, nG5, $06, nA4, $06, nA5, $06
	dc.b	nRst, $06, nA4, $06, nRst, $06, nA4, $06, nA5, $06, nA4, $06
	dc.b	nRst, $06, nE5, $06, nA4, $06, nD5, $06, nA4, $06, nG4, $06
	dc.b	nE5, $06, nG5, $06, nA4, $04, nRst, $08, nC5, $04, nRst, $02
	dc.b	nA4, $04, nRst, $02, nRst, $06, nB4, $04, nRst, $08, nG4, $04
	dc.b	nRst, $02, nRst, $06, nA4, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b	nF4, $04, nRst, $08, nE4, $04, nRst, $08, nA4, $04, nRst, $08
	dc.b	nC5, $04, nRst, $02, nA4, $04, nRst, $02, nRst, $06, nB4, $04
	dc.b	nRst, $08, nG4, $04, nRst, $02, nRst, $06, nA4, $04, nRst, $08
	dc.b	nD4, $04, nRst, $02, nG4, $04, nRst, $08, nE4, $04, nRst, $08
	dc.b	nA4, $04, nRst, $08, nC5, $04, nRst, $02, nA4, $04, nRst, $02
	dc.b	nRst, $06, nB4, $04, nRst, $08, nG4, $04, nRst, $02, nRst, $06
	dc.b	nA4, $04, nRst, $08, nG4, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nE4, $04, nRst, $08, nA4, $04, nRst, $08, nC5, $04, nRst, $02
	dc.b	nA4, $04, nRst, $02, nRst, $06, nB4, $04, nRst, $08, nG4, $04
	dc.b	nRst, $02, nRst, $06, nA4, $04, nRst, $08, nD4, $04, nRst, $02
	dc.b	nG4, $04, nRst, $08, nE4, $04, nRst, $08, nA4, $04, nRst, $08
	dc.b	nC5, $04, nRst, $02, nA4, $04, nRst, $02, nRst, $06, nB4, $04
	dc.b	nRst, $08, nG4, $04, nRst, $02, nRst, $06, nA4, $04, nRst, $08
	dc.b	nG4, $04, nRst, $02, nF4, $04, nRst, $08, nE4, $04, nRst, $08
	dc.b	nA4, $04, nRst, $08, nC5, $04, nRst, $02, nA4, $04, nRst, $02
	dc.b	nRst, $06, nB4, $04, nRst, $08, nG4, $04, nRst, $02, nRst, $06
	dc.b	nA4, $04, nRst, $08, nD4, $04, nRst, $02, nG4, $04, nRst, $08
	dc.b	nE4, $04, nRst, $08, nA4, $04, nRst, $08, nC5, $04, nRst, $02
	dc.b	nA4, $04, nRst, $02, nRst, $06, nB4, $04, nRst, $08, nG4, $04
	dc.b	nRst, $02, nRst, $06, nA4, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b	nF4, $04, nRst, $08, nE4, $04, nRst, $08, nA4, $04, nRst, $08
	dc.b	nC5, $04, nRst, $02, nA4, $04, nRst, $02, nRst, $06, nB4, $04
	dc.b	nRst, $08, nG4, $04, nRst, $02, nRst, $06, nA4, $04, nRst, $08
	dc.b	nD4, $04, nRst, $02, nG4, $04, nRst, $08, nE4, $04, nRst, $08
	dc.b	nA4, $04, nRst, $08, nC5, $04, nRst, $02, nA4, $04, nRst, $02
	dc.b	nRst, $06, nB4, $04, nRst, $08, nG4, $04, nRst, $02, nRst, $06
	dc.b	nA4, $04, nRst, $08, nG4, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nE4, $04, nRst, $08, nA4, $04, nRst, $08, nC5, $04, nRst, $02
	dc.b	nA4, $04, nRst, $02, nRst, $06, nB4, $04, nRst, $08, nG4, $04
	dc.b	nRst, $02, nRst, $06, nA4, $04, nRst, $08, nD4, $04, nRst, $02
	dc.b	nG4, $04, nRst, $08, nE4, $04, nRst, $08, nA4, $04, nRst, $08
	dc.b	nC5, $04, nRst, $02, nA4, $04, nRst, $02, nRst, $06, nB4, $04
	dc.b	nRst, $08, nG4, $04, nRst, $02, nRst, $06, nA4, $04, nRst, $08
	dc.b	nG4, $04, nRst, $02, nA4, $04, nRst, $08, nE4, $04, nRst, $08
	dc.b	nA4, $04, nRst, $08, nC5, $04, nRst, $02, nA4, $04, nRst, $02
	dc.b	nRst, $06, nB4, $04, nRst, $08, nG4, $04, nRst, $02, nRst, $06
	dc.b	nA4, $04, nRst, $08, nD4, $04, nRst, $02, nG4, $04, nRst, $08
	dc.b	nE4, $04, nRst, $08, nA4, $04, nRst, $08, nC5, $04, nRst, $02
	dc.b	nA4, $04, nRst, $02, nRst, $06, nB4, $04, nRst, $08, nG4, $04
	dc.b	nRst, $02, nRst, $06, nA4, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b	nA4, $04, nRst, $08, nE4, $04, nRst, $08, nA4, $04, nRst, $08
	dc.b	nC5, $04, nRst, $02, nA4, $04, nRst, $02, nRst, $06, nB4, $04
	dc.b	nRst, $08, nG4, $04, nRst, $02, nRst, $06, nA4, $04, nRst, $08
	dc.b	nD4, $04, nRst, $02, nG4, $04, nRst, $08, nE4, $04, nRst, $08
	dc.b	nA4, $04, nRst, $08, nC5, $04, nRst, $02, nA4, $04, nRst, $02
	dc.b	nRst, $06, nB4, $04, nRst, $08, nG4, $04, nRst, $02, nRst, $06
	dc.b	nA4, $04, nRst, $08, nG4, $04, nRst, $02, nA4, $04, nRst, $08
	dc.b	nE4, $04, nRst, $08, nA4, $04, nRst, $08, nC5, $04, nRst, $02
	dc.b	nA4, $04, nRst, $02, nRst, $06, nB4, $04, nRst, $08, nG4, $04
	dc.b	nRst, $02, nRst, $06, nA4, $04, nRst, $08, nD4, $04, nRst, $02
	dc.b	nG4, $04, nRst, $08, nE4, $04, nRst, $08, nA4, $04, nRst, $08
	dc.b	nC5, $04, nRst, $02, nA4, $04, nRst, $02, nRst, $06, nB4, $04
	dc.b	nRst, $08, nG4, $04, nRst, $02, nRst, $06, nA4, $04, nRst, $08
	dc.b	nG4, $04, nRst, $02, nA4, $04, nRst, $08, nE4, $04, nRst, $08
	dc.b	nA4, $04, nRst, $08, nC5, $04, nRst, $02, nA4, $04, nRst, $02
	dc.b	nRst, $06, nB4, $04, nRst, $08, nG4, $04, nRst, $02, nRst, $06
	dc.b	nA4, $04, nRst, $08, nD4, $04, nRst, $02, nG4, $04, nRst, $08
	dc.b	nE4, $04, nRst, $08
	smpsJump            s3p20_Jump08

; PSG2 Data
s3p20_PSG2:
	smpsPSGvoice        sTone_08
	dc.b	nF4, $06, nG4, $06, nF4, $06, nG4, $06, nF4, $06, nG4, $06
	dc.b	nF4, $06, nG4, $06, nF4, $06, nG4, $06, nF4, $06, nG4, $06
	dc.b	nCs4, $06, nEb4, $06, nCs4, $06, nEb4, $06, nCs4, $06, nEb4, $06
	dc.b	nCs4, $06, nEb4, $06, nCs4, $06, nEb4, $06, nCs4, $06, nEb4, $06
	dc.b	nEb4, $06, nF4, $06, nEb4, $06, nF4, $06, nEb4, $06, nF4, $06
	dc.b	nEb4, $06, nF4, $06, nEb4, $06, nF4, $06, nEb4, $06, nF4, $06
	dc.b	nC4, $06, nD4, $06, nC4, $06, nD4, $06, nC4, $06, nD4, $06
	dc.b	nC4, $06, nD4, $06, nC4, $06, nD4, $06, nC4, $06, nD4, $06

s3p20_Jump07:
	dc.b	nG2, $06, nA2, $06, nC3, $06, nA2, $06, nD3, $06, nA2, $06
	dc.b	nE3, $06, nA2, $06, nG3, $06, nD3, $06, nA3, $06, nC4, $06
	dc.b	nG3, $06, nD3, $06, nE3, $06, nG3, $06, nG2, $06, nA2, $06
	dc.b	nC3, $06, nA2, $06, nD3, $06, nA2, $06, nE3, $06, nA2, $06
	dc.b	nG3, $06, nD3, $06, nA3, $06, nE3, $06, nG3, $06, nE3, $06
	dc.b	nD3, $06, nE3, $06, nG2, $06, nA2, $06, nC3, $06, nA2, $06
	dc.b	nD3, $06, nA2, $06, nE3, $06, nA2, $06, nG3, $06, nD3, $06
	dc.b	nA3, $06, nC4, $06, nG3, $06, nD3, $06, nE3, $06, nG3, $06
	dc.b	nG2, $06, nA2, $06, nC3, $06, nA2, $06, nD3, $06, nA2, $06
	dc.b	nE3, $06, nA2, $06, nG3, $06, nD3, $06, nA3, $06, nE3, $06
	dc.b	nG3, $06, nE3, $06, nD3, $06, nE3, $06, nA3, $06, nRst, $06
	dc.b	nA3, $06, nA4, $06, nRst, $18, nA3, $06, nA3, $06, nRst, $06
	dc.b	nA3, $06, nRst, $18, nA3, $06, nRst, $06, nA3, $06, nA4, $06
	dc.b	nRst, $18, nA3, $06, nA3, $06, nRst, $06, nA3, $06, nRst, $18
	dc.b	nA3, $06, nRst, $06, nA3, $06, nA4, $06, nRst, $18, nA3, $06
	dc.b	nA3, $06, nRst, $06, nA3, $06, nRst, $18, nA3, $06, nRst, $06
	dc.b	nA3, $06, nA4, $06, nRst, $18, nA3, $06, nA3, $06, nRst, $06
	dc.b	nA3, $06, nRst, $18, nA3, $06, nRst, $06, nA3, $06, nA4, $06
	dc.b	nRst, $18, nA3, $06, nA3, $06, nRst, $06, nA3, $06, nRst, $18
	dc.b	nA3, $06, nRst, $06, nA3, $06, nA4, $06, nRst, $18, nA3, $06
	dc.b	nA3, $06, nRst, $06, nA3, $06, nRst, $18, nA3, $06, nRst, $06
	dc.b	nA3, $06, nA4, $06, nRst, $18, nA3, $06, nA3, $06, nRst, $06
	dc.b	nA3, $06, nRst, $18, nA3, $06, nRst, $06, nA3, $06, nA4, $06
	dc.b	nRst, $18, nA3, $06, nA3, $06, nRst, $06, nA3, $06, nRst, $18
	dc.b	nRst, $06, nA4, $04, nRst, $02, nA5, $04, nRst, $02, nA5, $04
	dc.b	nRst, $02, nRst, $06, nA4, $04, nRst, $02, nA5, $04, nRst, $02
	dc.b	nA5, $04, nRst, $02, nRst, $18, nRst, $18, nRst, $06, nA4, $04
	dc.b	nRst, $02, nA5, $04, nRst, $02, nA5, $04, nRst, $02, nRst, $06
	dc.b	nA4, $04, nRst, $02, nA5, $04, nRst, $02, nA5, $04, nRst, $02
	dc.b	nRst, $18, nRst, $18, nRst, $06, nA4, $04, nRst, $02, nA5, $04
	dc.b	nRst, $02, nA5, $04, nRst, $02, nRst, $06, nA4, $04, nRst, $02
	dc.b	nA5, $04, nRst, $02, nA5, $04, nRst, $02, nRst, $18, nRst, $18
	dc.b	nRst, $06, nA4, $04, nRst, $02, nA5, $04, nRst, $02, nA5, $04
	dc.b	nRst, $02, nRst, $06, nA4, $04, nRst, $02, nA5, $04, nRst, $02
	dc.b	nA5, $04, nRst, $02, nRst, $18, nRst, $18, nRst, $06, nA4, $04
	dc.b	nRst, $02, nA5, $04, nRst, $02, nA5, $04, nRst, $02, nRst, $06
	dc.b	nA4, $04, nRst, $02, nA5, $04, nRst, $02, nA5, $04, nRst, $02
	dc.b	nRst, $18, nRst, $18, nRst, $06, nA4, $04, nRst, $02, nA5, $04
	dc.b	nRst, $02, nA5, $04, nRst, $02, nRst, $06, nA4, $04, nRst, $02
	dc.b	nA5, $04, nRst, $02, nA5, $04, nRst, $02, nRst, $18, nRst, $18
	dc.b	nRst, $06, nA4, $04, nRst, $02, nA5, $04, nRst, $02, nA5, $04
	dc.b	nRst, $02, nRst, $06, nA4, $04, nRst, $02, nA5, $04, nRst, $02
	dc.b	nA5, $04, nRst, $02, nRst, $18, nRst, $18, nRst, $06, nA4, $04
	dc.b	nRst, $02, nA5, $04, nRst, $02, nA5, $04, nRst, $02, nRst, $06
	dc.b	nA4, $04, nRst, $02, nA5, $04, nRst, $02, nA5, $04, nRst, $02
	dc.b	nRst, $18, nRst, $18
	smpsJump            s3p20_Jump07

; PSG3 Data
s3p20_PSG3:
	smpsPSGvoice        sTone_02
	smpsPSGform         $E7
	dc.b	nRst, $54
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $60
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $60
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C

s3p20_Jump06:
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $54
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $48
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $48
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $60, $60
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $3C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $60
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $60
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $60
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $3C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $60
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $60
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $3C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $3C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $60
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $18
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $42
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $24
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $3C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $3C
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $60
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $18
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $42
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsJump            s3p20_Jump06

s3p20_Voices:
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

;	Voice $1A
;	$3B
;	$3A, $31, $71, $74, 	$DF, $1F, $1F, $DF, 	$00, $0A, $0A, $05
;	$00, $05, $05, $03, 	$0F, $5F, $1F, $5F, 	$32, $1E, $0F, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $03, $03
	smpsVcCoarseFreq    $04, $01, $01, $0A
	smpsVcRateScale     $03, $00, $00, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $0A, $0A, $00
	smpsVcDecayRate2    $03, $05, $05, $00
	smpsVcDecayLevel    $05, $01, $05, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $0F, $1E, $32

;	Voice $1B
;	$3A
;	$32, $56, $32, $42, 	$8D, $4F, $15, $52, 	$06, $08, $07, $04
;	$02, $00, $00, $00, 	$1F, $1F, $2F, $2F, 	$19, $20, $2A, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $03, $05, $03
	smpsVcCoarseFreq    $02, $02, $06, $02
	smpsVcRateScale     $01, $00, $01, $02
	smpsVcAttackRate    $12, $15, $0F, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $07, $08, $06
	smpsVcDecayRate2    $00, $00, $00, $02
	smpsVcDecayLevel    $02, $02, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $2A, $20, $19

;	Voice $1C
;	$2C
;	$71, $74, $32, $32, 	$1F, $12, $1F, $12, 	$00, $0A, $00, $0A
;	$00, $00, $00, $00, 	$0F, $1F, $0F, $1F, 	$16, $80, $17, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $02, $02, $04, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $00, $0A, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $17, $80, $16

;	Voice $1D
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $07, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $8F
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
	smpsVcTotalLevel    $8F, $27, $28, $18

;	Voice $1E
;	$36
;	$7A, $32, $51, $11, 	$1F, $1F, $59, $1C, 	$0A, $0D, $06, $0A
;	$07, $00, $02, $02, 	$AF, $5F, $5F, $5F, 	$1E, $8B, $81, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $05, $03, $07
	smpsVcCoarseFreq    $01, $01, $02, $0A
	smpsVcRateScale     $00, $01, $00, $00
	smpsVcAttackRate    $1C, $19, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $06, $0D, $0A
	smpsVcDecayRate2    $02, $02, $00, $07
	smpsVcDecayLevel    $05, $05, $05, $0A
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $81, $8B, $1E

;	Voice $1F
;	$3C
;	$71, $72, $3F, $34, 	$8D, $52, $9F, $1F, 	$09, $00, $00, $0D
;	$00, $00, $00, $00, 	$23, $08, $02, $F7, 	$15, $85, $1D, $8A
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
	smpsVcTotalLevel    $8A, $1D, $85, $15

