Snd_GreenGZ2_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_GreenGZ2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $10

	smpsHeaderDAC       Snd_GreenGZ2_DAC
	smpsHeaderFM        Snd_GreenGZ2_FM1,	$0C, $0D
	smpsHeaderFM        Snd_GreenGZ2_FM2,	$F4, $16
	smpsHeaderFM        Snd_GreenGZ2_FM3,	$0C, $16
	smpsHeaderFM        Snd_GreenGZ2_FM4,	$00, $10
	smpsHeaderFM        Snd_GreenGZ2_FM5,	$00, $10
	smpsHeaderPSG       Snd_GreenGZ2_PSG1,	$F4, $03, $00, sTone_02
	smpsHeaderPSG       Snd_GreenGZ2_PSG2,	$F4, $03, $00, sTone_02
	smpsHeaderPSG       Snd_GreenGZ2_PSG3,	$23, $01, $00, sTone_03

; FM1 Data
Snd_GreenGZ2_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	smpsModSet          $07, $01, $02, $05
	dc.b	nRst, $60, nRst, nC2, smpsNoAttack, nC2, $36, nG1, $06, nRst, nG1, nG1
	dc.b	nRst, nG1, nRst

Snd_GreenGZ2_Loop07:
	smpsCall            Snd_GreenGZ2_Call08
	dc.b	$0F, nRst, $03, nG1, $06, nD1, $18, nA1, $0C, nA2, $06, nRst
	dc.b	nB1, $0C, nB2, $06, nRst
	smpsCall            Snd_GreenGZ2_Call08
	dc.b	nC2, $0F, nRst, $03, nC2, $06, nG1, $18, nC2, $06, nC3, nRst
	dc.b	nC2, nC3, nC3, nC2, $0C
	smpsCall            Snd_GreenGZ2_Call09
	dc.b	nG1, $0F, nRst, $03, nG1, $06, nD1, $0F, nRst, $03, nD1, $06
	dc.b	nG1, $0F, nRst, $03, nG1, $06, nD1, $0F, nRst, $03, nD1, $06
	dc.b	nG1, $0F, nRst, $03, nG1, $06, nD1, $18, nG1, $0F, nRst, $03
	dc.b	nG1, $06, nD1, $0C, nD2, $06, nD1, nC2, $0F, nRst, $03, nC2
	dc.b	$06, nG1, $0F, nRst, $03, nG1, $06, nC2, $0F, nRst, $03, nC2
	dc.b	$06, nG1, $0F, nRst, $03, nG1, $06, nC2, $0F, nRst, $03, nC2
	dc.b	$06, nG1, $18, nC2, $06, nC3, nRst, nC2, nC3, nC3, nC2, $0C
	smpsCall            Snd_GreenGZ2_Call09
	dc.b	nF1, $0F, nRst, $03, nF1, $06, nC2, $0F, nRst, $03, nC2, $06
	dc.b	nF1, $0F, nRst, $03, nF1, $06, nC2, $0F, nRst, $03, nC2, $06
	dc.b	nF1, $0F, nRst, $03, nF1, $06, nC2, $18, nF1, $0F, nRst, $03
	dc.b	nF1, $06, nC2, $0C, nC3, $06, nC2, nG1, $0F, nRst, $03, nG1
	dc.b	$06, nD1, $0F, nRst, $03, nD1, $06, nG1, $0F, nRst, $03, nG1
	dc.b	$06, nD1, $0F, nRst, $03, nD1, $06, nG1, $0C, nG2, $06, $03
	dc.b	nRst, $03, nG1, $0C, nG2, $03, nRst, $09, nA1, $0C, nA2, $03
	dc.b	nRst, $09, nB1, $0C, nB2, $03, nRst, $09
	smpsCall            Snd_GreenGZ2_Call0A
	dc.b	nC2, $0F, nRst, $03, nC2, $06, nG1, $18, nC2, $0F, nRst, $03
	dc.b	nC2, $06, nG1, $0C, nG2, $06, nG1, nD2, $0F, nRst, $03, nD2
	dc.b	$06, nA1, $0F, nRst, $03, nA1, $06, nD2, $0F, nRst, $03, nD2
	dc.b	$06, nA1, $0F, nRst, $03, nA1, $06, nD2, $0F, nRst, $03, nD2
	dc.b	$06, nA1, $18, nD2, $06, nD3, nRst, nD2, nD3, nD3, nD2, $0C
	dc.b	nF1, $0F, nRst, $03, nF1, $06, nC2, $0F, nRst, $03, nC2, $06
	dc.b	nF1, $0F, nRst, $03, nF1, $06, nC2, $0F, nRst, $03, nC2, $06
	dc.b	nF1, $0F, nRst, $03, nF1, $06, nC2, $18, nF1, $0F, nRst, $03
	dc.b	nF1, $06, nC2, $0C, nC3, $06, nC2, nC2, $0F, nRst, $03, nC2
	dc.b	$06, nG1, $0F, nRst, $03, nG1, $06, nC2, $0F, nRst, $03, nC2
	dc.b	$06, nG1, $0F, nRst, $03, nG1, $06, $0C, nG2, $06, $03, nRst
	dc.b	$03, nG1, $0C, nG2, $03, nRst, $09, nA1, $0C, nA2, $03, nRst
	dc.b	$09, nB1, $0C, nB2, $03, nRst, $09
	smpsCall            Snd_GreenGZ2_Call0A
	dc.b	nE1, $0F, nRst, $03, nE1, $06, nB1, $18, nE1, $0F, nRst, $03
	dc.b	nE1, $06, nB1, $0C, nB2, $06, nB1, nF1, $0F, nRst, $03, nF1
	dc.b	$06, nC2, $0F, nRst, $03, nC2, $06, nF1, $0F, nRst, $03, nF1
	dc.b	$06, nC2, $0F, nRst, $03, nC2, $06, nAb1, $0F, nRst, $03, nAb1
	dc.b	$06, nEb2, $18, nAb1, $06, nAb2, nRst, nAb1, nAb2, nAb2, nAb1, $0C
	smpsCall            Snd_GreenGZ2_Call0A
	dc.b	$0F, nRst, $03, nG1, $06, nD2, $18, nG1, $0F, nRst, $03, nG1
	dc.b	$06, nD2, $0C, nD3, $06, nD2
	smpsCall            Snd_GreenGZ2_Call0A
	dc.b	nC2, nE2, nRst, nE2, $0C, nEb2, $06, nD2, nCs2, nC2, nRst, $12
	dc.b	nG1, $18
	smpsLoop            $00, $03, Snd_GreenGZ2_Loop07
	smpsJump            Snd_GreenGZ2_FM1

Snd_GreenGZ2_Call08:
	dc.b	nC2, $0F, nRst, $03, nC2, $06, nG1, $0F, nRst, $03, nG1, $06
	dc.b	nC2, $0F, nRst, $03, nC2, $06, nG1, $0F, nRst, $03, nG1, $06
	dc.b	nC2, $0F, nRst, $03, nC2, $06, nG1, $18, nC2, $0F, nRst, $03
	dc.b	nC2, $06, nG1, $0C, nG2, $06, nG1, nD2, $0F, nRst, $03, nD2
	dc.b	$06, nA1, $0F, nRst, $03, nA1, $06, nD2, $0F, nRst, $03, nD2
	dc.b	$06, nA1, $0F, nRst, $03, nA1, $06, nD2, $0F, nRst, $03, nD2
	dc.b	$06, nA1, $18, nD2, $06, nD3, nRst, nD2, nD3, nD3, nD2, $0C
	dc.b	nF1, $0F, nRst, $03, nF1, $06, nC2, $0F, nRst, $03, nC2, $06
	dc.b	nF1, $0F, nRst, $03, nF1, $06, nC2, $0F, nRst, $03, nC2, $06
	dc.b	nF1, $0F, nRst, $03, nF1, $06, nC2, $18, nF1, $0F, nRst, $03
	dc.b	nF1, $06, nC2, $0C, nC3, $06, nC2, nC2, $0F, nRst, $03, nC2
	dc.b	$06, nG1, $0F, nRst, $03, nG1, $06, nC2, $0F, nRst, $03, nC2
	dc.b	$06, nG1, $0F, nRst, $03, nG1, $06
	smpsReturn

Snd_GreenGZ2_Call09:
	dc.b	nA1, $0F, nRst, $03, nA1, $06, nE1, $0F, nRst, $03, nE1, $06
	dc.b	nA1, $0F, nRst, $03, nA1, $06, nE1, $0F, nRst, $03, nE1, $06
	dc.b	nA1, $0F, nRst, $03, nA1, $06, nE1, $18, nA1, $0F, nRst, $03
	dc.b	nA1, $06, nE1, $0C, nE2, $06, nE1, nD2, $0F, nRst, $03, nD2
	dc.b	$06, nA1, $0F, nRst, $03, nA1, $06, nD2, $0F, nRst, $03, nD2
	dc.b	$06, nA1, $0F, nRst, $03, nA1, $06, nD2, $0F, nRst, $03, nD2
	dc.b	$06, nA1, $18, nD2, $06, nD3, nRst, nD2, nD3, nD3, nD2, $0C
	smpsReturn

