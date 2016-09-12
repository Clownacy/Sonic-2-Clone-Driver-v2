; ---------------------------------------------------------------------------
; Load DAC driver (Mega PCM)
; ---------------------------------------------------------------------------
; SoundDriverLoad: JmpTo_SoundDriverLoad 
SMPS_LoadDACDriver:
	SMPS_stopZ80
	SMPS_resetZ80

	; load Mega PCM (Kosinski-compressed)
	lea	(MegaPCM).l,a0	; source
	lea	(SMPS_z80_ram).l,a1	; destination
	bsr.w	KosDec

	moveq	#0,d1
	move.w	d1,(SMPS_z80_reset).l
	nop
	nop
	nop
	nop
	SMPS_resetZ80
	move.w	d1,(SMPS_z80_bus_request).l	; start the Z80
	rts
; End of function SMPS_LoadDACDriver

; ---------------------------------------------------------------------------
; Queue sound for play (queue 1)
; ---------------------------------------------------------------------------
; sub_135E: PlayMusic:
SMPS_QueueSound1:
	tst.b	(Clone_Driver_RAM+SMPS_RAM.variables.v_playsnd1).w
	bne.s	+
	move.b	d0,(Clone_Driver_RAM+SMPS_RAM.variables.v_playsnd1).w
	rts
+
	move.b	d0,(Clone_Driver_RAM+SMPS_RAM.variables.v_playsnd4).w
	rts
; End of function SMPS_QueueSound1

; ---------------------------------------------------------------------------
; Queue sound for play (queue 2)
; and optionally only do so if object is on-screen (Sonic engine feature)
; ---------------------------------------------------------------------------
; sub_137C: PlaySoundLocal:
    if SMPS_EnablePlaySoundLocal
SMPS_QueueSound2Local:
	tst.b	render_flags(a0)
	bpl.s	+	; rts
    endif
; sub_1370: PlaySound:
SMPS_QueueSound2:
	move.b	d0,(Clone_Driver_RAM+SMPS_RAM.variables.v_playsnd2).w
+	rts
; End of function SMPS_QueueSound2

; ---------------------------------------------------------------------------
; Queue sound for play (queue 3)
; ---------------------------------------------------------------------------
; sub_1376: PlaySoundStereo:
SMPS_QueueSound3:
	move.b	d0,(Clone_Driver_RAM+SMPS_RAM.variables.v_playsnd3).w
	rts
; End of function SMPS_QueueSound3

; ---------------------------------------------------------------------------
; Play a DAC sample
;
; d0 = Sample ID
; ---------------------------------------------------------------------------
SMPS_PlayDACSample:
	SMPS_stopZ80_safe
	st.b	(SMPS_z80_ram+MegaPCM_DAC_Type).l	; This is a DAC SFX; ignore music DAC volume
	move.b  d0,(SMPS_z80_ram+MegaPCM_DAC_Number).l
	SMPS_startZ80_safe
	rts
; End of function SMPS_PlayDACSample

; ---------------------------------------------------------------------------
; Play a PWM sample
;
; d0 = Sample ID
; d1 = Sample volume/panning
; d2 = PWM channel*2 (0 = channel 1, 2 = channel 2, etc.)
; ---------------------------------------------------------------------------
    if SMPS_EnablePWM
SMPS_PlayPWMSample:
	; Merge ID with volume/pan to get PWM command
	lsl.w	#8,d1
	move.b	d0,d1
	; Save a0
	move.l	a0,d0
	; Send PWM command
	lea	($A15128).l,a0
	move.w	d1,(a0,d2.w)
	; Restore a0
	movea.l	d0,a0
	rts
; End of function SMPS_PlayPWMSample
    endif
