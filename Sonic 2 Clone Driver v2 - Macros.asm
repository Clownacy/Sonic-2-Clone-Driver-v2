; ---------------------------------------------------------------------------
; Music	macros and constants
; ---------------------------------------------------------------------------
SMPS_MUSIC_METADATA macro address,fasttempo,flags
	dc.l	((fasttempo)<<24)|(((address)|(flags))&$FFFFFF)
	endm

SMPS_MUSIC_METADATA_FORCE_PAL_SPEED = $00000001	; Forces song to play at PAL speeds on PAL consoles for synchronisation (used by drowning theme)

; ---------------------------------------------------------------------------
; SFX macros and constants
; ---------------------------------------------------------------------------
SMPS_SFX_METADATA macro address,priority,flags
	dc.l	((priority)<<24)|((address)&$FFFFFF)
	endm

; ---------------------------------------------------------------------------
; stop the Z80
; ---------------------------------------------------------------------------
SMPS_stopZ80 macro
	move.w	#$100,(SMPS_z80_bus_request).l
	endm

; ---------------------------------------------------------------------------
; wait for Z80 to stop
; ---------------------------------------------------------------------------
SMPS_waitZ80 macro
.wait:	btst	#0,(SMPS_z80_bus_request).l
	bne.s	.wait
	endm

; ---------------------------------------------------------------------------
; reset the Z80
; ---------------------------------------------------------------------------
SMPS_resetZ80 macro
	move.w	#$100,(SMPS_z80_reset).l
	endm

; ---------------------------------------------------------------------------
; start the Z80
; ---------------------------------------------------------------------------
SMPS_startZ80 macro
	move.w	#0,(SMPS_z80_bus_request).l
	endm

; ---------------------------------------------------------------------------
; macros to wait for when the YM2612 isn't busy
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
; pause music
; ---------------------------------------------------------------------------
SMPS_PauseMusic macro
	move.b	#1,(Clone_Driver_RAM+SMPS_RAM.f_stopmusic).w
	endm

; ---------------------------------------------------------------------------
; unpause music
; ---------------------------------------------------------------------------
SMPS_UnpauseMusic macro
	move.b	#$80,(Clone_Driver_RAM+SMPS_RAM.f_stopmusic).w
	endm

; ---------------------------------------------------------------------------
; helper for sound IDs
; ---------------------------------------------------------------------------
SMPS_id function ptr,((ptr-offset)/ptrsize+idstart)
