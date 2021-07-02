Snd_PPZ2_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_PPZ2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $1C

	smpsHeaderDAC       Snd_PPZ2_DAC
	smpsHeaderFM        Snd_PPZ2_FM1,	$00, $11
	smpsHeaderFM        Snd_PPZ2_FM2,	$0C, $0E
	smpsHeaderFM        Snd_PPZ2_FM3,	$00, $12
	smpsHeaderFM        Snd_PPZ2_FM4,	$00, $12
	smpsHeaderFM        Snd_PPZ2_FM5,	$00, $1C
	smpsHeaderPSG       Snd_PPZ2_PSG1,	$F4, $02, $00, $00
	smpsHeaderPSG       Snd_PPZ2_PSG2,	$F4, $04, $00, $00
	smpsHeaderPSG       Snd_PPZ2_PSG3,	$23, $02, $00, $00

; FM1 Data
Snd_PPZ2_FM1:
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $01, $08

Snd_PPZ2_Jump00:
	smpsSetvoice        $06
	dc.b	nAb4, $06, nC4, nEb4, nG4, $0C, nF4, $06, nEb4, nF4, $0C, nRst
	dc.b	$06, nC4, nF4, nC5, $18, nAb4, $06, nC4, nEb4, nG4, $0C, nF4
	dc.b	$06, nEb4, nF4, $0C, nRst, $06, nC4, nF4, nC5, $18, nAb4, $06
	dc.b	nC4, nEb4, nG4, $0C, nF4, $06, nEb4, nF4, $0C, nRst, $06, nC4
	dc.b	nF4, nC5, $18, nAb4, $0C, nEb4, $06, nC5, $0C, nBb4, $06, nAb4
	dc.b	nBb4, nG4, $0C, nC5, nBb4, $06, nAb4, nG4, nEb4, nAb4, $06, nC4
	dc.b	nEb4, nG4, $0C, nEb4, $06, nF4, nEb4, nF4, nBb3, nC4, nF4, nC5
	dc.b	$18, nAb4, $06, nC4, nEb4, nG4, nBb3, nEb4, nF4, nEb4, nF4, nBb3
	dc.b	nC4, nF4, nC5, $18, nAb4, $06, nC4, nEb4, nG4, $0C, nEb4, $06
	dc.b	nF4, nEb4, nF4, nBb3, nC4, nF4, nC5, $18, nAb4, $0C, nEb4, $06
	dc.b	nC5, $0C, nBb4, $06, nAb4, nBb4, nG4, $0C, nC5, nBb4, $06, nAb4
	dc.b	nG4, nEb4
	smpsSetvoice        $00
	dc.b	nF4, $24, nRst, $0C, nF4, $10, nG4, nAb4, nBb4, $18, nAb4, nG4
	dc.b	nEb4, $12, nRst, $06, nF4, $24, nRst, $0C, nF4, $10, nG4, nAb4
	dc.b	nBb4, $30, nC5, $24, nRst, $0C, nF4, $24, nRst, $0C, nF4, $10
	dc.b	nG4, nAb4, nBb4, $18, nAb4, nG4, nEb4, $12, nRst, $06, nF4, $24
	dc.b	nRst, $0C, nF4, $10, nG4, nAb4, nEb4, $30, nBb4, $2A, nRst, $06
	smpsSetvoice        $03
	dc.b	nF4, $30, nC5, nAb4, $48, nG4, $0C, nAb4, nBb4, $30, nEb5, nG4
	dc.b	$60, nF4, $30, nC5, nAb4, $48, nG4, $0C, nAb4, nBb4, $30, nEb4
	dc.b	nEb5, $60
	smpsSetvoice        $06
	dc.b	nAb4, $06, nC4, nEb4, nG4, $0C, nF4, $06, nEb4, nF4, $0C, nRst
	dc.b	$06, nC4, nF4, nC5, $18, nAb4, $06, nC4, nEb4, nG4, $0C, nF4
	dc.b	$06, nEb4, nF4, $0C, nRst, $06, nC4, nF4, nC5, $18, nAb4, $06
	dc.b	nC4, nEb4, nG4, $0C, nF4, $06, nEb4, nF4, $0C, nRst, $06, nC4
	dc.b	nF4, nC5, $18, nAb4, $0C, nEb4, $06, nC5, $0C, nBb4, $06, nAb4
	dc.b	nBb4, nG4, $0C, nC5, nBb4, $06, nAb4, nG4, nEb4, nAb4, $06, nC4
	dc.b	nEb4, nG4, $0C, nEb4, $06, nF4, nEb4, nF4, nBb3, nC4, nF4, nC5
	dc.b	$18, nAb4, $06, nC4, nEb4, nG4, nBb3, nEb4, nF4, nEb4, nF4, nBb3
	dc.b	nC4, nF4, nC5, $18, nAb4, $06, nC4, nEb4, nG4, $0C, nEb4, $06
	dc.b	nF4, nEb4, nF4, nBb3, nC4, nF4, nC5, $18, nAb4, $0C, nEb4, $06
	dc.b	nC5, $0C, nBb4, $06, nAb4, nBb4, nG4, $0C, nC5, nBb4, $06, nAb4
	dc.b	nG4, nEb4
	smpsSetvoice        $00
	dc.b	$60, nRst, nRst, $10, nC6, nG5, nAb5, nEb5, nG4, nC4, $30, nEb4
	dc.b	nRst, $60, nRst, $10, nC6, nG5, nAb5, nEb5, nG4, nEb4, nC6, nG5
	dc.b	nAb5, nEb5, nG4, nAb4, $30, nC5
	smpsSetvoice        $02
	smpsFMAlterVol      $03
	dc.b	nRst, $60, nAb5, $06, nG5, nEb5, nB4, nAb4, nEb4, nB3, nAb3, nEb4
	dc.b	nB3, nAb3, nEb3, nB2, nAb2, nRst, $0C, nCs6, $06, nC6, nAb5, nF5
	dc.b	nCs5, nAb4, nF4, nCs4, nAb4, nF4, nCs4, nAb3, nF3, nCs3, nRst, $0C
	dc.b	nRst, $60
	smpsFMAlterVol      $FD
	smpsSetvoice        $06
	dc.b	nC4, $06, nC4, nC4, nC4, nRst, nRst, nC4, nC4, nB3, $03, nA3
	dc.b	nF3, nE3, nD3, nB2, nBb2, nA2, nG2, nFs2, nF2, nE2, nD2, nC2
	dc.b	nB1, nBb1
	smpsJump            Snd_PPZ2_Jump00

