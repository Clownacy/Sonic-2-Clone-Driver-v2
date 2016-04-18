; ---------------------------------------------------------------------------
; Priority of sound. New music or SFX must have a priority higher than or equal
; to what is stored in v_sndprio or it won't play. If bit 7 of new priority is
; set ($80 and up), the new music or SFX will not set its priority -- meaning
; any music or SFX can override it (as long as it can override whatever was
; playing before). Usually, SFX will only override SFX, special SFX ($D0-$DF)
; will only override special SFX and music will only override music.
; Of course, this isn't the case anymore, as priorities no longer apply to
; special SFX or music.
; ---------------------------------------------------------------------------
; SoundTypes:
SoundPriorities:
	; These are from zSFXPriority in s2.sounddriver.asm
	; The table only spanned the SFX entries
	dc.b $80,$70,$70,$70,$70,$70,$70,$70,$70,$70,$68,$70,$70,$70,$60,$70	; $80
	dc.b $70,$60,$70,$60,$70,$70,$70,$70,$70,$70,$70,$70,$70,$70,$70,$7F	; $90
	dc.b $6F,$70,$70,$70,$70,$70,$70,$70,$70,$70,$70,$70,$70,$6F,$70,$70	; $A0
	dc.b $70,$60,$60,$70,$70,$70,$70,$70,$70,$70,$60,$62,$60,$60,$60,$70	; $B0
	dc.b $70,$70,$70,$70,$60,$60,$60,$6F,$70,$70,$6F,$6F,$70,$71,$70,$70	; $C0
	dc.b $6F								; $D0
	even

; ---------------------------------------------------------------------------
; New tempos for songs during speed shoes
; ---------------------------------------------------------------------------
; DANGER! several songs will use the first few bytes of MusicIndex as their main
; tempos while speed shoes are active. If you don't want that, you should add
; their "correct" sped-up main tempos to the list.
; These S2 tempos would be incompatible with the Clone Driver v2 due to S1's tempo algorithm
; though, since the S3 tempo algorithm has been ported, accurate convertions are now possible
; byte_71A94:
SpeedUpIndex:
	dc.b	s2TempotoS3($68)	; 81 - 2 Player Menu
	dc.b	s2TempotoS3($BE)	; 82 - EHZ
	dc.b	s2TempotoS3($FF)	; 83 - MCZ 2P
	dc.b	s2TempotoS3($F0)	; 84 - OOZ
	dc.b	s2TempotoS3($FF)	; 85 - MTZ
	dc.b	s2TempotoS3($DE)	; 86 - HTZ
	dc.b	s2TempotoS3($FF)	; 87 - ARZ
	dc.b	s2TempotoS3($DD)	; 88 - CNZ 2P
	dc.b	s2TempotoS3($68)	; 89 - CNZ
	dc.b	s2TempotoS3($80)	; 8A - DEZ
	dc.b	s2TempotoS3($D6)	; 8B - MCZ
	dc.b	s2TempotoS3($7B)	; 8C - EHZ 2P
	dc.b	s2TempotoS3($7B)	; 8D - SCZ
	dc.b	s2TempotoS3($FF)	; 8E - CPZ
	dc.b	s2TempotoS3($A8)	; 8F - WFZ
	dc.b	s2TempotoS3($FF)	; 90 - HPZ
	dc.b	s2TempotoS3($87)	; 91 - Options
	dc.b	s2TempotoS3($FF)	; 92 - Special Stage
	dc.b	s2TempotoS3($FF)	; 93 - Boss
	dc.b	s2TempotoS3($C9)	; 94 - Final Boss
	dc.b	s2TempotoS3($97)	; 95 - SWEET SWEET SWEET
	dc.b	s2TempotoS3($FF)	; 96 - Super Sonic
	dc.b	s2TempotoS3($FF)	; 97 - Invincible
	dc.b	s2TempotoS3($CD)	; 98 - Extra Life
	dc.b	s2TempotoS3($CD)	; 99 - Title Screen
	dc.b	s2TempotoS3($AA)	; 9A - End of Act
	dc.b	s2TempotoS3($F2)	; 9B - Game Over
	dc.b	s2TempotoS3($DB)	; 9C - Continue
	dc.b	s2TempotoS3($D5)	; 9D - Got Emerald
	dc.b	s2TempotoS3($F0)	; 9E - Credits
	dc.b	s2TempotoS3($80)	; 9F - Drowning
	even
