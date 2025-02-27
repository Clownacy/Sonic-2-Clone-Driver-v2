; ---------------------------------------------------------------------------
; SFX metadata (pointers, priorities, flags)

; Priority of sound. New music or SFX must have a priority higher than or equal
; to what is stored in v_sndprio or it won't play. If bit 7 of new priority is
; set ($80 and up), the new music or SFX will not set its priority -- meaning
; any music or SFX can override it (as long as it can override whatever was
; playing before). Usually, SFX will only override SFX, special SFX ($D0-$DF)
; will only override special SFX and music will only override music.
; Of course, this isn't the case anymore, as priorities no longer apply to
; special SFX or music.
; ---------------------------------------------------------------------------
; SoundTypes: SoundPriorities:
SoundIndex:
ptr_snd33:	SMPS_SFX_METADATA	Sound_33, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd34:	SMPS_SFX_METADATA	Sound_34, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd35:	SMPS_SFX_METADATA	Sound_35, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd36:	SMPS_SFX_METADATA	Sound_36, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd37:	SMPS_SFX_METADATA	Sound_37, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd38:	SMPS_SFX_METADATA	Sound_38, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd39:	SMPS_SFX_METADATA	Sound_39, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd3A:	SMPS_SFX_METADATA	Sound_3A, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd3B:	SMPS_SFX_METADATA	Sound_3B, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd3C:	SMPS_SFX_METADATA	Sound_3C, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd3D:	SMPS_SFX_METADATA	Sound_3D, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd3E:	SMPS_SFX_METADATA	Sound_3E, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd3F:	SMPS_SFX_METADATA	Sound_3F, $80, SMPS_SFX_METADATA_NORMAL

ptr_snd40:	SMPS_SFX_METADATA	Sound_40, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd41:	SMPS_SFX_METADATA	Sound_41, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd42:	SMPS_SFX_METADATA	Sound_42, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd43:	SMPS_SFX_METADATA	Sound_43, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd44:	SMPS_SFX_METADATA	Sound_44, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd45:	SMPS_SFX_METADATA	Sound_45, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd46:	SMPS_SFX_METADATA	Sound_46, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd47:	SMPS_SFX_METADATA	Sound_47, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd48:	SMPS_SFX_METADATA	Sound_48, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd49:	SMPS_SFX_METADATA	Sound_49, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd4A:	SMPS_SFX_METADATA	Sound_4A, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd4B:	SMPS_SFX_METADATA	Sound_4B, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd4C:	SMPS_SFX_METADATA	Sound_4C, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd4D:	SMPS_SFX_METADATA	Sound_4D, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd4E:	SMPS_SFX_METADATA	Sound_4E, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd4F:	SMPS_SFX_METADATA	Sound_4F, $80, SMPS_SFX_METADATA_NORMAL

ptr_snd50:	SMPS_SFX_METADATA	Sound_50, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd51:	SMPS_SFX_METADATA	Sound_51, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd52:	SMPS_SFX_METADATA	Sound_52, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd53:	SMPS_SFX_METADATA	Sound_53, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd54:	SMPS_SFX_METADATA	Sound_54, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd55:	SMPS_SFX_METADATA	Sound_55, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd56:	SMPS_SFX_METADATA	Sound_56, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd57:	SMPS_SFX_METADATA	Sound_57, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd58:	SMPS_SFX_METADATA	Sound_58, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd59:	SMPS_SFX_METADATA	Sound_59, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd5A:	SMPS_SFX_METADATA	Sound_5A, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd5B:	SMPS_SFX_METADATA	Sound_5B, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd5C:	SMPS_SFX_METADATA	Sound_5C, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd5D:	SMPS_SFX_METADATA	Sound_5D, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd5E:	SMPS_SFX_METADATA	Sound_5E, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd5F:	SMPS_SFX_METADATA	Sound_5F, $80, SMPS_SFX_METADATA_NORMAL

