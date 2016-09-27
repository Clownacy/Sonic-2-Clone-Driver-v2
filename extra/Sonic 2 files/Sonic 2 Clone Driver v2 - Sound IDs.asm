; ---------------------------------------------------------------------------
; Sound IDs
; ---------------------------------------------------------------------------
; Music IDs
offset :=	MusicIndex
ptrsize :=	4
idstart :=	1
; $00 is reserved for silence

MusID__First = idstart
MusID_2PResult =		SMPS_id(ptr_mus81)	; 01
MusID_EHZ =			SMPS_id(ptr_mus82)	; 02
MusID_MCZ_2P =			SMPS_id(ptr_mus83)	; 03
MusID_OOZ =			SMPS_id(ptr_mus84)	; 04
MusID_MTZ =			SMPS_id(ptr_mus85)	; 05
MusID_HTZ =			SMPS_id(ptr_mus86)	; 06
MusID_ARZ =			SMPS_id(ptr_mus87)	; 07
MusID_CNZ_2P =			SMPS_id(ptr_mus88)	; 08
MusID_CNZ =			SMPS_id(ptr_mus89)	; 09
MusID_DEZ =			SMPS_id(ptr_mus8A)	; 0A
MusID_MCZ =			SMPS_id(ptr_mus8B)	; 0B
MusID_EHZ_2P =			SMPS_id(ptr_mus8C)	; 0C
MusID_SCZ =			SMPS_id(ptr_mus8D)	; 0D
MusID_CPZ =			SMPS_id(ptr_mus8E)	; 0E
MusID_WFZ =			SMPS_id(ptr_mus8F)	; 0F
MusID_HPZ =			SMPS_id(ptr_mus90)	; 10
MusID_Options =			SMPS_id(ptr_mus91)	; 11
MusID_SpecStage =		SMPS_id(ptr_mus92)	; 12
MusID_Boss =			SMPS_id(ptr_mus93)	; 13
MusID_EndBoss =			SMPS_id(ptr_mus94)	; 14
MusID_Ending =			SMPS_id(ptr_mus95)	; 15
MusID_SuperSonic =		SMPS_id(ptr_mus96)	; 16
MusID_Invincible =		SMPS_id(ptr_mus97)	; 17
MusID_ExtraLife =		SMPS_id(ptr_mus98)	; 18
MusID_Title =			SMPS_id(ptr_mus99)	; 19
MusID_EndLevel =		SMPS_id(ptr_mus9A)	; 1A
MusID_GameOver =		SMPS_id(ptr_mus9B)	; 1B
MusID_Continue =		SMPS_id(ptr_mus9C)	; 1C
MusID_Emerald =			SMPS_id(ptr_mus9D)	; 1D
MusID_Credits =			SMPS_id(ptr_mus9E)	; 1E
MusID_Countdown =		SMPS_id(ptr_mus9F)	; 1F
MusID__End =			SMPS_id(ptr_musend)	; 20
    if MOMPASS == 2
	if MusID__End > SndID__First
		fatal "You have too many MusPtrs. MusID__End ($\{MusID__End}) can't exceed SndID__First ($\{SndID__First})."
	endif
    endif

; Sound IDs
offset :=       SoundIndex
ptrsize :=      4
idstart :=      $80

