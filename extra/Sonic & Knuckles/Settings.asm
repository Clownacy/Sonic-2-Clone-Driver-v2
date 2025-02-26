; ========SONIC & KNUCKLES GIT EQUATES========

; ---FLAGS---
SMPS_RingSFXBehaviour	= 1
;	| If 1, SndID_Ring alternates between the left and right speakers.
;
SMPS_IdlingSegaSound	= 0
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
SMPS_S1DACSamples	= 0
SMPS_S2DACSamples	= 0
SMPS_S3DACSamples	= 0
SMPS_SKDACSamples	= 1
SMPS_S3DDACSamples	= 0
SMPS_SCDACSamples	= 0

SMPS_S1PSGEnvelopes	= 0
SMPS_S2PSGEnvelopes	= 0
SMPS_S3PSGEnvelopes	= 0
SMPS_SKPSGEnvelopes	= 1
SMPS_S3DPSGEnvelopes	= 0
SMPS_KCPSGEnvelopes	= 0
SMPS_S28BitPSGEnvelopes	= 0

; ---DISASM-DEPENDANT VARIABLES AND FUNCTIONS---
SndDrvInit		= SMPS_Setup

Play_Music		= SMPS_QueueSound1
    if SMPS_EnablePlaySoundLocal
Play_SFX_Local		= SMPS_QueueSound2Local
    endif
Play_SFX		= SMPS_QueueSound2
Change_Music_Tempo	= SMPS_ChangeMusicTempo

	if ~~DEFINED(FixMusicAndSFXDataBugs)
FixMusicAndSFXDataBugs	= 1 ; Needs to be set to fix compatibility issues with some songs and sounds.
	endif

; ---SOUND ID BOUNDARIES---
SndID_Ring		= sfx_RingRight
;	| ID of your ring SFX
;
SndID_RingLeft		= sfx_RingLeft
;	| ID of your alternate ring SFX
;
