Snd_SpecialS_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_SpecialS_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $10

	smpsHeaderDAC       Snd_SpecialS_DAC
	smpsHeaderFM        Snd_SpecialS_FM1,	$FF, $10
	smpsHeaderFM        Snd_SpecialS_FM2,	$FF, $16
	smpsHeaderFM        Snd_SpecialS_FM3,	$FF, $12
	smpsHeaderFM        Snd_SpecialS_FM4,	$FF, $12
	smpsHeaderFM        Snd_SpecialS_FM5,	$FF, $14
	smpsHeaderPSG       Snd_SpecialS_PSG1,	$00, $06, $00, sTone_06
	smpsHeaderPSG       Snd_SpecialS_PSG2,	$00, $07, $00, sTone_04
	smpsHeaderPSG       Snd_SpecialS_PSG3,	$23, $01, $00, sTone_03

; FM1 Data
Snd_SpecialS_FM1:
	smpsSetvoice        $00
	smpsModSet          $07, $01, $03, $05
	smpsPan             panCenter, $00
	dc.b	nG2, $06, nA2, nB2, nC3, nD3, nE3, nF3, nFs3, nG3, nRst, $12
	dc.b	nG2, $18

Snd_SpecialS_Jump05:
	dc.b	nC2, $0C, nC3, nC2, nC3, nB1, nB2, nE2, nE3, nA2, nA3, nA2
	dc.b	nAb2, nG2, nG3, nG2, nFs2, nF2, nF3, nA2, nC3, nF3, nA2, nC3
	dc.b	nF3, nG2, nG3, nA2, nAb2, nG2, $06, $0C, nF3, $06, nE3, $0C
	dc.b	nD3, nC2, nC3, nC2, nC3, nB1, nB2, nE2, nE3, nA2, nA3, nA2
	dc.b	nAb2, nG2, nG3, nG2, nFs2, nF2, nF3, nA2, nAb2, nG2, nG3, $06
	dc.b	nF3, nE3, nD3, nRst, nC3, nC3, $0C, nC3, nC3, $06, nF2, $0C
	dc.b	nF2, nG2, nA2, $06, nBb2, $0C, nB2, nC2, nC3, nC2, nC3, nB1
	dc.b	nB2, nE2, nE3, nA2, nA3, nA2, nAb2, nG2, nG3, nG2, nFs2, nF2
	dc.b	nF3, nA2, nC3, nF3, nA2, nC3, nF3, nG2, nG3, nA2, nAb2, nG2
	dc.b	$06, $0C, nF3, $06, nE3, $0C, nD3, nC2, nC3, nC2, nC3, nB1
	dc.b	nB2, nE2, nE3, nA2, nA3, nA2, nAb2, nG2, nG3, nG2, nFs2, nF2
	dc.b	nF3, nA2, nAb2, nG2, nG3, $06, nF3, nE3, nD3, nRst, nC3, nC3
	dc.b	$0C, nC3, nC3, $06, nF2, $0C, nG2, nC3, nC3, $06, nD3, $0C
	dc.b	nEb3, nE3, nE2, nAb2, $06, nFs2, nE2, nFs2, nRst, nFs2, nAb2, $0C
	dc.b	nA2, nB2, nA2, nE2, nA2, $06, nA2, nB2, nC3, nRst, nC3, nB2
	dc.b	$0C, nA2, nG2, nFs2, nG2, nA2, $06, nB2, nC3, nD3, nRst, nD3
	dc.b	nC3, $0C, nB2, nA2, nG2, $06, nRst, nG2, $0C, nA2, $06, nRst
	dc.b	nA2, $0C, nB2, nC3, nB2, nG2, nE3, nE2, nAb2, $06, nFs2, nE2
	dc.b	nFs2, nRst, nFs2, nAb2, $0C, nA2, nB2, nA2, nE2, nA2, $06, nA2
	dc.b	nB2, nC3, nRst, nC3, nB2, $0C, nC3, nCs3, nD3, nA2, nC3, $06
	dc.b	nA2, nCs3, nD3, nRst, nD3, nC3, $0C, nB2, nA2, nG2, nA2, nG2
	dc.b	nFs2, nG2, nAb2, nA2, nB2, nC3, $06, nRst, nC3, $0C, nG2, $06
	dc.b	nA2, nC3, nD3, nRst, nD3, nA2, $0C, nB2, nD3, nF2, nF3, nA2
	dc.b	$06, nG2, nF2, nE2, nRst, nE3, nE2, $0C, nF2, nG2, nD2, $06
	dc.b	nD3, nD2, $0C, nE2, nFs2, nG2, nG2, nFs2, nF2, nE2, $06, nE3
	dc.b	nE2, $0C, nFs2, nAb2, nA2, nG2, nF2, nE2, nF2, nE2, nF2, nFs2
	dc.b	nG2, nG2, nA2, nB2
	smpsJump            Snd_SpecialS_Jump05

