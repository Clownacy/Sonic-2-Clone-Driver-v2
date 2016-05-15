; ---------------------------------------------------------------------------
; stop the Z80
; ---------------------------------------------------------------------------
SMPS_stopZ80	macro
	move.w	#$100,(z80_bus_request).l
	endm

; ---------------------------------------------------------------------------
; wait for Z80 to stop
; ---------------------------------------------------------------------------
SMPS_waitZ80	macro
.wait:	btst	#0,(z80_bus_request).l
	bne.s	.wait
	endm

; ---------------------------------------------------------------------------
; reset the Z80
; ---------------------------------------------------------------------------
SMPS_resetZ80	macro
	move.w	#$100,(z80_reset).l
	endm

; ---------------------------------------------------------------------------
; start the Z80
; ---------------------------------------------------------------------------
SMPS_startZ80	macro
	move.w	#0,(z80_bus_request).l
	endm

; ---------------------------------------------------------------------------
; Macros to wait for when the YM2612 isn't busy
; ---------------------------------------------------------------------------
SMPS_waitYM macro
	nop		; 4(1/0) ; Gotta give the YM2612 some time to read
	nop		; 4(1/0)
	nop		; 4(1/0)
	; If you're gonna overclock your 68k, you may need to pad this out with more 'nop's to avoid missed writes
.loop:
	tst.b	(a0)	; 8(2/0)
	bmi.s	.loop	; 10(2/0) | 8(1/0)
	endm	; optimial cycle count: 24(5/0)

SMPS_waitYMspec macro target
	nop		; 4(1/0) ; Gotta give the YM2612 some time to read
	nop		; 4(1/0)
	nop		; 4(1/0)
	tst.b	target
	bpl.s	.skip	; 10(2/0) | 8(1/0)
.loop:	tst.b	(a0)	; 8(2/0)
	bmi.s	.loop	; 10(2/0) | 8(1/0)
.skip:
	endm	; optimal cycle count: 18(4/0) + target test cycles

; ---------------------------------------------------------------------------
; Helper for sound IDs
; ---------------------------------------------------------------------------
SMPS_id function ptr,((ptr-offset)/ptrsize+idstart)
