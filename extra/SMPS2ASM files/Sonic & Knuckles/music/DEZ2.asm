Snd_DEZ2_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_DEZ2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       Snd_DEZ2_DAC
	smpsHeaderFM        Snd_DEZ2_FM1,	$00, $0F
	smpsHeaderFM        Snd_DEZ2_FM2,	$00, $0C
	smpsHeaderFM        Snd_DEZ2_FM3,	$00, $0F
	smpsHeaderFM        Snd_DEZ2_FM4,	$00, $0F
	smpsHeaderFM        Snd_DEZ2_FM5,	$00, $16
	smpsHeaderPSG       Snd_DEZ2_PSG1,	$E8, $02, $00, $00
	smpsHeaderPSG       Snd_DEZ2_PSG2,	$E8, $02, $00, $00
	smpsHeaderPSG       Snd_DEZ2_PSG3,	$E8, $02, $00, $00

; FM1 Data
Snd_DEZ2_FM1:
	smpsModSet          $0D, $01, $02, $06
	smpsPan             panCenter, $00

Snd_DEZ2_Loop0E:
	smpsSetvoice        $00
	dc.b	nRst, $18, nG4, $0B, nRst, $0D, nF4, $0B, nRst, $25, nE4, $0C
	dc.b	nF4, nRst, nG4, nRst, nF4, $24, nRst, $18, nG4, $0B, nRst, $0D
	dc.b	nF4, $0B, nRst, $25, nE4, $0C, nF4, nRst, nG4, nRst, nF4, nRst
	dc.b	nF4, $7F, smpsNoAttack, nF4, $29, nE4, $0B, nRst, $0D, nF4, $6C, nA4
	dc.b	$06, nBb4, nA4, nRst, nG4, nA4, nG4, nRst, nF4, nG4, nF4, nRst
	dc.b	nE4, nF4, nE4, nRst
	smpsLoop            $00, $02, Snd_DEZ2_Loop0E
	smpsSetvoice        $03

Snd_DEZ2_Loop0F:
	dc.b	nAb3, $06, nBb3, nC4, nEb4
	smpsLoop            $00, $04, Snd_DEZ2_Loop0F

Snd_DEZ2_Loop10:
	dc.b	nBb3, $06, nC4, nD4, nF4
	smpsLoop            $00, $04, Snd_DEZ2_Loop10
	dc.b	nRst, $60, nRst, $06, nBb4, $12, nA4, $06, nRst, nG4, nRst, nBb4
	dc.b	nRst, nG4, nA4, nRst, nBb4, $12

Snd_DEZ2_Loop11:
	dc.b	nAb3, $06, nBb3, nC4, nEb4
	smpsLoop            $00, $04, Snd_DEZ2_Loop11

Snd_DEZ2_Loop12:
	dc.b	nBb3, $06, nC4, nD4, nF4
	smpsLoop            $00, $04, Snd_DEZ2_Loop12
	dc.b	nRst, $60, nRst, $06, nBb4, $12, nA4, $06, nRst, nG4, nRst, nBb4
	dc.b	nG4, nRst, nC5, nRst, nBb4, nRst, nG4
	smpsJump            Snd_DEZ2_FM1

; Unreachable
	smpsStop

; FM2 Data
Snd_DEZ2_FM2:
	smpsSetvoice        $01
	smpsModSet          $0D, $01, $02, $06
	smpsPan             panCenter, $00

Snd_DEZ2_Loop0C:
	dc.b	nG1, $0C, nG1, nG1, nF2, $06, nG2, nG1, $0C, nG1, nG1, $06
	dc.b	nD2, nG1, $0C, nG1, nG1, nG1, nF2, $06, nG2, nG1, $0C, nG1
	dc.b	nC2, $06, nD2, nG1, $0C, nG1, nG1, nG1, nF2, $06, nG2, nG1
	dc.b	$0C, nG1, nC2, $06, nD2, nG1, $0C, nG1, nG1, nG1, nF2, $06
	dc.b	nG2, nG1, $0C, nG1, nC2, $06, nD2, nG1, $0C, nBb1, nBb1, nBb1
	dc.b	nBb1, nBb1, nBb1, nBb1, nAb1, $06, nBb1, nBb1, $0C, nBb1, nBb1, nBb1
	dc.b	nBb1, nBb1, nBb1, nBb1, nBb1, nBb1, nBb1, nBb1, nBb1, nBb1, nBb1, nAb1
	dc.b	$06, nBb1, nBb1, $0C, nBb1, nBb1, nBb1, nBb1, nBb1, nBb1, nBb1
	smpsLoop            $00, $02, Snd_DEZ2_Loop0C

