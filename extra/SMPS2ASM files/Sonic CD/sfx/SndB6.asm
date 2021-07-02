SndB6_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndB6_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cFM1, SndB6_FM1,	$0C, $03
	smpsHeaderSFXChannel cFM2, SndB6_FM2,	$0E, $03

; FM1 Data
SndB6_FM1:
	smpsSetvoice        $00
	smpsModSet          $01, $01, $83, $0C

SndB6_Loop01:
	dc.b	nA0, $05, $05
	smpsFMAlterVol      $03
	smpsLoop            $00, $0A, SndB6_Loop01
	smpsStop

; FM2 Data
SndB6_FM2:
	dc.b	nRst, $04
	smpsSetvoice        $00
	smpsModSet          $01, $01, $6F, $0E

SndB6_Loop00:
	dc.b	nC1, $04, $05
	smpsFMAlterVol      $03
	smpsLoop            $00, $0A, SndB6_Loop00
	smpsStop

SndB6_Voices:
;	Voice $00
;	$35
;	$14, $1A, $04, $09, 	$0E, $10, $11, $0E, 	$0C, $15, $03, $06
;	$16, $0E, $09, $10, 	$2F, $2F, $4F, $4F, 	$2F, $12, $12, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $01, $01
	smpsVcCoarseFreq    $09, $04, $0A, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0E, $11, $10, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $03, $15, $0C
	smpsVcDecayRate2    $10, $09, $0E, $16
	smpsVcDecayLevel    $04, $04, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $12, $12, $2F

