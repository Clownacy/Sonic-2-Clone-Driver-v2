Snd_PPZ1_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_PPZ1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       Snd_PPZ1_DAC
	smpsHeaderFM        Snd_PPZ1_FM1,	$00, $0E
	smpsHeaderFM        Snd_PPZ1_FM2,	$00, $16
	smpsHeaderFM        Snd_PPZ1_FM3,	$00, $18
	smpsHeaderFM        Snd_PPZ1_FM4,	$00, $0E
	smpsHeaderFM        Snd_PPZ1_FM5,	$0C, $08
	smpsHeaderPSG       Snd_PPZ1_PSG1,	$DC, $03, $00, sTone_06
	smpsHeaderPSG       Snd_PPZ1_PSG2,	$DC, $03, $00, sTone_04
	smpsHeaderPSG       Snd_PPZ1_PSG3,	$23, $02, $00, sTone_03

; FM1 Data
Snd_PPZ1_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	smpsModSet          $07, $01, $03, $05

Snd_PPZ1_Loop11:
	dc.b	nC3, $12, $06, nRst, $0C, nC3, $06, nRst, nC3, $12, $06, nRst
	dc.b	$18
	smpsLoop            $00, $10, Snd_PPZ1_Loop11

Snd_PPZ1_Loop12:
	smpsCall            Snd_PPZ1_Call0F
	smpsCall            Snd_PPZ1_Call0F
	smpsAlterPitch      $FC
	smpsCall            Snd_PPZ1_Call0F
	smpsCall            Snd_PPZ1_Call0F
	smpsAlterPitch      $02
	smpsCall            Snd_PPZ1_Call0F
	smpsCall            Snd_PPZ1_Call0F
	smpsAlterPitch      $02
	smpsCall            Snd_PPZ1_Call0F
	smpsCall            Snd_PPZ1_Call0F
	smpsLoop            $01, $02, Snd_PPZ1_Loop12

Snd_PPZ1_Loop13:
	smpsAlterPitch      $05
	smpsCall            Snd_PPZ1_Call0F
	smpsAlterPitch      $03
	smpsCall            Snd_PPZ1_Call0F
	smpsAlterPitch      $F8
	smpsCall            Snd_PPZ1_Call0F
	smpsAlterPitch      $09
	smpsCall            Snd_PPZ1_Call0F
	smpsAlterPitch      $FC
	smpsCall            Snd_PPZ1_Call0F
	smpsAlterPitch      $03
	smpsCall            Snd_PPZ1_Call0F
	smpsAlterPitch      $FF
	smpsCall            Snd_PPZ1_Call0F
	smpsCall            Snd_PPZ1_Call0F
	smpsAlterPitch      $F9
	smpsLoop            $01, $02, Snd_PPZ1_Loop13

Snd_PPZ1_Loop14:
	smpsCall            Snd_PPZ1_Call10
	smpsCall            Snd_PPZ1_Call10
	smpsAlterPitch      $FC
	smpsCall            Snd_PPZ1_Call10
	smpsCall            Snd_PPZ1_Call10
	smpsAlterPitch      $02
	smpsCall            Snd_PPZ1_Call10
	smpsCall            Snd_PPZ1_Call10
	smpsAlterPitch      $02
	smpsCall            Snd_PPZ1_Call10
	smpsCall            Snd_PPZ1_Call10
	smpsLoop            $00, $02, Snd_PPZ1_Loop14
	dc.b	nC2, $0C, nC3, $06, nC3, nC2, nRst, nC3, $0C, nRst, $60, nRst
	dc.b	$30, nG2, $06, nG2, nG2, nG2, nG2, nG2, nG2, nG2
	smpsJump            Snd_PPZ1_Loop12

Snd_PPZ1_Call0F:
	dc.b	nC2, $0C, nC3, $06, nRst, $06
	smpsLoop            $00, $04, Snd_PPZ1_Call0F
	smpsReturn

Snd_PPZ1_Call10:
	dc.b	nC2, $0C, nC3, $06, nC3, nC2, nRst, nC3, $0C, nC2, $06, nRst
	dc.b	nC3, $0C, nC2, $06, nRst, nC3, nC3
	smpsReturn

; FM2 Data
Snd_PPZ1_FM2:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsModSet          $07, $01, $03, $05

Snd_PPZ1_Loop0E:
	dc.b	nRst, $60
	smpsLoop            $00, $10, Snd_PPZ1_Loop0E