; FM2 Data
Snd_PPZ2_FM2:
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $01, $02
	smpsSetvoice        $01

Snd_PPZ2_Jump02:
	smpsSetvoice        $01

Snd_PPZ2_Loop04:
	dc.b	nF1, $0C, $06, nF1, nF1, $0C, $06, nF1, nRst, nF1, nF1, nF1
	dc.b	nF1, $0C, $06, nF1, nEb1, $0C, $06, nEb1, nEb1, $0C, $06, nEb1
	dc.b	nRst, nEb1, nEb1, nEb1, nEb1, $0C, $06, nEb1, nF1, $0C, $06, nF1
	dc.b	nF1, $0C, $06, nF1, nRst, nF1, nF1, nF1, nF1, $0C, $06, nF1
	dc.b	nAb1, $0C, $06, nAb1, nAb1, $0C, $06, nAb1, nRst, nBb1, nBb1, nBb1
	dc.b	nBb1, nAb1, nG1, nEb1
	smpsLoop            $00, $02, Snd_PPZ2_Loop04

Snd_PPZ2_Loop05:
	dc.b	nF1, $0C, $06, nF1, nF1, $0C, $06, nF1, nRst, nF1, nF1, nF1
	dc.b	nF1, $0C, $06, nF1
	smpsLoop            $00, $03, Snd_PPZ2_Loop05
	dc.b	nBb0, $0C, $06, nBb0, nBb0, $0C, $06, nBb0, nRst, nEb1, nEb1, nEb1
	dc.b	nEb1, $0C, $06, nEb1

Snd_PPZ2_Loop06:
	dc.b	nF1, $0C, $06, nF1, nF1, $0C, $06, nF1, nRst, nF1, nF1, nF1
	dc.b	nF1, $0C, $06, nF1
	smpsLoop            $00, $03, Snd_PPZ2_Loop06
	dc.b	nAb1, $0C, $06, nAb1, nAb1, $0C, $06, nAb1, nRst, nBb1, nBb1, nBb1
	dc.b	nBb1, $0C, $06, nBb1