ptr_snd60:	SMPS_SFX_METADATA	Sound_60, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd61:	SMPS_SFX_METADATA	Sound_61, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd62:	SMPS_SFX_METADATA	Sound_62, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd63:	SMPS_SFX_METADATA	Sound_63, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd64:	SMPS_SFX_METADATA	Sound_64, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd65:	SMPS_SFX_METADATA	Sound_65, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd66:	SMPS_SFX_METADATA	Sound_66, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd67:	SMPS_SFX_METADATA	Sound_67, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd68:	SMPS_SFX_METADATA	Sound_68, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd69:	SMPS_SFX_METADATA	Sound_69, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd6A:	SMPS_SFX_METADATA	Sound_6A, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd6B:	SMPS_SFX_METADATA	Sound_6B, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd6C:	SMPS_SFX_METADATA	Sound_6C, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd6D:	SMPS_SFX_METADATA	Sound_6D, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd6E:	SMPS_SFX_METADATA	Sound_6E, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd6F:	SMPS_SFX_METADATA	Sound_6F, $80, SMPS_SFX_METADATA_NORMAL

ptr_snd70:	SMPS_SFX_METADATA	Sound_70, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd71:	SMPS_SFX_METADATA	Sound_71, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd72:	SMPS_SFX_METADATA	Sound_72, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd73:	SMPS_SFX_METADATA	Sound_73, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd74:	SMPS_SFX_METADATA	Sound_74, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd75:	SMPS_SFX_METADATA	Sound_75, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd76:	SMPS_SFX_METADATA	Sound_76, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd77:	SMPS_SFX_METADATA	Sound_77, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd78:	SMPS_SFX_METADATA	Sound_78, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd79:	SMPS_SFX_METADATA	Sound_79, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd7A:	SMPS_SFX_METADATA	Sound_7A, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd7B:	SMPS_SFX_METADATA	Sound_7B, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd7C:	SMPS_SFX_METADATA	Sound_7C, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd7D:	SMPS_SFX_METADATA	Sound_7D, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd7E:	SMPS_SFX_METADATA	Sound_7E, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd7F:	SMPS_SFX_METADATA	Sound_7F, $80, SMPS_SFX_METADATA_NORMAL

ptr_snd80:	SMPS_SFX_METADATA	Sound_80, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd81:	SMPS_SFX_METADATA	Sound_81, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd82:	SMPS_SFX_METADATA	Sound_82, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd83:	SMPS_SFX_METADATA	Sound_83, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd84:	SMPS_SFX_METADATA	Sound_84, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd85:	SMPS_SFX_METADATA	Sound_85, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd86:	SMPS_SFX_METADATA	Sound_86, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd87:	SMPS_SFX_METADATA	Sound_87, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd88:	SMPS_SFX_METADATA	Sound_88, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd89:	SMPS_SFX_METADATA	Sound_89, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd8A:	SMPS_SFX_METADATA	Sound_8A, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd8B:	SMPS_SFX_METADATA	Sound_8B, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd8C:	SMPS_SFX_METADATA	Sound_8C, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd8D:	SMPS_SFX_METADATA	Sound_8D, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd8E:	SMPS_SFX_METADATA	Sound_8E, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd8F:	SMPS_SFX_METADATA	Sound_8F, $80, SMPS_SFX_METADATA_NORMAL

ptr_snd90:	SMPS_SFX_METADATA	Sound_90, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd91:	SMPS_SFX_METADATA	Sound_91, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd92:	SMPS_SFX_METADATA	Sound_92, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd93:	SMPS_SFX_METADATA	Sound_93, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd94:	SMPS_SFX_METADATA	Sound_94, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd95:	SMPS_SFX_METADATA	Sound_95, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd96:	SMPS_SFX_METADATA	Sound_96, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd97:	SMPS_SFX_METADATA	Sound_97, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd98:	SMPS_SFX_METADATA	Sound_98, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd99:	SMPS_SFX_METADATA	Sound_99, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd9A:	SMPS_SFX_METADATA	Sound_9A, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd9B:	SMPS_SFX_METADATA	Sound_9B, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd9C:	SMPS_SFX_METADATA	Sound_9C, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd9D:	SMPS_SFX_METADATA	Sound_9D, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd9E:	SMPS_SFX_METADATA	Sound_9E, $80, SMPS_SFX_METADATA_NORMAL
ptr_snd9F:	SMPS_SFX_METADATA	Sound_9F, $80, SMPS_SFX_METADATA_NORMAL

