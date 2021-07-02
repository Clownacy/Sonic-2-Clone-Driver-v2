s3p32_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     s3p32_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       s3p32_DAC
	smpsHeaderFM        s3p32_FM1,	$00, $15
	smpsHeaderFM        s3p32_FM2,	$00, $0B
	smpsHeaderFM        s3p32_FM3,	$00, $15
	smpsHeaderFM        s3p32_FM4,	$00, $15
	smpsHeaderFM        s3p32_FM5,	$00, $19
	smpsHeaderPSG       s3p32_PSG1,	$E8, $04, $00, $00
	smpsHeaderPSG       s3p32_PSG2,	$E8, $02, $00, $00
	smpsHeaderPSG       s3p32_PSG3,	$E8, $02, $00, $00

; FM1 Data
s3p32_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	smpsModSet          $0D, $01, $02, $06
	dc.b	nC4, $08, nF4, nG4, nF4, nG4, nC5, nG4, nC5, nD5, nF5, $18

s3p32_Jump01:
	dc.b	nRst, $60, nRst, nRst, nRst
	smpsSetvoice        $04
	dc.b	nRst, $18, nG5, $30, nC5, $06, nRst, $12, nRst, $54, nG5, $06
	dc.b	nRst, nG5, $12, nC5, $06, nRst, $0C, nG4, $06, nRst, nG4, $12
	dc.b	nC4, $06, nRst, $18
	smpsSetvoice        $03
	dc.b	nRst, $30, nRst, $06, nC4, nE4, nG4, nE4, nG4, nC5, nE5, nF5
	dc.b	$0C, nE5, nD5, nC5, $06, nRst, $12, nG5, $18, nE5, $0C, nF5
	dc.b	nE5, nD5, nE5, $08, nRst, $0A, nC4, $06, nE4, nG4, nE4, nG4
	dc.b	nC5, nE5, nF5, $0C, nE5, nD5, nC5, $06, nRst, $12, nG5, $18
	dc.b	nE5, $0C, nF5, nE5, nD5, nC5, $08, nRst, $0A, nC6, $06, nG5
	dc.b	nE5, nG5, nE5, nC5, nG4
	smpsSetvoice        $00
	dc.b	nRst, $18, nG4, $06, nRst, $1E, nF4, $06, nRst, $1E, nC5, $06
	dc.b	nRst, $1E, nG4, $06, nRst, $1E, nE5, $06, nRst, $12, nRst, $0C
	dc.b	nC5, $06, nRst, $1E, nG5, $06, nRst, $2A, nRst, $36
	smpsSetvoice        $03
	dc.b	nC4, $06, nE4, nG4, nE4, nG4, nC5, nE5, nF5, $0C, nE5, nD5
	dc.b	nC5, $06, nRst, $12, nG5, $18, nE5, $0C, nF5, nE5, nD5, nE5
	dc.b	$08, nRst, $0A, nC4, $06, nE4, nG4, nE4, nG4, nC5, nE5, nF5
	dc.b	$0C, nE5, nD5, nC5, $06, nRst, $12, nG5, $18, nE5, $0C, nF5
	dc.b	nE5, nD5, nC5, $08, nRst, $0A, nC6, $06, nG5, nE5, nG5, nE5
	dc.b	nC5, nG4
	smpsSetvoice        $00
	dc.b	nRst, $18, nG4, $06, nRst, $1E, nF4, $06, nRst, $1E, nC5, $06
	dc.b	nRst, $1E, nG4, $06, nRst, $1E, nE5, $06, nRst, $12, nRst, $0C
	dc.b	nC5, $06, nRst, $1E, nG5, $06, nRst, $12, nD5, $06, nRst, nE5
	dc.b	nRst, nG3, $0C, nG3, $06, nRst, nBb3, nRst, $12, nD4, $0C, nC4
	dc.b	$06, nRst, $12
	smpsFMAlterVol      $03
	smpsSetvoice        $04
	dc.b	nE5, $18, nD5, $06, nRst, nE5, nRst, nD5, nRst, nE5, nRst, nD5
	dc.b	nE5, nRst, $0C, nF5, $18, nE5, $06, nRst, nF5, nRst, nE5, nRst
	dc.b	nF5, nRst, nE5, nF5, nRst, $0C, nG5, $18, nF5, $06, nRst, nG5
	dc.b	nRst, nF5, nRst, nG5, nRst, nF5, nE5, nRst, $0C, nA4, $1E, nRst
	dc.b	$06, nB4, nRst, nB4, nRst, nB4, $0C, nG4, $06, nRst, nG4, nRst
	dc.b	nE5, $18, nD5, $06, nRst, nE5, nRst, nD5, nRst, nE5, nRst, nD5
	dc.b	nE5, nRst, $0C, nF5, $18, nE5, $06, nRst, nF5, nRst, nE5, nRst
	dc.b	nF5, nRst, nE5, nF5, nRst, $0C, nG5, $18, nF5, $06, nRst, nG5
	dc.b	nRst, nF5, nRst, nG5, nRst, nF5, nE5, nRst, $0C, nA4, $1E, nRst
	dc.b	$06, nBb4, nRst, nBb4, nRst, nB4, $0C, nRst, nC5, $06, nRst, nF5
	dc.b	$3C, nE5, $0C, nC5, nA4, nE5, $06, nRst, nRst, $0C, nD5, $08
	dc.b	nRst, $28, nC5, $06, nRst, nC5, nRst, nC5, nRst
	smpsFMAlterVol      $FD
	smpsJump            s3p32_Jump01

; FM2 Data
s3p32_FM2:
	smpsSetvoice        $01
	smpsModSet          $0D, $01, $02, $06
	dc.b	nC2, $48, nC2, $06, nC2, nC2, nC2

s3p32_Loop08:
	dc.b	nC2, $06, nRst, nC2, nRst, nC2, nRst, nC2, nC2, $05, nRst, $07
	dc.b	nC2, $06, nG2, nC2, nC2, $05, nRst, $07, nC2, $06, nC2
	smpsLoop            $00, $0C, s3p32_Loop08
	dc.b	nC2, $06, nRst, nC2, nRst, nC2, nRst, nC2, nC2, $05, nRst, $07
	dc.b	nC2, $03, nRst, nC2, $0C, nC2, nC2, nC2, $06, nC2, nC2, nRst
	dc.b	nC2, nRst, nC2, nC2, $05, nRst, $07, nC2, $05, nRst, $07, nC2
	dc.b	$06, nG2, nC2, nG2, nC2, nC2, nRst, nC2, nRst, nC2, nRst, nC2
	dc.b	nC2, $05, nRst, $07, nC2, $03, nRst, nC2, $0C, nC2, nC2, nC2
	dc.b	nC3, $01, nRst, $0B, nC2, $12, nC2, $05, nRst, $0D, nC2, $05
	dc.b	nRst, $07, nC2, $06, nC3, nC2, nC2

s3p32_Loop09:
	dc.b	nC2, $06, nRst, nC2, nRst, nC2, nRst, nC2, nC2, $05, nRst, $07
	dc.b	nC2, $06, nG2, nC2, nC2, $05, nRst, $07, nC2, $06, nC2
	smpsLoop            $00, $04, s3p32_Loop09
	dc.b	nC2, $06, nRst, nC2, nRst, nC2, nRst, nC2, nC2, $05, nRst, $07
	dc.b	nC2, $03, nRst, nC2, $0C, nC2, nC2, nC2, $06, nC2, nC2, nRst
	dc.b	nC2, nRst, nC2, nC2, $05, nRst, $07, nC2, $05, nRst, $07, nC2
	dc.b	$06, nG2, nC2, nG2, nC2, nC2, nRst, nC2, nRst, nC2, nRst, nC2
	dc.b	nC2, $05, nRst, $07, nC2, $03, nRst, nC2, $0C, nC2, nC2, nC2
	dc.b	nC3, $01, nRst, $0B, nC2, $12, nC2, $06, nC2, $0C, nC2, $05
	dc.b	nRst, $13

s3p32_Loop0A:
	dc.b	nC2, $18, nC2, $0C, nC2, nC2, nC2, nC2, nC2
	smpsLoop            $00, $08, s3p32_Loop0A
	dc.b	nC2, $18, nC2, $0C, nC2, nC2, $06, nG2, $02, nRst, $04, nC3
	dc.b	$0C, nG2, nE2, nC2, nRst, nC2, $06, nRst, $12, nC2, $06, nC2
	dc.b	nC2, $0C, nC2, nG2, nC2
	smpsJump            s3p32_Loop08

; FM3 Data
s3p32_FM3:
	smpsSetvoice        $04
	smpsModSet          $0D, $01, $02, $06
	dc.b	nRst, $18, nF5, $30, nE4, $06, nG4, nC5, nE5