Snd_PPZ2_Loop07:
	dc.b	nBb1, $0C, $06, nBb1, nBb1, $0C, $06, nBb1, nRst, nBb1, nBb1, nBb1
	dc.b	nBb1, $0C, $06, nBb1
	smpsLoop            $00, $07, Snd_PPZ2_Loop07
	dc.b	nEb2, $0C, $06, nEb2, nEb2, $0C, $06, nEb2, nRst, nEb2, nEb2, nEb2
	dc.b	nEb2, $0C, $06, nEb2, nF1, $0C, $06, nF1, nF1, $0C, $06, nF1
	dc.b	nRst, nF1, nF1, nF1, nF1, $0C, $06, nF1, nEb1, $0C, $06, nEb1
	dc.b	nEb1, $0C, $06, nEb1, nRst, nEb1, nEb1, nEb1, nEb1, $0C, $06, nEb1
	dc.b	nF1, $0C, $06, nF1, nF1, $0C, $06, nF1, nRst, nF1, nF1, nF1
	dc.b	nF1, $0C, $06, nF1, nAb1, $0C, $06, nAb1, nAb1, $0C, $06, nAb1
	dc.b	nRst, nBb1, nBb1, nBb1, nBb1, nAb1, nG1, nEb1, nF1, $0C, $06, nF1
	dc.b	nF1, $0C, $06, nF1, nRst, nF1, nF1, nF1, nF1, $0C, $06, nF1
	dc.b	nEb1, $0C, $06, nEb1, nEb1, $0C, $06, nEb1, nRst, nEb1, nEb1, nEb1
	dc.b	nEb1, $0C, $06, nEb1, nF1, $0C, $06, nF1, nF1, $0C, $06, nF1
	dc.b	nRst, nF1, nF1, nF1, nF1, $0C, $06, nF1, nAb1, $0C, $06, nAb1
	dc.b	nAb1, $0C, $06, nAb1, nRst, nBb1, nBb1, nBb1, nBb1, nAb1, nG1, nEb1

Snd_PPZ2_Loop08:
	dc.b	nAb1, $0C, $06, nAb1, nAb1, $0C, $06, nAb1, nRst, nAb1, nAb1, nAb1
	dc.b	nAb1, $0C, $06, nAb1
	smpsLoop            $00, $0B, Snd_PPZ2_Loop08
	dc.b	nAb1, $0C, $06, nAb1, nAb1, $0C, $06, nAb1, nRst, $03, nBb1, $06
	dc.b	nC2, $03, nBb2, $06, nAb2, nEb2, nC2, nFs1, nG1, nF1, $06, nF1
	dc.b	nF1, nF1, nRst, nRst, nF1, nF1, nRst, $06, nF1, nAb1, nG1, nEb1
	dc.b	nBb1, nAb1, nG1
	smpsJump            Snd_PPZ2_Jump02

; FM3 Data
Snd_PPZ2_FM3:
	smpsPan             panLeft, $00
	smpsSetvoice        $03
	dc.b	nF4, $60, nG4, nF4, nAb4, $30, nG4, nF4, $60, nG4, nF4, nC5
	dc.b	$30, nBb4
	smpsSetvoice        $02
	dc.b	nF4, nF4, $10, nG4, nAb4, nBb4, $18, nAb4, nG4, nEb4, nF4, $30
	dc.b	$10, nG4, nAb4, nBb4, $30, nC5, nF4, nF4, $10, nG4, nAb4, nBb4
	dc.b	$18, nAb4, nG4, nEb4, nF4, $30, $10, nG4, nAb4, nEb4, $30, nBb4
	smpsSetvoice        $05
	smpsFMAlterVol      $FE
	smpsAlterPitch      $0C
	dc.b	nF3, $60, nF3, nG3, nEb3, nF3, nF3, nG3, nEb3
	smpsFMAlterVol      $02
	smpsAlterPitch      $F4
	smpsSetvoice        $03
	dc.b	nF4, nG4, nF4, nAb4, $30, nG4, nF4, $60, nG4, nF4, nC5, $30
	dc.b	nBb4
	smpsSetvoice        $03
	dc.b	nAb4, $2A, nRst, $06, nAb4, $10, nBb4, nC5, nD5, $30, nC5, smpsNoAttack, nC5
	dc.b	$60, nAb4, $30, $10, nBb4, nC5, nD5, $30, nEb5, smpsNoAttack, nEb5, $60
	dc.b	smpsNoAttack, nEb5, nAb4, $30, $10, nBb4, nC5, nD5, $30, nEb5, smpsNoAttack, nEb5
	dc.b	$60, nF5, smpsNoAttack, nF5, nC5, $06, nC5, nC5, nC5, nRst, nRst, nF5
	dc.b	nF5, nRst, $30
	smpsJump            Snd_PPZ2_FM3