; FM2 Data
Snd_SpecialS_FM2:
	smpsSetvoice        $01
	smpsModSet          $07, $01, $03, $05
	smpsPan             panCenter, $00
	dc.b	nG4, $06, nA4, nB4, nC5, nD5, nE5, nF5, nFs5, nG5, nRst, $12
	dc.b	nG4, $18

Snd_SpecialS_Jump04:
	dc.b	nE5, $12, nC5, nG4, $0C, nAb4, $12, nB4, nF5, $06, nRst, nE5
	dc.b	nRst, nF5, nRst, nE5, nD5, nRst, nC5, $2A, nG4, $0C, nA4, $12
	dc.b	nC5, nA4, $0C, nD5, $12, nC5, nD5, $0C, nE5, $30, nD5, $06
	dc.b	nG4, nRst, nA4, nC5, nRst, nD5, nRst, nE5, $12, nC5, nG4, $0C
	dc.b	nAb4, $12, nB4, nF5, $06, nRst, nE5, nRst, nF5, nRst, nE5, nD5
	dc.b	nRst, nC5, $2A, nG4, $0C, nA4, $12, nC5, nA4, $18, nE5, $06
	dc.b	nF5, nFs5, nG5, nRst, nC5, smpsNoAttack, nC5, $60, nE5, $12, nC5, nG4
	dc.b	$0C, nAb4, $12, nB4, nF5, $06, nRst, nE5, nRst, nF5, nRst, nE5
	dc.b	nD5, nRst, nC5, $2A, nG4, $0C, nA4, $12, nC5, nA4, $0C, nD5
	dc.b	$12, nC5, nD5, $0C, nE5, $30, nD5, $06, nG4, nRst, nA4, nC5
	dc.b	nRst, nD5, nRst, nE5, $12, nC5, nG4, $0C, nAb4, $12, nB4, nF5
	dc.b	$06, nRst, nE5, nRst, nF5, nRst, nE5, nD5, nRst, nC5, $2A, nG4
	dc.b	$0C, nA4, $12, nC5, nA4, nRst, $06, nE5, nF5, nFs5, nG5, nRst
	dc.b	nC5, smpsNoAttack, nC5, $36, nRst, $06
	smpsSetvoice        $02
	dc.b	nC5, $0C, nD5, nEb5, nE5, $24, nB4, $0C, nF5, nE5, nD5, nE5
	dc.b	nD5, $12, nC5, nB4, $0C, nC5, $30, nD5, $24, nA4, $18, nD5
	dc.b	$0C, nCs5, nC5, nB4, nBb4, nB4, nC5, nD5, $30, nE5, $24, nB4
	dc.b	$0C, nF5, nE5, nD5, nE5, nD5, $12, nC5, nB4, $0C, nC5, $30
	dc.b	nD5, $06, nE5, nFs5, nA5, nRst, nG5, $0C, nFs5, $06, nE5, $0C
	dc.b	nD5, nC5, nA4, nB4, $06, nC5, nB4, nA4, nG4, nA4, nB4, nC5
	dc.b	nD5, $0C, nE5, nF5, nG5
	smpsSetvoice        $03
	smpsAlterPitch      $F4
	smpsFMAlterVol      $03
	dc.b	nE5, $06, nF5, nG5, nC6, nRst, nB5, $0C, nG5, $06, nA5, $0C
	dc.b	nG5, nFs5, nD5, nF5, $06, nE5, nF5, nA5, nC6, nB5, nC6, nD6
	dc.b	nE6, $12, nC6, nG5, $0C, nFs5, $12, nA5, nD6, $0C, nC6, nB5
	dc.b	nA5, nG5, nAb5, $12, nB5, nE6, $0C, nD6, $18, nC6, nA5, $12
	dc.b	nC6, nF6, $0C, nE6, nD6, nC6, nB5
	smpsSetvoice        $01
	smpsAlterPitch      $0C
	smpsFMAlterVol      $FD
	smpsJump            Snd_SpecialS_Jump04

; FM3 Data
Snd_SpecialS_FM3:
	smpsSetvoice        $04
	smpsPan             panLeft, $00
	smpsModSet          $07, $01, $03, $05
	smpsAlterNote       $04
	dc.b	nD3, $06, nFs3, nG3, nA3, nB3, nC4, nD4, nC4, nB3, nRst, $12
	dc.b	nB3, $18

Snd_SpecialS_Jump03:
	dc.b	nRst, $0C, nG3, $06, nG3, nRst, $0C, nG3, nRst, nAb3, $06, nAb3
	dc.b	nRst, $0C, nAb3, nRst, nA3, $06, nA3, nRst, $0C, nA3, nRst, nG3
	dc.b	$06, nG3, nRst, $0C, nG3, nRst, nA3, $06, nA3, nRst, $0C, nA3
	dc.b	nRst, nAb3, $06, nAb3, nRst, $0C, nAb3, nRst, nG3, $06, nG3, nRst
	dc.b	$0C, nG3, nG3, $06, nE4, $0C, nF4, $06, nE4, $0C, nB3, nRst
	dc.b	nG3, $06, nG3, nRst, $0C, nG3, nRst, nAb3, $06, nAb3, nRst, $0C
	dc.b	nAb3, nRst, nA3, $06, nA3, nRst, $0C, nA3, nRst, nG3, $06, nG3
	dc.b	nRst, $0C, nG3, nRst, nA3, $06, nA3, nRst, $0C, nA3, nB3, $2A
	dc.b	nG3, $06, smpsNoAttack, $30
	smpsFMAlterVol      $08
	dc.b	nG6, $02, nF6, nE6, nD6, nC6, nB5, nA5, nG5, nF5, nE5, nD5
	dc.b	nC5, nB4, nA4, nG4, nF4, nE4, nD4, nC4, nB3, nA3, nG3, nF3
	dc.b	nE3
	smpsFMAlterVol      $F8
	dc.b	nRst, $0C, nG3, $06, nG3, nRst, $0C, nG3, nRst, nAb3, $06, nAb3
	dc.b	nRst, $0C, nAb3, nRst, nA3, $06, nA3, nRst, $0C, nA3, nRst, nG3
	dc.b	$06, nG3, nRst, $0C, nG3, nRst, nA3, $06, nA3, nRst, $0C, nA3
	dc.b	nRst, nAb3, $06, nAb3, nRst, $0C, nAb3, nRst, nG3, $06, nG3, nRst
	dc.b	$0C, nG3, nG3, $06, nE4, $0C, nF4, $06, nE4, $0C, nB3, nRst
	dc.b	nG3, $06, nG3, nRst, $0C, nG3, nRst, nAb3, $06, nAb3, nRst, $0C
	dc.b	nAb3, nRst, nA3, $06, nA3, nRst, $0C, nA3, nRst, nG3, $06, nG3
	dc.b	nRst, $0C, nG3, nRst, nA3, $06, nA3, nRst, $0C, nA3, nB3, $2A
	dc.b	nG3, $06, smpsNoAttack, $30
	smpsFMAlterVol      $08
	dc.b	nG6, $02, nF6, nE6, nD6, nC6, nB5, nA5, nG5, nF5, nE5, nD5
	dc.b	nC5, nB4, nA4, nG4, nF4, nE4, nD4, nC4, nB3, nA3, nG3, nF3
	dc.b	nE3
	smpsFMAlterVol      $F8
	dc.b	nAb4, $0C, nAb4, nB3, $12, nAb4, $0C, nAb4, $06, nB3, $0C, nFs4
	dc.b	nAb4, nA4, nA4, nC4, $12, nA4, $0C, nA4, $06, nC4, $0C, nA4
	dc.b	nG4, nFs4, nFs4, nA3, $12, nFs4, $0C, nFs4, $06, nD4, $0C, nE4
	dc.b	nFs4, nG4, nFs4, nG4, nA4, nG4, nFs4, nE4, nD4, nAb4, nAb4, nB3
	dc.b	$12, nAb4, $0C, nAb4, $06, nB3, $0C, nFs4, nAb4, nA4, nA4, nC4
	dc.b	$12, nA4, $0C, nA4, $06, nC4, $0C, nA4, nG4, nFs4, nFs4, nA3
	dc.b	$12, nFs4, $0C, nFs4, $06, nD4, $0C, nE4, nFs4, nG4, nA4, nG4
	dc.b	nFs4, nG4, nF4, nE4, nD4, nC4, nE4, nG4, $12, nD4, $0C, nD4
	dc.b	$06, nFs4, $0C, nA4, $18, nF4, $0C, nA4, nC5, nA4, nC5, $06
	dc.b	nB4, nA4, nG4, nF4, nE4, nD4, nC4, nD4, $0C, nFs4, nA4, nFs4
	dc.b	nG4, nG4, nG4, $06, nG4, nD4, nD4, nE4, $0C, nAb4, nB4, nAb4
	dc.b	nA4, nA4, nA4, $06, nA4, nE4, nE4, nF4, $0C, nA4, nC5, nA4
	dc.b	nG4, $06, nA4, nB4, nC5, nD5, nE5, nF5, nG5
	smpsJump            Snd_SpecialS_Jump03

