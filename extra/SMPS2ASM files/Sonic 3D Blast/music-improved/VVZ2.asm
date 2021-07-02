Snd_VVZ2_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_VVZ2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $29

	smpsHeaderDAC       Snd_VVZ2_DAC
	smpsHeaderFM        Snd_VVZ2_FM1,	$00, $14
	smpsHeaderFM        Snd_VVZ2_FM2,	$0C, $0F
	smpsHeaderFM        Snd_VVZ2_FM3,	$00, $14
	smpsHeaderFM        Snd_VVZ2_FM4,	$00, $14
	smpsHeaderFM        Snd_VVZ2_FM5,	$00, $18
	smpsHeaderPSG       Snd_VVZ2_PSG1,	$E8, $02, $00, $00
	smpsHeaderPSG       Snd_VVZ2_PSG2,	$E8, $04, $00, $00
	smpsHeaderPSG       Snd_VVZ2_PSG3,	$23, $03, $00, $00

; FM1 Data
Snd_VVZ2_FM1:
	smpsModSet          $03, $01, $01, $05
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	dc.b	nRst, $60
	smpsAlterPitch      $F4
	smpsSetvoice        $02
	dc.b	nRst, $30

Snd_VVZ2_Jump00:
	dc.b	nF4, nC5, nF5, nG5, nBb4, nEb5, $60, nC6, $30, nF4, nC5
	dc.b	nF5, nEb5, nBb4, nBb5, $60
	smpsAlterPitch      $0C
	smpsSetvoice        $00
	dc.b	nC3, $24, nF3, nC4, $18, smpsNoAttack, $0C, nBb3, $18, nAb3, nG3, $0C
	dc.b	nF3, nAb3, nG3, $24, nF3, nEb3, $18, smpsNoAttack, $0C, nF3, $18, nEb3
	dc.b	nBb2, nB2, $0C, nC3, $24, nF3, nC4, $18, smpsNoAttack, $0C, nBb3, $18
	dc.b	nAb3, nBb3, $0C, nAb3, nF3, nG3, $24, nC4, $3C, smpsNoAttack, $60, nC3
	dc.b	$24, nF3, nC4, $18, smpsNoAttack, $0C, nBb3, $18, nAb3, nBb3, $0C, nAb3
	dc.b	nF3, nG3, $24, nEb3, nC3, $18, smpsNoAttack, $0C, nG3, $18, nF3, nEb3
	dc.b	$0C, nBb2, nB2, nC3, $24, nF3, nC4, $18, smpsNoAttack, $0C, nBb3, $18
	dc.b	nAb3, nG3, $0C, nAb3, nF3, nG3, $24, nC4, $3C, smpsNoAttack, $60, nAb4
	dc.b	$24, nF4, $18, nBb4, $0C, nAb4, nG4, nAb4, $24, nEb4, $18, nBb4
	dc.b	$0C, nAb4, nG4, nAb4, $24, nEb4, $18, nBb4, $0C, nAb4, nG4, nAb4
	dc.b	$24, nF4, $18, nBb4, $0C, nAb4, nG4, nAb4, $24, nF4, $18, nBb4
	dc.b	$0C, nAb4, nG4, nAb4, $24, nG4, $18, nAb4, $0C, nG4, $18, $60
	dc.b	nF4, nAb4, $24, nF4, $18, nBb4, $0C, nAb4, nG4, nAb4, $24, nEb4
	dc.b	$18, nBb4, $0C, nAb4, nG4, nAb4, $24, nEb4, $18, nBb4, $0C, nAb4
	dc.b	nG4, nAb4, $24, nF4, $18, nBb4, $0C, nAb4, nG4, nAb4, $24, nF4
	dc.b	$18, nBb4, $0C, nAb4, nG4, nAb4, $24, nG4, nEb4, $18, nF4, $60
	dc.b	smpsNoAttack, nF4
	smpsAlterPitch      $F4
	smpsSetvoice        $02
	dc.b	nF4, $30
	smpsJump            Snd_VVZ2_Jump00

; FM2 Data
Snd_VVZ2_FM2:
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $01, $02
	smpsSetvoice        $01
	dc.b	nRst, $60

