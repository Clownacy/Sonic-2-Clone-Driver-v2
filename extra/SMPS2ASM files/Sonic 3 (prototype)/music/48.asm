s3p48_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     s3p48_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $57

	smpsHeaderDAC       s3p48_DAC
	smpsHeaderFM        s3p48_FM1,	$00, $10
	smpsHeaderFM        s3p48_FM2,	$00, $0E
	smpsHeaderFM        s3p48_FM3,	$00, $10
	smpsHeaderFM        s3p48_FM4,	$00, $10
	smpsHeaderFM        s3p48_FM5,	$00, $14
	smpsHeaderPSG       s3p48_PSG1,	$E8, $02, $00, $00
	smpsHeaderPSG       s3p48_PSG2,	$E8, $03, $00, $00
	smpsHeaderPSG       s3p48_PSG3,	$E8, $02, $00, $00

; FM1 Data
s3p48_FM1:
	smpsModSet          $0D, $01, $02, $06
	dc.b	nRst, $30, nRst, $18, nRst, $30, nRst, $18, nRst, $30, nRst, $18
	smpsSetvoice        $00
	dc.b	nE4, $03, nF4, nG4, nA4, nF4, nG4, nA4, nB4, nG4, nA4, nB4
	dc.b	nC5, nA4, nB4, nC5, nD5, nB4, nC5, nD5, nE5, nC5, nD5, nE5
	dc.b	nF5, nG5, $48, nRst, $30, nRst, $18, nRst, $30, nRst, $18, nE4
	dc.b	$03, nF4, nG4, nA4, nF4, nG4, nA4, nB4, nG4, nA4, nB4, nC5
	dc.b	nA4, nB4, nC5, nD5, nB4, nC5, nD5, nE5, nC5, nD5, nE5, nF5
	dc.b	nG5, $3C

s3p48_Loop0F:
	smpsSetvoice        $00
	dc.b	nE5, $0C, nB4, nG5, nD5, nFs5, nCs5, nF4, nF5
	smpsLoop            $00, $08, s3p48_Loop0F
	dc.b	nRst, $30, nRst

s3p48_Loop10:
	dc.b	nE3, $02, nF3, nG3, nA3, nB3, nC4, nE4, $0C, nE3, $02, nF3
	dc.b	nG3, nA3, nB3, nC4, nE4, $0C, nRst, nD5, $03, nRst, nD5, nRst
	smpsLoop            $00, $03, s3p48_Loop10
	dc.b	nE3, $02, nF3, nG3, nA3, nB3, nC4, nE4, $0C, nE3, $02, nF3
	dc.b	nG3, nA3, nB3, nC4, nE4, $0C, nRst, nRst, nRst, $24
	smpsSetvoice        $03
	dc.b	nE4, $12, nB4, nA4, $0C, nD5, $12, nC5, nB4, $0C, nC5, $12
	dc.b	nD5, nE5, $0C, nD5, $12, nA4, $1E, nE4, $12, nB4, nA4, $0C
	dc.b	nD5, $12, nE5, nFs5, $0C, nG5, $12, nA5, nB5, $0C, nD6, $12
	dc.b	nA5, $1E, nRst, $30, nRst
	smpsJump            s3p48_Loop0F

; FM2 Data
s3p48_FM2:
	smpsSetvoice        $01
	smpsModSet          $0D, $01, $02, $06

s3p48_Loop0C:
	smpsPan             panCenter, $00
	dc.b	nE2, $63, nE2, $2D
	smpsLoop            $00, $04, s3p48_Loop0C
	dc.b	nE2, $3C