Snd_DEZ2_Loop0D:
	dc.b	nAb1, $0C, nAb1, nAb1, $03, nRst, nAb2, nRst, nAb1, nRst, nAb2, nRst
	dc.b	nAb1, $0C, nAb1, nAb1, $03, nRst, nAb2, nRst, nAb1, nRst, nAb2, nRst
	dc.b	nBb1, $0C, nBb1, nBb1, $03, nRst, nBb2, nRst, nBb1, nRst, nBb2, nRst
	dc.b	nBb1, $0C, nBb1, nBb1, $03, nRst, nBb2, nRst, nBb1, nRst, nBb2, nRst
	dc.b	nC2, $06, nC2, $03, nRst, nBb2, $06, nC3, $03, nRst, nF2, $06
	dc.b	nG2, $03, nRst, nC2, nRst, nBb1, nRst, nC2, $06, nBb1, nC2, $03
	dc.b	nRst, nC2, $06, nRst, nC2, nRst, nC2, nC2, $0C, nC2, nRst, $48
	smpsLoop            $00, $02, Snd_DEZ2_Loop0D
	smpsJump            Snd_DEZ2_FM2

; Unreachable
	smpsStop

; FM3 Data
Snd_DEZ2_FM3:
	smpsSetvoice        $02
	smpsModSet          $0D, $01, $02, $06
	smpsPan             panRight, $00

Snd_DEZ2_Loop0A:
	smpsPan             panRight, $00
	dc.b	nG2, $06, nBb2, nG2, nE2, nRst, $30
	smpsPan             panLeft, $00
	dc.b	nBb3, $06, nC4, nE4, nC4, nRst, $18
	smpsPan             panRight, $00
	dc.b	nEb3, $06, nG3, nF3, nBb3, nRst, $30
	smpsPan             panLeft, $00
	dc.b	nG2, $06, nBb2, nG2, nE2, nRst, $30
	smpsPan             panRight, $00
	dc.b	nBb3, $06, nC4, nE4, nC4, nRst, $18
	smpsPan             panLeft, $00
	dc.b	nEb3, $06, nG3, nF3, nBb3, nRst, $30, nRst, $18
	smpsPan             panRight, $00
	dc.b	nBb4, $06, nA4, nBb4, nBb4, nBb5, nA5, nBb5, nBb5, nBb4, nA4, nBb4
	dc.b	nBb4, nRst, $18
	smpsPan             panLeft, $00
	dc.b	nBb3, $06, nF3, nFs3, nD3, nEb3, nE3, nBb2, nB2, nG2, nAb2, nE2
	dc.b	nFs2, nRst, $18
	smpsPan             panRight, $00
	dc.b	nBb4, $06, nA4, nBb4, nBb4, nBb5, nA5, nBb5, nBb5, nBb4, nA4, nBb4
	dc.b	nBb4, nRst, $18
	smpsPan             panLeft, $00
	dc.b	nBb3, $06, nF3, nFs3, nD3, nEb3, nE3, nBb2, nB2, nG2, nAb2, nE2
	dc.b	nFs2
	smpsLoop            $00, $02, Snd_DEZ2_Loop0A

Snd_DEZ2_Loop0B:
	dc.b	nRst, $60
	smpsLoop            $00, $08, Snd_DEZ2_Loop0B
	smpsJump            Snd_DEZ2_FM3

; Unreachable
	smpsStop

; FM4 Data
Snd_DEZ2_FM4:
	smpsModSet          $0D, $01, $02, $06
	smpsPan             panLeft, $00
	smpsSetvoice        $00