ptr_sndA0:	SMPS_SFX_METADATA	Sound_A0, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndA1:	SMPS_SFX_METADATA	Sound_A1, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndA2:	SMPS_SFX_METADATA	Sound_A2, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndA3:	SMPS_SFX_METADATA	Sound_A3, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndA4:	SMPS_SFX_METADATA	Sound_A4, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndA5:	SMPS_SFX_METADATA	Sound_A5, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndA6:	SMPS_SFX_METADATA	Sound_A6, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndA7:	SMPS_SFX_METADATA	Sound_A7, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndA8:	SMPS_SFX_METADATA	Sound_A8, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndA9:	SMPS_SFX_METADATA	Sound_A9, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndAA:	SMPS_SFX_METADATA	Sound_AA, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndAB:	SMPS_SFX_METADATA	Sound_AB, $80, SMPS_SFX_METADATA_SPIN_DASH_REV
ptr_sndAC:	SMPS_SFX_METADATA	Sound_AC, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndAD:	SMPS_SFX_METADATA	Sound_AD, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndAE:	SMPS_SFX_METADATA	Sound_AE, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndAF:	SMPS_SFX_METADATA	Sound_AF, $80, SMPS_SFX_METADATA_NORMAL

ptr_sndB0:	SMPS_SFX_METADATA	Sound_B0, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndB1:	SMPS_SFX_METADATA	Sound_B1, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndB2:	SMPS_SFX_METADATA	Sound_B2, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndB3:	SMPS_SFX_METADATA	Sound_B3, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndB4:	SMPS_SFX_METADATA	Sound_B4, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndB5:	SMPS_SFX_METADATA	Sound_B5, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndB6:	SMPS_SFX_METADATA	Sound_B6, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndB7:	SMPS_SFX_METADATA	Sound_B7, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndB8:	SMPS_SFX_METADATA	Sound_B8, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndB9:	SMPS_SFX_METADATA	Sound_B9, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndBA:	SMPS_SFX_METADATA	Sound_BA, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndBB:	SMPS_SFX_METADATA	Sound_BB, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndBC:	SMPS_SFX_METADATA	Sound_BC, $80, SMPS_SFX_METADATA_NORMAL
ptr_sndBD:	SMPS_SFX_METADATA	Sound_BD, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndBE:	SMPS_SFX_METADATA	Sound_BE, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndBF:	SMPS_SFX_METADATA	Sound_BF, $80, SMPS_SFX_METADATA_CONTINUOUS

ptr_sndC0:	SMPS_SFX_METADATA	Sound_C0, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndC1:	SMPS_SFX_METADATA	Sound_C1, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndC2:	SMPS_SFX_METADATA	Sound_C2, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndC3:	SMPS_SFX_METADATA	Sound_C3, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndC4:	SMPS_SFX_METADATA	Sound_C4, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndC5:	SMPS_SFX_METADATA	Sound_C5, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndC6:	SMPS_SFX_METADATA	Sound_C6, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndC7:	SMPS_SFX_METADATA	Sound_C7, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndC8:	SMPS_SFX_METADATA	Sound_C8, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndC9:	SMPS_SFX_METADATA	Sound_C9, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndCA:	SMPS_SFX_METADATA	Sound_CA, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndCB:	SMPS_SFX_METADATA	Sound_CB, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndCC:	SMPS_SFX_METADATA	Sound_CC, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndCD:	SMPS_SFX_METADATA	Sound_CD, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndCE:	SMPS_SFX_METADATA	Sound_CE, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndCF:	SMPS_SFX_METADATA	Sound_CF, $80, SMPS_SFX_METADATA_CONTINUOUS