s3p32_Loop07:
	smpsSetvoice        $02
	dc.b	nF4, $06, nRst, $0C, nF4, $06, nRst, $0C, nE4, $06, nRst, $12
	dc.b	nE4, $06, nRst, nE4, nRst, nE4, nRst, nD4, nRst, $0C, nD4, $06
	dc.b	nRst, $0C, nE4, $06, nRst, $12, nE4, $06, nRst, nE4, nRst, nE4
	dc.b	nRst, nF4, nRst, $0C, nF4, $06, nRst, $0C, nE4, $06, nRst, $12
	dc.b	nE4, $06, nRst, nE4, nRst, nE4, nRst, nD4, nRst, $0C, nD4, $06
	dc.b	nRst, $0C, nC4, $06, nRst, $12, nC4, $06, nRst, nC4, nRst, nC4
	dc.b	nRst
	smpsLoop            $00, $03, s3p32_Loop07
	smpsSetvoice        $04
	dc.b	nRst, $0C, nG4, $08, nRst, $0A, nG4, $06, nRst, $0C, nG4, $08
	dc.b	nRst, $0A, nG4, $08, nRst, $0A, nG4, $20, nG4, $0C, nRst, $10
	dc.b	nG4, $06, nG4, $08, nRst, $04, nG4, $08, nRst, $0A, nG4, $20
	dc.b	nG4, $0C, nRst, $10, nG4, $06, nG4, $08, nRst, $04, nG4, $08
	dc.b	nRst, $0A, nG4, $1E, nG4, $0E, nRst, $40
	smpsSetvoice        $02
	dc.b	nF4, $06, nRst, $0C, nF4, $06, nRst, $0C, nE4, $06, nRst, $12
	dc.b	nE4, $06, nRst, nE4, nRst, nE4, nRst, nD4, nRst, $0C, nD4, $06
	dc.b	nRst, $0C, nE4, $06, nRst, $12, nE4, $06, nRst, nE4, nRst, nE4
	dc.b	nRst, nF4, nRst, $0C, nF4, $06, nRst, $0C, nE4, $06, nRst, $12
	dc.b	nE4, $06, nRst, nE4, nRst, nE4, nRst, nD4, nRst, $0C, nD4, $06
	dc.b	nRst, $0C, nC4, $06, nRst, $12, nC4, $06, nRst, nC4, nRst, nC4
	dc.b	nRst
	smpsSetvoice        $04
	dc.b	nRst, $0C, nG4, $08, nRst, $0A, nG4, $06, nRst, $0C, nG4, $08
	dc.b	nRst, $0A, nG4, $08, nRst, $0A, nG4, $20, nG4, $0C, nRst, $10
	dc.b	nG4, $06, nG4, $08, nRst, $04, nG4, $08, nRst, $0A, nG4, $1E
	dc.b	nG4, $0C, nRst, $12, nG4, $06, nG4, nRst, nG4, nRst, $0C, nE4
	dc.b	$1E, nRst, $06, nF4, nRst, $12, nA4, $0C, nG4, $06, nRst, $12
	smpsSetvoice        $03
	smpsFMAlterVol      $FD
	dc.b	nC5, $54, nG4, $06, nRst, nD5, $54, nC5, $06, nRst, nE5, $48
	dc.b	nC5, $08, nRst, $1C, nRst, $18, nG5, $08, nRst, $10, nD5, $08
	dc.b	nRst, $10, nE5, $08, nRst, $04, nC5, $54, nG4, $06, nRst, nD5
	dc.b	$54, nC5, $06, nRst, nE5, $48, nC6, $08, nRst, $10, nF5, $24
	dc.b	nE5, $18, nG5, $08, nRst, $28, nRst, $60
	smpsSetvoice        $02
	dc.b	nRst, $3C, nC4, $06, nRst, nC4, nRst, nC4, nRst
	smpsFMAlterVol      $03
	smpsJump            s3p32_Loop07

; FM4 Data
s3p32_FM4:
	smpsSetvoice        $04
	smpsModSet          $0D, $01, $02, $06
	dc.b	nRst, $18, nG5, $30, nC5, $06, nRst, $12

s3p32_Loop06:
	smpsSetvoice        $02
	dc.b	nC4, $06, nRst, $0C, nC4, $06, nRst, $0C, nC4, $06, nRst, $12
	dc.b	nC4, $06, nRst, nC4, nRst, nC4, nRst, nC4, nRst, $0C, nC4, $06
	dc.b	nRst, $0C, nC4, $06, nRst, $12, nC4, $06, nRst, nC4, nRst, nC4
	dc.b	nRst, nC4, nRst, $0C, nC4, $06, nRst, $0C, nC4, $06, nRst, $12
	dc.b	nC4, $06, nRst, nC4, nRst, nC4, nRst, nC4, nRst, $0C, nC4, $06
	dc.b	nRst, $0C, nG3, $06, nRst, $12, nG3, $06, nRst, nG3, nRst, nG3
	dc.b	nRst
	smpsLoop            $00, $03, s3p32_Loop06
	smpsSetvoice        $04
	dc.b	nRst, $0C, nF4, $08, nRst, $0A, nF4, $06, nRst, $0C, nF4, $08
	dc.b	nRst, $0A, nF4, $08, nRst, $0A, nE4, $20, nE4, $0C, nRst, $10
	dc.b	nE4, $06, nE4, $08, nRst, $04, nE4, $08, nRst, $0A, nF4, $20
	dc.b	nF4, $0C, nRst, $10, nF4, $06, nF4, $08, nRst, $04, nF4, $08
	dc.b	nRst, $0A, nE4, $18, nD4, $06, nRst, nE4, $08, nRst, $40
	smpsSetvoice        $02
	dc.b	nC4, $06, nRst, $0C, nC4, $06, nRst, $0C, nC4, $06, nRst, $12
	dc.b	nC4, $06, nRst, nC4, nRst, nC4, nRst, nC4, nRst, $0C, nC4, $06
	dc.b	nRst, $0C, nC4, $06, nRst, $12, nC4, $06, nRst, nC4, nRst, nC4
	dc.b	nRst, nC4, nRst, $0C, nC4, $06, nRst, $0C, nC4, $06, nRst, $12
	dc.b	nC4, $06, nRst, nC4, nRst, nC4, nRst, nC4, nRst, $0C, nC4, $06
	dc.b	nRst, $0C, nG3, $06, nRst, $12, nG3, $06, nRst, nG3, nRst, nG3
	dc.b	nRst
	smpsSetvoice        $04
	dc.b	nRst, $0C, nF4, $08, nRst, $0A, nF4, $06, nRst, $0C, nF4, $08
	dc.b	nRst, $0A, nF4, $08, nRst, $0A, nE4, $20, nE4, $0C, nRst, $10
	dc.b	nE4, $06, nE4, $08, nRst, $04, nE4, $08, nRst, $0A, nF4, $1E
	dc.b	nF4, $0C, nRst, $12, nF4, $06, nF4, nRst, nF4, nRst, $0C, nC4
	dc.b	$1E, nRst, $06, nD4, nRst, $12, nF4, $0C, nE4, $06, nRst, $1E
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, $0C
	smpsSetvoice        $2D
	dc.b	nF5, $06, nG5, nC6, nG5, nF5, nE5, nC5, $05, nRst, $2B, nRst
	dc.b	$3C
	smpsSetvoice        $02
	dc.b	nG3, $06, nRst, nG3, nRst, nG3, nRst
	smpsJump            s3p32_Loop06

; FM5 Data
s3p32_FM5:
	dc.b	nRst, $0E
	smpsSetvoice        $00
	smpsModSet          $0D, $01, $02, $06
	dc.b	nC4, $08, nF4, nG4, nF4, nG4, nC5, nG4, nC5, nD5, nF5, $18