Snd_GreenGZ2_Call0A:
	dc.b	nC2, $0F, nRst, $03, nC2, $06, nG1, $0F, nRst, $03, nG1, $06
	dc.b	nC2, $0F, nRst, $03, nC2, $06, nG1, $0F, nRst, $03, nG1, $06
	smpsReturn

; FM2 Data
Snd_GreenGZ2_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $07
	smpsModSet          $07, $01, $03, $05
	smpsFMAlterVol      $FC
	smpsAlterPitch      $0C

Snd_GreenGZ2_Loop05:
	dc.b	nC4, $06, nRst, nG3, nBb3, nRst, nG3, nRst, nC4, nRst, nG3, nRst
	dc.b	nBb3, nBb3, $0C, nG3
	smpsLoop            $00, $03, Snd_GreenGZ2_Loop05
	dc.b	nC4, $06, nRst, nG3, nBb3, nRst, nG3, nRst, nC4, nRst, nG3, nRst
	dc.b	nG3, nG3, nRst, nG3, nRst
	smpsFMAlterVol      $04
	smpsAlterPitch      $F4
	smpsCall            Snd_GreenGZ2_Call05
	smpsCall            Snd_GreenGZ2_Call06
	smpsCall            Snd_GreenGZ2_Call07

Snd_GreenGZ2_Loop06:
	dc.b	nRst, $60
	smpsLoop            $00, $10, Snd_GreenGZ2_Loop06
	smpsCall            Snd_GreenGZ2_Call06
	smpsCall            Snd_GreenGZ2_Call07
	smpsCall            Snd_GreenGZ2_Call05
	smpsSetvoice        $09
	smpsFMAlterVol      $02
	smpsAlterPitch      $0C
	dc.b	nA5, $60, nG5, nF5, smpsNoAttack, nF5, nG5, nF5, nE5, smpsNoAttack, nE5, nA5
	dc.b	nG5, nF5, nFs5, nA5, nAb5, nG5
	smpsFMAlterVol      $FE
	smpsAlterPitch      $F4
	smpsSetvoice        $04
	smpsFMAlterVol      $01
	smpsModSet          $07, $01, $03, $05
	dc.b	nG5, $06, nA5, nB5, nC6, nA5, nB5, nC6, nD6, nB5, nC6, nD6
	dc.b	nE6, nC6, nD6, nE6, nF6
	smpsFMAlterVol      $FF
	; Snd_GreenGZ2_Call07 does 'smpsFMAlterVol $01' to counteract the 'smpsFMAlterVol $FF'
	; performed by Snd_GreenGZ2_Call06, but this call isn't paired with a call to Snd_GreenGZ2_Call06,
	; causing the volume of this channel to be lowered by 1 every time the song loops.
	; See https://www.youtube.com/watch?v=ZmryHIcNUdQ
	smpsCall            Snd_GreenGZ2_Call07
	smpsJump            Snd_GreenGZ2_FM2

Snd_GreenGZ2_Call05:
	smpsSetvoice        $01
	smpsCall            Snd_GreenGZ2_Call0F
	smpsModSet          $07, $01, $05, $07
	dc.b	nE5, $30
	smpsModSet          $07, $01, $03, $05
	dc.b	$0C, nA5, nAb5, nG5
	smpsModSet          $18, $01, $09, $07
	dc.b	smpsNoAttack, nG5, $60
	smpsModSet          $07, $01, $03, $05
	smpsCall            Snd_GreenGZ2_Call0F
	smpsModSet          $07, $01, $05, $07
	dc.b	nE5, $24, nD5, $18, nCs5
	smpsModSet          $18, $01, $09, $07
	dc.b	nC5, $0C, smpsNoAttack, $60
	smpsReturn

Snd_GreenGZ2_Call0F:
	smpsModSet          $07, $01, $03, $05
	dc.b	nRst, $06, nG5, $12, nE5, $06, nRst, nF5, nRst, nG5, nC6, $0C
	dc.b	$06, nB5, nRst, nG5, nRst, nA5, $12, nG5, nF5, nE5, nD5, $0C
	dc.b	nC5, nD5, $12, nE5
	smpsModSet          $18, $01, $09, $07
	dc.b	nA4, $3C, smpsNoAttack, $30
	smpsModSet          $07, $01, $05, $07
	dc.b	$18, nB4
	smpsModSet          $18, $01, $09, $07
	dc.b	nC5, $60
	smpsModSet          $07, $01, $03, $05
	dc.b	nD5, $24, nC5, nD5, $18
	smpsReturn

Snd_GreenGZ2_Call06:
	smpsSetvoice        $03
	smpsAlterPitch      $0C
	smpsFMAlterVol      $FF
	smpsModSet          $0C, $01, $05, $07
	dc.b	nA4, $48
	smpsModSet          $07, $01, $03, $05
	dc.b	nCs5, $0C, nE5, smpsNoAttack, nE5, nE5, nG5, nRst, nF5, nE5, nRst, nD5
	dc.b	smpsNoAttack, nD5, $18, nCs5, nD5, $0C, nE5, nRst, nF5, nRst, nF5, nE5
	dc.b	$16, nRst, $02, nD5, $16, nRst, $02, nC5, $16, nRst, $02
	smpsModSet          $0C, $01, $05, $07
	dc.b	nB4, $3C
	smpsModSet          $07, $01, $03, $05
	dc.b	nD5, $0C, nB4, nG5, smpsNoAttack, nG5, nG5, nG5, nA5, nG5, nF5
	smpsModSet          $18, $01, $05, $07
	dc.b	nRst, nE5, smpsNoAttack, nE5, $60, smpsNoAttack, $30
	smpsModSet          $07, $01, $03, $05
	dc.b	nC5, $18, nB4
	smpsModSet          $18, $01, $05, $07
	dc.b	nA4, $3C
	smpsModSet          $07, $01, $03, $05
	dc.b	nCs5, $0C, nRst, nE5, smpsNoAttack, nE5, nE5, nE5, nG5, nF5, nE5, nRst
	dc.b	nD5, smpsNoAttack, nD5, $18, nCs5, nD5, $0C, nF5
	smpsModSet          $18, $01, $05, $07
	dc.b	nRst, nA5, smpsNoAttack, nA5, $30
	smpsModSet          $07, $01, $03, $05
	dc.b	$0C, nG5, nFs5, nE5, smpsNoAttack, nF5, $18, nE5, nF5, $0C, nA5
	smpsModSet          $07, $01, $05, $07
	dc.b	nRst, nC6, smpsNoAttack, nC6
	smpsModSet          $07, $01, $03, $05
	dc.b	nC6, nC6, nC6, nBb5, nAb5
	smpsModSet          $18, $01, $05, $07
	dc.b	nRst, nG5, smpsNoAttack, nG5, $60, smpsNoAttack, $60
	smpsAlterPitch      $F4
	smpsReturn

Snd_GreenGZ2_Call07:
	smpsSetvoice        $04
	smpsFMAlterVol      $01
	smpsAlterPitch      $0C
	smpsModSet          $07, $01, $03, $05
	dc.b	nRst, $0C, nG5, nE5, $06, nRst, nF5, nRst, nG5, nC6, $0C, $06
	dc.b	nA5, nRst, nG5, nRst, nA5, $12, nG5, nE5, nD5, nC5, $0C, nE5
	smpsModSet          $0C, $01, $04, $06
	dc.b	nD5, $24
	smpsModSet          $07, $01, $03, $05
	dc.b	nA5, $18, nAb5, $0C, nG5
	smpsModSet          $0C, $01, $04, $06
	dc.b	nFs5, smpsNoAttack, nFs5, $30
	smpsModSet          $07, $01, $03, $05
	dc.b	nD5, $18, nE5, nF5, $0C, nE5, nF5
	smpsModSet          $0C, $01, $04, $06
	dc.b	nC6, $3C
	smpsModSet          $07, $01, $03, $05
	dc.b	nF5, $0C, nE5, nF5
	smpsModSet          $0C, $01, $04, $06
	dc.b	nC6, $24
	smpsModSet          $07, $01, $03, $05
	dc.b	nD6, $18, nE6, $24, nD6, $18, nC6, nC6, $0C, nB5, nBb5, nA5
	dc.b	nAb5
	smpsModSet          $0C, $01, $04, $06
	dc.b	nG5, $30
	smpsModSet          $07, $01, $03, $05
	dc.b	nRst, $0C, nG5, nE5, $06, nRst, nF5, nRst, nG5, nC6, $0C, $06
	dc.b	nA5, nRst, nG5, nRst, nA5, $12, nAb5, nE5, nE5, nFs5, $0C, nAb5
	smpsModSet          $0C, $01, $04, $06
	dc.b	nB5, $24
	smpsModSet          $07, $01, $03, $05
	dc.b	nA5, $18, nB5, $0C, nA5, nG5, nAb5
	smpsModSet          $0C, $01, $04, $06
	dc.b	nC6, $24
	smpsModSet          $07, $01, $03, $05
	dc.b	$18, nD6, nE6, $24, nC6, $18, nE6, $0C, nC6, nG5, nF5, nE5
	dc.b	nF5
	smpsModSet          $0C, $01, $04, $06
	dc.b	nB5, $24, nD6, $18
	smpsModSet          $18, $01, $04, $06
	dc.b	nC6, $60, smpsNoAttack, $30, nRst
	smpsAlterPitch      $F4
	smpsReturn