Snd_VVZ2_Jump03:
	dc.b	nF1, $12, nF1, $06, nRst, $0C, nF1, $06, nRst, $36, nRst, $0C, nF1
	dc.b	nG1, nAb1, nBb1, nF1, nC2, nF2, nF2, $03
	smpsSetvoice        $06
	dc.b	nG2, $0F
	smpsSetvoice        $01
	dc.b	nEb2, $12, nBb1, $0C, nRst, nG1, nEb2, nBb2, smpsNoAttack, nBb2, $18, nAb2
	dc.b	nG2, nEb2, $06, nBb2, nEb3, $0C, nF1, $12, nF2, nF1, $0C, nRst
	dc.b	$30, nRst, $0C, nF2, $06, nC2, nEb2, nF2, $12, nAb2, $0C, nEb2
	dc.b	nC3, nF3
	smpsSetvoice        $06
	smpsFMAlterVol      $03
	dc.b	nF3, $03
	smpsFMAlterVol      $FD
	dc.b	nG3, $0F
	smpsSetvoice        $01
	dc.b	nEb3, $12, nG2, $0C, nRst, $18, nG2, $06, nAb2, nBb2, $0C, smpsNoAttack, $09
	dc.b	nA2, $02, nG2, nF2, nE2, $03, nD2, nC2, nBb1, $18, nG2, nEb2
	dc.b	nF1, $12, nF1, $06, nRst, $0C, nF1, $06, nRst, $36, nRst, $0C, nF1
	dc.b	$18, nG1, $0C, nAb1, nF1, nG1, nAb1, nF1, $12, nEb2, nF1, $06
	dc.b	nRst, $36, nEb2, $03
	smpsSetvoice        $06
	dc.b	nF2, $15
	smpsSetvoice        $01
	dc.b	nEb2, $18, nBb1, nG1, nF1, $12, nF1, $06, nRst, $0C, nF1, $06, nRst
	dc.b	$36, nRst, $0C, nF1, $18, nG1, $0C, nAb1, nF1, nG1, nAb1, nEb1
	dc.b	$12, nBb1, $06, nRst, $0C, nAb2, $03
	smpsSetvoice        $06
	dc.b	nBb2, $21
	smpsSetvoice        $01
	dc.b	nAb2, $18, nG2, nEb2, nG1, $06, nAb1, nBb1, nAb1, nF1, nEb1, nD1
	dc.b	nG1, nF1, $12, nF1, $06, nRst, $0C, nF1, $06, nRst, $36, nRst, $0C
	dc.b	nF1, $18, nG1, $0C, nAb1, nF1, nG1, nAb1, nF1, $12, nEb2, nF1
	dc.b	$06, nRst, $36, nEb2, $03
	smpsSetvoice        $06
	dc.b	nF2, $15
	smpsSetvoice        $01
	dc.b	nEb2, $18, nBb1, nG1, nF1, $12, nF1, $06, nRst, $0C, nF1, $06, nRst
	dc.b	$36, nRst, $0C, nF1, $18, nG1, $0C, nAb1, nF1, nG1, nAb1, nEb1
	dc.b	$12, nBb1, $06, nRst, $0C, nAb2, $03
	smpsSetvoice        $06
	dc.b	nBb2, $21
	smpsSetvoice        $01
	dc.b	nAb2, $18, nG2, nEb2, nBb1, nG1, nCs2, $12, nAb1, $06, nRst, $0C
	dc.b	nCs2, $3C, nRst, $0C, nAb2, nG2, nF2, nEb2, nG1, nBb1, nEb2, nC2
	dc.b	$12, nG2, $06, nRst, $0C, nC3, $30, nBb2, $06, nC3, nC3, $06
	smpsSetvoice        $06
	dc.b	nCs3, $12
	smpsSetvoice        $01
	dc.b	nBb2, $18, nAb2, $06, nBb2, $12, nF2, $06, nEb2, nCs2, $0C, $12
	dc.b	nAb1, $06, nRst, $0C, nCs2, $30, nC2, $06, nCs2, nEb2, $12, nBb1
	dc.b	$06, nRst, $0C, nEb2, nBb2, nG1, nBb1, nEb2, nC2, $12, nG2, $06
	dc.b	nRst, $0C, nC3, $2E, nRst, $0E, nAb2, $0C, nAb2, nF2, nF2, nCs2
	dc.b	nCs2, nF2, nF1, nCs1, $12, nAb1, nEb2, $15, nEb2, $03
	smpsSetvoice        $06
	dc.b	nF2, $24
	smpsSetvoice        $01
	dc.b	nRst, $0C, nEb1, nBb1, nG2, nAb2, $03
	smpsSetvoice        $06
	dc.b	nBb2, $09
	smpsSetvoice        $01
	dc.b	nAb2, $0C, nG2, nEb2, nC1, $12, nG1, nC2, $24, nF2, $03
	smpsSetvoice        $06
	dc.b	nG2, $09
	smpsSetvoice        $01
	dc.b	nF2, $06, nEb2, nCs2, $0C, nRst, nCs2, nBb1, nAb1, nAb1, nF2, nF2
	dc.b	nCs1, $12, nAb1, nD2, $03
	smpsSetvoice        $06
	dc.b	nEb2, $15
	smpsSetvoice        $01
	dc.b	nF2, $24, nRst, $0C, nEb1, nBb1, nG2, nBb2, nAb2, nG2, nEb2, nF1
	dc.b	$12, nC2, nF2, $3C, nF1, $60
	smpsJump            Snd_VVZ2_Jump03

