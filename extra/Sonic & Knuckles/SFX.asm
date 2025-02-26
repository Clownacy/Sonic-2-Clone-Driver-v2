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
Sound_33:	include "Sound/SFX/33.asm"
		even
Sound_34:	include "Sound/SFX/34.asm"
		even
Sound_35:	include "Sound/SFX/35.asm"
		even
Sound_36:	include "Sound/SFX/36.asm"
		even
Sound_37:	include "Sound/SFX/37.asm"
		even
Sound_38:	include "Sound/SFX/38.asm"
		even
Sound_39:	include "Sound/SFX/39.asm"
		even
Sound_3A:	include "Sound/SFX/3A.asm"
		even
Sound_3B:	include "Sound/SFX/3B.asm"
		even
Sound_3C:	include "Sound/SFX/3C.asm"
		even
Sound_3D:	include "Sound/SFX/3D.asm"
		even
Sound_3E:	include "Sound/SFX/3E.asm"
		even
Sound_3F:	include "Sound/SFX/3F.asm"
		even
Sound_40:	include "Sound/SFX/40.asm"
		even
Sound_41:	include "Sound/SFX/41.asm"
		even
Sound_42:	include "Sound/SFX/42.asm"
		even
Sound_43:	include "Sound/SFX/43.asm"
		even
Sound_44:	include "Sound/SFX/44.asm"
		even
Sound_45:	include "Sound/SFX/45.asm"
		even
Sound_46:	include "Sound/SFX/46.asm"
		even
Sound_47:	include "Sound/SFX/47.asm"
		even
Sound_48:	include "Sound/SFX/48.asm"
		even
Sound_49:	include "Sound/SFX/49.asm"
		even
Sound_4A:	include "Sound/SFX/4A.asm"
		even
Sound_4B:	include "Sound/SFX/4B.asm"
		even
Sound_4C:	include "Sound/SFX/4C.asm"
		even
Sound_4D:	include "Sound/SFX/4D.asm"
		even
Sound_4E:	include "Sound/SFX/4E.asm"
		even
Sound_4F:	include "Sound/SFX/4F.asm"
		even
Sound_50:	include "Sound/SFX/50.asm"
		even
Sound_51:	include "Sound/SFX/51.asm"
		even
Sound_52:	include "Sound/SFX/52.asm"
		even
Sound_53:	include "Sound/SFX/53.asm"
		even
Sound_54:	include "Sound/SFX/54.asm"
		even
Sound_55:	include "Sound/SFX/55.asm"
		even
Sound_56:	include "Sound/SFX/56.asm"
		even
Sound_57:	include "Sound/SFX/57.asm"
		even
Sound_58:	include "Sound/SFX/58.asm"
		even
Sound_59:	include "Sound/SFX/59.asm"
		even
Sound_5A:	include "Sound/SFX/5A.asm"
		even
Sound_5B:	include "Sound/SFX/5B.asm"
		even
Sound_5C:	include "Sound/SFX/5C.asm"
		even
Sound_5D:	include "Sound/SFX/5D.asm"
		even
Sound_5E:	include "Sound/SFX/5E.asm"
		even
Sound_5F:	include "Sound/SFX/5F.asm"
		even
Sound_60:	include "Sound/SFX/60.asm"
		even
Sound_61:	include "Sound/SFX/61.asm"
		even
Sound_62:	include "Sound/SFX/62.asm"
		even
Sound_63:	include "Sound/SFX/63.asm"
		even
Sound_64:	include "Sound/SFX/64.asm"
		even
Sound_65:	include "Sound/SFX/65.asm"
		even
Sound_66:	include "Sound/SFX/66.asm"
		even
Sound_67:	include "Sound/SFX/67.asm"
		even
Sound_68:	include "Sound/SFX/68.asm"
		even
Sound_69:	include "Sound/SFX/69.asm"
		even
Sound_6A:	include "Sound/SFX/6A.asm"
		even
