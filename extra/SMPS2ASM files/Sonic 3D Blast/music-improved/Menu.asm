Snd_Menu_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_Menu_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $30

	smpsHeaderDAC       Snd_Menu_DAC
	smpsHeaderFM        Snd_Menu_FM1,	$0C, $10
	smpsHeaderFM        Snd_Menu_FM2,	$00, $17
	smpsHeaderFM        Snd_Menu_FM3,	$18, $20
	smpsHeaderFM        Snd_Menu_FM4,	$00, $09
	smpsHeaderFM        Snd_Menu_FM5,	$0C, $20
	smpsHeaderPSG       Snd_Menu_PSG1,	$F4, $08, $00, sTone_06
	smpsHeaderPSG       Snd_Menu_PSG2,	$00, $08, $00, sTone_04
	smpsHeaderPSG       Snd_Menu_PSG3,	$23, $02, $00, sTone_03

; FM1 Data
Snd_Menu_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	smpsModSet          $07, $01, $03, $05

Snd_Menu_Jump03:
	smpsCall            Snd_Menu_Call05
	dc.b	nG2, $06, nD2, nB1, nA1, nRst, nB1, nA1, nAb1, nG1, nG1, nRst
	dc.b	nG1, nA1, $0C, nB1
	smpsCall            Snd_Menu_Call05
	dc.b	nAb2, $12, $06, nEb2, $12, nAb2, $06, nRst, nAb2, nEb2, $0C, nAb2
	dc.b	nBb2
	smpsJump            Snd_Menu_Jump03

Snd_Menu_Call05:
	dc.b	nC2, $12, $06, nG1, $12, nC2, $06, nRst, nC2, nRst, nC2, nG1
	dc.b	$0C, nC2, nF2, $12, $06, nC2, $12, nF2, $06, nRst, nF2, nRst
	dc.b	nC2, nF2, $0C, nE2, nD2, $12, $06, nA1, $12, nD2, $06, nRst
	dc.b	nD2, nRst, nD2, nA1, $0C, nD2, nG2, $12, $06, nD2, $12, nG2
	dc.b	$06, nRst, nG2, nRst, nD2, nG2, $0C, nF2, nE2, $12, $06, nB1
	dc.b	$12, nE2, $06, nRst, nE2, nRst, nE2, nB1, $0C, nE2, nA2, $12
	dc.b	$06, nE2, $12, nA2, $06, nRst, nA2, nRst, nE2, nA2, $0C, nG2
	dc.b	nF2, $12, $06, nC2, $12, nF2, $06, nRst, nF2, nRst, nF2, nC2
	dc.b	$0C, nF2
	smpsReturn

; FM2 Data
Snd_Menu_FM2:
	smpsSetvoice        $01
	smpsPan             panLeft, $00
	smpsModSet          $07, $01, $03, $05

Snd_Menu_Jump01:
	smpsCall            Snd_Menu_Call04
	dc.b	nA3, $18, $06, nB3, nC4, nF4, nRst, nF4, nE4, $0C, nF4, nFs4
	dc.b	nG4, $06, nG4, nG4, nG4, nRst, nG4, nG4, nG4, nG4, nRst, $2A
	smpsCall            Snd_Menu_Call04
	dc.b	nA3, $18, $06, nB3, nC4, nF4, nRst, nF4, nE4, $0C, nF4, $06
	dc.b	nE4, nD4, nC4, nAb3, $18, $06, nBb3, nC4, nF4, nRst, nF4, nE4
	dc.b	$0C, nF4, $06, nE4, nD4, nC4
	smpsJump            Snd_Menu_Jump01

Snd_Menu_Call04:
	dc.b	nG3, $18, nE3, $0C, nF3, $06, nG3, nRst, nE4, nRst, nD4, nC4
	dc.b	$0C, nG3, nB3, $18, nA3, $0C, nAb3, $06
	smpsModSet          $0C, $01, $09, $07
	dc.b	nA3, $36
	smpsModSet          $07, $01, $03, $05
	dc.b	nA3, $18, nFs3, $0C, nG3, $06, nA3, nRst, nFs4, nRst, nE4, nD4
	dc.b	$0C, nA3, nC4, $18, nB3, $0C, nBb3, $06
	smpsModSet          $0C, $01, $09, $07
	dc.b	nB3, $36
	smpsModSet          $07, $01, $03, $05
	dc.b	nB3, $18, nAb3, $0C, nA3, $06, nB3, nRst, nF4, nRst, nE4, nD4
	dc.b	$0C, nB3, nD4, $18, nC4, $0C, nB3, $06
	smpsModSet          $0C, $01, $09, $07
	dc.b	nC4, $36
	smpsModSet          $07, $01, $03, $05
	smpsReturn

