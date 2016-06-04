; =============================================================================================
; Created by Flamewing, based on S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================
; This modification supports the Sonic 2 Clone Driver v2, and strips out support for all other drivers

; PSG conversion to S3/S&K/S3D drivers require a tone shift of 12 semi-tones.
psgdelta	EQU 12
; ---------------------------------------------------------------------------------------------
; Standard Octave Pitch Equates
	enum smpsPitch10lo=$88,smpsPitch09lo=$94,smpsPitch08lo=$A0,smpsPitch07lo=$AC,smpsPitch06lo=$B8
	enum smpsPitch05lo=$C4,smpsPitch04lo=$D0,smpsPitch03lo=$DC,smpsPitch02lo=$E8,smpsPitch01lo=$F4
	enum smpsPitch00=$00,smpsPitch01hi=$0C,smpsPitch02hi=$18,smpsPitch03hi=$24,smpsPitch04hi=$30
	enum smpsPitch05hi=$3C,smpsPitch06hi=$48,smpsPitch07hi=$54,smpsPitch08hi=$60,smpsPitch09hi=$6C
	enum smpsPitch10hi=$78
; ---------------------------------------------------------------------------------------------
; Note Equates
	enum nRst=$80+0,nC0,nCs0,nD0,nEb0,nE0,nF0,nFs0,nG0,nAb0,nA0,nBb0,nB0,nC1,nCs1,nD1
	enum nEb1=nD1+1,nE1,nF1,nFs1,nG1,nAb1,nA1,nBb1,nB1,nC2,nCs2,nD2,nEb2,nE2,nF2,nFs2
	enum nG2=nFs2+1,nAb2,nA2,nBb2,nB2,nC3,nCs3,nD3,nEb3,nE3,nF3,nFs3,nG3,nAb3,nA3,nBb3
	enum nB3=nBb3+1,nC4,nCs4,nD4,nEb4,nE4,nF4,nFs4,nG4,nAb4,nA4,nBb4,nB4,nC5,nCs5,nD5
	enum nEb5=nD5+1,nE5,nF5,nFs5,nG5,nAb5,nA5,nBb5,nB5,nC6,nCs6,nD6,nEb6,nE6,nF6,nFs6
	enum nG6=nFs6+1,nAb6,nA6,nBb6,nB6,nC7,nCs7,nD7,nEb7,nE7,nF7,nFs7,nG7,nAb7,nA7,nBb7
; SMPS2ASM uses nMaxPSG for songs from S1/S2 drivers.
; nMaxPSG1 and nMaxPSG2 are used only for songs from S3/S&K/S3D drivers.
; The use of psgdelta is intended to undo the effects of PSGPitchConvert
; and ensure that the ending note is indeed the maximum PSG frequency.
nMaxPSG				EQU nBb6-psgdelta
nMaxPSG1			EQU nBb6
nMaxPSG2			EQU nB6
; ---------------------------------------------------------------------------------------------
; PSG volume envelope equates
offset :=	PSG_Index
ptrsize :=	4
idstart :=	1

	if SMPS_S1PSGEnvelopes||SMPS_S2PSGEnvelopes
; S1/S2
fTone_01 =		SMPS_id(ptr_s1psg01)
fTone_02 =		SMPS_id(ptr_s1psg02)
fTone_03 =		SMPS_id(ptr_s1psg03)
fTone_04 =		SMPS_id(ptr_s1psg04)
fTone_05 =		SMPS_id(ptr_s1psg05)
fTone_06 =		SMPS_id(ptr_s1psg06)
fTone_07 =		SMPS_id(ptr_s1psg07)
fTone_08 =		SMPS_id(ptr_s1psg08)
fTone_09 =		SMPS_id(ptr_s1psg09)
	endif

	if SMPS_S2PSGEnvelopes
; S2
fTone_0A =		SMPS_id(ptr_s2psg0A)
fTone_0B =		SMPS_id(ptr_s2psg0B)
fTone_0C =		SMPS_id(ptr_s2psg0C)
fTone_0D =		SMPS_id(ptr_s2psg0D)
	endif

	if SMPS_S3PSGEnvelopes||SMPS_SKPSGEnvelopes||SMPS_S3DPSGEnvelopes