; FM3 Data
Snd_GreenGZ2_FM3:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $08
	smpsModSet          $07, $01, $03, $05
	smpsAlterPitch      $F4
	dc.b	nRst, $60, nRst, nC5, $06, nRst, nG4, nBb4, nRst, nG4, nRst, nC5
	dc.b	nRst, nG4, nRst, nBb4, nBb4, $0C, nG4, nC5, $06, nRst, nG4, nBb4
	dc.b	nRst, nG4, nRst, nC5, nRst, nG4, nRst, nG4, nG4, nRst, nG4, nRst
	smpsAlterPitch      $0C
	smpsCall            Snd_GreenGZ2_Call02
	smpsCall            Snd_GreenGZ2_Call03
	smpsCall            Snd_GreenGZ2_Call04

Snd_GreenGZ2_Loop04:
	dc.b	nRst, $60
	smpsLoop            $00, $10, Snd_GreenGZ2_Loop04
	smpsCall            Snd_GreenGZ2_Call03
	smpsCall            Snd_GreenGZ2_Call04
	smpsCall            Snd_GreenGZ2_Call02
	smpsSetvoice        $09
	smpsAlterPitch      $F4
	smpsFMAlterVol      $02
	dc.b	nCs5, $60, smpsNoAttack, nCs5, nD5, smpsNoAttack, nD5, nB4, nD5, nC5, smpsNoAttack, nC5
	dc.b	nCs5, nE5, nD5, smpsNoAttack, nD5, nF5, smpsNoAttack, nF5, nD5
	smpsSetvoice        $02
	smpsAlterPitch      $0C
	smpsFMAlterVol      $FE
	dc.b	nE3, $06, nFs3, nG3, nA3, nFs3, nG3, nA3, nB3, nG3, nA3, nB3
	dc.b	nC4, nA3, nB3, nC4, nD4
	smpsCall            Snd_GreenGZ2_Call04
	smpsJump            Snd_GreenGZ2_FM3

Snd_GreenGZ2_Call02:
	smpsSetvoice        $02
	smpsCall            Snd_GreenGZ2_Call0E
	dc.b	nC4, $30, $0C, nE4, nE4, nD4, smpsNoAttack, nD4, $60
	smpsCall            Snd_GreenGZ2_Call0E
	dc.b	nC4, $24, nG3, $18, nG3, nG3, $0C, smpsNoAttack, $60
	smpsReturn

Snd_GreenGZ2_Call0E:
	dc.b	nRst, $06, nE4, $12, nC4, $06, nRst, nC4, nRst, nE4, nG4, $0C
	dc.b	$06, nG4, nRst, nE4, nRst, nE4, $12, nE4, nC4, nC4, nG3, $0C
	dc.b	nG3, nA3, $12, nA3, nFs3, $3C, smpsNoAttack, $30, $18, nFs3, nA3, $60
	dc.b	nAb3, $24, nAb3, nAb3, $18
	smpsReturn

Snd_GreenGZ2_Call03:
	dc.b	nE3, $48, nA3, $0C, nCs4, smpsNoAttack, nCs4, nCs4, nE4, nRst, nCs4, nCs4
	dc.b	nRst, nA3, smpsNoAttack, nA3, $18, nA3, nA3, $0C, nA3, nRst, nD4, nRst
	dc.b	nD4, nA3, $16, nRst, $02, nA3, $16, nRst, $02, nA3, $16, nRst
	dc.b	$02, nG3, $3C, nB3, $0C, nG3, nD4, smpsNoAttack, nD4, nD4, nD4, nF4
	dc.b	nD4, nD4, nRst, nC4, smpsNoAttack, nC4, $60, smpsNoAttack, $30, nG3, $18, nG3
	dc.b	nE3, $3C, nG3, $0C, nRst, nCs4, smpsNoAttack, nCs4, nCs4, nCs4, nE4, nCs4
	dc.b	nCs4, nRst, nA3, smpsNoAttack, nA3, $18, nA3, nA3, $0C, nD4, nRst, nFs4
	dc.b	smpsNoAttack, nFs4, $30, $0C, nD4, nD4, nA3, smpsNoAttack, nC4, $18, nC4, nC4
	dc.b	$0C, nF4, nRst, nAb4, smpsNoAttack, nAb4, nAb4, nAb4, nAb4, nF4, nF4, nRst
	dc.b	nD4, smpsNoAttack, nD4, $60, smpsNoAttack, $60
	smpsReturn

Snd_GreenGZ2_Call04:
	dc.b	nRst, $0C, nE4, nC4, $06, nRst, nC4, nRst, nE4, nG4, $0C, $06
	dc.b	nE4, nRst, nE4, nRst, nE4, $12, nE4, nC4, nG3, nG3, $0C, nC4
	dc.b	nA3, $24, nFs4, $18, nD4, $0C, nD4, nD4, smpsNoAttack, nD4, $30, nA3
	dc.b	$18, nA3, nC4, $0C, nC4, nC4, nA4, $3C, nC4, $0C, nC4, nC4
	dc.b	nAb4, $24, $18, nC5, $24, nG4, $18, nG4, nG4, $0C, nG4, nG4
	dc.b	nD4, nD4, nD4, $30, nRst, $0C, nE4, nC4, $06, nRst, nC4, nRst
	dc.b	nE4, nE4, $0C, nG4, $06, nE4, nRst, nE4, nRst, nE4, $12, nE4
	dc.b	nB3, nB3, nB3, $0C, nE4, nF4, $24, $18, $0C, nF4, nC4, nEb4
	dc.b	nAb4, $24, $18, nAb4, nC5, $24, nG4, $18, nC5, $0C, nG4, nE4
	dc.b	nD4, nC4, nD4, nG4, $24, nF4, $18, nG4, $60, smpsNoAttack, $30, nRst
	smpsReturn

; FM4 Data
Snd_GreenGZ2_FM4:
	smpsSetvoice        $05
	smpsPan             panLeft, $00
	smpsModSet          $0C, $01, $05, $07
	dc.b	nRst, $60, nRst, $54, nEb4, $04, nD4, nCs4, nC4, $60, smpsNoAttack, $36
	dc.b	nG4, $06, nRst, nG4, nG4, $0C, nFs4, $01, nF4, nE4, nEb4, nD4
	dc.b	nCs4, nC4, nB3, nBb3, nA3, nAb3, nG3