; FM3 Data
Snd_Menu_FM3:
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	smpsModSet          $07, $01, $03, $05

Snd_Menu_Jump02:
	smpsCall            Snd_Menu_Call03
	dc.b	nF3, $18, $06, nG3, nA3, nC4, nRst, nC4, nB3, $0C, nC4, nCs4
	dc.b	nD4, $06, nD4, nB3, nA3, nRst, nB3, nA3, nAb3, nG3, nRst, $2A
	smpsCall            Snd_Menu_Call03
	dc.b	nF3, $18, $06, nG3, nA3, nC4, nRst, nC4, nC4, $0C, $06, nC4
	dc.b	nA3, nA3, nF3, $18, $06, nG3, nAb3, nAb3, nRst, nAb3, nAb3, $0C
	dc.b	nC4, $06, nC4, nAb3, nAb3
	smpsJump            Snd_Menu_Jump02

Snd_Menu_Call03:
	dc.b	nE3, $18, nC3, $0C, nD3, $06, nE3, nRst, nC4, $06, nRst, nB3
	dc.b	nG3, $0C, nE3, nG3, $18, nF3, $0C, nE3, $06
	smpsModSet          $0C, $01, $09, $07
	dc.b	nF3, $36
	smpsModSet          $07, $01, $03, $05
	dc.b	nFs3, $18, nD3, $0C, nE3, $06, nFs3, nRst, nD4, $06, nRst, nC4
	dc.b	nA3, $0C, nFs3, nA3, $18, nG3, $0C, nFs3, $06
	smpsModSet          $0C, $01, $09, $07
	dc.b	nG3, $36
	smpsModSet          $07, $01, $03, $05
	dc.b	nAb3, $18, nE3, $0C, nFs3, $06, nAb3, nRst, nD4, $06, nRst, nC4
	dc.b	nB3, $0C, nAb3, nB3, $18, nA3, $0C, nAb3, $06
	smpsModSet          $0C, $01, $09, $07
	dc.b	nA3, $36
	smpsModSet          $07, $01, $03, $05
	smpsReturn

; FM4 Data
Snd_Menu_FM4:
	smpsSetvoice        $02
	smpsPan             panRight, $00
	smpsAlterNote       $FE
	dc.b	nRst, $02
	smpsModSet          $07, $01, $03, $05
	smpsJump            Snd_Menu_Jump01

; FM5 Data
Snd_Menu_FM5:
	smpsSetvoice        $04
	smpsModSet          $02, $01, $03, $05
	smpsNoteFill        $06

Snd_Menu_Jump00:
	smpsCall            Snd_Menu_Call02
	smpsPan             panLeft, $00
	dc.b	nG4, nF4, nE4
	smpsPan             panCenter, $00
	dc.b	nD4, nC4, nB3
	smpsPan             panRight, $00
	dc.b	nA3, nAb3, nG3
	smpsPan             panCenter, $00
	dc.b	nA3, nB3, nC4
	smpsPan             panLeft, $00
	dc.b	nD4, nE4
	smpsPan             panRight, $00
	dc.b	nF4, nG4
	smpsCall            Snd_Menu_Call02
	smpsPan             panRight, $00
	dc.b	nAb4, nFs4, nF4
	smpsPan             panCenter, $00
	dc.b	nEb4, nCs4, nC4
	smpsPan             panRight, $00
	dc.b	nBb3, nA3, nAb3
	smpsPan             panCenter, $00
	dc.b	nBb3, nC4, nCs4
	smpsPan             panRight, $00
	dc.b	nEb4, nF4
	smpsPan             panLeft, $00
	dc.b	nFs4, nAb4
	smpsJump            Snd_Menu_Jump00