; FM3 Data
Snd_VVZ2_FM3:
	smpsPan             panRight, $00
	smpsModSet          $01, $01, $01, $06
	smpsSetvoice        $05
	dc.b	nF2, $60

Snd_VVZ2_Jump02:
	smpsModSet          $01, $01, $01, $06
	smpsAlterPitch      $F4
	smpsSetvoice        $05
	dc.b	smpsNoAttack, nF3, $60, smpsNoAttack, nF3, $30, nF3, nEb3, $60, smpsNoAttack, $30, nEb3
	dc.b	nF3, $60, smpsNoAttack, $30, nF3, nEb3, $60, smpsNoAttack, $30, nEb3, nF3, $60
	dc.b	smpsNoAttack, $30, nF3, nEb3, $60, smpsNoAttack, $30, nEb3, nF3, $60, smpsNoAttack, $30
	dc.b	nF3, nEb3, $60, smpsNoAttack, $30, nEb3, nF3, $60, smpsNoAttack, $30, nF3, nEb3
	dc.b	$60, smpsNoAttack, $30, nEb3, nF3, $60, smpsNoAttack, $30, nF3, nEb3, $60, smpsNoAttack
	dc.b	$30, nEb3
	smpsAlterPitch      $0C
	smpsSetvoice        $04
	smpsFMAlterVol      $02
	dc.b	nRst, $0C, nAb4, nAb4, nAb4, nAb4, nAb4, nAb4, nAb4, nBb4, nBb4, nBb4
	dc.b	nBb4, nBb4, nBb4, nBb4, nBb4, nG4, nG4, nG4, nG4, nG4, nG4, nG4
	dc.b	nG4, nAb4, nAb4, nAb4, nAb4, nAb4, nAb4, nAb4, nAb4, nAb4, nAb4, nAb4
	dc.b	nAb4, nAb4, nAb4, nAb4, nAb4, nBb4, nBb4, nBb4, nBb4, nBb4, nBb4, nBb4
	dc.b	nBb4, nC5, nC5, nC5, nBb4, nBb4, nBb4, nBb4, nBb4, nAb4, nAb4, nAb4
	dc.b	nAb4, nAb4, nAb4, nAb4, nAb4, nAb4, nAb4, nAb4, nAb4, nAb4, nAb4, nAb4
	dc.b	nAb4, nBb4, nBb4, nBb4, nBb4, nBb4, nBb4, nBb4, nBb4, nG4, nG4, nG4
	dc.b	nG4, nG4, nG4, nG4, nG4, nAb4, nAb4, nAb4, nAb4, nAb4, nAb4, nAb4
	dc.b	nAb4, nAb4, nAb4, nAb4, nAb4, nAb4, nAb4, nAb4, nAb4, nBb4, nBb4, nBb4
	dc.b	nBb4, nBb4, nBb4, nBb4, nBb4, nAb4, nAb4, nAb4, nAb4, nAb4, nAb4, nAb4
	dc.b	nAb4, nAb4, nAb4, nAb4, nAb4, nAb4, nAb4, nAb4, nAb4
	smpsFMAlterVol      $FE
	smpsJump            Snd_VVZ2_Jump02