; FM4 Data
Snd_SpecialS_FM4:
	smpsSetvoice        $05
	smpsPan             panRight, $00
	smpsModSet          $07, $01, $03, $05
	smpsAlterNote       $FC
	dc.b	nD3, $06, nFs3, nG3, nA3, nB3, nC4, nD4, nC4, nB3, nRst, $12
	dc.b	nB3, $18

Snd_SpecialS_Jump02:
	dc.b	nRst, $0C, nE4, $06, nE4, nRst, $0C, nE4, nRst, nE4, $06, nE4
	dc.b	nRst, $0C, nE4, nRst, nE4, $06, nE4, nRst, $0C, nE4, nRst, nE4
	dc.b	$06, nE4, nRst, $0C, nE4, nRst, nF4, $06, nF4, nRst, $0C, nF4
	dc.b	nRst, nF4, $06, nF4, nRst, $0C, nF4, nRst, nE4, $06, nE4, nRst
	dc.b	$0C, nE4, nD4, $06, nE4, $0C, nF4, $06, nE4, $0C, nB3, nRst
	dc.b	nE4, $06, nE4, nRst, $0C, nE4, nRst, nE4, $06, nE4, nRst, $0C
	dc.b	nE4, nRst, nE4, $06, nE4, nRst, $0C, nE4, nRst, nE4, $06, nE4
	dc.b	nRst, $0C, nE4, nRst, nF4, $06, nF4, nRst, $0C, nF4, nG4, $2A
	dc.b	nE4, $06, smpsNoAttack, $30
	smpsFMAlterVol      $08
	dc.b	nG6, $02, nF6, nE6, nD6, nC6, nB5, nA5, nG5, nF5, nE5, nD5
	dc.b	nC5, nB4, nA4, nG4, nF4, nE4, nD4, nC4, nB3, nA3, nG3, nF3
	dc.b	nE3
	smpsFMAlterVol      $F8
	dc.b	nRst, $0C, nE4, $06, nE4, nRst, $0C, nE4, nRst, nE4, $06, nE4
	dc.b	nRst, $0C, nE4, nRst, nE4, $06, nE4, nRst, $0C, nE4, nRst, nE4
	dc.b	$06, nE4, nRst, $0C, nE4, nRst, nF4, $06, nF4, nRst, $0C, nF4
	dc.b	nRst, nF4, $06, nF4, nRst, $0C, nF4, nRst, nE4, $06, nE4, nRst
	dc.b	$0C, nE4, nD4, $06, nE4, $0C, nF4, $06, nE4, $0C, nB3, nRst
	dc.b	nE4, $06, nE4, nRst, $0C, nE4, nRst, nE4, $06, nE4, nRst, $0C
	dc.b	nE4, nRst, nE4, $06, nE4, nRst, $0C, nE4, nRst, nE4, $06, nE4
	dc.b	nRst, $0C, nE4, nRst, nF4, $06, nF4, nRst, $0C, nF4, nG4, $2A
	dc.b	nE4, $06, smpsNoAttack, $30
	smpsFMAlterVol      $08
	dc.b	nG6, $02, nF6, nE6, nD6, nC6, nB5, nA5, nG5, nF5, nE5, nD5
	dc.b	nC5, nB4, nA4, nG4, nF4, nE4, nD4, nC4, nB3, nA3, nG3, nF3
	dc.b	nE3
	smpsFMAlterVol      $F8
	dc.b	nB4, $0C, nB4, nE4, $12, nB4, $0C, nB4, $06, nE4, $0C, nA4
	dc.b	nB4, nC5, nC5, nE4, $12, nC5, $0C, nC5, $06, nE4, $0C, nC5
	dc.b	nB4, nA4, nA4, nD4, $12, nA4, $0C, nA4, $06, nFs4, $0C, nG4
	dc.b	nA4, nB4, nA4, nB4, nC5, nB4, nA4, nG4, nFs4, nB4, nB4, nE4
	dc.b	$12, nB4, $0C, nB4, $06, nE4, $0C, nA4, nB4, nC5, nC5, nE4
	dc.b	$12, nC5, $0C, nC5, $06, nE4, $0C, nC5, nB4, nA4, nA4, nD4
	dc.b	$12, nA4, $0C, nA4, $06, nFs4, $0C, nG4, nA4, nB4, nC5, nB4
	dc.b	nA4, nB4, nA4, nG4, nF4, nE4, nG4, nC5, $12, nFs4, $0C, nFs4
	dc.b	$06, nA4, $0C, nD5, $18, nA4, $0C, nC5, nF5, nC5, nE5, $06
	dc.b	nD5, nC5, nB4, nA4, nG4, nF4, nE4, nFs4, $0C, nA4, nD5, nA4
	dc.b	nC5, nB4, nC5, $06, nB4, nA4, nG4, nAb4, $0C, nB4, nE5, nB4
	dc.b	nD5, nC5, nD5, $06, nC5, nB4, nG4, nA4, $0C, nC5, nF5, nC5
	dc.b	nB4, $06, nC5, nD5, nE5, nF5, nG5, nA5, nB5
	smpsJump            Snd_SpecialS_Jump02

