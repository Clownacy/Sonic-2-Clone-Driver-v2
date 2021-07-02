SndA9_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     SndA9_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cFM5, SndA9_FM5,	$00, $00
	smpsHeaderSFXChannel cFM6, SndA9_FM6,	$00, $0D

; FM5 Data
SndA9_FM5:
	smpsStop

; FM6 Data
SndA9_FM6:
	smpsStop

; Song seems to not use any FM voices
SndA9_Voices:
