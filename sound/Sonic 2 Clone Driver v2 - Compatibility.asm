; ========EQUATES========

	if TargetDisasm==1
; ========SONIC 2 GIT EQUATES========

; ---MACROS---
; Dummy. Just here for S1 compatibility
waitZ80 macro
    endm

; ---EQUATES---
; Z80 addresses
z80_dac_sample =		Z80_RAM+DAC_Number
z80_dac_volume =		Z80_RAM+DAC_Volume
z80_dac_type =			Z80_RAM+DAC_Type
ym2612_a0 = 			$A04000
ym2612_d0 = 			$A04001
ym2612_a1 = 			$A04002
ym2612_d1 = 			$A04003

GloopBehaviour	= 1
;	| If 1, SndID_Gloop only plays on every other call.
;
PushBehaviour	= 0
;	| If 1, sfx_push plays similarly to a continuous SFX.
;
EnableSpecSFX	= 0
;	| If 1, include the Special SFX system. Used by S1's waterfall SFX
;
EnableSpinDashSFX = 1
;	| If 1, include S2's spin dash SFX pitch system
;
EnableContSFX	= 0
;	| If 1, include S3K's continuous SFX system
;
First_ContSFX	= $BC
;	| Set this to the sound ID of your first continous SFX. This ID must be a higher number than any of your normal SFXes
;	| (Default value is S&K's)
;
IdlingSegaSound	= 0
;	| If 1, the Sega sound makes the 68k idle. Needed for stock Sonic 1
;
EnableUniversalVoiceBank	= 0
;	| If 1, include the Universal Voice Bank, used by S3 and S&K
;
S1DACSamples = 0
S2DACSamples = 1
S3DACSamples = 0
SKDACSamples = 0
S3DDACSamples = 0
SCDACSamples = 0

S1PSGEnvelopes = 0
S2PSGEnvelopes = 1
S3PSGEnvelopes = 0
SKPSGEnvelopes = 0
S3DPSGEnvelopes = 0

	elseif TargetDisasm==2
; ========SONIC 2 XENOWHIRL EQUATES========
; *rolls eyes*

; ---MACROS---
; Dummy. Just here for S1 compatibility
waitZ80 macro
    endm

id function ptr,((ptr-offset)/ptrsize+idstart)

; ---BOUNDARIES---
MusID__First	= $81
;	| ID of your first song
;
MusID__End	= $9F+1
;	| ID of your last song+1
;
SndID__First	= $A0
;	| ID of your first SFX
;
SndID__End	= $F0+1
;	| ID of your last SFX+1
;
FlgID__First	= $F8
;	| ID of your first command
;
FlgID__End	= $FD+1
;	| ID of your last command+1
;

; ---MUSIC---
MusID_ExtraLife	= $98
;	| ID of your Extra Life jingle
;

; ---SFX---
SndID_Ring	= $B5
;	| ID of your ring SFX
;
SndID_RingLeft	= $CE
;	| ID of your alternate ring SFX
;
SndID_Gloop	= $DA
;	| ID of your CPZ Gloop SFX
;
SndID_SpindashRev = $E0
;	| ID of your Spin Dash SFX
;

; ---EQUATES---
PSG_input	= $C00011
;	| Just an equate
;
; Z80 addresses
z80_dac_sample =		Z80_RAM+DAC_Number
z80_dac_volume =		Z80_RAM+DAC_Volume
z80_dac_type =			Z80_RAM+DAC_Type
ym2612_a0 = 			$A04000
ym2612_d0 = 			$A04001
ym2612_a1 = 			$A04002
ym2612_d1 = 			$A04003

GloopBehaviour	= 1
;	| If 1, SndID_Gloop only plays on every other call.
;
PushBehaviour	= 0
;	| If 1, sfx_push plays similarly to a continuous SFX.
;
EnableSpecSFX	= 0
;	| If 1, include the Special SFX system. Used by S1's waterfall SFX
;
EnableSpinDashSFX = 1
;	| If 1, include S2's spin dash SFX pitch system
;
EnableContSFX	= 0
;	| If 1, include S3K's continuous SFX system
;
First_ContSFX	= $BC
;	| Set this to the sound ID of your first continous SFX. This ID must be a higher number than any of your normal SFXes
;	| (Default value is S&K's)
;
IdlingSegaSound	= 0
;	| If 1, the Sega sound makes the 68k idle. Needed for stock Sonic 1
;
EnableUniversalVoiceBank	= 0
;	| If 1, include the Universal Voice Bank, used by S3 and S&K
;
S1DACSamples = 0
S2DACSamples = 1
S3DACSamples = 0
SKDACSamples = 0
S3DDACSamples = 0
SCDACSamples = 0

S1PSGEnvelopes = 0
S2PSGEnvelopes = 1
S3PSGEnvelopes = 0
SKPSGEnvelopes = 0
S3DPSGEnvelopes = 0

	elseif	TargetDisasm==3
; ========SONIC 1 GIT EQUATES========

id function ptr,((ptr-offset)/ptrsize+idstart)

; ---EQUATES---
; Z80 addresses
z80_dac_sample =		z80_ram+DAC_Number
z80_dac_volume =		z80_ram+DAC_Volume
z80_dac_type =			z80_ram+DAC_Type

; ---BOUNDARIES---
MusID__First	= bgm__First
;	| ID of your first song
;
MusID__End	= bgm__Last+1
;	| ID of your last song+1
;
SndID__First	= sfx__First
;	| ID of your first SFX
;
SndID__End	= sfx__Last+1
;	| ID of your last SFX+1
;
SpecID__First	= spec__First
;	| ID of your first Special SFX
;
SpecID__End	= spec__Last+1
;	| ID of your last Special SFX+1
;
FlgID__First	= flg__First
;	| ID of your first command
;
FlgID__End	= flg__Last+1
;	| ID of your last command+1
;

; ---MUSIC---
MusID_ExtraLife	= bgm_ExtraLife
;	| ID of your Extra Life jingle
;

; ---SFX---
SndID_Ring	= sfx_Ring
;	| ID of your ring SFX
;
SndID_RingLeft	= sfx_RingLeft
;	| ID of your alternate ring SFX
;
SndID_SpindashRev = $00
;	| Set this to the ID of your Spin Dash SFX (if you have one). Use with EnableSpinDashSFX
;

; ---EQUATES---
Clone_Driver_RAM	= (-(v_snddriver_ram&$80000000)<<1)|v_snddriver_ram
;	| Just an equate
;
Graphics_Flags	= v_megadrive
;PSG_input = psg_input	; needed for case-sensitive builds, but causes an error on case-insensitive builds
;	| Just an equate
;
Ctrl_1 = v_jpadhold1
;	| Just an equate
;
HW_Port_1_Data = $A10003
;	| Just an equate
;
Joypad_Read = ReadJoypads.read
;	| Post-Hivebrain had the wonderful idea of removing a useful label. Luckily, AS lets us do this
;

GloopBehaviour	= 0
;	| If 1, SndID_Gloop only plays on every other call.
;
PushBehaviour	= 1
;	| If 1, sfx_push plays similarly to a continuous SFX.
;
EnableSpecSFX	= 1
;	| If 1, include the Special SFX system. Used by S1's waterfall SFX
;
EnableSpinDashSFX = 0
;	| If 1, include S2's spin dash SFX pitch system
;
EnableContSFX	= 0
;	| If 1, include S3K's continuous SFX system
;
First_ContSFX	= $BC
;	| Set this to the sound ID of your first continous SFX. This ID must be a higher number than any of your normal SFXes
;	| (Default value is S&K's)
;
IdlingSegaSound	= 1
;	| If 1, the Sega sound makes the 68k idle. Needed for stock Sonic 1
;
EnableUniversalVoiceBank	= 0
;	| If 1, include the Universal Voice Bank, used by S3 and S&K
;
S1DACSamples = 1
S2DACSamples = 0
S3DACSamples = 0
SKDACSamples = 0
S3DDACSamples = 0
SCDACSamples = 0

S1PSGEnvelopes = 1
S2PSGEnvelopes = 0
S3PSGEnvelopes = 0
SKPSGEnvelopes = 0
S3DPSGEnvelopes = 0

	endif

; Will probably never support the Hivebrain disasm... bastard refuses to work
; Whoever uses Hivebrain never uses the AS version anyway