s3p32_Jump00:
	dc.b	nRst, $60, nRst, nRst, nRst
	smpsSetvoice        $04
	dc.b	nRst, $18, nG5, $30, nC5, $06, nRst, $12, nRst, $54, nG5, $06
	dc.b	nRst, nG5, $12, nC5, $06, nRst, $0C, nG4, $06, nRst, nG4, $12
	dc.b	nC4, $06, nRst, $18
	smpsSetvoice        $03
	dc.b	nRst, $30, nRst, $06, nC4, nE4, nG4, nE4, nG4, nC5, nE5, nF5
	dc.b	$0C, nE5, nD5, nC5, $06, nRst, $12, nG5, $18, nE5, $0C, nF5
	dc.b	nE5, nD5, nE5, $08, nRst, $0A, nC4, $06, nE4, nG4, nE4, nG4
	dc.b	nC5, nE5, nF5, $0C, nE5, nD5, nC5, $06, nRst, $12, nG5, $18
	dc.b	nE5, $0C, nF5, nE5, nD5, nC5, $08, nRst, $0A, nC6, $06, nG5
	dc.b	nE5, nG5, nE5, nC5, nG4
	smpsSetvoice        $00
	dc.b	nRst, $18, nG4, $06, nRst, $1E, nF4, $06, nRst, $1E, nC5, $06
	dc.b	nRst, $1E, nG4, $06, nRst, $1E, nE5, $06, nRst, $12, nRst, $0C
	dc.b	nC5, $06, nRst, $1E, nG5, $06, nRst, $2A, nRst, $36
	smpsSetvoice        $03
	dc.b	nC4, $06, nE4, nG4, nE4, nG4, nC5, nE5, nF5, $0C, nE5, nD5
	dc.b	nC5, $06, nRst, $12, nG5, $18, nE5, $0C, nF5, nE5, nD5, nE5
	dc.b	$08, nRst, $0A, nC4, $06, nE4, nG4, nE4, nG4, nC5, nE5, nF5
	dc.b	$0C, nE5, nD5, nC5, $06, nRst, $12, nG5, $18, nE5, $0C, nF5
	dc.b	nE5, nD5, nC5, $08, nRst, $0A, nC6, $06, nG5, nE5, nG5, nE5
	dc.b	nC5, nG4
	smpsSetvoice        $00
	dc.b	nRst, $18, nG4, $06, nRst, $1E, nF4, $06, nRst, $1E, nC5, $06
	dc.b	nRst, $1E, nG4, $06, nRst, $1E, nE5, $06, nRst, $12, nRst, $0C
	dc.b	nC5, $06, nRst, $1E, nG5, $06, nRst, $12, nD5, $06, nRst, nE5
	dc.b	nRst, nG3, $0C, nG3, $06, nRst, nBb3, nRst, $12, nD4, $0C, nC4
	dc.b	$06, nRst, $12
	smpsSetvoice        $04
	smpsFMAlterVol      $03
	dc.b	nE5, $18, nD5, $06, nRst, nE5, nRst, nD5, nRst, nE5, nRst, nD5
	dc.b	nE5, nRst, $0C, nF5, $18, nE5, $06, nRst, nF5, nRst, nE5, nRst
	dc.b	nF5, nRst, nE5, nF5, nRst, $0C, nG5, $18, nF5, $06, nRst, nG5
	dc.b	nRst, nF5, nRst, nG5, nRst, nF5, nE5, nRst, $0C, nA4, $1E, nRst
	dc.b	$06, nB4, nRst, nB4, nRst, nB4, $0C, nG4, $06, nRst, nG4, nRst
	dc.b	nE5, $18, nD5, $06, nRst, nE5, nRst, nD5, nRst, nE5, nRst, nD5
	dc.b	nE5, nRst, $0C, nF5, $18, nE5, $06, nRst, nF5, nRst, nE5, nRst
	dc.b	nF5, nRst, nE5, nF5, nRst, $0C, nG5, $18, nF5, $06, nRst, nG5
	dc.b	nRst, nF5, nRst, nG5, nRst, nF5, nE5, nRst, $0C, nA4, $1E, nRst
	dc.b	$06, nBb4, nRst, nBb4, nRst, nB4, $0C, nRst, nC5, $06, nRst, nF5
	dc.b	$3C, nE5, $0C, nC5, nA4, nE5, $06, nRst, nRst, $0C, nD5, $08
	dc.b	nRst, $28, nC5, $06, nRst, nC5, nRst, nC5, nRst
	smpsFMAlterVol      $FD
	smpsJump            s3p32_Jump00

; DAC Data
s3p32_DAC:
	dc.b	dSnareS3, $18, dKickS3, dKickS3, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3

s3p32_Loop00:
	dc.b	dKickS3, $18, dSnareS3, $12, dKickS3, dKickS3, $0C, dSnareS3, dKickS3
	smpsLoop            $00, $03, s3p32_Loop00
	dc.b	dKickS3, $18, dSnareS3, $12, dKickS3, dKickS3, $0C, dSnareS3, $06, dKickS3, dSnareS3, dSnareS3
	dc.b	dKickS3, $0C, dKickS3, $06, dKickS3, dSnareS3, $12, dKickS3, dKickS3, $0C, dSnareS3, dKickS3

s3p32_Loop01:
	dc.b	dKickS3, $18, dSnareS3, $12, dKickS3, dKickS3, $0C, dSnareS3, dKickS3
	smpsLoop            $00, $02, s3p32_Loop01
	dc.b	dKickS3, $18, dSnareS3, $12, dKickS3, $0C, dSnareS3, $06, dKickS3, $0C, dSnareS3, dKickS3

s3p32_Loop02:
	dc.b	dKickS3, $18, dSnareS3, $12, dKickS3, dKickS3, $0C, dSnareS3, dKickS3
	smpsLoop            $00, $03, s3p32_Loop02
	dc.b	dKickS3, $18, dSnareS3, $12, dKickS3, dSnareS3, $0C, dSnareS3, dSnareS3, $06, dSnareS3

s3p32_Loop03:
	dc.b	dKickS3, $18, dSnareS3, $12, dKickS3, dKickS3, $0C, dSnareS3, dKickS3
	smpsLoop            $00, $02, s3p32_Loop03
	dc.b	dKickS3, $18, dSnareS3, $12, dKickS3, dKickS3, $0C, dSnareS3, $06, dSnareS3, dSnareS3, $0C
	dc.b	dKickS3, dSnareS3, dSnareS3, dSnareS3, $06, dSnareS3, dKickS3, dSnareS3, $0C, dSnareS3, $06, dSnareS3
	dc.b	dSnareS3, dKickS3, dSnareS3

s3p32_Loop04:
	dc.b	dKickS3, $18, dSnareS3, $12, dKickS3, dKickS3, $0C, dSnareS3, dKickS3
	smpsLoop            $00, $03, s3p32_Loop04
	dc.b	dKickS3, $18, dSnareS3, $12, dKickS3, dSnareS3, $0C, dSnareS3, dSnareS3, $06, dSnareS3

s3p32_Loop05:
	dc.b	dKickS3, $18, dSnareS3, $12, dKickS3, dKickS3, $0C, dSnareS3, dKickS3
	smpsLoop            $00, $02, s3p32_Loop05
	dc.b	dKickS3, $18, dSnareS3, $12, dKickS3, dKickS3, $0C, dSnareS3, $06, dSnareS3, dSnareS3, $0C
	dc.b	dKickS3, dSnareS3, $06, dSnareS3, dSnareS3, $18, dSnareS3, $0C, dSnareS3, $06, dSnareS3, dSnareS3
	dc.b	dSnareS3, dSnareS3, dSnareS3, dKickS3, $0C, dKickS3, dSnareS3, $18, dKickS3, $0C, dKickS3, dSnareS3
	dc.b	dKickS3, dKickS3, dKickS3, dSnareS3, $18, dKickS3, $0C, dKickS3, dSnareS3, dKickS3, dKickS3, dKickS3
	dc.b	dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dKickS3, dKickS3, dSnareS3, $18, dKickS3, $0C
	dc.b	dKickS3, dSnareS3, dSnareS3, dKickS3, dKickS3, dSnareS3, $18, dKickS3, $0C, dKickS3, dSnareS3, dKickS3
	dc.b	dKickS3, dKickS3, dSnareS3, $18, dKickS3, $0C, dKickS3, dSnareS3, dKickS3, dKickS3, dKickS3, dSnareS3
	dc.b	dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dKickS3, dKickS3, dSnareS3, $18, dSnareS3, $06, dKickS3
	dc.b	dKickS3, $0C, dSnareS3, $06, dSnareS3, dSnareS3, $0C, dKickS3, dKickS3, dSnareS3, $18, dKickS3
	dc.b	$0C, dKickS3, dSnareS3, dSnareS3, dKickS3, dSnareS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dSnareS3
	dc.b	$06, dSnareS3
	smpsJump            s3p32_Loop00

; PSG1 Data
s3p32_PSG1:
	smpsModSet          $0D, $01, $02, $06
	dc.b	nRst, $12, nD5, $01, nE5, nF5, nG5, nA5, nB5, nC6, $30, nF5
	dc.b	$06, nE5, $02, nD5, nC5, nB4, $01, nA4, nG4, nF4, nE4, nD4
	dc.b	nC4, nB3, nA3, nG3, nF3, nE3

