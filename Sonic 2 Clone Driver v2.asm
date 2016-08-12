; ===========================================================================
; Sonic 2 Clone Driver v2
; ===========================================================================

	dc.b	"Clownacy's Sonic 2 Clone Driver v2 (v2.7)"
	even

SMPS_FixBugs	= 1
;	| Fix bugs, what else?
;
; ---------------------------------------------------------------------------
; Subroutine to update music more than once per frame
; (Called by horizontal & vert. interrupts)
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_71B4C:
UpdateMusic:
	; From Vladikcomper:
	; "This is the code to stop Z80.
	; Thus, SMPS stops it at the beginning of its main routine execution and starts it at the end.
	; You won't need this code anymore."
;	SMPS_stopZ80
;	SMPS_waitZ80
;	nop
;	nop
;	nop
; loc_71B5A:
;.updateloop:	; Clownacy | Vlad's guide missed this
;	btst	#0,(z80_bus_request).l		; Is the z80 busy?	; Clownacy | And this
;	bne.s	.updateloop:			; If so, wait		; Clownacy | And this

	; From Vladikcomper:
	; "This code checked driver's status and didn't run SMPS engine until driver tells SMPS can interrupt him.
	; "Mega PCM" doesn't need this trick anymore."

;	tst.b	(z80_dac_status).l		; Is DAC accepting new samples?
;	bpl.s	.driverinput			; Branch if yes
;	SMPS_startZ80
;	nop
;	nop
;	nop
;	nop
;	nop
;	bra.s	UpdateMusic
; ===========================================================================
; loc_71B82:
;.driverinput:
    if ((Clone_Driver_RAM)&$8000)==0
	lea	(Clone_Driver_RAM).l,a6
    else
	lea	(Clone_Driver_RAM).w,a6
    endif
	clr.b	SMPS_RAM.f_voice_selector(a6)
	tst.b	SMPS_RAM.f_stopmusic(a6)			; Is music paused?
	bne.w	DoPauseMusic			; If yes, branch
	move.b	SMPS_RAM.variables.v_fadeout_counter(a6),d0
	beq.s	.skipfadeout
	bsr.w	DoFadeOut
; loc_71BA8:
.skipfadeout:
	btst	#f_fadein_flag,SMPS_RAM.variables.bitfield2(a6)
	beq.s	.skipfadein
	bsr.w	DoFadeIn
; loc_71BB2:
.skipfadein:
	tst.l	SMPS_RAM.variables.v_playsnd1(a6)			; Is a music or sound queued for played?
	beq.s	.nosndinput			; If not, branch
	bsr.w	Sound_Play
; loc_71BBC:
.nosndinput:
	tst.b	SMPS_RAM.variables.v_playsnd0(a6)			; Is song queue set for silence?
	beq.s	.nonewsound			; If yes, branch
	bsr.w	Sound_ChkValue
; loc_71BC8:
.nonewsound:
    if SMPS_EnableSpinDashSFX
	tst.b   SMPS_RAM.v_spindash_timer(a6)
	beq.s	.notimer
	subq.b	#1,SMPS_RAM.v_spindash_timer(a6)
.notimer:
    endif
	; Clownacy | Pretty large rearrangements have been made here for the
	; Sonic 2-style selective PAL mode. With S2's driver, if the drowning music played on a PAL
	; system, the drowning theme would play at 50fps speed, or 'PAL speed'
	; this code is part of that feature's replication
	btst	#6,(Graphics_Flags).w			; is this a PAL console?
	beq.s	.updatemusictracks			; if not, branch
	btst	#f_force_pal_tempo,SMPS_RAM.variables.bitfield2(a6)	; is this song forced to play slow on PAL consoles?
	bne.s	.updatemusictracks			; if so, skip the double-update
	subq.b	#1,SMPS_RAM.variables.v_pal_audio_countdown(a6)		; subtract 1 from the PAL countdown
	bne.s	.updatemusictracks			; if the PAL countdown is not 0, we are not ready to double-update, branch
	move.b	#5,SMPS_RAM.variables.v_pal_audio_countdown(a6)		; if the countdown is now at 0, reset the counter...
	bset	#f_doubleupdate,SMPS_RAM.variables.bitfield2(a6)		; ...and then set the double-update flag

.updatemusictracks:
	bsr.w	TempoWait

	lea	SMPS_RAM.v_music_dac_track(a6),a5
	tst.b	SMPS_Track.PlaybackControl(a5)		; Is DAC track playing?
	bpl.s	.dacdone				; Branch if not
	bsr.w	UpdateDAC
; loc_71BD4:
.dacdone:
	moveq	#SMPS_MUSIC_FM_TRACK_COUNT-1,d7	; 6 FM tracks
; loc_71BDA:
.bgmfmloop:
	lea	SMPS_Track.len(a5),a5
	tst.b	SMPS_Track.PlaybackControl(a5)		; Is track playing?
	bpl.s	.bgmfmnext				; Branch if not
	bsr.w	FMUpdateTrack
; loc_71BE6:
.bgmfmnext:
	dbf	d7,.bgmfmloop

	moveq	#SMPS_MUSIC_PSG_TRACK_COUNT-1,d7	; 3 PSG tracks
; loc_71BEC:
.bgmpsgloop:
	lea	SMPS_Track.len(a5),a5
	tst.b	SMPS_Track.PlaybackControl(a5)	; Is track playing?
	bpl.s	.bgmpsgnext			; Branch if not
	bsr.w	PSGUpdateTrack
; loc_71BF8:
.bgmpsgnext:
	dbf	d7,.bgmpsgloop

    if SMPS_EnablePWM
	moveq	#SMPS_MUSIC_PWM_TRACK_COUNT-1,d7	; 4 PWM tracks

.bgmpwmloop:
	lea	SMPS_Track.len(a5),a5
	tst.b	SMPS_Track.PlaybackControl(a5)	; Is track playing?
	bpl.s	.bgmpwmnext			; Branch if not
	bsr.w	PWMUpdateTrack

.bgmpwmnext:
	dbf	d7,.bgmpwmloop
    endif

	bclr	#f_doubleupdate,SMPS_RAM.variables.bitfield2(a6)	; Clear double-update flag
	bne.s	.updatemusictracks		; Was the flag set? If so, double-update

;.updatesfxtracks:
	move.b	#$80,SMPS_RAM.f_voice_selector(a6)					; Now at SFX tracks
	moveq	#SMPS_SFX_FM_TRACK_COUNT-1,d7	; SFX only has access to 3 FM tracks
; loc_71C04:
.sfxfmloop:
	lea	SMPS_Track.len(a5),a5
	tst.b	SMPS_Track.PlaybackControl(a5)	; Is track playing?
	bpl.s	.sfxfmnext			; Branch if not
	bsr.w	FMUpdateTrack
; loc_71C10:
.sfxfmnext:
	dbf	d7,.sfxfmloop

	moveq	#SMPS_SFX_PSG_TRACK_COUNT-1,d7	; SFX only has access to 3 PSG tracks
; loc_71C16:
.sfxpsgloop:
	lea	SMPS_Track.len(a5),a5
	tst.b	SMPS_Track.PlaybackControl(a5)	; Is track playing?
	bpl.s	.sfxpsgnext			; Branch of not
	bsr.w	PSGUpdateTrack
; loc_71C22:
.sfxpsgnext:
	dbf	d7,.sfxpsgloop

    if SMPS_EnableSpecSFX
	move.b	#$40,SMPS_RAM.f_voice_selector(a6)	; Now at special SFX tracks
	lea	SMPS_Track.len(a5),a5
	tst.b	SMPS_Track.PlaybackControl(a5)	; Is track playing?
	bpl.s	.specfmdone			; Branch if not
	bsr.w	FMUpdateTrack
; loc_71C38:
.specfmdone:
	lea	SMPS_Track.len(a5),a5
	tst.b	SMPS_Track.PlaybackControl(a5)	; Is track playing
	bpl.s	.locret				; Branch if not
	bra.w	PSGUpdateTrack
.locret:
    endif
	rts
; End of function UpdateMusic


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_71C4E:
UpdateDAC:
	subq.b	#1,SMPS_Track.DurationTimeout(a5)	; Has DAC sample timeout expired?
	bne.s	.locret					; Return if not
	bsr.s	DACDoNext
	bra.s	DACUpdateSample
.locret:
	rts
; End of function UpdateDAC


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

DACDoNext:
	movea.l	SMPS_Track.DataPointer(a5),a4	; DAC track data pointer
; loc_71C5E:
.sampleloop:
	moveq	#0,d5
	move.b	(a4)+,d5		; Get next SMPS unit
	cmpi.b	#$FE,d5			; Is it a coord. flag?
	blo.s	.notcoord		; Branch if not
	bsr.w	CoordFlag
	bra.s	.sampleloop
; ===========================================================================
; loc_71C6E:
.notcoord:
	tst.b	d5			; Is it a sample?
	bpl.s	.gotduration		; Branch if not (duration)
	move.b	d5,SMPS_Track.SavedDAC(a5)	; Store new sample
	move.b	(a4)+,d5		; Get another byte
	bpl.s	.gotduration		; Branch if it is a duration
	subq.w	#1,a4			; Put byte back
	move.b	SMPS_Track.SavedDuration(a5),SMPS_Track.DurationTimeout(a5) ; Use last duration
	bra.s	.gotsampleduration
; ===========================================================================
; loc_71C84:
.gotduration:
	bsr.w	SetDuration
; loc_71C88:
.gotsampleduration:
	move.w	a4,SMPS_Track.DataPointer+2(a5)	; Save pointer
	move.l	a4,d0
	swap	d0
	move.b	d0,SMPS_Track.DataPointer+1(a5)	; Save pointer
	rts
; End of function DACDoNext


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

DACUpdateSample:
	btst	#2,SMPS_Track.PlaybackControl(a5)	; Is track being overridden?
	bne.s	locret_71CAA				; Return if yes
	moveq	#0,d0
	move.b	SMPS_Track.SavedDAC(a5),d0	; Get sample
	cmpi.b	#$80,d0				; Is it a rest?
	beq.s	locret_71CAA			; Return if yes

	; From Vladikcomper:
	; "We need the Z80 to be stopped before this command executes and to be started directly afterwards."
	SMPS_stopZ80
	SMPS_waitZ80
	sf.b	(SMPS_z80_ram+MegaPCM_DAC_Type).l	; This is music DAC; change according to volume
	move.b	d0,(SMPS_z80_ram+MegaPCM_DAC_Number).l
	SMPS_startZ80

locret_71CAA:
	rts
; End of function DACUpdateSample

; ===========================================================================
; Note: this only defines rates for samples $88-$8D, meaning $8E-$8F are invalid.
; Also, $8C-$8D are so slow you may want to skip them.
; byte_71CC4:
;DAC_sample_rate: dc.b $12, $15, $1C, $1D, $FF, $FF


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

    if SMPS_EnablePWM
PWMUpdateTrack:
	subq.b	#1,SMPS_Track.DurationTimeout(a5)	; Has PWM sample timeout expired?
	bne.s	locret_71CAA				; Return if not
	bclr	#4,SMPS_Track.PlaybackControl(a5)	; Clear 'do not attack next note' bit
	bsr.s	PWMDoNext
	bra.s	PWMUpdateSample
; End of function PWMUpdateTrack


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

PWMDoNext:
	movea.l	SMPS_Track.DataPointer(a5),a4		; PWM track data pointer

.sampleloop:
	moveq	#0,d5
	move.b	(a4)+,d5		; Get next SMPS unit
	cmpi.b	#$FE,d5			; Is it a coord. flag?
	blo.s	.notcoord		; Branch if not
	bsr.w	CoordFlag
	bra.s	.sampleloop
; ===========================================================================

.notcoord:
	tst.b	d5			; Is it a sample?
	bpl.s	.gotduration		; Branch if not (duration)
	move.b	d5,SMPS_Track.SavedPWM(a5)	; Store new sample
	move.b	(a4)+,d5		; Get another byte
	bpl.s	.gotduration		; Branch if it is a duration
	subq.w	#1,a4			; Put byte back
	move.b	SMPS_Track.SavedDuration(a5),SMPS_Track.DurationTimeout(a5) ; Use last duration
	bra.s	.gotsampleduration
; ===========================================================================

.gotduration:
	bsr.w	SetDuration

.gotsampleduration:
	move.w	a4,SMPS_Track.DataPointer+2(a5)	; Save pointer
	move.l	a4,d0
	swap	d0
	move.b	d0,SMPS_Track.DataPointer+1(a5)	; Save pointer
	rts
; End of function PWMDoNext


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

PWMUpdateSample:
	move.b	SMPS_Track.SavedPWM(a5),d0
	cmpi.b	#$80,d0				; Is this a rest?
	beq.s	.skipVolumeUpdate		; If so, skip obtaining volume
	move.b	SMPS_Track.Volume(a5),d1
	lsl.w	#8,d1

.skipVolumeUpdate:
	btst	#4,SMPS_Track.PlaybackControl(a5)	; Is 'do not attack' enabled?
	bne.s	.skipSampleUpdate			; If so, skip obtaining sample ID
	subi.b	#$81,d0
	bmi.s	.skipSampleUpdate			; If invalid sample ($80-$FF), skip obtaining sample ID
	move.b	d0,d1

	; Send command
	moveq	#0,d2
	move.b	SMPS_Track.VoiceControl(a5),d2
	lea	($A15128).l,a0
	move.w	d1,-8(a0,d2.w)

.skipSampleUpdate:
	rts
   endif

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_71CCA:
FMUpdateTrack:
	subq.b	#1,SMPS_Track.DurationTimeout(a5)	; Update duration timeout
	bne.s	.notegoing			; Branch if it hasn't expired
	bclr	#4,SMPS_Track.PlaybackControl(a5)	; Clear 'do not attack next note' bit
	bsr.s	FMDoNext
	bsr.w	FMPrepareNote
	bsr.w	FMNoteOn
	; Clownacy | Sonic 2 adds these two branches
	bsr.w	DoModulation
	bra.w	FMUpdateFreq
; ===========================================================================
; loc_71CE0:
.notegoing:
	bsr.w	NoteFillUpdate
	bsr.w	DoModulation
	bra.w	FMUpdateFreq
; End of function FMUpdateTrack


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_71CEC:
FMDoNext:
	movea.l	SMPS_Track.DataPointer(a5),a4	; Track data pointer
	bclr	#1,SMPS_Track.PlaybackControl(a5)	; Clear 'track at rest' bit
; loc_71CF4:
.noteloop:
	moveq	#0,d5
	move.b	(a4)+,d5		; Get byte from track
	cmpi.b	#$FE,d5			; Is this a coord. flag?
	blo.s	.gotnote		; Branch if not
	bsr.w	CoordFlag
	bra.s	.noteloop
; ===========================================================================
; loc_71D04:
.gotnote:
	bsr.w	FMNoteOff
	tst.b	d5			; Is this a note?
	bpl.w	.gotduration		; Branch if not
	bsr.s	FMSetFreq
	move.b	(a4)+,d5		; Get another byte
	bpl.w	.gotduration		; Branch if it is a duration
	subq.w	#1,a4			; Otherwise, put it back
	bra.w	FinishTrackUpdate
; ===========================================================================
; loc_71D1A:
.gotduration:
	bsr.w	SetDuration
	bra.w	FinishTrackUpdate
; End of function FMDoNext


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_71D22:
FMSetFreq:
	subi.b	#$80,d5				; Make it a zero-based index
	beq.w	TrackSetRest
	add.b	SMPS_Track.Transpose(a5),d5		; Add track transposition
	divu.w	#$C,d5
	swap	d5
	add.w	d5,d5
	move.w	FM_Notes(pc,d5.w),d6
	swap	d5
	andi.w	#7,d5
	moveq	#$B,d0
	lsl.w	d0,d5
	or.w	d5,d6
	move.w	d6,SMPS_Track.Freq(a5) ; Store new frequency
	rts
; End of function FMSetFreq

; ===========================================================================
; ---------------------------------------------------------------------------
; FM Note Values: b-0 to a#8
; ---------------------------------------------------------------------------
; word_72790:
FM_Notes:
	dc.w $025E,$0284,$02AB,$02D3,$02FE,$032D,$035C,$038F,$03C5,$03FF,$043C,$047C

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_71D40:
SetDuration:
	move.w	d5,d0
	moveq	#0,d1
	move.b	SMPS_Track.TempoDivider(a5),d1
	mulu.w	d1,d0
	move.b	d0,SMPS_Track.SavedDuration(a5)	; Save duration
	move.b	d0,SMPS_Track.DurationTimeout(a5)	; Save duration timeout
	rts
; End of function SetDuration

; ===========================================================================
; loc_71D58:
TrackSetRest:
	bset	#1,SMPS_Track.PlaybackControl(a5)	; Set 'track at rest' bit
	clr.w	SMPS_Track.Freq(a5)			; Clear frequency
	; Clownacy | Sonic 2's driver doesn't continue to FinishTrackUpdate
	rts

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_71D60:
FinishTrackUpdate:
	move.w	a4,SMPS_Track.DataPointer+2(a5)		; Store new track position
	move.l	a4,d0
	swap	d0
	move.b	d0,SMPS_Track.DataPointer+1(a5)		; Store new track position
	move.b	SMPS_Track.SavedDuration(a5),SMPS_Track.DurationTimeout(a5) ; Reset note timeout
	btst	#4,SMPS_Track.PlaybackControl(a5)		; Is track set to not attack note?
	bne.s	locret_71D9C				; If so, branch
	move.b	SMPS_Track.NoteFillMaster(a5),SMPS_Track.NoteFillTimeout(a5) ; Reset note fill timeout
	; Clownacy | We only want VolFlutter clearing on PSG tracks, now.
	; Non-PSG tracks use the RAM for something else.
	tst.b	SMPS_Track.VoiceControl(a5)			; Is this a psg track?
	bpl.s	.notpsg					; If not, branch
	clr.b	SMPS_Track.VolFlutter(a5)			; Reset PSG flutter index
.notpsg:
	btst	#3,SMPS_Track.PlaybackControl(a5)		; Is modulation on?
	beq.s	locret_71D9C				; If not, return
	movea.l	SMPS_Track.ModulationPtr(a5),a0		; Modulation data pointer
	move.b	(a0)+,SMPS_Track.ModulationWait(a5)		; Reset wait
	move.b	(a0)+,SMPS_Track.ModulationSpeed(a5)	; Reset speed
	move.b	(a0)+,SMPS_Track.ModulationDelta(a5)	; Reset delta
	move.b	(a0)+,d0				; Get steps
	lsr.b	#1,d0					; Halve them
	move.b	d0,SMPS_Track.ModulationSteps(a5)		; Then store
	clr.w	SMPS_Track.ModulationVal(a5)		; Reset frequency change