Snd_PPZ1_Loop0F:
	smpsCall            Snd_PPZ1_Call0A
	smpsLoop            $00, $02, Snd_PPZ1_Loop0F
	smpsCall            Snd_PPZ1_Call0B
	smpsCall            Snd_PPZ1_Call0B
	smpsCall            Snd_PPZ1_Call0C
	smpsAlterPitch      $0C
	smpsCall            Snd_PPZ1_Call0C
	smpsAlterPitch      $F4
	smpsLoop            $01, $02, Snd_PPZ1_Loop0F
	smpsCall            Snd_PPZ1_Call0D
	smpsCall            Snd_PPZ1_Call0E
	smpsCall            Snd_PPZ1_Call0D
	dc.b	nC5, $60, nB4
	smpsCall            Snd_PPZ1_Call0D
	smpsCall            Snd_PPZ1_Call0E
	smpsCall            Snd_PPZ1_Call0D
	dc.b	nC5, $3C, nB4, $0C, nA4, nAb4, nG4, $60

Snd_PPZ1_Loop10:
	smpsCall            Snd_PPZ1_Call0A
	smpsLoop            $00, $02, Snd_PPZ1_Loop10
	smpsCall            Snd_PPZ1_Call0B
	smpsCall            Snd_PPZ1_Call0B
	smpsCall            Snd_PPZ1_Call0C
	smpsAlterPitch      $0C
	smpsCall            Snd_PPZ1_Call0C
	smpsAlterPitch      $F4
	smpsLoop            $01, $02, Snd_PPZ1_Loop10
	dc.b	nRst, $30, nRst, $60, nRst, $60
	smpsJump            Snd_PPZ1_Loop0F

Snd_PPZ1_Call0A:
	dc.b	nRst, $0C, nC4, nG4, nC5, nBb4, $09, nRst, nBb4, nRst, nG4, $0C
	dc.b	nF4, $09, nRst, nG4, nRst, nC4, $0C, nRst, $30
	smpsReturn

Snd_PPZ1_Call0B:
	dc.b	nRst, $0C, nC4, nG4, nC5, nBb4, $09, nRst, nBb4, nRst, nG4, $0C
	smpsReturn

Snd_PPZ1_Call0C:
	dc.b	nBb4, $09, nRst, nB4, nRst, nC5, $0C, nRst, $30
	smpsReturn

Snd_PPZ1_Call0D:
	dc.b	nA4, $24, nF4, $0C, nRst, nC5, $24, nAb4, nF4, $0C, nRst, nC5
	dc.b	$24
	smpsReturn

Snd_PPZ1_Call0E:
	dc.b	nC5, $24, nB4, $18, nG4, $0C, nA4, nBb4, nB4, nBb4, nRst, nA4
	dc.b	$18, nG4, nAb4, $0C
	smpsReturn

; FM3 Data
Snd_PPZ1_FM3:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsModSet          $07, $01, $03, $05

Snd_PPZ1_Loop0C:
	dc.b	nRst, $60
	smpsLoop            $00, $10, Snd_PPZ1_Loop0C

Snd_PPZ1_Loop0D:
	smpsCall            Snd_PPZ1_Call07
	smpsLoop            $00, $02, Snd_PPZ1_Loop0D
	smpsCall            Snd_PPZ1_Call08
	smpsCall            Snd_PPZ1_Call09
	smpsCall            Snd_PPZ1_Call08
	dc.b	nG4, $60, nG4
	smpsCall            Snd_PPZ1_Call08
	smpsCall            Snd_PPZ1_Call09
	smpsCall            Snd_PPZ1_Call08
	dc.b	nG4, $3C, $0C, nD4, nD4, nD4, $60
	smpsCall            Snd_PPZ1_Call07
	smpsCall            Snd_PPZ1_Call07
	dc.b	nRst, $30, nRst, $60, nRst
	smpsJump            Snd_PPZ1_Loop0D

Snd_PPZ1_Call07:
	dc.b	nRst, $0C, nG3, nE4, nG4, nG4, $09, nRst, nG4, nRst, nE4, $0C
	dc.b	nC4, $09, nRst, nE4, nRst, nG3, $0C, nRst, $30, nRst, $0C, nAb3
	dc.b	nEb4, nAb4, nEb4, $09, nRst, nEb4, nRst, nEb4, $0C, nC4, $09, nRst
	dc.b	nEb4, nRst, nAb3, $0C, nRst, $30, nRst, $0C, nF3, nD4, nF4, nF4
	dc.b	$09, nRst, nF4, nRst, nD4, $0C, nRst, nF3, nD4, nF4, nF4, $09
	dc.b	nRst, nF4, nRst, nD4, $0C, nG4, $09, nRst, nG4, nRst, nG4, $0C
	dc.b	nRst, $30, nG5, $09, nRst, nG5, nRst, nG5, $0C, nRst, $30
	smpsReturn

