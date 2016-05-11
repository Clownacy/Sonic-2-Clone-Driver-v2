; ---------------------------------------------------------------------------
; Sound IDs
; ---------------------------------------------------------------------------
; Music IDs
offset :=	MusicIndex
ptrsize :=	6
idstart :=	1
; $00 is reserved for silence

MusID__First = idstart
MusID_2PResult =		id(ptr_mus81)	; 01
MusID_EHZ =			id(ptr_mus82)	; 02
MusID_MCZ_2P =			id(ptr_mus83)	; 03
MusID_OOZ =			id(ptr_mus84)	; 04
MusID_MTZ =			id(ptr_mus85)	; 05
MusID_HTZ =			id(ptr_mus86)	; 06
MusID_ARZ =			id(ptr_mus87)	; 07
MusID_CNZ_2P =			id(ptr_mus88)	; 08
MusID_CNZ =			id(ptr_mus89)	; 09
MusID_DEZ =			id(ptr_mus8A)	; 0A
MusID_MCZ =			id(ptr_mus8B)	; 0B
MusID_EHZ_2P =			id(ptr_mus8C)	; 0C
MusID_SCZ =			id(ptr_mus8D)	; 0D
MusID_CPZ =			id(ptr_mus8E)	; 0E
MusID_WFZ =			id(ptr_mus8F)	; 0F
MusID_HPZ =			id(ptr_mus90)	; 10
MusID_Options =			id(ptr_mus91)	; 11
MusID_SpecStage =		id(ptr_mus92)	; 12
MusID_Boss =			id(ptr_mus93)	; 13
MusID_EndBoss =			id(ptr_mus94)	; 14
MusID_Ending =			id(ptr_mus95)	; 15
MusID_SuperSonic =		id(ptr_mus96)	; 16
MusID_Invincible =		id(ptr_mus97)	; 17
MusID_ExtraLife =		id(ptr_mus98)	; 18
MusID_Title =			id(ptr_mus99)	; 19
MusID_EndLevel =		id(ptr_mus9A)	; 1A
MusID_GameOver =		id(ptr_mus9B)	; 1B
MusID_Continue =		id(ptr_mus9C)	; 1C
MusID_Emerald =			id(ptr_mus9D)	; 1D
MusID_Credits =			id(ptr_mus9E)	; 1E
MusID_Countdown =		id(ptr_mus9F)	; 1F
MusID__End =			id(ptr_musend)	; 20
    if MOMPASS == 2
	if MusID__End > SndID__First
		fatal "You have too many MusPtrs. MusID__End ($\{MusID__End}) can't exceed SndID__First ($\{SndID__First})."
	endif
    endif

; Sound IDs
offset :=       SoundIndex
ptrsize :=      6
idstart :=      $80