locret_71D9C:
	rts
; End of function FinishTrackUpdate


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; Clownacy | Nicely optimised
; sub_71D9E:
NoteFillUpdate:
	tst.b	SMPS_Track.NoteFillTimeout(a5)	; Is note fill on?
	beq.s	locret_71D9C			; If not, return
	subq.b	#1,SMPS_Track.NoteFillTimeout(a5)	; Update note fill timeout
	bne.s	locret_71D9C			; Return if it hasn't expired
	bset	#1,SMPS_Track.PlaybackControl(a5)	; Put track at rest
	addq.w	#4,sp				; Do not return to caller
	tst.b	SMPS_Track.VoiceControl(a5)		; Is this a psg track?
	bmi.w	PSGNoteOff			; If yes, branch
	bra.w	FMNoteOff
; End of function NoteFillUpdate


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_71DC6:
DoModulation:
    if SMPS_FixBugs
	; Clownacy | (From S2) Corrects modulation during rests (can be heard in ARZ's theme, as beeping right after the song loops)
	btst	#1,SMPS_Track.PlaybackControl(a5)	; Is track at rest?
	bne.s	.locret				; Return if so
    endif
	btst	#3,SMPS_Track.PlaybackControl(a5)	; Is modulation active?
	beq.s	.locret				; Return if not
	tst.b	SMPS_Track.ModulationWait(a5)	; Has modulation wait expired?
	beq.s	.waitdone			; If yes, branch
	subq.b	#1,SMPS_Track.ModulationWait(a5)	; Update wait timeout
; locret_71E16:
.locret:
	addq.w	#4,sp				; Do not return to caller (but see below)
	rts
; ===========================================================================
; loc_71DDA:
.waitdone:
	subq.b	#1,SMPS_Track.ModulationSpeed(a5)	; Update speed
	beq.s	.updatemodulation		; If it expired, want to update modulation
	addq.w	#4,sp				; Do not return to caller (but see below)
	rts
; ===========================================================================
; loc_71DE2:
.updatemodulation:
	movea.l	SMPS_Track.ModulationPtr(a5),a0		; Get modulation data
	move.b	1(a0),SMPS_Track.ModulationSpeed(a5)	; Restore modulation speed
	tst.b	SMPS_Track.ModulationSteps(a5)		; Check number of steps
	bne.s	.calcfreq				; If nonzero, branch
	move.b	3(a0),SMPS_Track.ModulationSteps(a5)	; Restore from modulation data
	neg.b	SMPS_Track.ModulationDelta(a5)		; Negate modulation delta
	addq.w	#4,sp				; Do not return to caller (but see below)
	rts
; ===========================================================================
; loc_71DFE:
.calcfreq:
	subq.b	#1,SMPS_Track.ModulationSteps(a5)	; Update modulation steps
	move.b	SMPS_Track.ModulationDelta(a5),d6	; Get modulation delta
	ext.w	d6
	add.w	SMPS_Track.ModulationVal(a5),d6	; Add cumulative modulation change
	move.w	d6,SMPS_Track.ModulationVal(a5)	; Store it
	add.w	SMPS_Track.Freq(a5),d6		; Add note frequency to it
	rts
; End of function DoModulation


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_71E18:
FMPrepareNote:
	btst	#1,SMPS_Track.PlaybackControl(a5)	; Is track resting?
	bne.s	locret_71E48			; Return if so
	move.w	SMPS_Track.Freq(a5),d6		; Get current note frequency
	beq.s	FMSetRest			; Branch if zero
; loc_71E24:
FMUpdateFreq:
	btst	#2,SMPS_Track.PlaybackControl(a5)	; Is track being overridden?
	bne.s	locret_71E48			; Return if so
	move.b	SMPS_Track.Detune(a5),d0		; Get detune value
	ext.w	d0
	add.w	d0,d6				; Add note frequency
	move.w	d6,d1
	lsr.w	#8,d1
	move.b	#$A4,d0		; Register for upper 6 bits of frequency
	bsr.w	WriteFMIorII
	move.b	d6,d1
	move.b	#$A0,d0		; Register for lower 8 bits of frequency
	bra.w	WriteFMIorII
;locret_71E48:
;	rts
; ===========================================================================
; loc_71E4A:
FMSetRest:
	bset	#1,SMPS_Track.PlaybackControl(a5)	; Set 'track at rest' bit

locret_71E48:
	rts
; End of function FMPrepareNote

; ===========================================================================
; loc_71E50: PauseMusic:
DoPauseMusic:
	bmi.s	DoUnpauseMusic		; Branch if music is being unpaused
	cmpi.b	#2,SMPS_RAM.f_stopmusic(a6)
	beq.w	locret_71EFE
	move.b	#2,SMPS_RAM.f_stopmusic(a6)
	bsr.w	FMSilenceAll
	bsr.w	PSGSilenceAll
	; From Vladikcomper:
	; "Playing sample $7F executes pause command."
	; "We need the Z80 to be stopped before this command executes and to be started directly afterwards."
	SMPS_stopZ80
	SMPS_waitZ80
	move.b  #$7F,(SMPS_z80_ram+MegaPCM_DAC_Number).l	; pause DAC
	SMPS_startZ80

	rts
; ===========================================================================
; loc_71E94: .unpausemusic: UnpauseMusic:
DoUnpauseMusic:
	clr.b	SMPS_RAM.f_stopmusic(a6)

	lea	SMPS_RAM.v_music_fmdac_tracks(a6),a5
	moveq	#SMPS_MUSIC_FM_DAC_TRACK_COUNT-1,d7	; 6 FM + 1 DAC
	bsr.s	ResumeTrack

	move.b	#$80,SMPS_RAM.f_voice_selector(a6)			; Now at SFX tracks
	lea	SMPS_RAM.v_sfx_fm_tracks(a6),a5
	moveq	#SMPS_SFX_FM_TRACK_COUNT-1,d7	; 3 FM
	bsr.s	ResumeTrack

    if SMPS_EnableSpecSFX
	move.b	#$40,SMPS_RAM.f_voice_selector(a6)			; Now at SFX tracks
	lea	SMPS_RAM.v_spcsfx_fm_tracks(a6),a5
	moveq	#SMPS_SPECIAL_SFX_FM_TRACK_COUNT-1,d7	; 1 FM
	bsr.s	ResumeTrack
    endif

	clr.b	SMPS_RAM.f_voice_selector(a6)			; Now at SFX tracks
	; From Vladikcomper:
	; "Playing sample $00 cancels pause mode."
	; "We need the Z80 to be stopped before this command executes and to be started directly afterwards."
	SMPS_stopZ80
	SMPS_waitZ80
	clr.b  (SMPS_z80_ram+MegaPCM_DAC_Number).l	; unpause DAC
	SMPS_startZ80

; loc_71EFE:
locret_71EFE:
	rts


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

ResumeTrack:
	tst.b	SMPS_Track.PlaybackControl(a5)	; Is track playing?
	bpl.s	+				; Branch if not
	btst	#2,SMPS_Track.PlaybackControl(a5)	; Is SFX overriding track?
	bne.s	+				; Branch if not
	moveq	#0,d0
	move.b	SMPS_Track.VoiceIndex(a5),d0	; Current track FM instrument
	bsr.w	cfSetVoiceCont
+
	lea	SMPS_Track.len(a5),a5	; Advance to next track
	dbf	d7,ResumeTrack		; loop
	rts
; End of function ResumeTrack

; ===========================================================================

; ---------------------------------------------------------------------------
; Subroutine to	play a sound or	music track
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Sound_Play:
	tst.b	SMPS_RAM.variables.v_playsnd0(a6)		; Is variables.v_playsnd0 a $00 (empty)?
	bne.s	locret_71F4A		; If yes, branch
	lea	SMPS_RAM.variables.v_playsnd1(a6),a1	; Load music track number
	move.b	SMPS_RAM.variables.v_sndprio(a6),d3	; Get priority of currently playing SFX
	moveq	#SMPS_SOUND_QUEUE_COUNT-1,d4			; Clownacy | Number of sound queues-1, now 3 to match the new fourth queue
	moveq	#0,d0
; loc_71F12:
.inputloop:
	move.b	(a1),d0			; Move track number to d0
	move.b	d0,d1
	clr.b	(a1)+			; Clear entry
	cmpi.b	#MusID__First,d0	; Make it into 0-based index
	blo.s	.nextinput		; If negative (i.e., it was $80 or lower), branch
	cmpi.b	#SndID__End,d0		; Is it a special command?
	bhs.s	.queueinput		; If so, branch
	subi.b	#SndID__First,d0	; Subtract first SFX index
	blo.s	.queueinput		; If it was music, branch
	add.w	d0,d0
	add.w	d0,d0
	lea	(SoundIndex).l,a0
	move.b	(a0,d0.w),d2		; Get sound type
	cmp.b	d3,d2			; Is it a lower priority sound?
	blo.s	.lowerpriority		; Branch if yes
	move.b	d2,d3			; Store new priority
	bsr.s	.queueinput

.lowerpriority:
	tst.b	d3			; We don't want to change sound priority if it is negative
	bmi.s	locret_71F4A
	move.b	d3,SMPS_RAM.variables.v_sndprio(a6)	; Set new sound priority
	rts

; loc_71F3E:
.nextinput:
	dbf	d4,.inputloop
	rts

.queueinput:
	move.b	d1,SMPS_RAM.variables.v_playsnd0(a6)	; Queue sound for play
locret_71F4A:
	rts
; End of function Sound_Play


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Sound_ChkValue:	; For the love of god, don't rearrange the order of the groups, it has to be 'music --> SFX --> flags'
	moveq	#0,d7
	move.b	SMPS_RAM.variables.v_playsnd0(a6),d7
	clr.b	SMPS_RAM.variables.v_playsnd0(a6)		; reset	music flag

	; Music
	cmpi.b	#MusID__First,d7	; Is this before music?
	blo.s	locret_71F4A		; Return if yes
	cmpi.b	#MusID__End,d7		; Is this music ($01-$1F)?
	blo.w	Sound_PlayBGM		; Branch if yes

	; SFX
	cmpi.b	#SndID__First,d7	; Is this after music but before sfx?
	blo.s	locret_71F4A		; Return if yes
	cmpi.b	#SndID__End,d7		; Is this sfx ($80-$D0)?
	blo.w	Sound_PlaySFX		; Branch if yes

	; Special SFX
    if SMPS_EnableSpecSFX
	cmpi.b	#SpecID__First,d7	; Is this after sfx but before spec sfx?
	blo.s	locret_71F4A		; Return if yes
	; These are old special SFX slots (GHZ waterfall)
	cmpi.b	#SpecID__End,d7		; Is this spec sfx
	blo.w	Sound_PlaySpecial	; Branch if yes
    endif

	; Commands
	subi.b	#FlgID__First,d7	; Is this after sfx (spec if above code is assembled) but before commands?
	bcs.s	locret_71F4A		; Return if yes
	cmpi.b	#FlgID__End-FlgID__First,d7	; Is this after commands?
	bhs.s	locret_71F4A			; Return if yes
	add.w	d7,d7
	add.w	d7,d7
	jmp	Sound_ExIndex(pc,d7.w)
; ===========================================================================

Sound_ExIndex:
ptr_flgFA:	bra.w	StopSFX			; $FA	; Clownacy | Brand new. Was missing from the stock S1 driver because Sonic Team had stripped out various unused components of the driver
ptr_flgFB:	bra.w	FadeOutMusic		; $FB	; Clownacy | Was $E0
ptr_flgFC:	bra.w	PlaySega		; $FC	; Clownacy | Was $E1
ptr_flgFD:	bra.w	SpeedUpMusic		; $FD	; Clownacy | Was $E2
ptr_flgFE:	bra.w	SlowDownMusic		; $FE	; Clownacy | Was $E3
ptr_flgFF:	bra.w	StopSoundAndMusic	; $FF	; Clownacy | Was $E4
ptr_flgend
; ---------------------------------------------------------------------------
; Play "Say-gaa" PCM sound
; ---------------------------------------------------------------------------
; Sound_E1:
PlaySega:
    if SMPS_SegaPCM_68k = 0

	SMPS_stopZ80
	SMPS_waitZ80
	st.b	(SMPS_z80_ram+MegaPCM_DAC_Type).l	; This is a DAC SFX; ignore music DAC volume
	move.b	#dSega_S2,(SMPS_z80_ram+MegaPCM_DAC_Number).l	; Queue Sega PCM
	SMPS_startZ80
	    if SMPS_IdlingSegaSound
		move.w	#$11,d1
; loc_71FC0:
.busyloop_outer:
		move.w	#-1,d0
; loc_71FC4:
.busyloop:
		nop
		dbf	d0,.busyloop

		dbf	d1,.busyloop_outer
	    endif
    else

    if SMPS_FixBugs
	; Clownacy | One of Valley Bell's fixes: this resets the DAC pan, so the SEGA chant isn't accidentally panned by a previously-playing song
	move.b	#$B6,d0		; AMS/FMS/panning of FM6
	move.b	#$C0,d1		; Stereo
	bsr.w	WriteFMII
    endif
	; Clownacy | Fancy-pantsy optimised version of Puto's 68k DAC code
	moveq	#$2B,d0		; DAC enable/disable register
	move.b	#$80,d1		; Enable DAC
	bsr.w	WriteFMI
	SMPS_stopZ80
	SMPS_waitZ80
	lea	(SMPS_ym2612_a0).l,a0		; Load $A04000 (YM2612 register A0) into a0 for some temporary use
	lea	(SegaPCM).l,a2			; Load the SEGA PCM sample into a2. It's important that we use a2 since a0 and a1 are going to be used up ahead when reading the joypad ports
	lea	(SMPS_ym2612_d0).l,a3		; Load $A04001 (YM2612 register D0) into a3
	lea	(Ctrl_1).w,a4			; Load address where JoyPad states are written into a4
	lea	(SMPS_HW_Port_1_Data).l,a5	; Load address where JoyPad states are read from into a5
	move.w	#(SegaPCM_End-SegaPCM)-1,d3	; Load the size of the SEGA PCM sample into d3
	SMPS_waitYM
	move.b	#$2A,(a0)			; $A04000 = $2A -> Write to DAC channel
	SMPS_waitYM
.loop:
	move.b	(a2)+,(a3)			; Write the PCM data (contained in a2) to YM2612 register D0 (contained in a3)
	moveq	#$18,d0				; Write the pitch ($18 in this case) to d0
.idle:
	dbf	d0,.idle			; Decrement d0; jump to itself if not 0. (for pitch control, avoids playing the sample too fast)
	movea.w	a4,a0				; address where JoyPad states are written
	movea.l	a5,a1				; address where JoyPad states are read from
	jsr	(Joypad_Read).w			; Read only the first joypad port. It's important that we do NOT do the two ports, we don't have the cycles for that
	tst.b	(a4)				; Check for Start button
	bmi.s	.endloop			; If start is pressed, stop playing, leave this loop, and unfreeze the 68K, otherwise, continue playing PCM sample
	dbf	d3,.loop			; Count down d3 and loop. If d3 = 0, we finished playing the PCM sample, so stop playing, leave this loop, and unfreeze the 68K
.endloop:
	SMPS_startZ80
    endif

	addq.w	#4,sp				; Tamper return value so we don't return to caller
	rts

; ===========================================================================
; ---------------------------------------------------------------------------
; Play music track $81-$9F
; ---------------------------------------------------------------------------
; Sound_81to9F:
Sound_PlayBGM:
	; Clownacy | The commented-out is from S2's driver, which was used to hide a certain bug.
	; Lucky for us, though, we just fix the bug directly, so we don't need this.
;	bsr.w	StopSFX			; Clownacy | (From S2) Helps stop audio artefacts after SFX interruption
;    if SMPS_EnableSpecSFX
;	bsr.w	StopSpecSFX
;    endif
	cmpi.b	#MusID_ExtraLife,d7	; Is the "extra life" music to be played?
	bne.s	.bgmnot1up		; If not, branch
	bset	#f_1up_playing,SMPS_RAM.variables.bitfield2(a6)	; Is a 1-up music playing?
	bne.s	.bgm_loadMusic		; If yes, branch	; Clownacy | (From S2)

	; Clownacy | Making the music backup share RAM with the SFX tracks makes this code so much more complicated...
	; First up, we have to meddle with bit 7 PlaybackControl, but, afterwards, we wanna put it back the way it was, so we gotta back all 10 of them up
	lea	SMPS_RAM.v_music_track_ram(a6),a5
	moveq	#SMPS_MUSIC_TRACK_COUNT-1,d0	; 1 DAC + 6 FM + 3 PSG tracks
; loc_71FE6:
.clearsfxloop:
	bclr	#2,SMPS_Track.PlaybackControl(a5)		; Clear 'SFX is overriding' bit
	move.b	SMPS_Track.PlaybackControl(a5),SMPS_Track.PlaybackControlBackup(a5)	; Clownacy | Backup PlaybackControl...
	bclr	#7,SMPS_Track.PlaybackControl(a5)		; ...then screw with 'track is playing' bit (we don't want the SFX update processing the music track backup!!!)
	lea	SMPS_Track.len(a5),a5
	dbf	d0,.clearsfxloop

	; The RAM this code changes is immediately overwritten with the music track backup, so the code's useless
;	lea	SMPS_RAM.v_sfx_track_ram(a6),a5
;	moveq	#((SMPS_RAM.v_spcsfx_track_ram_end-SMPS_RAM.v_sfx_track_ram)/SMPS_Track.len)-1,d0	; 3 FM + 3 PSG tracks (SFX) + 1 FM + 1 PSG tracks (special SFX)
; loc_71FF8:
;.cleartrackplayloop:
;	bclr	#7,SMPS_Track.PlaybackControl(a5)	; Clear 'track is playing' bit
;	lea	SMPS_Track.len(a5),a5
;	dbf	d0,.cleartrackplayloop

	; Clownacy | We're backing-up the variables and tracks separately, to put the backed-up variables after the backed-up tracks
	; this is so the backed-up tracks and SFX tracks start at the same place: at the end of the music tracks
;	clr.b	SMPS_RAM.variables.v_sndprio(a6)		; Clear priority (S2 removes this one)
	lea	SMPS_RAM.v_music_track_ram(a6),a0
	lea	SMPS_RAM.v_1up_ram_copy(a6),a1
	move.w	#((SMPS_RAM.v_music_track_ram_end-SMPS_RAM.v_music_track_ram)/4)-1,d0	; Backup music track data
; loc_72012:
.backuptrackramloop:
	move.l	(a0)+,(a1)+
	dbf	d0,.backuptrackramloop

    if (SMPS_RAM.v_music_track_ram_end-SMPS_RAM.v_music_track_ram)&2
	move.w	(a0)+,(a1)+
    endif
    if (SMPS_RAM.v_music_track_ram_end-SMPS_RAM.v_music_track_ram)&1
	move.b	(a0)+,(a1)+
    endif

	lea	SMPS_RAM.variables(a6),a0
	lea	SMPS_RAM.variables_backup(a6),a1
	move.w	#(SMPS_RAM_Variables.len/4)-1,d0	; Backup variables

.backupvariablesloop:
	move.l	(a0)+,(a1)+
	dbf	d0,.backupvariablesloop

    if SMPS_RAM_Variables.len&2
	move.w	(a0)+,(a1)+
    endif
    if SMPS_RAM_Variables.len&1
	move.b	(a0)+,(a1)+
    endif

	;bset	#f_1up_playing,SMPS_RAM.variables.bitfield2(a6)
	clr.b	SMPS_RAM.variables.v_sndprio(a6)		; Clear priority twice?
	bra.s	.bgm_loadMusic
; ===========================================================================
; loc_72024:
.bgmnot1up:
	moveq	#0,d0
	move.b	d0,SMPS_RAM.variables.v_fadein_counter(a6)
	move.b	d0,SMPS_RAM.variables.v_fadeout_counter(a6)	; Clownacy | (From S2)
	bclr	#f_1up_playing,SMPS_RAM.variables.bitfield2(a6)
; loc_7202C:
.bgm_loadMusic:
	bsr.w	InitMusicPlayback
	subi.b	#MusID__First,d7
	add.w	d7,d7
	add.w	d7,d7
	lea	MusicIndex(pc),a4
	move.l	(a4,d7.w),d1
	move.b	(a4,d7.w),SMPS_RAM.variables.v_speeduptempo(a6)
	bclr	#0,d1				; Clownacy | Is this a forced-PAL tempo song? (we clear PAL tempo flag so it doesn't interfere later on)
	beq.s	.nopalmode
	bset	#f_force_pal_tempo,SMPS_RAM.variables.bitfield2(a6) ; Clownacy | If so, set flag

.nopalmode:
	movea.l	d1,a4			; a4 now points to (uncompressed) song data
	move.l	(a4),d2			; Load voice pointer	; Clownacy | Made to read a longword to suit the voices' new absolute pointer
	move.b	4+4+1(a4),d0		; Load tempo		; Clownacy | +2 to accommodate the voices' new longword pointer
	move.b	d0,SMPS_RAM.variables.v_tempo_mod(a6)
	btst	#f_speedup,SMPS_RAM.variables.bitfield2(a6)
	beq.s	.nospeedshoes
	move.b	SMPS_RAM.variables.v_speeduptempo(a6),d0
; loc_72068:
.nospeedshoes:
	move.b	d0,SMPS_RAM.variables.v_main_tempo(a6)
	moveq	#0,d1
	move.b	d1,SMPS_RAM.variables.v_main_tempo_timeout(a6)	; Clownacy | Cleared to avoid unintended overflow on first frame of playback
	move.b	#5,SMPS_RAM.variables.v_pal_audio_countdown(a6)	; Clownacy | "reset PAL update tick to 5 (update immediately)"
	movea.l	a4,a3

	addi.w	#4+4+2,a4			; Point past header			; Clownacy | +2 to accommodate the voices' new longword pointer
    if SMPS_FixBugs
	; Clownacy | One of Valley Bell's fixes: this vital code is skipped if FM/DAC channels is 0, so it's been moved to avoid that
	move.b	4+4+0(a3),d4		; Load tempo dividing timing		; Clownacy | +2 to accommodate the voices' new longword pointer
	moveq	#SMPS_Track.len,d6
	moveq	#1,d5			; Note duration for first "note"
    endif
	moveq	#0,d7			; Clownacy | Hey, look! It's the 'moveq	#0,d7' that the other Play_X's were missing!
	move.b	4+0(a3),d7		; Load number of FM+DAC tracks	; Clownacy | +2 to accommodate the voices' new longword pointer
	beq.w	.bgm_fmdone		; Branch if zero
	subq.b	#1,d7
	move.b	#$C0,d1			; Default AMS+FMS+Panning
    if ~SMPS_FixBugs
	move.b	4+4+0(a3),d4		; Load tempo dividing timing		; Clownacy | +2 to accommodate the voices' new longword pointer
	moveq	#SMPS_Track.len,d6
	moveq	#1,d5			; Note duration for first "note"
    endif
	lea	SMPS_RAM.v_music_fmdac_tracks(a6),a1
    if ~SMPS_FixBugs
	lea	FMDACInitBytes(pc),a2	; Clownacy | InitMusicPlayback will do this instead
    endif
; loc_72098:
.bmg_fmloadloop:
    if SMPS_FixBugs
	; Clownacy | (From S2) Now sets 'track at rest' bit to prevent hanging notes
	move.b	#$82,SMPS_Track.PlaybackControl(a1)	; Initial playback control: set 'track playing' and 'track at rest' bits
    else
	bset	#7,SMPS_Track.PlaybackControl(a1)	; Initial playback control: set 'track playing' bit
    endif
    if ~SMPS_FixBugs
	move.b	(a2)+,SMPS_Track.VoiceControl(a1)	; Voice control bits	; Clownacy | InitMusicPlayback will do this instead
    endif
	move.b	d4,SMPS_Track.TempoDivider(a1)
	move.b	d6,SMPS_Track.StackPointer(a1)	; Set "gosub" (coord flag F8h) stack init value
	move.b	d1,SMPS_Track.AMSFMSPan(a1)		; Set AMS/FMS/Panning
	move.b	d5,SMPS_Track.DurationTimeout(a1)	; Set duration of first "note"
	move.w	(a4)+,d0			; Load DAC/FM pointer
	ext.l	d0				; Clownacy | Fix negative pointers
	add.l	a3,d0				; Relative pointer
	move.w	d0,SMPS_Track.DataPointer+2(a1)	; Store track pointer
	swap	d0
	move.b	d0,SMPS_Track.DataPointer+1(a1)	; Store track pointer
	move.b	(a4)+,SMPS_Track.Transpose(a1)	; Load FM channel modifier
	move.b	(a4)+,SMPS_Track.Volume(a1)	; Load FM channel modifier
	move.l	d2,SMPS_Track.VoicePtr(a1)	; Load voice pointer	; Clownacy | Made to read a longword to suit the voices' new absolute pointer
	adda.w	d6,a1
	dbf	d7,.bmg_fmloadloop

	cmpi.b	#7,4+0(a3)	; Are 7 (1 x DAC + 6 x FM) tracks defined?	; Clownacy | +2 to accommodate the voices' new longword pointer
	beq.s	.bgm_fmdone
; ===========================================================================
; loc_720D8:
;.silencefm6:
	; Silence FM Channel 6 specifically if it's not in use
	; Clownacy | Optimising this a bit by doing what Sonic 2's driver does
	moveq	#$42,d0		; TL for operator 1 of FM6
	moveq	#$FF,d1		; Total silence
	moveq	#4-1,d2

.silenceloop:
	bsr.w	WriteFMII
	addq.b	#4,d0		; Next operator
	dbf	d2,.silenceloop

	move.b	#$B6,d0		; AMS/FMS/panning of FM6
	move.b	#$C0,d1		; Stereo
	bsr.w	WriteFMII
; loc_72114:
.bgm_fmdone:
	moveq	#0,d7
	move.b	4+1(a3),d7	; Load number of PSG tracks
	beq.s	.bgm_psgdone	; Branch if zero
	subq.b	#1,d7
	lea	SMPS_RAM.v_music_psg_tracks(a6),a1
    if ~SMPS_FixBugs
	lea	PSGInitBytes(pc),a2	; Clownacy | InitMusicPlayback will do this instead
    endif
; loc_72126:
.bgm_psgloadloop:
    if SMPS_FixBugs
	; Clownacy | (From S2) Now sets 'track at rest' bit to prevent hanging notes
	move.b	#$82,SMPS_Track.PlaybackControl(a1)	; Initial playback control: set 'track playing' and 'track at rest' bits
    else
	bset	#7,SMPS_Track.PlaybackControl(a1)	; Initial playback control: set 'track playing' bit
    endif
    if ~SMPS_FixBugs
	move.b	(a2)+,SMPS_Track.VoiceControl(a1)	; Voice control bits	; Clownacy | InitMusicPlayback will do this instead
    endif
	move.b	d4,SMPS_Track.TempoDivider(a1)
	move.b	d6,SMPS_Track.StackPointer(a1)	; Set "gosub" (coord flag F8h) stack init value
	move.b	d5,SMPS_Track.DurationTimeout(a1)	; Set duration of first "note"
	move.w	(a4)+,d0			; Load PSG channel pointer
	ext.l	d0				; Clownacy | Fix negative pointers
	add.l	a3,d0				; Relative pointer
	move.w	d0,SMPS_Track.DataPointer+2(a1)	; Store track pointer
	swap	d0
	move.b	d0,SMPS_Track.DataPointer+1(a1)	; Store track pointer
	move.b	(a4)+,SMPS_Track.Transpose(a1)	; Load PSG modifier
	move.b	(a4)+,SMPS_Track.Volume(a1)	; Load PSG modifier
	addq.w	#1,a4				; Skip redundant byte (SMPS2ASM calls this 'mod', and SMPS 68k Type 2 actually does use it for modulation ($A(a5)))
	move.b	(a4)+,SMPS_Track.VoiceIndex(a1)	; Initial PSG tone
	adda.w	d6,a1
	dbf	d7,.bgm_psgloadloop
; loc_72154:
.bgm_psgdone:

    if SMPS_EnablePWM
	moveq	#0,d7
	move.b	4+2(a3),d7	; Load number of PWM tracks
	beq.s	.bgm_pwmdone	; Branch if zero
	subq.b	#1,d7
	lea	SMPS_RAM.v_music_pwm_tracks(a6),a1

.bgm_pwmloadloop:
	move.b	#$82,SMPS_Track.PlaybackControl(a1)	; Initial playback control: set 'track playing' and 'track at rest' bits
	move.b	d4,SMPS_Track.TempoDivider(a1)
	move.b	d6,SMPS_Track.StackPointer(a1)	; Set "gosub" (coord flag F8h) stack init value
	move.b	d5,SMPS_Track.DurationTimeout(a1)	; Set duration of first "note"
	move.w	(a4)+,d0			; Load PSG channel pointer
	ext.l	d0				; Clownacy | Fix negative pointers
	add.l	a3,d0				; Relative pointer
	move.w	d0,SMPS_Track.DataPointer+2(a1)	; Store track pointer
	swap	d0
	move.b	d0,SMPS_Track.DataPointer+1(a1)	; Store track pointer
	move.b	(a4)+,SMPS_Track.Transpose(a1)	; Load PSG modifier
	move.b	(a4)+,SMPS_Track.Volume(a1)	; Load PSG modifier
	adda.w	d6,a1
	dbf	d7,.bgm_pwmloadloop

.bgm_pwmdone:
	endif

	lea	SMPS_RAM.v_sfx_track_ram(a6),a1
	moveq	#SMPS_SFX_TRACK_COUNT-1,d7	; 6 SFX tracks
; loc_7215A:
.sfxstoploop:
	tst.b	SMPS_Track.PlaybackControl(a1)	; Is SFX playing?
	bpl.s	.sfxnext			; Branch if not
	moveq	#0,d0
	move.b	SMPS_Track.VoiceControl(a1),d0	; Get voice control bits
	bmi.s	.sfxpsgchannel			; Branch if this is a PSG channel
	subq.w	#2,d0				; SFX can't have FM1 or FM2
	add.w	d0,d0
	bra.s	.gotchannelindex
; ===========================================================================
; loc_7216E:
.sfxpsgchannel:
	lsr.w	#4,d0		; Convert to index
; loc_72170:
.gotchannelindex:
	lea	SFX_BGMChannelRAM(pc),a0
	movea.w	(a0,d0.w),a0
	; Clownacy | For some reason, this was changed to a bclr in S2's driver, breaking the code
	bset	#2,SMPS_Track.PlaybackControl(a0)	; Set 'SFX is overriding' bit
; loc_7217C:
.sfxnext:
	adda.w	d6,a1
	dbf	d7,.sfxstoploop

    if SMPS_EnableSpecSFX
	tst.b	SMPS_RAM.v_spcsfx_fm4_track.PlaybackControl(a6)	; Is special SFX being played?
	bpl.s	.checkspecialpsg			; Branch if not
	bset	#2,SMPS_RAM.v_music_fm4_track.PlaybackControl(a6)	; Set 'SFX is overriding' bit
; loc_7218E:
.checkspecialpsg:
	tst.b	SMPS_RAM.v_spcsfx_psg3_track.PlaybackControl(a6)	; Is special SFX being played?
	bpl.s	.sendfmnoteoff				; Branch if not
	bset	#2,SMPS_RAM.v_music_psg3_track.PlaybackControl(a6)	; Set 'SFX is overriding' bit
    endif
; loc_7219A:
.sendfmnoteoff:
	lea	SMPS_RAM.v_music_fm_tracks(a6),a5
	moveq	#SMPS_MUSIC_FM_TRACK_COUNT-1,d5
; loc_721A0:
.fmnoteoffloop:
	btst	#2,SMPS_Track.PlaybackControl(a5)
	bne.s	.nexttrack
	bsr.w	FMSilenceChannel
.nexttrack:
	adda.w	d6,a5
	dbf	d5,.fmnoteoffloop	; Run all FM tracks
	moveq	#SMPS_MUSIC_PSG_TRACK_COUNT-1,d5
; loc_721AC:
.psgnoteoffloop:
	bsr.w	PSGNoteOff
	adda.w	d6,a5
	dbf	d5,.psgnoteoffloop	; Run all PSG tracks

	rts
; ===========================================================================
ChannelInitBytes:
; byte_721BA:
FMDACInitBytes:
	; DAC, FM1, FM2, FM3, FM4, FM5, FM6
	dc.b 6|%10000, 0, 1, 2, 4, 5, 6	; first byte is for DAC; then notice the 0, 1, 2 then 4, 5, 6; this is the gap between parts I and II for YM2612 port writes
	; %10000 is to mark the track as DAC
; byte_721C2:
PSGInitBytes:
	; PSG1, PSG2, PSG3
	dc.b $80, $A0, $C0

    if SMPS_EnablePWM
PWMInitBytes:
	; PWM1, PWM2, PWM3, PWM4
	dc.b $00|%1000, $02|%1000, $04|%1000, $06|%1000
	; %1000 is to mark the track as PWM
    endif
	even
; ===========================================================================
; ---------------------------------------------------------------------------
; Play normal sound effect
; ---------------------------------------------------------------------------
; Sound_A0toCF:
Sound_PlaySFX:
	btst	#f_1up_playing,SMPS_RAM.variables.bitfield2(a6)		; Is 1-up playing?
	bne.w	.clear_sndprio			; Exit is it is
;	tst.b	SMPS_RAM.variables.v_fadeout_counter(a6)		; Is music being faded out?	; Clownacy | S2's driver doesn't bother with this
;	bne.w	.clear_sndprio			; Exit if it is
	btst	#f_fadein_flag,SMPS_RAM.variables.bitfield2(a6)	; Is music being faded in?
	bne.w	.clear_sndprio			; Exit if it is
    if SMPS_EnableSpinDashSFX
	bclr	#f_spindash_lastsound,SMPS_RAM.bitfield1(a6)
    endif
	cmpi.b	#SndID_Ring,d7			; Is ring sound	effect played?
	bne.s	.sfx_notRing			; If not, branch
	btst	#v_ring_speaker,SMPS_RAM.bitfield1(a6)	; Is the ring sound playing on right speaker?
	bne.s	.gotringspeaker			; Branch if not
	move.b	#SndID_RingLeft,d7		; Play ring sound in left speaker
; loc_721EE:
.gotringspeaker:
	bchg	#v_ring_speaker,SMPS_RAM.bitfield1(a6)	; Change speaker
; Sound_notB5:
.sfx_notRing:
    if SMPS_PushSFXBehaviour
	cmpi.b	#sfx_Push,d7			; Is "pushing" sound played?
	bne.s	.sfx_notPush			; If not, branch

	bset	#f_push_playing,SMPS_RAM.bitfield1(a6)	; Mark pushing sound as playing
	bne.w	.locret				; Return if already playing
    endif
; Sound_notA7:
.sfx_notPush:
    if SMPS_GloopSFXBehaviour
	; Turns out S2 uses a version of the above code for the gloop SFX (zPlaySound_CheckGloop).
	; This is my best attempt at porting it.
	cmpi.b	#SndID_Gloop,d7			; Is bloop/gloop sound played?
	bne.s	.sfx_notgloop			; If not, branch

	bchg	#v_gloop_toggle,SMPS_RAM.bitfield1(a6)	; Z80 cpl
	beq.w	.locret				; Is value set to 0? If so, branch
    endif

.sfx_notgloop:
    if SMPS_EnableSpinDashSFX
	cmpi.b	#SndID_SpindashRev,d7		; Is this the Spin Dash sound?
	bne.s	.sfx_notspindashrev		; If not, branch
	move.b	SMPS_RAM.v_spindash_pitch(a6),d0		; Store extra frequency
	tst.b	SMPS_RAM.v_spindash_timer(a6)		; Is the Spin Dash timer active?
	bne.s	.sfx_timeractive		; If it is, branch
	moveq	#-1,d0				; Otherwise, reset frequency (becomes 0 on next line)

.sfx_timeractive:
	addq.b	#1,d0
	cmpi.b	#$C,d0				; Has the limit been reached?
	bhs.s	.sfx_limitreached		; If it has, branch
	move.b	d0,SMPS_RAM.v_spindash_pitch(a6)		; Otherwise, set new frequency

.sfx_limitreached:
	bset	#f_spindash_lastsound,SMPS_RAM.bitfield1(a6)	; Set flag
	move.b	#60,SMPS_RAM.v_spindash_timer(a6)		; Set timer

.sfx_notspindashrev:
    endif

    if SMPS_EnableContSFX
	cmpi.b	#SMPS_First_ContSFX,d7		; Is this a continuous SFX?
	blo.s	.sfx_notcont			; If not, branch
	moveq	#0,d0
	move.b	SMPS_RAM.variables.v_current_contsfx(a6),d0
	cmp.b	d7,d0					; Is this the same continuous sound that was playing?
	bne.s	.sfx_notsame				; If not, branch
	bset	#f_continuous_sfx,SMPS_RAM.bitfield1(a6)	; Set flag for continuous playback mode
	subi.b	#SndID__First,d7
	add.w	d7,d7				; Convert sfx ID into index
	add.w	d7,d7
	lea	(SoundIndex).l,a0
	movea.l	(a0,d7.w),a0
	move.b	3+2(a0),SMPS_RAM.variables.v_contsfx_channels(a6)	; Save number of channels in SFX
	rts

.sfx_notsame:
	bclr	#f_continuous_sfx,SMPS_RAM.bitfield1(a6)	; Clear flag for continuous playback mode
	move.b	d7,SMPS_RAM.variables.v_current_contsfx(a6)		; Mark this as the current continuous SFX

.sfx_notcont:
    endif

	subi.b	#SndID__First,d7	; Make it 0-based
	add.w	d7,d7			; Convert sfx ID into index
	add.w	d7,d7
	lea	(SoundIndex).l,a0
	movea.l	(a0,d7.w),a3		; SFX data pointer
	movea.l	a3,a1
	moveq	#0,d1
	move.l	(a1)+,d1	; Voice pointer		; Clownacy | Made to read a longword to suit the voices' new absolute pointer
;	add.l	a3,d1		; Relative pointer	; Clownacy | Voice pointers are now absolute, so this isn't needed
	move.b	(a1)+,d5	; Dividing timing
	; DANGER! Ugh, this bug.
	; In the stock driver, sounds >= $E0 would cause a crash.
	; The original Clone Driver had a really messy workaround, and so does the SCHG (at the time of writing)
	; The real bug is that the SFX only has a range of $3F, after that, everything goes to hell.
	; Why? Look at the routine:
	; The index is made zero-based, so $A0 would become 0 (stock driver values).
	; By this logic, $DF would become $3F, and $E0: $40.
	; The value is then multiplied by 4 (the lsl), to suit the longword indexes of SoundIndex.
	; The result for $3F is $FC. Now do the same to $40, notice something?
	; The result is $100. We go beyond a single byte, this is the catalyst.
	; The second line below (move.b) tries to overwrite the register that holds the modified value... with a byte.
	; So, we blank the *entire* register.
	; DANGER! there is a missing 'moveq	#0,d7' here, without which SFXes whose
	; index entry is above $3F will cause a crash. This is actually the same way that
	; this bug is fixed in Ristar's driver.
    if SMPS_FixBugs
	moveq	#0,d7
    endif
	move.b	(a1)+,d7	; Number of tracks (FM + PSG)
	subq.b	#1,d7
	moveq	#SMPS_Track.len,d6
; loc_72228:
.sfx_loadloop:
	moveq	#0,d3
	move.b	1(a1),d3	; Channel assignment bits
	move.b	d3,d4
	bmi.s	.sfxinitpsg	; Branch if PSG
	subq.w	#2,d3		; SFX can only have FM3, FM4 or FM5
	add.w	d3,d3
	lea	SFX_BGMChannelRAM(pc),a5
	movea.w	(a5,d3.w),a5
	bset	#2,SMPS_Track.PlaybackControl(a5)	; Mark music track as being overridden
	bra.s	.sfxoverridedone
; ===========================================================================
; loc_72244:
.sfxinitpsg:
	lsr.w	#4,d3
	lea	SFX_BGMChannelRAM(pc),a5
	movea.w	(a5,d3.w),a5
	bset	#2,SMPS_Track.PlaybackControl(a5)	; Mark music track as being overridden
    if ~SMPS_FixBugs
	; This check is in the wrong place: this should prevent PSG 1&2 from trying
	; to silence the noise channel, but it also stops PSG 1&2 from being
	; silenced altogether.
	cmpi.b	#$C0,d4			; Is this PSG 3?
	bne.s	.sfxoverridedone	; Branch if not
    endif
	move.b	d4,d0
	ori.b	#$1F,d0			; Command to silence PSG
	move.b	d0,(SMPS_psg_input).l
    if SMPS_FixBugs
	cmpi.b	#$C0,d4			; Is this PSG 3?
	bne.s	.sfxoverridedone	; Branch if not
    endif
	bchg	#5,d0			; Command to silence noise channel
	move.b	d0,(SMPS_psg_input).l	; Silence PSG 4 (noise), too
; loc_7226E:
.sfxoverridedone:
	movea.w	SFX_SFXChannelRAM(pc,d3.w),a5
	movea.l	a5,a2
	moveq	#(SMPS_Track.len/4)-1,d0	; $30 bytes
	moveq	#0,d2
; loc_72276:
.clearsfxtrackram:
	move.l	d2,(a2)+
	dbf	d0,.clearsfxtrackram

	; Clownacy | Make sure the last few bytes get cleared
    if SMPS_Track.len&2
	move.w	d2,(a2)+
    endif
    if SMPS_Track.len&1
	move.b	d2,(a2)+
    endif

	move.w	(a1)+,SMPS_Track.PlaybackControl(a5)	; Initial playback control bits
	move.b	d5,SMPS_Track.TempoDivider(a5)		; Initial voice control bits
	moveq	#0,d0
	move.w	(a1)+,d0				; Track data pointer
	ext.l	d0				; Clownacy | Fix negative pointers
	add.l	a3,d0					; Relative pointer
	move.w	d0,SMPS_Track.DataPointer+2(a5)		; Store track pointer
	swap	d0
	move.b	d0,SMPS_Track.DataPointer+1(a5)		; Store track pointer
	move.b	(a1)+,SMPS_Track.Transpose(a5)		; load FM/PSG channel modifier
	move.b	(a1)+,SMPS_Track.Volume(a5)		; load FM/PSG channel modifier
	move.b	#1,SMPS_Track.DurationTimeout(a5)		; Set duration of first "note"
    if SMPS_EnableSpinDashSFX
	btst	#f_spindash_lastsound,SMPS_RAM.bitfield1(a6)	; Is the Spin Dash sound playing?
	beq.s	.notspindash				; If not, branch
	move.b	SMPS_RAM.v_spindash_pitch(a6),d0
	add.b	d0,SMPS_Track.Transpose(a5)
.notspindash:
    endif
	move.b	d6,SMPS_Track.StackPointer(a5)	; Set "gosub" (coord flag F8h) stack init value
	tst.b	d4				; Is this a PSG channel?
	bmi.s	.sfxpsginitdone			; Branch if yes
	move.b	#$C0,SMPS_Track.AMSFMSPan(a5)	; AMS/FMS/Panning
	move.l	d1,SMPS_Track.VoicePtr(a5)		; Voice pointer
; loc_722A8:
.sfxpsginitdone:
	dbf	d7,.sfx_loadloop

    if SMPS_EnableSpecSFX
	tst.b	SMPS_RAM.v_sfx_fm4_track.PlaybackControl(a6)	; Is SFX being played?
	bpl.s	.doneoverride				; Branch if not
	bset	#2,SMPS_RAM.v_spcsfx_fm4_track.PlaybackControl(a6)	; Set SFX is overriding bit
; loc_722B8:
.doneoverride:
	tst.b	SMPS_RAM.v_sfx_psg3_track.PlaybackControl(a6)	; Is special SFX being played?
	bpl.s	.locret					; Branch if not
	bset	#2,SMPS_RAM.v_spcsfx_psg3_track.PlaybackControl(a6) ; Set SFX is overriding bit
    endif
; locret_722C4:
.locret:
	rts
; ===========================================================================
; loc_722C6:
.clear_sndprio:
	clr.b	SMPS_RAM.variables.v_sndprio(a6)	; Clear priority
	rts
; ===========================================================================
; ---------------------------------------------------------------------------
; RAM addresses for FM and PSG channel variables used by the SFX
; ---------------------------------------------------------------------------
; dword_722EC: SFXChannelRAM:
SFX_SFXChannelRAM:
		dc.w Clone_Driver_RAM+SMPS_RAM.v_sfx_fm3_track
		dc.w 0
		dc.w Clone_Driver_RAM+SMPS_RAM.v_sfx_fm4_track
		dc.w Clone_Driver_RAM+SMPS_RAM.v_sfx_fm5_track
		dc.w Clone_Driver_RAM+SMPS_RAM.v_sfx_psg1_track
		dc.w Clone_Driver_RAM+SMPS_RAM.v_sfx_psg2_track
		dc.w Clone_Driver_RAM+SMPS_RAM.v_sfx_psg3_track	; Plain PSG3
		dc.w Clone_Driver_RAM+SMPS_RAM.v_sfx_psg3_track	; Noise
; dword_722CC: BGMChannelRAM:
SFX_BGMChannelRAM:
		dc.w Clone_Driver_RAM+SMPS_RAM.v_music_fm3_track
		dc.w 0
		dc.w Clone_Driver_RAM+SMPS_RAM.v_music_fm4_track
		dc.w Clone_Driver_RAM+SMPS_RAM.v_music_fm5_track
		dc.w Clone_Driver_RAM+SMPS_RAM.v_music_psg1_track
		dc.w Clone_Driver_RAM+SMPS_RAM.v_music_psg2_track
		dc.w Clone_Driver_RAM+SMPS_RAM.v_music_psg3_track	; Plain PSG3
		dc.w Clone_Driver_RAM+SMPS_RAM.v_music_psg3_track	; Noise

; ===========================================================================
; ---------------------------------------------------------------------------
; Play GHZ waterfall sound
; ---------------------------------------------------------------------------
    if SMPS_EnableSpecSFX
; Sound_D0toDF:
Sound_PlaySpecial:
	btst	#f_1up_playing,SMPS_RAM.variables.bitfield2(a6)		; Is 1-up playing?
	bne.w	.locret				; Return if so
;	tst.b	SMPS_RAM.variables.v_fadeout_counter(a6)		; Is music being faded out?	; Clownacy | S2's driver didn't bother with this in Sound_PlaySFX
;	bne.w	.locret				; Exit if it is
	btst	#f_fadein_flag,SMPS_RAM.variables.bitfield2(a6)	; Is music being faded in?
	bne.w	.locret				; Exit if it is
	lea	(SpecSoundIndex).l,a0
	subi.b	#SpecID__First,d7		; Make it 0-based
	add.w	d7,d7
	add.w	d7,d7
	movea.l	(a0,d7.w),a3
	movea.l	a3,a1
;	moveq	#0,d0
	move.l	(a1)+,d1	; Store voice pointer
	move.b	(a1)+,d5			; Dividing timing
	; DANGER! there is a missing 'moveq	#0,d7' here, without which Special SFXes whose
	; index entry is above $3F will cause a crash. Ristar's driver didn't have this
	; particular instance fixed.
    if SMPS_FixBugs
	moveq	#0,d7
    endif
	move.b	(a1)+,d7	; Number of tracks (FM + PSG)
	subq.b	#1,d7
	moveq	#SMPS_Track.len,d6
; loc_72348:
.sfxloadloop:
	move.b	1(a1),d4					; Voice control bits
	bmi.s	.sfxoverridepsg					; Branch if PSG
	bset	#2,SMPS_RAM.v_music_fm4_track.PlaybackControl(a6)	; Set 'SFX is overriding' bit
	lea	SMPS_RAM.v_spcsfx_fm4_track(a6),a5
	bra.s	.sfxinitpsg
; ===========================================================================
; loc_7235A:
.sfxoverridepsg:
	bset	#2,SMPS_RAM.v_music_psg3_track.PlaybackControl(a6)	; Set 'SFX is overriding' bit
	lea	SMPS_RAM.v_spcsfx_psg3_track(a6),a5
; loc_72364:
.sfxinitpsg:
	movea.l	a5,a2
	moveq	#(SMPS_Track.len/4)-1,d0	; $30 bytes
	moveq	#0,d2
; loc_72368:
.clearsfxtrackram:
	move.l	d2,(a2)+
	dbf	d0,.clearsfxtrackram

	; Clownacy | Make sure the last few bytes get cleared
    if SMPS_Track.len&2
	move.w	d2,(a2)+
    endif
    if SMPS_Track.len&1
	move.b	d2,(a2)+
    endif

	move.w	(a1)+,SMPS_Track.PlaybackControl(a5)	; Initial playback control bits
	move.b	d5,SMPS_Track.TempoDivider(a5)		; Initial voice control bits
	moveq	#0,d0
	move.w	(a1)+,d0				; Track data pointer
	add.l	a3,d0					; Relative pointer
	move.w	d0,SMPS_Track.DataPointer+2(a5)		; Store track pointer
	swap	d0
	move.b	d0,SMPS_Track.DataPointer+1(a5)		; Store track pointer
	move.b	(a1)+,SMPS_Track.Transpose(a5)		; load FM/PSG channel modifier
	move.b	(a1)+,SMPS_Track.Volume(a5)		; load FM/PSG channel modifier
	move.b	#1,SMPS_Track.DurationTimeout(a5)		; Set duration of first "note"
	move.b	d6,SMPS_Track.StackPointer(a5)		; set "gosub" (coord flag F8h) stack init value
	tst.b	d4					; Is this a PSG channel?
	bmi.s	.sfxpsginitdone				; Branch if yes
	move.b	#$C0,SMPS_Track.AMSFMSPan(a5)		; AMS/FMS/Panning
	move.l	d1,SMPS_Track.VoicePtr(a5)			; Store voice pointer
; loc_72396:
.sfxpsginitdone:
	dbf	d7,.sfxloadloop

	tst.b	SMPS_RAM.v_sfx_fm4_track.PlaybackControl(a6)	; Is track playing?
	bpl.s	.doneoverride				; Branch if not
	bset	#2,SMPS_RAM.v_spcsfx_fm4_track.PlaybackControl(a6)	; Set 'SFX is overriding' track
; loc_723A6:
.doneoverride:
	tst.b	SMPS_RAM.v_sfx_psg3_track.PlaybackControl(a6)	; Is track playing?
    if SMPS_FixBugs
	bpl.s	.PSG3NotOverrided			; Branch if not
    else
	bpl.s	.locret					; Branch if not
    endif
	bset	#2,SMPS_RAM.v_spcsfx_psg3_track.PlaybackControl(a6) ; Set 'SFX is overriding' track
    if SMPS_FixBugs
	; The original driver made the mistake of silencing PSG3 when the
	; SFX track is using it, not the Special SFX
	rts

.PSG3NotOverrided:
    endif
	ori.b	#$1F,d4					; Command to silence channel
	lea	(SMPS_psg_input).l,a1
	move.b	d4,(a1)
	bchg	#5,d4					; Command to silence noise channel
	move.b	d4,(a1)
; locret_723C6:
.locret:
	rts
; End of function Sound_ChkValue
    endif

; ===========================================================================

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; Snd_FadeOut1: Snd_FadeOutSFX: FadeOutSFX:
StopSFX:
	clr.b	SMPS_RAM.variables.v_sndprio(a6)			; Clear priority
	lea	SMPS_RAM.v_sfx_track_ram(a6),a5
	moveq	#SMPS_SFX_TRACK_COUNT-1,d6	; 3 FM + 3 PSG (SFX)	; Clownacy | Now uses d6 instead of d7 so it doesn't conflict with Sound_PlayBGM
; loc_723EA:
.trackloop:
	tst.b	SMPS_Track.PlaybackControl(a5)	; Is track playing?
	bpl.w	.nexttrack			; Branch if not
	bclr	#7,SMPS_Track.PlaybackControl(a5)	; Stop track
	bclr	#4,SMPS_Track.PlaybackControl(a5)	; Clear 'do not attack next note'
	moveq	#0,d3
	move.b	SMPS_Track.VoiceControl(a5),d3	; Get voice control bits
	bmi.s	.trackpsg			; Branch if PSG
	bsr.w	FMNoteOff
    if SMPS_EnableSpecSFX
	cmpi.b	#4,d3				; Is this FM4?
	bne.s	.getfmpointer			; Branch if not
	tst.b	SMPS_RAM.v_spcsfx_fm4_track.PlaybackControl(a6)	; Is special SFX playing?
	bpl.s	.getfmpointer			; Branch if not
	; DANGER! there is a missing 'movea.l	a5,a3' here, without which the
	; code is broken. It is dangerous to do a fade out when a GHZ waterfall
	; is playing its sound!
    if SMPS_FixBugs
	movea.l	a5,a3
    endif

	lea	SMPS_RAM.v_spcsfx_fm4_track(a6),a5
	movea.l	SMPS_Track.VoicePtr(a5),a1	; Get special voice pointer
	bra.s	.gotfmpointer
    endif
; ===========================================================================
; loc_72416:
.getfmpointer:
	subq.w	#2,d3				; SFX only has FM3 and up
	add.w	d3,d3
	lea	SFX_BGMChannelRAM(pc),a0
	movea.l	a5,a3
	movea.w	(a0,d3.w),a5
	movea.l	SMPS_Track.VoicePtr(a5),a1		; Get music voice pointer
; loc_72428:
.gotfmpointer:
	bclr	#2,SMPS_Track.PlaybackControl(a5)	; Clear 'SFX is overriding' bit
	beq.s	.nooverride			; If it was already clear, branch and do nothing
	bset	#1,SMPS_Track.PlaybackControl(a5)	; Set 'track at rest' bit
	move.b	SMPS_Track.VoiceIndex(a5),d0	; Current voice
	bsr.w	SetVoice
.nooverride:
	movea.l	a3,a5
	bra.s	.nexttrack
; ===========================================================================
; loc_7243C:
.trackpsg:
	bsr.w	PSGNoteOff
    if SMPS_EnableSpecSFX
	lea	SMPS_RAM.v_spcsfx_psg3_track(a6),a0
	cmpi.b	#$E0,d3					; Is this a noise channel:
	beq.s	.gotpsgpointer				; Branch if yes
	cmpi.b	#$C0,d3					; Is this PSG 3?
	beq.s	.gotpsgpointer				; Branch if yes
    endif
	lsr.w	#4,d3
	lea	SFX_BGMChannelRAM(pc),a0
	movea.w	(a0,d3.w),a0
; loc_7245A:
.gotpsgpointer:
	bclr	#2,SMPS_Track.PlaybackControl(a0)		; Clear 'SFX is overriding' bit
	bset	#1,SMPS_Track.PlaybackControl(a0)		; Set 'track at rest' bit
	cmpi.b	#$E0,SMPS_Track.VoiceControl(a0)		; Is this a noise channel?
	bne.s	.nexttrack				; Branch if not
	move.b	SMPS_Track.PSGNoise(a0),(SMPS_psg_input).l	; Set noise type
; loc_72472:
.nexttrack:
	lea	SMPS_Track.len(a5),a5
	dbf	d6,.trackloop		; Clownacy | Now uses d6 instead of d7 so it doesn't conflict with Sound_PlayBGM
.locret:
	rts
; End of function StopSFX


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||
    if SMPS_EnableSpecSFX
; Snd_FadeOut2: Snd_FadeOutSFX2: FadeOutSpecSFX:
StopSpecSFX:
	lea	SMPS_RAM.v_spcsfx_fm4_track(a6),a5
	tst.b	SMPS_Track.PlaybackControl(a5)		; Is track playing?
	bpl.s	.fadedfm				; Branch if not
	bclr	#7,SMPS_Track.PlaybackControl(a5)		; Stop track
	btst	#2,SMPS_Track.PlaybackControl(a5)		; Is SFX overriding?
	bne.s	.fadedfm				; Branch if not
	bsr.w	SendFMNoteOff
	lea	SMPS_RAM.v_music_fm4_track(a6),a5
	bclr	#2,SMPS_Track.PlaybackControl(a5)		; Clear 'SFX is overriding' bit
	bset	#1,SMPS_Track.PlaybackControl(a5)		; Set 'track at rest' bit
	tst.b	SMPS_Track.PlaybackControl(a5)		; Is track playing?
	bpl.s	.fadedfm				; Branch if not
	movea.l	SMPS_Track.VoicePtr(a5),a1			; Voice pointer
	move.b	SMPS_Track.VoiceIndex(a5),d0		; Current voice
	bsr.w	SetVoice
; loc_724AE:
.fadedfm:
	lea	SMPS_RAM.v_spcsfx_psg3_track(a6),a5
	tst.b	SMPS_Track.PlaybackControl(a5)		; Is track playing?
	bpl.s	.fadedpsg				; Branch if not
	bclr	#7,SMPS_Track.PlaybackControl(a5)		; Stop track
	btst	#2,SMPS_Track.PlaybackControl(a5)		; Is SFX overriding?
	bne.s	.fadedpsg				; Return if not
	bsr.w	SendPSGNoteOff
	lea	SMPS_RAM.v_music_psg3_track(a6),a5
	bclr	#2,SMPS_Track.PlaybackControl(a5)		; Clear 'SFX is overriding' bit
	bset	#1,SMPS_Track.PlaybackControl(a5)		; Set 'track at rest' bit
	tst.b	SMPS_Track.PlaybackControl(a5)		; Is track playing?
	bpl.s	.fadedpsg				; Return if not
	cmpi.b	#$E0,SMPS_Track.VoiceControl(a5)		; Is this a noise channel?
	bne.s	.fadedpsg				; Return if not
	move.b	SMPS_Track.PSGNoise(a5),(SMPS_psg_input).l	; Set noise type
; locret_724E4:
.fadedpsg
	rts
; End of function StopSpecSFX
    endif
; ===========================================================================
; ---------------------------------------------------------------------------
; Fade out music
; ---------------------------------------------------------------------------
; Sound_E0:
FadeOutMusic:
	; Clownacy | In Sonic 2's driver, StopSFX is split into its own sound command
	; and StopSpecSFX is bumped out entirely
;	bsr.w	StopSFX
;    if SMPS_EnableSpecSFX
;	bsr.s	StopSpecSFX
;    endif
	move.b	#3,SMPS_RAM.variables.v_fadeout_delay(a6)		; Set fadeout delay to 3
	move.b	#$28,SMPS_RAM.variables.v_fadeout_counter(a6)	; Set fadeout counter
	bclr	#f_speedup,SMPS_RAM.variables.bitfield2(a6)			; Disable speed shoes tempo
	rts

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_72504:
DoFadeOut:
	move.b	SMPS_RAM.variables.v_fadeout_delay(a6),d0	; Has fadeout delay expired?
	beq.s	.continuefade		; Branch if yes
	subq.b	#1,SMPS_RAM.variables.v_fadeout_delay(a6)
	rts
; ===========================================================================
; loc_72510:
.continuefade:
	subq.b	#1,SMPS_RAM.variables.v_fadeout_counter(a6)	; Update fade counter
	beq.w	StopSoundAndMusic		; Branch if fade is done
	move.b	#3,SMPS_RAM.variables.v_fadeout_delay(a6)		; Reset fade delay
	lea	SMPS_RAM.v_music_dac_track(a6),a5
	tst.b	SMPS_Track.PlaybackControl(a5)	; Is track playing?
	bpl.s	.fadefm				; Branch if not
	addq.b	#4,SMPS_Track.Volume(a5)		; Increase volume attenuation
	bpl.s	.senddacvol			; Branch if still positive
	bclr	#7,SMPS_Track.PlaybackControl(a5)	; Stop track
	bra.s	.fadefm
; ===========================================================================

.senddacvol:
	bsr.w	SetDACVolume

.fadefm:
	lea	SMPS_RAM.v_music_track_ram(a6),a5
	moveq	#SMPS_MUSIC_FM_TRACK_COUNT-1,d7	; 6 FM tracks
; loc_72524:
.fmloop:
	tst.b	SMPS_Track.PlaybackControl(a5)	; Is track playing?
	bpl.s	.nextfm				; Branch if not
	addq.b	#1,SMPS_Track.Volume(a5)		; Increase volume attenuation
	bpl.s	.sendfmtl			; Branch if still positive
	bclr	#7,SMPS_Track.PlaybackControl(a5)	; Stop track
	bra.s	.nextfm
; ===========================================================================
; loc_72534:
.sendfmtl:
	bsr.w	SendVoiceTL
; loc_72538:
.nextfm:
	lea	SMPS_Track.len(a5),a5
	dbf	d7,.fmloop

	moveq	#SMPS_MUSIC_PSG_TRACK_COUNT-1,d7	; 3 PSG tracks
; loc_72542:
.psgloop:
	tst.b	SMPS_Track.PlaybackControl(a5)	; Is track playing?
	bpl.s	.nextpsg			; branch if not
	lea	SMPS_Track.Volume(a5),a0		; Optimise the following code that uses this
	addq.b	#1,(a0)				; Increase volume attenuation
	cmpi.b	#$10,(a0)			; Is it greater than $F?
	blo.s	.sendpsgvol			; Branch if not
	bclr	#7,SMPS_Track.PlaybackControl(a5)	; Stop track
	bra.s	.nextpsg
; ===========================================================================
; loc_72558:
.sendpsgvol:
	move.b	(a0),d6	; Store new volume attenuation
	bsr.w	SetPSGVolume
; loc_72560:
.nextpsg:
	lea	SMPS_Track.len(a5),a5
	dbf	d7,.psgloop

	rts
; End of function DoFadeOut


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

FMSilenceChannel:
	moveq	#3,d4
	moveq	#$40,d3
	moveq	#$7F,d1

-	move.b	d3,d0
	bsr.w	WriteFMIorII
	addq.b	#4,d3
	dbf	d4,-

	moveq	#3,d4
	move.b	#$80,d3
	moveq	#$F,d1

-	move.b	d3,d0
	bsr.w	WriteFMIorII
	addq.b	#4,d3
	dbf	d4,-

	bra.w	FMNoteOff
; End of function FMSilenceChannel

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_7256A:
FMSilenceAll:
	moveq	#2,d3		; 3 FM channels for each YM2612 parts
	moveq	#$28,d0		; FM key on/off register
; loc_7256E:
.noteoffloop:
	move.b	d3,d1
	bsr.w	WriteFMI
	addq.b	#4,d1		; Move to YM2612 part 1
	bsr.w	WriteFMI
	dbf	d3,.noteoffloop

	moveq	#$40,d0		; Set TL on FM channels...
	moveq	#$7F,d1		; ... to total attenuation...
	moveq	#2,d4		; ... for all 3 channels...
; loc_72584:
.channelloop:
	moveq	#3,d3		; ... for all operators on each channel...
; loc_72586:
.channeltlloop:
	bsr.w	WriteFMI		; ... for part 0...
	bsr.w	WriteFMII		; ... and part 1
	addq.w	#4,d0			; Next TL operator
	dbf	d3,.channeltlloop

	subi.b	#$F,d0		; Move to TL operator 1 of next channel
	dbf	d4,.channelloop

	rts
; End of function FMSilenceAll

; ===========================================================================
; ---------------------------------------------------------------------------
; Stop music
; ---------------------------------------------------------------------------
; Sound_E4:
StopSoundAndMusic:
	moveq	#$27,d0		; Timers, FM3/FM6 mode
	moveq	#0,d1		; FM3/FM6 normal mode, disable timers
	bsr.w	WriteFMI

	; Clear variables
	lea	SMPS_RAM.variables(a6),a0
	move.w	#(SMPS_RAM_Variables.len/4)-1,d1
	moveq	#0,d0
; loc_725B6:
.clearvariablesloop:
	move.l	d0,(a0)+
	dbf	d1,.clearvariablesloop

    if SMPS_RAM_Variables.len&2
	move.w	d0,(a0)+
    endif
    if SMPS_RAM_Variables.len&1
	move.b	d0,(a0)+
    endif

	; Clear track RAM
	lea	SMPS_RAM.v_music_track_ram(a6),a0
	move.w	#((SMPS_RAM.v_spcsfx_track_ram_end-SMPS_RAM.v_music_track_ram)/4)-1,d1	; Clear all variables and track data (don't really care about clearing the music track backup)

.cleartrackRAMloop:
	move.l	d0,(a0)+
	dbf	d1,.cleartrackRAMloop

    if (SMPS_RAM.v_spcsfx_track_ram_end-SMPS_RAM.v_music_track_ram)&2
	move.w	d0,(a0)+
    endif
    if (SMPS_RAM.v_spcsfx_track_ram_end-SMPS_RAM.v_music_track_ram)&1
	move.b	d0,(a0)+
    endif

	;move.b	d0,SMPS_RAM.variables.v_playsnd0(a6)	; Set music to $00 (silence)
	; From Vladikcomper:
	; "Playing sample $80 forces to stop playback."
	; "We need the Z80 to be stopped before this command executes and to be started directly afterwards."
	SMPS_stopZ80
	SMPS_waitZ80
	move.b  #$80,(SMPS_z80_ram+MegaPCM_DAC_Number).l	; stop DAC playback
	SMPS_startZ80

	pea	PSGSilenceAll(pc)
	bra.w	FMSilenceAll

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_725CA:
InitMusicPlayback:
	; WARNING: Must not use d7

	; Save several values
	move.b	SMPS_RAM.variables.v_sndprio(a6),d3
	move.b	SMPS_RAM.variables.bitfield2(a6),d4
	andi.b	#(1<<f_1up_playing)|(1<<f_speedup),d4
	move.b	SMPS_RAM.variables.v_fadein_counter(a6),d5
	move.l	SMPS_RAM.variables.v_playsnd1(a6),d6

	; Clear variables
	lea	SMPS_RAM.variables(a6),a0
	move.w	#(SMPS_RAM_Variables.len/4)-1,d1
	moveq	#0,d0

; loc_725E4:
.clearvariablesloop:
	move.l	d0,(a0)+
	dbf	d1,.clearvariablesloop

    if SMPS_RAM_Variables.len&2
	move.w	d0,(a0)+
    endif
    if SMPS_RAM_Variables.len&1
	move.b	d0,(a0)+
    endif

	; Clear music track RAM
	lea	SMPS_RAM.v_music_track_ram(a6),a0
	move.w	#((SMPS_RAM.v_music_track_ram_end-SMPS_RAM.v_music_track_ram)/4)-1,d1

; loc_725E4:
.clearramloop:
	move.l	d0,(a0)+
	dbf	d1,.clearramloop

    if (SMPS_RAM.v_music_track_ram_end-SMPS_RAM.v_music_track_ram)&2
	move.w	d0,(a0)+
    endif
    if (SMPS_RAM.v_music_track_ram_end-SMPS_RAM.v_music_track_ram)&1
	move.b	d0,(a0)+
    endif

	; Restore the values saved above
	move.b	d3,SMPS_RAM.variables.v_sndprio(a6)
	move.b	d4,SMPS_RAM.variables.bitfield2(a6)
	move.b	d5,SMPS_RAM.variables.v_fadein_counter(a6)
	move.l	d6,SMPS_RAM.variables.v_playsnd1(a6)
	;move.b	d6,SMPS_RAM.variables.v_playsnd0(a6)	; set music to $00 (silence)
	moveq	#0|((MegaPCM_VolumeTbls&$F000)>>8),d0	; Clownacy | Reset DAC volume to maximum
	bsr.w	WriteDACVolume

    if SMPS_FixBugs
	; InitMusicPlayback, and Sound_PlayBGM for that matter,
	; don't do a very good job of setting up the music tracks.
	; Tracks that aren't defined in a music file's header don't have
	; their channels defined, meaning .sendfmnoteoff won't silence
	; hardware properly. In combination with removing the below
	; calls to FMSilenceAll/PSGSilenceAll, this will cause hanging
	; notes.
	; To fix this, we'll just forcefully set all channels, here:
	lea	SMPS_RAM.v_music_track_ram+SMPS_Track.VoiceControl(a6),a1			; Start at the first music track...
	lea	ChannelInitBytes(pc),a2
	moveq	#SMPS_MUSIC_TRACK_COUNT-1,d1		; ...and continue to the last

.writeloop:
	move.b	(a2)+,(a1)		; Write track's channel byte
	lea	SMPS_Track.len(a1),a1		; Next track
	dbf	d1,.writeloop		; Loop for all DAC/FM/PSG tracks

	rts
    else
	; Clownacy | We don't need this, especially since .sfxstoploop does the
	; same thing, only better (it only silences the music channels).
	; This actually causes a bug in S1's driver, where an SFX is interrupted
	; when a new song starts, causing sound distortion. S2 just stopped all
	; SFX when a new song plays, which just hides the problem.
	pea	PSGSilenceAll(pc)
	bra.w	FMSilenceAll
    endif
; End of function InitMusicPlayback


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_7260C:
TempoWait:	; Clownacy | Ported straight from S3K's Z80 driver
	move.b	SMPS_RAM.variables.v_main_tempo(a6),d0				; Get current tempo value
	add.b	d0,SMPS_RAM.variables.v_main_tempo_timeout(a6)
	bcc.s	.skipdelay					; If the addition did not overflow, return
	lea	SMPS_RAM.v_music_track_ram+SMPS_Track.DurationTimeout(a6),a0	; Duration timeout of first track
	moveq	#SMPS_MUSIC_TRACK_COUNT-1,d1	; Number of tracks (1x DAC + 6x FM + 3x PSG)

.delayloop:
	addq.b	#1,(a0)					; Delay notes another frame
	lea	SMPS_Track.len(a0),a0					; Advance to next track
	dbf	d1,.delayloop				; Loop for all tracks
; loc_71B9E:
.skipdelay:
	rts
; End of function TempoWait

; ===========================================================================
; ---------------------------------------------------------------------------
; Speed	up music
; ---------------------------------------------------------------------------
; Sound_E2:
SpeedUpMusic:
	btst	#f_1up_playing,SMPS_RAM.variables.bitfield2(a6)
	bne.s	SpeedUpMusic_1up
	move.b	SMPS_RAM.variables.v_speeduptempo(a6),SMPS_RAM.variables.v_main_tempo(a6)
	bset	#f_speedup,SMPS_RAM.variables.bitfield2(a6)
	rts
; ===========================================================================
; loc_7263E: .speedup_1up:
SpeedUpMusic_1up:
	move.b	SMPS_RAM.variables_backup.v_speeduptempo(a6),SMPS_RAM.variables_backup.v_main_tempo(a6)
	bset	#f_speedup,SMPS_RAM.variables_backup.bitfield2(a6)
	rts
; ===========================================================================
; ---------------------------------------------------------------------------
; Change music back to normal speed
; ---------------------------------------------------------------------------
; Sound_E3:
SlowDownMusic:
	btst	#f_1up_playing,SMPS_RAM.variables.bitfield2(a6)
	bne.s	SlowDownMusic_1up
	move.b	SMPS_RAM.variables.v_tempo_mod(a6),SMPS_RAM.variables.v_main_tempo(a6)
	bclr	#f_speedup,SMPS_RAM.variables.bitfield2(a6)
	rts
; ===========================================================================
; loc_7266A: .slowdown_1up:
SlowDownMusic_1up:
	move.b	SMPS_RAM.variables_backup.v_tempo_mod(a6),SMPS_RAM.variables_backup.v_main_tempo(a6)
	bclr	#f_speedup,SMPS_RAM.variables_backup.bitfield2(a6)
	rts

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_7267C:
DoFadeIn:
	tst.b	SMPS_RAM.variables.v_fadein_delay(a6)	; Has fadein delay expired?
	beq.s	.continuefade		; Branch if yes
	subq.b	#1,SMPS_RAM.variables.v_fadein_delay(a6)
	rts
; ===========================================================================
; loc_72688:
.continuefade:
	tst.b	SMPS_RAM.variables.v_fadein_counter(a6)	; Is fade done?
	beq.s	.fadedone		; Branch if yes
	subq.b	#1,SMPS_RAM.variables.v_fadein_counter(a6)	; Update fade counter
	move.b	#2,SMPS_RAM.variables.v_fadein_delay(a6)	; Reset fade delay
	lea	SMPS_RAM.v_music_dac_track(a6),a5
	tst.b	SMPS_Track.PlaybackControl(a5) ; Is track playing?
	bpl.s	.fadefm			; Branch if not
	subq.b	#4,SMPS_Track.Volume(a5)	; Reduce volume attenuation
	bsr.w	SetDACVolume

.fadefm:
	lea	SMPS_RAM.v_music_fm_tracks(a6),a5
	moveq	#SMPS_MUSIC_FM_TRACK_COUNT-1,d7	; 6 FM tracks
; loc_7269E:
.fmloop:
	tst.b	SMPS_Track.PlaybackControl(a5)	; Is track playing?
	bpl.s	.nextfm				; Branch if not
	subq.b	#1,SMPS_Track.Volume(a5)		; Reduce volume attenuation
	bsr.w	SendVoiceTL
; loc_726AA:
.nextfm:
	lea	SMPS_Track.len(a5),a5
	dbf	d7,.fmloop
	moveq	#SMPS_MUSIC_PSG_TRACK_COUNT-1,d7	; 3 PSG tracks
; loc_726B4:
.psgloop:
	tst.b	SMPS_Track.PlaybackControl(a5)	; Is track playing?
	bpl.s	.nextpsg			; Branch if not
	subq.b	#1,SMPS_Track.Volume(a5)		; Reduce volume attenuation
	move.b	SMPS_Track.Volume(a5),d6		; Get value
;	cmpi.b	#$10,d6				; Is it is < $10?	; Clownacy | This correction is moved to SetPSGVolume (the S2 way)
;	blo.s	.sendpsgvol			; Branch if yes
;	moveq	#$F,d6				; Limit to $F (maximum attenuation)
    if SMPS_FixBugs
	; While the above check is now pointless, we could do with checking for maximum volume
	cmpi.b	#-1,d6				; Has value underflowed to <0?
	bne.s	.sendpsgvol			; Branch if not
	moveq	#0,d6				; Cap at 0 
; loc_726C8:
.sendpsgvol:
    endif
	bsr.w	SetPSGVolume
; loc_726CC:
.nextpsg:
	lea	SMPS_Track.len(a5),a5
	dbf	d7,.psgloop
.locret:
	rts
; ===========================================================================
; loc_726D6:
.fadedone:	; Modified version of MJ's original DAC fade-in fix
	bclr	#f_fadein_flag,SMPS_RAM.variables.bitfield2(a6)		; Stop fadein
	tst.b	SMPS_RAM.v_music_dac_track.PlaybackControl(a6)		; is the DAC channel running?
	bpl.s	.locret					; if not, return
;.DAC:
	move.b	#$B6,d0					; MJ: AMS/FMS/panning of FM6
	move.b	SMPS_RAM.v_music_dac_track.AMSFMSPan(a6),d1		; MJ: load DAC channel's L/R/AMS/FMS value
	bra.w	WriteFMII				; MJ: write to FM 6

;.locret:
;	rts
; End of function DoFadeIn

; ===========================================================================

SetDACVolume:
	moveq	#0,d0
	move.b	SMPS_Track.Volume(a5),d0
	cmpi.b	#$7F,d0	; $7F is the last valid volume
	bhi.s	.maxreached
	lsr.b	#3,d0
	andi.b	#$F,d0
	ori.b	#(MegaPCM_VolumeTbls&$F000)>>8,d0
	bra.s	WriteDACVolume
.maxreached:
	moveq	#$F|((MegaPCM_VolumeTbls&$F000)>>8),d0	; cap at maximum value (minimum volume)
	;bra.s	WriteDACVolume

WriteDACVolume:
	SMPS_stopZ80
	SMPS_waitZ80
	move.b	d0,(SMPS_z80_ram+MegaPCM_DAC_Volume).l
	SMPS_startZ80
	rts
; End of function SetDACVolume

; ===========================================================================

; loc_726E2:
FMNoteOn:
	btst	#1,SMPS_Track.PlaybackControl(a5)	; Is track resting?
	bne.s	locret_726FC			; Return if so
	btst	#2,SMPS_Track.PlaybackControl(a5)	; Is track being overridden?
	bne.s	locret_726FC			; Return if so
	cmpi.b	#6,SMPS_Track.VoiceControl(a5)	; If this FM6?
	bne.s	.notfm6				; If not, branch
	moveq	#$2B,d0				; DAC enable/disable register
	moveq	#0,d1				; Disable DAC (letting FM6 run)
	bsr.w	WriteFMI
.notfm6:
	moveq	#$28,d0				; Note on/off register
	move.b	SMPS_Track.VoiceControl(a5),d1	; Get channel bits
	ori.b	#$F0,d1				; Note on on all operators
	bra.s	WriteFMI
; ===========================================================================
locret_726FC:
	rts

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_726FE:
FMNoteOff:
	btst	#4,SMPS_Track.PlaybackControl(a5)	; Is 'do not attack next note' set?
	bne.s	locret_726FC			; Return if yes
	btst	#2,SMPS_Track.PlaybackControl(a5)	; Is SFX overriding?
	bne.s	locret_726FC			; Return if yes
; loc_7270A:
SendFMNoteOff:
	moveq	#$28,d0				; Note on/off register
	move.b	SMPS_Track.VoiceControl(a5),d1	; Note off to this channel
	bra.s	WriteFMI
; End of function FMNoteOff

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_72722:
WriteFMIorII:
	btst	#2,SMPS_Track.VoiceControl(a5)	; Is this bound for part I or II?
	bne.s	WriteFMIIPart			; Branch if for part II
	add.b	SMPS_Track.VoiceControl(a5),d0	; Add in voice control bits
; End of function WriteFMIorII


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; List of cycle counts from various revisions of WriteFMI (Write cycles + 'wait for YM' cycles)


; (SMPS 68k Type 1a)
;  Michael Jackson's Moonwalker:
;	32(6/2) + 68(14/0)
;  Strider Hiryuu
;	32(6/2) + 58(12/0) (Slightly optimised by replacing a btst #7's function with a bmi)


; (SMPS 68k Type 1b)
;  Sonic the Hedgehog:
;	32(6/2) + 80(17/0) (Interestingly, this uses the Type 1a version, with some nops)
;  Mega PCM standard:
;	52(10/3) + 102(21/0)
;  Clone Driver v2:
;	40(7/3) + 74(15/0)
;  Golden Axe 2:
;	32(6/2) + 44(9/0)
;  Nekketsu Koukou Dodgeball Bu Soccer Hen MD:
;	32(6/2) + 40(8/0) (Like Golden Axe 2 minus the nop)


; (SMPS 68k Type 2)
;  Fatal Fury:
;	Same as Golden Axe 2
;  Fatal Fury 2:
;	Same as Golden Axe 2
;  Golden Axe 3:
;	Same as Golden Axe 2
;  Phantasy Star: The End of the Millenium
;	Same as Golden Axe 2
;  Super Shinobi II
;	Same as Golden Axe 2
;  Bishoujo Senshi Sailor Moon
;	Same as Golden Axe 2

; Vladikcomper's modified WriteFMI, optimised by Clownacy
; sub_7272E:
WriteFMI:
	SMPS_stopZ80
	SMPS_waitZ80
	lea	(SMPS_ym2612_a0).l,a0		; 12(3/0)
	SMPS_waitYM				; 24(5/0)
	move.b	d0,(a0)		; ym2612_a0	; 8(1/1)
	SMPS_waitYM (a0)+			; 8(2/0) + 18(4/0)
	move.b	d1,(a0)		; ym2612_d0	; 8(1/1)
	SMPS_waitYM -(a0)			; 10(2/0) + 18(4/0)
	move.b	#$2A,(a0)	; ym2612_a0	; 12(2/1)
	SMPS_startZ80				; Total: 40(7/3) + 78(17/0)
	rts
; End of function WriteFMI

; ===========================================================================
; loc_7275A:
WriteFMIIPart:
	move.b	SMPS_Track.VoiceControl(a5),d2	; Get voice control bits
	bclr	#2,d2				; Clear chip toggle
	add.b	d2,d0				; Add in to destination register

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; Vladikcomper's modified WriteFMII, optimised by Clownacy
; sub_72764:
WriteFMII:
	SMPS_stopZ80
	SMPS_waitZ80
	lea	(SMPS_ym2612_a0).l,a0		; 12(3/0)
	SMPS_waitYM				; 24(5/0)
	move.b	d0,2(a0)	; ym2612_a1	; 12(2/1)
	SMPS_waitYM				; 24(5/0)
	move.b	d1,3(a0)	; ym2612_d1	; 12(2/1)
	SMPS_waitYM				; 24(5/0)
	move.b	#$2A,(a0)	; ym2612_a0	; 12(2/1)
	SMPS_startZ80				; Total: 48(9/3) + 72(15/0)
	rts
; End of function WriteFMII

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_72850:
PSGUpdateTrack:
	subq.b	#1,SMPS_Track.DurationTimeout(a5)	; Update note timeout
	bne.s	.notegoing
	bclr	#4,SMPS_Track.PlaybackControl(a5)	; Clear 'do not attack note' flag
	bsr.s	PSGDoNext
	bsr.w	PSGDoNoteOn
	bsr.w	PSGDoVolFX
	; Clownacy | Sonic 2 adds these two branches
	bsr.w	DoModulation
	bra.w	PSGUpdateFreq
; ===========================================================================
; loc_72866:
.notegoing:
	bsr.w	NoteFillUpdate
	bsr.w	PSGUpdateVolFX
	bsr.w	DoModulation
	bra.w	PSGUpdateFreq
; End of function PSGUpdateTrack


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_72878:
PSGDoNext:
	bclr	#1,SMPS_Track.PlaybackControl(a5)	; Clear 'track at rest' bit
	movea.l	SMPS_Track.DataPointer(a5),a4	; Get track data pointer
; loc_72880:
.noteloop:
	moveq	#0,d5
	move.b	(a4)+,d5	; Get byte from track
	cmpi.b	#$FE,d5		; Is it a coord. flag?
	blo.s	.gotnote	; Branch if not
	bsr.w	CoordFlag
	bra.s	.noteloop
; ===========================================================================
; loc_72890:
.gotnote:
	tst.b	d5			; Is it a note?
	bpl.w	.gotduration		; Branch if not
	bsr.s	PSGSetFreq
	move.b	(a4)+,d5		; Get another byte
	tst.b	d5			; Is it a duration?
	bpl.w	.gotduration		; Branch if yes
	subq.w	#1,a4			; Put byte back
	bra.w	FinishTrackUpdate
; ===========================================================================
; loc_728A4:
.gotduration:
	bsr.w	SetDuration
	bra.w	FinishTrackUpdate
; End of function PSGDoNext


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_728AC:
PSGSetFreq:
	subi.b	#$81,d5			; Convert to 0-based index
	blo.s	.restpsg		; If $80, put track at rest
	add.b	SMPS_Track.Transpose(a5),d5	; Add in channel transposition
	andi.w	#$7F,d5			; Clear high byte and sign bit
	add.w	d5,d5
	move.w	PSGFrequencies(pc,d5.w),SMPS_Track.Freq(a5)	; Set new frequency
	; Clownacy | Sonic 2's driver doesn't continue to FinishTrackUpdate
	rts
; ===========================================================================
; loc_728CA:
.restpsg:
	bset	#1,SMPS_Track.PlaybackControl(a5)	; Set 'track at rest' bit
	move.w	#-1,SMPS_Track.Freq(a5)		; Invalidate note frequency
	; Clownacy | Sonic 2's driver doesn't continue to FinishTrackUpdate
	bra.w	PSGNoteOff
; End of function PSGSetFreq

; ===========================================================================
; word_729CE:
PSGFrequencies:
	; This table starts with 12 notes not in S1 or S2:
	dc.w $3FF, $3FF, $3FF, $3FF, $3FF, $3FF, $3FF, $3FF
	dc.w $3FF, $3F7, $3BE, $388
	; The following notes are present on S1 and S2 too:
	dc.w $356, $326, $2F9, $2CE, $2A5, $280, $25C, $23A
	dc.w $21A, $1FB, $1DF, $1C4, $1AB, $193, $17D, $167
	dc.w $153, $140, $12E, $11D, $10D,  $FE,  $EF,  $E2
	dc.w  $D6,  $C9,  $BE,  $B4,  $A9,  $A0,  $97,  $8F
	dc.w  $87,  $7F,  $78,  $71,  $6B,  $65,  $5F,  $5A
	dc.w  $55,  $50,  $4B,  $47,  $43,  $40,  $3C,  $39
	dc.w  $36,  $33,  $30,  $2D,  $2B,  $28,  $26,  $24
	dc.w  $22,  $20,  $1F,  $1D,  $1B,  $1A,  $18,  $17
	dc.w  $16,  $15,  $13,  $12,  $11,  $10,    0,    0

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_728DC:
PSGDoNoteOn:
	move.w	SMPS_Track.Freq(a5),d6	; Get note frequency
	bmi.s	PSGSetRest		; If invalid, branch
; End of function PSGDoNoteOn


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_728E2:
PSGUpdateFreq:
	move.b	SMPS_Track.Detune(a5),d0		; Get detune value
	ext.w	d0
	add.w	d0,d6				; Add to frequency
	btst	#2,SMPS_Track.PlaybackControl(a5)	; Is track being overridden?
	bne.s	.locret				; Return if yes
	btst	#1,SMPS_Track.PlaybackControl(a5)	; Is track at rest?
	bne.s	.locret				; Return if yes
	move.b	SMPS_Track.VoiceControl(a5),d0	; Get channel bits
	cmpi.b	#$E0,d0				; Is it a noise channel?
	bne.s	.notnoise			; Branch if not
	move.b	#$C0,d0				; Use PSG 3 channel bits
; loc_72904:
.notnoise:
	move.w	d6,d1
	andi.b	#$F,d1		; Low nibble of frequency
	or.b	d1,d0		; Latch tone data to channel
	lsr.w	#4,d6		; Get upper 6 bits of frequency
	andi.b	#$3F,d6		; Send to latched channel
	lea	(SMPS_psg_input).l,a0
	move.b	d0,(a0)
	move.b	d6,(a0)
; locret_7291E:
.locret:
	rts
; End of function PSGUpdateFreq

; ===========================================================================
; loc_72920:
PSGSetRest:
	bset	#1,SMPS_Track.PlaybackControl(a5)

locret_72924:
	rts

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_72926:
PSGUpdateVolFX:
	tst.b	SMPS_Track.VoiceIndex(a5)	; Test PSG tone
	beq.s	locret_72924		; Return if it is zero
; loc_7292E:
PSGDoVolFX:
	; Clownacy | Rearranged to closer fit Super Shinobi 2's version of this code (SMPS 68k Type 2)
	; from which the additional PSG flags were ported
	move.b	SMPS_Track.Volume(a5),d6	; Get volume
	moveq	#0,d0
	move.b	SMPS_Track.VoiceIndex(a5),d0 ; Get PSG tone
	beq.s	SetPSGVolume
	lea	(PSG_Index).l,a0
	subq.w	#1,d0
	add.w	d0,d0
	add.w	d0,d0
	movea.l	(a0,d0.w),a0

PSGDoVolFX_Loop:
	moveq	#0,d0
	move.b	SMPS_Track.VolFlutter(a5),d0	; Get flutter index
	addq.b	#1,SMPS_Track.VolFlutter(a5)	; Increment flutter index
	move.b	(a0,d0.w),d0		; Get flutter value
	bpl.s	.gotflutter		; If it is not a terminator, branch
	cmpi.b	#$81,d0			; Clownacy | Most commonly used
	beq.s	VolEnv_Hold		; 81 - hold at current level
	cmpi.b	#$83,d0			; Clownacy | Second most commonly used
	beq.s	VolEnv_Off		; 83 - turn Note Off
	cmpi.b	#$80,d0			; Clownacy | Third most commonly used
	beq.s	VolEnv_Reset		; 80 - loop back to beginning
	cmpi.b	#$82,d0			; Clownacy | Fourth most commonly used
	beq.s	VolEnv_Jump2Idx		; 82 xx	- jump to byte xx
; loc_72960:
.gotflutter:
	add.w	d0,d6		; Add flutter to volume
;	cmpi.b	#$10,d6		; Is volume $10 or higher?	; Clownacy | This correction is moved to SetPSGVolume (the S2 way)
;	blo.s	SetPSGVolume	; Branch if not
;	moveq	#$F,d6		; Limit to silence and fall through
; End of function PSGUpdateVolFX


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_7296A:
SetPSGVolume:
	btst	#1,SMPS_Track.PlaybackControl(a5)	; Is track at rest?
	bne.s	locret_7298A			; Return if so
	btst	#2,SMPS_Track.PlaybackControl(a5)	; Is SFX overriding?
	bne.s	locret_7298A			; Return if so
	btst	#4,SMPS_Track.PlaybackControl(a5)	; Is track set to not attack next note?
	bne.s	PSGCheckNoteFill		; Branch if yes
; loc_7297C:
PSGSendVolume:
	; Clownacy | This correction is present elsewhere in S1's driver, but just having
	; a single copy here saves space and eliminates the few instances where the correction
	; isn't performed
	cmpi.b	#$10,d6				; Is volume $10 or higher?
	blo.s	+				; Branch if not
	moveq	#$F,d6				; Limit to silence and fall through
+
	or.b	SMPS_Track.VoiceControl(a5),d6	; Add in track selector bits
	ori.b	#$10,d6				; Mark it as a volume command
	move.b	d6,(SMPS_psg_input).l

locret_7298A:
	rts
; ===========================================================================
; loc_7298C:
PSGCheckNoteFill:
	tst.b	SMPS_Track.NoteFillMaster(a5)	; Is note fill on?
	beq.s	PSGSendVolume			; Branch if not
	tst.b	SMPS_Track.NoteFillTimeout(a5)	; Has note fill timeout expired?
	bne.s	PSGSendVolume			; Branch if not
	rts
; End of function SetPSGVolume

; ===========================================================================
	; Clownacy | This isn't used by any current PSGs
	; but for the sake of forwards compatibility, it's here
VolEnv_Jump2Idx:
	move.b	1(a0,d0.w),SMPS_Track.VolFlutter(a5)	; Change flutter index to the byte following the flag
	bra.s	PSGDoVolFX_Loop

; ===========================================================================

VolEnv_Reset:	; For compatibility with S3K
	clr.b	SMPS_Track.VolFlutter(a5)
	bra.s	PSGDoVolFX_Loop

; ===========================================================================
; loc_7299A: FlutterDone:
VolEnv_Hold:
	subq.b	#1,SMPS_Track.VolFlutter(a5)	; Decrement flutter index
	rts

; ===========================================================================

VolEnv_Off:	; For compatibility with S3K
	subq.b	#1,SMPS_Track.VolFlutter(a5)	; Decrement flutter index
	bset	#1,SMPS_Track.PlaybackControl(a5)	; Set 'track at rest' bit
;	bra.s	PSGNoteOff

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_729A0:
PSGNoteOff:
	btst	#2,SMPS_Track.PlaybackControl(a5)	; Is SFX overriding?
	bne.s	locret_729B4			; Return if so
; loc_729A6:
SendPSGNoteOff:
	move.b	SMPS_Track.VoiceControl(a5),d0	; PSG channel to change
	ori.b	#$1F,d0				; Maximum volume attenuation
	move.b	d0,(SMPS_psg_input).l
    if SMPS_FixBugs
	; Without InitMusicPlayback forcefully muting all channels, there's the
	; risk of music accidentally playing noise because it can't detect if
	; the PSG 4/noise channel needs muting, on track initialisation.
	; This bug can be heard be playing the End of Level music in CNZ, whose
	; music uses the noise channel. S&K's driver contains a fix just like this.
	cmpi.b	#$DF,d0			; Are we stopping PSG 3?
	bne.s	locret_729B4
	move.b	#$FF,(SMPS_psg_input).l	; If so, stop noise channel while we're at it
    endif
locret_729B4:
	rts
; End of function PSGNoteOff


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_729B6:
PSGSilenceAll:
	lea	(SMPS_psg_input).l,a0
	move.b	#$9F,(a0)	; Silence PSG 1
	move.b	#$BF,(a0)	; Silence PSG 2
	move.b	#$DF,(a0)	; Silence PSG 3
	move.b	#$FF,(a0)	; Silence noise channel
	rts
; End of function PSGSilenceAll

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_72A5A:
CoordFlag:
	cmpi.b	#$FE,d5		; Clownacy | smpsNoAttack doesn't like being two bytes, so it uses the unique $FE byte
	beq.w	cfPreventAttack
	move.b	(a4)+,d5	; Clownacy | The true coord flag value follows the $FF
	add.w	d5,d5
	add.w	d5,d5
	jmp	coordflagLookup(pc,d5.w)
; End of function CoordFlag

; ===========================================================================
; loc_72A64:
coordflagLookup:
	bra.w	cfPanningAMSFMS		; $FF, $00	Clownacy | Was $E0
; ===========================================================================
	bra.w	cfDetune		; $FF, $01	Clownacy | Was $E1
; ===========================================================================
	bra.w	cfSetCommunication	; $FF, $02	Clownacy | Was $E2
; ===========================================================================
	bra.w	cfJumpReturn		; $FF, $03	Clownacy | Was $E3
; ===========================================================================
	bra.w	cfFadeInToPrevious	; $FF, $04	Clownacy | Was $E4
; ===========================================================================
	bra.w	cfSetTempoDivider	; $FF, $05	Clownacy | Was $E5
; ===========================================================================
	bra.w	cfChangeFMVolume	; $FF, $06	Clownacy | Was $E6
; ===========================================================================
    if SMPS_EnableSpecSFX
	bra.w	cfStopSpecialFM4	; $FF, $07	Clownacy | Was $EE
    else
	bra.w	cfStopTrack
    endif
; ===========================================================================
	bra.w	cfNoteFill		; $FF, $08	Clownacy | Was $E8
; ===========================================================================
	bra.w	cfChangeTransposition	; $FF, $09	Clownacy | Was $E9
; ===========================================================================
	bra.w	cfSetTempo		; $FF, $0A	Clownacy | Was $EA
; ===========================================================================
	bra.w	cfSetTempoMod		; $FF, $0B	Clownacy | Was $EB
; ===========================================================================
	bra.w	cfChangePSGVolume	; $FF, $0C	Clownacy | Was $EC
; ===========================================================================
	bra.w	cfSetVoice		; $FF, $0D	Clownacy | Was $EF
; ===========================================================================
	bra.w	cfModulation		; $FF, $0E	Clownacy | Was $F0
; ===========================================================================
	bra.w	cfEnableModulation	; $FF, $0F	Clownacy | Was $F1
; ===========================================================================
	bra.w	cfStopTrack		; $FF, $10	Clownacy | Was $F2
; ===========================================================================
	bra.w	cfSetPSGNoise		; $FF, $11	Clownacy | Was $F3
; ===========================================================================
	bra.w	cfDisableModulation	; $FF, $12	Clownacy | Was $F4
; ===========================================================================
	bra.w	cfSetPSGTone		; $FF, $13	Clownacy | Was $F5
; ===========================================================================
	bra.w	cfJumpTo		; $FF, $14	Clownacy | Was $F6
; ===========================================================================
	bra.w	cfRepeatAtPos		; $FF, $15	Clownacy | Was $F7
; ===========================================================================
	bra.w	cfJumpToGosub		; $FF, $16	Clownacy | Was $F8
; ===========================================================================
	bra.w	cfChanFMCommand		; $FF, $17	Clownacy | Brand new
; ===========================================================================
	bra.w	cfSilenceStopTrack	; $FF, $18	Clownacy | Brand new
; ===========================================================================
	bra.w	cfPlayDACSample		; $FF, $19	Clownacy | Brand new
; ===========================================================================
	bra.w	cfPlaySound		; $FF, $1A	Clownacy | Brand new
; ===========================================================================
	bra.w	cfSetKey		; $FF, $1B	Clownacy | Brand new
; ===========================================================================
	bra.w	cfSetVolume		; $FF, $1C	Clownacy | Brand new
; ===========================================================================
	bra.w	cfNoteFillS3K		; $FF, $1D	Clownacy | Brand new
; ===========================================================================
    if SMPS_EnableContSFX
	bra.w	cfLoopContinuousSFX	; $FF, $1E	Clownacy | Brand new
    else
	addq.w	#2,a4			; Skip parameters
	rts
    endif
; ===========================================================================
    if SMPS_PushSFXBehaviour
	bra.w	cfClearPush		; $FF, $1F	Clownacy | Was $ED
    else
	rts
	nop
    endif
; ===========================================================================
	bra.w	cfSendFMI		; $FF, $20	Clownacy | Brand new
; ===========================================================================
; loc_72ACC:
cfPanningAMSFMS:
	move.b	(a4)+,d1		; New AMS/FMS/panning value
	tst.b	SMPS_Track.VoiceControl(a5)	; Is this a PSG track?
	bmi.s	locret_72AEA		; Return if yes
	btst	#2,SMPS_Track.PlaybackControl(a5)
	bne.s	locret_72AEA
	move.b	SMPS_Track.AMSFMSPan(a5),d0	; Get current AMS/FMS/panning
	andi.b	#$37,d0			; Retain bits 0-2, 3-4 if set
	or.b	d0,d1			; Mask in new value
	move.b	d1,SMPS_Track.AMSFMSPan(a5)	; Store value
	btst	#2,SMPS_Track.PlaybackControl(a5)	; Is track being overriden by sfx?
	bne.s	locret_72AEA			; Return if yes
	move.b	#$B4,d0			; Command to set AMS/FMS/panning
	bra.w	WriteFMIorII
; ===========================================================================
; loc_72AEC: cfAlterNotes:
cfDetune:
	move.b	(a4)+,SMPS_Track.Detune(a5)	; Set detune value
locret_72AEA:
	rts
; ===========================================================================
; loc_72AF2:
cfSetCommunication:
	move.b	(a4)+,SMPS_RAM.variables.v_communication_byte(a6)	; Set otherwise unused communication byte to parameter
	rts
; ===========================================================================
; loc_72AF8:
cfJumpReturn:
	moveq	#0,d0
	move.b	SMPS_Track.StackPointer(a5),d0	; Track stack pointer
	movea.l	(a5,d0.w),a4			; Set track return address
	clr.l	(a5,d0.w)			; Set 'popped' value to zero
	addq.w	#2,a4				; Skip jump target address from gosub flag
	addq.b	#4,d0				; Actually 'pop' value
	move.b	d0,SMPS_Track.StackPointer(a5)	; Set new stack pointer
	rts
; ===========================================================================
; loc_72B14:
cfFadeInToPrevious:
	; Clownacy | We're restoring the variables and tracks separately, as the backed-up variables are now after the backed-up tracks
	; this is so the backed-up tracks and SFX tracks start at the same place: at the end of the music tracks
	lea	SMPS_RAM.v_music_track_ram(a6),a0
	lea	SMPS_RAM.v_1up_ram_copy(a6),a1
	move.w	#((SMPS_RAM.v_music_track_ram_end-SMPS_RAM.v_music_track_ram)/4)-1,d0	; restore music track data
; loc_72B1E:
.restoretrackramloop:
	move.l	(a1)+,(a0)+
	dbf	d0,.restoretrackramloop

	; Clownacy | Make sure the last few bytes get cleared
    if (SMPS_RAM.v_music_track_ram_end-SMPS_RAM.v_music_track_ram)&2
	move.w	(a1)+,(a0)+
    endif
    if (SMPS_RAM.v_music_track_ram_end-SMPS_RAM.v_music_track_ram)&1
	move.b	(a1)+,(a0)+
    endif

	lea	SMPS_RAM.variables(a6),a0
	lea	SMPS_RAM.variables_backup(a6),a1
	move.w	#(SMPS_RAM_Variables.len/4)-1,d0	; restore variables
; loc_72B1E:
.restorevariablesloop:
	move.l	(a1)+,(a0)+
	dbf	d0,.restorevariablesloop

	; Clownacy | Make sure the last few bytes get restored
    if SMPS_RAM_Variables.len&2
	move.w	(a1)+,(a0)+
    endif
    if SMPS_RAM_Variables.len&1
	move.b	(a1)+,(a0)+
    endif

	lea	SMPS_RAM.v_music_track_ram(a6),a0
	moveq	#SMPS_MUSIC_TRACK_COUNT-1,d0	; 1 DAC + 6 FM + 3 PSG tracks
; loc_71FE6:
.restoreplaybackloop:
	move.b	SMPS_Track.PlaybackControlBackup(a0),SMPS_Track.PlaybackControl(a0)
	lea	SMPS_Track.len(a0),a0
	dbf	d0,.restoreplaybackloop

	movea.l	a5,a3
	moveq	#$28,d6
	sub.b	SMPS_RAM.variables.v_fadein_counter(a6),d6			; If fade already in progress, this adjusts track volume accordingly
	lea	SMPS_RAM.v_music_dac_track(a6),a5
	btst	#7,SMPS_Track.PlaybackControl(a5)	; Is track playing?
	beq.s	.fadefm				; Branch if not
	bset	#1,SMPS_Track.PlaybackControl(a5)	; Set 'track at rest' bit
	move.b	d6,d0
	add.b	d0,d0
	add.b	d0,d0
	add.b	d0,SMPS_Track.Volume(a5)		; Apply current volume fade-in
	btst	#2,SMPS_Track.PlaybackControl(a5)	; Is SFX overriding?
	bne.s	.fadefm				; Branch if yes
	bsr.w	SetDACVolume

.fadefm:
	moveq	#SMPS_MUSIC_FM_TRACK_COUNT-1,d7 ; 6 FM tracks
	lea	SMPS_RAM.v_music_fm_tracks(a6),a5
; loc_72B3A:
.fmloop:
	tst.b	SMPS_Track.PlaybackControl(a5)	; Is track playing?
	bpl.s	.nextfm				; Branch if not
	bset	#1,SMPS_Track.PlaybackControl(a5)	; Set 'track at rest' bit
	add.b	d6,SMPS_Track.Volume(a5)		; Apply current volume fade-in
	btst	#2,SMPS_Track.PlaybackControl(a5)	; Is SFX overriding?
	bne.s	.nextfm				; Branch if yes
	moveq	#0,d0
	move.b	SMPS_Track.VoiceIndex(a5),d0	; Get voice
	movea.l	SMPS_Track.VoicePtr(a5),a1		; Voice pointer
	bsr.w	SetVoice
; loc_72B5C:
.nextfm:
	lea	SMPS_Track.len(a5),a5
	dbf	d7,.fmloop

	moveq	#SMPS_MUSIC_PSG_TRACK_COUNT-1,d7
; loc_72B66:
.psgloop:
	tst.b	SMPS_Track.PlaybackControl(a5)	; Is track playing?
	bpl.s	.nextpsg			; Branch if not
	bset	#1,SMPS_Track.PlaybackControl(a5)	; Set 'track at rest' bit
	bsr.w	PSGNoteOff
	add.b	d6,SMPS_Track.Volume(a5)		; Apply current volume fade-in
    if SMPS_FixBugs
	; Clownacy | One of Valley Bell's fixes: this restores the noise mode if need be, avoiding a bug where unwanted noise plays
	cmpi.b	#$E0,SMPS_Track.VoiceControl(a5)		; Is this a noise channel?
	bne.s	.nextpsg				; Branch if not
	move.b	SMPS_Track.PSGNoise(a5),(SMPS_psg_input).l	; Set noise type
    endif

; loc_72B78:
.nextpsg:
	lea	SMPS_Track.len(a5),a5
	dbf	d7,.psgloop

	movea.l	a3,a5

	bset	#f_fadein_flag,SMPS_RAM.variables.bitfield2(a6)	; Trigger fade-in
	move.b	#$28,SMPS_RAM.variables.v_fadein_counter(a6)	; Fade-in delay
	bclr	#f_1up_playing,SMPS_RAM.variables.bitfield2(a6)
	addq.w	#8,sp				; Tamper return value so we don't return to caller
	rts
; ===========================================================================
; loc_72B9E:
cfSetTempoDivider:
	move.b	(a4)+,SMPS_Track.TempoDivider(a5)	; Set tempo divider on current track
.locret:
	rts
; ===========================================================================
; loc_72BA4: cfSetVolume:
cfChangeFMVolume:
	move.b	(a4)+,d0		; Get parameter
	add.b	d0,SMPS_Track.Volume(a5)	; Add to current volume
	tst.b	SMPS_Track.VoiceControl(a5)	; Is this a PSG track?
	bmi.s	cfSetTempoDivider.locret	; If so, return
	btst	#4,SMPS_Track.VoiceControl(a5)	; Is this the DAC track?
	bne.w	SetDACVolume			; If so, branch
    if SMPS_EnablePWM
	btst	#3,SMPS_Track.VoiceControl(a5)	; Is this a PWM track?
	bne.s	cfSetTempoDivider.locret	; If so, return
    endif
	bra.w	SendVoiceTL
; ===========================================================================
; loc_72BAE:
cfPreventAttack:
	bset	#4,SMPS_Track.PlaybackControl(a5)	; Set 'do not attack next note' bit
	rts
; ===========================================================================
cfNoteFillS3K:	; Ported from S3K
; S3K's zComputeNoteDuration
	moveq	#0,d0
	moveq	#0,d1
	move.b	(a4)+,d1			; Get parameter
	move.b	SMPS_Track.TempoDivider(a5),d0	; Get tempo divider for this track
	mulu.w	d0,d1				; Multiply the parameter by tempo divider
	move.b	d1,SMPS_Track.NoteFillTimeout(a5)	; Note fill timeout
	move.b	d1,SMPS_Track.NoteFillMaster(a5)	; Note fill master
	rts
; ===========================================================================
; loc_72BB4:
cfNoteFill:
	move.b	(a4),SMPS_Track.NoteFillTimeout(a5)	; Note fill timeout
	move.b	(a4)+,SMPS_Track.NoteFillMaster(a5)	; Note fill master
	rts
; ===========================================================================
; loc_72BBE: cfAddKey:
cfChangeTransposition:
	move.b	(a4)+,d0		; Get parameter
	add.b	d0,SMPS_Track.Transpose(a5)	; Add to transpose value
	rts
; ===========================================================================
; loc_72BC6:
cfSetTempo:
	move.b	(a4),SMPS_RAM.variables.v_main_tempo(a6)		; Set main tempo
	move.b	(a4)+,SMPS_RAM.variables.v_main_tempo_timeout(a6)	; And reset timeout (!)
	rts
; ===========================================================================
; loc_72BD0:
cfSetTempoMod:
	lea	SMPS_RAM.v_music_track_ram(a6),a0
	move.b	(a4)+,d0		; Get new tempo divider
	moveq	#SMPS_MUSIC_TRACK_COUNT-1,d2	; 1 DAC + 6 FM + 3 PSG tracks
; loc_72BDA:
.trackloop:
	move.b	d0,SMPS_Track.TempoDivider(a0)	; Set track's tempo divider
	lea	SMPS_Track.len(a0),a0
	dbf	d2,.trackloop

	rts
; ===========================================================================
; loc_72BE6: cfChangeVolume:
cfChangePSGVolume:
	move.b	(a4)+,d0		; Get volume change
	add.b	d0,SMPS_Track.Volume(a5)	; Apply it

locret_72CAA:
	rts
; ===========================================================================
    if SMPS_PushSFXBehaviour
; loc_72BEE:
cfClearPush:
	bclr	#f_push_playing,SMPS_RAM.bitfield1(a6)	; Allow push sound to be played once more
	rts
    endif
; ===========================================================================
    if SMPS_EnableSpecSFX
; loc_72BF4:
cfStopSpecialFM4:
	bclr	#7,SMPS_Track.PlaybackControl(a5)	; Stop track
	bclr	#4,SMPS_Track.PlaybackControl(a5)	; Clear 'do not attack next note' bit
	bsr.w	FMNoteOff
	tst.b	SMPS_RAM.v_sfx_fm4_track(a6)		; Is SFX using FM4?
	bmi.s	.locexit			; Branch if yes
	movea.l	a5,a3
	lea	SMPS_RAM.v_music_fm4_track(a6),a5
	movea.l	SMPS_Track.VoicePtr(a5),a1		; Voice pointer
	bclr	#2,SMPS_Track.PlaybackControl(a5)	; Clear 'SFX is overriding' bit
	bset	#1,SMPS_Track.PlaybackControl(a5)	; Set 'track at rest' bit
	move.b	SMPS_Track.VoiceIndex(a5),d0	; Current voice
	bsr.s	SetVoice
	movea.l	a3,a5
; loc_72C22:
.locexit:
	addq.w	#8,sp				; Tamper with return value so we don't return to caller
	rts
    endif
; ===========================================================================
; loc_72C26:
cfSetVoice:			; Branch if yes
	moveq	#0,d0
	move.b	(a4)+,d0			; Get new voice
	move.b	d0,SMPS_Track.VoiceIndex(a5)	; Store it
	tst.b	SMPS_Track.VoiceControl(a5)		; Is this a PSG track?
	bmi.s	locret_72CAA
	btst	#2,SMPS_Track.PlaybackControl(a5)	; Is SFX overriding this track?
	bne.s	locret_72CAA			; Return if yes

cfSetVoiceCont:
	movea.l	SMPS_Track.VoicePtr(a5),a1		; SFX track voice pointer
; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_72C4E:
SetVoice:
	subq.w	#1,d0
	bmi.s	.havevoiceptr
	moveq	#25,d1
; loc_72C56:
.voicemultiply:
	adda.w	d1,a1
	dbf	d0,.voicemultiply
; loc_72C5C:
.havevoiceptr:
	move.b	(a1)+,d1			; feedback/algorithm
	move.b	#$B0,d0			; Command to write feedback/algorithm
	bsr.w	WriteFMIorII
	lea	FMInstrumentOperatorTable(pc),a2
	moveq	#(FMInstrumentOperatorTable_End-FMInstrumentOperatorTable)-1,d3			; Don't want to send TL yet
; loc_72C72:
.sendvoiceloop:
	move.b	(a2)+,d0
	move.b	(a1)+,d1
	bsr.w	WriteFMIorII
	dbf	d3,.sendvoiceloop

	moveq	#3,d5
	move.b	SMPS_Track.Volume(a5),d3	; Track volume attenuation
; loc_72C8C:
.sendtlloop:
	move.b	(a2)+,d0
	move.b	(a1)+,d1
	bpl.s	.sendtl
	add.b	d3,d1			; Include additional attenuation
; loc_72C96:
.sendtl:
	bsr.w	WriteFMIorII
	dbf	d5,.sendtlloop

	move.b	#$B4,d0			; Register for AMS/FMS/Panning
	move.b	SMPS_Track.AMSFMSPan(a5),d1	; Value to send
	bra.w	WriteFMIorII

;locret_72CAA:
;	rts
; End of function SetVoice

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_72CB4:
SendVoiceTL:
	btst	#2,SMPS_Track.PlaybackControl(a5)	; Is SFX overriding?
	bne.s	.locret				; Return if so
	moveq	#0,d0
	move.b	SMPS_Track.VoiceIndex(a5),d0	; Current voice
	movea.l	SMPS_Track.VoicePtr(a5),a1
; loc_72CD8:
.gotvoiceptr:
	subq.w	#1,d0
	bmi.s	.gotvoice
	moveq	#25,d1
; loc_72CE0:
.voicemultiply:
	adda.w	d1,a1
	dbf	d0,.voicemultiply
; loc_72CE6:
.gotvoice:
	lea	21(a1),a1			; Want TL
	lea	FMInstrumentTLTable(pc),a2
	move.b	SMPS_Track.Volume(a5),d3		; Get track volume attenuation
	bmi.s	.locret				; If negative, stop
	moveq	#(FMInstrumentTLTable_End-FMInstrumentTLTable)-1,d5
; loc_72D02:
.sendtlloop:
	move.b	(a2)+,d0
	move.b	(a1)+,d1
	bpl.s	.senttl
	add.b	d3,d1			; Include additional attenuation
	blo.s	.senttl
	bsr.w	WriteFMIorII
; loc_72D12:
.senttl:
	dbf	d5,.sendtlloop
; locret_72D16:
.locret:
	rts
; End of function SendVoiceTL

; ===========================================================================
; byte_72D18:
FMInstrumentOperatorTable:
	dc.b  $30	; Detune/multiple operator 1
	dc.b  $38	; Detune/multiple operator 3
	dc.b  $34	; Detune/multiple operator 2
	dc.b  $3C	; Detune/multiple operator 4
	dc.b  $50	; Rate scalling/attack rate operator 1
	dc.b  $58	; Rate scalling/attack rate operator 3
	dc.b  $54	; Rate scalling/attack rate operator 2
	dc.b  $5C	; Rate scalling/attack rate operator 4
	dc.b  $60	; Amplitude modulation/first decay rate operator 1
	dc.b  $68	; Amplitude modulation/first decay rate operator 3
	dc.b  $64	; Amplitude modulation/first decay rate operator 2
	dc.b  $6C	; Amplitude modulation/first decay rate operator 4
	dc.b  $70	; Secondary decay rate operator 1
	dc.b  $78	; Secondary decay rate operator 3
	dc.b  $74	; Secondary decay rate operator 2
	dc.b  $7C	; Secondary decay rate operator 4
	dc.b  $80	; Secondary amplitude/release rate operator 1
	dc.b  $88	; Secondary amplitude/release rate operator 3
	dc.b  $84	; Secondary amplitude/release rate operator 2
	dc.b  $8C	; Secondary amplitude/release rate operator 4
FMInstrumentOperatorTable_End
; byte_72D2C:
FMInstrumentTLTable:
	dc.b  $40	; Total level operator 1
	dc.b  $48	; Total level operator 3
	dc.b  $44	; Total level operator 2
	dc.b  $4C	; Total level operator 4
FMInstrumentTLTable_End
; ===========================================================================
; loc_72D30:
cfModulation:
	bset	#3,SMPS_Track.PlaybackControl(a5)		; Turn on modulation
	move.w	a4,SMPS_Track.ModulationPtr+2(a5)		; Save pointer to modulation data
	move.l	a4,d0
	swap	d0
	move.b	d0,SMPS_Track.ModulationPtr+1(a5)		; Save pointer to modulation data
	move.b	(a4)+,SMPS_Track.ModulationWait(a5)		; Modulation delay
	move.b	(a4)+,SMPS_Track.ModulationSpeed(a5)	; Modulation speed
	move.b	(a4)+,SMPS_Track.ModulationDelta(a5)	; Modulation delta
	move.b	(a4)+,d0				; Modulation steps...
	lsr.b	#1,d0					; ... divided by 2...
	move.b	d0,SMPS_Track.ModulationSteps(a5)		; ... before being stored
	clr.w	SMPS_Track.ModulationVal(a5)		; Total accumulated modulation frequency change
	rts
; ===========================================================================
; loc_72D52:
cfEnableModulation:
	bset	#3,SMPS_Track.PlaybackControl(a5)	; Turn on modulation
	rts
; ===========================================================================
; loc_72D58:
cfStopTrack:
	bclr	#7,SMPS_Track.PlaybackControl(a5)	; Stop track
    if SMPS_EnablePWM
	btst	#3,SMPS_Track.VoiceControl(a5)		; Is this a PWM track?
	bne.w	.locexit
    endif
	bclr	#4,SMPS_Track.PlaybackControl(a5)	; Clear 'do not attack next note' bit
	tst.b	SMPS_Track.VoiceControl(a5)		; Is this a PSG track?
	bmi.s	.stoppsg			; Branch if yes
	btst	#4,SMPS_Track.VoiceControl(a5)	; Is this the DAC we are updating?
	bne.w	.locexit			; Exit if yes
	pea	.stoppedchannel(pc)
	bra.w	FMNoteOff
; ===========================================================================
; loc_72D74:
.stoppsg:
	bsr.w	PSGNoteOff
; loc_72D78:
.stoppedchannel:
	tst.b	SMPS_RAM.f_voice_selector(a6)		; Are we updating SFX?
	bpl.w	.locexit			; Exit if not
	clr.b	SMPS_RAM.variables.v_sndprio(a6)			; Clear priority
	moveq	#0,d0
	move.b	SMPS_Track.VoiceControl(a5),d0	; Get voice control bits
	bmi.s	.getpsgptr			; Branch if PSG
	lea	SFX_BGMChannelRAM(pc),a0
	movea.l	a5,a3
    if SMPS_EnableSpecSFX
	cmpi.b	#4,d0				; Is this FM4?
	bne.s	.getpointer			; Branch if not
	tst.b	SMPS_RAM.v_spcsfx_fm4_track.PlaybackControl(a6)	; Is special SFX playing?
	bpl.s	.getpointer			; Branch if not
	lea	SMPS_RAM.v_spcsfx_fm4_track(a6),a5
	movea.l	SMPS_Track.VoicePtr(a5),a1	; Get voice pointer
	bra.s	.gotpointer
; ===========================================================================
; loc_72DA8:
.getpointer:
    endif
	subq.w	#2,d0			; SFX can only use FM3 and up
	add.w	d0,d0
	movea.w	(a0,d0.w),a5
	tst.b	SMPS_Track.PlaybackControl(a5)	; Is track playing?
	bpl.s	.novoiceupd			; Branch if not
	movea.l	SMPS_Track.VoicePtr(a5),a1		; Get voice pointer
; loc_72DB8:
.gotpointer:
	bclr	#2,SMPS_Track.PlaybackControl(a5)	; Clear 'SFX overriding' bit
	bset	#1,SMPS_Track.PlaybackControl(a5)	; Set 'track at rest' bit
	move.b	SMPS_Track.VoiceIndex(a5),d0	; Current voice
	bsr.w	SetVoice
; loc_72DC8:
.novoiceupd:
	movea.l	a3,a5
	addq.w	#8,sp		; Tamper with return value so we don't go back to caller
	rts
; ===========================================================================
; loc_72DCC:
.getpsgptr:
    if SMPS_EnableSpecSFX
	lea	SMPS_RAM.v_spcsfx_psg3_track(a6),a0
	tst.b	SMPS_Track.PlaybackControl(a0)	; Is track playing?
	bpl.s	.getchannelptr			; Branch if not
	cmpi.b	#$E0,d0				; Is it the noise channel?
	beq.s	.gotchannelptr			; Branch if yes
	cmpi.b	#$C0,d0				; Is it PSG 3?
	beq.s	.gotchannelptr			; Branch if yes
; loc_72DE0:
.getchannelptr:
    endif
	lea	SFX_BGMChannelRAM(pc),a0
	lsr.w	#4,d0
	movea.w	(a0,d0.w),a0
; loc_72DEA:
.gotchannelptr:
	bclr	#2,SMPS_Track.PlaybackControl(a0)	; Clear 'SFX overriding' bit
	bset	#1,SMPS_Track.PlaybackControl(a0)	; Set 'track at rest' bit
	cmpi.b	#$E0,SMPS_Track.VoiceControl(a0)	; Is this a noise pointer?
	bne.s	.locexit			; Branch if not
	move.b	SMPS_Track.PSGNoise(a0),(SMPS_psg_input).l ; Set noise tone
; loc_72E02:
.locexit:
	addq.w	#8,sp			; Tamper with return value so we don't go back to caller
	rts
; ===========================================================================
; loc_72E06:
cfSetPSGNoise:
	move.b	#$E0,SMPS_Track.VoiceControl(a5)	; Turn channel into noise channel
	move.b	(a4)+,d0			; Get tone noise
	move.b	d0,SMPS_Track.PSGNoise(a5)		; Save it
	btst	#2,SMPS_Track.PlaybackControl(a5)	; Is track being overridden?
	bne.s	.locret				; Return if yes
	move.b	d0,(SMPS_psg_input).l		; Set tone
; locret_72E1E:
.locret:
	rts
; ===========================================================================
; loc_72E20:
cfDisableModulation:
	bclr	#3,SMPS_Track.PlaybackControl(a5)	; Disable modulation
	rts
; ===========================================================================
; loc_72E26:
cfSetPSGTone:
	move.b	(a4)+,d0
	tst.b	SMPS_Track.VoiceControl(a5)		; Is this a PSG track?
	bpl.s	+				; Return if not
	move.b	d0,SMPS_Track.VoiceIndex(a5)	; Set current PSG tone
+	rts
; ===========================================================================
; loc_72E2C:
cfJumpTo:
	move.b	(a4)+,d0	; High byte of offset
	lsl.w	#8,d0		; Shift it into place
	move.b	(a4)+,d0	; Low byte of offset
	adda.w	d0,a4		; Add to current position
	subq.w	#1,a4		; Put back one byte
	rts
; ===========================================================================
; loc_72E38:
cfRepeatAtPos:
	moveq	#0,d0
	move.b	(a4)+,d0			; Loop index
	move.b	(a4)+,d1			; Repeat count
	tst.b	SMPS_Track.LoopCounters(a5,d0.w)	; Has this loop already started?
	bne.s	.loopexists			; Branch if yes
	move.b	d1,SMPS_Track.LoopCounters(a5,d0.w)	; Initialize repeat count
; loc_72E48:
.loopexists:
	subq.b	#1,SMPS_Track.LoopCounters(a5,d0.w)	; Decrease loop's repeat count
	bne.s	cfJumpTo			; If nonzero, branch to target
	addq.w	#2,a4				; Skip target address
	rts
; ===========================================================================
; loc_72E52:
cfJumpToGosub:
	moveq	#0,d0
	move.b	SMPS_Track.StackPointer(a5),d0	; Current stack pointer
	subq.b	#4,d0				; Add space for another target
	move.l	a4,(a5,d0.w)			; Put in current address (*before* target for jump!)
	move.b	d0,SMPS_Track.StackPointer(a5)	; Store new stack pointer
	bra.s	cfJumpTo
; ===========================================================================

; Clownacy | Since I reintroduced cfSendFMI, this flag is pointless

; loc_72E64:
;cfOpF9:
;	move.b	#$88,d0		; D1L/RR of Operator 3
;	moveq	#$F,d1		; Loaded with fixed value (max RR, 1TL)
;	bsr.w	WriteFMI
;	move.b	#$8C,d0		; D1L/RR of Operator 4
;	moveq	#$F,d1		; Loaded with fixed value (max RR, 1TL)
;	bra.w	WriteFMI
; ===========================================================================
cfSilenceStopTrack:
	tst.b	SMPS_Track.VoiceControl(a5)	; Is this a PSG track?
	bmi.w	cfStopTrack			; If so, don't mess with the YM2612
	bsr.w	FMSilenceChannel
	bra.w	cfStopTrack
; ===========================================================================
; Sets a new DAC sample for play.
;
; Has one parameter, the index (1-based) of the DAC sample to play.
;
cfPlayDACSample:
	SMPS_stopZ80
	SMPS_waitZ80
	st.b	(SMPS_z80_ram+MegaPCM_DAC_Type).l	; This is a DAC SFX; ignore music DAC volume
	move.b	(a4)+,(SMPS_z80_ram+MegaPCM_DAC_Number).l
	SMPS_startZ80
	rts
; ===========================================================================
; Plays another song or SFX.
;
; Has one parameter byte, the ID of what is to be played.
;
; cfPlaySoundByIndex
cfPlaySound:
	move.b	(a4)+,SMPS_RAM.variables.v_playsnd2(a6)
	rts
; ===========================================================================
; Changes the track's key displacement.
;
; There is a single parameter byte, the new track key offset + 40h (that is,
; 40h is subtracted from the parameter byte before the key displacement is set)
;
cfSetKey:
	move.b	(a4)+,d0
	subi.b	#$40,d0
	move.b	d0,SMPS_Track.Transpose(a5)
	rts
; ===========================================================================
; Sets track volume.
;
; Has one parameter byte, the volume.
;
; For FM tracks, this is a 7-bit value from 0 (lowest volume) to 127 (highest
; volume). The value is XOR'ed with 7Fh before being sent, then stripped of the
; sign bit. The volume change takes effect immediately.
;
; For PSG tracks, this is a 4-bit value ranging from 8 (lowest volume) to 78h
; (highest volume). The value is shifted 3 bits to the right, XOR'ed with 0Fh
; and AND'ed with 0Fh before being uploaded, so the sign bit and the lower 3
; bits are discarded.
;
cfSetVolume:
	tst.b	SMPS_Track.VoiceControl(a5)	; Is this a psg track?
	bpl.s	.FMVolume		; If not, branch
	move.b	(a4)+,d0		; Load parameter byte
	lsr.b	#4,d0			; Move bits 4,5,6,7 to the position of 0,1,2,3
	not.b	d0			; Invert bits
	andi.b	#$F,d0
	move.b	d0,SMPS_Track.Volume(a5)	; Write volume
	rts
.FMVolume:
	move.b	(a4)+,d0		; Load parameter byte
	not.b	d0			; Invert bits
	bchg	#7,d0			; Retain sign bit
	move.b	d0,SMPS_Track.Volume(a5)	; Write volume
	bra.w	SendVoiceTL
; ===========================================================================
; If a continuous SFX is playing, it will continue playing from target address.
; A loop counter is decremented (it is initialized to number of SFX tracks)
; for continuous SFX; if the result is zero, the continuous SFX will be flagged
; to stop.
; Non-continuous SFX do not loop.
;
; Has a 2-byte parameter, the jump target address.
;
    if SMPS_EnableContSFX
cfLoopContinuousSFX:
	btst	#f_continuous_sfx,SMPS_RAM.bitfield1(a6)	; Is the flag for continuous playback mode set?
	bne.s	.continuousmode				; If so, branch
	clr.b	SMPS_RAM.variables.v_current_contsfx(a6)			; Communicate that there is no continuous SFX playing
	addq.w	#2,a4					; Clownacy | Advance reading counter to skip the address
	rts

.continuousmode:
	subq.b	#1,SMPS_RAM.variables.v_contsfx_channels(a6)		; Mark one channel as processed
	bne.w	cfJumpTo				; If that wasn't the last channel, branch
	bclr	#f_continuous_sfx,SMPS_RAM.bitfield1(a6)	; If it was, clear flag for continuous playback mode...
	bra.w	cfJumpTo				; ...and then branch
    endif
; ===========================================================================
; Sends an FM command to the YM2612. The command is sent to part I, so not all
; registers can be set using this coord. flag (in particular, channels FM4,
; FM5 and FM6 cannot (in general) be affected).
;
; Has 2 parameter bytes: a 1-byte register selector and a 1-byte register data.
;
cfSendFMI:
	move.b	(a4)+,d0				; Get YM2612 register selector
	move.b	(a4)+,d1				; Get YM2612 register data
	bra.w	WriteFMI				; Send it to YM2612
; ===========================================================================
; Sends an FM command to the YM2612. The command is sent to the adequate part
; for the current track, so it is only appropriate for those registers that
; affect specific channels.
;
; Has 2 parameter bytes: a 1-byte register selector and a 1-byte register data.
;
cfChanFMCommand:
	move.b	(a4)+,d0				; Get YM2612 register selector
	move.b	(a4)+,d1				; Get YM2612 register data
	bra.w	WriteFMIorII				; Send it to YM2612
; ===========================================================================
; ---------------------------------------------------------------------------
; Music 'include's and pointers
; ---------------------------------------------------------------------------
	include "sound/Sonic 2 Clone Driver v2 - Music.asm"

; ---------------------------------------------------------------------------
; SFX 'include's and pointers
; ---------------------------------------------------------------------------
	include "sound/Sonic 2 Clone Driver v2 - SFX.asm"

; ---------------------------------------------------------------------------
; Special SFX 'include's and pointers
; ---------------------------------------------------------------------------
    if SMPS_EnableSpecSFX
	include "sound/Sonic 2 Clone Driver v2 - Special SFX.asm"
    endif
; ---------------------------------------------------------------------------
; FM Universal Voice Bank
; ---------------------------------------------------------------------------
    if SMPS_EnableUniversalVoiceBank
	include "sound/Sonic 2 Clone Driver v2 - FM Universal Voice Bank.asm"
    endif
; ---------------------------------------------------------------------------
; PSG volume envelopes 'include's and pointers
; ---------------------------------------------------------------------------
	include "sound/Sonic 2 Clone Driver v2 - PSG Volume Envelopes.asm"

; ---------------------------------------------------------------------------
; Vladikcomper's Mega PCM DAC driver
; ---------------------------------------------------------------------------
	include	"sound/MegaPCM - 68k.asm"

	dc.b	$43,$6C,$6F,$77,$6E,$61,$63,$79
	even