Snd_PPZ1_Call08:
	dc.b	nF4, $24, nC4, $0C, nRst, nA4, $24, nEb4, nC4, $0C, nRst, nAb4
	dc.b	$24
	smpsReturn

Snd_PPZ1_Call09:
	dc.b	nG4, nG4, $18, nE4, $0C, nE4, nE4, nE4, nE4, nRst, nE4, $18
	dc.b	nE4, nE4, $0C
	smpsReturn

; FM4 Data
Snd_PPZ1_FM4:
	smpsSetvoice        $02
	smpsNoteFill        $03
	smpsModSet          $07, $01, $03, $05

Snd_PPZ1_Loop08:
	smpsCall            Snd_PPZ1_Call05
	smpsLoop            $00, $03, Snd_PPZ1_Loop08
	smpsCall            Snd_PPZ1_Call06
	smpsLoop            $01, $02, Snd_PPZ1_Loop08

Snd_PPZ1_Loop09:
	smpsCall            Snd_PPZ1_Call04
	smpsCall            Snd_PPZ1_Call04
	smpsAlterPitch      $FC
	smpsCall            Snd_PPZ1_Call04
	smpsCall            Snd_PPZ1_Call04
	smpsAlterPitch      $02
	smpsCall            Snd_PPZ1_Call04
	smpsCall            Snd_PPZ1_Call04
	smpsAlterPitch      $02
	smpsCall            Snd_PPZ1_Call04
	smpsCall            Snd_PPZ1_Call04
	smpsLoop            $00, $02, Snd_PPZ1_Loop09

Snd_PPZ1_Loop0A:
	smpsAlterPitch      $05
	smpsCall            Snd_PPZ1_Call04
	smpsAlterPitch      $F7
	smpsCall            Snd_PPZ1_Call04
	smpsAlterPitch      $04
	smpsCall            Snd_PPZ1_Call04
	smpsAlterPitch      $FD
	smpsCall            Snd_PPZ1_Call04
	smpsAlterPitch      $08
	smpsCall            Snd_PPZ1_Call04
	smpsAlterPitch      $F7
	smpsCall            Snd_PPZ1_Call04
	smpsAlterPitch      $FF
	smpsCall            Snd_PPZ1_Call04
	smpsAlterPitch      $05
	smpsPan             panLeft, $00
	dc.b	nD5, $0C, $06, nG5, $0C, nD5, $06, nG5, nD5
	smpsPan             panRight, $00
	dc.b	nG5, $0C, nD5, $06, nG5, $0C, nG5, $06, nD5, $0C
	smpsLoop            $00, $02, Snd_PPZ1_Loop0A

Snd_PPZ1_Loop0B:
	smpsCall            Snd_PPZ1_Call04
	smpsCall            Snd_PPZ1_Call04
	smpsAlterPitch      $FC
	smpsCall            Snd_PPZ1_Call04
	smpsCall            Snd_PPZ1_Call04
	smpsAlterPitch      $02
	smpsCall            Snd_PPZ1_Call04
	smpsCall            Snd_PPZ1_Call04
	smpsAlterPitch      $02
	smpsCall            Snd_PPZ1_Call04
	smpsCall            Snd_PPZ1_Call04
	smpsLoop            $00, $02, Snd_PPZ1_Loop0B
	smpsPan             panLeft, $00
	dc.b	nC5, $0C, $06, nG5, $0C, nC5, $06, nG5, nC5
	smpsCall            Snd_PPZ1_Call06
	smpsJump            Snd_PPZ1_Loop09

Snd_PPZ1_Call05:
	dc.b	nRst, $60
	smpsPan             panLeft, $00
	dc.b	nRst, $0C, nG5, nC6, nG6, nF6
	smpsPan             panRight, $00
	dc.b	nG6, $06, nF6, $0C, nG6, $06, nC6, $0C
	smpsReturn

Snd_PPZ1_Call06:
	dc.b	nRst, $60
	smpsPan             panRight, $00
	dc.b	nRst, $0C, nG5, nC6, nG6, nF6
	smpsPan             panLeft, $00
	dc.b	nG6, $06, nF6, $0C, nG6, $06, nC6, $0C
	smpsReturn