; FM5 Data
Snd_SpecialS_FM5:
	smpsSetvoice        $06
	smpsPan             panCenter, $00
	smpsModSet          $07, $01, $03, $05
	smpsAlterPitch      $0C
	smpsFMAlterVol      $07
	dc.b	nD4, $06, nFs4, nG4, nA4, nB4, nC5, nD5, nC5, nB4, nRst, $12
	dc.b	nG4, $18

Snd_SpecialS_Jump01:
	smpsSetvoice        $04
	smpsAlterPitch      $F4
	smpsFMAlterVol      $F9
	dc.b	nRst, $0C, nC4, $06, $12, $18, nB3, $06, $12, $0C, nRst, $0C
	dc.b	nC4, $06, $12, $18, $06, $12, $0C, nRst, $0C, nC4, $06, $12
	dc.b	$18, $06, $12, $0C
	smpsSetvoice        $06
	smpsAlterPitch      $0C
	smpsFMAlterVol      $07
	dc.b	nG5, $06, nF5, nE5, nD5, nC5, nB4, nA4, nG4, nD5, nC5, nB4
	dc.b	nA4, nG4, nF4, nE4, nD4
	smpsSetvoice        $04
	smpsAlterPitch      $F4
	smpsFMAlterVol      $F9
	dc.b	nRst, $0C, nC4, $06, $12, $18, nB3, $06, $12, $0C, nRst, $0C
	dc.b	nC4, $06, $12, $18, $06, $12, $0C, nRst, $0C, nC4, $06, $12
	dc.b	$0C, nD4, $2A, nC4, $06, smpsNoAttack, $30, nG6, $02, nF6, nE6, nD6
	dc.b	nC6, nB5, nA5, nG5, nF5, nE5, nD5, nC5, nB4, nA4, nG4, nF4
	dc.b	nE4, nD4, nC4, nB3, nA3, nG3, nF3, nE3, nRst, $0C, nC4, $06
	dc.b	$12, nC4, $18, nB3, $06, $12, $0C, nRst, $0C, nC4, $06, $12
	dc.b	$18, $06, $12, $0C, nRst, $0C, nC4, $06, $12, $18, $06, $12
	dc.b	$0C
	smpsSetvoice        $06
	smpsAlterPitch      $0C
	smpsFMAlterVol      $07
	dc.b	nG5, $06, nF5, nE5, nD5, nC5, nB4, nA4, nG4, nD5, nC5, nB4
	dc.b	nA4, nG4, nF4, nE4, nD4
	smpsSetvoice        $04
	smpsAlterPitch      $F4
	smpsFMAlterVol      $F9
	dc.b	nRst, $0C, nC4, $06, $12, $18, nB3, $06, $12, $0C, nRst, $0C
	dc.b	nC4, $06, $12, $18, $06, $12, $0C, nRst, $0C, nC4, $06, $12
	dc.b	$0C, nD4, $2A, nC4, $06, smpsNoAttack, $30, nG6, $02, nF6, nE6, nD6
	dc.b	nC6, nB5, nA5, nG5, nF5, nE5, nD5, nC5, nB4, nA4, nG4, nF4
	dc.b	nE4, nD4, nC4, nB3, nA3, nG3, nF3, nE3, nRst, $60, nRst, nRst
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	smpsAlterPitch      $0C
	smpsFMAlterVol      $07
	smpsJump            Snd_SpecialS_Jump01