s3p32_Jump02:
	dc.b	nRst, $3C, nG4, $06, nRst, nC5, nRst, nG4, nRst, nD5, nRst, nG4
	dc.b	nD5, nRst, nC5, nRst, nE5, nRst, $30, nRst, $3C, nG4, $06, nRst
	dc.b	nC5, nRst, nG4, nRst, nD5, nRst, nG4, nD5, nRst, nC5, nRst, nC5
	dc.b	nRst, $30, nRst, $12, nD5, $01, nE5, nF5, nG5, nA5, nB5, nC6
	dc.b	$30, nF5, $06, nE5, $02, nD5, nC5, nB4, $01, nA4, nG4, nF4
	dc.b	nE4, nD4, nC4, nB3, nA3, nG3, nF3, nE3, nRst, $54, nC6, $06
	dc.b	nRst, nC6, $12, nG5, $06, nRst, $0C, nC5, $06, nRst, nC5, $12
	dc.b	nG4, $06, nRst, $18, nRst, $30, nRst, $06, nE4, nG4, nC5, nG4
	dc.b	nC5, nE5, nG5, nRst, $0C, nC4, $06, nRst, $12, nC4, $06, nRst
	dc.b	$2A, nC4, $06, nRst, nC4, nRst, $0C, nC4, $06, nRst, $1E, nE4
	dc.b	$06, nG4, nC5, nG4, nC5, nE5, nG5, nRst, $0C, nC4, $06, nRst
	dc.b	$12, nC4, $06, nRst, $2A, nC4, $06, nRst, nC4, nRst, $0C, nC4
	dc.b	$06, nRst, $1E, nC6, $06, nG5, nE5, nG5, nE5, nC5, nG4, nRst
	dc.b	$0C, nC4, $08, nRst, $0A, nC4, $06, nRst, $0C, nC4, $08, nRst
	dc.b	$0A, nC4, $08, nRst, $0A, nC4, $20, nC4, $0C, nRst, $10, nC4
	dc.b	$06, nC4, $08, nRst, $04, nC4, $08, nRst, $0A, nC4, $20, nC4
	dc.b	$0C, nRst, $10, nC4, $06, nC4, $08, nRst, $04, nC4, $08, nRst
	dc.b	$0A, nC4, $18, nB3, $06, nRst, nC4, $08, nRst, $16, nE4, $06
	dc.b	nG4, nC5, nG4, nC5, nE5, nG5, nRst, $0C, nC4, $06, nRst, $12
	dc.b	nC4, $06, nRst, $2A, nC4, $06, nRst, nC4, nRst, $0C, nC4, $06
	dc.b	nRst, $1E, nE4, $06, nG4, nC5, nG4, nC5, nE5, nG5, nRst, $0C
	dc.b	nC4, $06, nRst, $12, nC4, $06, nRst, $2A, nC4, $06, nRst, nC4
	dc.b	nRst, $0C, nC4, $06, nRst, $1E, nC6, $06, nG5, nE5, nG5, nE5
	dc.b	nC5, nG4, nRst, $0C, nC4, $08, nRst, $0A, nC4, $06, nRst, $0C
	dc.b	nC4, $08, nRst, $0A, nC4, $08, nRst, $0A, nC4, $20, nC4, $0C
	dc.b	nRst, $10, nC4, $06, nC4, $08, nRst, $04, nC4, $08, nRst, $0A
	dc.b	nC4, $1E, nC4, $0C, nRst, $12, nC4, $06, nC4, nRst, nC4, nRst
	dc.b	$0C, nG3, $1E, nRst, $06, nBb3, nRst, $12, nD4, $0C, nC4, $06
	dc.b	nRst, $12, nC5, $18, nB4, $06, nRst, nC5, nRst, nB4, nRst, nC5
	dc.b	nRst, nB4, nC5, nRst, $0C, nD5, $18, nC5, $06, nRst, nD5, nRst
	dc.b	nC5, nRst, nD5, nRst, nC5, nD5, nRst, $0C, nE5, $18, nD5, $06
	dc.b	nRst, nE5, nRst, nD5, nRst, nE5, nRst, nD5, nC5, nRst, $0C, nF4
	dc.b	$1E, nRst, $06, nG4, nRst, nG4, nRst, nG4, $0C, nE4, $06, nRst
	dc.b	nD4, nRst, nC5, $18, nB4, $06, nRst, nC5, nRst, nB4, nRst, nC5
	dc.b	nRst, nB4, nC5, nRst, $0C, nD5, $18, nC5, $06, nRst, nD5, nRst
	dc.b	nC5, nRst, nD5, nRst, nC5, nD5, nRst, $0C, nE5, $18, nD5, $06
	dc.b	nRst, nE5, nRst, nD5, nRst, nE5, nRst, nD5, nC5, nRst, $0C, nF4
	dc.b	$1E, nRst, $06, nFs4, nRst, nFs4, nRst, nG4, $0C, nRst, nA4, $06
	dc.b	nRst, nA4, $3C, nE5, $0C, nRst, $18, nG4, $06, nRst, nRst, $0C
	dc.b	nG4, $08, nRst, $28, nG4, $06, nRst, nG4, nRst, nG4, nRst
	smpsJump            s3p32_Jump02

; PSG2 Data
s3p32_PSG2:
	smpsStop

; PSG3 Data
s3p32_PSG3:
	smpsStop

s3p32_Voices:
;	Voice $00
;	$3C
;	$44, $31, $12, $61, 	$1F, $1F, $1F, $1F, 	$0A, $08, $0B, $01
;	$00, $0F, $00, $00, 	$1F, $3F, $5F, $1F, 	$21, $87, $10, $88
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $01, $03, $04
	smpsVcCoarseFreq    $01, $02, $01, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $0B, $08, $0A
	smpsVcDecayRate2    $00, $00, $0F, $00
	smpsVcDecayLevel    $01, $05, $03, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $88, $10, $87, $21

;	Voice $01
;	$38
;	$75, $13, $71, $11, 	$DF, $5F, $1F, $1F, 	$0C, $0D, $01, $01
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$1E, $1E, $1E, $81
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $07, $01, $07
	smpsVcCoarseFreq    $01, $01, $03, $05
	smpsVcRateScale     $00, $00, $01, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $0D, $0C
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $81, $1E, $1E, $1E

;	Voice $02
;	$3D
;	$71, $51, $41, $11, 	$1F, $1F, $1F, $1F, 	$01, $01, $01, $01
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$20, $85, $85, $85
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $04, $05, $07
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $01, $01
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $85, $85, $85, $20

;	Voice $03
;	$3D
;	$51, $61, $71, $21, 	$1C, $18, $18, $1B, 	$06, $05, $04, $05
;	$06, $05, $06, $06, 	$6F, $8F, $5F, $7F, 	$17, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $07, $06, $05
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1B, $18, $18, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $04, $05, $06
	smpsVcDecayRate2    $06, $06, $05, $06
	smpsVcDecayLevel    $07, $05, $08, $06
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $80, $80, $17

;	Voice $04
;	$07
;	$78, $54, $42, $11, 	$1F, $1F, $1F, $1F, 	$01, $01, $01, $01
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$8A, $84, $83, $84
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $04, $05, $07
	smpsVcCoarseFreq    $01, $02, $04, $08
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $01, $01
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $84, $83, $84, $8A

;	Voice $05
;	$A3
;	$D5, $06, $03, $01, 	$08, $13, $D4, $00, 	$00, $B8, $C9, $00
;	$10, $56, $CB, $00, 	$10, $F1, $CE, $00, 	$10, $6C, $D0, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $04
	smpsVcUnusedBits    $02, $00, $02, $01, $00
	smpsVcDetune        $00, $00, $00, $0D
	smpsVcCoarseFreq    $01, $03, $06, $05
	smpsVcRateScale     $00, $03, $00, $00
	smpsVcAttackRate    $00, $14, $13, $08
	smpsVcAmpMod        $00, $01, $01, $00
	smpsVcDecayRate1    $00, $09, $18, $00
	smpsVcDecayRate2    $00, $CB, $56, $10
	smpsVcDecayLevel    $00, $0C, $0F, $01
	smpsVcReleaseRate   $00, $0E, $01, $00
	smpsVcTotalLevel    $00, $D0, $6C, $10

;	Voice $06
;	$10
;	$87, $D2, $00, $10, 	$EA, $D2, $00, $02, 	$00, $00, $EB, $D2
;	$00, $02, $00, $00, 	$EC, $D2, $00, $02, 	$00, $00, $80, $30
	smpsVcAlgorithm     $00
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00, $02, $03, $00, $00
	smpsVcDetune        $01, $00, $0D, $08
	smpsVcCoarseFreq    $00, $00, $02, $07
	smpsVcRateScale     $00, $00, $03, $03
	smpsVcAttackRate    $02, $00, $12, $2A
	smpsVcAmpMod        $01, $01, $00, $00
	smpsVcDecayRate1    $12, $0B, $00, $00
	smpsVcDecayRate2    $00, $00, $02, $00
	smpsVcDecayLevel    $00, $00, $0D, $0E
	smpsVcReleaseRate   $02, $00, $02, $0C
	smpsVcTotalLevel    $30, $80, $00, $00

;	Voice $07
;	$80
;	$0C, $EF, $00, $E0, 	$C0, $B5, $04, $80, 	$02, $B8, $04, $80
;	$02, $B9, $0C, $BC, 	$06, $80, $BF, $12, 	$BE, $BC, $03, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $02, $00, $00, $01, $00
	smpsVcDetune        $0E, $00, $0E, $00
	smpsVcCoarseFreq    $00, $00, $0F, $0C
	smpsVcRateScale     $02, $00, $02, $03
	smpsVcAttackRate    $00, $04, $35, $00
	smpsVcAmpMod        $01, $00, $01, $00
	smpsVcDecayRate1    $00, $04, $18, $02
	smpsVcDecayRate2    $BC, $0C, $B9, $02
	smpsVcDecayLevel    $01, $0B, $08, $00
	smpsVcReleaseRate   $02, $0F, $00, $06
	smpsVcTotalLevel    $80, $03, $BC, $BE

