s3p33_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     s3p33_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $08

	smpsHeaderDAC       s3p33_DAC
	smpsHeaderFM        s3p33_FM1,	$00, $10
	smpsHeaderFM        s3p33_FM2,	$00, $10
	smpsHeaderFM        s3p33_FM3,	$00, $10
	smpsHeaderFM        s3p33_FM4,	$00, $10
	smpsHeaderFM        s3p33_FM5,	$00, $10
	smpsHeaderPSG       s3p33_PSG1,	$00, $02, $00, $00
	smpsHeaderPSG       s3p33_PSG2,	$00, $02, $00, $00
	smpsHeaderPSG       s3p33_PSG3,	$00, $02, $00, $00

; FM1 Data
s3p33_FM1:
	dc.b	nRst, $30

s3p33_Jump05:
	dc.b	nRst, $0C
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nE4, $04, nRst, $02, nG4, $04, nRst, $02, nAb4, $0C, nB4, $06
	dc.b	nRst, nD5, $12, nCs5, nB4, $03, nRst, $09, nA4, $12, nAb4, nE4
	dc.b	$04, nRst, $08, nE4, $04, nRst, $08, nEb4, $04, nRst, $08, nE4
	dc.b	$06, nFs4, nAb4, $0C, nRst, nE4, $04, nRst, $02, nG4, $04, nRst
	dc.b	$02, nAb4, $0C, nB4, nD5, $12, nCs5, nB4, $04, nRst, $08, nA4
	dc.b	$12, nAb4, nA4, $04, nRst, $08, nB4, $04, nRst, $08, nCs5, $04
	dc.b	nRst, $08, nD5, $0C, nE5, $06, nRst, nA4, nAb4, nA4, nAb4, nA4
	dc.b	nAb4, nA4, nAb4, nA4, $0C, nAb4, $06, nA4, $0C, nAb4, $06, nA4
	dc.b	$0C, nB4, $06, nBb4, nB4, nBb4, nB4, nBb4, nB4, nBb4, nB4, nRst
	dc.b	nC5, nRst, nCs5, nRst, nD5, nRst, nRst, $0C, nE4, $04, nRst, $02
	dc.b	nG4, $04, nRst, $02, nAb4, $0C, nB4, nD5, $12, nCs5, nA4, $0C
	dc.b	nAb4, $0F, nFs5, $03, nAb5, $12, nE5, $30, smpsNoAttack, $0C, nRst, $0C
	dc.b	nE4, $04, nRst, $02, nG4, $04, nRst, $02, nAb4, $0C, nB4, $06
	dc.b	nRst, nD5, $12, nCs5, nB4, $04, nRst, $08, nA4, $12, nAb4, nE4
	dc.b	$04, nRst, $08, nE4, $04, nRst, $08, nEb4, $04, nRst, $08, nE4
	dc.b	$06, nFs4, nAb4, $0C, nRst, nE4, $04, nRst, $02, nG4, $04, nRst
	dc.b	$02, nAb4, $0C, nB4, nD5, $12, nCs5, nB4, $04, nRst, $08, nA4
	dc.b	$12, nAb4, nA4, $04, nRst, $08, nB4, $04, nRst, $08, nCs5, $04
	dc.b	nRst, $08, nD5, $0C, nE5, nA4, $06, nAb4, nA4, nAb4, nA4, nAb4
	dc.b	nA4, nAb4, nA4, $0C, nAb4, $06, nA4, $0C, nAb4, $06, nA4, $0C
	dc.b	nB4, $06, nBb4, nB4, nBb4, nB4, nBb4, nB4, nBb4, nB4, nRst, nC5
	dc.b	nRst, nCs5, nRst, nD5, nRst, nRst, $0C, nE4, $04, nRst, $02, nG4
	dc.b	$04, nRst, $02, nAb4, $0C, nB4, nD5, $12, nCs5, nA4, $0C, nAb4
	dc.b	$0F, nFs5, $03, nAb5, $12, nE5, $30, smpsNoAttack, $0C
	smpsSetvoice        $01
	smpsPan             panLeft, $00
	dc.b	nCs5, $30, smpsNoAttack, $30, nEb5, smpsNoAttack, $30, $30, smpsNoAttack, $30, nE5, nE5
	dc.b	nE5, smpsNoAttack, $30, nFs5, smpsNoAttack, $30, nE5, nFs5, nFs5, smpsNoAttack, $30
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nAb5, $06, nA5, nRst, nAb5, nRst, nFs5, nRst, nE5, nFs5, $18, nAb5
	dc.b	nEb5, $06, nE5, nRst, nEb5, nRst, nB4, nCs5, nB4, $30, smpsNoAttack, $06
	dc.b	nAb5, nA5, nRst, nAb5, nRst, nFs5, nRst, nE5, nFs5, $18, nAb5, nE5
	dc.b	$06, nFs5, nRst, nAb5, nRst, nB5, nCs6, nB5, $30, smpsNoAttack, $06, nAb5
	dc.b	nA5, nRst, nAb5, nRst, nFs5, nRst, nE5, nFs5, $18, nAb5, nEb5, $06
	dc.b	nE5, nRst, nEb5, nRst, nB4, nCs5, nB4, $30, smpsNoAttack, $06, nRst, $0C
	dc.b	nB4, $06, nRst, nE5, $18, nEb5, nE5, nFs5, $0C, nB4, nD5, nEb5
	dc.b	nFs5, nB5, $24
	smpsJump            s3p33_Jump05

