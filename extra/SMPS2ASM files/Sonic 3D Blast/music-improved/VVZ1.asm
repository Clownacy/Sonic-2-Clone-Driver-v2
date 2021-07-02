Snd_VVZ1_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_VVZ1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $1D

	smpsHeaderDAC       Snd_VVZ1_DAC
	smpsHeaderFM        Snd_VVZ1_FM1,	$00, $18
	smpsHeaderFM        Snd_VVZ1_FM2,	$0C, $0F
	smpsHeaderFM        Snd_VVZ1_FM3,	$F4, $10
	smpsHeaderFM        Snd_VVZ1_FM4,	$F4, $10
	smpsHeaderFM        Snd_VVZ1_FM5,	$00, $1C
	smpsHeaderPSG       Snd_VVZ1_PSG1,	$E8, $02, $00, $00
	smpsHeaderPSG       Snd_VVZ1_PSG2,	$E8, $04, $00, $00
	smpsHeaderPSG       Snd_VVZ1_PSG3,	$23, $02, $00, $00

; FM1 Data
Snd_VVZ1_FM1:
	smpsModSet          $0C, $01, $09, $07

Snd_VVZ1_Jump00:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nRst, $30

Snd_VVZ1_Jump03:
	dc.b	nRst, $60, nRst, nRst, nRst

Snd_VVZ1_Loop06:
	smpsCall            Snd_VVZ1_Call0A
	dc.b	nG3, $24, nF3, nEb3, $18, smpsNoAttack, $0C, nF3, $18, nEb3, nBb2, nB2
	dc.b	$0C
	smpsCall            Snd_VVZ1_Call0A
	dc.b	nG3, $24, nC4, $3C, smpsNoAttack, $60
	smpsLoop            $00, $02, Snd_VVZ1_Loop06

Snd_VVZ1_Loop07:
	dc.b	nAb4, $24, nF4, $18, nBb4, $0C, nAb4, nG4
	smpsLoop            $00, $05, Snd_VVZ1_Loop07
	dc.b	nAb4, $24, nG4, $18, nAb4, $0C, nG4, $18, nAb4, $60, smpsNoAttack, nF4

Snd_VVZ1_Loop08:
	dc.b	nAb4, $24, nF4, $18, nBb4, $0C, nAb4, nG4
	smpsLoop            $00, $05, Snd_VVZ1_Loop08
	dc.b	nAb4, $24, nG4, nEb4, $18, nF4, $60, smpsNoAttack, nF4
	smpsJump            Snd_VVZ1_Jump03

Snd_VVZ1_Call0A:
	dc.b	nC3, $24, nF3, nC4, $18, smpsNoAttack, $0C, nBb3, $18, nAb3, nG3, $0C
	dc.b	nF3, nAb3
	smpsReturn

; FM2 Data
Snd_VVZ1_FM2:
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $01, $02
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	smpsModSet          $07, $01, $03, $05
	dc.b	nRst, $30

Snd_VVZ1_Loop04:
	smpsCall            Snd_VVZ1_Call07
	smpsLoop            $00, $05, Snd_VVZ1_Loop04
	smpsCall            Snd_VVZ1_Call08
	smpsCall            Snd_VVZ1_Call09
	smpsCall            Snd_VVZ1_Call08
	dc.b	nAb2, nAb3, nG2, $0C, nAb2, nG2, $06, nG3, nFs2, $0C, nG2, nAb2
	dc.b	$06, nG2, nD2, nEb2, nF2, nF3, nE2, $0C, nF2, nF2, $06, nF3
	dc.b	nEb2, $0C, nEb3, nD2, $06, nEb2, nEb2, nEb3
	smpsCall            Snd_VVZ1_Call08
	smpsCall            Snd_VVZ1_Call09
	smpsCall            Snd_VVZ1_Call08

Snd_VVZ1_Loop05:
	dc.b	nF1, nF2, nF1, $0C, nF1, nF1, $06, nF2, nF1, $0C, nF1, nF1
	dc.b	$06, nF2, nF1, nF2
	smpsLoop            $00, $02, Snd_VVZ1_Loop05
	smpsJump            Snd_VVZ1_Loop04

