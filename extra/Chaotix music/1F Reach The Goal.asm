ReachTheGoal_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     ReachTheGoal_Voices
	smpsHeaderChan      $07, $03, $04
	smpsHeaderTempo     $01, $3B

	smpsHeaderDAC       ReachTheGoal_DAC
	smpsHeaderFM        ReachTheGoal_FM1,	$00, $10
	smpsHeaderFM        ReachTheGoal_FM2,	$00, $05
	smpsHeaderFM        ReachTheGoal_FM3,	$00, $05
	smpsHeaderFM        ReachTheGoal_FM4,	$00, $1C
	smpsHeaderFM        ReachTheGoal_FM5,	$00, $1C
	smpsHeaderFM        ReachTheGoal_FM6,	$0C, $12
	smpsHeaderPSG       ReachTheGoal_PSG1,	$F4, $00, $00, $00
	smpsHeaderPSG       ReachTheGoal_PSG2,	$F4, $00, $00, $00
	smpsHeaderPSG       ReachTheGoal_PSG3,	$00, $00, $00, $00
	smpsHeaderPWM       ReachTheGoal_PWM1,	$00, $FF
	smpsHeaderPWM       ReachTheGoal_PWM2,	$00, $CC
	smpsHeaderPWM       ReachTheGoal_PWM3,	$00, $AA
	smpsHeaderPWM       ReachTheGoal_PWM4,	$00, $00

; Dummy DAC data
ReachTheGoal_DAC:
	smpsStop

; FM1 Data
ReachTheGoal_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nF2, $03, nRst, nF2, $03, nRst, nRst, $18, nF2, $06, nG2, nRst
	dc.b	$18, nF3, $06, nG2, $0C, nRst, $06, nG2, nG1, $06, nRst, nA1
	dc.b	$0C, smpsNoAttack, $48
	smpsStop

; FM2 Data
ReachTheGoal_FM2:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsCall            ReachTheGoal_Call01

ReachTheGoal_Call01:
	dc.b	nE5, $06, nF5, $03, nRst, nE5, $06, nD5, $03, nRst
	smpsFMAlterVol      $07
	dc.b	nD5, $03, nRst
	smpsFMAlterVol      $F9
	dc.b	nC5, $03, nRst
	smpsFMAlterVol      $07
	dc.b	nC5, $03, nRst
	smpsFMAlterVol      $F9
	dc.b	nB4, $03, nRst
	smpsFMAlterVol      $07
	dc.b	nB4, $03, nRst
	smpsFMAlterVol      $F9
	dc.b	nC5, $03, nRst
	smpsFMAlterVol      $07
	dc.b	nC5, $03, nRst
	smpsFMAlterVol      $F9
	dc.b	nD5, $03, nRst
	smpsFMAlterVol      $07
	dc.b	nD5, $03, nRst
	smpsFMAlterVol      $F9
	dc.b	nC5, $03, nRst, nB4, nRst, nC5, nRst, nG4, $06
	smpsFMAlterVol      $07
	dc.b	nG4, $06
	smpsFMAlterVol      $F9
	dc.b	nA4, $54
	smpsStop

; FM3 Data
ReachTheGoal_FM3:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsCall            ReachTheGoal_Call00

ReachTheGoal_Call00:
	smpsChangeTransposition $FB
	dc.b	nE5, $06, nF5, $03, nRst, nE5, $06, nD5, $03, nRst
	smpsFMAlterVol      $07
	dc.b	nD5, $03, nRst
	smpsFMAlterVol      $F9
	dc.b	nC5, $03, nRst
	smpsFMAlterVol      $07
	dc.b	nC5, $03, nRst
	smpsFMAlterVol      $F9
	dc.b	nB4, $03, nRst
	smpsFMAlterVol      $07
	dc.b	nB4, $03, nRst
	smpsFMAlterVol      $F9
	dc.b	nC5, $03, nRst
	smpsFMAlterVol      $07
	dc.b	nC5, $03, nRst
	smpsFMAlterVol      $F9
	dc.b	nD5, $03, nRst
	smpsFMAlterVol      $07
	dc.b	nD5, $03, nRst
	smpsFMAlterVol      $F9
	dc.b	nC5, $03, nRst, nB4, nRst, nC5, nRst
	smpsChangeTransposition $05
	dc.b	nD4, $06
	smpsFMAlterVol      $07
	dc.b	nD4, $06
	smpsFMAlterVol      $F9
	dc.b	nCs4, $54
	smpsStop

; FM4 Data
ReachTheGoal_FM4:
	smpsSetvoice        $01
	smpsPan             panLeft, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $06
	smpsCall            ReachTheGoal_Call01
	smpsStop