Sound_6B:	include "Sound/SFX/6B.asm"
		even
Sound_6C:	include "Sound/SFX/6C.asm"
		even
Sound_6D:	include "Sound/SFX/6D.asm"
		even
Sound_6E:	include "Sound/SFX/6E.asm"
		even
Sound_6F:	include "Sound/SFX/6F.asm"
		even
Sound_70:	include "Sound/SFX/70.asm"
		even
Sound_71:	include "Sound/SFX/71.asm"
		even
Sound_72:	include "Sound/SFX/72.asm"
		even
Sound_73:	include "Sound/SFX/73.asm"
		even
Sound_74:	include "Sound/SFX/74.asm"
		even
Sound_75:	include "Sound/SFX/75.asm"
		even
Sound_76:	include "Sound/SFX/76.asm"
		even
Sound_77:	include "Sound/SFX/77.asm"
		even
Sound_78:	include "Sound/SFX/78.asm"
		even
Sound_79:	include "Sound/SFX/79.asm"
		even
Sound_7A:	include "Sound/SFX/7A.asm"
		even
Sound_7B:	include "Sound/SFX/7B.asm"
		even
Sound_7C:	include "Sound/SFX/7C.asm"
		even
Sound_7D:	include "Sound/SFX/7D.asm"
		even
Sound_7E:	include "Sound/SFX/7E.asm"
		even
Sound_7F:	include "Sound/SFX/7F.asm"
		even
Sound_80:	include "Sound/SFX/80.asm"
		even
Sound_81:	include "Sound/SFX/81.asm"
		even
Sound_82:	include "Sound/SFX/82.asm"
		even
Sound_83:	include "Sound/SFX/83.asm"
		even
Sound_84:	include "Sound/SFX/84.asm"
		even
Sound_85:	include "Sound/SFX/85.asm"
		even
Sound_86:	include "Sound/SFX/86.asm"
		even
Sound_87:	include "Sound/SFX/87.asm"
		even
Sound_88:	include "Sound/SFX/88.asm"
		even
Sound_89:	include "Sound/SFX/89.asm"
		even
Sound_8A:	include "Sound/SFX/8A.asm"
		even
Sound_8B:	include "Sound/SFX/8B.asm"
		even
Sound_8C:	include "Sound/SFX/8C.asm"
		even
Sound_8D:	include "Sound/SFX/8D.asm"
		even
Sound_8E:	include "Sound/SFX/8E.asm"
		even
Sound_8F:	include "Sound/SFX/8F.asm"
		even
Sound_90:	include "Sound/SFX/90.asm"
		even
Sound_91:	include "Sound/SFX/91.asm"
		even
Sound_92:	include "Sound/SFX/92.asm"
		even
Sound_93:	include "Sound/SFX/93.asm"
		even
Sound_94:	include "Sound/SFX/94.asm"
		even
Sound_95:	include "Sound/SFX/95.asm"
		even
Sound_96:	include "Sound/SFX/96.asm"
		even
Sound_97:	include "Sound/SFX/97.asm"
		even
Sound_98:	include "Sound/SFX/98.asm"
		even
Sound_99:	include "Sound/SFX/99.asm"
		even
Sound_9A:	include "Sound/SFX/9A.asm"
		even
Sound_9B:	include "Sound/SFX/9B (Sonic & Knuckles).asm"
		even
Sound_9C:	include "Sound/SFX/9C.asm"
		even
Sound_9D:	include "Sound/SFX/9D.asm"
		even
Sound_9E:	include "Sound/SFX/9E.asm"
		even
Sound_9F:	include "Sound/SFX/9F.asm"
		even
Sound_A0:	include "Sound/SFX/A0.asm"
		even
Sound_A1:	include "Sound/SFX/A1.asm"
		even
Sound_A2:	include "Sound/SFX/A2.asm"
		even
Sound_A3:	include "Sound/SFX/A3.asm"
		even
Sound_A4:	include "Sound/SFX/A4.asm"
		even