; S3/S&K/S3D
sTone_01 =		SMPS_id(ptr_s3psg01)
sTone_02 =		SMPS_id(ptr_s3psg02)
sTone_03 =		SMPS_id(ptr_s3psg03)
sTone_05 =		SMPS_id(ptr_s3psg05)
sTone_06 =		SMPS_id(ptr_s3psg06)
sTone_07 =		SMPS_id(ptr_s3psg07)
sTone_08 =		SMPS_id(ptr_s3psg08)
sTone_09 =		SMPS_id(ptr_s3psg09)
sTone_0A =		SMPS_id(ptr_s3psg0A)
sTone_0B =		SMPS_id(ptr_s3psg0B)
sTone_0C =		SMPS_id(ptr_s3psg0C)
sTone_0D =		SMPS_id(ptr_s3psg0D)
sTone_10 =		SMPS_id(ptr_s3psg10)
sTone_11 =		SMPS_id(ptr_s3psg11)
sTone_14 =		SMPS_id(ptr_s3psg14)
sTone_18 =		SMPS_id(ptr_s3psg18)
sTone_1A =		SMPS_id(ptr_s3psg1A)
sTone_1C =		SMPS_id(ptr_s3psg1C)
sTone_1D =		SMPS_id(ptr_s3psg1D)
sTone_1E =		SMPS_id(ptr_s3psg1E)
sTone_1F =		SMPS_id(ptr_s3psg1F)
sTone_20 =		SMPS_id(ptr_s3psg20)
sTone_21 =		SMPS_id(ptr_s3psg21)
sTone_22 =		SMPS_id(ptr_s3psg22)
sTone_23 =		SMPS_id(ptr_s3psg23)
sTone_24 =		SMPS_id(ptr_s3psg24)
sTone_25 =		SMPS_id(ptr_s3psg25)
sTone_27 =		SMPS_id(ptr_s3psg27)
	endif

	if SMPS_S3PSGEnvelopes
; S3
sTone_26a =		SMPS_id(ptr_s3psg26)
	endif

	if SMPS_S3PSGEnvelopes||SMPS_SKPSGEnvelopes
; S3/S&K
sTone_04a =		SMPS_id(ptr_s3psg04)
sTone_04 =	sTone_04a
	endif

	if SMPS_SKPSGEnvelopes||SMPS_S3DPSGEnvelopes
; S&K/S3D
sTone_26b =		SMPS_id(ptr_skpsg26)
sTone_26 =	sTone_26b
	endif

	if SMPS_S3DPSGEnvelopes
; S3D
sTone_04b =		SMPS_id(ptr_s3dpsg04)
sTone_28 =		SMPS_id(ptr_s3dpsg28)
	endif

	if SMPS_S3PSGEnvelopes||SMPS_SKPSGEnvelopes||SMPS_S3DPSGEnvelopes
; Duplicates
sTone_0E = sTone_01
sTone_0F = sTone_02
sTone_12 = sTone_05
sTone_13 = sTone_06
sTone_15 = sTone_08
sTone_16 = sTone_09
sTone_17 = sTone_0A
sTone_19 = sTone_0C
sTone_1B = sTone_0C
	endif
; ---------------------------------------------------------------------------------------------
; DAC Equates
offset :=	DAC_Table
ptrsize :=	8
idstart :=	$81

	if SMPS_S1DACSamples||SMPS_S2DACSamples
; Sonic 1 & 2
dKick =				SMPS_id(ptr_dac81)
dSnare =			SMPS_id(ptr_dac82)
dTimpani =			SMPS_id(ptr_dac85)
dHiTimpani =			SMPS_id(ptr_dac88)
dMidTimpani =			SMPS_id(ptr_dac89)
dLowTimpani =			SMPS_id(ptr_dac8A)
dVLowTimpani =			SMPS_id(ptr_dac8B)
	endif

	if SMPS_S2DACSamples
; Sonic 2
dClap =				SMPS_id(ptr_dac83)
dScratch =			SMPS_id(ptr_dac84)
dHiTom =			SMPS_id(ptr_dac86)
dVLowBongo =			SMPS_id(ptr_dac87)
dMidTom =			SMPS_id(ptr_dac8C)
dLowTom =			SMPS_id(ptr_dac8D)
dFloorTom =			SMPS_id(ptr_dac8E)
dHighBongo =			SMPS_id(ptr_dac8F)
dMidBongo =			SMPS_id(ptr_dac90)
dLowBongo =			SMPS_id(ptr_dac91)

