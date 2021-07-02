RingL_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Ring_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM4, RingL_FM4,	$00, $05

; FM4 Data
RingL_FM4:
	smpsSetvoice        $00
	smpsPan             panLeft, $00
	dc.b	nE5, $04, nG5, $05, nC6, $1B
	smpsStop