; PSG1 Data
Snd_SpecialS_PSG1:
	smpsStop

; PSG2 Data
Snd_SpecialS_PSG2:
	smpsStop

; PSG3 Data
Snd_SpecialS_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $48
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF, $18

Snd_SpecialS_Loop00:
	smpsCall            Snd_SpecialS_Call00
	smpsCall            Snd_SpecialS_Call01
	smpsCall            Snd_SpecialS_Call00
	smpsCall            Snd_SpecialS_Call02
	smpsCall            Snd_SpecialS_Call00
	smpsCall            Snd_SpecialS_Call01
	smpsCall            Snd_SpecialS_Call03
	smpsCall            Snd_SpecialS_Call04
	smpsLoop            $01, $02, Snd_SpecialS_Loop00

Snd_SpecialS_Loop01:
	smpsCall            Snd_SpecialS_Call05
	smpsCall            Snd_SpecialS_Call06
	smpsCall            Snd_SpecialS_Call05
	smpsCall            Snd_SpecialS_Call07
	smpsLoop            $01, $02, Snd_SpecialS_Loop01

Snd_SpecialS_Loop02:
	smpsCall            Snd_SpecialS_Call08
	smpsLoop            $01, $02, Snd_SpecialS_Loop02

Snd_SpecialS_Loop03:
	smpsCall            Snd_SpecialS_Call09
	smpsLoop            $01, $03, Snd_SpecialS_Loop03
	smpsJump            Snd_SpecialS_Loop00

Snd_SpecialS_Call00:
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF, $18

Snd_SpecialS_Loop05:
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGvoice        sTone_27
	dc.b	$0C
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $03, Snd_SpecialS_Loop05
	smpsReturn

Snd_SpecialS_Call01:
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGvoice        sTone_27
	dc.b	$0C
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $04, Snd_SpecialS_Call01
	smpsReturn

Snd_SpecialS_Call02:
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGvoice        sTone_27
	dc.b	$0C
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, Snd_SpecialS_Call02
	smpsPSGvoice        sTone_12
	dc.b	$30
	smpsReturn

Snd_SpecialS_Call03:
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF, $18
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGvoice        sTone_27
	dc.b	$0C
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, Snd_SpecialS_Call03
	smpsReturn

Snd_SpecialS_Call04:
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGvoice        sTone_27
	dc.b	$06
	smpsPSGvoice        sTone_0F
	dc.b	$06
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $03, Snd_SpecialS_Call04
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGvoice        sTone_27
	dc.b	$0C
	smpsPSGAlterVol     $FF
	smpsReturn

Snd_SpecialS_Call05:
	smpsPSGvoice        sTone_12
	dc.b	$18

Snd_SpecialS_Loop04:
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $03, Snd_SpecialS_Loop04
	smpsReturn

Snd_SpecialS_Call06:
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $03, Snd_SpecialS_Call06
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGvoice        sTone_27
	dc.b	$0C
	smpsPSGAlterVol     $FF
	smpsReturn

