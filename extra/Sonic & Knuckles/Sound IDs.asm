; ---------------------------------------------------------------------------
; Sound IDs
; ---------------------------------------------------------------------------
; $00 is reserved for silence

; Sound command IDs
mus_StopSEGA = 0
mus_MutePSG = 0
mus_Stop =			1
mus_StopSFX =			2
MusID_StopSpecSFX =		3
MusID_StopDACSFX =		4
mus_FadeOut =			5
MusID_SpeedUp =			6
MusID_SlowDown =		7
FlgID__First =			mus_Stop
FlgID__End =			MusID_SlowDown + 1


; Music IDs
SMPS_offset :=	MusicIndex
SMPS_ptrsize :=	6
SMPS_idstart :=	$10
; $00 is reserved for silence

MusID__First = SMPS_idstart
mus_AIZ1 =			SMPS_id(ptr_mus81)	; 01
mus_AIZ2 =			SMPS_id(ptr_mus82)	; 02
mus_HCZ1 =			SMPS_id(ptr_mus83)	; 03
mus_HCZ2 =			SMPS_id(ptr_mus84)	; 04
mus_MGZ1 =			SMPS_id(ptr_mus85)	; 05
mus_MGZ2 =			SMPS_id(ptr_mus86)	; 06
mus_CNZ1 =			SMPS_id(ptr_mus87)	; 07
mus_CNZ2 =			SMPS_id(ptr_mus88)	; 08
mus_FBZ1 =			SMPS_id(ptr_mus89)	; 09
mus_FBZ2 =			SMPS_id(ptr_mus8A)	; 0A
mus_ICZ1 =			SMPS_id(ptr_mus8B)	; 0B
mus_ICZ2 =			SMPS_id(ptr_mus8C)	; 0C
mus_LBZ1 =			SMPS_id(ptr_mus8D)	; 0D
mus_LBZ2 =			SMPS_id(ptr_mus8E)	; 0E
mus_MHZ1 =			SMPS_id(ptr_mus8F)	; 0F
mus_MHZ2 =			SMPS_id(ptr_mus90)	; 10
mus_SOZ1 =			SMPS_id(ptr_mus91)	; 11
mus_SOZ2 =			SMPS_id(ptr_mus92)	; 12
mus_LRZ1 =			SMPS_id(ptr_mus93)	; 13
mus_LRZ2 =			SMPS_id(ptr_mus94)	; 14
mus_SSZ	 =			SMPS_id(ptr_mus95)	; 15
mus_DEZ1 =			SMPS_id(ptr_mus96)	; 16
mus_DEZ2 =			SMPS_id(ptr_mus97)	; 17
mus_MinibossK =			SMPS_id(ptr_mus98)	; 18
mus_EndBoss =			SMPS_id(ptr_mus99)	; 19
mus_DDZ	 =			SMPS_id(ptr_mus9A)	; 1A
mus_Pachinko =			SMPS_id(ptr_mus9B)	; 1B
mus_SpecialStage =		SMPS_id(ptr_mus9C)	; 1C
mus_Slots =			SMPS_id(ptr_mus9D)	; 1D
mus_Gumball =			SMPS_id(ptr_mus9E)	; 1E
mus_Knuckles =			SMPS_id(ptr_mus9F)	; 1F
mus_ALZ	 =			SMPS_id(ptr_musA0)	; 20
mus_BPZ	 =			SMPS_id(ptr_musA1)	; 21
mus_DPZ	 =			SMPS_id(ptr_musA2)	; 22
mus_CGZ	 =			SMPS_id(ptr_musA3)	; 23
mus_EMZ	 =			SMPS_id(ptr_musA4)	; 24
mus_TitleScreen =		SMPS_id(ptr_musA5)	; 25
mus_Credits3 =			SMPS_id(ptr_musA6)	; 26
mus_GameOver =			SMPS_id(ptr_musA7)	; 27
mus_Continue =			SMPS_id(ptr_musA8)	; 28
mus_GotThroughAct =		SMPS_id(ptr_musA9)	; 29
mus_ExtraLife =			SMPS_id(ptr_musAA)	; 2A
mus_Emerald =			SMPS_id(ptr_musAB)	; 2B
mus_Invincibility =		SMPS_id(ptr_musAC)	; 2C
mus_CompetitionMenu =		SMPS_id(ptr_musAD)	; 2D
mus_Miniboss =			SMPS_id(ptr_musAE)	; 2E
mus_DataSelect =		SMPS_id(ptr_musAF)	; 2F
mus_FinalBoss =			SMPS_id(ptr_musB0)	; 30
mus_Drowning =			SMPS_id(ptr_musB1)	; 31
mus_Ending =			SMPS_id(ptr_musB2)	; 32
mus_CreditsK =			SMPS_id(ptr_musB3)	; 33
MusID__End =			SMPS_id(ptr_musend)	; 20


