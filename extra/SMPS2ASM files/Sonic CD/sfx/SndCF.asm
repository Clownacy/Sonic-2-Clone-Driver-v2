SndCF_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndCF_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cFM3, SndCF_FM3,	$00, $00
	smpsHeaderSFXChannel cFM4, SndCF_FM4,	$00, $00

; FM4 Data
SndCF_FM4:
	dc.b	nRst, $03

; FM3 Data
SndCF_FM3:
	smpsSetvoice        $00
	dc.b	nFs6, $06, nRst, $01, nAb7, $0C

SndCF_Loop00:
	smpsFMAlterVol      $05
	dc.b	$0C
	smpsLoop            $00, $05, SndCF_Loop00
	smpsStop

SndCF_Voices:
;	Voice $00
;	$34
;	$0C, $0A, $04, $03, 	$1F, $1F, $1F, $1F, 	$0C, $0D, $09, $0C
;	$0A, $0E, $0D, $0E, 	$35, $1A, $55, $3A, 	$0F, $80, $0F, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $03, $04, $0A, $0C
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $09, $0D, $0C
	smpsVcDecayRate2    $0E, $0D, $0E, $0A
	smpsVcDecayLevel    $03, $05, $01, $03
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $80, $0F, $80, $0F