; FM4 Data
Snd_VVZ2_FM4:
	smpsPan             panLeft, $00
	smpsModSet          $01, $01, $01, $05
	smpsSetvoice        $05
	dc.b	nC3, $60

Snd_VVZ2_Jump01:
	smpsModSet          $01, $01, $01, $05
	smpsSetvoice        $05
	dc.b	smpsNoAttack, nC3, $60, smpsNoAttack, nC3, $30, nC3, nBb2, $60, smpsNoAttack, $30, nBb2
	dc.b	nC3, $60, smpsNoAttack, $30, nC3, nBb2, $60, smpsNoAttack, $30, nBb2, nC3, $60
	dc.b	smpsNoAttack, $30, nC3, nBb2, $60, smpsNoAttack, $30, nBb2, nC3, $60, smpsNoAttack, $30
	dc.b	nC3, nBb2, $60, smpsNoAttack, $30, nBb2, nC3, $60, smpsNoAttack, $30, nC3, nBb2
	dc.b	$60, smpsNoAttack, $30, nBb2, nC3, $60, smpsNoAttack, $30, nC3, nBb2, $60, smpsNoAttack
	dc.b	$30, nBb2
	smpsSetvoice        $04
	smpsFMAlterVol      $02
	dc.b	nRst, $0C, nCs4, nCs4, nCs4, nCs4, nCs4, nCs4, nCs4, nEb4, nEb4, nEb4
	dc.b	nEb4, nEb4, nEb4, nEb4, nEb4, nC4, nC4, nC4, nEb4, nEb4, nEb4, nEb4
	dc.b	nEb4, nF4, nF4, nF4, nCs4, nCs4, nCs4, nCs4, nCs4, nCs4, nCs4, nCs4
	dc.b	nCs4, nCs4, nCs4, nCs4, nCs4, nEb4, nEb4, nEb4, nEb4, nEb4, nEb4, nEb4
	dc.b	nEb4, nG4, nG4, nG4, nEb4, nEb4, nEb4, nEb4, nEb4, nF4, nF4, nF4
	dc.b	nC4, nC4, nC4, nC4, nC4, nCs4, nCs4, nCs4, nCs4, nCs4, nCs4, nCs4
	dc.b	nCs4, nEb4, nEb4, nEb4, nEb4, nEb4, nEb4, nEb4, nEb4, nC4, nC4, nC4
	dc.b	nEb4, nEb4, nEb4, nEb4, nEb4, nF4, nF4, nF4, nCs4, nCs4, nCs4, nCs4
	dc.b	nCs4, nCs4, nCs4, nCs4, nCs4, nCs4, nCs4, nCs4, nCs4, nEb4, nEb4, nEb4
	dc.b	nEb4, nEb4, nEb4, nEb4, nEb4, nF4, nF4, nF4, nC4, nC4, nC4, nC4
	dc.b	nC4, nF4, nF4, nF4, nC4, nC4, nC4, nC4, nC4
	smpsFMAlterVol      $FE
	smpsJump            Snd_VVZ2_Jump01

; FM5 Data
Snd_VVZ2_FM5:
	smpsModSet          $01, $01, $01, $07
	dc.b	nRst, $0B
	smpsAlterNote       $01
	dc.b	nRst, $60
	smpsAlterPitch      $F4
	smpsSetvoice        $02
	dc.b	nRst, $30
	smpsJump            Snd_VVZ2_Jump00

; PSG1 Data
Snd_VVZ2_PSG1:
	smpsModSet          $01, $01, $01, $04
	smpsPSGvoice        sTone_11
	dc.b	nRst, $60