dHiClap = dHighBongo
dMidClap = dMidBongo
dLowClap = dLowBongo
	endif

	if SMPS_S3DACSamples||SMPS_SKDACSamples||SMPS_S3DDACSamples
; Sonic 3 & K & 3D
dSnareS3 =			SMPS_id(ptr_dac92)
dHighTom =			SMPS_id(ptr_dac93)
dMidTomS3 =			SMPS_id(ptr_dac94)
dLowTomS3 =			SMPS_id(ptr_dac95)
dFloorTomS3 =			SMPS_id(ptr_dac96)
dKickS3 =			SMPS_id(ptr_dac97)
dMuffledSnare =			SMPS_id(ptr_dac98)
dCrashCymbal =			SMPS_id(ptr_dac99)
dRideCymbal =			SMPS_id(ptr_dac9A)
dLowMetalHit =			SMPS_id(ptr_dac9B)
dMetalHit =			SMPS_id(ptr_dac9C)
dHighMetalHit =			SMPS_id(ptr_dac9D)
dHigherMetalHit =		SMPS_id(ptr_dac9E)
dMidMetalHit =			SMPS_id(ptr_dac9F)
dClapS3 =			SMPS_id(ptr_dacA0)
dElectricHighTom =		SMPS_id(ptr_dacA1)
dElectricMidTom =		SMPS_id(ptr_dacA2)
dElectricLowTom =		SMPS_id(ptr_dacA3)
dElectricFloorTom =		SMPS_id(ptr_dacA4)
dTightSnare =			SMPS_id(ptr_dacA5)
dMidpitchSnare =		SMPS_id(ptr_dacA6)
dLooseSnare =			SMPS_id(ptr_dacA7)
dLooserSnare =			SMPS_id(ptr_dacA8)
dHiTimpaniS3 =			SMPS_id(ptr_dacA9)
dLowTimpaniS3 =			SMPS_id(ptr_dacAA)
dMidTimpaniS3 =			SMPS_id(ptr_dacAB)
dQuickLooseSnare =		SMPS_id(ptr_dacAC)
dClick =			SMPS_id(ptr_dacAD)
dPowerKick =			SMPS_id(ptr_dacAE)
dQuickGlassCrash =		SMPS_id(ptr_dacAF)
	endif

	if SMPS_S3DACSamples||SMPS_SKDACSamples
; Sonic 3 & K
dGlassCrashSnare =		SMPS_id(ptr_dacB0)
dGlassCrash =			SMPS_id(ptr_dacB1)
dGlassCrashKick =		SMPS_id(ptr_dacB2)
dQuietGlassCrash =		SMPS_id(ptr_dacB3)
dOddSnareKick =			SMPS_id(ptr_dacB4)
dKickExtraBass =		SMPS_id(ptr_dacB5)
dComeOn =			SMPS_id(ptr_dacB6)
dDanceSnare =			SMPS_id(ptr_dacB7)
dLooseKick =			SMPS_id(ptr_dacB8)
dModLooseKick =			SMPS_id(ptr_dacB9)
dWoo =				SMPS_id(ptr_dacBA)
dGo =				SMPS_id(ptr_dacBB)
dSnareGo =			SMPS_id(ptr_dacBC)
dPowerTom =			SMPS_id(ptr_dacBD)
dHiWoodBlock =			SMPS_id(ptr_dacBE)
dLowWoodBlock =			SMPS_id(ptr_dacBF)
dHiHitDrum =			SMPS_id(ptr_dacC0)
dLowHitDrum =			SMPS_id(ptr_dacC1)
dMetalCrashHit =		SMPS_id(ptr_dacC2)
dEchoedClapHit =		SMPS_id(ptr_dacC3)
dLowerEchoedClapHit =		SMPS_id(ptr_dacC4)
dHipHopHitKick =		SMPS_id(ptr_dacC5)
dHipHopHitPowerKick =		SMPS_id(ptr_dacC6)
dBassHey =			SMPS_id(ptr_dacC7)
dDanceStyleKick =		SMPS_id(ptr_dacC8)
dHipHopHitKick2 =		SMPS_id(ptr_dacC9)
dReverseFadingWind =		SMPS_id(ptr_dacCA)
dScratchS3 =			SMPS_id(ptr_dacCB)
dLooseSnareNoise =		SMPS_id(ptr_dacCC)
dPowerKick2 =			SMPS_id(ptr_dacCD)
dCrashingNoiseWoo =		SMPS_id(ptr_dacCE)
dQuickHit =			SMPS_id(ptr_dacCF)
dKickHey =			SMPS_id(ptr_dacD0)
dPowerKickHit =			SMPS_id(ptr_dacD1)
dLowPowerKickHit =		SMPS_id(ptr_dacD2)
dLowerPowerKickHit =		SMPS_id(ptr_dacD3)
dLowestPowerKickHit =		SMPS_id(ptr_dacD4)

