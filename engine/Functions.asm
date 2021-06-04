; ---------------------------------------------------------------------------
; Perform sound driver initialisation and load the DAC driver
; ---------------------------------------------------------------------------
; SoundDriverLoad: JmpTo_SoundDriverLoad  SMPS_LoadDACDriver:
SMPS_Setup:
	SMPS_stopZ80
	SMPS_resetZ80

	; detect PAL consoles and set the PAL flag if needed
	btst	#6,(SMPS_version_number).l
	beq.s	.not_pal
	bset	#f_pal,(Clone_Driver_RAM+SMPS_RAM.bitfield1).l
.not_pal:

	; load DAC driver (Kosinski-compressed)
	lea	(DACDriver).l,a0	; source
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
	tst.b	(Clone_Driver_RAM+SMPS_RAM.variables.queue.v_playsnd1).w
	bne.s	+
	move.b	d0,(Clone_Driver_RAM+SMPS_RAM.variables.queue.v_playsnd1).w
	rts
+
	move.b	d0,(Clone_Driver_RAM+SMPS_RAM.variables.queue.v_playsnd4).w
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
	move.b	d0,(Clone_Driver_RAM+SMPS_RAM.variables.queue.v_playsnd2).w
+	rts
; End of function SMPS_QueueSound2

; ---------------------------------------------------------------------------
; Queue sound for play (queue 3)
; ---------------------------------------------------------------------------
; sub_1376: PlaySoundStereo:
SMPS_QueueSound3:
	move.b	d0,(Clone_Driver_RAM+SMPS_RAM.variables.queue.v_playsnd3).w
	rts
; End of function SMPS_QueueSound3

; ---------------------------------------------------------------------------
; Play a DAC sample
;
; Actual DAC samples start at $81.
; Using $80 will stop the currently-playing sample.
;
; d0 = Sample ID
; ---------------------------------------------------------------------------
SMPS_PlayDACSample:
	cmpi.b	#$80,d0
	bne.s	.play_sample

	SMPS_stopZ80_safe
	move.b	#$37,(SMPS_z80_ram+zRequestFlag).l	; 'scf' instruction
	move.b	#$02,(SMPS_z80_ram+zRequestChannel2).l	; $02 is the 'stop sample' command
	SMPS_startZ80_safe
	
	rts

.play_sample:
	movem.l	a0/a1,-(sp)

	; Prepare to send DAC request
	jsr	(GetDACSampleMetadata).l
	lea	(SMPS_z80_ram+zRequestChannel2).l,a1

	SMPS_stopZ80_safe
	jsr	(SendDACSampleRequest).l
	; This is a DAC SFX: set to full volume
	move.b	#zSampleLookup>>8,(SMPS_z80_ram+zSample2Volume).l
	SMPS_startZ80_safe

	movem.l	(sp)+,a0/a1
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
	lea	(SMPS_pwm_comm).l,a0
	move.w	d1,(a0,d2.w)
	; Restore a0
	movea.l	d0,a0
	rts
; End of function SMPS_PlayPWMSample
    endif
