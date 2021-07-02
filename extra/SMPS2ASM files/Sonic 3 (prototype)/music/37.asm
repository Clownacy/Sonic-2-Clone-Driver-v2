s3p37_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     s3p37_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $02

	smpsHeaderDAC       s3p37_DAC
	smpsHeaderFM        s3p37_FM1,	$18, $10
	smpsHeaderFM        s3p37_FM2,	$18, $1B
	smpsHeaderFM        s3p37_FM3,	$00, $05
	smpsHeaderFM        s3p37_FM4,	$18, $18
	smpsHeaderFM        s3p37_FM5,	$18, $13
	smpsHeaderPSG       s3p37_PSG1,	$00, $01, $00, $00
	smpsHeaderPSG       s3p37_PSG2,	$00, $01, $00, $00
	smpsHeaderPSG       s3p37_PSG3,	$00, $04, $00, $00

; FM1 Data
s3p37_FM1:
	smpsSetvoice        $00
	smpsModSet          $14, $01, $06, $06
	dc.b	nRst, $60, nB3, $06, nRst, nB3, $0C, nC4, $06, nRst, nC4, $0C
	dc.b	nD4, $0C, nRst, nD4, $06, nRst, nBb3, $04, smpsNoAttack, nB3, $0E, nRst
	dc.b	$06, nB3, $0C, nC4, $06, nRst, nD4, $12, nRst, $06, nD4, nRst
	dc.b	nD4, $12, nRst, $06
	smpsFMAlterVol      $01
	dc.b	nC4, $0C, nRst, nC4, nRst, nC4, nB3, nC4, $06, nRst
	smpsFMAlterVol      $01
	dc.b	nAb3, $04, smpsNoAttack, nA3, $5C, nRst, $0C
	smpsFMAlterVol      $FE
	dc.b	nB3, $06, nRst, nB3, $0C, nC4, $06, nRst, nC4, $0C, nD4, $0C
	dc.b	nRst, nD4, $06, nRst, nBb3, $04, smpsNoAttack, nB3, $0E, nRst, $06, nB3
	dc.b	$0C, nC4, $06, nRst, nD4, $12, nRst, $06, nD4, nRst, nD4, $12
	dc.b	nRst, $06
	smpsFMAlterVol      $FE
	dc.b	nF4, $0C, nRst, nF4, nRst, nF4, nE4, nF4, $06, nRst
	smpsFMAlterVol      $FE
	dc.b	nFs4, $04, smpsNoAttack, nG4, $5C, nRst, $0C
	smpsStop

; FM2 Data
s3p37_FM2:
	smpsSetvoice        $00
	smpsModSet          $15, $01, $06, $06
	dc.b	nRst, $60, nRst, $03
	smpsDetune          $03
	dc.b	nG3, $06, nRst, nG3, $0C, nA3, $06, nRst, nA3, $0C, nB3, $0C
	dc.b	nRst, nB3, $06, nRst, nFs3, $04, smpsNoAttack, nG3, $0E, nRst, $06, nG3
	dc.b	$0C, nA3, $06, nRst, nB3, $12, nRst, $06, nB3, nRst, nB3, $12
	dc.b	nRst, $06
	smpsFMAlterVol      $01
	dc.b	nA3, $0C, nRst, nA3, nRst, nA3, nG3, nA3, $06, nRst
	smpsFMAlterVol      $01
	dc.b	nF3, $04, smpsNoAttack, nFs3, $5C, nRst, $0C
	smpsFMAlterVol      $FE
	dc.b	nG3, $06, nRst, nG3, $0C, nA3, $06, nRst, nA3, $0C, nB3, $0C
	dc.b	nRst, nB3, $06, nRst, nFs3, $04, smpsNoAttack, nG3, $0E, nRst, $06, nG3
	dc.b	$0C, nA3, $06, nRst, nB3, $12, nRst, $06, nB3, nRst, nB3, $12
	dc.b	nRst, $06
	smpsFMAlterVol      $FE
	dc.b	nC4, $0C, nRst, nC4, nRst, nC4, nB3, nC4, $06, nRst
	smpsFMAlterVol      $FE
	dc.b	nBb3, $04, smpsNoAttack, nB3, $5C, nRst, $0C
	smpsSetvoice        $03
	smpsFMAlterVol      $03
	dc.b	nRst, $02
	smpsPan             panRight, $00

s3p37_Loop07:
	smpsCall            s3p37_Call03
	smpsLoop            $00, $04, s3p37_Loop07
	smpsStop

