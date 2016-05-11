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

	if S1PSGEnvelopes||S2PSGEnvelopes
; S1/S2
fTone_01 =		id(ptr_s1psg01)
fTone_02 =		id(ptr_s1psg02)
fTone_03 =		id(ptr_s1psg03)
fTone_04 =		id(ptr_s1psg04)
fTone_05 =		id(ptr_s1psg05)
fTone_06 =		id(ptr_s1psg06)
fTone_07 =		id(ptr_s1psg07)
fTone_08 =		id(ptr_s1psg08)
fTone_09 =		id(ptr_s1psg09)
	endif

	if S2PSGEnvelopes
; S2
fTone_0A =		id(ptr_s2psg0A)
fTone_0B =		id(ptr_s2psg0B)
fTone_0C =		id(ptr_s2psg0C)
fTone_0D =		id(ptr_s2psg0D)
	endif

	if S3PSGEnvelopes||SKPSGEnvelopes||S3DPSGEnvelopes
; S3/S&K/S3D
sTone_01 =		id(ptr_s3psg01)
sTone_02 =		id(ptr_s3psg02)
sTone_03 =		id(ptr_s3psg03)
sTone_04 =		id(ptr_s3psg04)
sTone_05 =		id(ptr_s3psg05)
sTone_06 =		id(ptr_s3psg06)
sTone_07 =		id(ptr_s3psg07)
sTone_08 =		id(ptr_s3psg08)
sTone_09 =		id(ptr_s3psg09)
sTone_0A =		id(ptr_s3psg0A)
sTone_0B =		id(ptr_s3psg0B)
sTone_0C =		id(ptr_s3psg0C)
sTone_0D =		id(ptr_s3psg0D)
sTone_10 =		id(ptr_s3psg10)
sTone_11 =		id(ptr_s3psg11)
sTone_14 =		id(ptr_s3psg14)
sTone_18 =		id(ptr_s3psg18)
sTone_1A =		id(ptr_s3psg1A)
sTone_1C =		id(ptr_s3psg1C)
sTone_1D =		id(ptr_s3psg1D)
sTone_1E =		id(ptr_s3psg1E)
sTone_1F =		id(ptr_s3psg1F)
sTone_20 =		id(ptr_s3psg20)
sTone_21 =		id(ptr_s3psg21)
sTone_22 =		id(ptr_s3psg22)
sTone_23 =		id(ptr_s3psg23)
sTone_24 =		id(ptr_s3psg24)
sTone_25 =		id(ptr_s3psg25)
sTone_27 =		id(ptr_s3psg27)
	endif

	if S3PSGEnvelopes
; S3
sTone_26a =		id(ptr_s3psg26)
	endif

	if S3PSGEnvelopes||SKPSGEnvelopes
; S3/S&K
sTone_04a =		id(ptr_s3psg04)
	endif

	if SKPSGEnvelopes||S3DPSGEnvelopes
; S&K/S3D
sTone_26b =		id(ptr_skpsg26)
	endif

	if S3DPSGEnvelopes
; S3D
sTone_04b =		id(ptr_s3dpsg04)
sTone_28 =		id(ptr_s3dpsg28)
	endif

	if S3PSGEnvelopes||SKPSGEnvelopes||S3DPSGEnvelopes
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

	if S1DACSamples||S2DACSamples
; Sonic 1 & 2
dKick =				id(ptr_dac81)
dSnare =			id(ptr_dac82)
dTimpani =			id(ptr_dac85)
dHiTimpani =			id(ptr_dac88)
dMidTimpani =			id(ptr_dac89)
dLowTimpani =			id(ptr_dac8A)
dVLowTimpani =			id(ptr_dac8B)
	endif

	if S2DACSamples
; Sonic 2
dClap =				id(ptr_dac83)
dScratch =			id(ptr_dac84)
dHiTom =			id(ptr_dac86)
dVLowBongo =			id(ptr_dac87)
dMidTom =			id(ptr_dac8C)
dLowTom =			id(ptr_dac8D)
dFloorTom =			id(ptr_dac8E)
dHighBongo =			id(ptr_dac8F)
dMidBongo =			id(ptr_dac90)
dLowBongo =			id(ptr_dac91)

dHiClap = dHighBongo
dMidClap = dMidBongo
dLowClap = dLowBongo
	endif

	if S3DACSamples||SKDACSamples||S3DDACSamples