ptr_sndD0:	SMPS_SFX_METADATA	Sound_D0, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndD1:	SMPS_SFX_METADATA	Sound_D1, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndD2:	SMPS_SFX_METADATA	Sound_D2, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndD3:	SMPS_SFX_METADATA	Sound_D3, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndD4:	SMPS_SFX_METADATA	Sound_D4, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndD5:	SMPS_SFX_METADATA	Sound_D5, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndD6:	SMPS_SFX_METADATA	Sound_D6, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndD7:	SMPS_SFX_METADATA	Sound_D7, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndD8:	SMPS_SFX_METADATA	Sound_D8, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndD9:	SMPS_SFX_METADATA	Sound_D9, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndDA:	SMPS_SFX_METADATA	Sound_DA, $80, SMPS_SFX_METADATA_CONTINUOUS
ptr_sndDB:	SMPS_SFX_METADATA	Sound_DB, $80, SMPS_SFX_METADATA_CONTINUOUS

ptr_sndend

; ---------------------------------------------------------------------------
; SFX data
; ---------------------------------------------------------------------------
Sound_33:	include "Sound/SFX/33 - Ring (Right).asm"
		even
Sound_34:	include "Sound/SFX/34 - Ring (Left).asm"
		even
Sound_35:	include "Sound/SFX/35 - Death.asm"
		even
Sound_36:	include "Sound/SFX/36 - Skid.asm"
		even
Sound_37:	include "Sound/SFX/37 - Spike Hit.asm"
		even
Sound_38:	include "Sound/SFX/38 - Bubble.asm"
		even
Sound_39:	include "Sound/SFX/39 - Splash.asm"
		even
Sound_3A:	include "Sound/SFX/3A - Shield.asm"
		even
Sound_3B:	include "Sound/SFX/3B - Drown.asm"
		even
Sound_3C:	include "Sound/SFX/3C - Roll.asm"
		even
Sound_3D:	include "Sound/SFX/3D - Break.asm"
		even
Sound_3E:	include "Sound/SFX/3E - Fire Shield.asm"
		even
Sound_3F:	include "Sound/SFX/3F - Bubble Shield.asm"
		even
Sound_40:	include "Sound/SFX/40 - Unknown Shield.asm"
		even
Sound_41:	include "Sound/SFX/41 - Lightning Shield.asm"
		even
Sound_42:	include "Sound/SFX/42 - Insta Shield Attack.asm"
		even
Sound_43:	include "Sound/SFX/43 - Fire Shield Attack.asm"
		even
Sound_44:	include "Sound/SFX/44 - Bubble Shield Attack.asm"
		even
Sound_45:	include "Sound/SFX/45 - Lightning Shield Attack.asm"
		even
Sound_46:	include "Sound/SFX/46 - Whistle.asm"
		even
Sound_47:	include "Sound/SFX/47 - Sand Wall Rise.asm"
		even
Sound_48:	include "Sound/SFX/48 - Blast.asm"
		even
Sound_49:	include "Sound/SFX/49 - Thump.asm"
		even
Sound_4A:	include "Sound/SFX/4A - Grab.asm"
		even
Sound_4B:	include "Sound/SFX/4B - Waterfall Splash.asm"
		even
Sound_4C:	include "Sound/SFX/4C - Glide Land.asm"
		even
Sound_4D:	include "Sound/SFX/4D - Projectile.asm"
		even
Sound_4E:	include "Sound/SFX/4E - Missile Explode.asm"
		even
Sound_4F:	include "Sound/SFX/4F - Flamethrower (Quiet).asm"
		even
Sound_50:	include "Sound/SFX/50 - Boss Activate.asm"
		even
Sound_51:	include "Sound/SFX/51 - Missile Throw.asm"
		even
Sound_52:	include "Sound/SFX/52 - Spike Move.asm"
		even
Sound_53:	include "Sound/SFX/53 - Charging.asm"
		even
