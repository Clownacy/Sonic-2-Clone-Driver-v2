; ========SONIC 1 GIT EQUATES========

; ---FLAGS---
SMPS_RingSFXBehaviour	= 1
;	| If 1, SndID_Ring alternates between the left and right speakers.
;
SMPS_IdlingSegaSound	= 1
;	| If 1, the Sega sound makes the 68k idle. Needed for stock Sonic 1
;
SMPS_EnablePlaySoundLocal	= 0
;	| If 1, SMPS_PlaySoundLocal is included
;
SMPS_IsOn32X	= 0
;	| If 1, DAC driver is made compatible with the 32X
;
SMPS_EnablePWM	= 0
;	| If 1, support for four PWM tracks is added
;
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
SMPS_S28BitPSGEnvelopes	= 0

; ---DISASM-DEPENDANT VARIABLES AND FUNCTIONS---
SoundDriverLoad		= SMPS_Setup
DACDriverLoad		= SMPS_Setup

PlaySound		= SMPS_QueueSound1
PlaySound_Special	= SMPS_QueueSound2
PlaySound_Unused	= SMPS_QueueSound3

Clone_Driver_RAM	= (-(v_snddriver_ram&$80000000)<<1)|v_snddriver_ram

	if ~~DEFINED(FixMusicAndSFXDataBugs)
FixMusicAndSFXDataBugs	= 1 ; Needs to be set to fix compatibility issues with some songs and sounds.
	endif

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
DACID__First		= dac__First
;	| ID of your first DAC SFX
;
DACID__End		= dac__Last+1
;	| ID of your last DAC SFX+1
;
FlgID__First		= flg__First
;	| ID of your first command
;
FlgID__End		= flg__Last+1
;	| ID of your last command+1
;

; ---SFX CONSTANTS---
SndID_Ring		= sfx_Ring
;	| ID of your ring SFX
;
SndID_RingLeft		= sfx_RingLeft
;	| ID of your alternate ring SFX
;
MusID_StopDACSFX	= dacsfx_Fade
;	| ID of the command to stop DAC SFX
;
SndID_SegaSound		= sfx_Sega
;	| ID of your 'Sega' chant DAC SFX
;