SndID__First                    = idstart
SndID_Jump =                    SMPS_id(ptr_sndA0)   ; 80
SndID_Checkpoint =              SMPS_id(ptr_sndA1)   ; 81
SndID_SpikeSwitch =             SMPS_id(ptr_sndA2)   ; 82
SndID_Hurt =                    SMPS_id(ptr_sndA3)   ; 83
SndID_Skidding =                SMPS_id(ptr_sndA4)   ; 84
SndID_BlockPush =               SMPS_id(ptr_sndA5)   ; 85
SndID_HurtBySpikes =            SMPS_id(ptr_sndA6)   ; 86
SndID_Sparkle =                 SMPS_id(ptr_sndA7)   ; 87
SndID_Beep =                    SMPS_id(ptr_sndA8)   ; 88
SndID_SSItem =                  SMPS_id(ptr_sndA9)   ; 89    ; Sonic 1 leftover
SndID_Splash =                  SMPS_id(ptr_sndAA)   ; 8A
SndID_Swish =                   SMPS_id(ptr_sndAB)   ; 8B
SndID_BossHit =                 SMPS_id(ptr_sndAC)   ; 8C
SndID_InhalingBubble =          SMPS_id(ptr_sndAD)   ; 8D
SndID_ArrowFiring =             SMPS_id(ptr_sndAE)   ; 8E
SndID_LavaBall =                SMPS_id(ptr_sndAE)   ; 8E
SndID_Shield =                  SMPS_id(ptr_sndAF)   ; 8F
SndID_LaserBeam =               SMPS_id(ptr_sndB0)   ; 90
SndID_Electric =                SMPS_id(ptr_sndB1)   ; 91    ; Sonic 1 leftover
SndID_Drown =                   SMPS_id(ptr_sndB2)   ; 92
SndID_FireBurn =                SMPS_id(ptr_sndB3)   ; 93
SndID_Bumper =                  SMPS_id(ptr_sndB4)   ; 94
SndID_Ring =                    SMPS_id(ptr_sndB5)   ; 95
SndID_RingRight =               SMPS_id(ptr_sndB5)   ; 95
SndID_SpikesMove =              SMPS_id(ptr_sndB6)   ; 96
SndID_Rumbling =                SMPS_id(ptr_sndB7)   ; 97
SndID_Smash =                   SMPS_id(ptr_sndB9)   ; 99
SndID_SSGlass =                 SMPS_id(ptr_sndBA)   ; 9A    ; Sonic 1 leftover
SndID_DoorSlam =                SMPS_id(ptr_sndBB)   ; 9B
SndID_SpindashRelease =         SMPS_id(ptr_sndBC)   ; 9C
SndID_Hammer =                  SMPS_id(ptr_sndBD)   ; 9D
SndID_Roll =                    SMPS_id(ptr_sndBE)   ; 9E
SndID_ContinueJingle =          SMPS_id(ptr_sndBF)   ; 9F
SndID_CasinoBonus =             SMPS_id(ptr_sndC0)   ; A0
SndID_Explosion =               SMPS_id(ptr_sndC1)   ; A1
SndID_WaterWarning =            SMPS_id(ptr_sndC2)   ; A2
SndID_EnterGiantRing =          SMPS_id(ptr_sndC3)   ; A3    ; Sonic 1 leftover
SndID_BossExplosion =           SMPS_id(ptr_sndC4)   ; A4
SndID_TallyEnd =                SMPS_id(ptr_sndC5)   ; A5
SndID_RingSpill =               SMPS_id(ptr_sndC6)   ; A6
SndID_ChainRise =               SMPS_id(ptr_sndC7)   ; A7    ; Sonic 1 leftover
SndID_Flamethrower =            SMPS_id(ptr_sndC8)   ; A8
SndID_Bonus =                   SMPS_id(ptr_sndC9)   ; A9    ; Sonic 1 leftover
SndID_SpecStageEntry =          SMPS_id(ptr_sndCA)   ; AA
SndID_SlowSmash =               SMPS_id(ptr_sndCB)   ; AB
SndID_Spring =                  SMPS_id(ptr_sndCC)   ; AC
SndID_Blip =                    SMPS_id(ptr_sndCD)   ; AD
SndID_RingLeft =                SMPS_id(ptr_sndCE)   ; AE
SndID_Signpost =                SMPS_id(ptr_sndCF)   ; AF
SndID_CNZBossZap =              SMPS_id(ptr_sndD0)   ; B0
SndID_Signpost2P =              SMPS_id(ptr_sndD3)   ; B3
SndID_OOZLidPop =               SMPS_id(ptr_sndD4)   ; B4
SndID_SlidingSpike =            SMPS_id(ptr_sndD5)   ; B5
SndID_CNZElevator =             SMPS_id(ptr_sndD6)   ; B6
SndID_PlatformKnock =           SMPS_id(ptr_sndD7)   ; B7
SndID_BonusBumper =             SMPS_id(ptr_sndD8)   ; B8
SndID_LargeBumper =             SMPS_id(ptr_sndD9)   ; B9
SndID_Gloop =                   SMPS_id(ptr_sndDA)   ; BA
SndID_PreArrowFiring =          SMPS_id(ptr_sndDB)   ; BB
SndID_Fire =                    SMPS_id(ptr_sndDC)   ; BC
SndID_ArrowStick =              SMPS_id(ptr_sndDD)   ; BD
SndID_Helicopter =              SMPS_id(ptr_sndDE)   ; BE
SndID_SuperTransform =          SMPS_id(ptr_sndDF)   ; BF
SndID_SpindashRev =             SMPS_id(ptr_sndE0)   ; C0
SndID_Rumbling2 =               SMPS_id(ptr_sndE1)   ; C1
SndID_CNZLaunch =               SMPS_id(ptr_sndE2)   ; C2
SndID_Flipper =                 SMPS_id(ptr_sndE3)   ; C3
SndID_HTZLiftClick =            SMPS_id(ptr_sndE4)   ; C4
SndID_Leaves =                  SMPS_id(ptr_sndE5)   ; C5
SndID_MegaMackDrop =            SMPS_id(ptr_sndE6)   ; C6
SndID_DrawbridgeMove =          SMPS_id(ptr_sndE7)   ; C7
SndID_QuickDoorSlam =           SMPS_id(ptr_sndE8)   ; C8
SndID_DrawbridgeDown =          SMPS_id(ptr_sndE9)   ; C9
SndID_LaserBurst =              SMPS_id(ptr_sndEA)   ; CA
SndID_Scatter =                 SMPS_id(ptr_sndEB)   ; CB
SndID_LaserFloor =              SMPS_id(ptr_sndEB)   ; CB
SndID_Teleport =                SMPS_id(ptr_sndEC)   ; CC
SndID_Error =                   SMPS_id(ptr_sndED)   ; CD
SndID_MechaSonicBuzz =          SMPS_id(ptr_sndEE)   ; CE
SndID_LargeLaser =              SMPS_id(ptr_sndEF)   ; CF
SndID_OilSlide =                SMPS_id(ptr_sndF0)   ; D0
SndID__End =                    SMPS_id(ptr_sndend)  ; D1

; Sound command IDs
offset :=	Sound_ExIndex
ptrsize :=	2
idstart :=	$FA

FlgID__First			= idstart
MusID_StopSFX =			SMPS_id(ptr_flgFA)	; FA
MusID_FadeOut =			SMPS_id(ptr_flgFB)	; FB
SndID_SegaSound =		SMPS_id(ptr_flgFC)	; FC
MusID_SpeedUp =			SMPS_id(ptr_flgFD)	; FD
MusID_SlowDown =		SMPS_id(ptr_flgFE)	; FE
MusID_Stop =			SMPS_id(ptr_flgFF)	; FF
FlgID__End =			SMPS_id(ptr_flgend)	; FF + 1 (rollover)
    if MOMPASS == 2
	if SndID__End > FlgID__First
		fatal "You have too many SndPtrs. SndID__End ($\{SndID__End}) can't exceed FlgID__First ($\{FlgID__First})."
	endif
    endif
