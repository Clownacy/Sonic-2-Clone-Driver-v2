; ========SONIC 2 GIT EQUATES========

; ---FLAGS---
SMPS_RingSFXBehaviour	= 1
;	| If 1, SndID_Ring alternates between the left and right speakers.
;
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
SMPS_EnablePlaySoundLocal	= 1
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
SMPS_KCPSGEnvelopes	= 0

; ---DISASM-DEPENDANT VARIABLES AND FUNCTIONS---
JmpTo_SoundDriverLoad	= SMPS_Setup
SoundDriverLoad		= SMPS_Setup

PlayMusic		= SMPS_QueueSound1
    if SMPS_EnablePlaySoundLocal
PlaySoundLocal		= SMPS_QueueSound2Local
    endif
PlaySound		= SMPS_QueueSound2
PlaySoundStereo		= SMPS_QueueSound3
