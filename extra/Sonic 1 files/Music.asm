; ---------------------------------------------------------------------------
; Music metadata (pointers, speed shoes tempos, flags)
; ---------------------------------------------------------------------------
; byte_71A94: SpeedUpIndex:
MusicIndex:
ptr_mus81:	SMPS_MUSIC_METADATA	Music81, s1TempotoS3($07), 0	; GHZ
ptr_mus82:	SMPS_MUSIC_METADATA	Music82, s1TempotoS3($72), 0	; LZ
ptr_mus83:	SMPS_MUSIC_METADATA	Music83, s1TempotoS3($73), 0	; MZ
ptr_mus84:	SMPS_MUSIC_METADATA	Music84, s1TempotoS3($26), 0	; SLZ
ptr_mus85:	SMPS_MUSIC_METADATA	Music85, s1TempotoS3($15), 0	; SYZ
ptr_mus86:	SMPS_MUSIC_METADATA	Music86, s1TempotoS3($08), 0	; SBZ
ptr_mus87:	SMPS_MUSIC_METADATA	Music87, s1TempotoS3($FF), 0	; Invincible
ptr_mus88:	SMPS_MUSIC_METADATA	Music88, s1TempotoS3($05), 0	; Extra Life
ptr_mus89:	SMPS_MUSIC_METADATA	Music89, s1TempotoS3($08), 0	; Special Stage
ptr_mus8A:	SMPS_MUSIC_METADATA	Music8A, s1TempotoS3($05), 0	; Title Screen
ptr_mus8B:	SMPS_MUSIC_METADATA	Music8B, s1TempotoS3($05), SMPS_MUSIC_METADATA_FORCE_PAL_SPEED	; Ending
ptr_mus8C:	SMPS_MUSIC_METADATA	Music8C, s1TempotoS3($04)-$20, 0	; Boss
ptr_mus8D:	SMPS_MUSIC_METADATA	Music8D, s1TempotoS3($06)-$20, 0	; Final Zone
ptr_mus8E:	SMPS_MUSIC_METADATA	Music8E, s1TempotoS3($03), 0	; End of Act
ptr_mus8F:	SMPS_MUSIC_METADATA	Music8F, s1TempotoS3($13), 0	; Game Over
ptr_mus90:	SMPS_MUSIC_METADATA	Music90, s1TempotoS3($07), SMPS_MUSIC_METADATA_FORCE_PAL_SPEED	; Continue
ptr_mus91:	SMPS_MUSIC_METADATA	Music91, s1TempotoS3($33), SMPS_MUSIC_METADATA_FORCE_PAL_SPEED	; Credits
ptr_mus92:	SMPS_MUSIC_METADATA	Music92, s1TempotoS3($02), SMPS_MUSIC_METADATA_FORCE_PAL_SPEED	; Drowning
ptr_mus93:	SMPS_MUSIC_METADATA	Music93, s1TempotoS3($06), 0	; Emerald
ptr_musend

; ---------------------------------------------------------------------------
; Music data
; ---------------------------------------------------------------------------
Music81:	include		"Sonic-2-Clone-Driver-v2/music/Mus81 - GHZ.asm"
		even
Music82:	include		"Sonic-2-Clone-Driver-v2/music/Mus82 - LZ.asm"
		even
Music83:	include		"Sonic-2-Clone-Driver-v2/music/Mus83 - MZ.asm"
		even
Music84:	include		"Sonic-2-Clone-Driver-v2/music/Mus84 - SLZ.asm"
		even
Music85:	include		"Sonic-2-Clone-Driver-v2/music/Mus85 - SYZ.asm"
		even
Music86:	include		"Sonic-2-Clone-Driver-v2/music/Mus86 - SBZ.asm"
		even
Music87:	include		"Sonic-2-Clone-Driver-v2/music/Mus87 - Invincibility.asm"
		even
Music88:	include		"Sonic-2-Clone-Driver-v2/music/Mus88 - Extra Life.asm"
		even
Music89:	include		"Sonic-2-Clone-Driver-v2/music/Mus89 - Special Stage.asm"
		even
Music8A:	include		"Sonic-2-Clone-Driver-v2/music/Mus8A - Title Screen.asm"
		even
Music8B:	include		"Sonic-2-Clone-Driver-v2/music/Mus8B - Ending.asm"
		even
Music8C:	include		"Sonic-2-Clone-Driver-v2/music/Mus8C - Boss.asm"
		even
Music8D:	include		"Sonic-2-Clone-Driver-v2/music/Mus8D - FZ.asm"
		even
Music8E:	include		"Sonic-2-Clone-Driver-v2/music/Mus8E - Sonic Got Through.asm"
		even
Music8F:	include		"Sonic-2-Clone-Driver-v2/music/Mus8F - Game Over.asm"
		even
Music90:	include		"Sonic-2-Clone-Driver-v2/music/Mus90 - Continue Screen.asm"
		even
Music91:	include		"Sonic-2-Clone-Driver-v2/music/Mus91 - Credits.asm"
		even
Music92:	include		"Sonic-2-Clone-Driver-v2/music/Mus92 - Drowning.asm"
		even
Music93:	include		"Sonic-2-Clone-Driver-v2/music/Mus93 - Get Emerald.asm"
		even