dHipHopHitKick3 = dHipHopHitKick2
	endif

	if SMPS_S3DDACSamples
; Sonic 3D
dFinalFightMetalCrash =		SMPS_id(ptr_dacD5)
dIntroKick =			SMPS_id(ptr_dacD6)
	endif

	if SMPS_S3DACSamples
; Sonic 3
dEchoedClapHit_S3 =		SMPS_id(ptr_dacD7)
dLowerEchoedClapHit_S3 =	SMPS_id(ptr_dacD8)
	endif

	if SMPS_SCDACSamples
; Sonic Crackers
dBeat =				SMPS_id(ptr_dacD9)
dSnareSC =			SMPS_id(ptr_dacDA)
dHiTimTom =			SMPS_id(ptr_dacDB)
dMidTimTom =			SMPS_id(ptr_dacDC)
dLowTimTom =			SMPS_id(ptr_dacDD)
dLetsGo =			SMPS_id(ptr_dacDE)
dHey =				SMPS_id(ptr_dacDF)
	endif

	if SMPS_SegaPCM_68k = 0
; Sonic 2
dSega_S2 =			SMPS_id(ptr_dacE0)
	endif
; ---------------------------------------------------------------------------------------------
; Channel IDs for SFX
cPSG1				EQU $80
cPSG2				EQU $A0
cPSG3				EQU $C0
cNoise				EQU $E0	; Not for use in S3/S&K/S3D
cFM3				EQU $02
cFM4				EQU $04
cFM5				EQU $05
cFM6				EQU $06	; Only in S3/S&K/S3D, overrides DAC
; ---------------------------------------------------------------------------------------------
; Conversion macros and functions

conv0To256  function n,((n==0)<<8)|n
s2TempotoS1 function n,(((768-n)>>1)/(256-n))&$FF
s2TempotoS3 function n,($100-((n==0)|n))&$FF
s1TempotoS2 function n,((((conv0To256(n)-1)<<8)+(conv0To256(n)>>1))/conv0To256(n))&$FF
s1TempotoS3 function n,s2TempotoS3(s1TempotoS2(n))
s3TempotoS1 function n,s2TempotoS1(s2TempotoS3(n))
s3TempotoS2 function n,s2TempotoS3(n)

convertMainTempoMod macro mod
	if SourceDriver>=3
		dc.b	mod
	elseif SourceDriver==1
		if mod==1
			fatal "Invalid main tempo of 1 in song from Sonic 1"
		endif
		dc.b	s1TempotoS3(mod)
	elseif SourceDriver==2
		if mod==0
			fatal "Invalid main tempo of 0 in song from Sonic 2"
		endif
		dc.b	s2TempotoS3(mod)
	endif
	endm

; PSG conversion to S3/S&K/S3D drivers require a tone shift of 12 semi-tones.
PSGPitchConvert macro pitch
	if SourceDriver>=3
		dc.b	pitch
	else
		dc.b	(pitch+psgdelta)&$FF
	endif
	endm
; ---------------------------------------------------------------------------------------------
; Header Macros
smpsHeaderStartSong macro ver
SourceDriver set ver
songStart set *
	endm

smpsHeaderStartSongConvert macro ver
SourceDriver set ver
songStart set *
	endm

smpsHeaderVoiceNull macro
	if songStart<>*
		fatal "Missing smpsHeaderStartSong or smpsHeaderStartSongConvert"
	endif
	dc.l	$00000000
	endm

