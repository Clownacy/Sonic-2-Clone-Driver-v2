; ---------------------------------------------------------------------------
; Sound driver equates
; ---------------------------------------------------------------------------
zTrack STRUCT DOTS
	PlaybackControl:	ds.b 1		; All tracks
	VoiceControl:		ds.b 1		; All tracks
	VolFlutter:				; PSG only	; Clownacy | Now shared with panning RAM
	AMSFMSPan:		ds.b 1		; FM/DAC only
	TempoDivider:		ds.b 1		; All tracks
	Transpose:		ds.b 1		; FM/PSG only	; these two need to be together!
	Volume:			ds.b 1		; All tracks	; these two need to be together!
	DataPointer:		ds.l 1		; All tracks
	VoiceIndex:		ds.b 1		; FM/PSG only
	StackPointer:		ds.b 1		; All tracks
	DurationTimeout:	ds.b 1		; All tracks
	SavedDuration:		ds.b 1		; All tracks
	SavedDAC:				; DAC only
	Freq:			ds.w 1		; FM/PSG only
	NoteFillTimeout:	ds.b 1		; FM/PSG only
	NoteFillMaster:		ds.b 1		; FM/PSG only
	ModulationPtr:		ds.l 1		; FM/PSG only
	ModulationWait:		ds.b 1		; FM/PSG only
	ModulationSpeed:	ds.b 1		; FM/PSG only
	ModulationDelta:	ds.b 1		; FM/PSG only
	ModulationSteps:	ds.b 1		; FM/PSG only
	ModulationVal:		ds.w 1		; FM/PSG only
	Detune:			ds.b 1		; FM/PSG only
	PSGNoise:		ds.b 1		; PSG only
	PlaybackControlBackup:			; Clownacy | New, music tracks only (1UP backup)
	VoicePtr:		ds.l 1		; FM SFX only
	LoopCounters:		ds.b 2		; All tracks
				ds.l 2
	GoSubStack:				; All tracks
zTrack ENDSTRUCT

; ---------------------------------------------------------------------------
; RAM variables
; ---------------------------------------------------------------------------
ireallydontknow:

	phase 0
v_sounddriverramstart:

v_startofvariables:
v_sndprio:			ds.b 1	; sound priority (priority of new music/SFX must be higher or equal to this value or it won't play; bit 7 of priority being set prevents this value from changing)
v_main_tempo_timeout:		ds.b 1	; Has v_main_tempo added to it; when it carries, delays song by 1 frame
v_main_tempo:			ds.b 1	; Used for music only
f_stopmusic:			ds.b 1	; flag set to stop music when paused

v_fadeout_counter:		ds.b 1
v_fadeout_delay:		ds.b 1

v_fadein_counter:		ds.b 1	; Timer for fade in/out
v_fadein_delay:			ds.b 1

v_tempo_mod:			ds.b 1	; music - tempo modifier
v_speeduptempo:			ds.b 1	; music - tempo modifier with speed shoes
f_speedup:			ds.b 1	; flag indicating whether speed shoes tempo is on ($80) or off ($00)

v_playsnd0:			ds.b 1	; sound or music copied from below
v_playsnd1:			ds.b 1	; music to play	; Clownacy | Note to all, must be on even address!
v_playsnd2:			ds.b 1	; sound to play
v_playsnd3:			ds.b 1	; secondary sound to play
v_playsnd4:			ds.b 1	; secondary music to play

v_voice_ptr:			ds.l 1	; voice data pointer (4 bytes)

	if EnableSpecSFX
v_special_voice_ptr:		ds.l 1	; voice data pointer for special SFX ($D0-$DF) (4 bytes)
	endif

f_voice_selector:		ds.b 1	; $00 = use music voice pointer; $80 = use track voice pointer

f_1up_playing:			ds.b 1	; flag indicating 1-up song is playing

	if EnableSpinDashSFX
v_spindash_timer:		ds.b 1
v_spindash_pitch:		ds.b 1
	endif

v_pal_audio_countdown:		ds.b 1
v_communication_byte:		ds.b 1

	if EnableContSFX
v_current_contsfx:		ds.b 1
v_contsfx_channels:		ds.b 1
	endif

misc_flags:			ds.b 1
v_gloop_toggle			= 0	; if set, prevents further gloop sounds from playing
f_spindash_lastsound		= 1
v_ring_speaker			= 2	; which speaker the "ring" sound is played in (0 = right; 1 = left)
f_updating_dac			= 3	; 1 if updating DAC, 0 otherwise
f_fadein_flag			= 4	; flag for fade in
f_force_pal_tempo		= 5	; flag for if the current song must play at PAL speed on PAL consoles
f_doubleupdate			= 6
f_continuous_sfx		= 7

misc_flags2:			ds.b 1
f_push_playing			= 0

v_endofvariables:

	if (*)&1	; pretty much an 'even'
				ds.b 1
	endif

v_music_track_ram:
v_music_fmdac_tracks:
v_music_dac_track:	zTrack
v_music_fm_tracks:
v_music_fm1_track:	zTrack
v_music_fm2_track:	zTrack
v_music_fm3_track:	zTrack
v_music_fm4_track:	zTrack
v_music_fm5_track:	zTrack
v_music_fm6_track:	zTrack
v_music_fm_tracks_end:
v_music_fmdac_tracks_end:
v_music_psg_tracks:
v_music_psg1_track:	zTrack
v_music_psg2_track:	zTrack
v_music_psg3_track:	zTrack
v_music_psg_tracks_end:
v_music_track_ram_end:

v_sfx_track_ram:
v_sfx_fm_tracks:
v_sfx_fm3_track:	zTrack
v_sfx_fm4_track:	zTrack
v_sfx_fm5_track:	zTrack
v_sfx_fm_tracks_end:
v_sfx_psg_tracks:
v_sfx_psg1_track:	zTrack
v_sfx_psg2_track:	zTrack
v_sfx_psg3_track:	zTrack
v_sfx_psg_tracks_end:
v_sfx_track_ram_end:

v_spcsfx_track_ram:
v_spcsfx_fm_tracks:
v_spcsfx_fm4_track:	zTrack
v_spcsfx_fm_tracks_end:
v_spcsfx_psg_tracks:
v_spcsfx_psg3_track:	zTrack
v_spcsfx_psg_tracks_end:
v_spcsfx_track_ram_end:

	phase v_sfx_track_ram
v_1up_ram_copy:
v_1up_dac_track:	zTrack
v_1up_fm1_track:	zTrack
v_1up_fm2_track:	zTrack
v_1up_fm3_track:	zTrack
v_1up_fm4_track:	zTrack
v_1up_fm5_track:	zTrack
v_1up_fm6_track:	zTrack
v_1up_psg1_track:	zTrack
v_1up_psg2_track:	zTrack
v_1up_psg3_track:	zTrack

v_1up_variables:	ds.b v_endofvariables-v_startofvariables

v_sounddriverramend:
	dephase

    if MOMPASS=1
	message "Clone Driver v2 RAM size is $\{v_sounddriverramend-v_sounddriverramstart} bytes!"
    endif
	!org ireallydontknow