Snd_SpecialS_Call07:
	smpsPSGvoice        sTone_12
	dc.b	$18, $18
	smpsPSGvoice        sTone_27
	smpsPSGAlterVol     $02
	dc.b	$0C, $0C
	smpsPSGAlterVol     $FF
	dc.b	$0C
	smpsPSGAlterVol     $FF
	dc.b	$0C
	smpsReturn

Snd_SpecialS_Call08:
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGAlterVol     $01
	smpsPSGvoice        sTone_27
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGvoice        sTone_27
	dc.b	$0C
	smpsPSGvoice        sTone_27
	smpsPSGAlterVol     $01
	dc.b	$0C, $0C
	smpsPSGAlterVol     $FF
	dc.b	$0C
	smpsPSGAlterVol     $FF
	dc.b	$0C
	smpsReturn

Snd_SpecialS_Call09:
	smpsPSGvoice        sTone_12
	dc.b	$12, $1E
	smpsPSGvoice        sTone_27
	smpsPSGAlterVol     $02
	dc.b	$0C, $0C
	smpsPSGAlterVol     $FF
	dc.b	$0C
	smpsPSGAlterVol     $FF
	dc.b	$0C
	smpsReturn

; DAC Data
Snd_SpecialS_DAC:
	dc.b	dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, $18, dKickS3

Snd_SpecialS_Jump00:
	dc.b	dKickS3, $0C, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3
	dc.b	dSnareS3, dKickS3, dSnareS3, $06, dSnareS3, dKickS3, $0C, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3
	dc.b	dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, $06, dSnareS3, $0C
	dc.b	dHighTom, $06, dMidTomS3, dLowTomS3, dFloorTomS3, $0C, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3
	dc.b	dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, $06, dSnareS3, dKickS3, $0C
	dc.b	dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, $18, dSnareS3, $06, dSnareS3, dSnareS3, $0C
	dc.b	dKickS3, dKickS3, dSnareS3, $06, $0C, $06, dKickS3, dSnareS3, $0C, $06, $0C, dSnareS3
	dc.b	dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3
	dc.b	dKickS3, dSnareS3, $06, dSnareS3, dKickS3, $0C, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3
	dc.b	dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, $06, dSnareS3, $0C, dHighTom
	dc.b	$06, dMidTomS3, dLowTomS3, dFloorTomS3, $0C, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3
	dc.b	dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, $06, dSnareS3, dKickS3, $0C, dSnareS3
	dc.b	dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, $18, dSnareS3, $06, dSnareS3, dSnareS3, $0C, dKickS3
	dc.b	dKickS3, dSnareS3, $06, $0C, $06, dKickS3, dSnareS3, $0C, $06, $0C, dSnareS3, dKickS3
	dc.b	dSnareS3, dKickS3, dSnareS3, $06, dKickS3, $0C, $06, dSnareS3, $0C, dKickS3, dSnareS3, dKickS3
	dc.b	dSnareS3, dKickS3, dSnareS3, $06, dKickS3, $0C, $06, dSnareS3, dSnareS3, dKickS3, $0C, dSnareS3
	dc.b	dKickS3, dSnareS3, dKickS3, dSnareS3, $06, dKickS3, $0C, $06, dSnareS3, $0C, dKickS3, dSnareS3
	dc.b	dQuickLooseSnare, dQuickLooseSnare, dQuickLooseSnare, dQuickLooseSnare, dSnareS3, $06, dSnareS3, dSnareS3, $0C, dSnareS3, dSnareS3, $06
	dc.b	dSnareS3, dKickS3, $0C, dSnareS3, dKickS3, dSnareS3, $06, dKickS3, $0C, $06, dSnareS3, $0C
	dc.b	dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, $06, dKickS3, $0C, $06, dSnareS3, dSnareS3
	dc.b	dKickS3, $0C, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, $06, dKickS3, $0C, $06, dSnareS3
	dc.b	$0C, dKickS3, dSnareS3, dQuickLooseSnare, dQuickLooseSnare, dQuickLooseSnare, dQuickLooseSnare, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3
	dc.b	dSnareS3, dSnareS3, dSnareS3, dSnareS3, dKickS3, $0C, dSnareS3, dKickS3, $06, dKickS3, dSnareS3, dKickS3
	dc.b	$0C, $06, dSnareS3, $0C, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, $06, dKickS3, dSnareS3
	dc.b	dKickS3, $0C, $06, dSnareS3, $0C, dKickS3, dSnareS3, dKickS3, dSnareS3, $06, dKickS3, $0C
	dc.b	$06, dSnareS3, $0C, dKickS3, $06, dSnareS3, dKickS3, dSnareS3, $0C, dSnareS3, dSnareS3, $06
	dc.b	dKickS3, $0C, dSnareS3, $06, dKickS3, $0C, $06, dSnareS3, $0C, dKickS3, dKickS3, dSnareS3
	dc.b	$06, $0C, $06, dKickS3, $0C, dSnareS3, dKickS3, $06, dKickS3, dSnareS3, $0C, dKickS3
	dc.b	dKickS3, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3
	smpsJump            Snd_SpecialS_Jump00