Snd_GreenGZ2_Loop03:
	dc.b	nC4, $06, nRst, nD4, nE4, nRst, nG4, nRst, nG4, $2A, nRst, $0C
	dc.b	nRst, nC5, $06, nC5, nRst, nG4, nRst, nG4, $18, nFs4, $02, nF4
	dc.b	nE4, nEb4, nD4, nCs4, nC4, nB3, nBb3, nRst, $0C, nRst, $18, nD5
	dc.b	$0C, nD5, nRst, nA4, nRst, nFs4, smpsNoAttack, nFs4, $30, nRst, $0C, nD5
	dc.b	$06, nD5, nRst, $18, nF4, $06, nRst, nG4, nA4, nRst, nC5, nRst
	dc.b	nC5, $18, nB4, $02, nBb4, nA4, nAb4, nG4, nFs4, nF4, nE4, nEb4
	dc.b	nRst, $0C, nRst, nC5, $06, nC5, nRst, nAb4, nRst, nF4, $1E, nRst
	dc.b	$0C, nC5, $06, nC5, nC5, $0C, nRst, $30, nC5, $06, nC5, nRst
	dc.b	nG4, nRst, nE4, nB3, nD4, nRst, nD4, $12, nRst, $0C, nG4, $18
	dc.b	nFs4, $02, nF4, nE4, nEb4, nD4, nCs4, nC4, nB3, nBb3, nA3, nAb3
	dc.b	nG3, nC4, $06, nRst, nD4, nE4, nRst, nG4, nRst, nG4, $2A, nRst
	dc.b	$0C, nRst, nC5, $06, nC5, nRst, nG4, nRst, nG4, $18, nFs4, $02
	dc.b	nF4, nE4, nEb4, nD4, nCs4, nC4, nB3, nBb3, nRst, $0C, nRst, $18
	dc.b	nD5, $0C, nD5, nRst, nA4, nRst, nFs4, smpsNoAttack, nFs4, $30, nRst, $0C
	dc.b	nD5, $06, nD5, nRst, $18, nF4, $06, nRst, nG4, nA4, nRst, nC5
	dc.b	nRst, nC5, $18, nB4, $02, nBb4, nA4, nAb4, nG4, nFs4, nF4, nE4
	dc.b	nEb4, nRst, $0C, nRst, nC5, $06, nC5, nRst, nAb4, nRst, nF4, $1E
	dc.b	nRst, $0C, nC5, $06, nC5, nC5, $0C, nRst, $30, nC5, $06, nC5
	dc.b	nRst, nG4, nRst, nE4, smpsNoAttack, nE4, nG4, nRst, nG4, $12, nRst, nG4
	dc.b	$06, nRst, nG4, nG4, $0C, nRst, nRst, $3C, nA4, $06, nG4, nRst
	dc.b	nE4, nRst, nCs4, smpsNoAttack, nCs4, nE4, nRst, nE4, $1E, nEb4, $02, nD4
	dc.b	nCs4, nC4, nB3, nBb3, nA3, nAb3, nG3, nRst, $1E, nD5, $12, nRst
	dc.b	$48, nD4, $06, smpsNoAttack, $2A, nRst, $0C, nD5, $06, nRst, nD5, nD5
	dc.b	nRst, $12, nG3, $06, nRst, nA3, nB3, nRst, nD4, nRst, nD4, $18
	dc.b	nCs4, $02, nC4, nB3, nBb3, nA3, nAb3, nG3, nFs3, nF3, nRst, $0C
	dc.b	nRst, $18, nG3, nA3, nB3, nC4, $0C, nRst, $30, nC5, $06, nC5
	dc.b	nRst, nG4, nRst, nE4, smpsNoAttack, nE4, nG4, nRst, nG4, $18, nRst, $0C
	dc.b	nG4, $06, nRst, nG4, nG4, nRst, $12, nRst, $3C, nA4, $06, nG4
	dc.b	nRst, nE4, nRst, nCs4, smpsNoAttack, nCs4, nE4, nRst, nE4, $1E, nEb4, $02
	dc.b	nD4, nCs4, nC4, nB3, nBb3, nA3, nAb3, nG3, nRst, $1E, nD5, $12
	dc.b	nRst, $48, nD4, $06, nFs4, $30, nRst, $0C, nD5, $06, nD5, nRst
	dc.b	$18, nF4, $06, nRst, nG4, nA4, nRst, nC5, nRst, nC5, $18, nB4
	dc.b	$02, nBb4, nA4, nAb4, nG4, nFs4, nF4, nE4, nEb4, nRst, $0C, nRst
	dc.b	nC5, $06, nC5, nRst, nAb4, nRst, nF4, $1E, nRst, $0C, nC5, $06
	dc.b	nC5, nRst, $24, nB4, $06, nB4, nRst, nG4, nRst, nD4, $1E, nB3
	dc.b	$06, nD4, nRst, nD4, $1E, nRst, $06, nD4, nRst, nD4, nD4, nRst
	dc.b	$12, nC4, $06, nRst, nD4, nE4, nRst, nG4, nRst, nG4, $18, nFs4
	dc.b	$02, nF4, nE4, nEb4, nD4, nCs4, nC4, nB3, nBb3, nRst, $0C, nRst
	dc.b	nC5, $06, nC5, nRst, nG4, nRst, nG4, $2A, nRst, $0C, nRst, $18
	dc.b	nD5, $0C, nD5, nRst, nA4, nRst, nFs4, smpsNoAttack, nFs4, $30, nRst, $0C
	dc.b	nD5, $06, nD5, nRst, $18, nF4, $06, nRst, nG4, nA4, nRst, nC5
	dc.b	nRst, nC5, $2A, nRst, $0C, nRst, nC5, $06, nC5, nRst, nAb4, nRst
	dc.b	nF4, $1E, nRst, $0C, nC5, $06, nC5, nC5, $0C, nRst, $30, nC5
	dc.b	$06, nC5, nRst, nG4, nRst, nE4, nRst, $0C, nF4, $06, nRst, $0C
	dc.b	nF4, $06, nRst, $0C, nF4, $24, nRst, $0C, nC4, $06, nRst, nD4
	dc.b	nE4, nRst, nG4, nRst, nG4, $2A, nRst, $0C, nRst, nB4, $06, nB4
	dc.b	nRst, nAb4, nRst, nE4, $18, nEb4, $02, nD4, nCs4, nC4, nB3, nBb3
	dc.b	nA3, nAb3, nG3, nRst, $0C, nRst, $18, nF5, $0C, nF5, nRst, nC5
	dc.b	nRst, nA4, nF4, $2A, nRst, $0C, nF5, $06, nRst, nF5, nF5, nRst
	dc.b	$12, nC4, $06, nRst, nD4, nE4, nRst, nG4, nRst, nG4, $2A, nRst
	dc.b	$0C, nRst, $18, nG3, nA3, nB3, nC4, $30, nRst, $0C, nC5, $06
	dc.b	nC5, nRst, nG4, nRst, nE4, smpsNoAttack, nE4, nG4, nRst, nG4, nRst, nG4
	dc.b	nRst, nG4, nG4, nRst, $2A
	smpsLoop            $00, $03, Snd_GreenGZ2_Loop03
	smpsJump            Snd_GreenGZ2_FM4

; FM5 Data
Snd_GreenGZ2_FM5:
	smpsSetvoice        $06
	smpsPan             panRight, $00
	smpsModSet          $0C, $01, $05, $07
	dc.b	nRst, $60, nRst, $54, nG4, $04, nFs4, nF4, nE4, $60, smpsNoAttack, $36
	dc.b	nB4, $06, nRst, nB4, nB4, $0C, nBb4, $01, nA4, nAb4, nG4, nFs4
	dc.b	nF4, nE4, nEb4, nD4, nCs4, nC4, nB3

