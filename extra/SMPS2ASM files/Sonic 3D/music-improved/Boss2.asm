Snd_Boss2_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_Boss2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $80

	smpsHeaderDAC       Snd_Boss2_DAC
	smpsHeaderFM        Snd_Boss2_FM1,	$18, $12
	smpsHeaderFM        Snd_Boss2_FM2,	$00, $0D
	smpsHeaderFM        Snd_Boss2_FM3,	$00, $12
	smpsHeaderFM        Snd_Boss2_FM4,	$00, $10
	smpsHeaderFM        Snd_Boss2_FM5,	$00, $10
	smpsHeaderPSG       Snd_Boss2_PSG1,	$00, $03, $00, $00
	smpsHeaderPSG       Snd_Boss2_PSG2,	$00, $03, $00, $00
	smpsHeaderPSG       Snd_Boss2_PSG3,	$23, $00, $00, $00

; FM1 Data
Snd_Boss2_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $01, $03
	dc.b	nC1, $06, nC1, $03, nC1, nC1, $06, nC1, $03, nC1, nC1, $06
	dc.b	nC1, $03, nC1, nC1, nC1, nD1, nE1, nC1, $06, nC1, $03, nC1
	dc.b	nC1, $06, nC1, $03, nC1, nC1, $06, nC1, $03, nC1, nC1, nC1
	dc.b	nD1, nE1

Snd_Boss2_Jump04:
	dc.b	nC1, $06, nC1, $03, nC1, nC1, $06, nC1, $03, nC1, nC1, $06
	dc.b	nC1, $03, nC1, nC1, nC1, nD1, nE1, nB0, $06, nB0, $03, nB0
	dc.b	nB0, $06, nB0, $03, nB0, nB0, $06, nB0, $03, nB0, nB0, nB0
	dc.b	nD1, nE1, nBb0, $06, nBb0, $03, nBb0, nBb0, $06, nBb0, $03, nBb0
	dc.b	nBb0, $06, nBb0, $03, nBb0, nBb0, nBb0, nD1, nEb1, nF0, $06, nF0
	dc.b	$03, nF0, nF0, $06, nF0, $03, nF0, nF0, $06, nF0, $03, nF0
	dc.b	nF0, nF0, nF1, nF0, nEb0, $06, nEb0, $03, nEb0, nEb0, $06, nEb0
	dc.b	$03, nEb0, nEb0, $06, nEb0, $03, nEb0, nEb0, nG0, nBb0, nEb0, nF0
	dc.b	$06, nF0, $03, nF0, nF0, $06, nF0, $03, nF0, nF0, $06, nF0
	dc.b	$03, nF0, nF0, nA0, nC1, nF0, nFs0, $06, nFs0, $03, nFs0, nFs0
	dc.b	$06, nFs0, $03, nFs0, nFs0, $06, nFs0, $03, nFs0, nFs0, nD0, nFs0
	dc.b	nD0, nG0, $06, nG0, $03, nG0, nG0, $06, nG0, $03, nG0, nG0
	dc.b	$06, nG0, $03, nG0, nG0, nG0, nAb0, nBb0, nC1, $06, nC1, $03
	dc.b	nC1, nC1, $06, nC1, $03, nC1, nC1, $06, nC1, $03, nC1, nC1
	dc.b	nC1, nD1, nE1, nB0, $06, nB0, $03, nB0, nB0, $06, nB0, $03
	dc.b	nB0, nB0, $06, nB0, $03, nB0, nB0, nB0, nD1, nE1, nBb0, $06
	dc.b	nBb0, $03, nBb0, nBb0, $06, nBb0, $03, nBb0, nBb0, $06, nBb0, $03
	dc.b	nBb0, nBb0, nBb0, nD1, nEb1, nF0, $06, nF0, $03, nF0, nF0, $06
	dc.b	nF0, $03, nF0, nF0, $06, nF0, $03, nF0, nF0, nF0, nF1, nF0
	dc.b	nEb0, $06, nEb0, $03, nEb0, nEb0, $06, nEb0, $03, nEb0, nEb0, $06
	dc.b	nEb0, $03, nEb0, nEb0, nG0, nBb0, nEb0, nE0, $06, nE0, $03, nE0
	dc.b	nE0, $06, nE0, $03, nE0, nE0, $06, nE0, $03, nE0, nE0, nBb0
	dc.b	nCs1, nE0, nF0, $06, nF0, $03, nF0, nF0, $06, nF0, $03, nF0
	dc.b	nF0, $06, nF0, $03, nF0, nF0, nD0, nF0, nD0, nG0, $06, nG0
	dc.b	$03, nG0, nG0, $06, nG0, $03, nG0, nG0, $06, nG0, $03, nG0
	dc.b	nG0, nG0, nAb0, nBb0
	smpsJump            Snd_Boss2_Jump04

