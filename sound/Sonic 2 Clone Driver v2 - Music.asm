; ---------------------------------------------------------------------------
; Music	macros and constants
; ---------------------------------------------------------------------------
SMPS_MUSIC_FORCE_PAL_SPEED = $00000001	; Forces song to play at PAL speeds on PAL consoles for synchronisation (used by drowning theme)

SMPS_MUSIC macro address,flags,fasttempo
	dc.l	address|flags
	dc.b	fasttempo
	dc.b	0
	endm

; ---------------------------------------------------------------------------
; Music metadata (pointers, flags, speed shoes tempos)
; ---------------------------------------------------------------------------
; byte_71A94: SpeedUpIndex:
MusicIndex:
ptr_mus81:	SMPS_MUSIC	Music81, 0, s2TempotoS3($68)	; 2 Player Menu
ptr_mus82:	SMPS_MUSIC	Music82, 0, s2TempotoS3($BE)	; EHZ
ptr_mus83:	SMPS_MUSIC	Music83, 0, s2TempotoS3($FF)	; MCZ 2P
ptr_mus84:	SMPS_MUSIC	Music84, 0, s2TempotoS3($F0)	; OOZ
ptr_mus85:	SMPS_MUSIC	Music85, 0, s2TempotoS3($FF)	; MTZ
ptr_mus86:	SMPS_MUSIC	Music86, 0, s2TempotoS3($DE)	; HTZ
ptr_mus87:	SMPS_MUSIC	Music87, 0, s2TempotoS3($FF)	; ARZ
ptr_mus88:	SMPS_MUSIC	Music88, 0, s2TempotoS3($DD)	; CNZ 2P
ptr_mus89:	SMPS_MUSIC	Music89, 0, s2TempotoS3($68)	; CNZ
ptr_mus8A:	SMPS_MUSIC	Music8A, 0, s2TempotoS3($80)	; DEZ
ptr_mus8B:	SMPS_MUSIC	Music8B, 0, s2TempotoS3($D6)	; MCZ
ptr_mus8C:	SMPS_MUSIC	Music8C, 0, s2TempotoS3($7B)	; EHZ 2P
ptr_mus8D:	SMPS_MUSIC	Music8D, 0, s2TempotoS3($7B)	; SCZ
ptr_mus8E:	SMPS_MUSIC	Music8E, 0, s2TempotoS3($FF)	; CPZ
ptr_mus8F:	SMPS_MUSIC	Music8F, 0, s2TempotoS3($A8)	; WFZ
ptr_mus90:	SMPS_MUSIC	Music90, 0, s2TempotoS3($FF)	; HPZ
ptr_mus91:	SMPS_MUSIC	Music91, 0, s2TempotoS3($87)	; Options
ptr_mus92:	SMPS_MUSIC	Music92, 0, s2TempotoS3($FF)	; Special Stage
ptr_mus93:	SMPS_MUSIC	Music93, 0, s2TempotoS3($FF)	; Boss
ptr_mus94:	SMPS_MUSIC	Music94, 0, s2TempotoS3($C9)	; Final Boss
ptr_mus95:	SMPS_MUSIC	Music95, 0, s2TempotoS3($97)	; SWEET SWEET SWEET
ptr_mus96:	SMPS_MUSIC	Music96, 0, s2TempotoS3($FF)	; Super Sonic
ptr_mus97:	SMPS_MUSIC	Music97, 0, s2TempotoS3($FF)	; Invincible
ptr_mus98:	SMPS_MUSIC	Music98, 0, s2TempotoS3($CD)	; Extra Life
ptr_mus99:	SMPS_MUSIC	Music99, 0, s2TempotoS3($CD)	; Title Screen
ptr_mus9A:	SMPS_MUSIC	Music9A, 0, s2TempotoS3($AA)	; End of Act
ptr_mus9B:	SMPS_MUSIC	Music9B, 0, s2TempotoS3($F2)	; Game Over
ptr_mus9C:	SMPS_MUSIC	Music9C, 0, s2TempotoS3($DB)	; Continue
ptr_mus9D:	SMPS_MUSIC	Music9D, 0, s2TempotoS3($D5)	; Got Emerald
ptr_mus9E:	SMPS_MUSIC	Music9E, 0, s2TempotoS3($F0)	; Credits
ptr_mus9F:	SMPS_MUSIC	Music9F, SMPS_MUSIC_FORCE_PAL_SPEED, s2TempotoS3($80)	; Drowning
ptr_musend

; ---------------------------------------------------------------------------
; Music 'include's
; ---------------------------------------------------------------------------
Music81:	include		"sound/music/81 - 2 Player Menu.asm"
		even
Music82:	include		"sound/music/82 - EHZ.asm"
		even
Music83:	include		"sound/music/83 - MCZ 2P.asm"
		even
Music84:	include		"sound/music/84 - OOZ.asm"
		even
Music85:	include		"sound/music/85 - MTZ.asm"
		even
Music86:	include		"sound/music/86 - HTZ.asm"
		even
Music87:	include		"sound/music/87 - ARZ.asm"
		even
Music88:	include		"sound/music/88 - CNZ 2P.asm"
		even
Music89:	include		"sound/music/89 - CNZ.asm"
		even
Music8A:	include		"sound/music/8A - DEZ.asm"
		even
Music8B:	include		"sound/music/8B - MCZ.asm"
		even
Music8C:	include		"sound/music/8C - EHZ 2P.asm"
		even
Music8D:	include		"sound/music/8D - SCZ.asm"
		even
Music8E:	include		"sound/music/8E - CPZ.asm"
		even
Music8F:	include		"sound/music/8F - WFZ.asm"
		even
Music90:	include		"sound/music/90 - HPZ.asm"
		even
Music91:	include		"sound/music/91 - Options.asm"
		even
Music92:	include		"sound/music/92 - Special Stage.asm"
		even
Music93:	include		"sound/music/93 - Boss.asm"
		even
Music94:	include		"sound/music/94 - Final Boss.asm"
		even
Music95:	include		"sound/music/95 - SWEET SWEET SWEET.asm"
		even
Music96:	include		"sound/music/96 - Super Sonic.asm"
		even
Music97:	include		"sound/music/97 - Invincible.asm"
		even
Music98:	include		"sound/music/98 - Extra Life.asm"
		even
Music99:	include		"sound/music/99 - Title Screen.asm"
		even
Music9A:	include		"sound/music/9A - End of Act.asm"
		even
Music9B:	include		"sound/music/9B - Game Over.asm"
		even
Music9C:	include		"sound/music/9C - Continue.asm"
		even
Music9D:	include		"sound/music/9D - Got Emerald.asm"
		even
Music9E:	include		"sound/music/9E - Credits.asm"
		even
Music9F:	include		"sound/music/9F - Drowning.asm"
		even
