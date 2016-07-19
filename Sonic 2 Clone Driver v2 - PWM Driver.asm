; ---------------------------------------------------------------
; Driver's code
; ---------------------------------------------------------------

PWM_Driver:
	; According to ValleyBell's docs, the driver Chaotix uses
	; is straight from the 32X SDK.
	binclude	"sound/Chaotix_PWMDrv (first half).bin"
	dc.l	$22000000|SH2_PWMTable
	binclude	"sound/Chaotix_PWMDrv (second half).bin"

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

	include "sound/Sonic 2 Clone Driver v2 - PWM Samples.asm"