Snd_Menu_Call02:
	dc.b	nRst, $06
	smpsPan             panLeft, $00
	dc.b	nG3, nE3, nE4
	smpsPan             panRight, $00
	dc.b	nC4, nG3, nG4
	smpsPan             panCenter, $00
	dc.b	nE4, nC4, nC5
	smpsPan             panRight, $00
	dc.b	nG4, nE4, nE4
	smpsPan             panLeft, $00
	dc.b	nD4, nC4, nB3, nRst
	smpsPan             panRight, $00
	dc.b	nA3, nF3, nF4
	smpsPan             panLeft, $00
	dc.b	nC4, nA3, nA4
	smpsPan             panCenter, $00
	dc.b	nF4, nC4, nC5
	smpsPan             panLeft, $00
	dc.b	nA4, nF4, nF4
	smpsPan             panRight, $00
	dc.b	nE4, nD4, nC4, nRst
	smpsPan             panLeft, $00
	dc.b	nA3, nFs3, nFs4
	smpsPan             panRight, $00
	dc.b	nD4, nA3, nA4
	smpsPan             panCenter, $00
	dc.b	nFs4, nD4, nD5
	smpsPan             panRight, $00
	dc.b	nA4, nFs4, nFs4
	smpsPan             panLeft, $00
	dc.b	nE4, nD4, nC4, nRst
	smpsPan             panRight, $00
	dc.b	nB3, nG3, nG4
	smpsPan             panLeft, $00
	dc.b	nD4, nB3, nB4
	smpsPan             panCenter, $00
	dc.b	nG4, nD4, nD5
	smpsPan             panLeft, $00
	dc.b	nB4, nG4, nG4
	smpsPan             panRight, $00
	dc.b	nF4, nE4, nD4, nRst
	smpsPan             panLeft, $00
	dc.b	nAb3, nE3, nE4
	smpsPan             panRight, $00
	dc.b	nB3, nAb3, nAb4
	smpsPan             panCenter, $00
	dc.b	nE4, nB3, nB4
	smpsPan             panRight, $00
	dc.b	nAb4, nE4, nE4
	smpsPan             panLeft, $00
	dc.b	nD4, nC4, nB3, nRst
	smpsPan             panRight, $00
	dc.b	nA3, nE3, nE4
	smpsPan             panLeft, $00
	dc.b	nC4, nA3, nA4
	smpsPan             panCenter, $00
	dc.b	nE4, nC4, nC5
	smpsPan             panLeft, $00
	dc.b	nA4, nE4, nE5
	smpsPan             panRight, $00
	dc.b	nC5, nA4, nE4, nRst
	smpsPan             panLeft, $00
	dc.b	nA3, nF3, nF4
	smpsPan             panRight, $00
	dc.b	nC4, nA3, nA4
	smpsPan             panCenter, $00
	dc.b	nF4, nC4, nC5
	smpsPan             panRight, $00
	dc.b	nA4, nF4, nF4
	smpsPan             panLeft, $00
	dc.b	nE4, nF4, nFs4
	smpsReturn

; PSG1 Data
Snd_Menu_PSG1:
	smpsPSGvoice        sTone_11
	smpsModSet          $03, $01, $01, $03
	dc.b	nRst, $06

Snd_Menu_Jump05:
	smpsCall            Snd_Menu_Call08
	dc.b	nA3, $18, $06, nB3, nC4, nF4, nRst, nF4, nE4, $0C, nF4, nFs4
	dc.b	nG4, $06, nG4, nG4, nG4, nRst, nG4, nG4, nG4, nG4, nRst, $2A
	smpsCall            Snd_Menu_Call08
	dc.b	nA3, $18, $06, nB3, nC4, nF4, nRst, nF4, nE4, $0C, nF4, $06
	dc.b	nE4, nD4, nC4, nAb3, $18, $06, nBb3, nC4, nF4, nRst, nF4, nE4
	dc.b	$0C, nF4, $06, nE4, nD4, nC4
	smpsJump            Snd_Menu_Jump05

Snd_Menu_Call08:
	dc.b	nG3, $18, nE3, $0C, nF3, $06, nG3, nRst, nE4, nRst, nD4, nC4
	dc.b	$0C, nG3, nB3, $18, nA3, $0C, nAb3, $06
	smpsModSet          $05, $01, $01, $05
	dc.b	nA3, $36
	smpsModSet          $03, $01, $01, $03
	dc.b	nA3, $18, nFs3, $0C, nG3, $06, nA3, nRst, nFs4, nRst, nE4, nD4
	dc.b	$0C, nA3, nC4, $18, nB3, $0C, nBb3, $06
	smpsModSet          $05, $01, $01, $05
	dc.b	nB3, $36
	smpsModSet          $03, $01, $01, $03
	dc.b	nB3, $18, nAb3, $0C, nA3, $06, nB3, nRst, nF4, nRst, nE4, nD4
	dc.b	$0C, nB3, nD4, $18, nC4, $0C, nB3, $06
	smpsModSet          $05, $01, $01, $05
	dc.b	nC4, $36
	smpsModSet          $03, $01, $01, $03
	smpsReturn

; PSG2 Data
Snd_Menu_PSG2:
	smpsPSGvoice        sTone_11
	smpsModSet          $04, $01, $01, $04
	smpsNoteFill        $05
	dc.b	nRst, $06

Snd_Menu_Jump04:
	smpsCall            Snd_Menu_Call07
	dc.b	nG4, nF4, nE4, nD4, nC4, nB3, nA3, nAb3, nG3, nA3, nB3, nC4
	dc.b	nD4, nE4, nF4, nG4
	smpsCall            Snd_Menu_Call07
	dc.b	nAb4, nFs4, nF4, nEb4, nCs4, nC4, nBb3, nA3, nAb3, nBb3, nC4, nCs4
	dc.b	nEb4, nF4, nFs4, nAb4
	smpsJump            Snd_Menu_Jump04

