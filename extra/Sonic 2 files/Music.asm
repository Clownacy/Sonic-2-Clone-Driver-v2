; ---------------------------------------------------------------------------
; Music metadata (pointers, speed shoes tempos, flags)

; Flags:
; SMPS_MUSIC_METADATA_FORCE_PAL_SPEED - Forces song to play at PAL speeds on PAL consoles for synchronisation (used by drowning theme)
; ---------------------------------------------------------------------------
; byte_71A94: SpeedUpIndex:
MusicIndex:
ptr_mus81:	SMPS_MUSIC_METADATA	Music81, s2TempotoS3($68), 0	; 2 Player Menu
ptr_mus82:	SMPS_MUSIC_METADATA	Music82, s2TempotoS3($BE), 0	; EHZ
ptr_mus83:	SMPS_MUSIC_METADATA	Music83, s2TempotoS3($FF), 0	; MCZ 2P
ptr_mus84:	SMPS_MUSIC_METADATA	Music84, s2TempotoS3($F0), 0	; OOZ
ptr_mus85:	SMPS_MUSIC_METADATA	Music85, s2TempotoS3($FF), 0	; MTZ
ptr_mus86:	SMPS_MUSIC_METADATA	Music86, s2TempotoS3($DE), 0	; HTZ
ptr_mus87:	SMPS_MUSIC_METADATA	Music87, s2TempotoS3($FF), 0	; ARZ
ptr_mus88:	SMPS_MUSIC_METADATA	Music88, s2TempotoS3($DD), 0	; CNZ 2P
ptr_mus89:	SMPS_MUSIC_METADATA	Music89, s2TempotoS3($68), 0	; CNZ
ptr_mus8A:	SMPS_MUSIC_METADATA	Music8A, s2TempotoS3($80), 0	; DEZ
ptr_mus8B:	SMPS_MUSIC_METADATA	Music8B, s2TempotoS3($D6), 0	; MCZ
ptr_mus8C:	SMPS_MUSIC_METADATA	Music8C, s2TempotoS3($7B), 0	; EHZ 2P
ptr_mus8D:	SMPS_MUSIC_METADATA	Music8D, s2TempotoS3($7B), 0	; SCZ
ptr_mus8E:	SMPS_MUSIC_METADATA	Music8E, s2TempotoS3($FF), 0	; CPZ
ptr_mus8F:	SMPS_MUSIC_METADATA	Music8F, s2TempotoS3($A8), 0	; WFZ
ptr_mus90:	SMPS_MUSIC_METADATA	Music90, s2TempotoS3($FF), 0	; HPZ
ptr_mus91:	SMPS_MUSIC_METADATA	Music91, s2TempotoS3($87), 0	; Options
ptr_mus92:	SMPS_MUSIC_METADATA	Music92, s2TempotoS3($FF), 0	; Special Stage
ptr_mus93:	SMPS_MUSIC_METADATA	Music93, s2TempotoS3($FF), 0	; Boss
ptr_mus94:	SMPS_MUSIC_METADATA	Music94, s2TempotoS3($C9), 0	; Final Boss
ptr_mus95:	SMPS_MUSIC_METADATA	Music95, s2TempotoS3($97), 0	; SWEET SWEET SWEET
ptr_mus96:	SMPS_MUSIC_METADATA	Music96, s2TempotoS3($FF), 0	; Super Sonic
ptr_mus97:	SMPS_MUSIC_METADATA	Music97, s2TempotoS3($FF), 0	; Invincible
ptr_mus98:	SMPS_MUSIC_METADATA	Music98, s2TempotoS3($CD), 0	; Extra Life
ptr_mus99:	SMPS_MUSIC_METADATA	Music99, s2TempotoS3($CD), 0	; Title Screen
ptr_mus9A:	SMPS_MUSIC_METADATA	Music9A, s2TempotoS3($AA), 0	; End of Act
ptr_mus9B:	SMPS_MUSIC_METADATA	Music9B, s2TempotoS3($F2), 0	; Game Over
ptr_mus9C:	SMPS_MUSIC_METADATA	Music9C, s2TempotoS3($DB), 0	; Continue
ptr_mus9D:	SMPS_MUSIC_METADATA	Music9D, s2TempotoS3($D5), 0	; Got Emerald
ptr_mus9E:	SMPS_MUSIC_METADATA	Music9E, s2TempotoS3($F0), 0	; Credits
ptr_mus9F:	SMPS_MUSIC_METADATA	Music9F, s2TempotoS3($80), SMPS_MUSIC_METADATA_FORCE_PAL_SPEED	; Drowning
ptr_musend