Snd_VVZ2_Jump04:
	smpsPSGvoice        sTone_17
	dc.b	nF4, $18, nC5, $16, nRst, $32, nRst, $60, nG4, $18, nC5, $16
	dc.b	nRst, $32, nRst, $60, nRst, $18, nF4, nC5, $16, nRst, $1A, nRst
	dc.b	$60, nRst, $18, nG4, nC5, $16, nRst, $1A, nRst, $60
	smpsPSGvoice        sTone_11
	dc.b	nC6, $06, nAb5, nG5, nF5, nC5, nAb4, nF4, nRst, $36, nRst, $60
	dc.b	nC6, $06, nAb5, nG5, nF5, nEb5, nBb4, nF4, nRst, $36, nRst, $60
	dc.b	nC6, $06, nAb5, nG5, nF5, nC5, nAb4, nF4, nRst, $36, nRst, $60
	dc.b	nC6, $06, nAb5, nG5, nF5, nEb5, nBb4, nF4, nRst, $36
	smpsPSGvoice        sTone_17
	dc.b	nG4, $18, nC5, $16, nRst, $32
	smpsPSGvoice        sTone_11
	dc.b	nC6, $06, nAb5, nG5, nF5, nC5, nAb4, nF4, nRst, $36, nRst, $60
	dc.b	nC6, $06, nAb5, nG5, nF5, nEb5, nBb4, nF4, nRst, $36, nRst, $60
	dc.b	nC6, $06, nAb5, nG5, nF5, nC5, nAb4, nF4, nRst, $36, nRst, $60
	dc.b	nC6, $06, nAb5, nG5, nF5, nEb5, nBb4, nF4, nRst, $36
	smpsPSGvoice        sTone_17
	dc.b	nG4, $18, nC5, $16, nRst, $32
	smpsPSGvoice        sTone_17
	dc.b	nAb3, $0C, nC4, nF4, nC4, nF4, nAb4, nC5, nAb4, nBb4, nG4, nEb4
	dc.b	nG4, nEb4, nBb3, nG3, nBb3, nG3, nEb4, nG4, nBb3, nEb4, nG4, nAb4
	dc.b	nBb4, nAb4, nF4, nCs4, nF4, nCs4, nAb3, nC4, nCs4, nAb3, nCs4, nF4
	dc.b	nCs4, nF4, nAb4, nCs5, nAb4, nBb4, nG4, nEb4, nG4, nEb4, nBb3, nEb4
	dc.b	nE4, nG4, nEb4, nG4, nBb3, nEb4, nG4, nAb4, nBb4, nAb4, nF4, nCs4
	dc.b	nF4, nCs4, nAb3, nC4, nCs4, nAb3, nCs4, nF4, nCs4, nF4, nAb4, nCs5
	dc.b	nAb4, nBb4, nG4, nEb4, nG4, nEb4, nBb3, nG3, nBb3, nG3, nBb3, nEb4
	dc.b	nBb3, nEb4, nG4, nG4, nBb4, nAb4, nF4, nCs4, nF4, nCs4, nAb3, nC4
	dc.b	nCs4, nAb3, nCs4, nF4, nCs4, nF4, nAb4, nCs5, nAb4, nBb4, nG4, nEb4
	dc.b	nG4, nEb4, nBb3, nEb4, nE4, nF4, nEb4, nC4, nAb4, nF4, nEb4, nG4
	dc.b	nEb4, nF4, nEb4, nC4, nAb4, nF4, nEb4, nG4, nEb4
	smpsJump            Snd_VVZ2_Jump04

; PSG2 Data
Snd_VVZ2_PSG2:
	smpsAlterNote       $FE
	dc.b	nRst, $0D, nRst, $60
	smpsPSGvoice        sTone_11
	smpsJump            Snd_VVZ2_Jump04

; PSG3 Data
Snd_VVZ2_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $60

Snd_VVZ2_Loop02:
	smpsCall            Snd_VVZ2_Call00
	smpsLoop            $00, $14, Snd_VVZ2_Loop02

Snd_VVZ2_Loop03:
	smpsCall            Snd_VVZ2_Call01
	smpsLoop            $00, $10, Snd_VVZ2_Loop03
	smpsJump            Snd_VVZ2_Loop02

Snd_VVZ2_Call00:
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

Snd_VVZ2_Call01:
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
Snd_VVZ2_DAC:
	dc.b	nRst, $60