Snd_SpecialS_Voices:
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
	smpsVcTotalLevel    $00, $00, $00, $15

;	Voice $02
;	$34
;	$00, $02, $01, $01, 	$1F, $1F, $1F, $1F, 	$10, $06, $06, $06
;	$01, $06, $06, $06, 	$35, $1A, $15, $1A, 	$10, $80, $18, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $02, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $06, $06, $10
	smpsVcDecayRate2    $06, $06, $06, $01
	smpsVcDecayLevel    $01, $01, $01, $03
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $00, $18, $00, $10

;	Voice $03
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

;	Voice $04
;	$30
;	$75, $75, $71, $31, 	$D8, $58, $96, $94, 	$01, $1B, $03, $08
;	$01, $04, $01, $01, 	$FF, $2F, $3F, $3F, 	$34, $29, $10, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $07
	smpsVcCoarseFreq    $01, $01, $05, $05
	smpsVcRateScale     $02, $02, $01, $03
	smpsVcAttackRate    $14, $16, $18, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $03, $1B, $01
	smpsVcDecayRate2    $01, $01, $04, $01
	smpsVcDecayLevel    $03, $03, $02, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $10, $29, $34

;	Voice $05
;	$32
;	$65, $74, $03, $31, 	$5F, $9D, $5F, $9B, 	$05, $07, $05, $07
;	$02, $02, $02, $02, 	$1F, $8F, $1F, $AF, 	$23, $23, $1C, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $07, $06
	smpsVcCoarseFreq    $01, $03, $04, $05
	smpsVcRateScale     $02, $01, $02, $01
	smpsVcAttackRate    $1B, $1F, $1D, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $05, $07, $05
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $0A, $01, $08, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1C, $23, $23

;	Voice $06
;	$16
;	$75, $73, $30, $31, 	$1F, $1F, $1F, $1F, 	$05, $08, $06, $08
;	$05, $05, $07, $05, 	$2F, $FF, $5F, $2F, 	$1E, $80, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $00, $03, $05
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $06, $08, $05
	smpsVcDecayRate2    $05, $07, $05, $05
	smpsVcDecayLevel    $02, $05, $0F, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $1E

; Unused voice
;	Voice $07
;	$2C
;	$75, $33, $77, $33, 	$1F, $13, $1F, $10, 	$00, $0D, $0A, $0D
;	$00, $04, $04, $04, 	$0F, $3F, $AF, $8F, 	$14, $80, $19, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $03, $07
	smpsVcCoarseFreq    $03, $07, $03, $05
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $1F, $13, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0A, $0D, $00
	smpsVcDecayRate2    $04, $04, $04, $00
	smpsVcDecayLevel    $08, $0A, $03, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $19, $00, $14

; Unused voice
;	Voice $08
;	$16
;	$7A, $77, $33, $31, 	$1F, $1F, $1F, $1F, 	$05, $08, $06, $0A
;	$07, $05, $07, $05, 	$2F, $AF, $5F, $5F, 	$0F, $94, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $03, $07, $0A
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $06, $08, $05
	smpsVcDecayRate2    $05, $07, $05, $07
	smpsVcDecayLevel    $05, $05, $0A, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $14, $0F

; Unused voice
;	Voice $09
;	$3E
;	$37, $32, $72, $72, 	$1F, $1F, $14, $14, 	$00, $00, $00, $00
;	$08, $0A, $0A, $0A, 	$0F, $0F, $0F, $0F, 	$1C, $80, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $03, $03
	smpsVcCoarseFreq    $02, $02, $02, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $14, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $0A, $0A, $0A, $08
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $1C

; Unused voice
;	Voice $0A
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