Snd_VVZ1_Call07:
	dc.b	nF2, $0C, nC2, nEb2, nC2, $06, nF2, $0C, $06, nC2, $0C, nEb2
	dc.b	nC2, nF2, nC2, nEb2, $06, nE2, $0C, nF2, nF2, $06, nC2, $0C
	dc.b	nF2, nE2, nEb2, nBb1, nCs2, nD2, $06, nEb2, $0C, $06, nBb1, $0C
	dc.b	nCs2, nD2, nEb2, nBb1, nCs2, $06, nD2, $0C, nEb2, nEb2, $06, nBb1
	dc.b	$0C, nEb2, nE2
	smpsReturn

Snd_VVZ1_Call08:
	dc.b	nCs2, $06, nCs3, nC2, $0C, nCs2, nCs2, $06, nCs3, nC2, $0C, nCs2
	dc.b	nCs2, $06, nCs3, nCs2, nD2, nEb2, nEb3, nD2, $0C, nEb2, nEb2, $06
	dc.b	nEb3, nD2, $0C, nEb2, nEb2, $06, nEb3, nEb2, nCs2
	smpsReturn

Snd_VVZ1_Call09:
	dc.b	nC2, nC3, nB1, $0C, nC2, nC2, $06, nC3, nB1, $0C, nC2, nC2
	dc.b	$06, nB1, nC2, nEb2, nCs2, nCs3, nC2, $0C, nCs2, nCs2, $06, nCs3
	dc.b	nC2, $0C, nCs2, nCs2, $06, nAb1, nB1, nC2
	smpsReturn

; FM3 Data
Snd_VVZ1_FM3:
	smpsPan             panRight, $00
	smpsSetvoice        $02
	smpsAlterPitch      $FB
	smpsModSet          $01, $01, $0A, $B7
	dc.b	nC3, $30
	smpsAlterPitch      $05

Snd_VVZ1_Jump02:
	smpsSetvoice        $02
	smpsModSet          $01, $01, $02, $06
	dc.b	nF3, $60, smpsNoAttack, $30
	smpsModSet          $01, $01, $0A, $B7
	smpsAlterPitch      $FB
	dc.b	nC3
	smpsAlterPitch      $05
	smpsModSet          $01, $01, $02, $06
	dc.b	nEb3, $60, smpsNoAttack, $30
	smpsAlterPitch      $FB
	smpsModSet          $01, $01, $0C, $BF
	dc.b	nC3, $30
	smpsAlterPitch      $05

Snd_VVZ1_Loop03:
	smpsModSet          $01, $01, $02, $06
	dc.b	nF3, $60, smpsNoAttack, $30
	smpsAlterPitch      $FB
	smpsModSet          $01, $01, $0C, $BF
	dc.b	nC3
	smpsAlterPitch      $05
	smpsModSet          $01, $01, $02, $06
	dc.b	nEb3, $60, smpsNoAttack, $30
	smpsAlterPitch      $FB
	smpsModSet          $01, $01, $0C, $BF
	dc.b	nC3
	smpsAlterPitch      $05
	smpsLoop            $00, $04, Snd_VVZ1_Loop03
	smpsAlterPitch      $F4
	smpsFMAlterVol      $03
	smpsSetvoice        $03
	smpsModSet          $01, $01, $02, $06
	dc.b	nAb5, $0C, nAb5, nAb5, nAb5, nAb5, nAb5, nAb5, nAb5, nBb5, nBb5, nBb5
	dc.b	nBb5, nBb5, nBb5, nBb5, nBb5, nG5, nG5, nG5, nG5, nG5, nG5, nG5
	dc.b	nG5, nAb5, nAb5, nAb5, nAb5, nAb5, nAb5, nAb5, nAb5, nAb5, nAb5, nAb5
	dc.b	nAb5, nAb5, nAb5, nAb5, nAb5, nBb5, nBb5, nBb5, nBb5, nBb5, nBb5, nBb5
	dc.b	nBb5, nC6, nC6, nC6, nBb5, nBb5, nBb5, nBb5, nBb5, nAb5, nAb5, nAb5
	dc.b	nAb5, nAb5, nAb5, nAb5, nAb5, nAb5, nAb5, nAb5, nAb5, nAb5, nAb5, nAb5
	dc.b	nAb5, nBb5, nBb5, nBb5, nBb5, nBb5, nBb5, nBb5, nBb5, nG5, nG5, nG5
	dc.b	nG5, nG5, nG5, nG5, nG5, nAb5, nAb5, nAb5, nAb5, nAb5, nAb5, nAb5
	dc.b	nAb5, nAb5, nAb5, nAb5, nAb5, nAb5, nAb5, nAb5, nAb5, nBb5, nBb5, nBb5
	dc.b	nBb5, nBb5, nBb5, nBb5, nBb5, nAb5, nAb5, nAb5, nAb5, nAb5, nAb5, nAb5
	dc.b	nAb5, nAb5, nAb5, nAb5, nAb5, nAb5, nAb5, nAb5, nAb5
	smpsFMAlterVol      $FD
	smpsAlterPitch      $0C
	smpsJump            Snd_VVZ1_Jump02

