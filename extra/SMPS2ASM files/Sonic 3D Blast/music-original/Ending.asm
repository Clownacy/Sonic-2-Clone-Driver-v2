Snd_Ending_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_Ending_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $10

	smpsHeaderDAC       Snd_Ending_DAC
	; The $D5 in the below line is an invalid transpose value and
	; creates notes which are impossibly low. In Sonic 3D's driver,
	; these impossibly low notes would underflow and become higher
	; notes, but other drivers (including Sonic 1 & 2's) will not handle
	; this so gracefully, and instead produce incorrect notes.
	smpsHeaderFM        Snd_Ending_FM1,	$D5, $0B
	smpsHeaderFM        Snd_Ending_FM2,	$FD, $03
	smpsHeaderFM        Snd_Ending_FM3,	$FD, $05
	smpsHeaderFM        Snd_Ending_FM4,	$FD, $18
	smpsHeaderFM        Snd_Ending_FM5,	$FD, $09
	smpsHeaderPSG       Snd_Ending_PSG1,	$FD, $04, $00, $00
	smpsHeaderPSG       Snd_Ending_PSG2,	$FD, $04, $00, $00
	smpsHeaderPSG       Snd_Ending_PSG3,	$23, $01, $00, $00

; FM1 Data
Snd_Ending_FM1:
	smpsSetvoice        $00
	dc.b	nRst, $60
	smpsCall            Snd_Ending_Call00
	smpsCall            Snd_Ending_Call00
	dc.b	nG0, $06, nRst, nG0, nRst, nG1, smpsNoAttack, nG1, nG0, nG1, nG0, nG1
	dc.b	nG0, smpsNoAttack, nG0, nG1, smpsNoAttack, nG1, nG0, nG1, nG0, $06, nRst, nG0
	dc.b	nRst, nG1, smpsNoAttack, nG1, nG0, nG1, nG0, nG1, nG0, smpsNoAttack, nG0, nG0
	dc.b	nG0, nA0, nB0, nF0, $06, nRst, nF0, nRst, nF1, smpsNoAttack, nF1, nF0
	dc.b	nF1, nF0, nF1, nF0, smpsNoAttack, nF0, nF1, smpsNoAttack, nF1, nF0, nF1, nG0
	dc.b	$06, nRst, nG0, nRst, nG1, smpsNoAttack, nG1, nG0, nG1, nG0, nG1, nG0
	dc.b	smpsNoAttack, nG0, nG1, smpsNoAttack, nG1, nG0, nG1, nAb0, $06, nRst, nAb0, nRst
	dc.b	nAb1, smpsNoAttack, nAb1, nAb0, nAb1, nAb0, nAb1, nAb0, smpsNoAttack, nAb0, nAb1, smpsNoAttack
	dc.b	nAb1, nAb0, nAb1, nG0, $06, nRst, nG0, nRst, nG1, smpsNoAttack, nG1, nG0
	dc.b	nG1, nG0, nG1, nG0, smpsNoAttack, nG0, nG0, nG0, nG1, nG0
	smpsCall            Snd_Ending_Call00
	smpsCall            Snd_Ending_Call00
	dc.b	nB0, $06, nRst, nB0, nRst, nB1, smpsNoAttack, nB1, nB0, nB1, nB0, nB1
	dc.b	nB0, smpsNoAttack, nB0, nB1, smpsNoAttack, nB1, nB0, nB1, nB0, nRst, nB1, nB1
	dc.b	nC1, nRst, nC2, nC2, nD1, nE1, nD1, nC1, nB0, nA0, nG0, smpsNoAttack
	dc.b	nG0, nAb0, $06, nRst, nAb0, nRst, nAb1, smpsNoAttack, nAb1, nAb0, nAb1, nAb0
	dc.b	nAb1, nAb0, smpsNoAttack, nAb0, nAb1, smpsNoAttack, nAb1, nAb0, nAb1, nG0, $06, nRst
	dc.b	nG0, nRst, nG1, smpsNoAttack, nG1, nG0, nG1, nG0, nG1, nG0, smpsNoAttack, nG0
	dc.b	nG1, smpsNoAttack, nG1, nG0, nG1
	smpsCall            Snd_Ending_Call00
	dc.b	nC1, $06, nRst, nC1, nRst, nC2, smpsNoAttack, nC2, nC1, nC2, nC1, nC2
	dc.b	nC1, smpsNoAttack, nC1, nC2, smpsNoAttack, nC2, smpsNoAttack, nC2, nC1, $60
	smpsStop

Snd_Ending_Call00:
	dc.b	nC1, $06, nRst, nC1, nRst, nC2, smpsNoAttack, nC2, nC1, nC2, nC1, nC2
	dc.b	nC1, smpsNoAttack, nC1, nC2, smpsNoAttack, nC2, nC1, nC2
	smpsReturn

; Unreachable
Snd_Ending_CallUnk00:
	dc.b	nB0, $06, nRst, nB0, nRst, nB1, smpsNoAttack, nB1, nB0, nB1, nB0, nB1, nB0, smpsNoAttack, nB0, nB1, smpsNoAttack, nB1, nB0, nB1
	smpsReturn

; Unreachable
Snd_Ending_CallUnk01:
	dc.b	nAb0, $06, nRst, nAb0, nRst, nAb1, smpsNoAttack, nAb1, nAb0, nAb1, nAb0, nAb1, nAb0, smpsNoAttack, nAb0, nAb1, smpsNoAttack, nAb1, nAb0, nAb1
	smpsReturn

; Unreachable
Snd_Ending_CallUnk02:
	dc.b	nG0, $06, nRst, nG0, nRst, nG1, smpsNoAttack, nG1, nG0, nG1, nG0, nG1, nG0, smpsNoAttack, nG0, nG1, smpsNoAttack, nG1, nG0, nG1 
	smpsReturn

; FM2 Data
Snd_Ending_FM2:
	smpsPan             panLeft, $00
	smpsSetvoice        $04
	smpsFMAlterVol      $1C
	dc.b	nFs6, $03

Snd_Ending_Loop01:
	dc.b	smpsNoAttack, nCs7
	smpsFMAlterVol      $FF
	smpsLoop            $00, $1F, Snd_Ending_Loop01
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsFMAlterVol      $17

Snd_Ending_Jump00:
	smpsModSet          $0C, $01, $F8, $FF
	dc.b	nRst, $18, nC5
	smpsModSet          $07, $01, $02, $04
	dc.b	nG4, $0C, nG5, nF5, nE5, smpsNoAttack, nE5, nF5, nE5
	smpsModSet          $07, $01, $09, $05
	dc.b	nC5, smpsNoAttack, nC5, $18
	smpsModSet          $0C, $01, $F0, $FD
	dc.b	smpsNoAttack, nC5
	smpsModSet          $0C, $01, $F8, $FD
	dc.b	nRst, $18, nB4
	smpsModSet          $07, $01, $02, $04
	dc.b	nG4, $0C, nG5, nF5, nE5, smpsNoAttack, nE5, nF5, nE5, nC5
	smpsModSet          $07, $01, $09, $05
	dc.b	nD5, $18
	smpsModSet          $0C, $01, $F0, $FF
	dc.b	smpsNoAttack, nD5
	smpsFMAlterVol      $FE
	smpsModSet          $0C, $01, $03, $07
	dc.b	nC5, $24, nF5, $3C, nD5, $24, nG5, $3C, nEb5, $24, nAb5, $18
	dc.b	nAb5, $0C, nBb5, nC6, nC6, $24, nD6, $06, nC6, nB5, $30
	smpsModSet          $0C, $01, $F8, $FF
	dc.b	nRst, $18, nC5
	smpsModSet          $07, $01, $02, $05
	dc.b	nG4, $0C, nG5, nF5, nE5, smpsNoAttack, nE5, nF5, nE5
	smpsModSet          $07, $01, $09, $05
	dc.b	nC5, smpsNoAttack, nC5, $18
	smpsModSet          $0C, $01, $F0, $FD
	dc.b	smpsNoAttack, nC5
	smpsModSet          $0C, $01, $F8, $FD
	dc.b	nRst, $18, nB4
	smpsModSet          $07, $01, $02, $05
	dc.b	nG4, $0C, nG5, nF5, nE5, smpsNoAttack, nE5, nF5, nE5, nC5
	smpsModSet          $07, $01, $09, $05
	dc.b	nD5, $18
	smpsModSet          $0C, $01, $F0, $FF
	dc.b	smpsNoAttack, nD5
	smpsFMAlterVol      $FE
	smpsModSet          $0C, $01, $03, $07
	dc.b	nC5, $24, nF5, $3C, nE5, $24, nD5, nC5, $0C, nB4, nC5, $60
	dc.b	smpsNoAttack, nC5
	smpsStop

; FM3 Data
Snd_Ending_FM3:
	smpsPan             panRight, $00
	smpsSetvoice        $04
	smpsAlterNote       $01
	smpsFMAlterVol      $1A
	dc.b	nFs6, $03

Snd_Ending_Loop00:
	dc.b	smpsNoAttack, nCs7
	smpsFMAlterVol      $FF
	smpsLoop            $00, $1F, Snd_Ending_Loop00
	smpsPan             panCenter, $00
	smpsSetvoice        $05
	smpsAlterNote       $02
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
	dc.b	nA4, $24, nA4, $3C, nB4, $24, nB4, nG4, $0C, nB4, nC5, $24
	dc.b	nEb5, $18, nEb5, $0C, nEb5, nEb5, nD5, $60
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
	smpsModSet          $0C, $01, $03, $06
	dc.b	nAb4, $24, nAb4, $3C, nG4, $24, nB4, nG4, $0C, nF4, nE4, $60
	dc.b	smpsNoAttack, nE4
	smpsStop

; FM4 Data
Snd_Ending_FM4:
	dc.b	nRst, $60, nRst, $07
	smpsAlterNote       $FD
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsJump            Snd_Ending_Jump00

; Unreachable
	smpsStop

; FM5 Data
Snd_Ending_FM5:
	smpsModSet          $24, $01, $04, $07
	smpsAlterNote       $02
	smpsSetvoice        $03
	dc.b	nRst, $60, nRst, $60, nRst, nRst, nRst
	smpsPan             panLeft, $00
	dc.b	nF2, $60, nG2, nAb2, $60, nG2, nRst, $60, nRst, nRst, nRst
	smpsPan             panLeft, $00
	dc.b	nAb2, $60, nG2
	smpsModSet          $07, $01, $09, $07
	dc.b	nC3, smpsNoAttack, nC3
	smpsStop

; PSG1 Data
Snd_Ending_PSG1:
	smpsPSGvoice        sTone_03
	dc.b	nG3, $0C
	smpsPSGAlterVol     $01
	dc.b	nD4
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Snd_Ending_PSG1
	smpsPSGAlterVol     $F8
	dc.b	nG2, $0C, nE3, nG2, nE3, nG2, nE3, nG2, nE3, nG2, $0C, nE3
	dc.b	nG2, nE3, nG2, nE3, nG2, nE3, nB2, nF3, nB2, nF3, nB2, nF3
	dc.b	nB2, nF3, nB2, nF3, nB2, nF3, nB2, nF3, nB2, nF3, nC3, $60
	dc.b	nG2, nAb2, $60, nG2, nG2, $0C, nE3, nG2, nE3, nG2, nE3, nG2
	dc.b	nE3, nG2, $0C, nE3, nG2, nE3, nG2, nE3, nG2, nE3, nB2, nF3
	dc.b	nB2, nF3, nB2, nF3, nB2, nF3, nB2, nF3, nB2, nF3, nB2, nF3
	dc.b	nB2, nF3, nAb2, $60, nG2, nG2, $0C, nE3, nG2, nE3, nG2, nE3
	dc.b	nG2, nE3, nG2, $0C, nE3, nG2, nE3, nG2, nE3, nG2, nE3
	smpsStop

; PSG2 Data
Snd_Ending_PSG2:
	smpsPSGvoice        sTone_03
	dc.b	nRst, $06

Snd_Ending_Loop03:
	dc.b	nC4, $0C
	smpsPSGAlterVol     $01
	dc.b	nG4
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Snd_Ending_Loop03
	smpsPSGAlterVol     $F8
	dc.b	nG3, $0C, nC3, nG3, nC3, nG3, nC3, nG3, nC3, nG3, $0C, nC3
	dc.b	nG3, nC3, nG3, nC3, nG3, nC3, nG3, nD3, nG3, nD3, nG3, nD3
	dc.b	nG3, nD3, nG3, nD3, nG3, nD3, nG3, nD3, nG3, nD3, $06, nF2
	dc.b	$60, nD2, nEb2, $60, nD2, $66, nG3, $0C, nC3, nG3, nC3, nG3
	dc.b	nC3, nG3, nC3, nG3, $0C, nC3, nG3, nC3, nG3, nC3, nG3, nC3
	dc.b	nG3, nD3, nG3, nD3, nG3, nD3, nG3, nD3, nG3, nD3, nG3, nD3
	dc.b	nG3, nD3, nG3, nD3, $06, nEb2, $60, nD2, nRst, $06, nG3, $0C
	dc.b	nC3, nG3, nC3, nG3, nC3, nG3, nC3, nG3, nC3, nG3, nC3, nG3
	dc.b	nC3, nG3, nC3
	smpsStop

; PSG3 Data
Snd_Ending_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $60

Snd_Ending_Loop02:
	smpsCall            Snd_Ending_Call01
	smpsLoop            $00, $10, Snd_Ending_Loop02
	smpsStop

Snd_Ending_Call01:
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
Snd_Ending_DAC:
	smpsPan             panCenter, $00
	dc.b	dCrashCymbal, $06, nRst, nRst, nRst, nRst, nRst, nRst, dElectricMidTom, nRst, dElectricMidTom, dElectricMidTom
	dc.b	nRst, dElectricLowTom, dElectricLowTom, dElectricFloorTom, nRst, dCrashCymbal, $06, nRst, nRst, nRst, dMuffledSnare, nRst
	dc.b	nRst, dMuffledSnare, nRst, nRst, dKickS3, nRst, dMuffledSnare, dKickS3, dKickS3, nRst, dKickS3, $06
	dc.b	nRst, nRst, nRst, dMuffledSnare, nRst, nRst, dMuffledSnare, nRst, nRst, dKickS3, nRst, dMuffledSnare
	dc.b	dKickS3, dKickS3, nRst, dKickS3, $06, nRst, nRst, nRst, dMuffledSnare, nRst, nRst, dMuffledSnare
	dc.b	nRst, nRst, dKickS3, nRst, dMuffledSnare, dKickS3, dKickS3, nRst, dKickS3, $06, nRst, nRst
	dc.b	nRst, dMuffledSnare, nRst, nRst, dMuffledSnare, nRst, nRst, dKickS3, nRst, dMuffledSnare, dKickS3, dKickS3
	dc.b	nRst, dCrashCymbal, $06, nRst, nRst, nRst, dMuffledSnare, nRst, nRst, dMuffledSnare, dKickS3, nRst
	dc.b	dKickS3, nRst, dMuffledSnare, nRst, dKickS3, dKickS3, dKickS3, $06, nRst, nRst, nRst, dMuffledSnare
	dc.b	nRst, nRst, dMuffledSnare, dKickS3, nRst, dMuffledSnare, nRst, dMuffledSnare, nRst, dMuffledSnare, dMuffledSnare, dKickS3
	dc.b	$06, nRst, nRst, nRst, dMuffledSnare, nRst, nRst, dMuffledSnare, dKickS3, nRst, dKickS3, nRst
	dc.b	dMuffledSnare, nRst, dKickS3, dKickS3, dKickS3, $06, nRst, nRst, nRst, dMuffledSnare, nRst, nRst
	dc.b	dMuffledSnare, dKickS3, nRst, dMuffledSnare, dMuffledSnare, dMuffledSnare, dMuffledSnare, dMuffledSnare, dMuffledSnare, dCrashCymbal, $06, nRst
	dc.b	nRst, nRst, dMuffledSnare, nRst, nRst, dMuffledSnare, nRst, nRst, dKickS3, nRst, dMuffledSnare, dKickS3
	dc.b	dKickS3, nRst, dKickS3, $06, nRst, nRst, nRst, dMuffledSnare, nRst, nRst, dMuffledSnare, nRst
	dc.b	nRst, dKickS3, nRst, dMuffledSnare, dKickS3, dKickS3, nRst, dKickS3, $06, nRst, nRst, nRst
	dc.b	dMuffledSnare, nRst, nRst, dMuffledSnare, nRst, nRst, dKickS3, nRst, dMuffledSnare, dKickS3, dKickS3, nRst
	dc.b	dKickS3, $06, nRst, nRst, nRst, dMuffledSnare, nRst, nRst, dMuffledSnare, nRst, nRst, dKickS3
	dc.b	nRst, dMuffledSnare, dKickS3, dKickS3, nRst, dCrashCymbal, $06, nRst, nRst, nRst, dMuffledSnare, nRst
	dc.b	nRst, dMuffledSnare, dKickS3, nRst, dKickS3, nRst, dMuffledSnare, nRst, dKickS3, dKickS3, dKickS3, $06
	dc.b	nRst, nRst, nRst, dMuffledSnare, nRst, nRst, dMuffledSnare, dKickS3, nRst, dMuffledSnare, nRst, dMuffledSnare
	dc.b	nRst, dMuffledSnare, dMuffledSnare, dKickS3, $06, nRst, nRst, nRst, dMuffledSnare, nRst, nRst, dMuffledSnare
	dc.b	nRst, nRst, dKickS3, nRst, dMuffledSnare, dKickS3, dKickS3, nRst, dMuffledSnare, dMuffledSnare, dMuffledSnare, dKickS3
	dc.b	nRst, dMuffledSnare, dKickS3, dMuffledSnare, dMuffledSnare, nRst, dMuffledSnare, nRst, dKickS3, dMuffledSnare, dMuffledSnare, dCrashCymbal
	smpsStop

Snd_Ending_Voices:
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
;	$01, $23, $14, $04, 	$1F, $14, $0F, $0F, 	$00, $04, $04, $04
;	$00, $00, $00, $00, 	$00, $29, $29, $29, 	$1D, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $02, $00
	smpsVcCoarseFreq    $04, $04, $03, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $0F, $14, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $04, $04, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $02, $02, $00
	smpsVcReleaseRate   $09, $09, $09, $00
	smpsVcTotalLevel    $00, $00, $00, $1D

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

; Unused voice
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