; FM4 Data
Snd_PPZ2_FM4:
	smpsPan             panRight, $00
	smpsModSet          $01, $01, $01, $08

Snd_PPZ2_Jump01:
	smpsSetvoice        $03
	dc.b	nC4, $60, nEb4, nC4, nEb4, $30, nEb4, nC4, $60, nEb4, nC4, nAb4
	dc.b	$30, nF4
	smpsSetvoice        $02
	dc.b	nC4, nC4, $10, nC4, nC4, nEb4, $18, nEb4, nC4, nC4, nC4, $30
	dc.b	$10, nC4, nC4, nEb4, $30, nG4, nC4, nC4, $10, nC4, nC4, nEb4
	dc.b	$18, nEb4, nC4, nC4, nC4, $30, $10, nC4, nC4, nBb3, $30, nEb4
	smpsSetvoice        $05
	smpsFMAlterVol      $FE
	smpsAlterPitch      $0C
	dc.b	nBb2, $60, nCs3, nBb2, nBb2, nBb2, nCs3, nBb2, nBb2
	smpsFMAlterVol      $02
	smpsAlterPitch      $F4
	smpsSetvoice        $03
	dc.b	nC4, nEb4, nC4, nEb4, $30, nEb4, nC4, $60, nEb4, nC4, nAb4, $30
	dc.b	nF4
	smpsSetvoice        $03
	dc.b	nEb4, $24, nRst, $0C, nEb4, $10, nF4, nG4, nBb4, $30, nAb4, smpsNoAttack, nAb4
	dc.b	$60, nEb4, $30, $10, nF4, nG4, nBb4, $30, nAb4, smpsNoAttack, nAb4, $60
	dc.b	smpsNoAttack, nAb4, nEb4, $30, $10, nF4, nG4, nBb4, $30, nB4, smpsNoAttack, nB4
	dc.b	$60, nCs5, smpsNoAttack, nCs5, nF4, $06, nF4, nF4, nF4, nRst, nRst, nC5
	dc.b	nC5, nRst, $30
	smpsJump            Snd_PPZ2_Jump01

; FM5 Data
Snd_PPZ2_FM5:
	smpsModSet          $01, $01, $01, $06
	dc.b	nRst, $15
	smpsAlterNote       $01
	smpsJump            Snd_PPZ2_Jump00

; PSG1 Data
Snd_PPZ2_PSG1:
	smpsModSet          $03, $01, $01, $03
	smpsPSGvoice        sTone_11