Snd_GreenGZ2_Loop02:
	dc.b	nG3, $06, nRst, nB3, nC4, nRst, nE4, nRst, nE4, $2A, nRst, $0C
	dc.b	nRst, nE4, $06, nE4, nRst, nE4, nRst, nE4, $18, nEb4, $02, nD4
	dc.b	nCs4, nC4, nB3, nBb3, nA3, nAb3, nG3, nRst, $0C, nRst, $18, nA4
	dc.b	$0C, nA4, nRst, nFs4, nRst, nD4, smpsNoAttack, nD4, $30, nRst, $0C, nA4
	dc.b	$06, nA4, nRst, $18, nC4, $06, nRst, nE4, nF4, nRst, nA4, nRst
	dc.b	nA4, $18, nAb4, $02, nG4, nFs4, nF4, nE4, nEb4, nD4, nCs4, nC4
	dc.b	nRst, $0C, nRst, nAb4, $06, nAb4, nRst, nF4, nRst, nC4, $1E, nRst
	dc.b	$0C, nAb4, $06, nAb4, nG4, $0C, nRst, $30, nG4, $06, nG4, nRst
	dc.b	nE4, nRst, nC4, nG3, nB3, nRst, nB3, $12, nRst, $0C, nD4, $18
	dc.b	nCs4, $02, nC4, nB3, nBb3, nA3, nAb3, nG3, nFs3, nF3, nE3, nEb3
	dc.b	nD3, nG3, $06, nRst, nB3, nC4, nRst, nE4, nRst, nE4, $2A, nRst
	dc.b	$0C, nRst, nE4, $06, nE4, nRst, nE4, nRst, nE4, $18, nEb4, $02
	dc.b	nD4, nCs4, nC4, nB3, nBb3, nA3, nAb3, nG3, nRst, $0C, nRst, $18
	dc.b	nA4, $0C, nA4, nRst, nFs4, nRst, nD4, smpsNoAttack, nD4, $30, nRst, $0C
	dc.b	nA4, $06, nA4, nRst, $18, nC4, $06, nRst, nE4, nF4, nRst, nA4
	dc.b	nRst, nA4, $18, nAb4, $02, nG4, nFs4, nF4, nE4, nEb4, nD4, nCs4
	dc.b	nC4, nRst, $0C, nRst, nAb4, $06, nAb4, nRst, nF4, nRst, nC4, $1E
	dc.b	nRst, $0C, nAb4, $06, nAb4, nG4, $0C, nRst, $30, nG4, $06, nG4
	dc.b	nRst, nE4, nRst, nC4, smpsNoAttack, nC4, nE4, nRst, nE4, $12, nRst, nE4
	dc.b	$06, nRst, nE4, nE4, $0C, nRst, nRst, $3C, nE4, $06, nD4, nRst
	dc.b	nCs4, nRst, nA3, smpsNoAttack, nA3, nCs4, nRst, nCs4, $1E, nC4, $02, nB3
	dc.b	nBb3, nA3, nAb3, nG3, nFs3, nF3, nE3, nRst, $1E, nF5, $12, nRst
	dc.b	$48, nA3, $06, smpsNoAttack, $2A, nRst, $0C, nF5, $06, nRst, nF5, nF5
	dc.b	nRst, $12, nD3, $06, nRst, nFs3, nG3, nRst, nB3, nRst, nB3, $18
	dc.b	nBb3, $02, nA3, nAb3, nG3, nFs3, nF3, nE3, nEb3, nD3, nRst, $0C
	dc.b	nRst, $18, nG4, nA4, nB4, nC5, $0C, nRst, $30, nG4, $06, nG4
	dc.b	nRst, nE4, nRst, nC4, smpsNoAttack, nC4, nE4, nRst, nE4, $18, nRst, $0C
	dc.b	nE4, $06, nRst, nE4, nE4, nRst, $12, nRst, $3C, nE4, $06, nD4
	dc.b	nRst, nCs4, nRst, nA3, smpsNoAttack, nA3, nCs4, nRst, nCs4, $1E, nC4, $02
	dc.b	nB3, nBb3, nA3, nAb3, nG3, nFs3, nF3, nE3, nRst, $1E, nF5, $12
	dc.b	nRst, $48, nA3, $06, nD4, $30, nRst, $0C, nFs5, $06, nFs5, nRst
	dc.b	$18, nC4, $06, nRst, nE4, nF4, nRst, nA4, nRst, nA4, $18, nAb4
	dc.b	$02, nG4, nFs4, nF4, nE4, nEb4, nD4, nCs4, nC4, nRst, $0C, nRst
	dc.b	nAb4, $06, nAb4, nRst, nF4, nRst, nC4, $1E, nRst, $0C, nAb4, $06
	dc.b	nAb4, nRst, $24, nG4, $06, nG4, nRst, nD4, nRst, nB3, $1E, nG3
	dc.b	$06, nB3, nRst, nB3, $1E, nRst, $06, nB3, nRst, nB3, nB3, nRst
	dc.b	$12, nG3, $06, nRst, nB3, nC4, nRst, nE4, nRst, nE4, $18, nEb4
	dc.b	$02, nD4, nCs4, nC4, nB3, nBb3, nA3, nAb3, nG3, nRst, $0C, nRst
	dc.b	nE4, $06, nE4, nRst, nE4, nRst, nE4, $2A, nRst, $0C, nRst, $18
	dc.b	nA4, $0C, nA4, nRst, nFs4, nRst, nD4, smpsNoAttack, nD4, $30, nRst, $0C
	dc.b	nA4, $06, nA4, nRst, $18, nC4, $06, nRst, nE4, nF4, nRst, nA4
	dc.b	nRst, nA4, $2A, nRst, $0C, nRst, nAb4, $06, nAb4, nRst, nF4, nRst
	dc.b	nC4, $1E, nRst, $0C, nAb4, $06, nAb4, nG4, $0C, nRst, $30, nG4
	dc.b	$06, nG4, nRst, nE4, nRst, nC4, nRst, $0C, nD4, $06, nRst, $0C
	dc.b	nD4, $06, nRst, $0C, nD4, $24, nRst, $0C, nG3, $06, nRst, nB3
	dc.b	nC4, nRst, nE4, nRst, nE4, $2A, nRst, $0C, nRst, nAb4, $06, nAb4
	dc.b	nRst, nE4, nRst, nB3, $18, nBb3, $02, nA3, nAb3, nG3, nFs3, nF3
	dc.b	nE3, nEb3, nD3, nRst, $0C, nRst, $18, nC5, $0C, nC5, nRst, nA4
	dc.b	nRst, nF4, nAb4, $2A, nRst, $0C, nAb5, $06, nRst, nAb5, nAb5, nRst
	dc.b	$12, nG3, $06, nRst, nB3, nC4, nRst, nE4, nRst, nE4, $2A, nRst
	dc.b	$0C, nRst, $18, nG4, nA4, nB4, nC5, $30, nRst, $0C, nG4, $06
	dc.b	nG4, nRst, nE4, nRst, nC4, smpsNoAttack, nC4, nE4, nRst, nE4, nRst, nE4
	dc.b	nRst, nE4, nE4, nRst, $2A
	smpsLoop            $00, $03, Snd_GreenGZ2_Loop02
	smpsJump            Snd_GreenGZ2_FM5

; PSG1 Data
Snd_GreenGZ2_PSG1:
	smpsPSGvoice        sTone_23
	smpsModSet          $02, $01, $01, $03
	smpsNoteFill        $04
	dc.b	nRst, $60, nRst, nRst, $0C, nG3, $06, nG3, nRst, nG3, nRst, $0C
	dc.b	nG3, $06, nRst, $0C, nG3, $06, nRst, $0C, nG3, $06, nG3, nRst
	dc.b	$0C, nG3, $06, nG3, nRst, nG3, nRst, $0C, nG3, $06, nG3, nRst
	dc.b	nG3, nG3, nRst, nG3, nRst