; FM2 Data
s3p33_FM2:
	smpsSetvoice        $02
	dc.b	nRst, $30

s3p33_Jump04:
	smpsSetvoice        $02
	dc.b	nE2, $04, nRst, $08, nB2, $04, nRst, $08, nE3, $0C, nB2, $04
	dc.b	nRst, $02, nD3, $04, nRst, $08, nD3, $06, nCs3, $0C, nB2, nA2
	dc.b	nE2, $04, nRst, $08, nE2, $04, nRst, $08, nB2, $0C, nCs3, $06
	dc.b	nD3, nRst, nD3, nRst, nCs3, $0C, nB2, $06, nA2, $0C, nE2, $04
	dc.b	nRst, $08, nB2, $04, nRst, $08, nE3, $0C, nB2, $04, nRst, $02
	dc.b	nD3, $04, nRst, $08, nD3, $06, nCs3, $0C, nB2, nA2, nE2, $04
	dc.b	nRst, $08, nE2, $04, nRst, $08, nB2, $0C, nCs3, $06, nD3, nRst
	dc.b	nD3, nRst, nCs3, $0C, nB2, $06, nA2, $0C, nA2, $04, nRst, $08
	dc.b	nA2, $04, nRst, $08, nA2, $04, nRst, $08, nA2, $04, nRst, $08
	dc.b	nA2, $04, nRst, $08, nA2, $04, nRst, $08, nA2, $04, nRst, $08
	dc.b	nA2, $04, nRst, $08, nB2, $04, nRst, $08, nB2, $04, nRst, $08
	dc.b	nB2, $04, nRst, $08, nB2, $04, nRst, $08, nB2, $04, nRst, $08
	dc.b	nB2, $04, nRst, $08, nB2, $04, nRst, $08, nB2, $04, nRst, $08
	dc.b	nE2, $04, nRst, $08, nB2, $04, nRst, $08, nE3, $0C, nB2, $04
	dc.b	nRst, $02, nD3, $04, nRst, $08, nD3, $06, nCs3, $0C, nB2, nA2
	dc.b	nE2, $04, nRst, $08, nE2, $04, nRst, $08, nB2, $0C, nCs3, $06
	dc.b	nD3, nRst, nD3, nRst, nCs3, $0C, nB2, $06, nA2, $0C, nE2, $04
	dc.b	nRst, $08, nB2, $04, nRst, $08, nE3, $0C, nB2, $04, nRst, $02
	dc.b	nD3, $04, nRst, $08, nD3, $06, nCs3, $0C, nB2, nA2, nE2, $04
	dc.b	nRst, $08, nE2, $04, nRst, $08, nB2, $0C, nCs3, $06, nD3, nRst
	dc.b	nD3, nRst, nCs3, $0C, nB2, $06, nA2, $0C, nE2, $04, nRst, $08
	dc.b	nB2, $04, nRst, $08, nE3, $0C, nB2, $04, nRst, $02, nD3, $04
	dc.b	nRst, $08, nD3, $06, nCs3, $0C, nB2, nA2, nE2, $04, nRst, $08
	dc.b	nE2, $04, nRst, $08, nB2, $0C, nCs3, $06, nD3, nRst, nD3, nRst
	dc.b	nCs3, $0C, nB2, $06, nA2, $0C, nA2, $04, nRst, $08, nA2, $04
	dc.b	nRst, $08, nA2, $04, nRst, $08, nA2, $04, nRst, $08, nA2, $04
	dc.b	nRst, $08, nA2, $04, nRst, $08, nA2, $04, nRst, $08, nA2, $04
	dc.b	nRst, $08, nB2, $04, nRst, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b	nRst, $08, nB2, $04, nRst, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b	nRst, $08, nB2, $04, nRst, $08, nB2, $04, nRst, $08, nE2, $04
	dc.b	nRst, $08, nB2, $04, nRst, $08, nE3, $0C, nB2, $04, nRst, $02
	dc.b	nD3, $04, nRst, $08, nD3, $06, nCs3, $0C, nB2, nA2, nE2, $04
	dc.b	nRst, $08, nE2, $04, nRst, $08, nB2, $0C, nCs3, $06, nD3, nRst
	dc.b	nD3, nRst, nCs3, $0C, nB2, $06, nA2, $0C, nA2, $04, nRst, $08
	dc.b	nA2, $04, nRst, $08, nA2, $04, nRst, $08, nA2, $04, nRst, $08
	dc.b	nA2, $04, nRst, $08, nA2, $04, nRst, $08, nA2, $04, nRst, $08
	dc.b	nA2, $04, nRst, $08, nA2, $04, nRst, $08, nA2, $04, nRst, $08
	dc.b	nA2, $04, nRst, $08, nA2, $04, nRst, $08, nA2, $04, nRst, $08
	dc.b	nB2, $04, nRst, $08, nA2, $04, nRst, $08, nFs2, $04, nRst, $08
	dc.b	nAb2, $04, nRst, $08, nAb2, $04, nRst, $08, nAb2, $04, nRst, $08
	dc.b	nAb2, $04, nRst, $08, nAb2, $04, nRst, $08, nE2, $04, nRst, $08
	dc.b	nAb2, $04, nRst, $08, nB2, $04, nRst, $08, nCs3, $04, nRst, $08
	dc.b	nAb2, $04, nRst, $08, nCs3, $04, nRst, $08, nEb3, $04, nRst, $08
	dc.b	nB2, $04, nRst, $08, nEb3, $04, nRst, $08, nFs3, $04, nRst, $08
	dc.b	nEb3, $0C, nA2, $04, nRst, $08, nA2, $04, nRst, $08, nA2, $04
	dc.b	nRst, $08, nA2, $04, nRst, $08, nA2, $04, nRst, $08, nFs2, $04
	dc.b	nRst, $08, nA2, $04, nRst, $08, nCs3, $04, nRst, $08, nB2, $04
	dc.b	nRst, $08, nB2, $04, nRst, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b	nRst, $08, nB2, $04, nRst, $08, nEb3, $04, nRst, $08, nCs3, $04
	dc.b	nRst, $08, nB2, $04, nRst, $08, nCs3, $04, nRst, $08, nAb2, $04
	dc.b	nRst, $08, nCs3, $04, nRst, $08, nEb3, $04, nRst, $08, nD3, $04
	dc.b	nRst, $08, nFs3, $04, nRst, $08, nA3, $04, nRst, $08, nD3, $04
	dc.b	nRst, $08, nEb3, $04, nRst, $08, nEb3, $04, nRst, $08, nFs3, $04
	dc.b	nRst, $08, nEb3, $04, nRst, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b	nRst, $08, nEb3, $04, nRst, $08, nB2, $04, nRst, $08, nE2, $04
	dc.b	nRst, $08, nE2, $04, nRst, $08, nE2, $04, nRst, $08, nE2, $04
	dc.b	nRst, $08, nA2, $04, nRst, $08, nA2, $04, nRst, $08, nB2, $04
	dc.b	nRst, $08, nB2, $04, nRst, $08, nE2, $04, nRst, $08, nE2, $04
	dc.b	nRst, $08, nE2, $04, nRst, $08, nE2, $04, nRst, $08, nA2, $04
	dc.b	nRst, $08, nA2, $04, nRst, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b	nRst, $08, nE2, $04, nRst, $08, nE2, $04, nRst, $08, nE2, $04
	dc.b	nRst, $08, nE2, $04, nRst, $08, nA2, $04, nRst, $08, nA2, $04
	dc.b	nRst, $08, nB2, $04, nRst, $08, nB2, $04, nRst, $08, nE2, $04
	dc.b	nRst, $08, nE2, $04, nRst, $08, nE2, $04, nRst, $08, nE2, $04
	dc.b	nRst, $08, nA2, $04, nRst, $08, nA2, $04, nRst, $08, nB2, $04
	dc.b	nRst, $08, nB2, $04, nRst, $08, nE2, $04, nRst, $08, nE2, $04
	dc.b	nRst, $08, nE2, $04, nRst, $08, nE2, $04, nRst, $08, nA2, $04
	dc.b	nRst, $08, nA2, $04, nRst, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b	nRst, $08, nE2, $04, nRst, $08, nE2, $04, nRst, $08, nE2, $04
	dc.b	nRst, $08, nE2, $04, nRst, $08, nA2, $04, nRst, $08, nA2, $04
	dc.b	nRst, $08, nB2, $04, nRst, $08, nB2, $04, nRst, $08, nA2, $04
	dc.b	nRst, $08, nA2, $04, nRst, $08, nA2, $04, nRst, $08, nA2, $04
	dc.b	nRst, $08, nA2, $04, nRst, $08, nA2, $04, nRst, $08, nA2, $04
	dc.b	nRst, $08, nA2, $04, nRst, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b	nRst, $08, nB2, $04, nRst, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b	nRst, $08, nB2, $04, nRst, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b	nRst, $08
	smpsJump            s3p33_Jump04