; FM5 Data
ReachTheGoal_FM5:
	smpsSetvoice        $01
	smpsPan             panRight, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $06
	smpsCall            ReachTheGoal_Call00
	smpsStop

; FM6 Data
ReachTheGoal_FM6:
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	dc.b	nE5, $06, nF5, $03, nRst, nE5, $06, nD5, $03, nRst
	smpsFMAlterVol      $0A
	dc.b	nD5, $03, nRst
	smpsFMAlterVol      $F6
	dc.b	nC5, $03, nRst
	smpsFMAlterVol      $0A
	dc.b	nC5, $03, nRst
	smpsFMAlterVol      $F6
	dc.b	nB4, $03, nRst
	smpsFMAlterVol      $0A
	dc.b	nB4, $03, nRst
	smpsFMAlterVol      $F6
	dc.b	nC5, $03, nRst
	smpsFMAlterVol      $0A
	dc.b	nC5, $03, nRst
	smpsFMAlterVol      $F6
	dc.b	nD5, $03, nRst
	smpsFMAlterVol      $0A
	dc.b	nD5, $03, nRst
	smpsFMAlterVol      $F6
	dc.b	nC5, $03, nRst, nB4, nRst, nC5, nRst, nG4, $06
	smpsFMAlterVol      $0A
	dc.b	nG4, $06
	smpsFMAlterVol      $F6
	dc.b	nA4, $0C
	smpsStop

; PSG1 Data
ReachTheGoal_PSG1:
	smpsStop

; PSG2 Data
ReachTheGoal_PSG2:
	smpsStop

; PSG3 Data
ReachTheGoal_PSG3:
	smpsStop

; PWM1 Data
ReachTheGoal_PWM1:
	dc.b	pwmAcousticKick, $06, pwmAcousticKick, nRst, $18, pwmAcousticKick, $06, pwmAcousticKick, nRst, $18, pwmAcousticKick, $06
	dc.b	$0C, $06, pwmAcousticKick, $0C, $0C
	smpsStop

; PWM2 Data
ReachTheGoal_PWM2:
	dc.b	pwmSilence, $18, pwmElectricSnare, $06, pwmElectricSnare, nRst, $0C, $18, pwmElectricSnare, $06, pwmElectricSnare
	smpsStop

; PWM3 Data
ReachTheGoal_PWM3:
	dc.b	pwmCrashCymbal, $30, nRst, $0C, nRst, $06, pwmHighTom, $03, $03, pwmHighTom, $06, pwmMidTom
	dc.b	pwmLowTom, pwmLowTom, pwmCrashCymbal, $0C, $0C
	smpsStop

; PWM4 Data
ReachTheGoal_PWM4:
	smpsStop

ReachTheGoal_Voices:
;	Voice $00
;	$38
;	$0A, $70, $30, $00, 	$1F, $1F, $1F, $1F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$26, $26, $26, $28, 	$24, $2D, $12, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $00
	smpsVcCoarseFreq    $00, $00, $00, $0A
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $08, $06, $06, $06
	smpsVcTotalLevel    $00, $12, $2D, $24

;	Voice $01
;	$3A
;	$01, $03, $02, $01, 	$0F, $10, $11, $19, 	$0A, $05, $0A, $05
;	$02, $02, $02, $02, 	$36, $36, $36, $58, 	$19, $1E, $32, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $03, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $19, $11, $10, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $0A, $05, $0A
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $05, $03, $03, $03
	smpsVcReleaseRate   $08, $06, $06, $06
	smpsVcTotalLevel    $00, $32, $1E, $19

;	Warning: The last byte of this voice is missing in Chaotix: the song
;	accidentally uses the first byte of High Five instead, which was done here
;	Voice $02
;	$06
;	$05, $04, $10, $1F, 	$5F, $5F, $5F, $05, 	$07, $0C, $0C, $17
;	$17, $12, $18, $9F, 	$9C, $9C, $9C, $2D, 	$80, $80, $80, $2F
	smpsVcAlgorithm     $06
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $01, $00, $00
	smpsVcCoarseFreq    $0F, $00, $04, $05
	smpsVcRateScale     $00, $01, $01, $01
	smpsVcAttackRate    $05, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $17, $0C, $0C, $07
	smpsVcDecayRate2    $9F, $18, $12, $17
	smpsVcDecayLevel    $02, $09, $09, $09
	smpsVcReleaseRate   $0D, $0C, $0C, $0C
	smpsVcTotalLevel    $2F, $00, $00, $80