Snd_GreenGZ2_Loop0D:
	dc.b	nRst, $0C, nG3, $06, nG3, nRst, nG3, nRst, nG3, nRst, nG3, nRst
	dc.b	nG3, nRst, $0C, nG3, $06, nG3, nRst, $0C, nG3, $06, nG3, nRst
	dc.b	nG3, nRst, nG3, nRst, nG3, nRst, nG3, nRst, $0C, nG3, $06, nG3
	dc.b	nRst, $0C, nA3, $06, nA3, nRst, nA3, nRst, nA3, nRst, nA3, nRst
	dc.b	nA3, nRst, $0C, nA3, $06, nA3, nRst, $0C, nA3, $06, nA3, nRst
	dc.b	nA3, nRst, nA3, nRst, nA3, nRst, nA3, nRst, $0C, nA3, $06, nA3
	dc.b	nRst, $0C, nC4, $06, nC4, nRst, nC4, nRst, nC4, nRst, nC4, nRst
	dc.b	nC4, nRst, $0C, nC4, $06, nC4, nRst, $0C, nAb3, $06, nAb3, nRst
	dc.b	$0C, nAb3, $06, nAb3, nRst, $0C, nAb3, $06, nAb3, nRst, $0C, nAb3
	dc.b	$06, nAb3, nRst, $0C, nG3, $06, nG3, nRst, nG3, nRst, nG3, nRst
	dc.b	nG3, nRst, nG3, nRst, $0C, nG3, $06, nG3, nRst, $0C, nG3, $06
	dc.b	nG3, nRst, $0C, nG3, $06, nG3, nRst
	smpsPSGvoice        sTone_01
	smpsNoteFill        $00
	dc.b	nD4, $03, nG4, nF4, $06, nD4, nF4, nD4, nB3, nD4
	smpsPSGvoice        sTone_23
	smpsNoteFill        $04
	dc.b	nRst, $0C, nG3, $06, nG3, nRst, nG3, nRst, nG3, nRst, nG3, nRst
	dc.b	nG3, nRst, $0C, nG3, $06, nG3, nRst, $0C, nG3, $06, nG3, nRst
	dc.b	nG3, nRst, nG3, nRst, nG3, nRst, nG3, nRst, $0C, nG3, $06, nG3
	dc.b	nRst, $0C, nA3, $06, nA3, nRst, nA3, nRst, nA3, nRst, nA3, nRst
	dc.b	nA3, nRst, $0C, nA3, $06, nA3, nRst, $0C, nA3, $06, nA3, nRst
	dc.b	nA3, nRst, nA3, nRst, nA3, nRst, nA3, nRst, $0C, nA3, $06, nA3
	dc.b	nRst, $0C, nC4, $06, nC4, nRst, nC4, nRst, nC4, nRst, nC4, nRst
	dc.b	nC4, nRst, $0C, nC4, $06, nC4, nRst, $0C, nAb3, $06, nAb3, nRst
	dc.b	$0C, nAb3, $06, nAb3, nRst, $0C, nAb3, $06, nAb3, nRst, $0C, nAb3
	dc.b	$06, nAb3, nRst, $0C, nG3, $06, nG3, nRst, nG3, nRst, nG3, nRst
	dc.b	nG3, nRst, nG3, nRst, $0C, nG3, $06, nG3, nRst, $0C, nG3, $06
	dc.b	nG3, nRst, $0C, nG3, $06, nG3, nRst
	smpsPSGvoice        sTone_01
	smpsNoteFill        $00
	dc.b	nE4, $02, nF4, nG4, nF4, $06, nE4, nF4, nE4, nD4, nC4
	smpsPSGvoice        sTone_23
	smpsNoteFill        $04
	dc.b	nRst, $0C, nE4, $06, nE4, nRst, nE4, nRst, nE4, nRst, nE4, nRst
	dc.b	nE4, nRst, $0C, nE4, $06, nE4, nRst, $0C, nE4, $06, nE4, nRst
	dc.b	nE4, nRst, nE4, nRst
	smpsPSGvoice        sTone_01
	smpsNoteFill        $00
	dc.b	nE4, $03, nA4, nG4, $06, nE4, nG4, nE4, nCs4, nE4
	smpsPSGvoice        sTone_23
	smpsNoteFill        $04
	dc.b	nRst, $0C, nF3, $06, nF3, nRst, $0C, nF3, $06, nF3, nRst, $0C
	dc.b	nF3, $06, nF3, nRst, $0C, nF3, $06, nF3, nRst, $0C, nF3, $06
	dc.b	nF3, nRst, $0C, nF3, $06, nF3, nRst, $0C, nF3, $06, nF3, nRst
	dc.b	$0C, nF3, $06, nF3, nRst, $0C, nD4, $06, nD4, nRst, nD4, nRst
	dc.b	nD4, nRst, nD4, nRst, nD4, nRst, $0C, nD4, $06, nD4, nRst, $0C
	dc.b	nD4, $06, nD4, nRst, nD4, nRst, nD4, nRst
	smpsPSGvoice        sTone_01
	smpsNoteFill        $00
	dc.b	nD4, $03, nG4, nF4, $06, nD4, nF4, nD4, nB3, nD4
	smpsPSGvoice        sTone_23
	smpsNoteFill        $04
	dc.b	nRst, $0C, nG3, $06, nG3, nRst, nG3, nRst, nG3, nRst, nG3, nRst
	dc.b	nG3, nRst, $0C, nG3, $06, nG3, nRst, $0C, nE3, $06, nE3, nRst
	dc.b	$0C, nE3, $06, nE3, nRst, $0C, nE3, $06, nE3, nRst, $0C, nG3
	dc.b	$06, nG3, nRst, $0C, nE4, $06, nE4, nRst, nE4, nRst, nE4, nRst
	dc.b	nE4, nRst, nE4, nRst, $0C, nE4, $06, nE4, nRst, $0C, nE4, $06
	dc.b	nE4, nRst, nE4, nRst, nE4, nRst
	smpsPSGvoice        sTone_01
	smpsNoteFill        $00
	dc.b	nE4, $03, nA4, nG4, $06, nE4, nG4, nE4, nCs4, nE4
	smpsPSGvoice        sTone_23
	smpsNoteFill        $04
	dc.b	nRst, $0C, nF3, $06, nF3, nRst, $0C, nF3, $06, nF3, nRst, $0C
	dc.b	nF3, $06, nF3, nRst, $0C, nF3, $06, nF3, nRst, $0C, nA3, $06
	dc.b	nA3, nRst, nA3, nRst, nA3, nRst, nA3, nRst, nA3, nRst, $0C, nA3
	dc.b	$06, nA3, nRst, $0C, nC4, $06, nC4, nRst, nC4, nRst, nC4, nRst
	dc.b	nC4, nRst, nC4, nRst, $0C, nC4, $06, nC4, nRst, $0C, nAb3, $06
	dc.b	nAb3, nRst, $0C, nAb3, $06, nAb3, nRst, $0C, nAb3, $06, nAb3, nRst
	dc.b	$0C, nAb3, $06, nAb3, nRst, $0C, nD4, $06, nD4, nRst, nD4, nRst
	dc.b	nD4, nRst, nD4, nRst, nD4, nRst, $0C, nD4, $06, nD4, nRst, $0C
	dc.b	nD4, $06, nD4, nRst, nD4, nRst, nD4, nRst
	smpsPSGvoice        sTone_01
	smpsNoteFill        $00
	dc.b	nD4, $03, nG4, nF4, $06, nD4, nF4, nD4, nB3, nD4
	smpsPSGvoice        sTone_23
	smpsNoteFill        $04
	dc.b	nRst, $0C, nG3, $06, nG3, nRst, nG3, nRst, nG3, nRst, nG3, nRst
	dc.b	nG3, nRst, $0C, nG3, $06, nG3, nRst, $0C, nG3, $06, nG3, nRst
	dc.b	nG3, nRst, nG3, nRst, nG3, nRst, nG3, nRst, $0C, nG3, $06, nG3
	dc.b	nRst, $0C, nA3, $06, nA3, nRst, nA3, nRst, nA3, nRst, nA3, nRst
	dc.b	nA3, nRst, $0C, nA3, $06, nA3, nRst, $0C, nA3, $06, nA3, nRst
	dc.b	nA3, nRst, nA3, nRst, nA3, nRst, nA3, nRst, $0C, nA3, $06, nA3
	dc.b	nRst, $0C, nC4, $06, nC4, nRst, nC4, nRst, nC4, nRst, nC4, nRst
	dc.b	nC4, nRst, $0C, nC4, $06, nC4, nRst, $0C, nAb3, $06, nAb3, nRst
	dc.b	$0C, nAb3, $06, nAb3, nRst, $0C, nAb3, $06, nAb3, nRst, $0C, nAb3
	dc.b	$06, nAb3, nRst, $0C, nG3, $06, nG3, nRst, nG3, nRst, nG3, nRst
	dc.b	nG3, nRst, nG3, nRst, $0C, nG3, $06, nG3, nRst, $0C, nD4, $06
	dc.b	nD4, nRst, $0C, nD4, $06, nD4, nRst
	smpsPSGvoice        sTone_01
	smpsNoteFill        $00
	dc.b	nD4, $03, nG4, nF4, $06, nD4, nF4, nD4, nB3, nD4
	smpsPSGvoice        sTone_23
	smpsNoteFill        $04
	dc.b	nRst, $0C, nG3, $06, nG3, nRst, nG3, nRst, nG3, nRst, nG3, nRst
	dc.b	nG3, nRst, $0C, nG3, $06, nG3, nRst, $0C, nB3, $06, nB3, nRst
	dc.b	nB3, nRst, nB3, nRst, nB3, nRst, nB3, nRst, $0C, nB3, $06, nB3
	dc.b	nRst, $0C, nC4, $06, nC4, nRst, nC4, nRst, nC4, nRst, nC4, nRst
	dc.b	nC4, nRst, $0C, nC4, $06, nC4, nRst, $0C, nAb3, $06, nAb3, nRst
	dc.b	$0C, nAb3, $06, nAb3, nRst, $0C, nAb3, $06, nAb3, nRst, $0C, nAb3
	dc.b	$06, nAb3, nRst, $0C, nG3, $06, nG3, nRst, nG3, nRst, nG3, nRst
	dc.b	nG3, nRst, nG3, nRst, $0C, nG3, $06, nG3, nRst, $0C, nD4, $06
	dc.b	nD4, nRst, nD4, nRst, nD4, nRst
	smpsPSGvoice        sTone_01
	smpsNoteFill        $00
	dc.b	nD4, $03, nG4, nF4, $06, nD4, nF4, nD4, nB3, nD4
	smpsPSGvoice        sTone_23
	smpsNoteFill        $04
	dc.b	nRst, $0C, nG3, $06, nG3, nRst, nG3, nRst, nG3, nRst, nG3, nRst
	dc.b	nG3, nRst, $0C, nG3, $06, nG3, nRst, $0C, nE3, $06, nE3, nRst
	dc.b	nE3, nE3, nE3, nE3, nRst, $2A
	smpsLoop            $00, $03, Snd_GreenGZ2_Loop0D
	smpsJump            Snd_GreenGZ2_PSG1

; PSG2 Data
Snd_GreenGZ2_PSG2:
	smpsPSGvoice        sTone_23
	smpsModSet          $04, $01, $01, $04
	smpsNoteFill        $04
	dc.b	nRst, $60, nRst, nRst, $0C, nC4, $06, nC4, nRst, nC4, nRst, $0C
	dc.b	nC4, $06, nRst, $0C, nC4, $06, nRst, $0C, nC4, $06, nC4, nRst
	dc.b	$0C, nC4, $06, nC4, nRst, nC4, nRst, $0C, nC4, $06, nG3, nRst
	dc.b	nG3, nG3, nRst, nG3, nRst