; Header - Set up Voice Location
; Common to music and SFX
smpsHeaderVoice macro loc
	if songStart<>*
		fatal "Missing smpsHeaderStartSong or smpsHeaderStartSongConvert"
	endif
	dc.l	loc
	endm

; Header - Set up Voice Location as S3's Universal Voice Bank
; Common to music and SFX
smpsHeaderVoiceUVB macro
	if songStart<>*
		fatal "Missing smpsHeaderStartSong or smpsHeaderStartSongConvert"
	endif
	if EnableUniversalVoiceBank
		dc.l	UniVoiceBank
	else
		fatal "Go set EnableUniversalVoiceBank to 1."
	endif
	endm

; Header macros for music (not for SFX)
; Header - Set up Channel Usage
smpsHeaderChan macro fm,psg
	dc.b	fm,psg
	endm

; Header - Set up Tempo
smpsHeaderTempo macro div,mod
	dc.b	div
	convertMainTempoMod mod
	endm

; Header - Set up DAC Channel
smpsHeaderDAC macro loc,pitch,vol
	if MOMPASS==2
	if ((loc>=songStart) && (loc-songStart>=$8000))
		fatal "Track is too far away from its header"
	endif
	endif
	dc.w	loc-songStart
	if ("pitch"<>"")
		dc.b	pitch
		if ("vol"<>"")
			dc.b	vol
		else
			dc.b	$00
		endif
	else
		dc.w	$00
	endif
	endm

; Header - Set up FM Channel
smpsHeaderFM macro loc,pitch,vol
	if MOMPASS==2
	if ((loc>=songStart) && (loc-songStart>=$8000))
		fatal "Track is too far away from its header"
	endif
	endif
	dc.w	loc-songStart
	dc.b	pitch,vol
	endm

; Header - Set up PSG Channel
smpsHeaderPSG macro loc,pitch,vol,mod,voice
	if MOMPASS==2
	if ((loc>=songStart) && (loc-songStart>=$8000))
		fatal "Track is too far away from its header"
	endif
	endif
	dc.w	loc-songStart
	PSGPitchConvert pitch
	dc.b	vol,mod,voice
	endm

; Header macros for SFX (not for music)
; Header - Set up Tempo
smpsHeaderTempoSFX macro div
	dc.b	div
	endm

; Header - Set up Channel Usage
smpsHeaderChanSFX macro chan
	dc.b	chan
	endm

; Header - Set up FM Channel
smpsHeaderSFXChannel macro chanid,loc,pitch,vol
	if chanid==cFM6
		fatal "Using channel ID of FM6 ($06) in Sonic 1 or Sonic 2 drivers is unsupported. Change it to another channel."
	endif
	dc.b	$80,chanid
	if MOMPASS==2
	if ((loc>=songStart) && (loc-songStart>=$8000))
		fatal "Track is too far away from its header"
	endif
	endif
	dc.w	loc-songStart
	if (chanid&$80)<>0
		PSGPitchConvert pitch
	else
		dc.b	pitch
	endif
	dc.b	vol
	endm
; ---------------------------------------------------------------------------------------------
; Co-ord Flag Macros and Equates
; E0xx - Panning, AMS, FMS
smpsPan macro direction,amsfms
panNone set $00
panRight set $40
panLeft set $80
panCentre set $C0
panCenter set $C0 ; silly Americans :U
	dc.b	$E0,direction+amsfms
	endm

; E1xx - Set channel frequency displacement to xx
smpsDetune macro val
	dc.b	$E1,val
	endm

; Historical version of smpsDetune
smpsAlterNote macro val
	smpsDetune val
	endm

; E2xx - Useless
smpsNop macro val
	dc.b	$E2,val
	endm

; Return (used after smpsCall)
smpsReturn macro
	dc.b	$F9
	endm

; Fade in previous song (ie. 1-Up)
smpsFade macro val
	if (SourceDriver>=3) && ("val"<>"") && ("val"<>"$FF")
		; This is one of those stupid S3+ "fades" that we don't need
	else
		dc.b	$E4
	endif
	endm

; E5xx - Set channel tempo divider to xx
smpsChanTempoDiv macro val
	dc.b	$FA,val
	endm