; FM4 Data
Snd_VVZ1_FM4:
	smpsPan             panLeft, $00
	smpsModSet          $01, $01, $01, $05
	smpsSetvoice        $02
	smpsAlterPitch      $FB
	smpsModSet          $01, $01, $08, $B7
	dc.b	nG2, $30
	smpsAlterPitch      $05

Snd_VVZ1_Jump01:
	smpsSetvoice        $02
	smpsModSet          $01, $01, $02, $06
	dc.b	nC3, $60, smpsNoAttack, $30
	smpsModSet          $01, $01, $08, $B7
	smpsAlterPitch      $FB
	dc.b	nG2
	smpsAlterPitch      $05
	smpsModSet          $01, $01, $02, $06
	dc.b	nBb2, $60, smpsNoAttack, $30
	smpsAlterPitch      $FB
	smpsModSet          $01, $01, $08, $BF
	dc.b	nG2, $30
	smpsAlterPitch      $05

Snd_VVZ1_Loop02:
	smpsModSet          $01, $01, $02, $06
	dc.b	nC3, $60, smpsNoAttack, $30
	smpsAlterPitch      $FB
	smpsModSet          $01, $01, $08, $BF
	dc.b	nG2
	smpsModSet          $01, $01, $02, $06
	smpsAlterPitch      $05
	dc.b	nBb2, $60, smpsNoAttack, $30
	smpsAlterPitch      $FB
	smpsModSet          $01, $01, $08, $BF
	dc.b	nBb2
	smpsAlterPitch      $05
	smpsModSet          $01, $01, $02, $06
	smpsLoop            $00, $04, Snd_VVZ1_Loop02
	smpsAlterPitch      $F4
	smpsFMAlterVol      $03
	smpsSetvoice        $03
	smpsModSet          $01, $01, $02, $06
	dc.b	nCs5, $0C, nCs5, nCs5, nCs5, nCs5, nCs5, nCs5, nCs5, nEb5, nEb5, nEb5
	dc.b	nEb5, nEb5, nEb5, nEb5, nEb5, nC5, nC5, nC5, nEb5, nEb5, nEb5, nEb5
	dc.b	nEb5, nF5, nF5, nF5, nCs5, nCs5, nCs5, nCs5, nCs5, nCs5, nCs5, nCs5
	dc.b	nCs5, nCs5, nCs5, nCs5, nCs5, nEb5, nEb5, nEb5, nEb5, nEb5, nEb5, nEb5
	dc.b	nEb5, nAb5, nAb5, nAb5, nG5, nG5, nG5, nG5, nG5, nF5, nF5, nF5
	dc.b	nC5, nC5, nC5, nC5, nC5, nCs5, nCs5, nCs5, nCs5, nCs5, nCs5, nCs5
	dc.b	nCs5, nEb5, nEb5, nEb5, nEb5, nEb5, nEb5, nEb5, nEb5, nC5, nC5, nC5
	dc.b	nEb5, nEb5, nEb5, nEb5, nEb5, nF5, nF5, nF5, nCs5, nCs5, nCs5, nCs5
	dc.b	nCs5, nCs5, nCs5, nCs5, nCs5, nCs5, nCs5, nCs5, nCs5, nEb5, nEb5, nBb5
	dc.b	nBb5, nBb5, nBb5, nBb5, nBb5, nF5, nF5, nF5, nC5, nC5, nC5, nC5
	dc.b	nC5, nF5, nF5, nF5, nC5, nC5, nC5, nC5, nC5
	smpsFMAlterVol      $FD
	smpsAlterPitch      $0C
	smpsJump            Snd_VVZ1_Jump01