Snd_PPZ2_Jump04:
	smpsPSGvoice        sTone_17
	dc.b	nRst, $60, nRst, nRst, nRst, nC5, $0C, nAb4, $06, nF4, $0C, nEb4
	dc.b	$06, nC4, nBb3, nAb3, nF3, nC3, $24, nC5, $0C, nBb4, $06, nAb4
	dc.b	$0C, nG4, $06, nEb4, nC4, nAb3, nG3, nEb3, $24, nC5, $0C, nAb4
	dc.b	$06, nF4, $0C, nC4, $06, nAb4, nG4, nEb4, nBb3, nF3, $24, nC3
	dc.b	$0C, nAb3, $06, nC4, $0C, nAb3, $06, nEb4, $0C, nBb2, nG3, $06
	dc.b	nAb3, nBb3, nAb3, nG3, nEb3
	smpsPSGvoice        sTone_17
	dc.b	nRst, $60, nRst, nRst, nRst, nC5, $0C, nAb4, $06, nF4, $0C, nEb4
	dc.b	$06, nC4, nBb3, nAb3, nF3, nC3, $24, nC5, $0C, nBb4, $06, nAb4
	dc.b	$0C, nG4, $06, nEb4, nC4, nAb3, nG3, nEb3, $24, nC5, $0C, nAb4
	dc.b	$06, nF4, $0C, nC4, $06, nAb4, nG4, nEb4, nBb3, nF3, $24, nC3
	dc.b	$0C, nAb3, $06, nC4, $0C, nAb3, $06, nEb4, $0C, nBb2, nG3, $06
	dc.b	nAb3, nBb3, nAb3, nG3, nEb3
	smpsPSGvoice        sTone_26
	dc.b	nRst, $60, nRst, nRst, nBb4, $18, nAb4, $0C, nG4, nEb4, $18, nBb3
	dc.b	nCs4, $60, nF4, nEb4, nBb3
	smpsPSGvoice        sTone_17
	dc.b	nRst, $60, nRst, nRst, nRst, nC5, $0C, nAb4, $06, nF4, $0C, nEb4
	dc.b	$06, nC4, nBb3, nAb3, nF3, nC3, $24, nC5, $0C, nBb4, $06, nAb4
	dc.b	$0C, nG4, $06, nEb4, nC4, nAb3, nG3, nEb3, $24, nC5, $0C, nAb4
	dc.b	$06, nF4, $0C, nC4, $06, nAb4, nG4, nEb4, nBb3, nF3, $24, nC3
	dc.b	$0C, nAb3, $06, nC4, $0C, nAb3, $06, nEb4, $0C, nBb2, nG3, $06
	dc.b	nAb3, nBb3, nAb3, nG3, nEb3
	smpsPSGvoice        sTone_17
	smpsAlterPitch      $F4
	dc.b	nAb4, $2A, nRst, $06, nAb4, $10, nBb4, nC5, nD5, $30, nC5, smpsNoAttack, nC5
	dc.b	$60, nAb4, $30, $10, nBb4, nC5, nD5, $30, nEb5, smpsNoAttack, nEb5, $60
	dc.b	smpsNoAttack, nEb5, nAb4, $30, $10, nBb4, nC5, nD5, $30, nEb5, smpsNoAttack, nEb5
	dc.b	$60, nF5, smpsNoAttack, nF5, nC5, $06, nC5, nC5, nC5, nRst, nRst, nF5
	dc.b	nF5, smpsNoAttack, nF5, $18, nRst, $18
	smpsAlterPitch      $0C
	smpsJump            Snd_PPZ2_Jump04

; PSG2 Data
Snd_PPZ2_PSG2:
	smpsModSet          $04, $01, $01, $04
	smpsPSGvoice        sTone_17
	dc.b	nRst, $0D
	smpsJump            Snd_PPZ2_Jump04

; PSG3 Data
Snd_PPZ2_PSG3:
	smpsPSGform         $E7

Snd_PPZ2_Jump03:
	smpsCall            Snd_PPZ2_Call00
	smpsJump            Snd_PPZ2_Jump03

Snd_PPZ2_Call00:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, nRst, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, nRst, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF
	smpsLoop            $00, $04, Snd_PPZ2_Call00
	smpsReturn

; DAC Data
Snd_PPZ2_DAC:
	dc.b	dCrashCymbal, $18, dKickS3, dKickS3, dKickS3

Snd_PPZ2_Loop00:
	dc.b	dKickS3, $18, dKickS3, dKickS3, dKickS3
	smpsLoop            $00, $06, Snd_PPZ2_Loop00
	dc.b	dKickS3, $18, dKickS3, dKickS3, dElectricFloorTom, $06, dElectricFloorTom, nRst, dElectricFloorTom, dCrashCymbal, $18, dSnareS3
	dc.b	dKickS3, dSnareS3

Snd_PPZ2_Loop01:
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dSnareS3
	smpsLoop            $00, $06, Snd_PPZ2_Loop01
	dc.b	dKickS3, $06, nRst, dKickS3, dKickS3, dSnareS3, nRst, dKickS3, dKickS3, dKickS3, dSnareS3, nRst
	dc.b	dKickS3, dElectricHighTom, nRst, dElectricMidTom, dElectricLowTom

Snd_PPZ2_Loop02:
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dSnareS3
	smpsLoop            $00, $07, Snd_PPZ2_Loop02
	dc.b	dKickS3, $06, dKickS3, nRst, dKickS3, dSnareS3, nRst, dKickS3, dKickS3, nRst, dSnareS3, nRst
	dc.b	dKickS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dCrashCymbal, $18, dKickS3, dKickS3, dKickS3

