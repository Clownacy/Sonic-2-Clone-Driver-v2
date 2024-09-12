; ---------------------------------------------------------------------------
; Sound IDs
; ---------------------------------------------------------------------------
; $00 is reserved for silence

; Sound commands
bgm_Stop =		1
sfx_Fade =		2
specsfx_Fade =		3
dacsfx_Fade =		4
bgm_Fade =		5
bgm_Speedup =		6
bgm_Slowdown =		7
flg__First =		bgm_Stop
flg__Last =		bgm_Slowdown


; Background music
SMPS_offset :=	MusicIndex
SMPS_ptrsize :=	6
SMPS_idstart :=	$10

bgm__First = SMPS_idstart
bgm_GHZ =		SMPS_id(ptr_mus81)
bgm_LZ =		SMPS_id(ptr_mus82)
bgm_MZ =		SMPS_id(ptr_mus83)
bgm_SLZ =		SMPS_id(ptr_mus84)
bgm_SYZ =		SMPS_id(ptr_mus85)
bgm_SBZ =		SMPS_id(ptr_mus86)
bgm_Invincible =	SMPS_id(ptr_mus87)
bgm_ExtraLife =		SMPS_id(ptr_mus88)
bgm_SS =		SMPS_id(ptr_mus89)
bgm_Title =		SMPS_id(ptr_mus8A)
bgm_Ending =		SMPS_id(ptr_mus8B)
bgm_Boss =		SMPS_id(ptr_mus8C)
bgm_FZ =		SMPS_id(ptr_mus8D)
bgm_GotThrough =	SMPS_id(ptr_mus8E)
bgm_GameOver =		SMPS_id(ptr_mus8F)
bgm_Continue =		SMPS_id(ptr_mus90)
bgm_Credits =		SMPS_id(ptr_mus91)
bgm_Drowning =		SMPS_id(ptr_mus92)
bgm_Emerald =		SMPS_id(ptr_mus93)
bgm__Last =		SMPS_id(ptr_musend)-1


; Sound effects
SMPS_offset :=	SoundIndex
SMPS_ptrsize :=	6
SMPS_idstart :=	$30

sfx__First = SMPS_idstart
sfx_Jump =		SMPS_id(ptr_sndA0)
sfx_Lamppost =		SMPS_id(ptr_sndA1)
sfx_A2 =		SMPS_id(ptr_sndA2)
sfx_Death =		SMPS_id(ptr_sndA3)
sfx_Skid =		SMPS_id(ptr_sndA4)
sfx_A5 =		SMPS_id(ptr_sndA5)
sfx_HitSpikes =		SMPS_id(ptr_sndA6)
sfx_Push =		SMPS_id(ptr_sndA7)
sfx_SSGoal =		SMPS_id(ptr_sndA8)
sfx_SSItem =		SMPS_id(ptr_sndA9)
sfx_Splash =		SMPS_id(ptr_sndAA)
sfx_AB =		SMPS_id(ptr_sndAB)
sfx_HitBoss =		SMPS_id(ptr_sndAC)
sfx_Bubble =		SMPS_id(ptr_sndAD)
sfx_Fireball =		SMPS_id(ptr_sndAE)
sfx_Shield =		SMPS_id(ptr_sndAF)
sfx_Saw =		SMPS_id(ptr_sndB0)
sfx_Electric =		SMPS_id(ptr_sndB1)
sfx_Drown =		SMPS_id(ptr_sndB2)
sfx_Flamethrower =	SMPS_id(ptr_sndB3)
sfx_Bumper =		SMPS_id(ptr_sndB4)
sfx_Ring =		SMPS_id(ptr_sndB5)
sfx_SpikesMove =	SMPS_id(ptr_sndB6)
sfx_Rumbling =		SMPS_id(ptr_sndB7)
sfx_B8 =		SMPS_id(ptr_sndB8)
sfx_Collapse =		SMPS_id(ptr_sndB9)
sfx_SSGlass =		SMPS_id(ptr_sndBA)
sfx_Door =		SMPS_id(ptr_sndBB)
sfx_Teleport =		SMPS_id(ptr_sndBC)
sfx_ChainStomp =	SMPS_id(ptr_sndBD)
sfx_Roll =		SMPS_id(ptr_sndBE)
sfx_Continue =		SMPS_id(ptr_sndBF)
sfx_Basaran =		SMPS_id(ptr_sndC0)
sfx_BreakItem =		SMPS_id(ptr_sndC1)
sfx_Warning =		SMPS_id(ptr_sndC2)
sfx_GiantRing =		SMPS_id(ptr_sndC3)
sfx_Bomb =		SMPS_id(ptr_sndC4)
sfx_Cash =		SMPS_id(ptr_sndC5)
sfx_RingLoss =		SMPS_id(ptr_sndC6)
sfx_ChainRise =		SMPS_id(ptr_sndC7)
sfx_Burning =		SMPS_id(ptr_sndC8)
sfx_Bonus =		SMPS_id(ptr_sndC9)
sfx_EnterSS =		SMPS_id(ptr_sndCA)
sfx_WallSmash =		SMPS_id(ptr_sndCB)
sfx_Spring =		SMPS_id(ptr_sndCC)
sfx_Switch =		SMPS_id(ptr_sndCD)
sfx_RingLeft =		SMPS_id(ptr_sndCE)
sfx_Signpost =		SMPS_id(ptr_sndCF)
sfx__Last =		SMPS_id(ptr_sndend)-1


; Special sound effects
SMPS_offset :=	SpecSoundIndex
SMPS_ptrsize :=	6
SMPS_idstart :=	$60

spec__First = SMPS_idstart
sfx_Waterfall =		SMPS_id(ptr_sndD0)
spec__Last =		SMPS_id(ptr_specend)-1


; DAC sound effects
SMPS_offset :=  DACMetadataTable
SMPS_ptrsize := 5
SMPS_idstart := $70

dac__First = SMPS_idstart
sfx_Sega =		SMPS_id(ptr_dacE0)
dac__Last =		SMPS_id(ptr_dacend)-1


    if MOMPASS > 1 ; Avoid undefined symbol errors by checking only after the first pass.
        if flg__Last >= bgm__First
            fatal "You have too many sound commands. flg__Last ($\{flg__Last}) can't exceed bgm__First ($\{bgm__First})."
        endif

        if bgm__Last >= sfx__First
            fatal "You have too many songs. bgm__Last ($\{bgm__Last}) can't exceed sfx__First ($\{sfx__First})."
        endif

        if sfx__Last >= spec__First
            fatal "You have too many sounds. sfx__Last ($\{sfx__Last}) can't exceed spec__First ($\{spec__First})."
        endif

        if spec__Last >= dac__First
            fatal "You have too many background sounds. spec__Last ($\{spec__Last}) can't exceed dac__First ($\{dac__First})."
        endif
    endif
