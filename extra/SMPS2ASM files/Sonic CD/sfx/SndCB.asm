SndCB_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndCB_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM6, SndCB_FM6,	$00, $17

; FM6 Data
SndCB_FM6:
	smpsSetvoice        $00
	smpsModSet          $01, $01, $2F, $09

SndCB_Loop00:
	dc.b	nG2, $10, smpsNoAttack
	smpsFMAlterVol      $02
	smpsLoop            $00, $10, SndCB_Loop00

SndCB_Loop01:
	dc.b	nG2, $10, smpsNoAttack
	smpsFMAlterVol      $FE
	smpsLoop            $00, $10, SndCB_Loop01
	smpsJump            SndCB_Loop00

SndCB_Voices:
;	Voice $00
;	$47
;	$08, $08, $08, $08, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$81, $81, $81, $81
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $01
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $08, $08, $08, $08
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $81, $81, $81, $81

