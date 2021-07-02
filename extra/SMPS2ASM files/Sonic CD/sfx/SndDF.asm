SndDF_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndDF_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, SndDF_FM5,	$04, $08

; FM5 Data
SndDF_FM5:
	smpsSetvoice        $00

SndDF_Loop00:
	smpsCall            SndDF_Call00
	smpsChangeTransposition $05
	smpsFMAlterVol      $08
	smpsLoop            $01, $03, SndDF_Loop00
	smpsChangeTransposition $EC
	smpsFMAlterVol      $E0
	smpsStop

SndDF_Call00:
	dc.b	nC2, $02
	smpsChangeTransposition $01
	smpsLoop            $00, $0A, SndDF_Call00
	smpsChangeTransposition $F6
	smpsReturn

SndDF_Voices:
;	Voice $00
;	$07
;	$04, $04, $05, $04, 	$1F, $1F, $15, $15, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$7F, $7F, $80, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $05, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $15, $15, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $80, $7F, $7F