; ---------------------------------------------------------------------------
; Music data
; ---------------------------------------------------------------------------
Music81:	include		"Sonic-2-Clone-Driver-v2/music/81 - 2 Player Menu.asm"
		even
Music82:	include		"Sonic-2-Clone-Driver-v2/music/82 - EHZ.asm"
		even
Music83:	include		"Sonic-2-Clone-Driver-v2/music/83 - MCZ 2P.asm"
		even
Music84:	include		"Sonic-2-Clone-Driver-v2/music/84 - OOZ.asm"
		even
Music85:	include		"Sonic-2-Clone-Driver-v2/music/85 - MTZ.asm"
		even
Music86:	include		"Sonic-2-Clone-Driver-v2/music/86 - HTZ.asm"
		even
Music87:	include		"Sonic-2-Clone-Driver-v2/music/87 - ARZ.asm"
		even
Music88:	include		"Sonic-2-Clone-Driver-v2/music/88 - CNZ 2P.asm"
		even
Music89:	include		"Sonic-2-Clone-Driver-v2/music/89 - CNZ.asm"
		even
Music8A:	include		"Sonic-2-Clone-Driver-v2/music/8A - DEZ.asm"
		even
Music8B:	include		"Sonic-2-Clone-Driver-v2/music/8B - MCZ.asm"
		even
Music8C:	include		"Sonic-2-Clone-Driver-v2/music/8C - EHZ 2P.asm"
		even
Music8D:	include		"Sonic-2-Clone-Driver-v2/music/8D - SCZ.asm"
		even
Music8E:	include		"Sonic-2-Clone-Driver-v2/music/8E - CPZ.asm"
		even
Music8F:	include		"Sonic-2-Clone-Driver-v2/music/8F - WFZ.asm"
		even
Music90:	include		"Sonic-2-Clone-Driver-v2/music/90 - HPZ.asm"
		even
Music91:	include		"Sonic-2-Clone-Driver-v2/music/91 - Options.asm"
		even
Music92:	include		"Sonic-2-Clone-Driver-v2/music/92 - Special Stage.asm"
		even
Music93:	include		"Sonic-2-Clone-Driver-v2/music/93 - Boss.asm"
		even
Music94:	include		"Sonic-2-Clone-Driver-v2/music/94 - Final Boss.asm"
		even
Music95:	include		"Sonic-2-Clone-Driver-v2/music/95 - Ending.asm"
		even
Music96:	include		"Sonic-2-Clone-Driver-v2/music/96 - Super Sonic.asm"
		even
Music97:	include		"Sonic-2-Clone-Driver-v2/music/97 - Invincible.asm"
		even
Music98:	include		"Sonic-2-Clone-Driver-v2/music/98 - Extra Life.asm"
		even
Music99:	include		"Sonic-2-Clone-Driver-v2/music/99 - Title Screen.asm"
		even
Music9A:	include		"Sonic-2-Clone-Driver-v2/music/9A - End of Act.asm"
		even
Music9B:	include		"Sonic-2-Clone-Driver-v2/music/9B - Game Over.asm"
		even
Music9C:	include		"Sonic-2-Clone-Driver-v2/music/9C - Continue.asm"
		even
Music9D:	include		"Sonic-2-Clone-Driver-v2/music/9D - Got Emerald.asm"
		even
Music9E:	include		"Sonic-2-Clone-Driver-v2/music/9E - Credits.asm"
		even
Music9F:	include		"Sonic-2-Clone-Driver-v2/music/9F - Drowning.asm"
		even
