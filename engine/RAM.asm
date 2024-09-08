; ---------------------------------------------------------------------------
; Global sound driver variables
; ---------------------------------------------------------------------------
SMPS_RAM STRUCT DOTS
	internal:		ds.b	SMPS_RAM_SIZE

	flags:	ds.b 1
SMPS_RAM ENDSTRUCT

SMPS_FLAGS_ALREADY_RUNNING = 0
SMPS_FLAGS_RING_TOGGLE = 1

    if MOMPASS=1
	message "Sonic 2 Clone Driver v2 RAM size is $\{SMPS_RAM.len} bytes!"
    endif