Sound_54:	include "Sound/SFX/54 - Boss Laser.asm"
		even
Sound_55:	include "Sound/SFX/55 - Block Conveyor.asm"
		even
Sound_56:	include "Sound/SFX/56 - Flip Bridge.asm"
		even
Sound_57:	include "Sound/SFX/57 - Geyser.asm"
		even
Sound_58:	include "Sound/SFX/58 - Fan Latch.asm"
		even
Sound_59:	include "Sound/SFX/59 - Collapse.asm"
		even
Sound_5A:	include "Sound/SFX/5A - Unknown Charge.asm"
		even
Sound_5B:	include "Sound/SFX/5B - Switch.asm"
		even
Sound_5C:	include "Sound/SFX/5C - Mecha Spark.asm"
		even
Sound_5D:	include "Sound/SFX/5D - Floor Thump.asm"
		even
Sound_5E:	include "Sound/SFX/5E - Laser.asm"
		even
Sound_5F:	include "Sound/SFX/5F - Crash.asm"
		even
Sound_60:	include "Sound/SFX/60 - Boss Zoom.asm"
		even
Sound_61:	include "Sound/SFX/61 - Boss Hit Floor.asm"
		even
Sound_62:	include "Sound/SFX/62 - Jump.asm"
		even
Sound_63:	include "Sound/SFX/63 - Star Post.asm"
		even
Sound_64:	include "Sound/SFX/64 - Pulley Grab.asm"
		even
Sound_65:	include "Sound/SFX/65 - Blue Sphere.asm"
		even
Sound_66:	include "Sound/SFX/66 - All Spheres Collected.asm"
		even
Sound_67:	include "Sound/SFX/67 - Level Projectile.asm"
		even
Sound_68:	include "Sound/SFX/68 - Perfect.asm"
		even
Sound_69:	include "Sound/SFX/69 - Push Block.asm"
		even
Sound_6A:	include "Sound/SFX/6A - Goal.asm"
		even
Sound_6B:	include "Sound/SFX/6B - Action Block.asm"
		even
Sound_6C:	include "Sound/SFX/6C - Splash 2.asm"
		even
Sound_6D:	include "Sound/SFX/6D - Unknown Shift.asm"
		even
Sound_6E:	include "Sound/SFX/6E - Boss Hit.asm"
		even
Sound_6F:	include "Sound/SFX/6F - Rumble 2.asm"
		even
Sound_70:	include "Sound/SFX/70 - Lava Ball.asm"
		even
Sound_71:	include "Sound/SFX/71 - Shield 2.asm"
		even
Sound_72:	include "Sound/SFX/72 - Hoverpad.asm"
		even
Sound_73:	include "Sound/SFX/73 - Transporter.asm"
		even
Sound_74:	include "Sound/SFX/74 - Tunnel Booster.asm"
		even
Sound_75:	include "Sound/SFX/75 - Balloon Platform.asm"
		even
Sound_76:	include "Sound/SFX/76 - Trap Door.asm"
		even
Sound_77:	include "Sound/SFX/77 - Balloon.asm"
		even
Sound_78:	include "Sound/SFX/78 - Gravity Machine.asm"
		even
Sound_79:	include "Sound/SFX/79 - Lightning.asm"
		even
Sound_7A:	include "Sound/SFX/7A - Boss Magma.asm"
		even
Sound_7B:	include "Sound/SFX/7B - Small Bumpers.asm"
		even
Sound_7C:	include "Sound/SFX/7C - Chain Tension.asm"
		even
Sound_7D:	include "Sound/SFX/7D - Unknown Pump.asm"
		even
Sound_7E:	include "Sound/SFX/7E - Ground Slide.asm"
		even
Sound_7F:	include "Sound/SFX/7F - Frost Puff.asm"
		even
Sound_80:	include "Sound/SFX/80 - Ice Spikes.asm"
		even
Sound_81:	include "Sound/SFX/81 - Tube Launcher.asm"
		even
Sound_82:	include "Sound/SFX/82 - Sand Splash.asm"
		even