Snd_DEZ2_Loop05:
	dc.b	nRst, $18, nE4, $0B, nRst, $0D, nD4, $0B, nRst, $25, nC4, $0C
	dc.b	nD4, $0B, nRst, $0D, nE4, $0B, nRst, $0D, nD4, $24, nRst, $18
	dc.b	nE4, $0B, nRst, $0D, nD4, $0B, nRst, $25, nC4, $0C, nD4, $0B
	dc.b	nRst, $0D, nE4, $0B, nRst, $0D, nD4, $0B, nRst, $0D, nD4, $7F
	dc.b	smpsNoAttack, nD4, $29, nC4, $0B, nRst, $0D, nD4, $6C, nA3, $06, nBb3
	dc.b	nA3, nRst, nG3, nA3, nG3, nRst, nF3, nG3, nF3, nRst, nE3, nF3
	dc.b	nE3, nRst
	smpsLoop            $00, $02, Snd_DEZ2_Loop05
	smpsSetvoice        $03

Snd_DEZ2_Loop06:
	dc.b	nAb2, $06, nBb2, nC3, nEb3
	smpsLoop            $00, $04, Snd_DEZ2_Loop06

Snd_DEZ2_Loop07:
	dc.b	nBb2, $06, nC3, nD3, nF3
	smpsLoop            $00, $04, Snd_DEZ2_Loop07
	dc.b	nRst, $60, nRst, $06, nG4, $12, nF4, $06, nRst, nE4, nRst, nG4
	dc.b	nRst, nE4, nF4, $05, nRst, $07, nG4, $12

Snd_DEZ2_Loop08:
	dc.b	nAb2, $06, nBb2, nC3, nEb3
	smpsLoop            $00, $04, Snd_DEZ2_Loop08

Snd_DEZ2_Loop09:
	dc.b	nBb2, $06, nC3, nD3, nF3
	smpsLoop            $00, $04, Snd_DEZ2_Loop09
	dc.b	nRst, $60, nRst, $06, nG4, $12, nF4, $06, nRst, nE4, nRst, nG4
	dc.b	nE4, nRst, nA4, nRst, nG4, nRst, nE4
	smpsJump            Snd_DEZ2_FM4

; Unreachable
	smpsStop

; FM5 Data
Snd_DEZ2_FM5:
	dc.b	nRst, $10

Snd_DEZ2_Jump00:
	smpsModSet          $0D, $01, $02, $06
	smpsPan             panCenter, $00

Snd_DEZ2_Loop00:
	smpsSetvoice        $00
	dc.b	nRst, $18, nG4, $0B, nRst, $0D, nF4, $0B, nRst, $25, nE4, $0C
	dc.b	nF4, nRst, nG4, nRst, nF4, $24, nRst, $18, nG4, $0B, nRst, $0D
	dc.b	nF4, $0B, nRst, $25, nE4, $0C, nF4, nRst, nG4, nRst, nF4, nRst
	dc.b	nF4, $7F, smpsNoAttack, nF4, $29, nE4, $0B, nRst, $0D, nF4, $6C, nA4
	dc.b	$06, nBb4, nA4, nRst, nG4, nA4, nG4, nRst, nF4, nG4, nF4, nRst
	dc.b	nE4, nF4, nE4, nRst
	smpsLoop            $00, $02, Snd_DEZ2_Loop00
	smpsSetvoice        $03

Snd_DEZ2_Loop01:
	dc.b	nAb3, $06, nBb3, nC4, nEb4
	smpsLoop            $00, $04, Snd_DEZ2_Loop01

Snd_DEZ2_Loop02:
	dc.b	nBb3, $06, nC4, nD4, nF4
	smpsLoop            $00, $04, Snd_DEZ2_Loop02
	dc.b	nRst, $60, nRst, $06, nBb4, $12, nA4, $06, nRst, nG4, nRst, nBb4
	dc.b	nRst, nG4, nA4, nRst, nBb4, $12

Snd_DEZ2_Loop03:
	dc.b	nAb3, $06, nBb3, nC4, nEb4
	smpsLoop            $00, $04, Snd_DEZ2_Loop03