Sound_A5:	include "Sound/SFX/A5.asm"
		even
Sound_A6:	include "Sound/SFX/A6.asm"
		even
Sound_A7:	include "Sound/SFX/A7.asm"
		even
Sound_A8:	include "Sound/SFX/A8.asm"
		even
Sound_A9:	include "Sound/SFX/A9.asm"
		even
Sound_AA:	include "Sound/SFX/AA.asm"
		even
Sound_AB:	include "Sound/SFX/AB.asm"
		even
Sound_AC:	include "Sound/SFX/AC.asm"
		even
Sound_AD:	include "Sound/SFX/AD (Sonic & Knuckles).asm"
		even
Sound_AE:	include "Sound/SFX/AE.asm"
		even
Sound_AF:	include "Sound/SFX/AF.asm"
		even
Sound_B0:	include "Sound/SFX/B0.asm"
		even
Sound_B1:	include "Sound/SFX/B1.asm"
		even
Sound_B2:	include "Sound/SFX/B2.asm"
		even
Sound_B3:	include "Sound/SFX/B3.asm"
		even
Sound_B4:	include "Sound/SFX/B4.asm"
		even
Sound_B5:	include "Sound/SFX/B5.asm"
		even
Sound_B6:	include "Sound/SFX/B6.asm"
		even
Sound_B7:	include "Sound/SFX/B7.asm"
		even
Sound_B8:	include "Sound/SFX/B8.asm"
		even
Sound_B9:	include "Sound/SFX/B9.asm"
		even
Sound_BA:	include "Sound/SFX/BA.asm"
		even
Sound_BB:	include "Sound/SFX/BB.asm"
		even
Sound_BC:	include "Sound/SFX/BC.asm"
		even
Sound_BD:	include "Sound/SFX/BD.asm"
		even
Sound_BE:	include "Sound/SFX/BE.asm"
		even
Sound_BF:	include "Sound/SFX/BF.asm"
		even
Sound_C0:	include "Sound/SFX/C0.asm"
		even
Sound_C1:	include "Sound/SFX/C1.asm"
		even
Sound_C2:	include "Sound/SFX/C2.asm"
		even
Sound_C3:	include "Sound/SFX/C3.asm"
		even
Sound_C4:	include "Sound/SFX/C4.asm"
		even
Sound_C5:	include "Sound/SFX/C5.asm"
		even
Sound_C6:	include "Sound/SFX/C6.asm"
		even
Sound_C7:	include "Sound/SFX/C7.asm"
		even
Sound_C8:	include "Sound/SFX/C8.asm"
		even
Sound_C9:	include "Sound/SFX/C9.asm"
		even
Sound_CA:	include "Sound/SFX/CA.asm"
		even
Sound_CB:	include "Sound/SFX/CB.asm"
		even
Sound_CC:	include "Sound/SFX/CC.asm"
		even
Sound_CD:	include "Sound/SFX/CD.asm"
		even
Sound_CE:	include "Sound/SFX/CE.asm"
		even
Sound_CF:	include "Sound/SFX/CF.asm"
		even
Sound_D0:	include "Sound/SFX/D0.asm"
		even
Sound_D1:	include "Sound/SFX/D1.asm"
		even
Sound_D2:	include "Sound/SFX/D2.asm"
		even
Sound_D3:	include "Sound/SFX/D3.asm"
		even
Sound_D4:	include "Sound/SFX/D4.asm"
		even
Sound_D5:	include "Sound/SFX/D5.asm"
		even
Sound_D6:	include "Sound/SFX/D6.asm"
		even
Sound_D7:	include "Sound/SFX/D7.asm"
		even
Sound_D8:	include "Sound/SFX/D8.asm"
		even
Sound_D9:	include "Sound/SFX/D9.asm"
		even
Sound_DA:	include "Sound/SFX/DA.asm"
		even
Sound_DB:	include "Sound/SFX/DB.asm"
		even