Sound_83:	include "Sound/SFX/83 - Bridge Collapse.asm"
		even
Sound_84:	include "Sound/SFX/84 - Unknown Power-Up.asm"
		even
Sound_85:	include "Sound/SFX/85 - Unknown Power-Down.asm"
		even
Sound_86:	include "Sound/SFX/86 - Alarm.asm"
		even
Sound_87:	include "Sound/SFX/87 - Mushroom Bounce.asm"
		even
Sound_88:	include "Sound/SFX/88 - Pulley Move.asm"
		even
Sound_89:	include "Sound/SFX/89 - Weather Machine.asm"
		even
Sound_8A:	include "Sound/SFX/8A - Bouncy.asm"
		even
Sound_8B:	include "Sound/SFX/8B - Chop Tree.asm"
		even
Sound_8C:	include "Sound/SFX/8C - Chop Stuck.asm"
		even
Sound_8D:	include "Sound/SFX/8D - Unknown Flutter.asm"
		even
Sound_8E:	include "Sound/SFX/8E - Unknown Revving.asm"
		even
Sound_8F:	include "Sound/SFX/8F - Door Open.asm"
		even
Sound_90:	include "Sound/SFX/90 - Door Move.asm"
		even
Sound_91:	include "Sound/SFX/91 - Door Close.asm"
		even
Sound_92:	include "Sound/SFX/92 - Ghost Appear.asm"
		even
Sound_93:	include "Sound/SFX/93 - Boss Recovery.asm"
		even
Sound_94:	include "Sound/SFX/94 - Chain Tick.asm"
		even
Sound_95:	include "Sound/SFX/95 - Boss Hand.asm"
		even
Sound_96:	include "Sound/SFX/96 - Mecha Land.asm"
		even
Sound_97:	include "Sound/SFX/97 - Enemy Breath.asm"
		even
Sound_98:	include "Sound/SFX/98 - Boss Projectile.asm"
		even
Sound_99:	include "Sound/SFX/99 - Unknown Plink.asm"
		even
Sound_9A:	include "Sound/SFX/9A - Spring Latch.asm"
		even
Sound_9B:	include "Sound/SFX/9B - Thump Boss (Sonic & Knuckles).asm"
		even
Sound_9C:	include "Sound/SFX/9C - Super Emerald.asm"
		even
Sound_9D:	include "Sound/SFX/9D - Targeting.asm"
		even
Sound_9E:	include "Sound/SFX/9E - Clank.asm"
		even
Sound_9F:	include "Sound/SFX/9F - Super Transform.asm"
		even
Sound_A0:	include "Sound/SFX/A0 - Missile Shoot.asm"
		even
Sound_A1:	include "Sound/SFX/A1 - Unknown Ominous.asm"
		even
Sound_A2:	include "Sound/SFX/A2 - Floor Launcher.asm"
		even
Sound_A3:	include "Sound/SFX/A3 - Gravity Lift.asm"
		even
Sound_A4:	include "Sound/SFX/A4 - Mecha Transform.asm"
		even
Sound_A5:	include "Sound/SFX/A5 - Unknown Rise.asm"
		even
Sound_A6:	include "Sound/SFX/A6 - Launch Grab.asm"
		even
Sound_A7:	include "Sound/SFX/A7 - Launch Ready.asm"
		even
Sound_A8:	include "Sound/SFX/A8 - Energy Zap.asm"
		even
Sound_A9:	include "Sound/SFX/A9 - Air Ding.asm"
		even
Sound_AA:	include "Sound/SFX/AA - Bumper.asm"
		even
Sound_AB:	include "Sound/SFX/AB - Spin Dash.asm"
		even
Sound_AC:	include "Sound/SFX/AC - Continue.asm"
		even
Sound_AD:	include "Sound/SFX/AD - Launch Go (Sonic & Knuckles).asm"
		even
Sound_AE:	include "Sound/SFX/AE - Flipper.asm"
		even
Sound_AF:	include "Sound/SFX/AF - Enter Special Stage.asm"
		even