; FM3 Data
s3p33_FM3:
	smpsSetvoice        $00
	dc.b	nRst, $30

s3p33_Jump03:
	smpsSetvoice        $00
	dc.b	nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, $0C, nAb4, $04, nRst, $02, nB4
	dc.b	$04, nRst, $02, nE5, $0C, nFs5, $06, nRst, nAb5, $12, nFs5, nE5
	dc.b	$04, nRst, $08, nCs5, $12, nB4, nAb4, $04, nRst, $08, nAb4, $04
	dc.b	nRst, $08, nFs4, $04, nRst, $08, nAb4, $06, nA4, nB4, $0C, nRst
	dc.b	nAb4, $04, nRst, $02, nB4, $04, nRst, $02, nE5, $0C, nFs5, $06
	dc.b	nRst, nAb5, $12, nFs5, nE5, $04, nRst, $08, nCs5, $12, nB4, nCs5
	dc.b	$04, nRst, $08, nEb5, $04, nRst, $08, nE5, $04, nRst, $08, nFs5
	dc.b	$0C, nA5, nD5, $06, nCs5, nD5, nCs5, nD5, nCs5, nD5, nCs5, nD5
	dc.b	$0C, nCs5, $06, nD5, $0C, nCs5, $06, nD5, $0C, nEb5, $06, nD5
	dc.b	nEb5, nD5, nEb5, nD5, nEb5, nD5, nG5, nRst, nFs5, nRst, nF5, nRst
	dc.b	nE5, nRst, nRst, $0C, nAb4, $04, nRst, $02, nB4, $04, nRst, $02
	dc.b	nE5, $0C, nFs5, $06, nRst, nAb5, $12, nFs5, nE5, $04, nRst, $08
	dc.b	nB4, $0F, nA5, $03, nB5, $12, nAb5, $30, smpsNoAttack, $0C
	smpsSetvoice        $03
	dc.b	nA4, $24, nB4, $18, nCs5, $0C, nE5, $18, nEb5, $24, nB4, $30
	dc.b	smpsNoAttack, $0C, nAb4, $12, nC5, nEb5, $0C, nFs5, $18, nE5, $0C, nCs5
	dc.b	nRst, $30, nRst, nA4, $24, $18, nB4, $0C, nCs5, $18, nEb5, $24
	dc.b	nB4, $18, nCs5, $0C, nEb5, $18, nE5, $0C, nEb5, nE5, nFs5, nA5
	dc.b	nAb5, nFs5, nE5
	smpsSetvoice        $00
	dc.b	$0C, nAb4, $06, nA4, nB4, $0C, nCs5, nB4, $06, nCs5, nEb5, nE5
	dc.b	nFs5, nAb5, nA5, $0C
	smpsSetvoice        $04
	smpsPan             panRight, $00
	dc.b	nE3, $06, nE4, nE5, nE4, nE5, nE3, nE4, nEb5, nE5, nE3, nE4
	dc.b	nE5, nE3, nE4, nEb5, nE5, nE3, nE4, nE5, nE4, nE5, nE3, nEb5
	dc.b	nE4, nE5, nEb5, nE4, nE5, nE3, nE4, nEb5, nE5, nE3, nE4, nE5
	dc.b	nE4, nE5, nE3, nE4, nEb5, nE5, nE3, nE4, nE5, nE3, nE4, nEb5
	dc.b	nE5, nE3, nE4, nE5, nE4, nE5, nE3, nEb5, nE4, nE5, nEb5, nE4
	dc.b	nE5, nE3, nE4, nEb5, nE5, nE3, nE4, nE5, nE4, nE5, nE3, nE4
	dc.b	nEb5, nE5, nE3, nE4, nE5, nE3, nE4, nEb5, nE5, nE3, nE4, nE5
	dc.b	nE4, nE5, nE3, nEb5, nE4, nE5, nEb5, nE4, nE5, nE3, nE4, nEb5
	dc.b	nE5, nA3, nA3, nFs5, nA3, nE5, nA3, nA3, nE5, nAb5, nA3, nA3
	dc.b	nCs5, nA3, nA3, nCs5, nE5, nB3, nB3, nFs5, nB3, nEb5, nB3, nE5
	dc.b	nB3, nEb5, nE5, nB3, nFs5, nB3, nB3, nB4, nEb5
	smpsJump            s3p33_Jump03

