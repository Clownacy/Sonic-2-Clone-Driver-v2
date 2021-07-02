SndB8_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndB8_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cFM3, SndB8_FM3,	$05, $06
	smpsHeaderSFXChannel cFM4, SndB8_FM4,	$00, $03

; Real useful track
; FM3 Data
SndB8_FM3:
	smpsStop

; FM4 Data
SndB8_FM4:
	smpsSetvoice        $01
	smpsModSet          $01, $01, $C5, $1A
	dc.b	nF6, $07
	smpsChangeTransposition $0C
	smpsFMAlterVol      $05
	smpsSetvoice        $02
	smpsModSet          $03, $01, $09, $FF
	dc.b	nE6, $11
	smpsModSet          $00, $01, $00, $00

SndB8_Loop00:
	dc.b	smpsNoAttack
	smpsFMAlterVol      $03
	dc.b	nE6, $03
	smpsLoop            $00, $12, SndB8_Loop00
	smpsStop

SndB8_Voices:
;	Voice $00
;	$3B
;	$3C, $39, $30, $31, 	$DF, $1F, $1F, $DF, 	$04, $05, $04, $01
;	$04, $04, $04, $02, 	$FF, $0F, $1F, $AF, 	$11, $20, $0F, $84
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $09, $0C
	smpsVcRateScale     $03, $00, $00, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $04, $05, $04
	smpsVcDecayRate2    $02, $04, $04, $04
	smpsVcDecayLevel    $0A, $01, $00, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $84, $0F, $20, $11

;	Voice $01
;	$FD
;	$09, $03, $00, $00, 	$1F, $1F, $1F, $1F, 	$10, $0C, $0C, $0C
;	$0B, $1F, $10, $05, 	$1F, $2F, $4F, $2F, 	$09, $80, $8E, $88
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $03
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $03, $09
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0C, $0C, $10
	smpsVcDecayRate2    $05, $10, $1F, $0B
	smpsVcDecayLevel    $02, $04, $02, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $88, $8E, $80, $09

;	Voice $02
;	$3C
;	$00, $44, $02, $02, 	$1F, $1F, $1F, $15, 	$00, $1F, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$0D, $80, $28, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $04, $00
	smpsVcCoarseFreq    $02, $02, $04, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $15, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $1F, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $28, $80, $0D