s3p48_Loop0D:
	dc.b	nE2, $06, nE2, nB2, nE2, nE2, nD3, nE2, nE2, nCs3, nE2, nB2
	dc.b	nE2, nA2, nE2, nE2, nA2, nE2, nE2, nA2, nE2, nE2, nB2, nE2
	dc.b	nE2, nD3, nE2, nE3, nE2, nD3, nE2, nCs3, nE2, nE2, nE2, $03
	dc.b	nE2, nA2, $06, nE2, nE2, nB2, nE2, nE2, nD3, nE2, nCs3, nE2
	dc.b	nB2, nE2, nA2, nE2, nE2, nE2, nA2, nE2, nE2, nB2, nE2, nE2
	dc.b	nD3, nE2, nE2, nCs3, nE2, nE2, nB2, nD3
	smpsLoop            $00, $02, s3p48_Loop0D
	dc.b	nE2, $06, nA2, nB2, nE2, nE3, nA2, nB2, nE3, nD2, nG2, nA2
	dc.b	nD2, nD3, nG2, nA2, nD3

s3p48_Loop0E:
	dc.b	nC2, $06, nC3, nRst, $0C
	smpsLoop            $00, $0A, s3p48_Loop0E
	dc.b	nC2, $06, nC3, nRst, nD3, $42, nE2, $06, nE2, nB2, nE2, nD3
	dc.b	nE2, nB2, nD3, nD2, nD2, nA2, nD2, nD3, nC3, nB2, nA2, nC3
	dc.b	nC3, nG2, nC3, nE3, nG2, nC3, nD3, nD2, nD2, nA2, nD2, nD3
	dc.b	nA2, nG2, nD2, nE2, nE2, nB2, nE2, nE3, nE2, nB2, nE2, nFs2
	dc.b	nFs2, nFs3, nFs2, nCs3, nFs2, nFs3, nFs2, nG2, nG2, nG3, nG2, nD3
	dc.b	nG2, nG3, nG2, nA2, nA2, nE3, nA2, nA3, nE3, nA2, nA3, nRst
	dc.b	$0C, nBb2, $48, nRst, $0C
	smpsJump            s3p48_Loop0D

; FM3 Data
s3p48_FM3:
	smpsSetvoice        $02
	smpsModSet          $0D, $01, $02, $06
	smpsPan             panRight, $00

s3p48_Loop09:
	dc.b	nG4, $48, nBb4, $1B, nA4, $2D
	smpsLoop            $00, $04, s3p48_Loop09
	dc.b	nG4, $3C

s3p48_Loop0A:
	smpsSetvoice        $02
	dc.b	nG4, $30, nBb4, $12, nA4, nA4, $0C
	smpsLoop            $00, $08, s3p48_Loop0A
	dc.b	nG4, $30, nFs4, $12, nD4, nFs4, $0C

s3p48_Loop0B:
	dc.b	nRst, $0C, nE4, nRst, nE4, nRst, nFs4, $03, nRst, nFs4, nRst
	smpsLoop            $00, $03, s3p48_Loop0B
	dc.b	nRst, $0C, nE4, nRst, nE4, $06, nFs4, $2A, nRst, $18
	smpsSetvoice        $04
	dc.b	nG4, $30, nFs4, nE4, nFs4, nB4, nD5, nD5, nFs5, nRst, $0C, nD5
	dc.b	$48, nRst, $0C
	smpsJump            s3p48_Loop0A

; FM4 Data
s3p48_FM4:
	smpsSetvoice        $02
	smpsModSet          $0D, $01, $02, $06
	smpsPan             panLeft, $00

s3p48_Loop06:
	dc.b	nD4, $48, nFs4, $1B, nF4, $2D
	smpsLoop            $00, $04, s3p48_Loop06
	dc.b	nD4, $3C

s3p48_Loop07:
	smpsSetvoice        $02
	dc.b	nD4, $30, nFs4, $12, nF4, nF4, $0C
	smpsLoop            $00, $08, s3p48_Loop07
	dc.b	nE4, $30, nD4, $12, nA3, nD4, $0C

