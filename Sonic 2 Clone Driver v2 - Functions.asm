; ---------------------------------------------------------------------------
; Load DAC driver (Mega PCM)
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

JmpTo_SoundDriverLoad 	; Misnomer
SoundDriverLoad:
	move.w	#$100,(Z80_Bus_Request).l	; stop the Z80
	move.w	#$100,(Z80_Reset).l	; reset the Z80

	; load Mega PCM (kosinski-compressed)
	lea	(MegaPCM).l,a0	; source
	lea	(Z80_RAM).l,a1	; destination
	bsr.w	KosDec

	moveq	#0,d1
	move.w	d1,(Z80_Reset).l
	nop
	nop
	nop
	nop
	move.w	#$100,(Z80_Reset).l	; reset the Z80
	move.w	d1,(Z80_Bus_Request).l	; start the Z80
	rts
; End of function SoundDriverLoad

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||
; If Music_to_play is clear, move d0 into Music_to_play,
; else move d0 into Music_to_play_2.
; sub_135E:
SMPS_PlayMusic:
	tst.b	(Clone_Driver_RAM+v_playsnd1).w
	bne.s	+
	move.b	d0,(Clone_Driver_RAM+v_playsnd1).w
	rts
+
	move.b	d0,(Clone_Driver_RAM+v_playsnd4).w
	rts
; End of function PlayMusic


; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; sub_137C:
PlaySoundLocal:
	tst.b	render_flags(a0)
	bpl.s	+	; rts
; sub_1370:
SMPS_PlaySound:
	move.b	d0,(Clone_Driver_RAM+v_playsnd2).w
+	rts
; End of function PlaySoundLocal


; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||
; play a sound in alternating speakers (as in the ring collection sound)
; sub_1376:
PlaySoundStereo:
	move.b	d0,(Clone_Driver_RAM+v_playsnd3).w
	rts
; End of function PlaySoundStereo

; ---------------------------------------------------------------------------
; Subroutine to play a DAC sample
; ---------------------------------------------------------------------------
PlaySample:
	stopZ80
	st.b	(z80_dac_type).l	; This is a DAC SFX; ignore music DAC volume
	move.b  d0,(z80_dac_sample).l
	startZ80
	rts
; End of function PlaySample

; ---------------------------------------------------------------------------
; Subroutine to pause music
; ---------------------------------------------------------------------------
PauseMusic:
	move.b	#1,(Clone_Driver_RAM+f_stopmusic).w
	rts
; End of function PauseMusic

; ---------------------------------------------------------------------------
; Subroutine to unpause music
; ---------------------------------------------------------------------------
UnpauseMusic:
	move.b	#$80,(Clone_Driver_RAM+f_stopmusic).w
	rts
; End of function UnpauseMusic

; ---------------------------------------------------------------------------
; Subroutine to update sound driver
; ---------------------------------------------------------------------------
UpdateSoundDriver:
	move	#$2300,sr				; enable interrupts (we can accept horizontal interrupts from now on)
	bset	#0,(Clone_Driver_RAM+SMPS_running_flag).w	; set "SMPS running flag"
	bne.s	+					; if it was set already, don't call another instance of SMPS
	jsr	(UpdateMusic).l 			; update Sonic 2 Clone Driver v2
	clr.b	(Clone_Driver_RAM+SMPS_running_flag).w	; reset "SMPS running flag"
+
	rts
; End of function UpdateSoundDriver