Snd_PPZ2_Loop03:
	dc.b	dKickS3, $18, dKickS3, dKickS3, dKickS3
	smpsLoop            $00, $06, Snd_PPZ2_Loop03
	dc.b	dKickS3, $06, nRst, nRst, dKickS3, dSnareS3, nRst, dKickS3, dKickS3, nRst, dSnareS3, nRst
	dc.b	nRst, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dCrashCymbal, $18, dSnareS3, dKickS3, dSnareS3, dKickS3, $06
	dc.b	nRst, nRst, nRst, dSnareS3, nRst, dKickS3, dKickS3, nRst, dSnareS3, dKickS3, nRst, dSnareS3
	dc.b	nRst, nRst, nRst, dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst, dKickS3, dKickS3
	dc.b	nRst, dSnareS3, dKickS3, nRst, dSnareS3, nRst, dSnareS3, dSnareS3, dCrashCymbal, $18, dSnareS3, dKickS3
	dc.b	dSnareS3, dKickS3, $18, dSnareS3, dKickS3, dSnareS3, dKickS3, $18, dSnareS3, dKickS3, dSnareS3, dKickS3
	dc.b	$06, nRst, nRst, nRst, dSnareS3, nRst, dKickS3, dKickS3, nRst, dSnareS3, dKickS3, nRst
	dc.b	dSnareS3, nRst, dSnareS3, dSnareS3, dCrashCymbal, $18, dSnareS3, dKickS3, dSnareS3, dKickS3, $18, dSnareS3
	dc.b	dKickS3, dSnareS3, dKickS3, $18, dSnareS3, dKickS3, dSnareS3, dKickS3, $18, dSnareS3, dKickS3, dSnareS3
	dc.b	$06, dSnareS3, nRst, dSnareS3, dKickS3, $06, dSnareS3, nRst, nRst, dSnareS3, dSnareS3, nRst
	dc.b	dSnareS3, dKickS3, dSnareS3, dSnareS3, dElectricHighTom, dElectricMidTom, dElectricLowTom, dElectricFloorTom, dElectricFloorTom, dKickS3, $06, dKickS3
	dc.b	dKickS3, dKickS3, nRst, nRst, dSnareS3, dSnareS3, nRst, dElectricLowTom, dElectricLowTom, dElectricFloorTom, dElectricFloorTom, dElectricFloorTom
	dc.b	dElectricFloorTom, dElectricFloorTom
	smpsJump            Snd_PPZ2_DAC

Snd_PPZ2_Voices:
;	Voice $00
;	$3D
;	$01, $02, $02, $02, 	$1F, $08, $8A, $0A, 	$08, $08, $08, $08
;	$00, $01, $00, $00, 	$0F, $1F, $1F, $1F, 	$1F, $88, $88, $87
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $01
	smpsVcRateScale     $00, $02, $00, $00
	smpsVcAttackRate    $0A, $0A, $08, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $08, $08, $08
	smpsVcDecayRate2    $00, $00, $01, $00
	smpsVcDecayLevel    $01, $01, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $07, $08, $08, $1F

;	Voice $01
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

;	Voice $02
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $01, 	$1F, $FF, $1F, $0F, 	$17, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $01, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $17

;	Voice $03
;	$3C
;	$71, $71, $11, $11, 	$17, $1E, $19, $1E, 	$04, $01, $07, $01
;	$00, $00, $00, $00, 	$F7, $F8, $F7, $F8, 	$1E, $80, $14, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $01, $07, $07
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1E, $19, $1E, $17
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $07, $01, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $08, $07, $08, $07
	smpsVcTotalLevel    $00, $14, $00, $1E

;	Voice $04
;	$3E
;	$07, $01, $02, $01, 	$1F, $1F, $1F, $1F, 	$0D, $06, $00, $00
;	$08, $06, $00, $00, 	$15, $0A, $0A, $0A, 	$1B, $80, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $06, $0D
	smpsVcDecayRate2    $00, $00, $06, $08
	smpsVcDecayLevel    $00, $00, $00, $01
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $00, $00, $00, $1B

;	Voice $05
;	$30
;	$32, $01, $05, $04, 	$08, $1B, $14, $15, 	$0B, $0B, $04, $08
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$42, $40, $20, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $03
	smpsVcCoarseFreq    $04, $05, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $15, $14, $1B, $08
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $04, $0B, $0B
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $20, $40, $42

;	Voice $06
;	$3C
;	$71, $71, $11, $11, 	$17, $1E, $19, $1E, 	$04, $01, $07, $01
;	$00, $00, $00, $00, 	$F7, $F8, $F7, $F8, 	$1E, $80, $0A, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $01, $07, $07
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1E, $19, $1E, $17
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $07, $01, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $08, $07, $08, $07
	smpsVcTotalLevel    $00, $0A, $00, $1E

