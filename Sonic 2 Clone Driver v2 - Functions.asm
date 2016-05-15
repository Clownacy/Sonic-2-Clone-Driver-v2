; ---------------------------------------------------------------------------
; Load DAC driver (Mega PCM)
; ---------------------------------------------------------------------------
JmpTo_SoundDriverLoad 	; Misnomer
; SoundDriverLoad:
SMPS_LoadDACDriver:
	SMPS_stopZ80
	SMPS_resetZ80

	; load Mega PCM (Kosinski-compressed)
	lea	(MegaPCM).l,a0	; source
	lea	(Z80_RAM).l,a1	; destination
	bsr.w	KosDec

	moveq	#0,d1
	move.w	d1,(Z80_Reset).l
	nop
	nop
	nop
	nop
	SMPS_resetZ80
	move.w	d1,(Z80_Bus_Request).l	; start the Z80
	rts
; End of function SMPS_LoadDACDriver

; ---------------------------------------------------------------------------
; Queue sound for play (queue 1)
; ---------------------------------------------------------------------------
; sub_135E: PlayMusic:
SMPS_PlayMusic:
	tst.b	(Clone_Driver_RAM+v_playsnd1).w
	bne.s	+
	move.b	d0,(Clone_Driver_RAM+v_playsnd1).w
	rts
+
	move.b	d0,(Clone_Driver_RAM+v_playsnd4).w
	rts
; End of function SMPS_PlayMusic

; ---------------------------------------------------------------------------
; Queue sound for play (queue 2)
; and optionally only do so if object is on-screen (Sonic engine feature)
; ---------------------------------------------------------------------------
; sub_137C: PlaySoundLocal:
SMPS_PlaySoundLocal:
	tst.b	render_flags(a0)
	bpl.s	+	; rts
; sub_1370: PlaySound:
SMPS_PlaySound:
	move.b	d0,(Clone_Driver_RAM+v_playsnd2).w
+	rts
; End of function SMPS_PlaySoundLocal

; ---------------------------------------------------------------------------
; Queue sound for play (queue 3)
; ---------------------------------------------------------------------------
; sub_1376: PlaySoundStereo:
SMPS_PlaySound2:
	move.b	d0,(Clone_Driver_RAM+v_playsnd3).w
	rts
; End of function SMPS_PlaySound2

; ---------------------------------------------------------------------------
; Play a DAC sample
; ---------------------------------------------------------------------------
SMPS_PlaySample:
	SMPS_stopZ80
	st.b	(z80_dac_type).l	; This is a DAC SFX; ignore music DAC volume
	move.b  d0,(z80_dac_sample).l
	SMPS_startZ80
	rts
; End of function SMPS_PlaySample

; ---------------------------------------------------------------------------
; Pause music
; ---------------------------------------------------------------------------
SMPS_PauseMusic:
	move.b	#1,(Clone_Driver_RAM+f_stopmusic).w
	rts
; End of function SMPS_PauseMusic

; ---------------------------------------------------------------------------
; Unpause music
; ---------------------------------------------------------------------------
SMPS_UnpauseMusic:
	move.b	#$80,(Clone_Driver_RAM+f_stopmusic).w
	rts
; End of function SMPS_UnpauseMusic

; ---------------------------------------------------------------------------
; Update sound driver
; ---------------------------------------------------------------------------
SMPS_UpdateSoundDriver:
	move	#$2300,sr				; enable interrupts (we can accept horizontal interrupts from now on)
	bset	#0,(Clone_Driver_RAM+SMPS_running_flag).w	; set "SMPS running flag"
	bne.s	+					; if it was set already, don't call another instance of SMPS
	jsr	(UpdateMusic).l 			; update Sonic 2 Clone Driver v2
	clr.b	(Clone_Driver_RAM+SMPS_running_flag).w	; reset "SMPS running flag"
+
	rts
; End of function SMPS_UpdateSoundDriver