; E6xx - Alter Volume by xx
smpsAlterVol macro val
	dc.b	$E6,val
	endm

; E7 - Prevent attack of next note
smpsNoAttack	EQU $E7

; E8xx - Set note fill to xx
smpsNoteFill macro val
	if SourceDriver>=3
		dc.b	$FF,$01,val
	else
		dc.b	$E8,val
	endif
	endm

; Add xx to channel pitch
smpsChangeTransposition macro val
	dc.b	$FB,val
	endm

; Historical version of smpsChangeTransposition
smpsAlterPitch macro val
	smpsChangeTransposition val
	endm

; Set music tempo modifier to xx
smpsSetTempoMod macro mod
	dc.b	$FC
	convertMainTempoMod mod
	endm

; Set music tempo divider to xx
smpsSetTempoDiv macro val
	dc.b	$EA,val
	endm

; ECxx - Set Volume to xx
smpsSetVol macro val
	dc.b	$FF,$00,val
	endm

; Works on all drivers
smpsPSGAlterVol macro vol
	dc.b	$EC,vol
	endm

; Clears pushing sound flag in S1
smpsClearPush macro
	if SMPS_PushSFXBehaviour
		dc.b	$E5
	else
		fatal "Go set SMPS_PushSFXBehaviour to 1."
	endif
	endm

; Stops special SFX (S1 only) and restarts overridden music track
smpsStopSpecial macro
	if SMPS_EnableSpecSFX
		dc.b	$E9
	else
		fatal "Go set SMPS_EnableSpecSFX to 1."
	endif
	endm

; EFxx[yy] - Set Voice of FM channel to xx; xx < 0 means yy present
smpsSetvoice macro voice,songID
	dc.b	$EF,voice
	endm

; F0wwxxyyzz - Modulation - ww: wait time - xx: modulation speed - yy: change per step - zz: number of steps
smpsModSet macro wait,speed,change,step
	dc.b	$F0
	if SourceDriver>=3
		dc.b	wait-1,speed,change,conv0To256(step)/conv0To256(speed)-1
	else
		dc.b	wait,speed,change,step
	endif
	endm

; Turn on Modulation
smpsModOn macro
	dc.b	$F1
	endm

; F2 - End of channel
smpsStop macro
	dc.b	$F2
	endm

; F3xx - PSG waveform to xx
smpsPSGform macro form
	dc.b	$F3,form
	endm

; Turn off Modulation
smpsModOff macro
	dc.b	$F4
	endm

; F5xx - PSG voice to xx
smpsPSGvoice macro voice
	dc.b	$F5,voice
	endm

; F6xxxx - Jump to xxxx
smpsJump macro loc
	dc.b	$F6
	dc.w	loc-*-1
	endm

; F7xxyyzzzz - Loop back to zzzz yy times, xx being the loop index for loop recursion fixing
smpsLoop macro index,loops,loc
	dc.b	$F7
	dc.b	index,loops
	dc.w	loc-*-1
	endm

; F8xxxx - Call pattern at xxxx, saving return point
smpsCall macro loc
	dc.b	$F8
	dc.w	loc-*-1
	endm
; ---------------------------------------------------------------------------------------------
; Alter Volume
smpsFMAlterVol macro val1
	dc.b	$E6,val1
	endm

; S3/S&K/S3D/Clone Driver v2-only coordination flags

; Silences FM channel then stops as per smpsStop
smpsStopFM macro
	dc.b	$E3
	endm

smpsPlayDACSample macro sample
	dc.b	$FD,sample
	endm

smpsPlaySound macro index
	dc.b	$EB,index
	endm

; Set note values to xx-$40
smpsSetNote macro val
	dc.b	$FE,val
	endm

; FCxxxx - Jump to xxxx
smpsContinuousLoop macro loc
	if SMPS_EnableContSFX
		dc.b	$FF,$02
		dc.w	loc-*-1
	else
		fatal "You're using a Continuous SFX, but don't have EnableContSFX set"
	endif
	endm

smpsFMICommand macro reg,val
	dc.b	$EE,reg,val
	endm

	; Flags ported from other drivers.
smpsChanFMCommand macro reg,val
	dc.b	$ED,reg,val
	endm
