; ---------------------------------------------------------------------------
; Perform sound driver initialisation and load the DAC driver
; ---------------------------------------------------------------------------
; SoundDriverLoad: JmpTo_SoundDriverLoad  SMPS_LoadDACDriver:
SMPS_Setup:
	lea	(Clone_Driver_RAM).w,a5
	binclude "c++/initialise.bin"
	even
; End of function SMPS_LoadDACDriver

    if SMPS_RingSFXBehaviour
SMPS_DoRingFilter:
	cmpi.w	#SndID_Ring,d0
	bne.s	+
	bchg	#SMPS_FLAGS_RING_TOGGLE,(Clone_Driver_RAM+SMPS_RAM.flags).w
	bne.s	+
	move.w	#SndID_RingLeft,d0
+
	rts
    endif

    if SMPS_IdlingSegaSound
SMPS_DoSegaFilter:
	cmpi.w	#SndID_SegaSound,d0
	bne.s	.not_sega
	; Waste cycles until the Sega sound finishes playing
	move.w	#$11,d1
; loc_71FC0:
.busyloop_outer:
	move.w	#-1,d0
; loc_71FC4:
.busyloop:
	nop
	dbf	d0,.busyloop

	dbf	d1,.busyloop_outer
.not_sega:

	rts
    endif

; ---------------------------------------------------------------------------
; Queue sound for play (queue 1)
; ---------------------------------------------------------------------------
; sub_135E: PlayMusic:
SMPS_QueueSound1:
	move.w	d0,-(sp)
	andi.w	#$FF,d0
	bsr.s	SMPS_QueueSound1_Extended
	move.w	(sp)+,d0
	rts

SMPS_QueueSound1_Extended:
    if SMPS_RingSFXBehaviour
	bsr.s	SMPS_DoRingFilter
    endif
	tst.w	(Clone_Driver_RAM+SMPS_QUEUE_OFFSET+0).w
	bne.s	+
	move.w	d0,(Clone_Driver_RAM+SMPS_QUEUE_OFFSET+0).w
    if SMPS_IdlingSegaSound
	bra.s	SMPS_DoSegaFilter
    else
	rts
    endif
+
	move.w	d0,(Clone_Driver_RAM+SMPS_QUEUE_OFFSET+6).w
    if SMPS_IdlingSegaSound
	bra.s	SMPS_DoSegaFilter
    else
	rts
    endif
; End of function SMPS_QueueSound1Word

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
	move.w	d0,-(sp)
	andi.w	#$FF,d0
	bsr.s	SMPS_QueueSound2_Extended
	move.w	(sp)+,d0
	rts

    if SMPS_EnablePlaySoundLocal
SMPS_QueueSound2Local_Extended:
	tst.b	render_flags(a0)
	bpl.s	+	; rts
    endif
SMPS_QueueSound2_Extended:
    if SMPS_RingSFXBehaviour
	bsr.s	SMPS_DoRingFilter
    endif
	move.w	d0,(Clone_Driver_RAM+SMPS_QUEUE_OFFSET+2).w
    if SMPS_IdlingSegaSound
	bra.s	SMPS_DoSegaFilter
    endif
+	rts
; End of function SMPS_QueueSound2Word

; ---------------------------------------------------------------------------
; Queue sound for play (queue 3)
; ---------------------------------------------------------------------------
; sub_1376: PlaySoundStereo:
SMPS_QueueSound3:
	move.w	d0,-(sp)
	andi.w	#$FF,d0
	bsr.s	SMPS_QueueSound3_Extended
	move.w	(sp)+,d0
	rts

SMPS_QueueSound3_Extended:
    if SMPS_RingSFXBehaviour
	bsr.s	SMPS_DoRingFilter
    endif
	move.w	d0,(Clone_Driver_RAM+SMPS_QUEUE_OFFSET+4).w
    if SMPS_IdlingSegaSound
	bra.s	SMPS_DoSegaFilter
    else
	rts
    endif
; End of function SMPS_QueueSound3Word

; ---------------------------------------------------------------------------
; Play a DAC sample
;
; Actual DAC samples start at $81.
; Using $80 will stop the currently-playing sample.
;
; d0 = Sample ID
; ---------------------------------------------------------------------------
SMPS_PlayDACSample:
	movem.w	d0/d1,-(sp)
	; Convert the 'legacy' ID to a 'modern' ID.
	clr.w	d1
	move.b	d0,d1
	move.w	#MusID_StopDACSFX,d0
	cmpi.w	#$80,d1
	bne.s	+
	move.w	d1,d0
	addi.w	#DACID__First-$81,d0
+
	; Send it.
	bsr.s	SMPS_QueueSound1_Extended
	movem.w	(sp)+,d0/d1
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