Snd_GreenGZ2_Loop0C:
	dc.b	nRst, $0C, nC4, $06, nC4, nRst, nC4, nRst, nC4, nRst, nC4, nRst
	dc.b	nC4, nRst, $0C, nC4, $06, nC4, nRst, $0C, nC4, $06, nC4, nRst
	dc.b	nC4, nRst, nC4, nRst, nC4, nRst, nC4, nRst, $0C, nC4, $06, nC4
	dc.b	nRst, $0C, nD4, $06, nD4, nRst, nD4, nRst, nD4, nRst, nD4, nRst
	dc.b	nD4, nRst, $0C, nD4, $06, nD4, nRst, $0C, nD4, $06, nD4, nRst
	dc.b	nD4, nRst, nD4, nRst, nD4, nRst, nD4, nRst, $0C, nD4, $06, nD4
	dc.b	nRst, $0C, nF4, $06, nF4, nRst, nF4, nRst, nF4, nRst, nF4, nRst
	dc.b	nF4, nRst, $0C, nF4, $06, nF4, nRst, $0C, nF4, $06, nF4, nRst
	dc.b	$0C, nF4, $06, nF4, nRst, $0C, nF4, $06, nF4, nRst, $0C, nF4
	dc.b	$06, nF4, nRst, $0C, nC4, $06, nC4, nRst, nC4, nRst, nC4, nRst
	dc.b	nC4, nRst, nC4, nRst, $0C, nC4, $06, nC4, nRst, $0C, nB3, $06
	dc.b	nB3, nRst, $0C, nB3, $06, nB3, nRst
	smpsPSGvoice        sTone_1D
	smpsNoteFill        $00
	dc.b	nD4, $03, nG4, nF4, $06, nD4, nF4, nD4, nB3, nD4
	smpsPSGvoice        sTone_23
	smpsNoteFill        $04
	dc.b	nRst, $0C, nC4, $06, nC4, nRst, nC4, nRst, nC4, nRst, nC4, nRst
	dc.b	nC4, nRst, $0C, nC4, $06, nC4, nRst, $0C, nC4, $06, nC4, nRst
	dc.b	nC4, nRst, nC4, nRst, nC4, nRst, nC4, nRst, $0C, nC4, $06, nC4
	dc.b	nRst, $0C, nD4, $06, nD4, nRst, nD4, nRst, nD4, nRst, nD4, nRst
	dc.b	nD4, nRst, $0C, nD4, $06, nD4, nRst, $0C, nD4, $06, nD4, nRst
	dc.b	nD4, nRst, nD4, nRst, nD4, nRst, nD4, nRst, $0C, nD4, $06, nD4
	dc.b	nRst, $0C, nF4, $06, nF4, nRst, nF4, nRst, nF4, nRst, nF4, nRst
	dc.b	nF4, nRst, $0C, nF4, $06, nF4, nRst, $0C, nF4, $06, nF4, nRst
	dc.b	$0C, nF4, $06, nF4, nRst, $0C, nF4, $06, nF4, nRst, $0C, nF4
	dc.b	$06, nF4, nRst, $0C, nC4, $06, nC4, nRst, nC4, nRst, nC4, nRst
	dc.b	nC4, nRst, nC4, nRst, $0C, nC4, $06, nC4, nRst, $0C, nC4, $06
	dc.b	nC4, nRst, $0C, nC4, $06, nC4, nRst
	smpsPSGvoice        sTone_1D
	smpsNoteFill        $00
	dc.b	nE4, $02, nF4, nG4, nF4, $06, nE4, nF4, nE4, nD4, nC4
	smpsPSGvoice        sTone_23
	smpsNoteFill        $04
	dc.b	nRst, $0C, nA4, $06, nA4, nRst, nA4, nRst, nA4, nRst, nA4, nRst
	dc.b	nA4, nRst, $0C, nA4, $06, nA4, nRst, $0C, nA4, $06, nA4, nRst
	dc.b	nA4, nRst, nA4, nRst
	smpsPSGvoice        sTone_1D
	smpsNoteFill        $00
	dc.b	nE4, $03, nA4, nG4, $06, nE4, nG4, nE4, nCs4, nE4
	smpsPSGvoice        sTone_23
	smpsNoteFill        $04
	dc.b	nRst, $0C, nD4, $06, nD4, nRst, $0C, nD4, $06, nD4, nRst, $0C
	dc.b	nD4, $06, nD4, nRst, $0C, nD4, $06, nD4, nRst, $0C, nD4, $06
	dc.b	nD4, nRst, $0C, nD4, $06, nD4, nRst, $0C, nD4, $06, nD4, nRst
	dc.b	$0C, nD4, $06, nD4, nRst, $0C, nG4, $06, nG4, nRst, nG4, nRst
	dc.b	nG4, nRst, nG4, nRst, nG4, nRst, $0C, nG4, $06, nG4, nRst, $0C
	dc.b	nG4, $06, nG4, nRst, nG4, nRst, nG4, nRst
	smpsPSGvoice        sTone_1D
	smpsNoteFill        $00
	dc.b	nD4, $03, nG4, nF4, $06, nD4, nF4, nD4, nB3, nD4
	smpsPSGvoice        sTone_23
	smpsNoteFill        $04
	dc.b	nRst, $0C, nC4, $06, nC4, nRst, nC4, nRst, nC4, nRst, nC4, nRst
	dc.b	nC4, nRst, $0C, nC4, $06, nC4, nRst, $0C, nC4, $06, nC4, nRst
	dc.b	$0C, nC4, $06, nC4, nRst, $0C, nC4, $06, nC4, nRst, $0C, nE4
	dc.b	$06, nE4, nRst, $0C, nA4, $06, nA4, nRst, nA4, nRst, nA4, nRst
	dc.b	nA4, nRst, nA4, nRst, $0C, nA4, $06, nA4, nRst, $0C, nA4, $06
	dc.b	nA4, nRst, nA4, nRst, nA4, nRst
	smpsPSGvoice        sTone_1D
	smpsNoteFill        $00
	dc.b	nE4, $03, nA4, nG4, $06, nE4, nG4, nE4, nCs4, nE4
	smpsPSGvoice        sTone_23
	smpsNoteFill        $04
	dc.b	nRst, $0C, nD4, $06, nD4, nRst, $0C, nD4, $06, nD4, nRst, $0C
	dc.b	nD4, $06, nD4, nRst, $0C, nD4, $06, nD4, nRst, $0C, nD4, $06
	dc.b	nD4, nRst, nD4, nRst, nD4, nRst, nD4, nRst, nD4, nRst, $0C, nD4
	dc.b	$06, nD4, nRst, $0C, nF4, $06, nF4, nRst, nF4, nRst, nF4, nRst
	dc.b	nF4, nRst, nF4, nRst, $0C, nF4, $06, nF4, nRst, $0C, nF4, $06
	dc.b	nF4, nRst, $0C, nF4, $06, nF4, nRst, $0C, nF4, $06, nF4, nRst
	dc.b	$0C, nF4, $06, nF4, nRst, $0C, nG4, $06, nG4, nRst, nG4, nRst
	dc.b	nG4, nRst, nG4, nRst, nG4, nRst, $0C, nG4, $06, nG4, nRst, $0C
	dc.b	nG4, $06, nG4, nRst, nG4, nRst, nG4, nRst
	smpsPSGvoice        sTone_1D
	smpsNoteFill        $00
	dc.b	nD4, $03, nG4, nF4, $06, nD4, nF4, nD4, nB3, nD4
	smpsPSGvoice        sTone_23
	smpsNoteFill        $04
	dc.b	nRst, $0C, nC4, $06, nC4, nRst, nC4, nRst, nC4, nRst, nC4, nRst
	dc.b	nC4, nRst, $0C, nC4, $06, nC4, nRst, $0C, nC4, $06, nC4, nRst
	dc.b	nC4, nRst, nC4, nRst, nC4, nRst, nC4, nRst, $0C, nC4, $06, nC4
	dc.b	nRst, $0C, nD4, $06, nD4, nRst, nD4, nRst, nD4, nRst, nD4, nRst
	dc.b	nD4, nRst, $0C, nD4, $06, nD4, nRst, $0C, nD4, $06, nD4, nRst
	dc.b	nD4, nRst, nD4, nRst, nD4, nRst, nD4, nRst, $0C, nD4, $06, nD4
	dc.b	nRst, $0C, nF4, $06, nF4, nRst, nF4, nRst, nF4, nRst, nF4, nRst
	dc.b	nF4, nRst, $0C, nF4, $06, nF4, nRst, $0C, nF4, $06, nF4, nRst
	dc.b	$0C, nF4, $06, nF4, nRst, $0C, nF4, $06, nF4, nRst, $0C, nF4
	dc.b	$06, nF4, nRst, $0C, nC4, $06, nC4, nRst, nC4, nRst, nC4, nRst
	dc.b	nC4, nRst, nC4, nRst, $0C, nC4, $06, nC4, nRst, $0C, nG4, $06
	dc.b	nG4, nRst, $0C, nG4, $06, nG4, nRst
	smpsPSGvoice        sTone_1D
	smpsNoteFill        $00
	dc.b	nD4, $03, nG4, nF4, $06, nD4, nF4, nD4, nB3, nD4
	smpsPSGvoice        sTone_23
	smpsNoteFill        $04
	dc.b	nRst, $0C, nC4, $06, nC4, nRst, nC4, nRst, nC4, nRst, nC4, nRst
	dc.b	nC4, nRst, $0C, nC4, $06, nC4, nRst, $0C, nE4, $06, nE4, nRst
	dc.b	nE4, nRst, nE4, nRst, nE4, nRst, nE4, nRst, $0C, nE4, $06, nE4
	dc.b	nRst, $0C, nF4, $06, nF4, nRst, nF4, nRst, nF4, nRst, nF4, nRst
	dc.b	nF4, nRst, $0C, nF4, $06, nF4, nRst, $0C, nF4, $06, nF4, nRst
	dc.b	$0C, nF4, $06, nF4, nRst, $0C, nF4, $06, nF4, nRst, $0C, nF4
	dc.b	$06, nF4, nRst, $0C, nC4, $06, nC4, nRst, nC4, nRst, nC4, nRst
	dc.b	nC4, nRst, nC4, nRst, $0C, nC4, $06, nC4, nRst, $0C, nG4, $06
	dc.b	nG4, nRst, nG4, nRst, nG4, nRst
	smpsPSGvoice        sTone_1D
	smpsNoteFill        $00
	dc.b	nD4, $03, nG4, nF4, $06, nD4, nF4, nD4, nB3, nD4
	smpsPSGvoice        sTone_23
	smpsNoteFill        $04
	dc.b	nRst, $0C, nC4, $06, nC4, nRst, nC4, nRst, nC4, nRst, nC4, nRst
	dc.b	nC4, nRst, $0C, nC4, $06, nC4, nRst, $0C, nC4, $06, nC4, nRst
	dc.b	nC4, nC4, nC4, nC4, nRst, $2A
	smpsLoop            $00, $03, Snd_GreenGZ2_Loop0C
	smpsJump            Snd_GreenGZ2_PSG2