; FM3 Data
s3p37_FM3:
	smpsSetvoice        $01
	dc.b	nRst, $06, nD2, $05, nRst, $01, nD2, $05, nRst, $01, nRst, $06
	dc.b	nD2, $05, nRst, $0D, nD2, $05, nRst, $01, nD2, $05, nRst, $07
	dc.b	nD2, $05, nRst, $07, nD2, $05, nRst, $01, nD2, $05, nRst, $01
	dc.b	nD2, $05, nRst, $01, nD2, $05, nRst, $01
	smpsCall            s3p37_Call04
	smpsCall            s3p37_Call05
	dc.b	nE2, $05, nRst, $01, nRst, $06
	smpsCall            s3p37_Call06
	dc.b	nF2, $05, nRst, $01, nRst, $06
	smpsCall            s3p37_Call05
	dc.b	nD2, $05, nRst, $01, nRst, $06
	smpsCall            s3p37_Call04
	smpsCall            s3p37_Call05
	dc.b	nE2, $05, nRst, $01, nRst, $06
	smpsCall            s3p37_Call06
	dc.b	nA2, $05, nRst, $01, nRst, $06, nG2, $05, nRst, $01, nG2, $05
	dc.b	nRst, $01, nG2, $05, nRst, $01, nRst, $06, nG2, $05, nRst, $01
	dc.b	nRst, $06, nG2, $05, nRst, $01, nG2, $05, nRst, $01, nRst, $06
	dc.b	nG2, $05, nRst, $01, nG2, $05, nRst, $01, nRst, $06, nG2, $18
	smpsStop

s3p37_Call04:
	dc.b	nG2, $05, nRst, $01, nG2, $05, nRst, $01, nG2, $05, nRst, $01
	dc.b	nRst, $06, nG2, $05, nRst, $01, nRst, $06, nG2, $05, nRst, $01
	dc.b	nG2, $05, nRst, $01, nRst, $06, nG2, $05, nRst, $01, nG2, $05
	dc.b	nRst, $01, nRst, $06, nG2, $05, nRst, $01, nRst, $06, nG2, $05
	dc.b	nRst, $01, nRst, $06
	smpsReturn

s3p37_Call05:
	dc.b	nD2, $05, nRst, $01, nD2, $05, nRst, $01, nD2, $05, nRst, $01
	dc.b	nRst, $06, nD2, $05, nRst, $01, nRst, $06, nD2, $05, nRst, $01
	dc.b	nD2, $05, nRst, $01, nRst, $06, nD2, $05, nRst, $01, nD2, $05
	dc.b	nRst, $01, nRst, $06, nD2, $05, nRst, $01, nRst, $06
	smpsReturn

s3p37_Call06:
	dc.b	nF2, $05, nRst, $01, nF2, $05, nRst, $01, nF2, $05, nRst, $01
	dc.b	nRst, $06, nF2, $05, nRst, $01, nRst, $06, nF2, $05, nRst, $01
	dc.b	nF2, $05, nRst, $01, nRst, $06, nF2, $05, nRst, $01, nF2, $05
	dc.b	nRst, $01, nRst, $06, nF2, $05, nRst, $01, nRst, $06
	smpsReturn

; FM4 Data
s3p37_FM4:
	smpsSetvoice        $03
	dc.b	nRst, $60

s3p37_Loop00:
	smpsCall            s3p37_Call00
	smpsLoop            $00, $08, s3p37_Loop00

s3p37_Loop01:
	smpsCall            s3p37_Call01
	smpsLoop            $00, $04, s3p37_Loop01

s3p37_Loop02:
	smpsCall            s3p37_Call02
	smpsLoop            $00, $04, s3p37_Loop02

s3p37_Loop03:
	smpsCall            s3p37_Call00
	smpsLoop            $00, $08, s3p37_Loop03

s3p37_Loop04:
	smpsCall            s3p37_Call01
	smpsLoop            $00, $04, s3p37_Loop04

s3p37_Loop05:
	smpsCall            s3p37_Call00
	smpsLoop            $00, $04, s3p37_Loop05
	smpsPan             panLeft, $00

s3p37_Loop06:
	smpsCall            s3p37_Call03
	smpsLoop            $00, $04, s3p37_Loop06
	smpsStop

s3p37_Call00:
	dc.b	nG4, $06, nF4, nD4, nF4
	smpsReturn

s3p37_Call01:
	dc.b	nA4, $06, nG4, nE4, nG4
	smpsReturn

s3p37_Call02:
	dc.b	nD4, $06, nC4, nA3, nC4
	smpsReturn

s3p37_Call03:
	dc.b	nG4, $06
	smpsFMAlterVol      $04
	dc.b	nF4
	smpsFMAlterVol      $04
	dc.b	nD4
	smpsFMAlterVol      $04
	dc.b	nF4
	smpsFMAlterVol      $04
	smpsReturn

; FM5 Data
s3p37_FM5:
	dc.b	nRst, $08
	smpsFMAlterVol      $05
	smpsJump            s3p37_FM1

; PSG1 Data
s3p37_PSG1:
	smpsPSGvoice        sTone_0A
	dc.b	nRst, $60, nG3, $60, nA3, nE3, nD3, nG3, nA3, nC4, nD4
	smpsStop

; PSG2 Data
s3p37_PSG2:
	smpsPSGvoice        sTone_0A
	dc.b	nRst, $60, nD3, $60, nF3, nC3, nFs3, nD3, nF3, nA3, nB3
	smpsStop

; PSG3 Data
s3p37_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        sTone_02

