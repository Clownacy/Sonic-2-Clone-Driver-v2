; ---------------------------------------------------------------------------
; Music metadata (pointers, speed shoes tempos, flags)

; Flags:
; SMPS_MUSIC_METADATA_FORCE_PAL_SPEED   - Forces song to play at PAL speeds on PAL consoles for synchronisation (used by drowning theme)
; SMPS_MUSIC_METADATA_EXTRA_LIFE_JINGLE - Needed for songs that resume the previous song when they end
; ---------------------------------------------------------------------------
; byte_71A94: SpeedUpIndex:
MusicIndex:
ptr_mus81:	SMPS_MUSIC_METADATA	Snd_AIZ1     , 0, 0
ptr_mus82:	SMPS_MUSIC_METADATA	Snd_AIZ2     , 0, 0
ptr_mus83:	SMPS_MUSIC_METADATA	Snd_HCZ1     , 0, 0
ptr_mus84:	SMPS_MUSIC_METADATA	Snd_HCZ2     , 0, 0
ptr_mus85:	SMPS_MUSIC_METADATA	Snd_MGZ1     , 0, 0
ptr_mus86:	SMPS_MUSIC_METADATA	Snd_MGZ2     , 0, 0
ptr_mus87:	SMPS_MUSIC_METADATA	Snd_CNZ1     , 0, 0
ptr_mus88:	SMPS_MUSIC_METADATA	Snd_CNZ2     , 0, 0
ptr_mus89:	SMPS_MUSIC_METADATA	Snd_FBZ1     , 0, 0
ptr_mus8A:	SMPS_MUSIC_METADATA	Snd_FBZ2     , 0, 0
ptr_mus8B:	SMPS_MUSIC_METADATA	Snd_ICZ1     , 0, 0
ptr_mus8C:	SMPS_MUSIC_METADATA	Snd_ICZ2     , 0, 0
ptr_mus8D:	SMPS_MUSIC_METADATA	Snd_LBZ1     , 0, 0
ptr_mus8E:	SMPS_MUSIC_METADATA	Snd_LBZ2     , 0, 0
ptr_mus8F:	SMPS_MUSIC_METADATA	Snd_MHZ1     , 0, 0
ptr_mus90:	SMPS_MUSIC_METADATA	Snd_MHZ2     , 0, 0
ptr_mus91:	SMPS_MUSIC_METADATA	Snd_SOZ1     , 0, 0
ptr_mus92:	SMPS_MUSIC_METADATA	Snd_SOZ2     , 0, 0
ptr_mus93:	SMPS_MUSIC_METADATA	Snd_LRZ1     , 0, 0
ptr_mus94:	SMPS_MUSIC_METADATA	Snd_LRZ2     , 0, 0
ptr_mus95:	SMPS_MUSIC_METADATA	Snd_SSZ      , 0, 0
ptr_mus96:	SMPS_MUSIC_METADATA	Snd_DEZ1     , 0, 0
ptr_mus97:	SMPS_MUSIC_METADATA	Snd_DEZ2     , 0, 0
ptr_mus98:	SMPS_MUSIC_METADATA	Snd_Minib_SK , 0, 0
ptr_mus99:	SMPS_MUSIC_METADATA	Snd_Boss     , 0, 0
ptr_mus9A:	SMPS_MUSIC_METADATA	Snd_DDZ      , 0, 0
ptr_mus9B:	SMPS_MUSIC_METADATA	Snd_PachBonus, 0, 0
ptr_mus9C:	SMPS_MUSIC_METADATA	Snd_SpecialS , 0, 0
ptr_mus9D:	SMPS_MUSIC_METADATA	Snd_SlotBonus, 0, 0
ptr_mus9E:	SMPS_MUSIC_METADATA	Snd_GumBonus , 0, 0
ptr_mus9F:	SMPS_MUSIC_METADATA	Snd_Knux     , 0, 0
ptr_musA0:	SMPS_MUSIC_METADATA	Snd_ALZ      , 0, 0
ptr_musA1:	SMPS_MUSIC_METADATA	Snd_BPZ      , 0, 0
ptr_musA2:	SMPS_MUSIC_METADATA	Snd_DPZ      , 0, 0
ptr_musA3:	SMPS_MUSIC_METADATA	Snd_CGZ      , 0, 0
ptr_musA4:	SMPS_MUSIC_METADATA	Snd_EMZ      , 0, 0
ptr_musA5:	SMPS_MUSIC_METADATA	Snd_Title    , 0, 0
ptr_musA6:	SMPS_MUSIC_METADATA	Snd_S3Credits, 0, 0
ptr_musA7:	SMPS_MUSIC_METADATA	Snd_GameOver , 0, 0
ptr_musA8:	SMPS_MUSIC_METADATA	Snd_Continue , 0, 0
ptr_musA9:	SMPS_MUSIC_METADATA	Snd_Results  , 0, 0
ptr_musAA:	SMPS_MUSIC_METADATA	Snd_1UP      , 0, SMPS_MUSIC_METADATA_EXTRA_LIFE_JINGLE | SMPS_MUSIC_METADATA_IGNORE_SPEEDUP
ptr_musAB:	SMPS_MUSIC_METADATA	Snd_Emerald  , 0, 0
ptr_musAC:	SMPS_MUSIC_METADATA	Snd_Invic    , 0, 0
ptr_musAD:	SMPS_MUSIC_METADATA	Snd_2PMenu   , 0, 0
ptr_musAE:	SMPS_MUSIC_METADATA	Snd_Minib_SK , 0, 0
ptr_musAF:	SMPS_MUSIC_METADATA	Snd_Menu     , 0, 0
ptr_musB0:	SMPS_MUSIC_METADATA	Snd_FinalBoss, 0, 0
ptr_musB1:	SMPS_MUSIC_METADATA	Snd_Drown    , 0, SMPS_MUSIC_METADATA_FORCE_PAL_SPEED | SMPS_MUSIC_METADATA_IGNORE_SPEEDUP
ptr_musB2:	SMPS_MUSIC_METADATA	Snd_PresSega , 0, 0
ptr_musB3:	SMPS_MUSIC_METADATA	Snd_SKCredits, 0, 0
ptr_musend