; FM2 Data
Snd_Boss2_FM2:
	smpsSetvoice        $03
	smpsPan             panLeft, $00
	smpsAlterNote       $F8
	dc.b	nC1, $30, smpsNoAttack, $30
	smpsSetvoice        $04
	smpsAlterNote       $00

Snd_Boss2_Jump03:
	smpsPan             panCenter, $00
	smpsModSet          $03, $01, $01, $05
	dc.b	nC4, $0C, nG3, $06, nC4, $12, nEb4, $0C, nD4, $12, nB3, nG3
	dc.b	$0C, nC4, $0C, nG3, $06, nC4, $12, nEb4, $0C, nD4, $09, nEb4
	dc.b	nF4, $06, smpsNoAttack, nF4, $0C, nEb4, $06, nF4, nG4, $30, nAb4, nA4
	dc.b	nC5, $18, nB4, nRst, $06, nC4, $0C, nG3, $06, nC4, $0C, nEb4
	dc.b	nD4, $12, nB3, nG3, $0C, nRst, $06, nC4, $0C, nG3, $06, nC4
	dc.b	$0C, nEb4, nD4, $09, nEb4, nF4, $06, nF4, $0C, nEb4, $06, nF4
	dc.b	nG4, $30, nG4, nAb4, $09, nBb4, nC5, $06, nC5, $09, nC5, $02
	dc.b	smpsNoAttack, nD5, $07, nC5, $06, nBb4, $18, nB4
	smpsJump            Snd_Boss2_Jump03

; FM3 Data
Snd_Boss2_FM3:
	smpsSetvoice        $03
	smpsPan             panRight, $00
	smpsAlterNote       $08
	smpsFMAlterVol      $FB
	dc.b	nC1, $30, smpsNoAttack, $30
	smpsFMAlterVol      $05
	smpsSetvoice        $04
	smpsAlterNote       $04
	smpsPan             panCenter, $00
	smpsModSet          $03, $01, $01, $03
	dc.b	nRst, $07
	smpsJump            Snd_Boss2_Jump03

; FM4 Data
Snd_Boss2_FM4:
	smpsSetvoice        $06
	smpsPan             panCenter, $00

Snd_Boss2_Loop01:
	smpsModSet          $0B, $01, $EF, $11
	smpsAlterNote       $FC
	dc.b	nC6, $09
	smpsFMAlterVol      $09
	smpsLoop            $00, $05, Snd_Boss2_Loop01
	dc.b	nRst, $03
	smpsFMAlterVol      $D3
	dc.b	nRst, $30

Snd_Boss2_Jump02:
	smpsPan             panCenter, $00
	smpsModSet          $03, $01, $01, $04
	smpsAlterNote       $FC
	smpsSetvoice        $04
	dc.b	nG3, $0C, nEb3, $06, nG3, $12, nC4, $0C, nB3, $12, nG3, nD3
	dc.b	$0C, nG3, $0C, nEb3, $06, nG3, $12, nC4, $0C, nBb3, $09, nC4
	dc.b	nD4, $06, nD4, $0C, nC4, $06, nD4, nEb4, $12, nC4, nEb4, $0C
	dc.b	nF4, $12, nC4, nF4, $0C, nD4, $09, nEb4, nF4, $06, nF4, $0C
	dc.b	nD4, nG4, $30
	smpsSetvoice        $05
	smpsPan             panLeft, $00
	dc.b	nRst, $06, nG3, $0C, nEb3, $06, nG3, $0C, nC4, nB3, $12, nG3
	dc.b	nD3, $0C, nRst, $06, nG3, $0C, nEb3, $06, nG3, $0C, nC4, nBb3
	dc.b	$09, nC4, nD4, $06, nD4, $0C, nC4, $06, nD4, nEb4, $12, nC4
	dc.b	nEb4, $0C, nE4, $12, nC4, nE4, $0C, nF4, $30, nG4, $18, nG4
	smpsJump            Snd_Boss2_Jump02