Snd_PPZ1_Call04:
	smpsPan             panLeft, $00
	dc.b	nC5, $0C, $06, nG5, $0C, nC5, $06, nG5, nC5
	smpsPan             panRight, $00
	dc.b	nG5, $0C, nC5, $06, nG5, $0C, nG5, $06, nC5, $0C
	smpsReturn

; FM5 Data
Snd_PPZ1_FM5:
	smpsSetvoice        $03
	smpsModSet          $07, $01, $03, $05
	smpsAlterPitch      $E8
	smpsPan             panRight, $00
	dc.b	nC5, $0C, nC6, $06, nG5, nC6, nG5, nC6, nG5
	smpsPan             panCenter, $00
	dc.b	nC5, $0C, nC6, $06, nG5, nC6, nG5, nC6, nG5
	smpsPan             panLeft, $00
	dc.b	nC5, $0C, nC6, $06, nG5, nC6, nG5, nC6, nG5
	smpsPan             panRight, $00
	dc.b	nC5, $0C, nC6, $06, nG5, nC6, nG5, nC6, nG5
	smpsPan             panCenter, $00
	dc.b	nAb4, $0C, nAb5, $06, nEb5, nAb5, nEb5, nAb5, nEb5
	smpsPan             panRight, $00
	dc.b	nAb4, $0C, nAb5, $06, nEb5, nAb5, nEb5, nAb5, nEb5
	smpsPan             panLeft, $00
	dc.b	nAb4, $0C, nAb5, $06, nEb5, nAb5, nEb5, nAb5, nEb5
	smpsPan             panCenter, $00
	dc.b	nAb4, $0C, nAb5, $06, nEb5, nAb5, nEb5, nAb5, nEb5
	smpsPan             panLeft, $00
	dc.b	nBb4, $0C, nBb5, $06, nEb5, nBb5, nEb5, nBb5, nEb5
	smpsPan             panCenter, $00
	dc.b	nBb4, $0C, nBb5, $06, nEb5, nBb5, nEb5, nBb5, nEb5
	smpsPan             panRight, $00
	dc.b	nBb4, $0C, nBb5, $06, nEb5, nBb5, nEb5, nBb5, nEb5
	smpsPan             panCenter, $00
	dc.b	nBb4, $0C, nBb5, $06, nEb5, nBb5, nEb5, nBb5, nEb5
	smpsPan             panLeft, $00
	dc.b	nBb4, $0C, nBb5, $06, nD5, nBb5, nD5, nBb5, nD5
	smpsPan             panCenter, $00
	dc.b	nBb4, $0C, nBb5, $06, nD5, nBb5, nD5, nBb5, nD5
	smpsPan             panRight, $00
	dc.b	nBb4, $0C, nBb5, $06, nD5, nBb5, nD5, nBb5, nD5
	smpsPan             panCenter, $00
	dc.b	nBb4, $0C, nBb5, $06, nD5, nBb5, nD5, nBb5, nD5
	smpsPan             panLeft, $00
	dc.b	nC5, $0C, nC6, $06, nG5, nC6, nG5, nC6, nG5
	smpsPan             panRight, $00
	dc.b	nC5, $0C, nC6, $06, nG5, nC6, nG5, nC6, nG5
	smpsPan             panCenter, $00
	dc.b	nC5, $0C, nC6, $06, nG5, nC6, nG5, nC6, nG5
	smpsPan             panRight, $00
	dc.b	nC5, $0C, nC6, $06, nG5, nC6, nG5, nC6, nG5
	smpsPan             panLeft, $00
	dc.b	nAb4, $0C, nAb5, $06, nEb5, nAb5, nEb5, nAb5, nEb5
	smpsPan             panCenter, $00
	dc.b	nAb4, $0C, nAb5, $06, nEb5, nAb5, nEb5, nAb5, nEb5
	smpsPan             panLeft, $00
	dc.b	nAb4, $0C, nAb5, $06, nEb5, nAb5, nEb5, nAb5, nEb5
	smpsPan             panCenter, $00
	dc.b	nAb4, $0C, nAb5, $06, nEb5, nAb5, nEb5, nAb5, nEb5
	smpsPan             panRight, $00
	dc.b	nEb5, $0C, nEb6, $06, nBb5, nEb6, nBb5, nEb6, nBb5
	smpsPan             panCenter, $00
	dc.b	nEb5, $0C, nEb6, $06, nBb5, nEb6, nBb5, nEb6, nBb5
	smpsPan             panLeft, $00
	dc.b	nEb5, $0C, nEb6, $06, nBb5, nEb6, nBb5, nEb6, nBb5
	smpsPan             panCenter, $00
	dc.b	nEb5, $0C, nEb6, $06, nBb5, nEb6, nBb5, nEb6, nBb5
	smpsPan             panRight, $00
	dc.b	nBb4, $0C, nBb5, $06, nF5, nBb5, nF5, nBb5, nF5
	smpsPan             panCenter, $00
	dc.b	nBb4, $0C, nBb5, $06, nF5, nBb5, nF5, nBb5, nF5
	smpsPan             panLeft, $00
	dc.b	nBb4, $0C, nBb5, $06, nF5, nBb5, nF5, nBb5, nF5
	smpsPan             panCenter, $00
	dc.b	nBb4, $0C, nBb5, $06, nF5, nBb5, nF5, nBb5, nF5
	smpsFMAlterVol      $08
	dc.b	nRst, $02

