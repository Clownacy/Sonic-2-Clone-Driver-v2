	; align 4. SH2 crashes in Gens/GS without this (so would hardware, I presume). Kega doesn't care.
	rept (*)&3
	dc.b	$00
	endm

SH2_Start:
		binclude	"sound/Stub 32X/code.bin"
		dc.l	$02000000|PWM_Driver
SH2_End:

SH2_Length = SH2_End-SH2_Start