; ---------------------------------------------------------------------------------------------
; S1/S2 only coordination flag
; Sets D1L to maximum volume (minimum attenuation) and RR to maximum for operators 3 and 4 of FM1
smpsMaxRelRate macro
	; Emulate it in S3/S&K/S3D/Clone driver
	smpsFMICommand $88,$0F
	smpsFMICommand $8C,$0F
	endm
; ---------------------------------------------------------------------------------------------
; Macros for FM instruments
; Voices - Feedback
smpsVcFeedback macro val
vcFeedback set val
	endm

; Voices - Algorithm
smpsVcAlgorithm macro val
vcAlgorithm set val
	endm

smpsVcUnusedBits macro val
vcUnusedBits set val
	endm

; Voices - Detune
smpsVcDetune macro op1,op2,op3,op4
vcDT1 set op1
vcDT2 set op2
vcDT3 set op3
vcDT4 set op4
	endm

; Voices - Coarse-Frequency
smpsVcCoarseFreq macro op1,op2,op3,op4
vcCF1 set op1
vcCF2 set op2
vcCF3 set op3
vcCF4 set op4
	endm

; Voices - Rate Scale
smpsVcRateScale macro op1,op2,op3,op4
vcRS1 set op1
vcRS2 set op2
vcRS3 set op3
vcRS4 set op4
	endm

; Voices - Attack Rate
smpsVcAttackRate macro op1,op2,op3,op4
vcAR1 set op1
vcAR2 set op2
vcAR3 set op3
vcAR4 set op4
	endm

; Voices - Amplitude Modulation
smpsVcAmpMod macro op1,op2,op3,op4
vcAM1 set op1
vcAM2 set op2
vcAM3 set op3
vcAM4 set op4
	endm

; Voices - First Decay Rate
smpsVcDecayRate1 macro op1,op2,op3,op4
vcD1R1 set op1
vcD1R2 set op2
vcD1R3 set op3
vcD1R4 set op4
	endm

; Voices - Second Decay Rate
smpsVcDecayRate2 macro op1,op2,op3,op4
vcD2R1 set op1
vcD2R2 set op2
vcD2R3 set op3
vcD2R4 set op4
	endm

; Voices - Decay Level
smpsVcDecayLevel macro op1,op2,op3,op4
vcDL1 set op1
vcDL2 set op2
vcDL3 set op3
vcDL4 set op4
	endm

; Voices - Release Rate
smpsVcReleaseRate macro op1,op2,op3,op4
vcRR1 set op1
vcRR2 set op2
vcRR3 set op3
vcRR4 set op4
	endm

; Voices - Total Level
smpsVcTotalLevel macro op1,op2,op3,op4
vcTL1 set op1
vcTL2 set op2
vcTL3 set op3
vcTL4 set op4
	dc.b	(vcUnusedBits<<6)+(vcFeedback<<3)+vcAlgorithm
;   0     1     2     3     4     5     6     7
;%1000,%1000,%1000,%1000,%1010,%1110,%1110,%1111
vcTLMask4 set ((vcAlgorithm==7)<<7)
vcTLMask3 set ((vcAlgorithm>=4)<<7)
vcTLMask2 set ((vcAlgorithm>=5)<<7)
vcTLMask1 set $80
	dc.b	(vcDT4<<4)+vcCF4 ,(vcDT3<<4)+vcCF3 ,(vcDT2<<4)+vcCF2 ,(vcDT1<<4)+vcCF1
	dc.b	(vcRS4<<6)+vcAR4 ,(vcRS3<<6)+vcAR3 ,(vcRS2<<6)+vcAR2 ,(vcRS1<<6)+vcAR1
	dc.b	(vcAM4<<5)+vcD1R4,(vcAM3<<5)+vcD1R3,(vcAM2<<5)+vcD1R2,(vcAM1<<5)+vcD1R1
	dc.b	vcD2R4           ,vcD2R3           ,vcD2R2           ,vcD2R1
	dc.b	(vcDL4<<4)+vcRR4 ,(vcDL3<<4)+vcRR3 ,(vcDL2<<4)+vcRR2 ,(vcDL1<<4)+vcRR1
	dc.b	vcTL4|vcTLMask4  ,vcTL3|vcTLMask3  ,vcTL2|vcTLMask2  ,vcTL1|vcTLMask1
	endm