Snd_PPZ1_Loop05:
	smpsCall            Snd_PPZ1_Call04
	smpsCall            Snd_PPZ1_Call04
	smpsAlterPitch      $FC
	smpsCall            Snd_PPZ1_Call04
	smpsCall            Snd_PPZ1_Call04
	smpsAlterPitch      $02
	smpsCall            Snd_PPZ1_Call04
	smpsCall            Snd_PPZ1_Call04
	smpsAlterPitch      $02
	smpsCall            Snd_PPZ1_Call04
	smpsCall            Snd_PPZ1_Call04
	smpsLoop            $00, $02, Snd_PPZ1_Loop05

Snd_PPZ1_Loop06:
	smpsAlterPitch      $05
	smpsCall            Snd_PPZ1_Call04
	smpsAlterPitch      $F7
	smpsCall            Snd_PPZ1_Call04
	smpsAlterPitch      $04
	smpsCall            Snd_PPZ1_Call04
	smpsAlterPitch      $FD
	smpsCall            Snd_PPZ1_Call04
	smpsAlterPitch      $08
	smpsCall            Snd_PPZ1_Call04
	smpsAlterPitch      $F7
	smpsCall            Snd_PPZ1_Call04
	smpsAlterPitch      $FF
	smpsCall            Snd_PPZ1_Call04
	smpsAlterPitch      $05
	smpsPan             panLeft, $00
	dc.b	nD5, $0C, $06, nG5, $0C, nD5, $06, nG5, nD5
	smpsPan             panRight, $00
	dc.b	nG5, $0C, nD5, $06, nG5, $0C, nG5, $06, nD5, $0C
	smpsLoop            $00, $02, Snd_PPZ1_Loop06
	smpsFMAlterVol      $F8
	smpsAlterPitch      $18

Snd_PPZ1_Loop07:
	dc.b	nRst, $5E, nRst, $30
	smpsPan             panLeft, $00
	dc.b	nG4, $06, nE4, nC4
	smpsPan             panRight, $00
	dc.b	nC5, nG4, nE4
	smpsPan             panCenter, $00
	dc.b	nE5, nC5, nRst, $60, nRst, $30
	smpsPan             panRight, $00
	dc.b	nAb4, $06, nEb4, nC4
	smpsPan             panLeft, $00
	dc.b	nC5, nAb4, nEb4
	smpsPan             panCenter, $00
	dc.b	nEb5, nC5, nRst, $60
	smpsPan             panLeft, $00
	dc.b	nF3, $06, nBb3, nD4
	smpsPan             panRight, $00
	dc.b	nF4, nBb3, nD4
	smpsPan             panCenter, $00
	dc.b	nF4, nBb4, nD4
	smpsPan             panRight, $00
	dc.b	nF4, nBb4, nD5
	smpsPan             panLeft, $00
	dc.b	nF4, nBb4, nD5
	smpsPan             panCenter, $00
	dc.b	nF5, nE5, nC5
	smpsPan             panLeft, $00
	dc.b	nG4, nC5, nG4
	smpsPan             panCenter, $00
	dc.b	nE4, nG4, nE4
	smpsPan             panRight, $00
	dc.b	nC4, nE4, nC4
	smpsPan             panCenter, $00
	dc.b	nG3, nC4, nG3
	smpsPan             panLeft, $00
	dc.b	nE3, nG3, nC3
	smpsPan             panRight, $00
	dc.b	nE3, nG3, nC4
	smpsPan             panCenter, $00
	dc.b	nE3, nG3, nC4
	smpsPan             panRight, $00
	dc.b	nE4, nG3, nC4
	smpsPan             panLeft, $00
	dc.b	nE4, nG4, nC4
	smpsPan             panCenter, $00
	dc.b	nE4, nG4, nC5, nRst, $02
	smpsLoop            $00, $02, Snd_PPZ1_Loop07
	dc.b	nRst, $2E, nRst, $60, nRst, $60
	smpsFMAlterVol      $08
	smpsAlterPitch      $E8
	dc.b	nRst, $02
	smpsJump            Snd_PPZ1_Loop05

