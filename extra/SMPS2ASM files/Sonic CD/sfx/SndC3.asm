SndC3_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndC3_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM2, SndC3_FM2,	$FF, $00

; FM2 Data
SndC3_FM2:
	smpsSetvoice        $00
	dc.b	nG4, $03
	smpsModSet          $01, $01, $39, $40
	dc.b	nRst, $01, nAb6, $09
	smpsStop

SndC3_Voices:
;	Voice $00
;	$34
;	$0C, $73, $10, $0C, 	$AF, $FF, $AC, $D5, 	$06, $02, $00, $01
;	$02, $04, $0A, $08, 	$BF, $BF, $BF, $BF, 	$00, $80, $08, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $07, $00
	smpsVcCoarseFreq    $0C, $00, $03, $0C
	smpsVcRateScale     $03, $02, $03, $02
	smpsVcAttackRate    $15, $2C, $3F, $2F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $00, $02, $06
	smpsVcDecayRate2    $08, $0A, $04, $02
	smpsVcDecayLevel    $0B, $0B, $0B, $0B
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $08, $80, $00