; FM5 Data
Snd_Boss2_FM5:
	smpsSetvoice        $06
	smpsPan             panCenter, $00
	dc.b	nRst, $03

Snd_Boss2_Loop00:
	smpsModSet          $0B, $01, $EF, $11
	dc.b	nC6, $09
	smpsFMAlterVol      $09
	smpsLoop            $00, $05, Snd_Boss2_Loop00
	smpsFMAlterVol      $D3
	dc.b	nRst, $30

Snd_Boss2_Jump01:
	smpsPan             panCenter, $00
	smpsModSet          $03, $01, $01, $05
	smpsSetvoice        $01
	dc.b	nC2, $30, nG2, nEb2, nF2
	smpsSetvoice        $02
	dc.b	nEb2, nAb2, nD2, nG2, $18, nG2
	smpsSetvoice        $05
	smpsAlterNote       $04
	smpsPan             panRight, $00
	dc.b	nRst, $06, nG3, $0C, nEb3, $06, nG3, $0C, nC4, nB3, $12, nG3
	dc.b	nD3, $0C, nRst, $06, nG3, $0C, nEb3, $06, nG3, $0C, nC4, nBb3
	dc.b	$09, nC4, nD4, $06, nD4, $0C, nC4, $06, nD4, nEb4, $12, nC4
	dc.b	nEb4, $0C, nE4, $12, nC4, nE4, $0C, nF4, $30, nG4, $18, nG4
	smpsJump            Snd_Boss2_Jump01

; PSG1 Data
Snd_Boss2_PSG1:
	dc.b	nRst, $30, nRst

Snd_Boss2_Jump06:
	smpsPSGvoice        sTone_0A
	dc.b	nRst, $30, nRst, nRst, nRst, nEb2, nF2, nFs2, nC3, $18, nB2, nC1
	dc.b	$30, nD1, nEb1, nF1, nBb3, $06, nG4
	smpsPSGAlterVol     $02
	dc.b	nBb3, nG4
	smpsPSGAlterVol     $02
	dc.b	nBb3, nG4
	smpsPSGAlterVol     $02
	dc.b	nBb3, nG4
	smpsPSGAlterVol     $02
	smpsPSGAlterVol     $F8
	dc.b	nCs4, nG4
	smpsPSGAlterVol     $02
	dc.b	nCs4, nG4
	smpsPSGAlterVol     $02
	dc.b	nCs4, nG4
	smpsPSGAlterVol     $02
	dc.b	nCs4, nG4
	smpsPSGAlterVol     $02
	smpsPSGAlterVol     $F8
	dc.b	nEb1, $30
	smpsPSGAlterVol     $06
	dc.b	nG2, $06, nBb2
	smpsPSGAlterVol     $FE
	dc.b	nA2, nC3
	smpsPSGAlterVol     $FE
	dc.b	nBb2, nD3
	smpsPSGAlterVol     $FE
	dc.b	nC3, nEb3
	smpsPSGAlterVol     $FE
	smpsPSGAlterVol     $02
	smpsJump            Snd_Boss2_Jump06

; PSG2 Data
Snd_Boss2_PSG2:
	dc.b	nRst, $30, nRst

Snd_Boss2_Jump05:
	smpsPSGvoice        sTone_0A
	dc.b	nRst, $30, nRst, nRst, nRst, nG2, nC3, nC3, nF3, $18, nF3, nG1
	dc.b	$30, nG1, nG1, nAb1, nRst, $03, nEb4, $06, nBb4
	smpsPSGAlterVol     $02
	dc.b	nEb4, nBb4
	smpsPSGAlterVol     $02
	dc.b	nEb4, nBb4
	smpsPSGAlterVol     $02
	dc.b	nEb4, nBb4
	smpsPSGAlterVol     $02
	smpsPSGAlterVol     $F8
	dc.b	nE4, nBb4
	smpsPSGAlterVol     $02
	dc.b	nE4, nBb4
	smpsPSGAlterVol     $02
	dc.b	nE4, nBb4
	smpsPSGAlterVol     $02
	dc.b	nE4, nBb4, $03
	smpsPSGAlterVol     $02
	smpsPSGAlterVol     $F8
	dc.b	nAb1, $30
	smpsPSGAlterVol     $06
	dc.b	nRst, $03, nA2, $06, nC3
	smpsPSGAlterVol     $FE
	dc.b	nBb2, nD3
	smpsPSGAlterVol     $FE
	dc.b	nC3, nEb3
	smpsPSGAlterVol     $FE
	dc.b	nD3, nF3, $03
	smpsPSGAlterVol     $FE
	smpsPSGAlterVol     $02
	smpsJump            Snd_Boss2_Jump05