s3p48_Loop08:
	dc.b	nRst, $0C, nC4, nRst, nC4, nRst, nD4, $03, nRst, nD4, nRst
	smpsLoop            $00, $03, s3p48_Loop08
	dc.b	nRst, $0C, nC4, nRst, nC4, $03, nRst, nD4, $2A, nRst, $18
	smpsSetvoice        $04
	dc.b	nB4, $30, nA4, nG4, nA4, nE5, nFs5, nG5, nA5, nRst, $0C, nE5
	dc.b	$48, nRst, $0C
	smpsJump            s3p48_Loop07

; FM5 Data
s3p48_FM5:
	dc.b	nRst, $09
	smpsModSet          $0D, $01, $02, $06
	dc.b	nRst, $30, nRst, $18, nRst, $30, nRst, $18, nRst, $30, nRst, $18
	smpsSetvoice        $00
	dc.b	nE4, $03, nF4, nG4, nA4, nF4, nG4, nA4, nB4, nG4, nA4, nB4
	dc.b	nC5, nA4, nB4, nC5, nD5, nB4, nC5, nD5, nE5, nC5, nD5, nE5
	dc.b	nF5, nG5, $48, nRst, $30, nRst, $18, nRst, $30, nRst, $18, nE4
	dc.b	$03, nF4, nG4, nA4, nF4, nG4, nA4, nB4, nG4, nA4, nB4, nC5
	dc.b	nA4, nB4, nC5, nD5, nB4, nC5, nD5, nE5, nC5, nD5, nE5, nF5
	dc.b	nG5, $3C

s3p48_Loop04:
	smpsSetvoice        $00
	dc.b	nE5, $0C, nB4, nG5, nD5, nFs5, nCs5, nF4, nF5
	smpsLoop            $00, $08, s3p48_Loop04
	dc.b	nRst, $30, nRst

s3p48_Loop05:
	dc.b	nE3, $02, nF3, nG3, nA3, nB3, nC4, nE4, $0C, nE3, $02, nF3
	dc.b	nG3, nA3, nB3, nC4, nE4, $0C, nRst, nD5, $03, nRst, nD5, nRst
	smpsLoop            $00, $03, s3p48_Loop05
	dc.b	nE3, $02, nF3, nG3, nA3, nB3, nC4, nE4, $0C, nE3, $02, nF3
	dc.b	nG3, nA3, nB3, nC4, nE4, $0C, nRst, $0D, nRst, $0C, nRst, $24
	smpsSetvoice        $03
	dc.b	nE4, $12, nB4, nA4, $0C, nD5, $12, nC5, nB4, $0C, nC5, $12
	dc.b	nD5, nE5, $0C, nD5, $12, nA4, $1E, nE4, $12, nB4, nA4, $0C
	dc.b	nD5, $12, nE5, nFs5, $0C, nG5, $12, nA5, nB5, $0C, nD6, $12
	dc.b	nA5, $1E, nRst, $30, nRst
	smpsJump            s3p48_Loop04

; DAC Data
s3p48_DAC:
	dc.b	nRst, $30, nRst, $18
	smpsLoop            $00, $04, s3p48_DAC

s3p48_Loop00:
	dc.b	dKickS3, $24, dSnareS3, $1B, dKickS3, $09
	smpsLoop            $00, $03, s3p48_Loop00
	dc.b	dKickS3, $1B, dKickS3, $09, dSnareS3, dKickS3, dSnareS3, dSnareS3, nRst, $24, dSnareS3, $03
	dc.b	dSnareS3, dSnareS3, dSnareS3, dKickS3, $06, dSnareS3

s3p48_Loop01:
	dc.b	dKickS3, $0C, dSnareS3, dKickS3, $06, dKickS3, dSnareS3, $0C, dKickS3, dSnareS3, $06, dKickS3
	dc.b	$0C, dKickS3, $06, dSnareS3, $0C
	smpsLoop            $00, $08, s3p48_Loop01
	dc.b	dKickS3, $0C, dSnareS3, $06, dKickS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dKickS3, dSnareS3
	dc.b	dKickS3, dKickS3, dSnareS3, dSnareS3, dSnareS3, $03, dSnareS3