; Sound IDs
SMPS_offset :=	SoundIndex
SMPS_ptrsize :=	6
SMPS_idstart :=	$43

SndID__First                    = SMPS_idstart

sfx_RingRight =			SMPS_id(ptr_snd33)	; 33
sfx_RingLeft =			SMPS_id(ptr_snd34)	; 34
sfx_Death =			SMPS_id(ptr_snd35)	; 35
sfx_Skid =			SMPS_id(ptr_snd36)	; 36
sfx_SpikeHit =			SMPS_id(ptr_snd37)	; 37
sfx_Bubble =			SMPS_id(ptr_snd38)	; 38
sfx_Splash =			SMPS_id(ptr_snd39)	; 39
sfx_Shield =			SMPS_id(ptr_snd3A)	; 3A
sfx_Drown =			SMPS_id(ptr_snd3B)	; 3B
sfx_Roll =			SMPS_id(ptr_snd3C)	; 3C
sfx_Break =			SMPS_id(ptr_snd3D)	; 3D
sfx_FireShield =		SMPS_id(ptr_snd3E)	; 3E
sfx_BubbleShield =		SMPS_id(ptr_snd3F)	; 3F
sfx_UnknownShield =		SMPS_id(ptr_snd40)	; 40
sfx_LightningShield =		SMPS_id(ptr_snd41)	; 41
sfx_InstaAttack =		SMPS_id(ptr_snd42)	; 42
sfx_FireAttack =		SMPS_id(ptr_snd43)	; 43
sfx_BubbleAttack =		SMPS_id(ptr_snd44)	; 44
sfx_ElectricAttack =		SMPS_id(ptr_snd45)	; 45
sfx_Whistle =			SMPS_id(ptr_snd46)	; 46
sfx_SandwallRise =		SMPS_id(ptr_snd47)	; 47
sfx_Blast =			SMPS_id(ptr_snd48)	; 48
sfx_Thump =			SMPS_id(ptr_snd49)	; 49
sfx_Grab =			SMPS_id(ptr_snd4A)	; 4A
sfx_WaterfallSplash =		SMPS_id(ptr_snd4B)	; 4B
sfx_GlideLand =			SMPS_id(ptr_snd4C)	; 4C
sfx_Projectile =		SMPS_id(ptr_snd4D)	; 4D
sfx_MissileExplode =		SMPS_id(ptr_snd4E)	; 4E
sfx_FlamethrowerQuiet =		SMPS_id(ptr_snd4F)	; 4F
sfx_BossActivate =		SMPS_id(ptr_snd50)	; 50
sfx_MissileThrow =		SMPS_id(ptr_snd51)	; 51
sfx_SpikeMove =			SMPS_id(ptr_snd52)	; 52
sfx_Charging =			SMPS_id(ptr_snd53)	; 53
sfx_BossLaser =			SMPS_id(ptr_snd54)	; 54
sfx_BlockConveyor =		SMPS_id(ptr_snd55)	; 55
sfx_FlipBridge =		SMPS_id(ptr_snd56)	; 56
sfx_Geyser =			SMPS_id(ptr_snd57)	; 57
sfx_FanLatch =			SMPS_id(ptr_snd58)	; 58
sfx_Collapse =			SMPS_id(ptr_snd59)	; 59
sfx_UnknownCharge =		SMPS_id(ptr_snd5A)	; 5A
sfx_Switch =			SMPS_id(ptr_snd5B)	; 5B
sfx_MechaSpark =		SMPS_id(ptr_snd5C)	; 5C
sfx_FloorThump =		SMPS_id(ptr_snd5D)	; 5D
sfx_Laser =			SMPS_id(ptr_snd5E)	; 5E
sfx_Crash =			SMPS_id(ptr_snd5F)	; 5F
sfx_BossZoom =			SMPS_id(ptr_snd60)	; 60
sfx_BossHitFloor =		SMPS_id(ptr_snd61)	; 61
sfx_Jump =			SMPS_id(ptr_snd62)	; 62
sfx_Starpost =			SMPS_id(ptr_snd63)	; 63
sfx_PulleyGrab =		SMPS_id(ptr_snd64)	; 64
sfx_BlueSphere =		SMPS_id(ptr_snd65)	; 65
sfx_AllSpheres =		SMPS_id(ptr_snd66)	; 66
sfx_LevelProjectile =		SMPS_id(ptr_snd67)	; 67
sfx_Perfect =			SMPS_id(ptr_snd68)	; 68
sfx_PushBlock =			SMPS_id(ptr_snd69)	; 69
sfx_Goal =			SMPS_id(ptr_snd6A)	; 6A
sfx_ActionBlock =		SMPS_id(ptr_snd6B)	; 6B
sfx_Splash2 =			SMPS_id(ptr_snd6C)	; 6C
sfx_UnknownShift =		SMPS_id(ptr_snd6D)	; 6D
sfx_BossHit =			SMPS_id(ptr_snd6E)	; 6E
sfx_Rumble2 =			SMPS_id(ptr_snd6F)	; 6F
sfx_LavaBall =			SMPS_id(ptr_snd70)	; 70
sfx_Shield2 =			SMPS_id(ptr_snd71)	; 71
sfx_Hoverpad =			SMPS_id(ptr_snd72)	; 72
sfx_Transporter =		SMPS_id(ptr_snd73)	; 73
sfx_TunnelBooster =		SMPS_id(ptr_snd74)	; 74
sfx_BalloonPlatform =		SMPS_id(ptr_snd75)	; 75
sfx_TrapDoor =			SMPS_id(ptr_snd76)	; 76
sfx_Balloon =			SMPS_id(ptr_snd77)	; 77
sfx_GravityMachine =		SMPS_id(ptr_snd78)	; 78
sfx_Lightning =			SMPS_id(ptr_snd79)	; 79
sfx_BossMagma =			SMPS_id(ptr_snd7A)	; 7A
sfx_SmallBumpers =		SMPS_id(ptr_snd7B)	; 7B
sfx_ChainTension =		SMPS_id(ptr_snd7C)	; 7C
sfx_UnknownPump =		SMPS_id(ptr_snd7D)	; 7D
sfx_GroundSlide =		SMPS_id(ptr_snd7E)	; 7E
sfx_FrostPuff =			SMPS_id(ptr_snd7F)	; 7F
sfx_IceSpikes =			SMPS_id(ptr_snd80)	; 80
sfx_TubeLauncher =		SMPS_id(ptr_snd81)	; 81
sfx_SandSplash =		SMPS_id(ptr_snd82)	; 82
sfx_BridgeCollapse =		SMPS_id(ptr_snd83)	; 83
sfx_UnknownPowerUp =		SMPS_id(ptr_snd84)	; 84
sfx_UnknownPowerDown =		SMPS_id(ptr_snd85)	; 85
sfx_Alarm =			SMPS_id(ptr_snd86)	; 86
sfx_MushroomBounce =		SMPS_id(ptr_snd87)	; 87
sfx_PulleyMove =		SMPS_id(ptr_snd88)	; 88
sfx_WeatherMachine =		SMPS_id(ptr_snd89)	; 89
sfx_Bouncy =			SMPS_id(ptr_snd8A)	; 8A
sfx_ChopTree =			SMPS_id(ptr_snd8B)	; 8B
sfx_ChopStuck =			SMPS_id(ptr_snd8C)	; 8C
sfx_UnknownFlutter =		SMPS_id(ptr_snd8D)	; 8D
sfx_UnknownRevving =		SMPS_id(ptr_snd8E)	; 8E
sfx_DoorOpen =			SMPS_id(ptr_snd8F)	; 8F
sfx_DoorMove =			SMPS_id(ptr_snd90)	; 90
sfx_DoorClose =			SMPS_id(ptr_snd91)	; 91
sfx_GhostAppear =		SMPS_id(ptr_snd92)	; 92
sfx_BossRecovery =		SMPS_id(ptr_snd93)	; 93
sfx_ChainTick =			SMPS_id(ptr_snd94)	; 94
sfx_BossHand =			SMPS_id(ptr_snd95)	; 95
sfx_MechaLand =			SMPS_id(ptr_snd96)	; 96
sfx_EnemyBreath =		SMPS_id(ptr_snd97)	; 97
sfx_BossProjectile =		SMPS_id(ptr_snd98)	; 98
sfx_UnknownPlink =		SMPS_id(ptr_snd99)	; 99
sfx_SpringLatch =		SMPS_id(ptr_snd9A)	; 9A
sfx_ThumpBoss =			SMPS_id(ptr_snd9B)	; 9B
sfx_SuperEmerald =		SMPS_id(ptr_snd9C)	; 9C
sfx_Targeting =			SMPS_id(ptr_snd9D)	; 9D
sfx_Clank =			SMPS_id(ptr_snd9E)	; 9E
sfx_SuperTransform =		SMPS_id(ptr_snd9F)	; 9F
sfx_MissileShoot =		SMPS_id(ptr_sndA0)	; A0
sfx_UnknownOminous =		SMPS_id(ptr_sndA1)	; A1
sfx_FloorLauncher =		SMPS_id(ptr_sndA2)	; A2
sfx_GravityLift =		SMPS_id(ptr_sndA3)	; A3
sfx_MechaTransform =		SMPS_id(ptr_sndA4)	; A4
sfx_UnknownRise =		SMPS_id(ptr_sndA5)	; A5
sfx_LaunchGrab =		SMPS_id(ptr_sndA6)	; A6
sfx_LaunchReady =		SMPS_id(ptr_sndA7)	; A7
sfx_EnergyZap =			SMPS_id(ptr_sndA8)	; A8
sfx_AirDing =			SMPS_id(ptr_sndA9)	; A9
sfx_Bumper =			SMPS_id(ptr_sndAA)	; AA
sfx_Spindash =			SMPS_id(ptr_sndAB)	; AB
sfx_Continue =			SMPS_id(ptr_sndAC)	; AC
sfx_LaunchGo =			SMPS_id(ptr_sndAD)	; AD
sfx_Flipper =			SMPS_id(ptr_sndAE)	; AE
sfx_EnterSS =			SMPS_id(ptr_sndAF)	; AF
sfx_Register =			SMPS_id(ptr_sndB0)	; B0
sfx_Spring =			SMPS_id(ptr_sndB1)	; B1
sfx_Error =			SMPS_id(ptr_sndB2)	; B2
sfx_BigRing =			SMPS_id(ptr_sndB3)	; B3
sfx_Explode =			SMPS_id(ptr_sndB4)	; B4
sfx_Diamonds =			SMPS_id(ptr_sndB5)	; B5
sfx_Dash =			SMPS_id(ptr_sndB6)	; B6
sfx_SlotMachine =		SMPS_id(ptr_sndB7)	; B7
sfx_Signpost =			SMPS_id(ptr_sndB8)	; B8
sfx_RingLoss =			SMPS_id(ptr_sndB9)	; B9
sfx_Flying =			SMPS_id(ptr_sndBA)	; BA
sfx_FlyTired =			SMPS_id(ptr_sndBB)	; BB
sfx_SlideSkidLoud =		SMPS_id(ptr_sndBC)	; BC
sfx_LargeShip =			SMPS_id(ptr_sndBD)	; BD
sfx_RobotnikSiren =		SMPS_id(ptr_sndBE)	; BE
sfx_BossRotate =		SMPS_id(ptr_sndBF)	; BF
sfx_FanBig =			SMPS_id(ptr_sndC0)	; C0
sfx_FanSmall =			SMPS_id(ptr_sndC1)	; C1
sfx_FlamethrowerLoud =		SMPS_id(ptr_sndC2)	; C2
sfx_GravityTunnel =		SMPS_id(ptr_sndC3)	; C3
sfx_BossPanic =			SMPS_id(ptr_sndC4)	; C4
sfx_UnknownSpin =		SMPS_id(ptr_sndC5)	; C5
sfx_WaveHover =			SMPS_id(ptr_sndC6)	; C6
sfx_CannonTurn =		SMPS_id(ptr_sndC7)	; C7
sfx_SlideSkidQuiet =		SMPS_id(ptr_sndC8)	; C8
sfx_SpikeBalls =		SMPS_id(ptr_sndC9)	; C9
sfx_LightTunnel =		SMPS_id(ptr_sndCA)	; CA
sfx_Rumble =			SMPS_id(ptr_sndCB)	; CB
sfx_BigRumble =			SMPS_id(ptr_sndCC)	; CC
sfx_DeathEggRiseLoud =		SMPS_id(ptr_sndCD)	; CD
sfx_WindQuiet =			SMPS_id(ptr_sndCE)	; CE
sfx_WindLoud =			SMPS_id(ptr_sndCF)	; CF
sfx_Rising =			SMPS_id(ptr_sndD0)	; D0
sfx_UnknownFlutter2 =		SMPS_id(ptr_sndD1)	; D1
sfx_GumballTab =		SMPS_id(ptr_sndD2)	; D2
sfx_DeathEggRiseQuiet =		SMPS_id(ptr_sndD3)	; D3
sfx_TurbineHum =		SMPS_id(ptr_sndD4)	; D4
sfx_LavaFall =			SMPS_id(ptr_sndD5)	; D5
sfx_UnknownZap =		SMPS_id(ptr_sndD6)	; D6
sfx_ConveyorPlatform =		SMPS_id(ptr_sndD7)	; D7
sfx_UnknownSaw =		SMPS_id(ptr_sndD8)	; D8
sfx_MagneticSpike =		SMPS_id(ptr_sndD9)	; D9
sfx_LeafBlower =		SMPS_id(ptr_sndDA)	; DA
sfx_WaterSkid =			SMPS_id(ptr_sndDB)	; DB
SndID__End =			SMPS_id(ptr_sndend)	; D1


