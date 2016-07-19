SH2_Start:
		binclude	"sound/Stub 32X/code.bin"
		dc.l	$02000000|PWM_Driver
SH2_End:

SH2_Length = SH2_End-SH2_Start