;	Voice $08
;	$09
;	$BA, $12, $B9, $B5, 	$04, $80, $08, $B5, 	$04, $80, $08, $B4
;	$04, $80, $08, $B5, 	$06, $B7, $B9, $0C, 	$80, $B5, $04, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00, $01, $00, $00, $00
	smpsVcDetune        $0B, $0B, $01, $0B
	smpsVcCoarseFreq    $05, $09, $02, $0A
	smpsVcRateScale     $02, $00, $02, $00
	smpsVcAttackRate    $35, $08, $00, $04
	smpsVcAmpMod        $01, $00, $01, $00
	smpsVcDecayRate1    $14, $08, $00, $04
	smpsVcDecayRate2    $B5, $08, $80, $04
	smpsVcDecayLevel    $00, $0B, $0B, $00
	smpsVcReleaseRate   $0C, $09, $07, $06
	smpsVcTotalLevel    $80, $04, $B5, $80

;	Voice $09
;	$02
;	$B8, $04, $80, $02, 	$B9, $0C, $BC, $BF, 	$12, $BE, $BC, $04
;	$80, $08, $BA, $12, 	$B9, $BA, $04, $80, 	$08, $BC, $04, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00, $00, $01, $01, $00
	smpsVcDetune        $00, $08, $00, $0B
	smpsVcCoarseFreq    $02, $00, $04, $08
	smpsVcRateScale     $02, $02, $00, $02
	smpsVcAttackRate    $3F, $3C, $0C, $39
	smpsVcAmpMod        $00, $01, $01, $00
	smpsVcDecayRate1    $04, $1C, $1E, $12
	smpsVcDecayRate2    $12, $BA, $08, $80
	smpsVcDecayLevel    $08, $00, $0B, $0B
	smpsVcReleaseRate   $00, $04, $0A, $09
	smpsVcTotalLevel    $80, $04, $BC, $08

;	Voice $0A
;	$08
;	$BE, $04, $80, $08, 	$BF, $0C, $C1, $06, 	$80, $BA, $B9, $BA
;	$B9, $BA, $B9, $BA, 	$B9, $BA, $0C, $B9, 	$06, $BA, $0C, $B9
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00, $01, $01, $01, $00
	smpsVcDetune        $00, $08, $00, $0B
	smpsVcCoarseFreq    $08, $00, $04, $0E
	smpsVcRateScale     $00, $03, $00, $02
	smpsVcAttackRate    $06, $01, $0C, $3F
	smpsVcAmpMod        $01, $01, $01, $01
	smpsVcDecayRate1    $1A, $19, $1A, $00
	smpsVcDecayRate2    $BA, $B9, $BA, $B9
	smpsVcDecayLevel    $0B, $00, $0B, $0B
	smpsVcReleaseRate   $09, $0C, $0A, $09
	smpsVcTotalLevel    $B9, $0C, $BA, $06

;	Voice $0B
;	$06
;	$BA, $0C, $BC, $06, 	$BB, $BC, $BB, $BC, 	$BB, $BC, $BB, $BC
;	$80, $BD, $80, $BE, 	$80, $BF, $80, $80, 	$0C, $B5, $04, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00, $01, $01, $01, $01
	smpsVcDetune        $00, $0B, $00, $0B
	smpsVcCoarseFreq    $06, $0C, $0C, $0A
	smpsVcRateScale     $02, $02, $02, $02
	smpsVcAttackRate    $3C, $3B, $3C, $3B
	smpsVcAmpMod        $01, $01, $01, $01
	smpsVcDecayRate1    $1C, $1B, $1C, $1B
	smpsVcDecayRate2    $BE, $80, $BD, $80
	smpsVcDecayLevel    $08, $08, $0B, $08
	smpsVcReleaseRate   $00, $00, $0F, $00
	smpsVcTotalLevel    $80, $04, $B5, $0C

;	Voice $0C
;	$02
;	$B8, $04, $80, $02, 	$B9, $0C, $BC, $BF, 	$12, $BE, $BA, $0C
;	$B9, $0F, $C3, $03, 	$C5, $12, $C1, $30, 	$E7, $0C, $80, $0C
	smpsVcAlgorithm     $02
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00, $00, $01, $01, $00
	smpsVcDetune        $00, $08, $00, $0B
	smpsVcCoarseFreq    $02, $00, $04, $08
	smpsVcRateScale     $02, $02, $00, $02
	smpsVcAttackRate    $3F, $3C, $0C, $39
	smpsVcAmpMod        $00, $01, $01, $00
	smpsVcDecayRate1    $0C, $1A, $1E, $12
	smpsVcDecayRate2    $03, $C3, $0F, $B9
	smpsVcDecayLevel    $03, $0C, $01, $0C
	smpsVcReleaseRate   $00, $01, $02, $05
	smpsVcTotalLevel    $0C, $80, $0C, $E7

;	Voice $0D
;	$B5
;	$04, $80, $02, $B8, 	$04, $80, $02, $B9, 	$0C, $BC, $06, $80
;	$BF, $12, $BE, $BC, 	$04, $80, $08, $BA, 	$12, $B9, $B5, $04
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $02, $00, $00, $01, $00
	smpsVcDetune        $0B, $00, $08, $00
	smpsVcCoarseFreq    $08, $02, $00, $04
	smpsVcRateScale     $02, $00, $02, $00
	smpsVcAttackRate    $39, $02, $00, $04
	smpsVcAmpMod        $01, $00, $01, $00
	smpsVcDecayRate1    $00, $06, $1C, $0C
	smpsVcDecayRate2    $BC, $BE, $12, $BF
	smpsVcDecayLevel    $0B, $00, $08, $00
	smpsVcReleaseRate   $0A, $08, $00, $04
	smpsVcTotalLevel    $04, $B5, $B9, $12

;	Voice $0E
;	$80
;	$08, $B5, $04, $80, 	$08, $B4, $04, $80, 	$08, $B5, $06, $B7
;	$B9, $0C, $80, $B5, 	$04, $80, $02, $B8, 	$04, $80, $02, $B9
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $02, $01, $00, $01, $00
	smpsVcDetune        $08, $00, $0B, $00
	smpsVcCoarseFreq    $00, $04, $05, $08
	smpsVcRateScale     $02, $00, $02, $00
	smpsVcAttackRate    $00, $04, $34, $08
	smpsVcAmpMod        $01, $00, $01, $00
	smpsVcDecayRate1    $17, $06, $15, $08
	smpsVcDecayRate2    $B5, $80, $0C, $B9
	smpsVcDecayLevel    $0B, $00, $08, $00
	smpsVcReleaseRate   $08, $02, $00, $04
	smpsVcTotalLevel    $B9, $02, $80, $04

;	Voice $0F
;	$0C
;	$BC, $BF, $12, $BE, 	$BC, $04, $80, $08, 	$BA, $12, $B9, $BA
;	$04, $80, $08, $BC, 	$04, $80, $08, $BE, 	$04, $80, $08, $BF
	smpsVcAlgorithm     $04
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00, $01, $01, $00, $01
	smpsVcDetune        $0B, $01, $0B, $0B
	smpsVcCoarseFreq    $0E, $02, $0F, $0C
	smpsVcRateScale     $00, $02, $00, $02
	smpsVcAttackRate    $08, $00, $04, $3C
	smpsVcAmpMod        $01, $01, $00, $01
	smpsVcDecayRate1    $1A, $19, $12, $1A
	smpsVcDecayRate2    $BC, $08, $80, $04
	smpsVcDecayLevel    $0B, $00, $08, $00
	smpsVcReleaseRate   $0E, $08, $00, $04
	smpsVcTotalLevel    $BF, $08, $80, $04

;	Voice $10
;	$0C
;	$C1, $BA, $06, $B9, 	$BA, $B9, $BA, $B9, 	$BA, $B9, $BA, $0C
;	$B9, $06, $BA, $0C, 	$B9, $06, $BA, $0C, 	$BC, $06, $BB, $BC
	smpsVcAlgorithm     $04
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00, $00, $01, $01, $01
	smpsVcDetune        $0B, $00, $0B, $0C
	smpsVcCoarseFreq    $09, $06, $0A, $01
	smpsVcRateScale     $02, $02, $02, $02
	smpsVcAttackRate    $39, $3A, $39, $3A
	smpsVcAmpMod        $00, $01, $01, $01
	smpsVcDecayRate1    $0C, $1A, $19, $1A
	smpsVcDecayRate2    $0C, $BA, $06, $B9
	smpsVcDecayLevel    $00, $0B, $00, $0B
	smpsVcReleaseRate   $0C, $0A, $06, $09
	smpsVcTotalLevel    $BC, $BB, $06, $BC

;	Voice $11
;	$BB
;	$BC, $BB, $BC, $BB, 	$BC, $80, $BD, $80, 	$BE, $80, $BF, $80
;	$80, $0C, $B5, $04, 	$80, $02, $B8, $04, 	$80, $02, $B9, $0C
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $02, $00, $01, $00, $01
	smpsVcDetune        $0B, $0B, $0B, $0B
	smpsVcCoarseFreq    $0B, $0C, $0B, $0C
	smpsVcRateScale     $02, $02, $02, $02
	smpsVcAttackRate    $00, $3D, $00, $3C
	smpsVcAmpMod        $01, $01, $01, $01
	smpsVcDecayRate1    $00, $1F, $00, $1E
	smpsVcDecayRate2    $04, $B5, $0C, $80
	smpsVcDecayLevel    $00, $0B, $00, $08
	smpsVcReleaseRate   $04, $08, $02, $00
	smpsVcTotalLevel    $0C, $B9, $02, $80