Snd_DEZ2_Loop04:
	dc.b	nBb3, $06, nC4, nD4, nF4
	smpsLoop            $00, $04, Snd_DEZ2_Loop04
	dc.b	nRst, $60, nRst, $06, nBb4, $12, nA4, $06, nRst, nG4, nRst, nBb4
	dc.b	nG4, nRst, nC5, nRst, nBb4, nRst, nG4
	smpsJump            Snd_DEZ2_Jump00

; Unreachable
	smpsStop

; DAC Data
Snd_DEZ2_DAC:
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dSnareS3
	smpsLoop            $00, $17, Snd_DEZ2_DAC
	dc.b	dSnareS3, $0C, dSnareS3, nRst, $48
	smpsJump            Snd_DEZ2_DAC

; Unreachable
	smpsStop

; PSG1 Data
Snd_DEZ2_PSG1:
	smpsStop

; PSG2 Data
Snd_DEZ2_PSG2:
	smpsStop

; Unreachable
	smpsStop

; PSG3 Data
Snd_DEZ2_PSG3:
	smpsStop

Snd_DEZ2_Voices:
;	Voice $00
;	$10
;	$42, $51, $66, $41, 	$1F, $1F, $5F, $1F, 	$04, $08, $08, $04
;	$00, $0F, $00, $00, 	$18, $38, $58, $18, 	$2D, $1E, $19, $85
	smpsVcAlgorithm     $00
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $06, $05, $04
	smpsVcCoarseFreq    $01, $06, $01, $02
	smpsVcRateScale     $00, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $08, $08, $04
	smpsVcDecayRate2    $00, $00, $0F, $00
	smpsVcDecayLevel    $01, $05, $03, $01
	smpsVcReleaseRate   $08, $08, $08, $08
	smpsVcTotalLevel    $05, $19, $1E, $2D

;	Voice $01
;	$38
;	$75, $13, $71, $11, 	$1F, $5F, $1F, $1F, 	$10, $0D, $03, $04
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$1F, $16, $1D, $81
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $07, $01, $07
	smpsVcCoarseFreq    $01, $01, $03, $05
	smpsVcRateScale     $00, $00, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $03, $0D, $10
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $01, $1D, $16, $1F

;	Voice $02
;	$02
;	$71, $52, $49, $11, 	$17, $16, $15, $17, 	$0A, $07, $0C, $0C
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$11, $1D, $1D, $83
	smpsVcAlgorithm     $02
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $04, $05, $07
	smpsVcCoarseFreq    $01, $09, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $17, $15, $16, $17
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0C, $07, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $03, $1D, $1D, $11

;	Voice $03
;	$3D
;	$43, $05, $23, $71, 	$11, $16, $55, $D5, 	$01, $01, $01, $01
;	$08, $00, $09, $00, 	$89, $F8, $F9, $F8, 	$1B, $88, $8A, $88
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $02, $00, $04
	smpsVcCoarseFreq    $01, $03, $05, $03
	smpsVcRateScale     $03, $01, $00, $00
	smpsVcAttackRate    $15, $15, $16, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $01, $01
	smpsVcDecayRate2    $00, $09, $00, $08
	smpsVcDecayLevel    $0F, $0F, $0F, $08
	smpsVcReleaseRate   $08, $09, $08, $09
	smpsVcTotalLevel    $08, $0A, $08, $1B

; Unused voice:
;	Voice $04
;	$03
;	$61, $51, $23, $41, 	$10, $10, $0F, $15, 	$1C, $01, $06, $05
;	$05, $01, $05, $01, 	$C9, $0C, $D9, $C9, 	$18, $17, $17, $83
	smpsVcAlgorithm     $03
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $02, $05, $06
	smpsVcCoarseFreq    $01, $03, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $15, $0F, $10, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $06, $01, $1C
	smpsVcDecayRate2    $01, $05, $01, $05
	smpsVcDecayLevel    $0C, $0D, $00, $0C
	smpsVcReleaseRate   $09, $09, $0C, $09
	smpsVcTotalLevel    $03, $17, $17, $18