Sound_B0:	include "Sound/SFX/B0 - Register.asm"
		even
Sound_B1:	include "Sound/SFX/B1 - Spring.asm"
		even
Sound_B2:	include "Sound/SFX/B2 - Error.asm"
		even
Sound_B3:	include "Sound/SFX/B3 - Big Ring.asm"
		even
Sound_B4:	include "Sound/SFX/B4 - Explode.asm"
		even
Sound_B5:	include "Sound/SFX/B5 - Diamonds.asm"
		even
Sound_B6:	include "Sound/SFX/B6 - Dash.asm"
		even
Sound_B7:	include "Sound/SFX/B7 - Slot Machine.asm"
		even
Sound_B8:	include "Sound/SFX/B8 - Signpost.asm"
		even
Sound_B9:	include "Sound/SFX/B9 - Ring Loss.asm"
		even
Sound_BA:	include "Sound/SFX/BA - Flying.asm"
		even
Sound_BB:	include "Sound/SFX/BB - Flying (Tired).asm"
		even
Sound_BC:	include "Sound/SFX/BC - Slide Skid (Loud).asm"
		even
Sound_BD:	include "Sound/SFX/BD - Large Ship.asm"
		even
Sound_BE:	include "Sound/SFX/BE - Robotnik Siren.asm"
		even
Sound_BF:	include "Sound/SFX/BF - Boss Rotate.asm"
		even
Sound_C0:	include "Sound/SFX/C0 - Fan (Big).asm"
		even
Sound_C1:	include "Sound/SFX/C1 - Fan (Small).asm"
		even
Sound_C2:	include "Sound/SFX/C2 - Flamethrower (Loud).asm"
		even
Sound_C3:	include "Sound/SFX/C3 - Gravity Tunnel.asm"
		even
Sound_C4:	include "Sound/SFX/C4 - Boss Panic.asm"
		even
Sound_C5:	include "Sound/SFX/C5 - Unknown Spin.asm"
		even
Sound_C6:	include "Sound/SFX/C6 - Wave Hover.asm"
		even
Sound_C7:	include "Sound/SFX/C7 - Cannon Turn.asm"
		even
Sound_C8:	include "Sound/SFX/C8 - Slide Skid (Quiet).asm"
		even
Sound_C9:	include "Sound/SFX/C9 - Spike Balls.asm"
		even
Sound_CA:	include "Sound/SFX/CA - Light Tunnel.asm"
		even
Sound_CB:	include "Sound/SFX/CB - Rumble.asm"
		even
Sound_CC:	include "Sound/SFX/CC - Big Rumble.asm"
		even
Sound_CD:	include "Sound/SFX/CD - Death Egg Rise (Loud).asm"
		even
Sound_CE:	include "Sound/SFX/CE - Wind (Quiet).asm"
		even
Sound_CF:	include "Sound/SFX/CF - Wind (Loud).asm"
		even
Sound_D0:	include "Sound/SFX/D0 - Rising.asm"
		even
Sound_D1:	include "Sound/SFX/D1 - Unknown Flutter 2.asm"
		even
Sound_D2:	include "Sound/SFX/D2 - Gumball Tab.asm"
		even
Sound_D3:	include "Sound/SFX/D3 - Death Egg Rise (Quiet).asm"
		even
Sound_D4:	include "Sound/SFX/D4 - Turbine Hum.asm"
		even
Sound_D5:	include "Sound/SFX/D5 - Lava Fall.asm"
		even
Sound_D6:	include "Sound/SFX/D6 - Unknown Zap.asm"
		even
Sound_D7:	include "Sound/SFX/D7 - Conveyor Platform.asm"
		even
Sound_D8:	include "Sound/SFX/D8 - Unknown Saw.asm"
		even
Sound_D9:	include "Sound/SFX/D9 - Magnetic Spike.asm"
		even
Sound_DA:	include "Sound/SFX/DA - Leaf Blower.asm"
		even
Sound_DB:	include "Sound/SFX/DB - Water Skid.asm"
		even