;	Voice $12
;	$BC
;	$BF, $12, $BE, $BA, 	$0C, $B9, $0F, $C3, 	$03, $C5, $12, $C1
;	$30, $E7, $0C, $EF, 	$01, $E0, $80, $BE, 	$30, $E7, $30, $C0
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $02, $02, $00, $02, $00
	smpsVcDetune        $0B, $0B, $01, $0B
	smpsVcCoarseFreq    $0A, $0E, $02, $0F
	smpsVcRateScale     $03, $00, $02, $00
	smpsVcAttackRate    $03, $0F, $39, $0C
	smpsVcAmpMod        $01, $00, $01, $00
	smpsVcDecayRate1    $01, $12, $05, $03
	smpsVcDecayRate2    $EF, $0C, $E7, $30
	smpsVcDecayLevel    $0B, $08, $0E, $00
	smpsVcReleaseRate   $0E, $00, $00, $01
	smpsVcTotalLevel    $C0, $30, $E7, $30

;	Voice $13
;	$E7
;	$30, $30, $E7, $30, 	$C1, $C1, $C1, $E7, 	$30, $C3, $E7, $30
;	$C1, $C3, $C3, $E7, 	$30, $EF, $00, $E0, 	$C0, $C5, $06, $C6
	smpsVcAlgorithm     $07
	smpsVcFeedback      $04
	smpsVcUnusedBits    $03, $01, $03, $02, $01
	smpsVcDetune        $03, $0E, $03, $03
	smpsVcCoarseFreq    $00, $07, $00, $00
	smpsVcRateScale     $03, $03, $03, $03
	smpsVcAttackRate    $27, $01, $01, $01
	smpsVcAmpMod        $00, $01, $01, $00
	smpsVcDecayRate1    $10, $07, $03, $10
	smpsVcDecayRate2    $E7, $C3, $C3, $C1
	smpsVcDecayLevel    $0E, $00, $0E, $03
	smpsVcReleaseRate   $00, $00, $0F, $00
	smpsVcTotalLevel    $C6, $06, $C5, $C0

;	Voice $14
;	$80
;	$C5, $80, $C3, $80, 	$C1, $C3, $18, $C5, 	$C0, $06, $C1, $80
;	$C0, $80, $BC, $BE, 	$BC, $30, $E7, $06, 	$C5, $C6, $80, $C5
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $02, $00, $02, $00, $02
	smpsVcDetune        $08, $0C, $08, $0C
	smpsVcCoarseFreq    $00, $03, $00, $05
	smpsVcRateScale     $03, $00, $03, $03
	smpsVcAttackRate    $05, $18, $03, $01
	smpsVcAmpMod        $01, $01, $00, $01
	smpsVcDecayRate1    $00, $01, $06, $00
	smpsVcDecayRate2    $BE, $BC, $80, $C0
	smpsVcDecayLevel    $00, $0E, $03, $0B
	smpsVcReleaseRate   $06, $07, $00, $0C
	smpsVcTotalLevel    $C5, $80, $C6, $C5

;	Voice $15
;	$80
;	$C3, $80, $C1, $C3, 	$18, $C5, $C1, $06, 	$C3, $80, $C5, $80
;	$C8, $CA, $C8, $30, 	$E7, $06, $C5, $C6, 	$80, $C5, $80, $C3
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $02, $00, $02, $00, $02
	smpsVcDetune        $0C, $0C, $08, $0C
	smpsVcCoarseFreq    $03, $01, $00, $03
	smpsVcRateScale     $00, $03, $03, $00
	smpsVcAttackRate    $06, $01, $05, $18
	smpsVcAmpMod        $01, $01, $01, $01
	smpsVcDecayRate1    $00, $05, $00, $03
	smpsVcDecayRate2    $30, $C8, $CA, $C8
	smpsVcDecayLevel    $0C, $0C, $00, $0E
	smpsVcReleaseRate   $06, $05, $06, $07
	smpsVcTotalLevel    $C3, $80, $C5, $80

;	Voice $16
;	$80
;	$C1, $C3, $18, $C5, 	$C0, $06, $C1, $80, 	$C0, $80, $BC, $BE
;	$BC, $30, $E7, $06, 	$80, $0C, $BC, $06, 	$80, $C1, $18, $C0
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $02, $01, $01, $00, $02
	smpsVcDetune        $0C, $01, $0C, $0C
	smpsVcCoarseFreq    $05, $08, $03, $01
	smpsVcRateScale     $02, $03, $00, $03
	smpsVcAttackRate    $00, $01, $06, $00
	smpsVcAmpMod        $01, $01, $01, $01
	smpsVcDecayRate1    $1E, $1C, $00, $00
	smpsVcDecayRate2    $06, $E7, $30, $BC
	smpsVcDecayLevel    $00, $0B, $00, $08
	smpsVcReleaseRate   $06, $0C, $0C, $00
	smpsVcTotalLevel    $C0, $18, $C1, $80

;	Voice $17
;	$C1
;	$C3, $0C, $BC, $BF, 	$C0, $C3, $C8, $24, 	$F6, $BA, $C9, $EF
;	$02, $80, $30, $EF, 	$02, $9D, $04, $80, 	$08, $A4, $04, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $00
	smpsVcUnusedBits    $03, $03, $02, $01, $03
	smpsVcDetune        $0B, $0B, $00, $0C
	smpsVcCoarseFreq    $0F, $0C, $0C, $03
	smpsVcRateScale     $00, $03, $03, $03
	smpsVcAttackRate    $24, $08, $03, $00
	smpsVcAmpMod        $01, $01, $01, $01
	smpsVcDecayRate1    $0F, $09, $1A, $16
	smpsVcDecayRate2    $EF, $30, $80, $02
	smpsVcDecayLevel    $08, $00, $09, $00
	smpsVcReleaseRate   $00, $04, $0D, $02
	smpsVcTotalLevel    $80, $04, $A4, $08

;	Voice $18
;	$08
;	$A9, $0C, $A4, $04, 	$80, $02, $A7, $04, 	$80, $08, $A7, $06
;	$A6, $0C, $A4, $A2, 	$9D, $04, $80, $08, 	$9D, $04, $80, $08
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00, $00, $01, $00, $00
	smpsVcDetune        $00, $0A, $00, $0A
	smpsVcCoarseFreq    $04, $04, $0C, $09
	smpsVcRateScale     $00, $02, $00, $02
	smpsVcAttackRate    $04, $27, $02, $00
	smpsVcAmpMod        $00, $01, $00, $01
	smpsVcDecayRate1    $06, $07, $08, $00
	smpsVcDecayRate2    $A2, $A4, $0C, $A6
	smpsVcDecayLevel    $00, $08, $00, $09
	smpsVcReleaseRate   $08, $00, $04, $0D
	smpsVcTotalLevel    $08, $80, $04, $9D

;	Voice $19
;	$A4
;	$0C, $A6, $06, $A7, 	$80, $A7, $80, $A6, 	$0C, $A4, $06, $A2
;	$0C, $9D, $04, $80, 	$08, $A4, $04, $80, 	$08, $A9, $0C, $A4
	smpsVcAlgorithm     $04
	smpsVcFeedback      $04
	smpsVcUnusedBits    $02, $01, $00, $01, $00
	smpsVcDetune        $0A, $00, $0A, $00
	smpsVcCoarseFreq    $07, $06, $06, $0C
	smpsVcRateScale     $02, $02, $02, $02
	smpsVcAttackRate    $26, $00, $27, $00
	smpsVcAmpMod        $01, $00, $01, $00
	smpsVcDecayRate1    $02, $06, $04, $0C
	smpsVcDecayRate2    $80, $04, $9D, $0C
	smpsVcDecayLevel    $08, $00, $0A, $00
	smpsVcReleaseRate   $00, $04, $04, $08
	smpsVcTotalLevel    $A4, $0C, $A9, $08

;	Voice $1A
;	$04
;	$80, $02, $A7, $04, 	$80, $08, $A7, $06, 	$A6, $0C, $A4, $A2
;	$9D, $04, $80, $08, 	$9D, $04, $80, $08, 	$A4, $0C, $A6, $06
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00, $01, $01, $00, $01
	smpsVcDetune        $00, $0A, $00, $08
	smpsVcCoarseFreq    $04, $07, $02, $00
	smpsVcRateScale     $00, $02, $00, $02
	smpsVcAttackRate    $06, $27, $08, $00
	smpsVcAmpMod        $01, $01, $00, $01
	smpsVcDecayRate1    $02, $04, $0C, $06
	smpsVcDecayRate2    $08, $80, $04, $9D
	smpsVcDecayLevel    $00, $08, $00, $09
	smpsVcReleaseRate   $08, $00, $04, $0D
	smpsVcTotalLevel    $06, $A6, $0C, $A4