; PSG3 Data
Snd_Boss2_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        sTone_01
	smpsStop

; DAC Data
Snd_Boss2_DAC:
	dc.b	dCrashCymbal, $06, dKickS3, $03, dKickS3, dSnareS3, $06, dKickS3, $03, dKickS3, dKickS3, $06
	dc.b	dKickS3, $03, dKickS3, dSnareS3, $06, dKickS3, $03, dKickS3, dKickS3, $06, dKickS3, $03
	dc.b	dKickS3, dSnareS3, $06, dKickS3, $03, dKickS3, dKickS3, $06, dKickS3, $03, dKickS3, dSnareS3
	dc.b	dSnareS3, dSnareS3, dSnareS3

Snd_Boss2_Jump00:
	dc.b	dCrashCymbal, $06, dKickS3, $03, dKickS3, dSnareS3, $06, dKickS3, $03, dKickS3, dKickS3, $06
	dc.b	dKickS3, $03, dKickS3, dSnareS3, $06, dKickS3, $03, dKickS3, dKickS3, $06, dKickS3, $03
	dc.b	dKickS3, dSnareS3, $06, dKickS3, $03, dKickS3, dKickS3, $06, dKickS3, $03, dKickS3, dSnareS3
	dc.b	$06, dKickS3, $03, dKickS3, dKickS3, $06, dKickS3, $03, dKickS3, dSnareS3, $06, dKickS3
	dc.b	$03, dKickS3, dKickS3, $06, dKickS3, $03, dKickS3, dSnareS3, $06, dKickS3, $03, dKickS3
	dc.b	dKickS3, $06, dKickS3, $03, dKickS3, dSnareS3, $06, dKickS3, $03, dKickS3, dKickS3, $06
	dc.b	dKickS3, $03, dKickS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dKickS3, $06, dKickS3, $03, dKickS3
	dc.b	dSnareS3, $06, dKickS3, $03, dKickS3, dKickS3, $06, dKickS3, $03, dKickS3, dSnareS3, $06
	dc.b	dKickS3, $03, dKickS3, dKickS3, $06, dKickS3, $03, dKickS3, dSnareS3, $06, dKickS3, $03
	dc.b	dKickS3, dKickS3, $06, dKickS3, $03, dKickS3, dSnareS3, $06, dKickS3, $03, dKickS3, dKickS3
	dc.b	$06, dKickS3, $03, dKickS3, dSnareS3, $06, dKickS3, $03, dKickS3, dKickS3, $06, dKickS3
	dc.b	$03, dKickS3, dSnareS3, $06, dKickS3, $03, dKickS3, dKickS3, $06, dKickS3, $03, dKickS3
	dc.b	dSnareS3, $06, dKickS3, $03, dKickS3, dKickS3, $06, dKickS3, $03, dKickS3, dSnareS3, dSnareS3
	dc.b	dSnareS3, dSnareS3, dCrashCymbal, $06, dKickS3, $03, dKickS3, dSnareS3, $06, dKickS3, $03, dKickS3
	dc.b	dKickS3, $06, dKickS3, $03, dKickS3, dSnareS3, $06, dKickS3, $03, dKickS3, dKickS3, $06
	dc.b	dKickS3, $03, dKickS3, dSnareS3, $06, dKickS3, $03, dKickS3, dKickS3, $06, dKickS3, $03
	dc.b	dKickS3, dSnareS3, $06, dKickS3, $03, dKickS3, dKickS3, $06, dKickS3, $03, dKickS3, dSnareS3
	dc.b	$06, dKickS3, $03, dKickS3, dKickS3, $06, dKickS3, $03, dKickS3, dSnareS3, $06, dKickS3
	dc.b	$03, dKickS3, dKickS3, $06, dKickS3, $03, dKickS3, dSnareS3, $06, dKickS3, $03, dKickS3
	dc.b	dKickS3, $06, dKickS3, $03, dKickS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dCrashCymbal, $06, dKickS3
	dc.b	$03, dKickS3, dSnareS3, $06, dKickS3, $03, dKickS3, dKickS3, $06, dKickS3, $03, dKickS3
	dc.b	dSnareS3, $06, dKickS3, $03, dKickS3, dKickS3, $06, dKickS3, $03, dKickS3, dSnareS3, $06
	dc.b	dKickS3, $03, dKickS3, dKickS3, $06, dKickS3, $03, dKickS3, dSnareS3, $06, dKickS3, $03
	dc.b	dKickS3, dKickS3, $06, dKickS3, $03, dKickS3, dSnareS3, $06, dKickS3, $03, dKickS3, dKickS3
	dc.b	$06, dKickS3, $03, dKickS3, dSnareS3, $06, dKickS3, $03, dKickS3, dKickS3, $06, dKickS3
	dc.b	$03, dKickS3, dSnareS3, $06, dKickS3, $03, dKickS3, dKickS3, $06, dKickS3, $03, dKickS3
	dc.b	dSnareS3, dSnareS3, dSnareS3, dSnareS3
	smpsJump            Snd_Boss2_Jump00

