SndAB_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndAA_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM1, SndAB_FM1,	$00, $00

; FM1 Data
SndAB_FM1:
	smpsStop
