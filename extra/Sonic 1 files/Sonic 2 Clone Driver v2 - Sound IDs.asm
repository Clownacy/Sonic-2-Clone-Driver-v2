; ---------------------------------------------------------------------------
; Sound IDs
; ---------------------------------------------------------------------------
; Background music
offset :=	MusicIndex
ptrsize :=	4
idstart :=	1
; $00 is reserved for silence

bgm__First = idstart
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
offset :=	SoundIndex
ptrsize :=	4
idstart :=	$80

sfx__First = idstart
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
offset :=	SpecSoundIndex
ptrsize :=	4
idstart :=	sfx__Last+1

spec__First = idstart
sfx_Waterfall =		SMPS_id(ptr_sndD0)
spec__Last =		SMPS_id(ptr_specend)-1


; Sound commands
offset :=	Sound_ExIndex
ptrsize :=	2
idstart :=	$FA

flg__First = idstart
sfx_Fade =		SMPS_id(ptr_flgFA)
bgm_Fade =		SMPS_id(ptr_flgFB)
sfx_Sega =		SMPS_id(ptr_flgFC)
bgm_Speedup =		SMPS_id(ptr_flgFD)
bgm_Slowdown =		SMPS_id(ptr_flgFE)
bgm_Stop =		SMPS_id(ptr_flgFF)
flg__Last =		SMPS_id(ptr_flgend)-1