s3p48_Loop02:
	dc.b	dKickS3, $06, dKickS3, dSnareS3, $0C, dKickS3, $06, dKickS3, dSnareS3, $0C, dKickS3, $06
	dc.b	dKickS3, dSnareS3, dSnareS3
	smpsLoop            $00, $03, s3p48_Loop02
	dc.b	dKickS3, $06, dKickS3, dSnareS3, $0C, dKickS3, $06, dKickS3, dSnareS3, $0C, dKickS3, $06
	dc.b	dKickS3, dKickS3, dSnareS3, nRst, $0C, nRst, $06, dKickS3, dSnareS3, $0C

s3p48_Loop03:
	dc.b	dKickS3, $0C, dSnareS3, dKickS3, $06, dKickS3, dSnareS3, $0C, dKickS3, dSnareS3, $06, dKickS3
	dc.b	$0C, dKickS3, $06, dSnareS3, $0C
	smpsLoop            $00, $04, s3p48_Loop03
	dc.b	dKickS3, $06, dKickS3, dSnareS3, $24, nRst, dSnareS3, $0C
	smpsJump            s3p48_Loop01

; PSG1 Data
s3p48_PSG1:
	smpsModSet          $0D, $01, $02, $06

s3p48_Loop16:
	dc.b	nB3, $48, nCs4, $1B, nC4, $2D
	smpsLoop            $00, $04, s3p48_Loop16
	dc.b	nB3, $3C

s3p48_Loop17:
	dc.b	nB3, $30, nCs4, $12, nC4, nC4, $0C
	smpsLoop            $00, $08, s3p48_Loop17
	dc.b	nC4, $30

s3p48_Loop18:
	dc.b	nRst, $30
	smpsLoop            $00, $07, s3p48_Loop18
	dc.b	nRst, $24, nRst, $0C, nE5, $03, nRst, $09, nD5, $03, nRst, nE5
	dc.b	nRst, $09, nD5, $03, nRst, nRst, $06, nA4, $03, nRst, $27, nRst
	dc.b	$0C, nE5, $03, nRst, $09, nD5, $03, nRst, nE5, nRst, $09, nFs5
	dc.b	$03, nRst, nRst, $06, nA4, $03, nRst, $27

s3p48_Loop19:
	dc.b	nRst, $30
	smpsLoop            $00, $06, s3p48_Loop19
	smpsJump            s3p48_Loop17

; PSG2 Data
s3p48_PSG2:
	smpsModSet          $0D, $01, $02, $06

s3p48_Loop11:
	dc.b	nRst, $30, nRst, $18
	smpsLoop            $00, $08, s3p48_Loop11
	dc.b	nRst, $3C

s3p48_Loop12:
	dc.b	nRst, $30
	smpsLoop            $00, $08, s3p48_Loop12

s3p48_Loop13:
	dc.b	nE4, $06, nB4, nE5, nG4, nG5, nFs5, nD5, nB4, nRst, $30
	smpsLoop            $00, $02, s3p48_Loop13

s3p48_Loop14:
	dc.b	nE4, $06, nB4, nE5, nG4, nG5, nFs5, nD5, nB4, nE4, nCs5, nFs5
	dc.b	nCs5, nE4, nC5, nF5, nC5
	smpsLoop            $00, $02, s3p48_Loop14
	dc.b	nE4, $06, nB4, nE5, nG4, nG5, nFs5, nD5, nB4, nD4, nA4, nD5
	dc.b	nFs4, nFs5, nE5, nD5, nA4