Snd_Menu_Call07:
	dc.b	nRst, $06, nG3, nE3, nE4, nC4, nG3, nG4, nE4, nC4, nC5, nG4
	dc.b	nE4, nE4, nD4, nC4, nB3, nRst, nA3, nF3, nF4, nC4, nA3, nA4
	dc.b	nF4, nC4, nC5, nA4, nF4, nF4, nE4, nD4, nC4, nRst, nA3, nFs3
	dc.b	nFs4, nD4, nA3, nA4, nFs4, nD4, nD5, nA4, nFs4, nFs4, nE4, nD4
	dc.b	nC4, nRst, nB3, nG3, nG4, nD4, nB3, nB4, nG4, nD4, nD5, nB4
	dc.b	nG4, nG4, nF4, nE4, nD4, nRst, nAb3, nE3, nE4, nB3, nAb3, nAb4
	dc.b	nE4, nB3, nB4, nAb4, nE4, nE4, nD4, nC4, nB3, nRst, nA3, nE3
	dc.b	nE4, nC4, nA3, nA4, nE4, nC4, nC5, nA4, nE4, nE5, nC5, nA4
	dc.b	nE4, nRst, nA3, nF3, nF4, nC4, nA3, nA4, nF4, nC4, nC5, nA4
	dc.b	nF4, nF4, nE4, nF4, nFs4
	smpsReturn

; PSG3 Data
Snd_Menu_PSG3:
	smpsPSGform         $E7

Snd_Menu_Loop00:
	smpsCall            Snd_Menu_Call06
	smpsLoop            $00, $07, Snd_Menu_Loop00
	smpsPSGvoice        sTone_0F
	dc.b	$06, $06
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$0C
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$04, $04, $04, $06
	smpsPSGvoice        sTone_12
	dc.b	$06
	smpsPSGvoice        sTone_0F
	dc.b	$0C, $06
	smpsPSGvoice        sTone_12
	dc.b	$06

Snd_Menu_Loop01:
	smpsCall            Snd_Menu_Call06
	smpsLoop            $00, $08, Snd_Menu_Loop01
	smpsJump            Snd_Menu_Loop00

Snd_Menu_Call06:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $0C
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$06
	smpsPSGvoice        sTone_12
	dc.b	$0C, $12
	smpsPSGvoice        sTone_0F
	dc.b	$0C
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsReturn

; DAC Data
Snd_Menu_DAC:
	smpsCall            Snd_Menu_Call00
	smpsLoop            $00, $07, Snd_Menu_DAC
	smpsCall            Snd_Menu_Call01
	smpsJump            Snd_Menu_DAC

Snd_Menu_Call00:
	dc.b	dKickS3, $12, $06, dSnareS3, dSnareS3, $0C, dKickS3, dKickS3, dKickS3, $06, $0C, dSnareS3
	smpsReturn

Snd_Menu_Call01:
	dc.b	dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3, nRst, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dHighTom, $0C
	dc.b	$06, dMidTomS3, $0C, dLowTomS3
	smpsReturn

Snd_Menu_Voices:
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
	smpsVcTotalLevel    $00, $07, $00, $1A

;	Voice $01
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
	smpsVcTotalLevel    $00, $00, $00, $1B

;	Voice $02
;	$3E
;	$77, $71, $32, $31, 	$1F, $1F, $1F, $1F, 	$0D, $06, $00, $00
;	$08, $06, $00, $00, 	$15, $0A, $0A, $0A, 	$1B, $8F, $8F, $8F
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
	smpsVcTotalLevel    $0F, $0F, $0F, $1B

;	Voice $03
;	$34
;	$70, $72, $31, $31, 	$1F, $1F, $1F, $1F, 	$10, $06, $06, $06
;	$01, $06, $06, $06, 	$35, $1A, $15, $1A, 	$10, $83, $18, $83
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
	smpsVcTotalLevel    $03, $18, $03, $10

;	Voice $04
;	$2E
;	$75, $32, $73, $31, 	$1F, $14, $14, $1F, 	$0A, $0A, $0A, $00
;	$00, $05, $02, $00, 	$AF, $AF, $1F, $0F, 	$19, $85, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $03, $07
	smpsVcCoarseFreq    $01, $03, $02, $05
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $14, $14, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0A, $0A, $0A
	smpsVcDecayRate2    $00, $02, $05, $00
	smpsVcDecayLevel    $00, $01, $0A, $0A
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $05, $19

