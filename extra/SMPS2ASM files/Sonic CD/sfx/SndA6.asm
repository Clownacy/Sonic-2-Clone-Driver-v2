SndA6_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndA6_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM6, SndA6_FM6,	$00, $0D

; FM6 Data
SndA6_FM6:
	smpsSetvoice        $00
	dc.b	nG6, $02

SndA6_Loop00:
	dc.b	smpsNoAttack, $01
	smpsActualConditionalJump SndA6_Loop00

SndA6_Loop01:
	dc.b	smpsNoAttack, $01
	smpsFMAlterVol      $01
	smpsLoop            $00, $22, SndA6_Loop01
	dc.b	nRst, $01
	smpsSetComm         $00
	smpsStop

SndA6_Voices:
;	Voice $00
;	$38
;	$0F, $0F, $0F, $0F, 	$1F, $1F, $1F, $0E, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $1F, 	$00, $00, $00, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $0F, $0F, $0F, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0E, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $00