; Unreachable
Snd_PPZ1_CallUnk:
	dc.b	nC5, $0C, nC6, $06, nG5, nC6, nG5, nC6, nG5
	smpsReturn

; PSG1 Data
Snd_PPZ1_PSG1:
	smpsPSGvoice        sTone_12
	dc.b	nC5, $60, smpsNoAttack, nC5, nAb4, smpsNoAttack, nAb4, nBb4, smpsNoAttack, nBb4, nBb4, smpsNoAttack
	dc.b	nBb4, nC5, smpsNoAttack, nC5, nC5, smpsNoAttack, nC5, nEb5, smpsNoAttack, nEb5, nD5, smpsNoAttack
	dc.b	nD5

Snd_PPZ1_Jump01:
	dc.b	nC5, smpsNoAttack, nC5, nC5, smpsNoAttack, nC5, nD5, smpsNoAttack, nD5, nE5, smpsNoAttack, nE5
	dc.b	nC5, smpsNoAttack, nC5, nEb5, smpsNoAttack, nEb5, nF5, smpsNoAttack, nF5, nG5, smpsNoAttack, nG5
	dc.b	nC5, nC5, nC5, nC5, nC5, nC5, nD5, smpsNoAttack, nD5, nF5, nF5, nE5
	dc.b	nE5, nF5, nF5, nD5, nD5, nC5, smpsNoAttack, nC5, nC5, smpsNoAttack, nC5, nD5
	dc.b	smpsNoAttack, nD5, nE5, smpsNoAttack, nE5, nC5, smpsNoAttack, nC5, nEb5, smpsNoAttack, nEb5, nF5
	dc.b	smpsNoAttack, nF5, nG5, smpsNoAttack, nG5, smpsNoAttack, nG5, $30, nRst, $60, nRst
	smpsJump            Snd_PPZ1_Jump01

; PSG2 Data
Snd_PPZ1_PSG2:
	smpsPSGvoice        sTone_12
	dc.b	nG5, $60, smpsNoAttack, nG5, nEb5, smpsNoAttack, nEb5, nG5, smpsNoAttack, nG5, nF5, smpsNoAttack
	dc.b	nF5, nG5, smpsNoAttack, nG5, nAb5, smpsNoAttack, nAb5, nBb5, smpsNoAttack, nBb5, nBb5, smpsNoAttack
	dc.b	nBb5

Snd_PPZ1_Jump00:
	dc.b	nG5, smpsNoAttack, nG5, nAb5, smpsNoAttack, nAb5, nBb5, smpsNoAttack, nBb5, nC6, smpsNoAttack, nC6
	dc.b	nG5, smpsNoAttack, nG5, nC6, smpsNoAttack, nC6, nD6, smpsNoAttack, nD6, nE6, smpsNoAttack, nE6
	dc.b	nA5, nAb5, nG5, nA5, nA5, nAb5, nB5, smpsNoAttack, nB5, nC6, nC6, nC6
	dc.b	nC6, nC6, nC6, nC6, nB5, nG5, smpsNoAttack, nG5, nAb5, smpsNoAttack, nAb5, nBb5
	dc.b	smpsNoAttack, nBb5, nC6, smpsNoAttack, nC6, nG5, smpsNoAttack, nG5, nC6, smpsNoAttack, nC6, nD6
	dc.b	smpsNoAttack, nD6, nE6, smpsNoAttack, nE6, smpsNoAttack, nE6, $30, nRst, $60, nRst
	smpsJump            Snd_PPZ1_Jump00

; PSG3 Data
Snd_PPZ1_PSG3:
	smpsPSGform         $E7

Snd_PPZ1_Loop15:
	dc.b	nRst, $60
	smpsLoop            $00, $03, Snd_PPZ1_Loop15
	dc.b	nRst, $3C
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, $06, $06, $06
	smpsPSGvoice        sTone_12
	dc.b	$0C