; FM5 Data
Snd_VVZ1_FM5:
	smpsModSet          $01, $01, $01, $08
	dc.b	nRst, $0B
	smpsAlterNote       $01
	smpsJump            Snd_VVZ1_Jump00

; PSG1 Data
Snd_VVZ1_PSG1:
	smpsModSet          $01, $01, $01, $04
	smpsPSGvoice        sTone_11
	smpsAlterPitch      $FB
	smpsModSet          $01, $01, $F9, $A7
	dc.b	nC3, $30
	smpsAlterPitch      $05

Snd_VVZ1_Jump04:
	smpsPSGvoice        sTone_11
	smpsModSet          $0F, $01, $01, $06
	dc.b	nF3, $60, smpsNoAttack, $30
	smpsModSet          $01, $01, $FB, $A7
	smpsAlterPitch      $F7
	dc.b	nC3
	smpsAlterPitch      $09
	smpsModSet          $0F, $01, $01, $06
	dc.b	nEb3, $60, smpsNoAttack, $30
	smpsAlterPitch      $FB
	smpsModSet          $01, $01, $F9, $A7
	dc.b	nC3, $30
	smpsAlterPitch      $05

Snd_VVZ1_Loop0B:
	smpsPSGvoice        sTone_11
	smpsModSet          $0F, $01, $01, $06
	dc.b	nF3, $60, smpsNoAttack, $30
	smpsAlterPitch      $F7
	smpsModSet          $01, $01, $FB, $A7
	dc.b	nC3
	smpsAlterPitch      $09
	smpsModSet          $0F, $01, $01, $06
	dc.b	nEb3, $60, smpsNoAttack, $30
	smpsAlterPitch      $FB
	smpsModSet          $01, $01, $F9, $A7
	dc.b	nC3
	smpsAlterPitch      $05
	smpsModSet          $0F, $01, $01, $06
	dc.b	nF3, $60, smpsNoAttack, $30
	smpsAlterPitch      $F7
	smpsModSet          $01, $01, $FB, $A7
	dc.b	nC3
	smpsAlterPitch      $09
	smpsModSet          $0F, $01, $01, $06
	dc.b	nEb3, $6C
	smpsAlterPitch      $0C
	smpsPSGvoice        sTone_26
	dc.b	nG4, $18, nC5, $3C
	smpsAlterPitch      $F4
	smpsLoop            $00, $02, Snd_VVZ1_Loop0B
	smpsAlterPitch      $0C
	smpsPSGvoice        sTone_26
	smpsModSet          $0F, $01, $01, $06
	dc.b	nAb3, $0C, nC4, nF4, nC4, nF4, nAb4, nC5, nAb4, nBb4, nG4, nEb4
	dc.b	nG4, nEb4, nBb3, nG3, nBb3, nG3, nEb4, nG4, nBb3, nEb4, nG4, nAb4
	dc.b	nBb4, nAb4, nF4, nCs4, nF4, nCs4, nAb3, nC4, nCs4, nAb3, nCs4, nF4
	dc.b	nCs4, nF4, nAb4, nCs5, nAb4, nBb4, nG4, nEb4, nG4, nEb4, nBb3, nEb4
	dc.b	nE4, nF4, nEb4, nG4, nBb3, nEb4, nG4, nAb4, nBb4, nAb4, nF4, nCs4
	dc.b	nF4, nCs4, nAb3, nC4, nCs4, nAb3, nCs4, nF4, nCs4, nF4, nAb4, nCs5
	dc.b	nAb4, nBb4, nG4, nEb4, nG4, nEb4, nBb3, nG3, nBb3, nG3, nBb3, nEb4
	dc.b	nBb3, nEb4, nG4, nAb4, nBb4, nAb4, nF4, nCs4, nF4, nCs4, nAb3, nC4
	dc.b	nCs4, nAb3, nCs4, nF4, nCs4, nF4, nAb4, nCs5, nAb4, nBb4, nG4, nEb4
	dc.b	nG4, nEb4, nBb3, nEb4, nE4, nF4, nEb4, nC4, nAb4, nF4, nEb4, nG4
	dc.b	nEb4, nF4, nEb4, nC4, nAb4, nF4, nEb4, nG4, nEb4
	smpsAlterPitch      $F4
	smpsJump            Snd_VVZ1_Jump04