SndID__First                    = idstart
SndID_Jump =                    id(ptr_sndA0)   ; 80
SndID_Checkpoint =              id(ptr_sndA1)   ; 81
SndID_SpikeSwitch =             id(ptr_sndA2)   ; 82
SndID_Hurt =                    id(ptr_sndA3)   ; 83
SndID_Skidding =                id(ptr_sndA4)   ; 84
SndID_BlockPush =               id(ptr_sndA5)   ; 85
SndID_HurtBySpikes =            id(ptr_sndA6)   ; 86
SndID_Sparkle =                 id(ptr_sndA7)   ; 87
SndID_Beep =                    id(ptr_sndA8)   ; 88
SndID_SSItem =                  id(ptr_sndA9)   ; 89    ; Sonic 1 leftover
SndID_Splash =                  id(ptr_sndAA)   ; 8A
SndID_Swish =                   id(ptr_sndAB)   ; 8B
SndID_BossHit =                 id(ptr_sndAC)   ; 8C
SndID_InhalingBubble =          id(ptr_sndAD)   ; 8D
SndID_ArrowFiring =             id(ptr_sndAE)   ; 8E
SndID_LavaBall =                id(ptr_sndAE)   ; 8E
SndID_Shield =                  id(ptr_sndAF)   ; 8F
SndID_LaserBeam =               id(ptr_sndB0)   ; 90
SndID_Electric =                id(ptr_sndB1)   ; 91    ; Sonic 1 leftover
SndID_Drown =                   id(ptr_sndB2)   ; 92
SndID_FireBurn =                id(ptr_sndB3)   ; 93
SndID_Bumper =                  id(ptr_sndB4)   ; 94
SndID_Ring =                    id(ptr_sndB5)   ; 95
SndID_RingRight =               id(ptr_sndB5)   ; 95
SndID_SpikesMove =              id(ptr_sndB6)   ; 96
SndID_Rumbling =                id(ptr_sndB7)   ; 97
SndID_Smash =                   id(ptr_sndB9)   ; 99
SndID_SSGlass =                 id(ptr_sndBA)   ; 9A    ; Sonic 1 leftover
SndID_DoorSlam =                id(ptr_sndBB)   ; 9B
SndID_SpindashRelease =         id(ptr_sndBC)   ; 9C
SndID_Hammer =                  id(ptr_sndBD)   ; 9D
SndID_Roll =                    id(ptr_sndBE)   ; 9E
SndID_ContinueJingle =          id(ptr_sndBF)   ; 9F
SndID_CasinoBonus =             id(ptr_sndC0)   ; A0
SndID_Explosion =               id(ptr_sndC1)   ; A1
SndID_WaterWarning =            id(ptr_sndC2)   ; A2
SndID_EnterGiantRing =          id(ptr_sndC3)   ; A3    ; Sonic 1 leftover
SndID_BossExplosion =           id(ptr_sndC4)   ; A4
SndID_TallyEnd =                id(ptr_sndC5)   ; A5
SndID_RingSpill =               id(ptr_sndC6)   ; A6
SndID_ChainRise =               id(ptr_sndC7)   ; A7    ; Sonic 1 leftover
SndID_Flamethrower =            id(ptr_sndC8)   ; A8
SndID_Bonus =                   id(ptr_sndC9)   ; A9    ; Sonic 1 leftover
SndID_SpecStageEntry =          id(ptr_sndCA)   ; AA
SndID_SlowSmash =               id(ptr_sndCB)   ; AB
SndID_Spring =                  id(ptr_sndCC)   ; AC
SndID_Blip =                    id(ptr_sndCD)   ; AD
SndID_RingLeft =                id(ptr_sndCE)   ; AE
SndID_Signpost =                id(ptr_sndCF)   ; AF
SndID_CNZBossZap =              id(ptr_sndD0)   ; B0
SndID_Signpost2P =              id(ptr_sndD3)   ; B3
SndID_OOZLidPop =               id(ptr_sndD4)   ; B4
SndID_SlidingSpike =            id(ptr_sndD5)   ; B5
SndID_CNZElevator =             id(ptr_sndD6)   ; B6
SndID_PlatformKnock =           id(ptr_sndD7)   ; B7
SndID_BonusBumper =             id(ptr_sndD8)   ; B8
SndID_LargeBumper =             id(ptr_sndD9)   ; B9
SndID_Gloop =                   id(ptr_sndDA)   ; BA
SndID_PreArrowFiring =          id(ptr_sndDB)   ; BB
SndID_Fire =                    id(ptr_sndDC)   ; BC
SndID_ArrowStick =              id(ptr_sndDD)   ; BD
SndID_Helicopter =              id(ptr_sndDE)   ; BE
SndID_SuperTransform =          id(ptr_sndDF)   ; BF
SndID_SpindashRev =             id(ptr_sndE0)   ; C0
SndID_Rumbling2 =               id(ptr_sndE1)   ; C1
SndID_CNZLaunch =               id(ptr_sndE2)   ; C2
SndID_Flipper =                 id(ptr_sndE3)   ; C3
SndID_HTZLiftClick =            id(ptr_sndE4)   ; C4
SndID_Leaves =                  id(ptr_sndE5)   ; C5
SndID_MegaMackDrop =            id(ptr_sndE6)   ; C6
SndID_DrawbridgeMove =          id(ptr_sndE7)   ; C7
SndID_QuickDoorSlam =           id(ptr_sndE8)   ; C8
SndID_DrawbridgeDown =          id(ptr_sndE9)   ; C9
SndID_LaserBurst =              id(ptr_sndEA)   ; CA
SndID_Scatter =                 id(ptr_sndEB)   ; CB
SndID_LaserFloor =              id(ptr_sndEB)   ; CB
SndID_Teleport =                id(ptr_sndEC)   ; CC
SndID_Error =                   id(ptr_sndED)   ; CD
SndID_MechaSonicBuzz =          id(ptr_sndEE)   ; CE
SndID_LargeLaser =              id(ptr_sndEF)   ; CF
SndID_OilSlide =                id(ptr_sndF0)   ; D0
SndID__End =                    id(ptr_sndend)  ; D1

; Sound command IDs
offset :=	Sound_ExIndex
ptrsize :=	4
idstart :=	$FA

FlgID__First			= idstart
MusID_StopSFX =			id(ptr_flgFA)	; FA
MusID_FadeOut =			id(ptr_flgFB)	; FB
SndID_SegaSound =		id(ptr_flgFC)	; FC
MusID_SpeedUp =			id(ptr_flgFD)	; FD
MusID_SlowDown =		id(ptr_flgFE)	; FE
MusID_Stop =			id(ptr_flgFF)	; FF
FlgID__End =			id(ptr_flgend)	; FF + 1 (rollover)
    if MOMPASS == 2
	if SndID__End > FlgID__First
		fatal "You have too many SndPtrs. SndID__End ($\{SndID__End}) can't exceed FlgID__First ($\{FlgID__First})."
	endif
    endif

; ---------------------------------------------------------------------------
; Track variables
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
; Global sound driver variables
; ---------------------------------------------------------------------------
ireallydontknow:

	phase 0
v_sounddriverramstart:

SMPS_running_flag:		ds.b 1

	if (*)&1	; pretty much an 'even'
				ds.b 1
	endif

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
SOUND_QUEUES_START:
v_playsnd1:			ds.b 1	; music to play	; Clownacy | Note to all, must be on even address!
v_playsnd2:			ds.b 1	; sound to play
v_playsnd3:			ds.b 1	; secondary sound to play
v_playsnd4:			ds.b 1	; secondary music to play
SOUND_QUEUES_END:

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