Snd_VVZ2_Loop00:
	dc.b	dKickS3, $06, nRst, nRst, dKickS3, nRst, nRst, dKickS3, nRst, nRst, $30, nRst
	dc.b	$60
	smpsLoop            $00, $03, Snd_VVZ2_Loop00
	dc.b	dKickS3, $06, nRst, nRst, dKickS3, nRst, nRst, dKickS3, nRst, nRst, $30, nRst
	dc.b	$06, dTightSnare, nRst, dMidpitchSnare, dMidpitchSnare, nRst, nRst, dLooseSnare, dLooseSnare, nRst, nRst, dLooseSnare
	dc.b	dLooserSnare, dLooserSnare, dLooserSnare, nRst, dCrashCymbal, $06, nRst, nRst, dKickS3, nRst, nRst, dKickS3
	dc.b	nRst, nRst, $30, nRst, $60

Snd_VVZ2_Loop01:
	dc.b	dKickS3, $06, nRst, nRst, dKickS3, nRst, nRst, dKickS3, nRst, nRst, $30, nRst
	dc.b	$60
	smpsLoop            $00, $02, Snd_VVZ2_Loop01
	dc.b	dKickS3, $06, nRst, nRst, dKickS3, nRst, nRst, dKickS3, nRst, nRst, $30, nRst
	dc.b	$30, nRst, $06, dElectricHighTom, dElectricHighTom, dElectricHighTom, dElectricMidTom, dElectricLowTom, dElectricFloorTom, dElectricFloorTom, dCrashCymbal, $06
	dc.b	nRst, nRst, dKickS3, nRst, nRst, dKickS3, nRst, nRst, $30, nRst, $30, nRst
	dc.b	$0C, dKickS3, dSnareS3, $02, $0A, nRst, $0C, dKickS3, $06, nRst, nRst, dKickS3
	dc.b	nRst, nRst, dKickS3, nRst, nRst, $30, nRst, $30, nRst, $0C, dKickS3, $06
	dc.b	dKickS3, dSnareS3, $02, $0A, nRst, $0C, dCrashCymbal, $06, nRst, nRst, dKickS3, nRst
	dc.b	nRst, dKickS3, nRst, nRst, $30, nRst, $30, nRst, $0C, dKickS3, dSnareS3, $02
	dc.b	$0A, nRst, $0C, dKickS3, $06, nRst, nRst, dKickS3, nRst, nRst, dKickS3, nRst
	dc.b	nRst, $30, dKickS3, $18, dKickS3, dKickS3, $06, dElectricMidTom, nRst, dElectricMidTom, nRst, dElectricLowTom
	dc.b	nRst, dElectricFloorTom, dCrashCymbal, $06, nRst, nRst, dKickS3, nRst, nRst, dKickS3, nRst, nRst
	dc.b	nRst, dKickS3, dKickS3, dSnareS3, $02, dSnareS3, $16, dKickS3, $06, nRst, nRst, dKickS3
	dc.b	nRst, nRst, dKickS3, nRst, nRst, nRst, nRst, nRst, dSnareS3, $02, dSnareS3, $16
	dc.b	dKickS3, $06, nRst, nRst, dKickS3, nRst, nRst, dSnareS3, nRst, nRst, nRst, dKickS3
	dc.b	dKickS3, dSnareS3, $02, dSnareS3, $16, dKickS3, $06, nRst, nRst, dKickS3, dSnareS3, nRst
	dc.b	dKickS3, nRst, nRst, nRst, dKickS3, nRst, dSnareS3, $02, dSnareS3, $16, dKickS3, $06
	dc.b	nRst, nRst, dKickS3, nRst, nRst, dKickS3, nRst, nRst, nRst, dKickS3, dKickS3, dSnareS3
	dc.b	$02, dSnareS3, $16, dKickS3, $06, nRst, nRst, dKickS3, nRst, nRst, dKickS3, nRst
	dc.b	nRst, nRst, nRst, nRst, dSnareS3, $02, dSnareS3, $16, dKickS3, $06, nRst, nRst
	dc.b	dKickS3, nRst, nRst, dSnareS3, nRst, nRst, nRst, dKickS3, dKickS3, dSnareS3, $02, dSnareS3
	dc.b	$16, dKickS3, $06, nRst, nRst, dKickS3, dSnareS3, nRst, dKickS3, nRst, nRst, nRst
	dc.b	dKickS3, nRst, dSnareS3, $02, dSnareS3, $16, dCrashCymbal, $06, nRst, nRst, dKickS3, nRst
	dc.b	nRst, dKickS3, nRst, nRst, nRst, dKickS3, dKickS3, dSnareS3, $02, dSnareS3, $16, dKickS3
	dc.b	$06, nRst, nRst, dKickS3, nRst, nRst, dKickS3, nRst, nRst, nRst, nRst, nRst
	dc.b	dSnareS3, $02, dSnareS3, $16, dKickS3, $06, nRst, nRst, dKickS3, nRst, nRst, dSnareS3
	dc.b	nRst, nRst, nRst, dKickS3, dKickS3, dSnareS3, $02, dSnareS3, $16, dKickS3, $06, nRst
	dc.b	nRst, dKickS3, dSnareS3, nRst, dKickS3, nRst, nRst, nRst, dKickS3, nRst, dSnareS3, $02
	dc.b	dSnareS3, $16, dKickS3, $06, nRst, nRst, dKickS3, nRst, nRst, dKickS3, nRst, nRst
	dc.b	nRst, dKickS3, dKickS3, dSnareS3, $02, dSnareS3, $16, dKickS3, $06, nRst, nRst, dKickS3
	dc.b	nRst, nRst, dKickS3, nRst, nRst, nRst, nRst, nRst, dSnareS3, $02, dSnareS3, $16
	dc.b	dKickS3, $06, nRst, nRst, dKickS3, nRst, nRst, dKickS3, nRst, nRst, nRst, dElectricHighTom
	dc.b	dElectricHighTom, dElectricMidTom, dElectricMidTom, dElectricLowTom, dElectricLowTom, dElectricLowTom, dElectricLowTom, dElectricFloorTom, dElectricFloorTom, dCrashCymbal, $48
	smpsJump            Snd_VVZ2_Loop00