; FM4 Data
s3p33_FM4:
	dc.b	nRst, $30

s3p33_Jump02:
	dc.b	nRst, $0C
	smpsSetvoice        $04
	smpsPan             panLeft, $00
	dc.b	nE5, $06, nRst, $0C, nD5, $06, nRst, nB4, nD5, nE5, nRst, nD5
	dc.b	nRst, nB4, nD5, nE5, nRst, $0C, nE5, $06, nRst, $0C, nD5, $06
	dc.b	nRst, nB4, nD5, nE5, nRst, nD5, nRst, nB4, nRst, nD5, nRst, $0C
	dc.b	nE5, $06, nRst, $0C, nD5, $06, nRst, nB4, nD5, nE5, nRst, nD5
	dc.b	nRst, nB4, nD5, nE5, nRst, $0C, nE5, $06, nRst, $0C, nD5, $06
	dc.b	nRst, nB4, nD5, nE5, nRst, nD5, nRst, nB4, nRst, nD5
	smpsSetvoice        $01
	smpsPan             panRight, $00
	dc.b	nA5, $30, smpsNoAttack, $18, nCs6, nFs5, $30, nB5, $2D, nRst, $03
	smpsSetvoice        $04
	smpsPan             panLeft, $00
	dc.b	nRst, $0C, nE5, $06, nRst, $0C, nD5, $06, nRst, nB4, nD5, nE5
	dc.b	nRst, nD5, nRst, nB4, nD5, nE5, nRst, $0C, nE5, $06, nRst, $0C
	dc.b	nD5, $06, nRst, nB4, nD5, nE5, nRst, nD5, nRst, nB4, nRst, nD5
	dc.b	nRst, $0C, nE5, $06, nRst, $0C, nD5, $06, nRst, nB4, nD5, nE5
	dc.b	nRst, nD5, nRst, nB4, nD5, nE5, nRst, $0C, nE5, $06, nRst, $0C
	dc.b	nD5, $06, nRst, nB4, nD5, nE5, nRst, nD5, nRst, nB4, nRst, nD5
	dc.b	nRst, $0C, nE5, $06, nRst, $0C, nD5, $06, nRst, nB4, nD5, nE5
	dc.b	nRst, nD5, nRst, nB4, nD5, nE5, nRst, $0C, nE5, $06, nRst, $0C
	dc.b	nD5, $06, nRst, nB4, nD5, nE5, nRst, nD5, nRst, nB4, nRst, nD5
	smpsSetvoice        $01
	smpsPan             panRight, $00
	dc.b	nA5, $30, smpsNoAttack, $18, nCs6, nFs5, $30, nB5
	smpsSetvoice        $04
	smpsPan             panLeft, $00
	dc.b	nRst, $0C, nE5, $06, nRst, $0C, nD5, $06, nRst, nB4, nD5, nE5
	dc.b	nRst, nD5, nRst, nB4, nD5, nE5, nRst, $0C, nE5, $06, nRst, $0C
	dc.b	nD5, $06, nRst, nB4, nD5, nE5, nRst, nD5, nRst, nB4, nRst, nD5
	smpsPan             panCenter, $00
	dc.b	nA5, nA4, nAb5, nA4, nFs5, nA4, nE5, nA4, nA5, nA4, nAb5, nA4
	dc.b	nE5, nA4, nFs5, nA4, nA5, nA4, nAb5, nA4, nFs5, nA4, nE5, nA4
	dc.b	nA5, nA4, nAb5, nA4, nE5, nA4, nFs5, nA4, nA5, nC5, nAb5, nC5
	dc.b	nFs5, nC5, nE5, nC5, nA5, nC5, nAb5, nC5, nFs5, nC5, nE5, nC5
	dc.b	nA5, nAb5, nFs5, nE5, nFs5, nE5, nEb5, nCs5, nE5, nEb5, nCs5, nB4
	dc.b	nCs5, nB4, nA4, nAb4, nA5, nA4, nAb5, nA4, nFs5, nA4, nE5, nA4
	dc.b	nA5, nA4, nAb5, nA4, nFs5, nA4, nE5, nA4, nA5, nB4, nAb5, nB4
	dc.b	nFs5, nB4, nE5, nB4, nA5, nB4, nAb5, nB4, nFs5, nB4, nE5, nB4
	dc.b	nAb5, nCs5, nEb5, nE5, nFs5, nAb5, nA5, nFs5, nA5, nD5, nE5, nFs5
	dc.b	nA5, nFs5, nA5, nFs5
	smpsSetvoice        $03
	dc.b	nB5, $12, nFs5, nEb5, $0C, nB4, $30
	smpsSetvoice        $04
	smpsPan             panLeft, $00
	dc.b	nRst, $0C, nA5, $06, nRst, nAb5, nRst, $0C, nFs5, $06, nAb5, nRst
	dc.b	$0C, nAb5, $06, nRst, $0C, nFs5, $06, nAb5, nRst, $0C, nA5, $06
	dc.b	nRst, nAb5, nRst, nFs5, nRst, nAb5, nFs5, nRst, nAb5, nRst, $0C, nFs5
	dc.b	$06, nAb5, nRst, $0C, nA5, $06, nRst, nAb5, nRst, $0C, nFs5, $06
	dc.b	nAb5, nRst, $0C, nAb5, $06, nRst, $0C, nFs5, $06, nAb5, nRst, $0C
	dc.b	nA5, $06, nRst, nAb5, nRst, nFs5, nRst, nAb5, nFs5, nRst, nAb5, nRst
	dc.b	$0C, nFs5, $06, nAb5, nRst, $0C, nA5, $06, nRst, nAb5, nRst, $0C
	dc.b	nFs5, $06, nAb5, nRst, $0C, nAb5, $06, nRst, $0C, nFs5, $06, nAb5
	dc.b	nRst, $0C, nA5, $06, nRst, nAb5, nRst, nFs5, nRst, nAb5, nFs5, nRst
	dc.b	nAb5, nRst, $0C, nFs5, $06, nAb5, nRst, $0C, nA5, $06, nRst, nA5
	dc.b	nRst, $0C, nA5, $06, nA5, nRst, $0C, nE5, $06, nRst, $0C, nE5
	dc.b	$06, nAb5, nRst, $0C, nB5, $06, nRst, nFs5, nRst, nAb5, nRst, nFs5
	dc.b	nAb5, nRst, nB5, nRst, $0C, nEb5, $06, nFs5
	smpsJump            s3p33_Jump02