s3p37_Loop08:
	dc.b	nMaxPSG2, $06, nMaxPSG2
	smpsPSGAlterVol     $FC
	dc.b	nMaxPSG2, $06, nMaxPSG2
	smpsPSGAlterVol     $04
	dc.b	nMaxPSG2, $06, nMaxPSG2
	smpsPSGAlterVol     $FC
	dc.b	nMaxPSG2, $06, nMaxPSG2
	smpsPSGAlterVol     $04
	dc.b	nMaxPSG2, $06, nMaxPSG2
	smpsPSGAlterVol     $FC
	dc.b	nMaxPSG2, $06, nMaxPSG2
	smpsPSGAlterVol     $04
	dc.b	nMaxPSG2, $06, nMaxPSG2
	smpsPSGAlterVol     $FC
	dc.b	nMaxPSG2, $06, nMaxPSG2
	smpsPSGAlterVol     $04
	smpsLoop            $00, $08, s3p37_Loop08
	dc.b	nMaxPSG2, $06, nMaxPSG2
	smpsPSGAlterVol     $FC
	dc.b	nMaxPSG2, $06, nMaxPSG2
	smpsPSGAlterVol     $04
	dc.b	nMaxPSG2, $06, nMaxPSG2
	smpsPSGAlterVol     $FC
	dc.b	nMaxPSG2, $06, nMaxPSG2
	smpsPSGAlterVol     $04
	dc.b	nMaxPSG2, $06, nMaxPSG2
	smpsPSGAlterVol     $FC
	dc.b	nMaxPSG2, $06, nMaxPSG2, nMaxPSG2, nMaxPSG2, nMaxPSG2, nMaxPSG2
	smpsStop

; DAC Data
s3p37_DAC:
	dc.b	dKickS3, $06, dSnareS3, dSnareS3, nRst, dSnareS3, nRst, $0C, dSnareS3, $06, dSnareS3, nRst
	dc.b	dSnareS3, nRst, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dKickS3, $06, nRst, $12, dSnareS3, $06
	dc.b	nRst, $12, dKickS3, $06, nRst, $12, dSnareS3, $06, nRst, $12, dKickS3, $06
	dc.b	nRst, $12, dSnareS3, $06, nRst, $12, dKickS3, $06, nRst, $12, dSnareS3, $06
	dc.b	nRst, $0C, dSnareS3, $06, dKickS3, $06, nRst, $12, dSnareS3, $06, nRst, $12
	dc.b	dKickS3, $06, nRst, $12, dSnareS3, $06, nRst, $12, dKickS3, $06, nRst, $12
	dc.b	dSnareS3, $06, nRst, $12, dKickS3, $06, nRst, dSnareS3, nRst, dSnareS3, $06, dSnareS3
	dc.b	nRst, dSnareS3, dKickS3, $06, nRst, $12, dSnareS3, $06, nRst, $12, dKickS3, $06
	dc.b	nRst, $12, dSnareS3, $06, nRst, $12, dKickS3, $06, nRst, $12, dSnareS3, $06
	dc.b	nRst, $12, dKickS3, $06, nRst, $12, dSnareS3, $06, nRst, $0C, dSnareS3, $06
	dc.b	dKickS3, $06, nRst, $12, dSnareS3, $06, nRst, $12, dKickS3, $06, nRst, $12
	dc.b	dSnareS3, $06, nRst, $12, dSnareS3, $06, dSnareS3, dSnareS3, nRst, dSnareS3, nRst, dSnareS3
	dc.b	dSnareS3, nRst, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3
	smpsStop

s3p37_Voices:
;	Voice $00
;	$3D
;	$01, $00, $04, $03, 	$1F, $1F, $1F, $1F, 	$10, $06, $06, $06
;	$01, $06, $06, $06, 	$35, $1A, $18, $1A, 	$12, $82, $82, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $03, $04, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $06, $06, $10
	smpsVcDecayRate2    $06, $06, $06, $01
	smpsVcDecayLevel    $01, $01, $01, $03
	smpsVcReleaseRate   $0A, $08, $0A, $05
	smpsVcTotalLevel    $80, $82, $82, $12

;	Voice $01
;	$3A
;	$01, $02, $01, $01, 	$1F, $5F, $5F, $5F, 	$10, $11, $09, $09
;	$07, $00, $00, $00, 	$CF, $FF, $FF, $FF, 	$1C, $22, $18, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $09, $11, $10
	smpsVcDecayRate2    $00, $00, $00, $07
	smpsVcDecayLevel    $0F, $0F, $0F, $0C
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $18, $22, $1C

;	Voice $02
;	$3C
;	$71, $31, $12, $11, 	$17, $1F, $19, $2F, 	$04, $01, $07, $01
;	$00, $00, $00, $00, 	$F7, $F8, $F7, $F8, 	$1D, $84, $19, $84
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $01, $03, $07
	smpsVcCoarseFreq    $01, $02, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $2F, $19, $1F, $17
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $07, $01, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $08, $07, $08, $07
	smpsVcTotalLevel    $84, $19, $84, $1D

;	Voice $03
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