Snd_VVZ2_Voices:
;	Voice $00
;	$3C
;	$71, $71, $11, $11, 	$17, $1E, $19, $1E, 	$04, $01, $07, $01
;	$00, $00, $00, $00, 	$F7, $F8, $F7, $F8, 	$1E, $80, $09, $80
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
	smpsVcTotalLevel    $00, $09, $00, $1E

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

;	Voice $03
;	$3C
;	$64, $64, $22, $24, 	$1F, $0C, $19, $0C, 	$05, $04, $05, $04
;	$05, $05, $05, $05, 	$4F, $4F, $4F, $4F, 	$20, $80, $2A, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $02, $06, $06
	smpsVcCoarseFreq    $04, $02, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0C, $19, $0C, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $05, $04, $05
	smpsVcDecayRate2    $05, $05, $05, $05
	smpsVcDecayLevel    $04, $04, $04, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $2A, $00, $20

;	Voice $04
;	$3C
;	$0F, $32, $72, $02, 	$5E, $5E, $5E, $9E, 	$0F, $08, $07, $07
;	$05, $05, $05, $05, 	$DF, $DF, $DF, $DF, 	$41, $80, $1B, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $07, $03, $00
	smpsVcCoarseFreq    $02, $02, $02, $0F
	smpsVcRateScale     $02, $01, $01, $01
	smpsVcAttackRate    $1E, $1E, $1E, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $07, $08, $0F
	smpsVcDecayRate2    $05, $05, $05, $05
	smpsVcDecayLevel    $0D, $0D, $0D, $0D
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1B, $00, $41

;	Voice $05
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

;	Voice $06
;	$3C
;	$01, $00, $00, $00, 	$0C, $1F, $0E, $1F, 	$11, $0D, $12, $05
;	$07, $04, $09, $02, 	$55, $3A, $25, $1A, 	$1A, $84, $07, $84
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $0E, $1F, $0C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $12, $0D, $11
	smpsVcDecayRate2    $02, $09, $04, $07
	smpsVcDecayLevel    $01, $02, $03, $05
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $04, $07, $04, $1A