; ---------------------------------------------------------------------------
; Music data
; ---------------------------------------------------------------------------
Snd_AIZ1:	include		"Sound/Music/AIZ1.asm"
		even
Snd_AIZ2:	include		"Sound/Music/AIZ2.asm"
		even
Snd_HCZ1:	include		"Sound/Music/HCZ1.asm"
		even
Snd_HCZ2:	include		"Sound/Music/HCZ2.asm"
		even
Snd_MGZ1:	include		"Sound/Music/MGZ1.asm"
		even
Snd_MGZ2:	include		"Sound/Music/MGZ2.asm"
		even
Snd_CNZ1:	include		"Sound/Music/CNZ1.asm"
		even
Snd_CNZ2:	include		"Sound/Music/CNZ2.asm"
		even
Snd_FBZ1:	include		"Sound/Music/FBZ1 (Sonic & Knuckles).asm"
		even
Snd_FBZ2:	include		"Sound/Music/FBZ2.asm"
		even
Snd_ICZ1:	include		"Sound/Music/ICZ1.asm"
		even
Snd_ICZ2:	include		"Sound/Music/ICZ2.asm"
		even
Snd_LBZ1:	include		"Sound/Music/LBZ1.asm"
		even
Snd_LBZ2:	include		"Sound/Music/LBZ2.asm"
		even
Snd_MHZ1:	include		"Sound/Music/MHZ1.asm"
		even
Snd_MHZ2:	include		"Sound/Music/MHZ2.asm"
		even
Snd_SOZ1:	include		"Sound/Music/SOZ1.asm"
		even
Snd_SOZ2:	include		"Sound/Music/SOZ2.asm"
		even
Snd_LRZ1:	include		"Sound/Music/LRZ1.asm"
		even
Snd_LRZ2:	include		"Sound/Music/LRZ2.asm"
		even
Snd_SSZ:	include		"Sound/Music/SSZ (Sonic & Knuckles).asm"
		even
Snd_DEZ1:	include		"Sound/Music/DEZ1.asm"
		even
Snd_DEZ2:	include		"Sound/Music/DEZ2.asm"
		even
Snd_Minib_SK:	include		"Sound/Music/Miniboss (Sonic & Knuckles).asm"
		even
Snd_Boss:	include		"Sound/Music/Zone Boss.asm"
		even
Snd_DDZ:	include		"Sound/Music/DDZ.asm"
		even
Snd_PachBonus:	include		"Sound/Music/Pachinko.asm"
		even
Snd_SpecialS:	include		"Sound/Music/Special Stage.asm"
		even
Snd_SlotBonus:	include		"Sound/Music/Slots.asm"
		even
Snd_GumBonus:	include		"Sound/Music/Gum Ball Machine.asm"
		even
Snd_Knux:	include		"Sound/Music/Knuckles (Sonic & Knuckles).asm"
		even
Snd_ALZ:	include		"Sound/Music/Azure Lake.asm"
		even
Snd_BPZ:	include		"Sound/Music/Balloon Park.asm"
		even
Snd_DPZ:	include		"Sound/Music/Desert Palace.asm"
		even
Snd_CGZ:	include		"Sound/Music/Chrome Gadget.asm"
		even
Snd_EMZ:	include		"Sound/Music/Endless Mine.asm"
		even
Snd_Title:	include		"Sound/Music/Title (Sonic & Knuckles).asm"
		even
Snd_S3Credits:	include		"Sound/Music/Credits (Sonic 3).asm"
		even
Snd_GameOver:	include		"Sound/Music/Game Over.asm"
		even
Snd_Continue:	include		"Sound/Music/Continue (Sonic & Knuckles).asm"
		even
Snd_Results:	include		"Sound/Music/Level Outro.asm"
		even
Snd_1UP:	include		"Sound/Music/1UP (Sonic & Knuckles).asm"
		even
Snd_Emerald:	include		"Sound/Music/Chaos Emerald.asm"
		even
Snd_Invic:	include		"Sound/Music/Invincible (Sonic & Knuckles).asm"
		even
Snd_2PMenu:	include		"Sound/Music/Competition Menu.asm"
		even
Snd_Menu:	include		"Sound/Music/Menu (Sonic & Knuckles).asm"
		even
Snd_FinalBoss:	include		"Sound/Music/Final Boss.asm"
		even
Snd_Drown:	include		"Sound/Music/Countdown.asm"
		even
Snd_PresSega:	include		"Sound/Music/Game Complete (Sonic & Knuckles).asm"
		even
Snd_SKCredits:	include		"Sound/Music/Credits (Sonic & Knuckles).asm"
		even