;	Voice $1B
;	$A7
;	$80, $A7, $80, $A6, 	$0C, $A4, $06, $A2, 	$0C, $A2, $04, $80
;	$08, $A2, $04, $80, 	$08, $A2, $04, $80, 	$08, $A2, $04, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $04
	smpsVcUnusedBits    $02, $00, $00, $01, $00
	smpsVcDetune        $0A, $08, $0A, $08
	smpsVcCoarseFreq    $06, $00, $07, $00
	smpsVcRateScale     $02, $00, $02, $00
	smpsVcAttackRate    $22, $06, $24, $0C
	smpsVcAmpMod        $01, $00, $01, $00
	smpsVcDecayRate1    $00, $04, $02, $0C
	smpsVcDecayRate2    $80, $04, $A2, $08
	smpsVcDecayLevel    $08, $00, $0A, $00
	smpsVcReleaseRate   $00, $04, $02, $08
	smpsVcTotalLevel    $80, $04, $A2, $08

;	Voice $1C
;	$08
;	$A2, $04, $80, $08, 	$A2, $04, $80, $08, 	$A2, $04, $80, $08
;	$A2, $04, $80, $08, 	$A4, $04, $80, $08, 	$A4, $04, $80, $08
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00, $00, $00, $00, $01
	smpsVcDetune        $00, $08, $00, $0A
	smpsVcCoarseFreq    $08, $00, $04, $02
	smpsVcRateScale     $00, $02, $00, $02
	smpsVcAttackRate    $08, $00, $04, $22
	smpsVcAmpMod        $00, $01, $00, $01
	smpsVcDecayRate1    $08, $00, $04, $02
	smpsVcDecayRate2    $08, $80, $04, $A2
	smpsVcDecayLevel    $00, $08, $00, $0A
	smpsVcReleaseRate   $08, $00, $04, $04
	smpsVcTotalLevel    $08, $80, $04, $A4

;	Voice $1D
;	$A4
;	$04, $80, $08, $A4, 	$04, $80, $08, $A4, 	$04, $80, $08, $A4
;	$04, $80, $08, $A4, 	$04, $80, $08, $A4, 	$04, $80, $08, $9D
	smpsVcAlgorithm     $04
	smpsVcFeedback      $04
	smpsVcUnusedBits    $02, $01, $00, $00, $00
	smpsVcDetune        $0A, $00, $08, $00
	smpsVcCoarseFreq    $04, $08, $00, $04
	smpsVcRateScale     $02, $00, $02, $00
	smpsVcAttackRate    $24, $08, $00, $04
	smpsVcAmpMod        $01, $00, $01, $00
	smpsVcDecayRate1    $04, $08, $00, $04
	smpsVcDecayRate2    $A4, $08, $80, $04
	smpsVcDecayLevel    $0A, $00, $08, $00
	smpsVcReleaseRate   $04, $08, $00, $04
	smpsVcTotalLevel    $9D, $08, $80, $04

;	Voice $1E
;	$04
;	$80, $08, $A4, $04, 	$80, $08, $A9, $0C, 	$A4, $04, $80, $02
;	$A7, $04, $80, $08, 	$A7, $06, $A6, $0C, 	$A4, $A2, $9D, $04
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00, $00, $00, $00, $01
	smpsVcDetune        $00, $0A, $00, $08
	smpsVcCoarseFreq    $04, $04, $08, $00
	smpsVcRateScale     $00, $02, $00, $02
	smpsVcAttackRate    $0C, $29, $08, $00
	smpsVcAmpMod        $00, $01, $00, $01
	smpsVcDecayRate1    $02, $00, $04, $04
	smpsVcDecayRate2    $08, $80, $04, $A7
	smpsVcDecayLevel    $00, $0A, $00, $0A
	smpsVcReleaseRate   $0C, $06, $06, $07
	smpsVcTotalLevel    $04, $9D, $A2, $A4

;	Voice $1F
;	$80
;	$08, $9D, $04, $80, 	$08, $A4, $0C, $A6, 	$06, $A7, $80, $A7
;	$80, $A6, $0C, $A4, 	$06, $A2, $0C, $9D, 	$04, $80, $08, $A4
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $02, $01, $00, $01, $00
	smpsVcDetune        $08, $00, $09, $00
	smpsVcCoarseFreq    $00, $04, $0D, $08
	smpsVcRateScale     $02, $00, $02, $00
	smpsVcAttackRate    $26, $0C, $24, $08
	smpsVcAmpMod        $01, $01, $01, $00
	smpsVcDecayRate1    $07, $00, $07, $06
	smpsVcDecayRate2    $A4, $0C, $A6, $80
	smpsVcDecayLevel    $09, $00, $0A, $00
	smpsVcReleaseRate   $0D, $0C, $02, $06
	smpsVcTotalLevel    $A4, $08, $80, $04

;	Voice $20
;	$04
;	$80, $08, $A9, $0C, 	$A4, $04, $80, $02, 	$A7, $04, $80, $08
;	$A7, $06, $A6, $0C, 	$A4, $A2, $9D, $04, 	$80, $08, $9D, $04
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00, $00, $00, $00, $01
	smpsVcDetune        $00, $0A, $00, $08
	smpsVcCoarseFreq    $0C, $09, $08, $00
	smpsVcRateScale     $00, $02, $00, $02
	smpsVcAttackRate    $02, $00, $04, $24
	smpsVcAmpMod        $00, $01, $00, $01
	smpsVcDecayRate1    $08, $00, $04, $07
	smpsVcDecayRate2    $0C, $A6, $06, $A7
	smpsVcDecayLevel    $00, $09, $0A, $0A
	smpsVcReleaseRate   $04, $0D, $02, $04
	smpsVcTotalLevel    $04, $9D, $08, $80

;	Voice $21
;	$80
;	$08, $A4, $0C, $A6, 	$06, $A7, $80, $A7, 	$80, $A6, $0C, $A4
;	$06, $A2, $0C, $9D, 	$04, $80, $08, $A4, 	$04, $80, $08, $A9
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $02, $01, $00, $01, $00
	smpsVcDetune        $0A, $00, $0A, $00
	smpsVcCoarseFreq    $06, $0C, $04, $08
	smpsVcRateScale     $02, $02, $02, $00
	smpsVcAttackRate    $27, $00, $27, $06
	smpsVcAmpMod        $01, $00, $01, $01
	smpsVcDecayRate1    $04, $0C, $06, $00
	smpsVcDecayRate2    $9D, $0C, $A2, $06
	smpsVcDecayLevel    $0A, $00, $08, $00
	smpsVcReleaseRate   $04, $08, $00, $04
	smpsVcTotalLevel    $A9, $08, $80, $04

;	Voice $22
;	$0C
;	$A4, $04, $80, $02, 	$A7, $04, $80, $08, 	$A7, $06, $A6, $0C
;	$A4, $A2, $9D, $04, 	$80, $08, $9D, $04, 	$80, $08, $A4, $0C
	smpsVcAlgorithm     $04
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00, $00, $01, $00, $01
	smpsVcDetune        $00, $08, $00, $0A
	smpsVcCoarseFreq    $02, $00, $04, $04
	smpsVcRateScale     $00, $02, $00, $02
	smpsVcAttackRate    $08, $00, $04, $27
	smpsVcAmpMod        $00, $01, $00, $01
	smpsVcDecayRate1    $0C, $06, $06, $07
	smpsVcDecayRate2    $04, $9D, $A2, $A4
	smpsVcDecayLevel    $00, $09, $00, $08
	smpsVcReleaseRate   $04, $0D, $08, $00
	smpsVcTotalLevel    $0C, $A4, $08, $80

;	Voice $23
;	$A6
;	$06, $A7, $80, $A7, 	$80, $A6, $0C, $A4, 	$06, $A2, $0C, $A2
;	$04, $80, $08, $A2, 	$04, $80, $08, $A2, 	$04, $80, $08, $A2
	smpsVcAlgorithm     $06
	smpsVcFeedback      $04
	smpsVcUnusedBits    $02, $01, $00, $01, $00
	smpsVcDetune        $0A, $08, $0A, $00
	smpsVcCoarseFreq    $07, $00, $07, $06
	smpsVcRateScale     $02, $00, $02, $02
	smpsVcAttackRate    $24, $0C, $26, $00
	smpsVcAmpMod        $01, $00, $01, $00
	smpsVcDecayRate1    $02, $0C, $02, $06
	smpsVcDecayRate2    $A2, $08, $80, $04
	smpsVcDecayLevel    $0A, $00, $08, $00
	smpsVcReleaseRate   $02, $08, $00, $04
	smpsVcTotalLevel    $A2, $08, $80, $04