; PSG2 Data
Snd_VVZ1_PSG2:
	smpsAlterNote       $FE
	dc.b	nRst, $0D, nRst, $30
	smpsJump            Snd_VVZ1_Jump04

; PSG3 Data
Snd_VVZ1_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $30

Snd_VVZ1_Loop09:
	smpsCall            Snd_VVZ1_Call0B
	smpsLoop            $00, $14, Snd_VVZ1_Loop09

Snd_VVZ1_Loop0A:
	smpsCall            Snd_VVZ1_Call0C
	smpsLoop            $00, $10, Snd_VVZ1_Loop0A
	smpsJump            Snd_VVZ1_Loop09

Snd_VVZ1_Call0B:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, $06, $06, $06
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, $06, $06, $06
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, $06
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsReturn

Snd_VVZ1_Call0C:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, $06
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, $06, $06, $06
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, $06, $06, $06
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsReturn

; DAC Data
Snd_VVZ1_DAC:
	dc.b	nRst, $30

Snd_VVZ1_Loop00:
	smpsCall            Snd_VVZ1_Call00
	smpsCall            Snd_VVZ1_Call01
	smpsCall            Snd_VVZ1_Call00
	smpsCall            Snd_VVZ1_Call02
	smpsLoop            $00, $05, Snd_VVZ1_Loop00

Snd_VVZ1_Loop01:
	smpsCall            Snd_VVZ1_Call03
	smpsCall            Snd_VVZ1_Call04
	smpsCall            Snd_VVZ1_Call03
	smpsCall            Snd_VVZ1_Call05
	smpsCall            Snd_VVZ1_Call03
	smpsCall            Snd_VVZ1_Call04
	smpsCall            Snd_VVZ1_Call06
	smpsLoop            $00, $02, Snd_VVZ1_Loop01
	smpsJump            Snd_VVZ1_Loop00

Snd_VVZ1_Call00:
	dc.b	dElectricHighTom, $06, dElectricMidTom, dElectricLowTom, $0C, dElectricLowTom, dElectricMidTom, $06, dElectricLowTom, dElectricFloorTom, $0C, dElectricFloorTom
	dc.b	dKickS3, $06, dKickS3, dKickS3, dSnareS3
	smpsReturn

Snd_VVZ1_Call01:
	dc.b	dElectricHighTom, dElectricMidTom, dElectricLowTom, $0C, dElectricLowTom, dElectricMidTom, $06, dElectricLowTom, dElectricFloorTom, $0C, dElectricFloorTom, dSnareS3
	dc.b	$06, dSnareS3, $0C, $06
	smpsReturn

Snd_VVZ1_Call02:
	dc.b	dElectricHighTom, dElectricMidTom, dElectricLowTom, $0C, dElectricLowTom, dElectricMidTom, $06, dElectricLowTom, dElectricFloorTom, $0C, dElectricFloorTom, dSnareS3
	dc.b	$06, dSnareS3, dSnareS3, dSnareS3
	smpsReturn

