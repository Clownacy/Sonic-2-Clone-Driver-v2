; ========SONIC 1 GIT EQUATES========

; ---FLAGS---
SMPS_RingSFXBehaviour	= 1
;	| If 1, SndID_Ring alternates between the left and right speakers.
;
SMPS_GloopSFXBehaviour	= 0
;	| If 1, SndID_Gloop only plays on every other call.
;
SMPS_PushSFXBehaviour	= 1
;	| If 1, sfx_push plays similarly to a continuous SFX.
;
SMPS_EnableSpecSFX	= 1
;	| If 1, include the Special SFX system. Used by S1's waterfall SFX
;
SMPS_EnableSpinDashSFX	= 0
;	| If 1, include S2's spin dash SFX pitch system
;
SMPS_EnableContSFX	= 0
;	| If 1, include S3K's continuous SFX system
;
SMPS_First_ContSFX	= $BC
;	| Set this to the sound ID of your first continuous SFX. This ID must be a higher number than any of your normal SFXes
;	| (Default value is S&K's)
;
SMPS_IdlingSegaSound	= 1
;	| If 1, the Sega sound makes the 68k idle. Needed for stock Sonic 1
;
SMPS_EnableUniversalVoiceBank	= 0
;	| If 1, include the Universal Voice Bank, used by S3 and S&K
;
SMPS_EnablePlaySoundLocal	= 0
;	| If 1, SMPS_PlaySoundLocal is included
;
SMPS_EnableModulationEnvelopes	= 0
;	| If 1, modulation envelope support is included
;
SMPS_IsOn32X	= 0
;	| If 1, DAC driver is made compatible with the 32X
;
SMPS_EnablePWM	= 0
;	| If 1, support for four PWM tracks is added
;
SMPS_Asserts	= 0
;	| If 1, some debugging logic is enabled to catch broken behaviour in songs and sounds.
;
SMPS_SoundTest	= 0
;	| If 1, some some extra logic for my 'sound test' homebrew is enabled.

SMPS_S1DACSamples	= 1
SMPS_S2DACSamples	= 0
SMPS_S3DACSamples	= 0
SMPS_SKDACSamples	= 0
SMPS_S3DDACSamples	= 0
SMPS_SCDACSamples	= 0

SMPS_S1PSGEnvelopes	= 1
SMPS_S2PSGEnvelopes	= 0
SMPS_S3PSGEnvelopes	= 0
SMPS_SKPSGEnvelopes	= 0
SMPS_S3DPSGEnvelopes	= 0
SMPS_KCPSGEnvelopes	= 0

; ---DISASM-DEPENDANT VARIABLES AND FUNCTIONS---
SoundDriverLoad		= SMPS_Setup

PlaySound		= SMPS_QueueSound1
PlaySound_Special	= SMPS_QueueSound2
PlaySound_Unused	= SMPS_QueueSound3

Clone_Driver_RAM	= (-(v_snddriver_ram&$80000000)<<1)|v_snddriver_ram

; ---SOUND ID BOUNDARIES---
MusID__First		= bgm__First
;	| ID of your first song
;
MusID__End		= bgm__Last+1
;	| ID of your last song+1
;
SndID__First		= sfx__First
;	| ID of your first SFX
;
SndID__End		= sfx__Last+1
;	| ID of your last SFX+1
;
SpecID__First		= spec__First
;	| ID of your first Special SFX
;
SpecID__End		= spec__Last+1
;	| ID of your last Special SFX+1
;
FlgID__First		= flg__First
;	| ID of your first command
;
FlgID__End		= flg__Last+1
;	| ID of your last command+1
;

; ---MUSIC CONSTANTS---
MusID_ExtraLife		= bgm_ExtraLife
;	| ID of your Extra Life jingle
;

; ---SFX CONSTANTS---
SndID_Ring		= sfx_Ring
;	| ID of your ring SFX
;
SndID_RingLeft		= sfx_RingLeft
;	| ID of your alternate ring SFX
;
SndID_SpindashRev	= $00
;	| Set this to the ID of your Spin Dash SFX (if you have one). Use with EnableSpinDashSFX
;