; PSG3 Data
Snd_GreenGZ2_PSG3:
	smpsPSGform         $E7

Snd_GreenGZ2_Loop08:
	smpsCall            Snd_GreenGZ2_Call0B
	smpsLoop            $01, $03, Snd_GreenGZ2_Loop08
	smpsCall            Snd_GreenGZ2_Call0B

Snd_GreenGZ2_Loop09:
	smpsCall            Snd_GreenGZ2_Call0B
	smpsCall            Snd_GreenGZ2_Call0C
	smpsCall            Snd_GreenGZ2_Call0B
	smpsCall            Snd_GreenGZ2_Call0B
	smpsCall            Snd_GreenGZ2_Call0B
	smpsCall            Snd_GreenGZ2_Call0C
	smpsCall            Snd_GreenGZ2_Call0B
	smpsCall            Snd_GreenGZ2_Call0D
	smpsLoop            $01, $05, Snd_GreenGZ2_Loop09
	smpsCall            Snd_GreenGZ2_Call0B
	smpsCall            Snd_GreenGZ2_Call0C

Snd_GreenGZ2_Loop0A:
	smpsCall            Snd_GreenGZ2_Call0B
	smpsLoop            $01, $02, Snd_GreenGZ2_Loop0A

Snd_GreenGZ2_Loop0B:
	smpsCall            Snd_GreenGZ2_Call0B
	smpsCall            Snd_GreenGZ2_Call0C
	smpsLoop            $01, $02, Snd_GreenGZ2_Loop0B
	smpsLoop            $02, $03, Snd_GreenGZ2_Loop09
	smpsJump            Snd_GreenGZ2_Loop08

Snd_GreenGZ2_Call0B:
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $01
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FE
	dc.b	$0C
	smpsLoop            $00, $04, Snd_GreenGZ2_Call0B
	smpsReturn

; Unreachable
Snd_GreenGZ2_CallUnk:
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FE
	dc.b	$0C
	smpsLoop            $00, $03, Snd_GreenGZ2_CallUnk
	smpsPSGvoice        sTone_0F
	dc.b	$0C
	dc.b	$0C
	smpsReturn

Snd_GreenGZ2_Call0C:
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGvoice        sTone_12
	dc.b	$06
	smpsPSGvoice        sTone_0F
	dc.b	$06
	smpsLoop            $00, $03, Snd_GreenGZ2_Call0C
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FE
	dc.b	$03
	smpsPSGvoice        sTone_0F
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $FF
	smpsReturn

Snd_GreenGZ2_Call0D:
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_27
	smpsPSGAlterVol     $FF
	dc.b	$18
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $FF
	dc.b	$0C, nRst, $0C, $0C, nRst, $0C, $0C
	smpsReturn

; DAC Data
Snd_GreenGZ2_DAC:
	dc.b	dKickS3, $18, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, $12, dSnareS3, $06, $0C
	dc.b	dElectricFloorTom, dKickS3, $18, dKickS3, dKickS3, $12, dSnareS3, $06, $18, dKickS3, dKickS3, dKickS3
	dc.b	$06, dSnareS3, $0C, $06, dElectricFloorTom, $0C, dElectricFloorTom

Snd_GreenGZ2_Loop00:
	smpsCall            Snd_GreenGZ2_Call00
	smpsCall            Snd_GreenGZ2_Call01
	smpsLoop            $00, $03, Snd_GreenGZ2_Loop00
	smpsCall            Snd_GreenGZ2_Call00
	dc.b	$0C, dSnareS3, $12, dElectricLowTom, dElectricFloorTom, dSnareS3, $06, $0C, $06, dSnareS3
	smpsLoop            $01, $05, Snd_GreenGZ2_Loop00

Snd_GreenGZ2_Loop01:
	smpsCall            Snd_GreenGZ2_Call00
	smpsCall            Snd_GreenGZ2_Call01
	smpsLoop            $00, $03, Snd_GreenGZ2_Loop01
	smpsCall            Snd_GreenGZ2_Call00
	dc.b	dSnareS3, dSnareS3, dSnareS3, dKickS3, $0C, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3, $18, $06
	dc.b	$0C, $06
	smpsLoop            $02, $03, Snd_GreenGZ2_Loop00
	smpsJump            Snd_GreenGZ2_DAC

Snd_GreenGZ2_Call00:
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dSnareS3, $12, dKickS3, $06
	smpsReturn

Snd_GreenGZ2_Call01:
	dc.b	dKickS3, $18, dSnareS3, dKickS3, $12, dSnareS3, $06, $0C, dKickS3
	smpsReturn

Snd_GreenGZ2_Voices:
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
;	$02, $21, $51, $02, 	$12, $14, $14, $0F, 	$0A, $05, $05, $05
;	$00, $00, $00, $00, 	$2B, $2B, $2B, $1B, 	$19, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $02, $00
	smpsVcCoarseFreq    $02, $01, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $14, $14, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $02, $02, $02
	smpsVcReleaseRate   $0B, $0B, $0B, $0B
	smpsVcTotalLevel    $00, $00, $00, $19

;	Voice $02
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $07, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $07, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

;	Voice $03
;	$35
;	$02, $02, $13, $00, 	$1F, $1D, $18, $19, 	$00, $09, $06, $0D
;	$00, $00, $02, $03, 	$00, $06, $15, $16, 	$1E, $80, $83, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $00, $00
	smpsVcCoarseFreq    $00, $03, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $19, $18, $1D, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $06, $09, $00
	smpsVcDecayRate2    $03, $02, $00, $00
	smpsVcDecayLevel    $01, $01, $00, $00
	smpsVcReleaseRate   $06, $05, $06, $00
	smpsVcTotalLevel    $00, $03, $00, $1E

;	Voice $04
;	$3D
;	$01, $21, $50, $01, 	$12, $14, $14, $0F, 	$0A, $05, $05, $05
;	$00, $00, $00, $00, 	$26, $28, $28, $18, 	$19, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $02, $00
	smpsVcCoarseFreq    $01, $00, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $14, $14, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $02, $02, $02
	smpsVcReleaseRate   $08, $08, $08, $06
	smpsVcTotalLevel    $00, $00, $00, $19

;	Voice $05
;	$32
;	$71, $37, $33, $01, 	$99, $55, $19, $56, 	$02, $0A, $04, $0F
;	$04, $06, $05, $04, 	$1F, $2F, $FF, $1F, 	$26, $24, $20, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $03, $07
	smpsVcCoarseFreq    $01, $03, $07, $01
	smpsVcRateScale     $01, $00, $01, $02
	smpsVcAttackRate    $16, $19, $15, $19
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $04, $0A, $02
	smpsVcDecayRate2    $04, $05, $06, $04
	smpsVcDecayLevel    $01, $0F, $02, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $20, $24, $26

;	Voice $06
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

;	Voice $07
;	$32
;	$71, $0D, $33, $01, 	$5F, $99, $5F, $94, 	$05, $05, $05, $07
;	$02, $02, $02, $02, 	$1F, $1F, $1F, $AF, 	$23, $2D, $26, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $07
	smpsVcCoarseFreq    $01, $03, $0D, $01
	smpsVcRateScale     $02, $01, $02, $01
	smpsVcAttackRate    $14, $1F, $19, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $05, $05, $05
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $0A, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $26, $2D, $23

;	Voice $08
;	$3A
;	$01, $01, $01, $02, 	$8D, $07, $07, $52, 	$09, $00, $00, $03
;	$01, $02, $02, $00, 	$5F, $0F, $0F, $2F, 	$18, $22, $18, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $01, $01
	smpsVcRateScale     $01, $00, $00, $02
	smpsVcAttackRate    $12, $07, $07, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $00, $00, $09
	smpsVcDecayRate2    $00, $02, $02, $01
	smpsVcDecayLevel    $02, $00, $00, $05
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $18, $22, $18

;	Voice $09
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