Snd_Boss2_Voices:
;	Voice $00
;	$3D
;	$00, $01, $01, $01, 	$1F, $1F, $1F, $1F, 	$0E, $00, $00, $00
;	$00, $04, $04, $03, 	$4F, $2F, $2F, $2F, 	$1A, $88, $88, $88
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $0E
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $08, $08, $08, $1A

;	Voice $01
;	$04
;	$02, $02, $03, $03, 	$1F, $17, $1F, $17, 	$00, $0B, $00, $0B
;	$00, $00, $00, $00, 	$4F, $FF, $4F, $FF, 	$0A, $80, $0A, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $03, $03, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $17, $1F, $17, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $00, $0B, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $04, $0F, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $0A, $00, $0A

;	Voice $02
;	$04
;	$04, $04, $06, $06, 	$0F, $10, $0F, $10, 	$00, $0A, $00, $0A
;	$00, $09, $00, $09, 	$4F, $3F, $4F, $3F, 	$15, $80, $15, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $06, $06, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $0F, $10, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $00, $0A, $00
	smpsVcDecayRate2    $09, $00, $09, $00
	smpsVcDecayLevel    $03, $04, $03, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $15, $00, $15

;	Voice $03
;	$09
;	$77, $32, $02, $31, 	$04, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$06, $08, $08, $08, 	$00, $0F, $0F, $0F, 	$00, $09, $0D, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $03, $07
	smpsVcCoarseFreq    $01, $02, $02, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $04
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $08, $08, $08, $06
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $00
	smpsVcTotalLevel    $00, $0D, $09, $00

;	Voice $04
;	$35
;	$24, $02, $01, $12, 	$1C, $16, $15, $14, 	$02, $08, $07, $08
;	$02, $01, $01, $01, 	$10, $18, $18, $18, 	$18, $8B, $88, $88
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $02
	smpsVcCoarseFreq    $02, $01, $02, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $15, $16, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $07, $08, $02
	smpsVcDecayRate2    $01, $01, $01, $02
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $08, $08, $08, $00
	smpsVcTotalLevel    $08, $08, $0B, $18

;	Voice $05
;	$3D
;	$01, $22, $12, $02, 	$1F, $15, $15, $15, 	$00, $00, $00, $00
;	$00, $03, $02, $03, 	$00, $08, $08, $08, 	$14, $8B, $8C, $8D
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $02, $00
	smpsVcCoarseFreq    $02, $02, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $15, $15, $15, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $03, $02, $03, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $08, $08, $08, $00
	smpsVcTotalLevel    $0D, $0C, $0B, $14

;	Voice $06
;	$3B
;	$41, $12, $16, $74, 	$1F, $12, $1F, $1F, 	$04, $02, $04, $0A
;	$01, $01, $02, $02, 	$1F, $1F, $1F, $1F, 	$1C, $17, $18, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $01, $01, $04
	smpsVcCoarseFreq    $04, $06, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $04, $02, $04
	smpsVcDecayRate2    $02, $02, $01, $01
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $18, $17, $1C