Snd_PPZ1_Loop16:
	smpsCall            Snd_PPZ1_Call11
	smpsLoop            $00, $06, Snd_PPZ1_Loop16

Snd_PPZ1_Loop17:
	smpsCall            Snd_PPZ1_Call12
	smpsLoop            $01, $04, Snd_PPZ1_Loop17

Snd_PPZ1_Loop18:
	smpsCall            Snd_PPZ1_Call13
	smpsCall            Snd_PPZ1_Call14
	smpsCall            Snd_PPZ1_Call15
	smpsCall            Snd_PPZ1_Call14
	smpsLoop            $01, $04, Snd_PPZ1_Loop18
	smpsPSGAlterVol     $FF
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$06, $06
	smpsPSGvoice        sTone_12
	dc.b	$0C

Snd_PPZ1_Loop19:
	smpsPSGvoice        sTone_0F
	dc.b	$0C
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsLoop            $00, $04, Snd_PPZ1_Loop19
	smpsPSGvoice        sTone_0F
	dc.b	$0C
	smpsPSGvoice        sTone_12
	dc.b	$18
	smpsPSGvoice        sTone_0F
	dc.b	$06, $06, $06, $06
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$0C
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsJump            Snd_PPZ1_Loop17

Snd_PPZ1_Call11:
	smpsPSGvoice        sTone_0F
	dc.b	$0C
	smpsPSGvoice        sTone_12
	dc.b	$18
	smpsPSGvoice        sTone_0F
	dc.b	$06, $06, $0C
	smpsPSGvoice        sTone_12
	dc.b	$18
	smpsPSGvoice        sTone_0F
	dc.b	$06, $06
	smpsPSGvoice        sTone_0F
	dc.b	$0C
	smpsPSGvoice        sTone_12
	dc.b	$18
	smpsPSGvoice        sTone_0F
	dc.b	$06, $06, $06, $06
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$0C
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsReturn

Snd_PPZ1_Call12:
	smpsPSGAlterVol     $FF
	smpsPSGvoice        sTone_12
	dc.b	$18
	smpsPSGAlterVol     $01

Snd_PPZ1_Loop1B:
	smpsPSGvoice        sTone_0F
	dc.b	$06, $06
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsLoop            $00, $1F, Snd_PPZ1_Loop1B
	smpsReturn

Snd_PPZ1_Call13:
	smpsPSGAlterVol     $FF
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGAlterVol     $01
	dc.b	$0C

Snd_PPZ1_Loop1A:
	smpsPSGvoice        sTone_0F
	dc.b	$0C
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsLoop            $00, $03, Snd_PPZ1_Loop1A
	smpsReturn

Snd_PPZ1_Call14:
	smpsPSGvoice        sTone_0F
	dc.b	$0C
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$0C
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$06, $06
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$0C
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsReturn

Snd_PPZ1_Call15:
	smpsPSGAlterVol     $FF
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$06, $06
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$06, $06
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$0C
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsReturn

; DAC Data
Snd_PPZ1_DAC:
	dc.b	nRst, $60
	smpsLoop            $00, $0C, Snd_PPZ1_DAC
	dc.b	dKickS3, $24, $0C, $30, dKickS3, dKickS3, dKickS3, $24, $0C, $30, dKickS3, $06
	dc.b	dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dKickS3, dSnareS3, dSnareS3, dSnareS3, dKickS3
	dc.b	dSnareS3, dSnareS3, dSnareS3

Snd_PPZ1_Loop00:
	smpsCall            Snd_PPZ1_Call00
	smpsLoop            $00, $03, Snd_PPZ1_Loop00
	smpsCall            Snd_PPZ1_Call01
	dc.b	dKickS3, $18, dKickS3, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3, dSnareS3, $0C, $06, dSnareS3

Snd_PPZ1_Loop01:
	smpsCall            Snd_PPZ1_Call00
	smpsLoop            $00, $03, Snd_PPZ1_Loop01
	smpsCall            Snd_PPZ1_Call01
	dc.b	dKickS3, $18, dKickS3, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3, dSnareS3, $03, dSnareS3, dSnareS3
	dc.b	dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3

Snd_PPZ1_Loop02:
	smpsCall            Snd_PPZ1_Call00
	smpsLoop            $00, $03, Snd_PPZ1_Loop02
	smpsCall            Snd_PPZ1_Call01
	dc.b	dKickS3, $18, dKickS3, dSnareS3, $06, dSnareS3, dSnareS3, $0C, dSnareS3, dSnareS3, $06, dSnareS3

