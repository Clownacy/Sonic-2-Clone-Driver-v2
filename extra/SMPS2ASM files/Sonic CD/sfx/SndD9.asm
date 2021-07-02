SndD9_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndD9_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $03

	smpsHeaderSFXChannel cFM5, SndD9_FM5,	$00, $00
	smpsHeaderSFXChannel cFM6, SndD9_FM6,	$FB, $03
	smpsHeaderSFXChannel cFM4, SndD9_FM4,	$00, $03

; FM5 Data
SndD9_FM5:
	smpsSetvoice        $00

SndD9_Jump00:
	dc.b	nG2, $05, nC3, nD3, nG3, nC4, nD4

SndD9_Loop00:
	dc.b	nG4, nC5, nD5
	smpsFMAlterVol      $03
	smpsLoop            $00, $0D, SndD9_Loop00
	smpsStop

; FM6 Data
SndD9_FM6:
	smpsSetvoice        $00
	smpsPan             panRight, $00
	dc.b	nRst, $01
	smpsFMAlterVol      $06
	smpsChangeTransposition $F9
	smpsJump            SndD9_Jump00

; FM4 Data
SndD9_FM4:
	smpsSetvoice        $00
	smpsPan             panLeft, $00
	smpsChangeTransposition $F9
	smpsJump            SndD9_Jump00

SndD9_Voices:
;	Voice $00
;	$13
;	$46, $36, $36, $56, 	$1F, $1F, $1F, $1F, 	$0C, $0D, $0E, $0D
;	$0C, $0C, $0C, $0F, 	$1F, $1F, $1F, $1F, 	$24, $10, $0F, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $03, $04
	smpsVcCoarseFreq    $06, $06, $06, $06
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0E, $0D, $0C
	smpsVcDecayRate2    $0F, $0C, $0C, $0C
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $0F, $10, $24

