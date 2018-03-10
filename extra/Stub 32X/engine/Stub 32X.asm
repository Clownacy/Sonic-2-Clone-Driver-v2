	; align 4. SH2 crashes in Gens/GS without this (so would hardware, I presume). Kega doesn't care.
	rept (*)&3
	dc.b	$00
	endm

SH2_Start:
		save
		include	"Sonic-2-Clone-Driver-v2/engine/Stub 32X/code.asm"
		restore
		padding off ; unfortunately our flags got reset so we have to set them again...
SH2_End:

SH2_Length = SH2_End-SH2_Start