;	Voice $24
;	$04
;	$80, $08, $A2, $04, 	$80, $08, $A2, $04, 	$80, $08, $A2, $04
;	$80, $08, $A2, $04, 	$80, $08, $A4, $04, 	$80, $08, $A4, $04
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00, $00, $01, $00, $00
	smpsVcDetune        $00, $0A, $00, $08
	smpsVcCoarseFreq    $04, $02, $08, $00
	smpsVcRateScale     $00, $02, $00, $02
	smpsVcAttackRate    $04, $22, $08, $00
	smpsVcAmpMod        $00, $01, $00, $01
	smpsVcDecayRate1    $04, $02, $08, $00
	smpsVcDecayRate2    $04, $A2, $08, $80
	smpsVcDecayLevel    $00, $0A, $00, $08
	smpsVcReleaseRate   $04, $04, $08, $00
	smpsVcTotalLevel    $04, $A4, $08, $80

;	Voice $25
;	$80
;	$08, $A4, $04, $80, 	$08, $A4, $04, $80, 	$08, $A4, $04, $80
;	$08, $A4, $04, $80, 	$08, $A4, $04, $80, 	$08, $A4, $04, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $02, $00, $00, $01, $00
	smpsVcDetune        $08, $00, $0A, $00
	smpsVcCoarseFreq    $00, $04, $04, $08
	smpsVcRateScale     $02, $00, $02, $00
	smpsVcAttackRate    $00, $04, $24, $08
	smpsVcAmpMod        $01, $00, $01, $00
	smpsVcDecayRate1    $00, $04, $04, $08
	smpsVcDecayRate2    $80, $04, $A4, $08
	smpsVcDecayLevel    $08, $00, $0A, $00
	smpsVcReleaseRate   $00, $04, $04, $08
	smpsVcTotalLevel    $80, $04, $A4, $08

;	Voice $26
;	$08
;	$9D, $04, $80, $08, 	$A4, $04, $80, $08, 	$A9, $0C, $A4, $04
;	$80, $02, $A7, $04, 	$80, $08, $A7, $06, 	$A6, $0C, $A4, $A2
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00, $00, $01, $00, $01
	smpsVcDetune        $00, $08, $00, $09
	smpsVcCoarseFreq    $08, $00, $04, $0D
	smpsVcRateScale     $00, $02, $00, $02
	smpsVcAttackRate    $08, $00, $04, $24
	smpsVcAmpMod        $00, $01, $00, $01
	smpsVcDecayRate1    $04, $04, $0C, $09
	smpsVcDecayRate2    $04, $A7, $02, $80
	smpsVcDecayLevel    $00, $0A, $00, $08
	smpsVcReleaseRate   $06, $07, $08, $00
	smpsVcTotalLevel    $A2, $A4, $0C, $A6

;	Voice $27
;	$9D
;	$04, $80, $08, $9D, 	$04, $80, $08, $A4, 	$0C, $A6, $06, $A7
;	$80, $A7, $80, $A6, 	$0C, $A4, $06, $A2, 	$0C, $A2, $04, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $03
	smpsVcUnusedBits    $02, $01, $00, $01, $00
	smpsVcDetune        $09, $00, $08, $00
	smpsVcCoarseFreq    $0D, $08, $00, $04
	smpsVcRateScale     $02, $00, $02, $00
	smpsVcAttackRate    $24, $08, $00, $04
	smpsVcAmpMod        $01, $00, $01, $00
	smpsVcDecayRate1    $07, $06, $06, $0C
	smpsVcDecayRate2    $A6, $80, $A7, $80
	smpsVcDecayLevel    $0A, $00, $0A, $00
	smpsVcReleaseRate   $02, $06, $04, $0C
	smpsVcTotalLevel    $80, $04, $A2, $0C

;	Voice $28
;	$08
;	$A2, $04, $80, $08, 	$A2, $04, $80, $08, 	$A2, $04, $80, $08
;	$A2, $04, $80, $08, 	$A2, $04, $80, $08, 	$A2, $04, $80, $08
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00, $00, $00, $00, $01
	smpsVcDetune        $00, $08, $00, $0A
	smpsVcCoarseFreq    $08, $00, $04, $02
	smpsVcRateScale     $00, $02, $00, $02
	smpsVcAttackRate    $08, $00, $04, $22
	smpsVcAmpMod        $00, $01, $00, $01
	smpsVcDecayRate1    $08, $00, $04, $02
	smpsVcDecayRate2    $08, $80, $04, $A2
	smpsVcDecayLevel    $00, $08, $00, $0A
	smpsVcReleaseRate   $08, $00, $04, $02
	smpsVcTotalLevel    $08, $80, $04, $A2

;	Voice $29
;	$A2
;	$04, $80, $08, $A2, 	$04, $80, $08, $A2, 	$04, $80, $08, $A2
;	$04, $80, $08, $A2, 	$04, $80, $08, $A2, 	$04, $80, $08, $A4
	smpsVcAlgorithm     $02
	smpsVcFeedback      $04
	smpsVcUnusedBits    $02, $01, $00, $00, $00
	smpsVcDetune        $0A, $00, $08, $00
	smpsVcCoarseFreq    $02, $08, $00, $04
	smpsVcRateScale     $02, $00, $02, $00
	smpsVcAttackRate    $22, $08, $00, $04
	smpsVcAmpMod        $01, $00, $01, $00
	smpsVcDecayRate1    $02, $08, $00, $04
	smpsVcDecayRate2    $A2, $08, $80, $04
	smpsVcDecayLevel    $0A, $00, $08, $00
	smpsVcReleaseRate   $02, $08, $00, $04
	smpsVcTotalLevel    $A4, $08, $80, $04

;	Voice $2A
;	$04
;	$80, $08, $A2, $04, 	$80, $08, $9F, $04, 	$80, $08, $A1, $04
;	$80, $08, $A1, $04, 	$80, $08, $A1, $04, 	$80, $08, $A1, $04
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00, $00, $01, $00, $00
	smpsVcDetune        $00, $0A, $00, $08
	smpsVcCoarseFreq    $04, $02, $08, $00
	smpsVcRateScale     $00, $02, $00, $02
	smpsVcAttackRate    $04, $1F, $08, $00
	smpsVcAmpMod        $00, $01, $00, $01
	smpsVcDecayRate1    $04, $01, $08, $00
	smpsVcDecayRate2    $04, $A1, $08, $80
	smpsVcDecayLevel    $00, $0A, $00, $08
	smpsVcReleaseRate   $04, $01, $08, $00
	smpsVcTotalLevel    $04, $A1, $08, $80

;	Voice $2B
;	$80
;	$08, $A1, $04, $80, 	$08, $9D, $04, $80, 	$08, $A1, $04, $80
;	$08, $A4, $04, $80, 	$08, $A6, $04, $80, 	$08, $A1, $04, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $02, $00, $00, $01, $00
	smpsVcDetune        $08, $00, $0A, $00
	smpsVcCoarseFreq    $00, $04, $01, $08
	smpsVcRateScale     $02, $00, $02, $00
	smpsVcAttackRate    $00, $04, $1D, $08
	smpsVcAmpMod        $01, $00, $01, $00
	smpsVcDecayRate1    $00, $04, $01, $08
	smpsVcDecayRate2    $80, $04, $A4, $08
	smpsVcDecayLevel    $08, $00, $0A, $00
	smpsVcReleaseRate   $00, $04, $06, $08
	smpsVcTotalLevel    $80, $04, $A1, $08

;	Voice $2C
;	$08
;	$A6, $04, $80, $08, 	$A8, $04, $80, $08, 	$A4, $04, $80, $08
;	$A8, $04, $80, $08, 	$AB, $04, $80, $08, 	$A8, $0C, $A2, $04
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00, $00, $00, $00, $01
	smpsVcDetune        $00, $08, $00, $0A
	smpsVcCoarseFreq    $08, $00, $04, $06
	smpsVcRateScale     $00, $02, $00, $02
	smpsVcAttackRate    $08, $00, $04, $28
	smpsVcAmpMod        $00, $01, $00, $01
	smpsVcDecayRate1    $08, $00, $04, $04
	smpsVcDecayRate2    $08, $80, $04, $A8
	smpsVcDecayLevel    $00, $08, $00, $0A
	smpsVcReleaseRate   $08, $00, $04, $0B
	smpsVcTotalLevel    $04, $A2, $0C, $A8

;	Voice $2D
;	$80
;	$08, $A2, $04, $80, 	$08, $A2, $04, $80, 	$08, $A2, $04, $80
;	$08, $A2, $04, $80, 	$08, $9F, $04, $80, 	$08, $A2, $04, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $02, $00, $00, $01, $00
	smpsVcDetune        $08, $00, $0A, $00
	smpsVcCoarseFreq    $00, $04, $02, $08
	smpsVcRateScale     $02, $00, $02, $00
	smpsVcAttackRate    $00, $04, $22, $08
	smpsVcAmpMod        $01, $00, $01, $00
	smpsVcDecayRate1    $00, $04, $02, $08
	smpsVcDecayRate2    $80, $04, $A2, $08
	smpsVcDecayLevel    $08, $00, $09, $00
	smpsVcReleaseRate   $00, $04, $0F, $08
	smpsVcTotalLevel    $80, $04, $A2, $08