Snd_PPZ1_Loop03:
	smpsCall            Snd_PPZ1_Call00
	smpsLoop            $00, $03, Snd_PPZ1_Loop03
	smpsCall            Snd_PPZ1_Call01
	dc.b	dKickS3, $06, dSnareS3, dSnareS3, dSnareS3, dKickS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, $03, dSnareS3
	dc.b	dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3
	dc.b	dSnareS3, dSnareS3

Snd_PPZ1_Loop04:
	smpsCall            Snd_PPZ1_Call02
	smpsCall            Snd_PPZ1_Call03
	smpsLoop            $00, $03, Snd_PPZ1_Loop04
	smpsCall            Snd_PPZ1_Call02
	dc.b	dKickS3, $18, $0C, dKickS3, dMuffledSnare, $06, dMuffledSnare, dMuffledSnare, dKickS3, dMuffledSnare, $0C, $06
	dc.b	dMuffledSnare
	smpsCall            Snd_PPZ1_Call02
	dc.b	dKickS3, $18, $0C, dKickS3, dKickS3, dMuffledSnare, $06, dKickS3, dMuffledSnare, $0C, $06, dMuffledSnare
	smpsCall            Snd_PPZ1_Call02
	dc.b	dKickS3, $18, $0C, dKickS3, dMuffledSnare, $06, dMuffledSnare, dKickS3, dMuffledSnare, dMuffledSnare, $0C, $06
	dc.b	dKickS3
	smpsCall            Snd_PPZ1_Call02
	dc.b	dKickS3, $18, $0C, dKickS3, dMuffledSnare, $06, dMuffledSnare, dKickS3, dMuffledSnare, dKickS3, dMuffledSnare, dMuffledSnare
	dc.b	dKickS3
	smpsCall            Snd_PPZ1_Call02
	dc.b	dKickS3, $18, $0C, dKickS3, dMuffledSnare, $06, dMuffledSnare, dMuffledSnare, dMuffledSnare, dMuffledSnare, $0C, $06
	dc.b	dMuffledSnare, dKickS3, $18, $0C, $0C, nRst, $60, dKickS3, $06, dSnareS3, dSnareS3, dSnareS3
	dc.b	dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3
	smpsJump            Snd_PPZ1_Loop00

Snd_PPZ1_Call01:
	dc.b	dKickS3, $18, dKickS3, dKickS3, dKickS3
	smpsReturn

Snd_PPZ1_Call00:
	dc.b	dKickS3, $18, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, $0C, dKickS3
	smpsReturn

Snd_PPZ1_Call02:
	dc.b	dKickS3, $18, $0C, dKickS3, dKickS3, $18, $0C, $06, dKickS3
	smpsReturn

Snd_PPZ1_Call03:
	dc.b	dKickS3, $18, $0C, dKickS3, dKickS3, dKickS3, $06, dKickS3, dMuffledSnare, $0C, dKickS3, $06
	dc.b	dKickS3
	smpsReturn

Snd_PPZ1_Voices:
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
;	$11, $21, $51, $11, 	$12, $14, $14, $0F, 	$0A, $05, $05, $05
;	$00, $00, $00, $00, 	$2B, $2B, $2B, $1B, 	$19, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $05, $02, $01
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
;	$3A
;	$11, $11, $11, $11, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $11, 	$1F, $FF, $1F, $0F, 	$17, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $01, $01, $01
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $11, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $17

; Unused voice
;	Voice $04
;	$35
;	$11, $11, $13, $00, 	$1F, $1D, $18, $19, 	$00, $09, $06, $0D
;	$00, $00, $02, $03, 	$00, $06, $15, $16, 	$1E, $80, $83, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $01, $01
	smpsVcCoarseFreq    $00, $03, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $19, $18, $1D, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $06, $09, $00
	smpsVcDecayRate2    $03, $02, $00, $00
	smpsVcDecayLevel    $01, $01, $00, $00
	smpsVcReleaseRate   $06, $05, $06, $00
	smpsVcTotalLevel    $00, $03, $00, $1E

; Unused voice
;	Voice $05
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

; Unused voice
;	Voice $06
;	$04
;	$57, $02, $70, $50, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$06, $0A, $00, $0A, 	$00, $0F, $00, $0F, 	$1A, $80, $10, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $07, $00, $05
	smpsVcCoarseFreq    $00, $00, $02, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $0A, $00, $0A, $06
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $00, $0F, $00
	smpsVcTotalLevel    $00, $10, $00, $1A