; FM5 Data
s3p33_FM5:
	dc.b	nRst, $30

s3p33_Jump01:
	dc.b	nRst, $30, nRst
	smpsSetvoice        $03
	smpsPan             panRight, $00
	dc.b	nRst, $18, nA5, $0C, nRst, nAb5, nRst, nE5, nB4, nRst, $30, nRst
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b	nRst, $18, nA5, $0C, nRst, nAb5, nRst, nE5, nB4, nRst, $30, nRst
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	smpsSetvoice        $01
	dc.b	nA4, smpsNoAttack, $30, nB4, smpsNoAttack, $30, nC5, smpsNoAttack, $30, nCs5, nB4, nCs5
	dc.b	smpsNoAttack, $30, nEb5, smpsNoAttack, $30, nCs5, nD5, nEb5, smpsNoAttack, $30, nRst, $30
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b	nRst, nRst, nRst
	smpsJump            s3p33_Jump01

; PSG1 Data
s3p33_PSG1:
	smpsStop

; PSG2 Data
s3p33_PSG2:
	smpsStop

; PSG3 Data
s3p33_PSG3:
	smpsStop

; DAC Data
s3p33_DAC:
	dc.b	dSnareS3, $06, dSnareS3, dKickS3, $0C, dSnareS3, dKickS3