; Sonic 3 & K & 3D
dSnareS3 =			id(ptr_dac92)
dHighTom =			id(ptr_dac93)
dMidTomS3 =			id(ptr_dac94)
dLowTomS3 =			id(ptr_dac95)
dFloorTomS3 =			id(ptr_dac96)
dKickS3 =			id(ptr_dac97)
dMuffledSnare =			id(ptr_dac98)
dCrashCymbal =			id(ptr_dac99)
dRideCymbal =			id(ptr_dac9A)
dLowMetalHit =			id(ptr_dac9B)
dMetalHit =			id(ptr_dac9C)
dHighMetalHit =			id(ptr_dac9D)
dHigherMetalHit =		id(ptr_dac9E)
dMidMetalHit =			id(ptr_dac9F)
dClapS3 =			id(ptr_dacA0)
dElectricHighTom =		id(ptr_dacA1)
dElectricMidTom =		id(ptr_dacA2)
dElectricLowTom =		id(ptr_dacA3)
dElectricFloorTom =		id(ptr_dacA4)
dTightSnare =			id(ptr_dacA5)
dMidpitchSnare =		id(ptr_dacA6)
dLooseSnare =			id(ptr_dacA7)
dLooserSnare =			id(ptr_dacA8)
dHiTimpaniS3 =			id(ptr_dacA9)
dLowTimpaniS3 =			id(ptr_dacAA)
dMidTimpaniS3 =			id(ptr_dacAB)
dQuickLooseSnare =		id(ptr_dacAC)
dClick =			id(ptr_dacAD)
dPowerKick =			id(ptr_dacAE)
dQuickGlassCrash =		id(ptr_dacAF)
	endif

	if S3DACSamples||SKDACSamples
; Sonic 3 & K
dGlassCrashSnare =		id(ptr_dacB0)
dGlassCrash =			id(ptr_dacB1)
dGlassCrashKick =		id(ptr_dacB2)
dQuietGlassCrash =		id(ptr_dacB3)
dOddSnareKick =			id(ptr_dacB4)
dKickExtraBass =		id(ptr_dacB5)
dComeOn =			id(ptr_dacB6)
dDanceSnare =			id(ptr_dacB7)
dLooseKick =			id(ptr_dacB8)
dModLooseKick =			id(ptr_dacB9)
dWoo =				id(ptr_dacBA)
dGo =				id(ptr_dacBB)
dSnareGo =			id(ptr_dacBC)
dPowerTom =			id(ptr_dacBD)
dHiWoodBlock =			id(ptr_dacBE)
dLowWoodBlock =			id(ptr_dacBF)
dHiHitDrum =			id(ptr_dacC0)
dLowHitDrum =			id(ptr_dacC1)
dMetalCrashHit =		id(ptr_dacC2)
dEchoedClapHit =		id(ptr_dacC3)
dLowerEchoedClapHit =		id(ptr_dacC4)
dHipHopHitKick =		id(ptr_dacC5)
dHipHopHitPowerKick =		id(ptr_dacC6)
dBassHey =			id(ptr_dacC7)
dDanceStyleKick =		id(ptr_dacC8)
dHipHopHitKick2 =		id(ptr_dacC9)
dReverseFadingWind =		id(ptr_dacCA)
dScratchS3 =			id(ptr_dacCB)
dLooseSnareNoise =		id(ptr_dacCC)
dPowerKick2 =			id(ptr_dacCD)
dCrashingNoiseWoo =		id(ptr_dacCE)
dQuickHit =			id(ptr_dacCF)
dKickHey =			id(ptr_dacD0)
dPowerKickHit =			id(ptr_dacD1)
dLowPowerKickHit =		id(ptr_dacD2)
dLowerPowerKickHit =		id(ptr_dacD3)
dLowestPowerKickHit =		id(ptr_dacD4)

dHipHopHitKick3 = dHipHopHitKick2
	endif

	if S3DDACSamples
; Sonic 3D
dFinalFightMetalCrash =		id(ptr_dacD5)
dIntroKick =			id(ptr_dacD6)
	endif

	if S3DACSamples
; Sonic 3
dEchoedClapHit_S3 =		id(ptr_dacD7)
dLowerEchoedClapHit_S3 =	id(ptr_dacD8)
	endif

	if SCDACSamples
; Sonic Crackers
dBeat =				id(ptr_dacD9)
dSnareSC =			id(ptr_dacDA)
dHiTimTom =			id(ptr_dacDB)
dMidTimTom =			id(ptr_dacDC)
dLowTimTom =			id(ptr_dacDD)
dLetsGo =			id(ptr_dacDE)
dHey =				id(ptr_dacDF)
	endif

	if SegaPCM_68k = 0
; Sonic 2
dSega_S2 =			id(ptr_dacE0)
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
	dc.b	$FF,$00,direction+amsfms
	endm

; E1xx - Set channel frequency displacement to xx
smpsDetune macro val
	dc.b	$FF,$01,val
	endm

; Historical version of smpsDetune
smpsAlterNote macro val
	smpsDetune val
	endm

; E2xx - Useless
smpsNop macro val
	dc.b	$FF,$02,val
	endm

; Return (used after smpsCall)
smpsReturn macro
	dc.b	$FF,$03
	endm

