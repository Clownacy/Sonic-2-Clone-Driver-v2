; ========SONIC 2 GIT EQUATES========

; ---DISASM-DEPENDANT VARIABLES AND FUNCTIONS---
JmpTo_SoundDriverLoad	= SMPS_LoadDACDriver
SoundDriverLoad		= SMPS_LoadDACDriver

PlayMusic		= SMPS_PlayMusic
PlaySoundLocal		= SMPS_PlaySoundLocal
PlaySound		= SMPS_PlaySound
PlaySoundStereo		= SMPS_PlaySound2

; ---FLAGS---
SMPS_GloopSFXBehaviour	= 1
;	| If 1, SndID_Gloop only plays on every other call.
;
SMPS_PushSFXBehaviour	= 0
;	| If 1, sfx_push plays similarly to a continuous SFX.
;
SMPS_EnableSpecSFX	= 0
;	| If 1, include the Special SFX system. Used by S1's waterfall SFX
;
SMPS_EnableSpinDashSFX	= 1
;	| If 1, include S2's spin dash SFX pitch system
;
SMPS_EnableContSFX	= 0
;	| If 1, include S3K's continuous SFX system
;
SMPS_First_ContSFX	= $BC
;	| Set this to the sound ID of your first continuous SFX. This ID must be a higher number than any of your normal SFXes
;	| (Default value is S&K's)
;
SMPS_IdlingSegaSound	= 0
;	| If 1, the Sega sound makes the 68k idle. Needed for stock Sonic 1
;
SMPS_EnableUniversalVoiceBank	= 0
;	| If 1, include the Universal Voice Bank, used by S3 and S&K
;
SMPS_SegaPCM_68k	= 0
;	| If 0, the Z80 and Mega PCM handle the SEGA sample playback. If 1, the 68k handles it. I recommend Z80, as with the 68k version, if overclocked, the sound plays wrongly.
;

SMPS_S1DACSamples	= 0
SMPS_S2DACSamples	= 1
SMPS_S3DACSamples	= 0
SMPS_SKDACSamples	= 0
SMPS_S3DDACSamples	= 0
SMPS_SCDACSamples	= 0

SMPS_S1PSGEnvelopes	= 0
SMPS_S2PSGEnvelopes	= 1
SMPS_S3PSGEnvelopes	= 0
SMPS_SKPSGEnvelopes	= 0
SMPS_S3DPSGEnvelopes	= 0