s3p33_Jump00:
	dc.b	dKickS3, $0C, dKickS3, dSnareS3, dKickS3, dKickS3, $06, dSnareS3, dKickS3, $0C, dSnareS3, dKickS3
	dc.b	dKickS3, dKickS3, dSnareS3, dKickS3, dKickS3, $06, dSnareS3, dKickS3, $0C, dSnareS3, dKickS3, dKickS3
	dc.b	dKickS3, dSnareS3, dKickS3, dKickS3, $06, dSnareS3, dKickS3, $0C, dSnareS3, dKickS3, dKickS3, dKickS3
	dc.b	dSnareS3, dKickS3, dKickS3, $06, dSnareS3, dKickS3, $0C, dSnareS3, dSnareS3, dKickS3, dSnareS3, $12
	dc.b	dKickS3, $06, dSnareS3, $0C, dKickS3, dSnareS3, $12, dKickS3, $06, dSnareS3, $0C, dKickS3
	dc.b	dSnareS3, $12, dKickS3, $06, dSnareS3, $0C, dKickS3, dSnareS3, $12, dKickS3, $06, dSnareS3
	dc.b	$0C, dKickS3, dKickS3, dSnareS3, dKickS3, dKickS3, $06, dSnareS3, dKickS3, $0C, dSnareS3, dKickS3
	dc.b	dKickS3, dKickS3, dSnareS3, dKickS3, dKickS3, $06, dSnareS3, dKickS3, $0C, dSnareS3, dSnareS3, dKickS3
	dc.b	dKickS3, dSnareS3, dKickS3, dKickS3, $06, dSnareS3, dKickS3, $0C, dSnareS3, dKickS3, dKickS3, dKickS3
	dc.b	dSnareS3, dKickS3, dKickS3, $06, dSnareS3, dKickS3, $0C, dSnareS3, dKickS3, dKickS3, dKickS3, dSnareS3
	dc.b	dKickS3, dKickS3, $06, dSnareS3, dKickS3, $0C, dSnareS3, dKickS3, dKickS3, dKickS3, dSnareS3, dKickS3
	dc.b	dKickS3, $06, dSnareS3, dKickS3, $0C, dSnareS3, dSnareS3, dKickS3, dSnareS3, $12, dKickS3, $06
	dc.b	dSnareS3, $0C, dKickS3, dSnareS3, $12, dKickS3, $06, dSnareS3, $0C, dKickS3, dSnareS3, $12
	dc.b	dKickS3, $06, dSnareS3, $0C, dKickS3, dSnareS3, $12, dKickS3, $06, dSnareS3, $0C, dKickS3
	dc.b	dKickS3, dSnareS3, dKickS3, dKickS3, $06, dSnareS3, dKickS3, $0C, dSnareS3, dKickS3, dKickS3, dKickS3
	dc.b	dSnareS3, dKickS3, dKickS3, $06, dSnareS3, dKickS3, $0C, dSnareS3, dSnareS3, dKickS3, dKickS3, dSnareS3
	dc.b	dKickS3, dKickS3, $06, dSnareS3, dKickS3, $0C, dSnareS3, dKickS3, dKickS3, dKickS3, dSnareS3, dKickS3
	dc.b	dKickS3, $06, dSnareS3, dKickS3, $0C, dSnareS3, dKickS3, dKickS3, dKickS3, dSnareS3, dKickS3, dKickS3
	dc.b	$06, dSnareS3, dKickS3, $0C, dSnareS3, dKickS3, dKickS3, dKickS3, dSnareS3, dKickS3, dKickS3, $06
	dc.b	dSnareS3, dKickS3, $0C, dSnareS3, dSnareS3, dKickS3, dKickS3, dSnareS3, dKickS3, dKickS3, $06, dSnareS3
	dc.b	dKickS3, $0C, dSnareS3, dKickS3, dKickS3, dKickS3, dSnareS3, dKickS3, dKickS3, $06, dSnareS3, dKickS3
	dc.b	$0C, dSnareS3, dKickS3, dKickS3, dKickS3, dSnareS3, dKickS3, dKickS3, $06, dSnareS3, dKickS3, $0C
	dc.b	dSnareS3, dKickS3, dKickS3, dKickS3, dSnareS3, dKickS3, dKickS3, $06, dSnareS3, dKickS3, $0C, dSnareS3
	dc.b	dSnareS3, dKickS3, dSnareS3, $12, dKickS3, $06, dSnareS3, $0C, dKickS3, dSnareS3, $12, dKickS3
	dc.b	$06, dSnareS3, $0C, dKickS3, dSnareS3, $12, dKickS3, $06, dSnareS3, $0C, dKickS3, dSnareS3
	dc.b	$12, dKickS3, $06, dSnareS3, $0C, dKickS3, dSnareS3, $12, dKickS3, $06, dSnareS3, $0C
	dc.b	dKickS3, dSnareS3, $12, dKickS3, $06, dSnareS3, $0C, dKickS3, dSnareS3, $12, dKickS3, $06
	dc.b	dSnareS3, $0C, dKickS3, dSnareS3, $12, dKickS3, $06, dSnareS3, $0C, dKickS3, dSnareS3, $12
	dc.b	dKickS3, $06, dSnareS3, $0C, dKickS3, dSnareS3, $12, dKickS3, $06, dSnareS3, $0C, dKickS3
	dc.b	dSnareS3, $12, dKickS3, $06, dSnareS3, $0C, dKickS3, dSnareS3, dSnareS3, $06, dSnareS3, dSnareS3
	dc.b	dSnareS3, dKickS3, $0C, dSnareS3, $12, dKickS3, $06, dSnareS3, $0C, dKickS3, dSnareS3, $12
	dc.b	dKickS3, $06, dSnareS3, $0C, dKickS3, dSnareS3, $12, dKickS3, $06, dSnareS3, $0C, dKickS3
	dc.b	dSnareS3, dSnareS3, $06, dSnareS3, dKickS3, dSnareS3
	smpsJump            s3p33_Jump00

