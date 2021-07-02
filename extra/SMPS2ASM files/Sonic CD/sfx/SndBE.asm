SndBE_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndBE_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM4, SndBE_FM4,	$03, $00

; FM4 Data
SndBE_FM4:
	smpsSetvoice        $00
	dc.b	nEb5, $10
	smpsStop

SndBE_Voices:
;	Voice $00
;	$02
;	$02, $03, $23, $01, 	$1E, $1E, $1E, $1E, 	$10, $0A, $12, $12
;	$01, $00, $00, $13, 	$FF, $FF, $FF, $FF, 	$08, $0E, $1F, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $02, $00, $00
	smpsVcCoarseFreq    $01, $03, $03, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1E, $1E, $1E, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $12, $12, $0A, $10
	smpsVcDecayRate2    $13, $00, $00, $01
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1F, $0E, $08