; Special sound effects
SMPS_offset :=	SpecSoundIndex
SMPS_ptrsize :=	6
SMPS_idstart :=	$F0

SpecID__First = SMPS_idstart
SpecID__End =                   SMPS_id(ptr_specend)


; DAC IDs
SMPS_offset :=	DACMetadataTable
SMPS_ptrsize :=	5
SMPS_idstart :=	$F8

DACID__First = SMPS_idstart
mus_SEGA =			SMPS_id(ptr_dacE0)
DACID__End =                    SMPS_id(ptr_dacend)


    if MOMPASS > 1 ; Avoid undefined symbol errors by checking only after the first pass.
        if FlgID__End > MusID__First
            fatal "You have too many sound commands. FlgID__End ($\{FlgID__End}) can't exceed MusID__First ($\{MusID__First})."
        endif

        if MusID__End > SndID__First
            fatal "You have too many songs. MusID__End ($\{MusID__End}) can't exceed SndID__First ($\{SndID__First})."
        endif

        if SndID__End > SpecID__First
            fatal "You have too many sounds. SndID__End ($\{SndID__End}) can't exceed SpecID__First ($\{SpecID__First})."
        endif

        if SpecID__End > DACID__First
            fatal "You have too many background sounds. SpecID__End ($\{SpecID__End}) can't exceed DACID__First ($\{DACID__First})."
        endif
    endif