; Fade in previous song (ie. 1-Up)
smpsFade macro val
	if (SourceDriver>=3) && ("val"<>"") && ("val"<>"$FF")
		; This is one of those stupid S3+ "fades" that we don't need
	else
		dc.b	$FF,$04
	endif
	endm

; E5xx - Set channel tempo divider to xx
smpsChanTempoDiv macro val
	dc.b	$FF,$05,val
	endm

; E6xx - Alter Volume by xx
smpsAlterVol macro val
	dc.b	$FF,$06,val
	endm

; E7 - Prevent attack of next note
smpsNoAttack	EQU $FE

; E8xx - Set note fill to xx
smpsNoteFill macro val
	if SourceDriver>=3
		dc.b	$FF,$1D,val
	else
		dc.b	$FF,$08,val
	endif
	endm

; Add xx to channel pitch
smpsChangeTransposition macro val
	dc.b	$FF,$09,val
	endm

; Historical version of smpsChangeTransposition
smpsAlterPitch macro val
	smpsChangeTransposition val
	endm

; Set music tempo modifier to xx
smpsSetTempoMod macro mod
	dc.b	$FF,$0A
	convertMainTempoMod mod
	endm

; Set music tempo divider to xx
smpsSetTempoDiv macro val
	dc.b	$FF,$0B,val
	endm

; ECxx - Set Volume to xx
smpsSetVol macro val
	dc.b	$FF,$1C,val
	endm

; Works on all drivers
smpsPSGAlterVol macro vol
	dc.b	$FF,$0C,vol
	endm

; Clears pushing sound flag in S1
smpsClearPush macro
	if PushBehaviour
		dc.b	$FF,$1F
	else
		fatal "Go set PushBehaviour to 1."
	endif
	endm

; Stops special SFX (S1 only) and restarts overridden music track
smpsStopSpecial macro
	if EnableSpecSFX
		dc.b	$FF,$07
	else
		fatal "Go set EnableSpecSFX to 1."
	endif
	endm

; EFxx[yy] - Set Voice of FM channel to xx; xx < 0 means yy present
smpsSetvoice macro voice,songID
	dc.b	$FF,$0D,voice
	endm

; F0wwxxyyzz - Modulation - ww: wait time - xx: modulation speed - yy: change per step - zz: number of steps
smpsModSet macro wait,speed,change,step
	dc.b	$FF,$0E
	if SourceDriver>=3
		dc.b	wait-1,speed,change,conv0To256(step)/conv0To256(speed)-1
	else
		dc.b	wait,speed,change,step
	endif
	endm

; Turn on Modulation
smpsModOn macro
	dc.b	$FF,$0F
	endm

; F2 - End of channel
smpsStop macro
	dc.b	$FF,$10
	endm

; F3xx - PSG waveform to xx
smpsPSGform macro form
	dc.b	$FF,$11,form
	endm

; Turn off Modulation
smpsModOff macro
	dc.b	$FF,$12
	endm

; F5xx - PSG voice to xx
smpsPSGvoice macro voice
	dc.b	$FF,$13,voice
	endm

; F6xxxx - Jump to xxxx
smpsJump macro loc
	dc.b	$FF,$14
	dc.w	loc-*-1
	endm

; F7xxyyzzzz - Loop back to zzzz yy times, xx being the loop index for loop recursion fixing
smpsLoop macro index,loops,loc
	dc.b	$FF,$15
	dc.b	index,loops
	dc.w	loc-*-1
	endm

; F8xxxx - Call pattern at xxxx, saving return point
smpsCall macro loc
	dc.b	$FF,$16
	dc.w	loc-*-1
	endm
; ---------------------------------------------------------------------------------------------
; Alter Volume
smpsFMAlterVol macro val1
	dc.b	$FF,$06,val1
	endm

; S3/S&K/S3D/Clone Driver v2-only coordination flags

; Silences FM channel then stops as per smpsStop
smpsStopFM macro
	dc.b	$FF,$18
	endm

smpsPlayDACSample macro sample
	dc.b	$FF,$19,sample
	endm

smpsPlaySound macro index
	dc.b	$FF,$1A,index
	endm

; Set note values to xx-$40
smpsSetNote macro val
	dc.b	$FF,$1B,val
	endm

; FCxxxx - Jump to xxxx
smpsContinuousLoop macro loc
	if EnableContSFX
		dc.b	$FF,$1E
		dc.w	loc-*-1
	else
		fatal "You're using a Continuous SFX, but don't have EnableContSFX set"
	endif
	endm

smpsFMICommand macro reg,val
	dc.b	$FF,$20,reg,val
	endm

	; Flags ported from other drivers.
smpsChanFMCommand macro reg,val
	dc.b	$FF,$17,reg,val
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