Snd_VVZ1_Call03:
	dc.b	dKickS3, $06, dKickS3, dKickS3, dKickS3, dKickS3, $0C, dSnareS3, $06, $0C, dSnareS3, dSnareS3
	dc.b	$06
	smpsReturn

Snd_VVZ1_Call04:
	dc.b	dElectricHighTom, $06, dElectricMidTom, dElectricLowTom, $0C
	smpsReturn

Snd_VVZ1_Call05:
	dc.b	dElectricMidTom, $06, dElectricLowTom, dElectricFloorTom, $0C
	smpsReturn

Snd_VVZ1_Call06:
	dc.b	dKickS3, $06, dKickS3, dKickS3, dKickS3, dKickS3, $0C, dElectricHighTom, $06, dElectricMidTom, $0C, dElectricLowTom
	dc.b	dElectricFloorTom, $06, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dKickS3, dKickS3, dSnareS3, $0C, dKickS3, dKickS3
	dc.b	$06, dSnareS3, $0C, dSnareS3, dSnareS3, $06, dElectricHighTom, $04, dElectricHighTom, dElectricHighTom, dElectricMidTom, $06
	dc.b	dElectricLowTom, dKickS3, dKickS3, dSnareS3, $0C, dKickS3, dSnareS3, $06, $0C, dSnareS3, dSnareS3, $06
	dc.b	dElectricMidTom, $04, dElectricMidTom, dElectricMidTom, dElectricLowTom, $06, dElectricFloorTom, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3
	dc.b	$0C, dSnareS3, $06, $0C, dSnareS3, dSnareS3, $06, dElectricHighTom, $04, dElectricMidTom, dElectricLowTom, dElectricFloorTom
	dc.b	$06, dElectricFloorTom, dSnareS3, $04, dSnareS3, dSnareS3, dElectricHighTom, $06, dElectricHighTom, dElectricMidTom, dElectricLowTom, dSnareS3
	dc.b	$04, dSnareS3, dSnareS3, dElectricMidTom, $06, dElectricMidTom, dElectricLowTom, dElectricFloorTom, dSnareS3, $0C, $06, dSnareS3
	smpsReturn

Snd_VVZ1_Voices:
;	Voice $00
;	$08
;	$0A, $70, $30, $00, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$24, $2D, $13, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $00
	smpsVcCoarseFreq    $00, $00, $00, $0A
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $2D, $24

;	Voice $01
;	$3D
;	$06, $21, $51, $06, 	$12, $14, $14, $0F, 	$0A, $06, $06, $06
;	$00, $00, $00, $00, 	$2B, $2B, $2B, $1B, 	$19, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $02, $00
	smpsVcCoarseFreq    $06, $01, $01, $06
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $14, $14, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $06, $06, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $02, $02, $02
	smpsVcReleaseRate   $0B, $0B, $0B, $0B
	smpsVcTotalLevel    $00, $00, $00, $19

;	Voice $02
;	$3E
;	$07, $01, $02, $0A, 	$1F, $1F, $1F, $1F, 	$03, $06, $00, $00
;	$08, $06, $07, $0C, 	$15, $0A, $0A, $0A, 	$20, $85, $86, $88
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $0A, $02, $01, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $06, $03
	smpsVcDecayRate2    $0C, $07, $06, $08
	smpsVcDecayLevel    $00, $00, $00, $01
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $08, $06, $05, $20

;	Voice $03
;	$16
;	$7A, $74, $3C, $31, 	$1F, $1F, $1F, $1F, 	$0A, $08, $0C, $0A
;	$07, $0A, $07, $05, 	$2F, $AF, $AF, $5F, 	$14, $85, $8A, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $0C, $04, $0A
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0C, $08, $0A
	smpsVcDecayRate2    $05, $07, $0A, $07
	smpsVcDecayLevel    $05, $0A, $0A, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $0A, $05, $14

