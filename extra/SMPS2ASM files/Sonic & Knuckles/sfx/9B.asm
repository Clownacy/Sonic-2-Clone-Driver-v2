Sound_9B_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_9B_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cFM4, Sound_9B_FM4,	$F2, $00
	smpsHeaderSFXChannel cFM5, Sound_9B_FM5,	$F9, $00
; Unused header:
	smpsHeaderSFXChannel cFM3, Sound_9B_FM3,	$F9, $08

; Unused track data:
; FM3 Data
Sound_9B_FM3:
	smpsSetvoice        $01
	smpsJump            Sound_9B_Loop00
	
; FM5 Data
Sound_9B_FM5:
	dc.b	nRst, $02

; FM4 Data
Sound_9B_FM4:
	smpsSetvoice        $00
	smpsModSet          $01, $01, $74, $29

Sound_9B_Loop00:
	dc.b	nD1, $07, nRst, $02, nD1, $09, nRst
	smpsFMAlterVol      $11
	smpsLoop            $00, $04, Sound_9B_Loop00
	smpsStop

Sound_9B_Voices:
;	Voice $00
;	$38
;	$70, $30, $10, $30, 	$1F, $1D, $15, $1F, 	$00, $0C, $0E, $07
;	$06, $0F, $06, $12, 	$04, $12, $07, $18, 	$10, $07, $0C, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $01, $03, $07
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $15, $1D, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $0E, $0C, $00
	smpsVcDecayRate2    $12, $06, $0F, $06
	smpsVcDecayLevel    $01, $00, $01, $00
	smpsVcReleaseRate   $08, $07, $02, $04
	smpsVcTotalLevel    $00, $0C, $07, $10

; Unused voice:
;	Voice $01
;	$38
;	$01, $31, $10, $30, 	$1F, $1D, $15, $1F, 	$25, $1C, $0E, $07
;	$06, $0F, $06, $12, 	$03, $04, $07, $18, 	$17, $22, $02, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $01, $03, $00
	smpsVcCoarseFreq    $00, $00, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $15, $1D, $1F
	smpsVcAmpMod        $00, $00, $00, $01
	smpsVcDecayRate1    $07, $0E, $1C, $05
	smpsVcDecayRate2    $12, $06, $0F, $06
	smpsVcDecayLevel    $01, $00, $00, $00
	smpsVcReleaseRate   $08, $07, $04, $03
	smpsVcTotalLevel    $00, $02, $22, $17

