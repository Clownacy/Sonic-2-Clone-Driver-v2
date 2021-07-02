Snd_FinalFight_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_FinalFight_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $0A

	smpsHeaderDAC       Snd_FinalFight_DAC
	; The $B4 in the below line is an invalid transpose value that
	; creates impossibly-low notes. In Sonic 3D's driver, these
	; impossibly low notes would underflow and safely wrap around, but
	; other drivers (including Sonic 1 & 2's) will not handle this so
	; gracefully, and instead produce incorrect notes.
	smpsHeaderFM        Snd_FinalFight_FM1,	$B4, $17
	smpsHeaderFM        Snd_FinalFight_FM2,	$00, $14
	smpsHeaderFM        Snd_FinalFight_FM3,	$00, $14
	smpsHeaderFM        Snd_FinalFight_FM4,	$00, $18
	smpsHeaderFM        Snd_FinalFight_FM5,	$00, $18
	smpsHeaderPSG       Snd_FinalFight_PSG1,	$E8, $00, $00, $00
	smpsHeaderPSG       Snd_FinalFight_PSG2,	$E8, $02, $00, $00
	smpsHeaderPSG       Snd_FinalFight_PSG3,	$47, $00, $00, $00

; FM1 Data
Snd_FinalFight_FM1:
	smpsSetvoice        $00
	smpsAlterNote       $FE

Snd_FinalFight_Loop09:
	dc.b	nA1, $06, nA1, nA1, nA1, nA1, nA1, nA1, nA1, nA1, nA1, nA1
	dc.b	nA1, nA1, nA1, nA1, nA1
	smpsLoop            $00, $07, Snd_FinalFight_Loop09
	dc.b	nRst, $48, nA1, $06, nA1, nA1, nA1

Snd_FinalFight_Loop0A:
	dc.b	nA1, $06, nA1, nA1, nA1, nA1, nA1, nA1, nA1, nA1, nA1, nA1
	dc.b	nA1, nA1, nA1, nA1, nA1
	smpsLoop            $00, $08, Snd_FinalFight_Loop0A

Snd_FinalFight_Loop0B:
	dc.b	nA1, $06, nA1, nA1, nA1, nA1, nA1, nA1, nA1, nA1, nA1, nA1
	dc.b	nA1, nA1, nA1, nA1, nA1
	smpsLoop            $00, $07, Snd_FinalFight_Loop0B
	dc.b	nA1, $06, nA1, nA1, nA1, nA1, nA1, nA1, nA1, nRst, $30, nRst
	dc.b	$60, nRst, $60, nRst, $60, nRst, $30, nA1, $06, nA1, nA1, nA1
	dc.b	nA1, nA1, nA1, nA1

Snd_FinalFight_Loop0C:
	dc.b	nA1, $06, nA1, nA1, nA1, nA1, nA1, nA1, nA1, nA1, nA1, nA1
	dc.b	nA1, nA1, nA1, nA1, nA1
	smpsLoop            $00, $03, Snd_FinalFight_Loop0C
	dc.b	nRst, $60
	smpsJump            Snd_FinalFight_Loop0A

; Unreachable
	smpsStop

; FM2 Data
Snd_FinalFight_FM2:
	smpsSetvoice        $03
	smpsPan             panCenter, $00

Snd_FinalFight_Loop07:
	smpsCall            Snd_FinalFight_Call03
	smpsCall            Snd_FinalFight_Call03
	smpsAlterPitch      $FC
	smpsCall            Snd_FinalFight_Call03
	smpsCall            Snd_FinalFight_Call03
	smpsAlterPitch      $04
	smpsLoop            $00, $02, Snd_FinalFight_Loop07

Snd_FinalFight_Loop08:
	smpsCall            Snd_FinalFight_Call03
	smpsCall            Snd_FinalFight_Call03
	smpsAlterPitch      $FC
	smpsCall            Snd_FinalFight_Call03
	smpsCall            Snd_FinalFight_Call03
	smpsAlterPitch      $04
	smpsLoop            $00, $02, Snd_FinalFight_Loop08
	smpsAlterPitch      $02
	smpsCall            Snd_FinalFight_Call03
	smpsCall            Snd_FinalFight_Call03
	smpsAlterPitch      $FB
	smpsCall            Snd_FinalFight_Call03
	smpsCall            Snd_FinalFight_Call03
	smpsAlterPitch      $05
	smpsCall            Snd_FinalFight_Call03
	smpsCall            Snd_FinalFight_Call03
	smpsAlterPitch      $FF
	smpsCall            Snd_FinalFight_Call03
	smpsCall            Snd_FinalFight_Call04
	smpsAlterPitch      $FF
	smpsCall            Snd_FinalFight_Call03
	smpsCall            Snd_FinalFight_Call03
	smpsAlterPitch      $FC
	smpsCall            Snd_FinalFight_Call03
	smpsCall            Snd_FinalFight_Call04
	smpsAlterPitch      $04
	smpsCall            Snd_FinalFight_Call03
	smpsCall            Snd_FinalFight_Call03
	smpsAlterPitch      $FC
	smpsCall            Snd_FinalFight_Call03
	smpsCall            Snd_FinalFight_Call03
	smpsAlterPitch      $04
	smpsJump            Snd_FinalFight_Loop08

; Unreachable
	smpsStop

Snd_FinalFight_Call03:
	smpsPan             panCenter, $00
	dc.b	nA3, $06
	smpsFMAlterVol      $03
	smpsPan             panLeft, $00
	dc.b	nA3
	smpsPan             panRight, $00
	dc.b	nA3
	smpsFMAlterVol      $FD
	smpsPan             panCenter, $00
	dc.b	nA3, $06
	smpsFMAlterVol      $03
	smpsPan             panLeft, $00
	dc.b	nA3
	smpsPan             panRight, $00
	dc.b	nA3
	smpsFMAlterVol      $FD
	smpsPan             panCenter, $00
	dc.b	nA3, $06
	smpsFMAlterVol      $03
	smpsPan             panLeft, $00
	dc.b	nA3
	smpsPan             panRight, $00
	dc.b	nA3
	smpsFMAlterVol      $FD
	smpsPan             panCenter, $00
	dc.b	nA3, $06
	smpsFMAlterVol      $03
	smpsPan             panLeft, $00
	dc.b	nA3
	smpsPan             panRight, $00
	dc.b	nA3
	smpsFMAlterVol      $03
	smpsPan             panLeft, $00
	dc.b	nA3
	smpsPan             panRight, $00
	dc.b	nA3
	smpsFMAlterVol      $03
	smpsPan             panLeft, $00
	dc.b	nA3
	smpsPan             panRight, $00
	dc.b	nA3
	smpsFMAlterVol      $F7
	smpsReturn

Snd_FinalFight_Call04:
	smpsFMAlterVol      $09
	smpsPan             panLeft, $00
	dc.b	nA3
	smpsPan             panRight, $00
	dc.b	nA3
	smpsFMAlterVol      $03
	smpsPan             panLeft, $00
	dc.b	nA3
	smpsPan             panRight, $00
	dc.b	nA3
	smpsFMAlterVol      $03
	smpsPan             panLeft, $00
	dc.b	nA3
	smpsPan             panRight, $00
	dc.b	nA3
	smpsFMAlterVol      $03
	smpsPan             panLeft, $00
	dc.b	nA3
	smpsPan             panRight, $00
	dc.b	nA3
	smpsFMAlterVol      $03
	smpsPan             panLeft, $00
	dc.b	nA3
	smpsPan             panRight, $00
	dc.b	nA3
	smpsFMAlterVol      $EB
	dc.b	nRst, $24
	smpsReturn

; FM3 Data
Snd_FinalFight_FM3:
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	smpsAlterPitch      $04

Snd_FinalFight_Loop05:
	smpsCall            Snd_FinalFight_Call03
	smpsCall            Snd_FinalFight_Call03
	smpsAlterPitch      $FC
	smpsCall            Snd_FinalFight_Call03
	smpsCall            Snd_FinalFight_Call03
	smpsAlterPitch      $04
	smpsLoop            $00, $02, Snd_FinalFight_Loop05

Snd_FinalFight_Loop06:
	smpsCall            Snd_FinalFight_Call03
	smpsCall            Snd_FinalFight_Call03
	smpsAlterPitch      $FC
	smpsCall            Snd_FinalFight_Call03
	smpsCall            Snd_FinalFight_Call03
	smpsAlterPitch      $04
	smpsLoop            $00, $02, Snd_FinalFight_Loop06
	smpsAlterPitch      $01
	smpsCall            Snd_FinalFight_Call03
	smpsCall            Snd_FinalFight_Call03
	smpsAlterPitch      $FB
	smpsCall            Snd_FinalFight_Call03
	smpsCall            Snd_FinalFight_Call03
	smpsAlterPitch      $05
	smpsCall            Snd_FinalFight_Call03
	smpsCall            Snd_FinalFight_Call03
	smpsCall            Snd_FinalFight_Call03
	smpsCall            Snd_FinalFight_Call04
	smpsAlterPitch      $FF
	smpsCall            Snd_FinalFight_Call03
	smpsCall            Snd_FinalFight_Call03
	smpsAlterPitch      $FC
	smpsCall            Snd_FinalFight_Call03
	smpsCall            Snd_FinalFight_Call04
	smpsAlterPitch      $04
	smpsCall            Snd_FinalFight_Call03
	smpsCall            Snd_FinalFight_Call03
	smpsAlterPitch      $FC
	smpsCall            Snd_FinalFight_Call03
	smpsCall            Snd_FinalFight_Call03
	smpsAlterPitch      $04
	smpsJump            Snd_FinalFight_Loop06

; Unreachable
	smpsStop

; FM4 Data
Snd_FinalFight_FM4:
	smpsAlterNote       $04
	smpsPan             panLeft, $00

Snd_FinalFight_Jump00:
	smpsModSet          $24, $01, $04, $08
	smpsSetvoice        $02

Snd_FinalFight_Loop02:
	smpsCall            Snd_FinalFight_Call01
	smpsLoop            $00, $03, Snd_FinalFight_Loop02
	dc.b	nA2, $0C, nA3, $06, nA2, $0C, nA3, $06, nA2, $12, nA2, $06
	dc.b	nA3, $0C, nF3, nG3, nRst, $48, nC4, $0C, nB3

Snd_FinalFight_Loop03:
	smpsCall            Snd_FinalFight_Call01
	smpsLoop            $00, $04, Snd_FinalFight_Loop03

Snd_FinalFight_Loop04:
	smpsCall            Snd_FinalFight_Call02
	smpsLoop            $00, $03, Snd_FinalFight_Loop04
	smpsCall            Snd_FinalFight_Call01
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $30, nRst, $0C, nA3, nF3
	dc.b	nG3
	smpsCall            Snd_FinalFight_Call01
	smpsCall            Snd_FinalFight_Call01
	smpsJump            Snd_FinalFight_Loop03

; Unreachable
	smpsStop

Snd_FinalFight_Call01:
	dc.b	nA2, $0C, nA3, $06, nA2, $0C, nA3, $06, nA2, $12, nA2, $06
	dc.b	nA3, $0C, nF3, nG3, nA2, $0C, nA3, $06, nA2, $0C, nA3, $06
	dc.b	nA2, $12, nA2, $06, nA3, $0C, nC4, nB3
	smpsReturn

Snd_FinalFight_Call02:
	dc.b	nA2, $0C, nA3, $06, nA2, $0C, nA3, $06, nA2, $12, nA2, $06
	dc.b	nA3, $0C, nFs3, nG3, nA2, $0C, nA3, $06, nA2, $0C, nA3, $06
	dc.b	nA2, $12, nA2, $06, nA3, $0C, nC4, nB3
	smpsReturn

; FM5 Data
Snd_FinalFight_FM5:
	smpsAlterNote       $F8
	smpsPan             panRight, $00
	smpsJump            Snd_FinalFight_Jump00

; Unreachable
	smpsStop

; PSG1 Data
Snd_FinalFight_PSG1:
	smpsModSet          $24, $01, $01, $04

Snd_FinalFight_Jump01:
	smpsPSGvoice        sTone_03
	smpsPSGAlterVol     $0D
	dc.b	nA2, $60, nA2, nA2, nA2, nF2, nF2, nF2, nF2
	smpsPSGAlterVol     $F3

Snd_FinalFight_Jump02:
	dc.b	nRst, $0C, nB3, $0C, nE4, $06, nRst, nD4, nRst, nE4, $12, nA4
	dc.b	$1E, smpsNoAttack, nA4, $30, nCs5, $03, smpsNoAttack, nD5, $2D, smpsNoAttack, nB4, $60
	dc.b	nA4, nRst, $0C, nB3, $0C, nE4, $06, nRst, nD4, nRst, nE4, $12
	dc.b	nA4, $1E, smpsNoAttack, nA4, $30, nCs5, $03, smpsNoAttack, nD5, $2D, nEb5, $03
	dc.b	smpsNoAttack, nE5, $5D, smpsNoAttack, nE5, $48, nRst, $18, nRst, $0C, nFs3, $06
	dc.b	nRst, nCs4, nRst, nB3, nRst, nCs4, $12, nF4, $03, smpsNoAttack, nFs4, $1B
	dc.b	smpsNoAttack, nFs4, $0C, nE4, $06, nRst, nFs4, nRst, nA4, nRst, nBb4, $03
	dc.b	smpsNoAttack, nB4, $15, nB4, $18, nRst, $0C, nA4, $06, nRst, nB4, nRst
	dc.b	nA4, nRst, nFs4, smpsNoAttack, nFs4, nE4, nFs4, nE4, nD4, nB3, nD4, nB3
	dc.b	nRst, nA3, nRst, nAb3, nRst, nFs3, $3C, nRst, $0C, nFs3, $06, nRst
	dc.b	nCs4, nRst, nB3, nRst, nCs4, $12, nF4, $03, smpsNoAttack, nFs4, nRst, $06
	dc.b	nRst, nE4, nRst, nFs4, $12, nB4, $03, smpsNoAttack, nCs5, $03, nRst, $0C
	dc.b	nB4, $3C, nA4, $0C, nF4, $06, nD4, nBb3, nA4, nF4, nD4, nBb4
	dc.b	$03, nA4, nF4, nD4, nBb4, nA4, nF4, nD4, nBb4, nA4, nF4, nD4
	dc.b	nBb4, nA4, nF4, nD4, nC5, $03, smpsNoAttack, nD5, $2D, nRst, $30
	smpsPSGAlterVol     $0D
	dc.b	nA2, $60, nA2, nA2, nA2, nF2, nF2, nF2, nF2
	smpsPSGAlterVol     $F3
	smpsJump            Snd_FinalFight_Jump02

; Unreachable
	smpsStop

; PSG2 Data
Snd_FinalFight_PSG2:
	smpsModSet          $24, $01, $01, $05
	smpsAlterNote       $FE
	dc.b	nRst, $08
	smpsJump            Snd_FinalFight_Jump01

; Unreachable
	smpsStop

; PSG3 Data
Snd_FinalFight_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        sTone_01

Snd_FinalFight_Loop0D:
	smpsCall            Snd_FinalFight_Call05
	smpsLoop            $00, $07, Snd_FinalFight_Loop0D
	dc.b	nRst, $60

Snd_FinalFight_Loop0E:
	smpsCall            Snd_FinalFight_Call05
	smpsLoop            $00, $07, Snd_FinalFight_Loop0E
	dc.b	(nMaxPSG2-$47)&$FF, $06, (nMaxPSG2-$47)&$FF, nRst, (nMaxPSG2-$47)&$FF, (nMaxPSG2-$47)&$FF, (nMaxPSG2-$47)&$FF
	smpsPSGvoice        sTone_27
	dc.b	(nMaxPSG2-$47)&$FF, smpsNoAttack, (nMaxPSG2-$47)&$FF, nRst, $30
	smpsLoop            $01, $02, Snd_FinalFight_Loop0E
	dc.b	nRst, $60, nRst, nRst, nRst
	smpsCall            Snd_FinalFight_Call05
	smpsCall            Snd_FinalFight_Call05
	smpsCall            Snd_FinalFight_Call05
	dc.b	nRst, $60
	smpsJump            Snd_FinalFight_Loop0E

; Unreachable
	smpsStop

Snd_FinalFight_Call05:
	smpsPSGvoice        sTone_01
	dc.b	(nMaxPSG2-$47)&$FF, $06, (nMaxPSG2-$47)&$FF, nRst, (nMaxPSG2-$47)&$FF, (nMaxPSG2-$47)&$FF, (nMaxPSG2-$47)&$FF
	smpsPSGvoice        sTone_27
	dc.b	(nMaxPSG2-$47)&$FF, smpsNoAttack, (nMaxPSG2-$47)&$FF
	smpsPSGvoice        sTone_01
	dc.b	(nMaxPSG2-$47)&$FF, (nMaxPSG2-$47)&$FF
	smpsPSGvoice        sTone_27
	dc.b	(nMaxPSG2-$47)&$FF, smpsNoAttack, (nMaxPSG2-$47)&$FF
	smpsPSGvoice        sTone_01
	dc.b	(nMaxPSG2-$47)&$FF, (nMaxPSG2-$47)&$FF
	smpsPSGvoice        sTone_27
	dc.b	(nMaxPSG2-$47)&$FF, smpsNoAttack, (nMaxPSG2-$47)&$FF
	smpsReturn

; DAC Data
Snd_FinalFight_DAC:
	smpsPan             panCenter, $00
	dc.b	nRst, $60, nRst, nRst, nRst

Snd_FinalFight_Loop00:
	smpsCall            Snd_FinalFight_Call00
	smpsLoop            $00, $03, Snd_FinalFight_Loop00
	dc.b	dFinalFightMetalCrash, $06, dFinalFightMetalCrash, dFinalFightMetalCrash, dFinalFightMetalCrash, dSnareS3
	smpsPan             panRight, $00
	dc.b	dElectricMidTom
	smpsPan             panLeft, $00
	dc.b	dElectricFloorTom
	smpsPan             panCenter, $00
	dc.b	dSnareS3, nRst, nRst
	smpsPan             panRight, $00
	dc.b	dElectricMidTom, $03
	smpsPan             panCenter, $00
	dc.b	dElectricLowTom
	smpsPan             panLeft, $00
	dc.b	dElectricFloorTom
	smpsPan             panCenter, $00
	dc.b	dSnareS3, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3

Snd_FinalFight_Loop01:
	smpsCall            Snd_FinalFight_Call00
	smpsLoop            $00, $07, Snd_FinalFight_Loop01
	dc.b	dFinalFightMetalCrash, $06, dFinalFightMetalCrash, dFinalFightMetalCrash, dFinalFightMetalCrash, dSnareS3
	smpsPan             panRight, $00
	dc.b	dElectricMidTom
	smpsPan             panLeft, $00
	dc.b	dElectricFloorTom
	smpsPan             panCenter, $00
	dc.b	nRst, nRst, $30
	smpsLoop            $01, $02, Snd_FinalFight_Loop01
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst, nRst, dSnareS3, $06, dSnareS3, dSnareS3
	dc.b	dSnareS3, nRst, nRst, nRst
	smpsPan             panRight, $00
	dc.b	dElectricMidTom, $03
	smpsPan             panCenter, $00
	dc.b	dElectricLowTom
	smpsPan             panLeft, $00
	dc.b	dElectricFloorTom, $06
	smpsPan             panCenter, $00
	dc.b	dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3
	smpsJump            Snd_FinalFight_Loop01

; Unreachable
	smpsStop

Snd_FinalFight_Call00:
	dc.b	dFinalFightMetalCrash, $06, dFinalFightMetalCrash, dFinalFightMetalCrash, dFinalFightMetalCrash, dSnareS3
	smpsPan             panRight, $00
	dc.b	dElectricMidTom
	smpsPan             panLeft, $00
	dc.b	dElectricFloorTom
	smpsPan             panCenter, $00
	dc.b	dSnareS3, dFinalFightMetalCrash, dSnareS3, dFinalFightMetalCrash, nRst, nRst, nRst, nRst, nRst
	smpsReturn

Snd_FinalFight_Voices:
;	Voice $00
;	$35
;	$02, $02, $02, $02, 	$1F, $5F, $1F, $5F, 	$0E, $00, $12, $00
;	$00, $08, $02, $08, 	$4F, $0F, $4F, $0F, 	$12, $88, $88, $88
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $02
	smpsVcRateScale     $01, $00, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $12, $00, $0E
	smpsVcDecayRate2    $08, $02, $08, $00
	smpsVcDecayLevel    $00, $04, $00, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $08, $08, $08, $12

;	Voice $01
;	$3D
;	$01, $01, $01, $11, 	$1C, $18, $18, $1B, 	$06, $05, $04, $05
;	$06, $05, $06, $06, 	$60, $89, $59, $79, 	$18, $88, $88, $88
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1B, $18, $18, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $04, $05, $06
	smpsVcDecayRate2    $06, $06, $05, $06
	smpsVcDecayLevel    $07, $05, $08, $06
	smpsVcReleaseRate   $09, $09, $09, $00
	smpsVcTotalLevel    $08, $08, $08, $18

;	Voice $02
;	$3D
;	$71, $02, $01, $10, 	$0F, $0D, $0F, $13, 	$0B, $05, $04, $05
;	$06, $05, $06, $06, 	$6F, $8F, $5F, $7F, 	$18, $88, $88, $88
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $07
	smpsVcCoarseFreq    $00, $01, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $13, $0F, $0D, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $04, $05, $0B
	smpsVcDecayRate2    $06, $06, $05, $06
	smpsVcDecayLevel    $07, $05, $08, $06
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $08, $08, $08, $18

;	Voice $03
;	$04
;	$02, $02, $03, $03, 	$1F, $17, $1F, $17, 	$00, $0E, $00, $0E
;	$00, $00, $00, $00, 	$4F, $FF, $4F, $FF, 	$19, $88, $19, $88
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $03, $03, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $17, $1F, $17, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0E, $00, $0E, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $04, $0F, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $08, $19, $08, $19

; Unused voice
;	Voice $04
;	$04
;	$12, $22, $23, $13, 	$1F, $1D, $1F, $1D, 	$00, $00, $00, $00
;	$09, $03, $09, $03, 	$0F, $0F, $0F, $0F, 	$0D, $90, $0D, $90
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $02, $02, $01
	smpsVcCoarseFreq    $03, $03, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1D, $1F, $1D, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $03, $09, $03, $09
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $10, $0D, $10, $0D

; Unused voice
;	Voice $05
;	$35
;	$00, $01, $11, $21, 	$13, $1F, $1F, $1F, 	$0E, $00, $00, $00
;	$00, $02, $02, $02, 	$4F, $0F, $0F, $0F, 	$12, $88, $88, $88
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $01, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $0E
	smpsVcDecayRate2    $02, $02, $02, $00
	smpsVcDecayLevel    $00, $00, $00, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $08, $08, $08, $12