s3p33_Voices:
;	Voice $00
;	$03
;	$31, $F8, $03, $01, 	$10, $0F, $11, $16, 	$05, $08, $02, $08
;	$00, $00, $00, $00, 	$9F, $0F, $0F, $1F, 	$17, $27, $22, $15
	smpsVcAlgorithm     $03
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $0F, $03
	smpsVcCoarseFreq    $01, $03, $08, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $16, $11, $0F, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $02, $08, $05
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $00, $09
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $15, $22, $27, $17

;	Voice $01
;	$04
;	$14, $10, $60, $31, 	$15, $18, $17, $0C, 	$01, $02, $01, $02
;	$00, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$37, $14, $27, $14
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $06, $01, $01
	smpsVcCoarseFreq    $01, $00, $00, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0C, $17, $18, $15
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $01, $02, $01
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $14, $27, $14, $37

;	Voice $02
;	$28
;	$3B, $30, $21, $31, 	$DF, $DF, $9D, $9F, 	$0C, $07, $0A, $0A
;	$07, $07, $07, $09, 	$2F, $1F, $1F, $FF, 	$25, $22, $14, $0F
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $02, $03, $03
	smpsVcCoarseFreq    $01, $01, $00, $0B
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1D, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $07, $0C
	smpsVcDecayRate2    $09, $07, $07, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $0F, $14, $22, $25

;	Voice $03
;	$2C
;	$39, $30, $7B, $82, 	$5F, $5F, $5F, $5F, 	$0F, $02, $16, $09
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$2A, $13, $10, $13
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $08, $07, $03, $03
	smpsVcCoarseFreq    $02, $0B, $00, $09
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $16, $02, $0F
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $13, $10, $13, $2A

;	Voice $04
;	$3C
;	$02, $02, $00, $02, 	$1F, $1F, $1F, $1F, 	$0C, $03, $07, $02
;	$04, $05, $04, $05, 	$FF, $FF, $FF, $FF, 	$1A, $16, $1E, $16
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $00, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $07, $03, $0C
	smpsVcDecayRate2    $05, $04, $05, $04
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $16, $1E, $16, $1A

