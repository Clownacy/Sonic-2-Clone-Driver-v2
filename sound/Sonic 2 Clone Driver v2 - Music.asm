; ---------------------------------------------------------------------------
; Music	pointers

; Flags:
; +1 - Forces song to play at PAL speeds on PAL consoles for synchronisation (used by drowning theme)
; ---------------------------------------------------------------------------
MusicIndex:
ptr_mus81:	dc.l Music81
ptr_mus82:	dc.l Music82
ptr_mus83:	dc.l Music83
ptr_mus84:	dc.l Music84
ptr_mus85:	dc.l Music85
ptr_mus86:	dc.l Music86
ptr_mus87:	dc.l Music87
ptr_mus88:	dc.l Music88
ptr_mus89:	dc.l Music89
ptr_mus8A:	dc.l Music8A
ptr_mus8B:	dc.l Music8B
ptr_mus8C:	dc.l Music8C
ptr_mus8D:	dc.l Music8D
ptr_mus8E:	dc.l Music8E
ptr_mus8F:	dc.l Music8F
ptr_mus90:	dc.l Music90
ptr_mus91:	dc.l Music91
ptr_mus92:	dc.l Music92
ptr_mus93:	dc.l Music93
ptr_mus94:	dc.l Music94
ptr_mus95:	dc.l Music95
ptr_mus96:	dc.l Music96
ptr_mus97:	dc.l Music97
ptr_mus98:	dc.l Music98
ptr_mus99:	dc.l Music99
ptr_mus9A:	dc.l Music9A
ptr_mus9B:	dc.l Music9B
ptr_mus9C:	dc.l Music9C
ptr_mus9D:	dc.l Music9D
ptr_mus9E:	dc.l Music9E
ptr_mus9F:	dc.l Music9F+1
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
