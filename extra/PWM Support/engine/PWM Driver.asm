; ---------------------------------------------------------------
; Driver's code
; ---------------------------------------------------------------

	; align 4, just in case
	rept (*)&3
	dc.b $00
	endm

PWM_Driver:
	; According to ValleyBell's docs, the driver Chaotix uses
	; is straight from the 32X SDK.
	binclude	"Sonic-2-Clone-Driver-v2/engine/Chaotix PWM Driver.bin",0,$1F0	; Include first half of driver
	dc.l	$22000000|SH2_PWMTable
	binclude	"Sonic-2-Clone-Driver-v2/engine/Chaotix PWM Driver.bin",$1F4,$20C	; Include second half of driver
PWM_Driver_End

; ---------------------------------------------------------------
; Macros
; ---------------------------------------------------------------

PWMSampleEntry macro label, loopoffset, samplerate
	; Format:
	;  0x00-0x03 - Absolute (SH2) address of PWM data
	;  0x04-0x07 - Length of PWM data
	;  From ValleyBell's docs:
	;  0x08-0x0B - "Loop Offset (SH2 Offset, offset 0 means no loop)"
	;  0x0C-0x10 - "Sample Rate (0x0800 = 11025 Hz, 0x1000 = 22050 Hz, etc.)"
	dc.l	$22000000+label, label_End-label, loopoffset, samplerate
    endm

; ---------------------------------------------------------------
; PWM Samples Files
; ---------------------------------------------------------------

	include "Sonic-2-Clone-Driver-v2/Sonic 2 Clone Driver v2 - PWM Samples.asm"