s3p48_Loop15:
	dc.b	nC4, $06, nG4, nE5, nD5, nG5, nFs5, nD5, nG4, nC4, nG4, nE5
	dc.b	nD5
	smpsLoop            $00, $03, s3p48_Loop15
	dc.b	nC4, $06, nG4, nE5, nD5, nG5, nFs5, nD5, nA5, nG5, nFs5, nD5
	dc.b	nA4, nG4, nFs4, nD4, nRst, $12, nRst, $0C, nG5, $06, nRst, nFs5
	dc.b	nG5, nRst, nFs5, nRst, nD5, nRst, nE4, nE5, nD5, nB4, nD5, nRst
	dc.b	$0C, nG5, $06, nRst, nFs5, nG5, nRst, nA5, nRst, nD5, nRst, nE4
	dc.b	nD5, nB4, nA4, nG4, nB4, $03, nRst, nD5, nRst, nG5, nRst, nD5
	dc.b	nRst, $09, nB4, $03, nRst, $09, nD5, $03, nRst, nA4, nRst, nD5
	dc.b	nRst, nFs5, nRst, nD5, nRst, $09, nA4, $03, nRst, $09, nD5, $03
	dc.b	nRst, nG5, nRst, nD5, nRst, nC5, nRst, nG5, nRst, $09, nA5, $03
	dc.b	nRst, $09, nG5, $03, nRst, nA4, nRst, nD5, nRst, nFs5, nRst, nG5
	dc.b	nRst, nFs5, nRst, nE5, nRst, nD5, nRst, nA4, nRst, nRst, $30, nRst
	smpsJump            s3p48_Loop12

; PSG3 Data
s3p48_PSG3:
	smpsStop

s3p48_Voices:
;	Voice $00
;	$2A
;	$44, $42, $74, $41, 	$0F, $14, $53, $14, 	$04, $06, $06, $03
;	$00, $0F, $00, $00, 	$1F, $3F, $5F, $1F, 	$16, $10, $26, $86
	smpsVcAlgorithm     $02
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $07, $04, $04
	smpsVcCoarseFreq    $01, $04, $02, $04
	smpsVcRateScale     $00, $01, $00, $00
	smpsVcAttackRate    $14, $13, $14, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $06, $06, $04
	smpsVcDecayRate2    $00, $00, $0F, $00
	smpsVcDecayLevel    $01, $05, $03, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $86, $26, $10, $16

;	Voice $01
;	$2D
;	$71, $00, $42, $22, 	$18, $1F, $18, $1A, 	$03, $0D, $01, $01
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$10, $84, $87, $87
	smpsVcAlgorithm     $05
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $04, $00, $07
	smpsVcCoarseFreq    $02, $02, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1A, $18, $1F, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $0D, $03
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $87, $87, $84, $10

;	Voice $02
;	$35
;	$71, $24, $10, $71, 	$1E, $1F, $1F, $1F, 	$08, $05, $08, $09
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$10, $8A, $85, $86
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $01, $02, $07
	smpsVcCoarseFreq    $01, $00, $04, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $08, $05, $08
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $86, $85, $8A, $10

;	Voice $03
;	$2C
;	$43, $01, $21, $71, 	$0E, $11, $12, $17, 	$00, $00, $00, $00
;	$08, $00, $09, $00, 	$89, $F8, $F9, $F8, 	$17, $8C, $0C, $87
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $02, $00, $04
	smpsVcCoarseFreq    $01, $01, $01, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $17, $12, $11, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $09, $00, $08
	smpsVcDecayLevel    $0F, $0F, $0F, $08
	smpsVcReleaseRate   $08, $09, $08, $09
	smpsVcTotalLevel    $87, $0C, $8C, $17

;	Voice $04
;	$3D
;	$31, $50, $21, $41, 	$0D, $13, $13, $14, 	$03, $01, $06, $05
;	$05, $01, $05, $01, 	$FF, $FF, $FF, $FF, 	$1D, $87, $85, $84
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $02, $05, $03
	smpsVcCoarseFreq    $01, $01, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $13, $13, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $06, $01, $03
	smpsVcDecayRate2    $01, $05, $01, $05
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $84, $85, $87, $1D

