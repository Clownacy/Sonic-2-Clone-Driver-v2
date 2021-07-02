Snd_Title_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_Title_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $04

	smpsHeaderDAC       Snd_Title_DAC
	; The $14 in the below line was $D4 in the original song data, but
	; that is an invalid transpose value and creates notes which are
	; impossibly low. In Sonic 3D's driver, these impossibly low notes
	; would underflow and become higher notes, but other drivers
	; (including Sonic 1 & 2's) will not handle this so gracefully, and
	; instead produce incorrect notes.
	; To address this, the value has been corrected to its
	; post-underflow form, making it clear that this actually *raises*
	; the pitch of the notes.
	smpsHeaderFM        Snd_Title_FM1,	$14, $0B
	smpsHeaderFM        Snd_Title_FM2,	$00, $03
	smpsHeaderFM        Snd_Title_FM3,	$00, $05
	smpsHeaderFM        Snd_Title_FM4,	$FC, $18
	smpsHeaderFM        Snd_Title_FM5,	$FC, $09
	smpsHeaderPSG       Snd_Title_PSG1,	$FC, $02, $00, $00
	smpsHeaderPSG       Snd_Title_PSG2,	$FC, $04, $00, $00
	smpsHeaderPSG       Snd_Title_PSG3,	$23, $01, $00, $00

; FM1 Data
Snd_Title_FM1:
	smpsSetvoice        $00
	dc.b	nRst, $60, nRst
	smpsCall            Snd_Title_Call00
	smpsCall            Snd_Title_Call00
	smpsCall            Snd_Title_Call01
	dc.b	nB0, nRst, nB1, nB1, nC1, nRst, nC2, nC2, nD1, nE1, nD1, nC1
	dc.b	nB0, nA0, nG0, smpsNoAttack, nG0
	smpsCall            Snd_Title_Call02
	smpsCall            Snd_Title_Call03
	smpsCall            Snd_Title_Call00
	smpsCall            Snd_Title_Call00
	smpsStop

Snd_Title_Call00:
	dc.b	nC1, $06, nRst, nC1, nRst, nC2, smpsNoAttack, nC2, nC1, nC2, nC1, nC2
	dc.b	nC1, smpsNoAttack, nC1, nC2, smpsNoAttack, nC2, nC1, nC2
	smpsReturn

Snd_Title_Call01:
	dc.b	nB0, $06, nRst, nB0, nRst, nB1, smpsNoAttack, nB1, nB0, nB1, nB0, nB1
	dc.b	nB0, smpsNoAttack, nB0, nB1, smpsNoAttack, nB1, nB0, nB1
	smpsReturn

Snd_Title_Call02:
	dc.b	nAb0, $06, nRst, nAb0, nRst, nAb1, smpsNoAttack, nAb1, nAb0, nAb1, nAb0, nAb1
	dc.b	nAb0, smpsNoAttack, nAb0, nAb1, smpsNoAttack, nAb1, nAb0, nAb1
	smpsReturn

Snd_Title_Call03:
	dc.b	nG0, $06, nRst, nG0, nRst, nG1, smpsNoAttack, nG1, nG0, nG1, nG0, nG1
	dc.b	nG0, smpsNoAttack, nG0, nG1, smpsNoAttack, nG1, nG0, nG1
	smpsReturn

; FM2 Data
Snd_Title_FM2:
	smpsPan             panLeft, $00
	smpsSetvoice        $04
	smpsFMAlterVol      $1C
	dc.b	nRst, $60, nFs6, $03

Snd_Title_Loop02:
	dc.b	smpsNoAttack, nFs6
	smpsFMAlterVol      $FF
	smpsLoop            $00, $1F, Snd_Title_Loop02
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsAlterPitch      $FC
	smpsFMAlterVol      $17
	smpsModSet          $0C, $01, $F8, $FF
	dc.b	nRst, $18, nC5
	smpsModSet          $07, $01, $03, $05
	dc.b	nG4, $0C, nG5, nF5, nE5, smpsNoAttack, nE5, nF5, nE5
	smpsModSet          $07, $01, $09, $05
	dc.b	nC5, smpsNoAttack, nC5, $18
	smpsModSet          $0C, $01, $F0, $FD
	dc.b	smpsNoAttack, nC5
	smpsModSet          $0C, $01, $F8, $FD
	dc.b	nRst, $18, nB4
	smpsModSet          $07, $01, $03, $05
	dc.b	nG4, $0C, nG5, nF5, nE5, smpsNoAttack, nE5, nF5, nE5, nC5
	smpsModSet          $07, $01, $09, $05
	dc.b	nD5, $18
	smpsModSet          $0C, $01, $F0, $FF
	dc.b	smpsNoAttack, nD5
	smpsFMAlterVol      $FE
	smpsModSet          $0C, $01, $05, $07
	dc.b	nC5, $24
	smpsModSet          $12, $01, $09, $07
	dc.b	nF5, $3C
	smpsModSet          $07, $01, $03, $05
	dc.b	nE5, $24, nD5, nC5, $0C, nB4
	smpsModSet          $07, $01, $09, $07
	dc.b	nC5, $60, smpsNoAttack, nC5
	smpsStop

; FM3 Data
Snd_Title_FM3:
	smpsPan             panRight, $00
	smpsSetvoice        $04
	dc.b	nRst, $60
	smpsAlterNote       $01
	smpsFMAlterVol      $1A
	dc.b	nFs6, $03

Snd_Title_Loop01:
	dc.b	smpsNoAttack, nFs6
	smpsFMAlterVol      $FF
	smpsLoop            $00, $1F, Snd_Title_Loop01
	smpsPan             panCenter, $00
	smpsSetvoice        $05
	smpsAlterNote       $02
	smpsAlterPitch      $FC
	smpsFMAlterVol      $0F
	smpsModSet          $07, $01, $03, $05
	smpsModSet          $0C, $01, $F8, $FF
	dc.b	nRst, $18, nG4
	smpsModSet          $07, $01, $03, $05
	dc.b	nE4, $0C, nE5, nD5, nC5, smpsNoAttack, nC5, nD5, nC5
	smpsModSet          $0C, $01, $05, $05
	dc.b	nG4, smpsNoAttack, nG4, $18
	smpsModSet          $0C, $01, $F0, $FD
	dc.b	smpsNoAttack, nG4
	smpsModSet          $0C, $01, $F8, $FD
	dc.b	nRst, $18, nG4
	smpsModSet          $07, $01, $03, $05
	dc.b	nD4, $0C, nD5, nD5, nC5, smpsNoAttack, nC5, nD5, nC5, nG4
	smpsModSet          $07, $01, $09, $05
	dc.b	nA4, $18
	smpsModSet          $0C, $01, $F0, $FF
	dc.b	smpsNoAttack, nA4
	smpsModSet          $0C, $01, $05, $07
	dc.b	nAb4, $24
	smpsModSet          $12, $01, $09, $07
	dc.b	nAb4, $3C
	smpsModSet          $07, $01, $03, $05
	dc.b	nG4, $24, nG4, nG4, $0C, nF4
	smpsModSet          $07, $01, $09, $07
	dc.b	nE4, $60, smpsNoAttack, nE4
	smpsStop

; FM4 Data
Snd_Title_FM4:
	dc.b	nRst, $60, nRst, nRst, $07
	smpsAlterNote       $FD
	smpsPan             panCenter, $00
	smpsSetvoice        $06
	smpsModSet          $0C, $01, $F8, $FF
	dc.b	nRst, $18, nC5
	smpsModSet          $07, $01, $03, $05
	dc.b	nG4, $0C, nG5, nF5, nE5, smpsNoAttack, nE5, nF5, nE5
	smpsModSet          $07, $01, $09, $05
	dc.b	nC5, smpsNoAttack, nC5, $18
	smpsModSet          $0C, $01, $F0, $FD
	dc.b	smpsNoAttack, nC5, $11, nRst, $07
	smpsModSet          $0C, $01, $F8, $FD
	dc.b	nRst, $18, nB4
	smpsModSet          $07, $01, $03, $05
	dc.b	nG4, $0C, nG5, nF5, nE5, smpsNoAttack, nE5, nF5, nE5, nC5
	smpsModSet          $07, $01, $09, $05
	dc.b	nD5, $18
	smpsModSet          $0C, $01, $F0, $FF
	dc.b	smpsNoAttack, nD5, $11
	smpsSetvoice        $03
	smpsPan             panRight, $00
	smpsModSet          $24, $01, $04, $07
	smpsFMAlterVol      $F1
	dc.b	nAb2, $60, nG2
	smpsModSet          $07, $01, $09, $07
	dc.b	nC3, smpsNoAttack, nC3
	smpsStop

; FM5 Data
Snd_Title_FM5:
	smpsModSet          $24, $01, $04, $07
	smpsAlterNote       $02
	smpsSetvoice        $03
	dc.b	nRst, $60, nRst, nRst, $60, nRst, nRst, nRst
	smpsPan             panLeft, $00
	dc.b	nAb2, $60, nG2
	smpsModSet          $07, $01, $09, $07
	dc.b	nC3, smpsNoAttack, nC3
	smpsStop

; PSG1 Data
Snd_Title_PSG1:
	smpsPSGvoice        sTone_03
	dc.b	nRst, $60, nRst, $5A, nRst, $06

Snd_Title_Loop05:
	dc.b	nG2, $0C, nE3, nG2, nE3, nG2, nE3, nG2, nE3
	smpsLoop            $00, $02, Snd_Title_Loop05

Snd_Title_Loop06:
	dc.b	nB2, nF3, nB2, nF3, nB2, nF3, nB2, nF3
	smpsLoop            $00, $02, Snd_Title_Loop06
	dc.b	nAb2, $60, nG2, nG2, $0C, nE3, nG2, nE3, nG2, nE3, nG2, nE3
	dc.b	nG2, $0C, nE3, nG2, nE3, nG2, nE3, nG2, nE3
	smpsStop

; PSG2 Data
Snd_Title_PSG2:
	smpsPSGvoice        sTone_03
	dc.b	nRst, $60, nRst, nRst, $06

Snd_Title_Loop04:
	dc.b	nG3, $0C, nC3, nG3, nC3, nG3, nC3, nG3, nC3
	smpsLoop            $00, $02, Snd_Title_Loop04
	dc.b	nG3, nD3, nG3, nD3, nG3, nD3, nG3, nD3, nG3, nD3, nG3, nD3
	dc.b	nG3, nD3, nG3, nD3, $06, nEb2, $60, nD2, nRst, $06, nG3, $0C
	dc.b	nC3, nG3, nC3, nG3, nC3, nG3, nC3, nG3, nC3, nG3, nC3, nG3
	dc.b	nC3, nG3, nC3
	smpsStop

; PSG3 Data
Snd_Title_PSG3:
	smpsPSGform         $E7

Snd_Title_Loop03:
	smpsCall            Snd_Title_Call04
	smpsLoop            $00, $0A, Snd_Title_Loop03
	smpsStop

Snd_Title_Call04:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FF
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FF
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FF
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FF
	dc.b	(nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF, smpsNoAttack, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGAlterVol     $FF
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b	(nMaxPSG2-$23)&$FF, smpsNoAttack, (nMaxPSG2-$23)&$FF
	smpsReturn

; DAC Data
Snd_Title_DAC:
	smpsPan             panCenter, $00
	dc.b	dKickS3, $06, nRst, dKickS3, nRst, dMuffledSnare, nRst, dKickS3, dMuffledSnare, nRst, dMuffledSnare, dKickS3
	dc.b	nRst, dMuffledSnare, dKickS3, dMuffledSnare, nRst, dKickS3, nRst, dKickS3, nRst, dMuffledSnare, nRst, dKickS3
	dc.b	dMuffledSnare, nRst, dMuffledSnare, dKickS3, nRst, dMuffledSnare, dMuffledSnare, dMuffledSnare, dMuffledSnare, dIntroKick, $06, nRst
	dc.b	nRst, nRst, dMuffledSnare, nRst, dKickS3, dMuffledSnare, nRst, dMuffledSnare, dKickS3, nRst, dMuffledSnare, dKickS3
	dc.b	dMuffledSnare, nRst

Snd_Title_Loop00:
	dc.b	dKickS3, $06, nRst, dKickS3, nRst, dMuffledSnare, nRst, dKickS3, dMuffledSnare, nRst, dMuffledSnare, dKickS3
	dc.b	nRst, dMuffledSnare, dKickS3, dMuffledSnare, nRst
	smpsLoop            $00, $06, Snd_Title_Loop00
	dc.b	dMuffledSnare, dMuffledSnare, dMuffledSnare, dKickS3, nRst, dMuffledSnare, dKickS3, dMuffledSnare, dMuffledSnare, nRst, dMuffledSnare, nRst
	dc.b	dKickS3, dMuffledSnare, dMuffledSnare, dIntroKick
	smpsStop

Snd_Title_Voices:
;	Voice $00
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$2F, $1F, $1F, $FF, 	$19, $37, $13, $80
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
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $37, $19

;	Voice $01
;	$3D
;	$01, $21, $51, $01, 	$12, $14, $14, $0F, 	$0A, $05, $05, $05
;	$00, $00, $00, $00, 	$2B, $2B, $2B, $1B, 	$19, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $02, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $14, $14, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $02, $02, $02
	smpsVcReleaseRate   $0B, $0B, $0B, $0B
	smpsVcTotalLevel    $00, $00, $00, $19

;	Voice $02
;	$3D
;	$01, $02, $01, $11, 	$1C, $18, $18, $1B, 	$06, $05, $04, $05
;	$06, $05, $06, $06, 	$6F, $8F, $5F, $7F, 	$1C, $99, $99, $99
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1B, $18, $18, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $04, $05, $06
	smpsVcDecayRate2    $06, $06, $05, $06
	smpsVcDecayLevel    $07, $05, $08, $06
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $19, $19, $19, $1C

;	Voice $03
;	$04
;	$04, $04, $03, $03, 	$13, $10, $13, $10, 	$06, $0C, $06, $0C
;	$00, $00, $00, $00, 	$4F, $2F, $4F, $2F, 	$1E, $8C, $1E, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $03, $03, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $13, $10, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $06, $0C, $06
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $04, $02, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1E, $0C, $1E

;	Voice $04
;	$00
;	$53, $7F, $1F, $19, 	$1F, $1F, $1F, $08, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$10, $23, $0F, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $01, $07, $05
	smpsVcCoarseFreq    $09, $0F, $0F, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $08, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $0F, $23, $10

;	Voice $05
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $0F, 	$17, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $17

;	Voice $06
;	$3D
;	$01, $01, $01, $01, 	$10, $50, $50, $50, 	$07, $08, $08, $08
;	$01, $00, $00, $00, 	$20, $1A, $1A, $1A, 	$19, $84, $84, $84
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $10, $10, $10, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $08, $08, $07
	smpsVcDecayRate2    $00, $00, $00, $01
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $00
	smpsVcTotalLevel    $04, $04, $04, $19

