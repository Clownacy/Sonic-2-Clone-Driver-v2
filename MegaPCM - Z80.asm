; ===============================================================
; ---------------------------------------------------------------
; Mega PCM v.1.1
; (C) 2012, Vladikcomper
; http://forums.sonicretro.org/index.php?showtopic=29057
; ---------------------------------------------------------------

	!org 0 ; Z80 code starting at address 0 has special meaning to s2p2bin.exe

	cpu	z80undoc
	listing purecode

; ---------------------------------------------------------------
; Constants
; ---------------------------------------------------------------

; Memory variables

Stack		equ	1FF0h
Ptr_InitPlayback equ	Event_InitPlayback+1	; Init Playback event pointer
Ptr_SoundProc	equ	Event_SoundProc+1	; Sound process event pointer
Ptr_Interrupt	equ	Event_Interrupt+1	; Sound interrupt event pointer
Ptr_EndPlayback	equ	Event_EndPlayback+1	; End playback event pointer
DAC_Number	equ	1FFFh			; Number of DAC sample to play ($81-based)
						; There are special numbers to control playback:
						;	$80	- Stop Playback
						;	$7F	- Pause Playback
						;	$00	- Continue Playback

; System ports

YM_Port0_Ctrl	equ	4000h
YM_Port0_Data	equ	4001h
YM_Port1_Ctrl	equ	4002h
YM_Port1_Data	equ	4003h
BankRegister	equ	6000h

; Sample struct vars

flags	equ	0	; playback flags
pitch	equ	1	; pitch value
s_bank	equ	2	; start bank
e_bank	equ	3	; end bank
s_pos	equ	4	; start offset (in first bank)
e_pos	equ	6	; end offset (in last bank)


; ===============================================================
; ---------------------------------------------------------------
; Driver initialization code
; ---------------------------------------------------------------

	di				; disable interrupts
	di
	di

	; Setup variables
	ld	sp,Stack		; init SP
	xor	a			; a = 0
	ld	(DAC_Number),a		; reset DAC to play
	ld	h,a
	ld	l,a
	ld	(Ptr_InitPlayback),hl	; reset 'InitPlayback' event
	ld	(Ptr_SoundProc),hl	; reset 'SoundProc' event
	ld	(Ptr_Interrupt),hl	; reset 'Interrupt' event
	ld	(Ptr_EndPlayback),hl	; reset 'PlayOver' event
	ld	iy,YM_Port0_Ctrl

; ---------------------------------------------------------------
; Idle loop, waiting DAC number input
; ---------------------------------------------------------------

Idle_Loop:
	ld	hl,DAC_Number

Idle_WaitDAC:
	ld	a,(hl)			; load DAC number
	or	a			; test it
	jp	p,Idle_WaitDAC		; if it's positive, branch

; ---------------------------------------------------------------
; Load DAC sample according to its number and play it
; ---------------------------------------------------------------

LoadDAC:
	sub	81h			; subtract 81h from DAC number
	jr	c,Idle_WaitDAC		; if a = 80h, branch
	ld	(hl),0h			; reset DAC number in RAM

	; Load DAC table entry
	ld	ix,DAC_Table		; ix = DAC Table
	ld	h,0h
	ld	l,a			; hl = DAC
	add	hl,hl			; hl = DAC*2
	add	hl,hl			; hl = DAC*4
	add	hl,hl			; hl = DAC*8
	ex	de,hl
	add	ix,de			; ix = DAC_Table + DAC*8

	; Init events table according to playback mode
	ld	a,(ix+flags)		; a = Flags
	and	7h			; mask only Mode
	add	a,a			; a = Mode*2
	add	a,a			; a = Mode*4
	add	a,a			; a = Mode*8
	ld	b,0h
	ld	c,a			; bc = Mode*8
	ld	hl,Events_List
	add	hl,bc			; hl = Events_List + Mode*8
	ld	de,Ptr_InitPlayback	; de = Events Pointers
	ld	bc,4FFh			; do 4 times, 'c' should never borrow 'b' on decrement
-	ldi				; transfer event pointer
	ldi				;
	inc	de			; skip a byte in events table ('jp' opcode)
	djnz	-

	jp	Event_InitPlayback	; launch 'InitPlayback' event

; ---------------------------------------------------------------
; Setup YM to playback DAC
; ---------------------------------------------------------------

SetupDAC:
	ld	(iy+0),2Bh		;
	ld	(iy+1),80h		; YM => Enable DAC
	ld	a,(ix+flags)		; load flags
	and	0C0h			; are pan bits set?
	jr	z,+			; if not, branch
        ld	(iy+2),0B6h		;
	ld	(iy+3),a		; YM => Set Pan
+	ld	(iy+0),2Ah		; setup YM to fetch DAC bytes
	ret

; ---------------------------------------------------------------

Events_List:
	;	Initplayback,	SoundProc,	Interrupt,	EndPlayback	;
	dw	Init_PCM,	Process_PCM,	Int_Normal,	StopDAC		; Mode 0
	dw	Init_PCM,	Process_PCM,	Int_NoOverride,	StopDAC		; Mode 1
	dw	Init_PCM,	Process_PCM,	Int_Normal,	Reload_PCM	; Mode 2
	dw	Init_PCM,	Process_PCM,	Int_NoOverride,	Reload_PCM	; Mode 3
	dw	Init_DPCM,	Process_DPCM,	Int_Normal,	StopDAC		; Mode 4
	dw	Init_DPCM,	Process_DPCM,	Int_NoOverride,	StopDAC		; Mode 5
	dw	Init_DPCM,	Process_DPCM,	Int_Normal,	Reload_DPCM	; Mode 6
	dw	Init_DPCM,	Process_DPCM,	Int_NoOverride,	Reload_DPCM	; Mode 7

; ===============================================================
; ---------------------------------------------------------------
; Dynamic Events Table, filled from 'Events_List'
; ---------------------------------------------------------------

Event_InitPlayback:
	jp	0h

Event_SoundProc:
	jp	0h
	
Event_Interrupt:
	jp	0h

Event_EndPlayback:
	jp	0h


; ===============================================================
; ---------------------------------------------------------------
; Routines to control sound playback (stop/pause/interrupt)
; ---------------------------------------------------------------
; NOTICE:
;	The following routines are 'Interrupt' event handlers,
;	they must't use any registers except A. If they does, 
;	it will break sample playback code.
;	You may do push/pop from stack though.
;	'StopDAC' is expection, as it breaks playback anyway.
; ---------------------------------------------------------------

; ---------------------------------------------------------------
; DAC Interrupt: Normal Priority
; ---------------------------------------------------------------
; INPUT:
;	a	= Ctrl byte
; ---------------------------------------------------------------

Int_Normal:
	cp	80h			; stop flag?
	jp	z,StopDAC		; if yes, branch
	jp	m,PauseDAC		; if < 80h, branch
	ld	hl,DAC_Number
	jp	LoadDAC

; ---------------------------------------------------------------
; DAC Interrupt: High Priority
; ---------------------------------------------------------------
; INPUT:
;	a	= Ctrl byte
; ---------------------------------------------------------------

Int_NoOverride:
	cp	80h			; stop flag?
	jp	z,StopDAC		; if yes, branch
	jp	m,PauseDAC		; if < 80h, branch
	xor	a			; a = 0
	ld	(DAC_Number),a		; clear DAC number to prevent later ints
	jp	Event_SoundProc

; ---------------------------------------------------------------
; Code to wait while playback is paused
; ---------------------------------------------------------------

PauseDAC:
	ld	(iy+1),80h		; stop sound

-	ld	a,(DAC_Number)		; load ctrl byte
	or	a			; is byte zero?
	jr	nz,-			; if not, branch

	call	SetupDAC		; setup YM for playback
	jp	Event_SoundProc		; go on playing

; ---------------------------------------------------------------
; Stop DAC playback and get back to idle loop
; ---------------------------------------------------------------

StopDAC:
	ld	(iy+1),80h		; stop sound
	jp	Idle_Loop


; ===============================================================
; ---------------------------------------------------------------
; Routines to control bank-switching
; ---------------------------------------------------------------
; Bank-Switch Registers Set:
;	b'	= Current Bank Number
;	c'	= Last Bank Number
;	de'	= Bank Register
;	hl'	= End offset (bytes to play in last bank)
; ---------------------------------------------------------------

; ---------------------------------------------------------------
; Inits bank-switch system and loads first bank
; ---------------------------------------------------------------

InitBankSwitching:
	exx
	ld	d,(ix+s_pos+1)
	ld	e,(ix+s_pos)	; de' = start offset (in first bank)
	ld	h,(ix+e_pos+1)
	ld	l,(ix+e_pos)	; hl' = end offset (in last bank)
	ld	b,(ix+s_bank)	; b'  = start bank number
	ld	c,(ix+e_bank)	; c'  = end bank number
	ld	a,b		; load start bank number
	cp	c		; does the sample end in the first bank?
	jr	nz,+		; if not, branch
	sbc	hl,de		; hl' = end offset - start offset
	set	7,h		; make the number 8000h-based
+	ld	de,BankRegister	; de' = bank register
	jp	LoadBank

; ---------------------------------------------------------------
; Subroutine to switch to the next bank
; ---------------------------------------------------------------

LoadNextBank:
	exx
	inc	b		; increase bank number
	ld	a,b		; load bank number

LoadBank:
	ld	(de), a	; A15
	rrca
	ld	(de), a	; A16
	rrca
	ld	(de), a	; A17
	rrca
	ld	(de), a	; A18
	rrca
	ld	(de), a	; A19
	rrca
	ld	(de), a	; A20
	rrca
	ld	(de), a	; A21
	rrca
	ld	(de), a	; A22
	xor	a	; a = 0
	ld	(de), a	; A23
	exx
	ret

; ===============================================================
; ---------------------------------------------------------------
; Routines to process PCM sound playback
; ---------------------------------------------------------------
; PCM Registers Set:
;	B	= Pitch Counter
;	C	= Pitch
;	DE	= <Unused>
;	HL	= PCM byte pointer
; ---------------------------------------------------------------

; ---------------------------------------------------------------
; Init PCM playback or reload PCM file
; ---------------------------------------------------------------

Reload_PCM:

Init_PCM:    
	call	SetupDAC       
	call	InitBankSwitching
	ld	c,(ix+pitch)		; c  = pitch
	ld	h,(ix+s_pos+1)		;
	ld	l,(ix+s_pos)		; hl = Start offset
	set	7,h			; make it 8000h-based if it's not (perverts memory damage if playing corrupted slots)
	ld	(iy+0),2Ah		; YM => prepare to fetch DAC bytes

; ---------------------------------------------------------------
; PCM Playback Loop
; ---------------------------------------------------------------

Process_PCM:

	; Read sample's byte and send it to DAC with pitching
	ld	a,(hl)			; 7	; get PCM byte
	ld	b,c			; 4	; b = Pitch
	djnz	$			; 7/13+	; wait until pitch zero
	ld	(YM_Port0_Data),a	; 13	; write to DAC
	; Cycles: 31

	; Increment PCM byte pointer and switch the bank if necessary
	inc	hl			; 6	; next PCM byte
	bit	7,h			; 8	; has the bank warped?
	jr	z,++			; 7/12	; if yes, switch the bank
	; Cycles: 21

	; Check if sample playback is finished
	exx				; 4	;
	ld	a,c			; 4	; load last bank no.
	sub	b			; 4	; compare to current bank no.
	jr	nz,+			; 7/12	; if last bank isn't reached, branch
	dec	hl			; 6	; decrease number of bytes to play in last bank
	or	h			; 4	; is hl positive?
	jp	p,+++			; 10	; if yes, quit playback loop
	exx				; 4	;
	; Cycles: 43

	; Check if we should play a new sample
-	ld	a,(DAC_Number)		; 13	; load DAC number
	or	a			; 4	; test it
	jp	z,Process_PCM		; 10	; if zero, go on playing
	jp	Event_Interrupt		;	; otherwise, interrupt playback
	; Cycles: 27

	; Synchronization loop (20 cycles)
+	exx				; 4
	nop				; 4
	jr	-			; 12

	; Switch to next bank
+	ld	h,80h			; restore base addr
	call	LoadNextBank
	jp	-

	; Quit playback loop
+	exx
	jp	Event_EndPlayback

; ---------------------------------------------------------------
; Best cycles per loop:	122
; Max Possible rate:	3,550 kHz / 122 = 29 kHz (PAL)
; ---------------------------------------------------------------

; ===============================================================
; ---------------------------------------------------------------
; Routines to process DPCM sound playback
; ---------------------------------------------------------------
; DPCM Registers Set:
;	B	= Pitch Counter / also DAC Value
;	C	= Pitch
;	DE	= DPCM byte pointer
;	HL	= Delta Table
; ---------------------------------------------------------------

; ---------------------------------------------------------------
; Init DPCM playback or reload DPCM file
; ---------------------------------------------------------------

Reload_DPCM:

Init_DPCM:
	call	SetupDAC
	call	InitBankSwitching
	ld	c,(ix+pitch)		; c  = pitch
	ld	d,(ix+s_pos+1)		;
	ld	e,(ix+s_pos)		; de = start offset
	set	7,d			; make it 8000h-based if it's not (perverts memory damage if playing corrupted slots)
	ld	h,DPCM_DeltaArray>>8	; load delta table base
	ld	(iy+0),2Ah		; YM => prepare to fetch DAC bytes
	ld	b,80h			; init DAC value

Process_DPCM:

	; Calculate and send 2 values to DAC
	ld	a,(de)			; 7	; get a byte from DPCM stream
	rrca				; 4	; get first nibble
	rrca				; 4	;
	rrca				; 4	;
	rrca				; 4	;
	and	0Fh			; 7	; mask nibble
	ld	l,a			; 4	; setup delta table index
	ld	a,b			; 4	; load DAC Value
	add	a,(hl)			; 7	; add delta to it
	ld	b,c			; 4	; b = Pitch
	djnz	$			; 7/13+	; wait until pitch zero
	ld	(YM_Port0_Data),a	; 13	; write to DAC
	ld	b,a			; 4	; b = DAC Value
	; Cycles: 73

	ld	a,(de)			; 7	; reload DPCM stream byte
	and	0Fh			; 7	; get second nibble
	ld	l,a			; 4	; setup delta table index
	ld	a,b			; 4	; load DAC Value
	add	a,(hl)			; 7	; add delta to it
	ld	b,c			; 4	; b = Pitch
	djnz	$			; 7/13+	; wait until pitch zero
	ld	(YM_Port0_Data),a	; 13	; write to DAC
	ld	b,a			; 4	; b = DAC Value
	; Cycles: 57

	; Increment DPCM byte pointer and switch the bank if necessary
	inc	de			; 6	; next DPCM byte
	bit	7,d			; 8	; has the bank warped?
	jr	z,++			; 7/12	; if no, switch the bank
	; Cycles: 21

	; Check if sample playback is finished
	exx				; 4	;
	ld	a,c			; 4	; load last bank no.
	sub	b			; 4	; compare to current bank no.
	jr	nz,+			; 7/12	; if last bank isn't reached, branch
	dec	hl			; 6	; decrease number of bytes to play in last bank
	or	h			; 4	; is hl positive?
	jp	p,+++			; 10	; if yes, quit playback loop
	exx				; 4	;
	; Cycles: 43

	; Check if we should play a new sample
-	ld	a,(DAC_Number)		; 13	; load DAC number
	or	a			; 4	; test it
	jp	z,Process_DPCM		; 10	; if zero, go on playing
	jp	Event_Interrupt		;	; otherwise, interrupt playback
	; Cycles: 27

	; Synchronization loop (20 cycles)
+	exx				; 4
	nop				; 4
	jr	-			; 12

	; Switch to next bank
+	ld	d,80h			; restore base address
	call	LoadNextBank
	jp	-

	; Quit playback loop
+	exx
	jp	Event_EndPlayback

; ---------------------------------------------------------------
; Best cycles per loop:	221/2
; Max possible rate:	3,550 kHz / 111 = 32 kHz (PAL)
; ---------------------------------------------------------------
                                        
	align	100h	; it's important to align this way, or the code above won't work properly

DPCM_DeltaArray:
	db	0, 1, 2, 4, 8, 10h, 20h, 40h
	db	-80h, -1, -2, -4, -8, -10h, -20h, -40h

; ---------------------------------------------------------------
; NOTICE ABOUT PLAYBACK RATES:
;	YM is only capable of producing DAC sound @ ~26 kHz
;	frequency, overpassing it leads to missed writes!
;	The fact playback code can play faster than that
;	means there is a good amount of room for more features,
;	i.e. to waste even more processor cycles! ;)
; ---------------------------------------------------------------

; ===============================================================

; Table of DAC samples goes right after the code.

zmake68kPtr  function addr,8000h+(addr&7FFFh)
zmake68kBank function addr,(((addr&3F8000h)/8000h))

DAC_Entry macro vPitch,vOffset,vFlags
	db	vFlags				; 00h	- Flags
	db	vPitch				; 01h	- Pitch
	db	zmake68kBank(vOffset)		; 02h	- Start Bank
	db	zmake68kBank(vOffset_End)	; 03h	- End Bank
	dw	zmake68kPtr(vOffset)		; 04h	- Start Offset (in Start bank)
	dw	zmake68kPtr(vOffset_End-1)	; 06h	- End Offset (in End bank)
	endm

; ---------------------------------------------------------------
; Variables used in DAC table
; ---------------------------------------------------------------

; flags
panLR	= 0C0h
panL	= 80h
panR	= 40h
pcm	= 0
dpcm	= 4
loop	= 2
pri	= 1

; ---------------------------------------------------------------
; DAC Samples Table
; ---------------------------------------------------------------

DAC_Table:
	if SMPS_S1DACSamples||SMPS_S2DACSamples
		; Sonic 1 & 2
ptr_dac81:	DAC_Entry	17h+3, Kick,		dpcm	; $81	- Kick
ptr_dac82:	DAC_Entry	01h+3, Snare,		dpcm	; $82	- Snare
ptr_dac85:	DAC_Entry	1Bh+3, Timpani,		dpcm	; $85	- Timpani
ptr_dac88:	DAC_Entry	12h+3, Timpani,		dpcm	; $88	- Hi-Timpani
ptr_dac89:	DAC_Entry	15h+3, Timpani,		dpcm	; $89	- Mid-Timpani
ptr_dac8A:	DAC_Entry	1Ch+3, Timpani,		dpcm	; $8A	- Low-Timpani
ptr_dac8B:	DAC_Entry	1Dh+3, Timpani,		dpcm	; $8B	- Very Low-Timpani
	endif

	if SMPS_S2DACSamples
		; Sonic 2
ptr_dac83:	DAC_Entry	06h+3, Clap,		dpcm	; $83	- Clap
ptr_dac84:	DAC_Entry	08h+3, Scratch,		dpcm	; $84	- Scratch
ptr_dac86:	DAC_Entry	0Ah+3, Tom,		dpcm	; $86	- Hi-Tom
ptr_dac87:	DAC_Entry	1Bh+3, Bongo,		dpcm	; $87	- Very Low-Bongo
ptr_dac8C:	DAC_Entry	02h+3, Tom,		dpcm	; $8C	- Mid-Tom
ptr_dac8D:	DAC_Entry	05h+3, Tom,		dpcm	; $8D	- Low-Tom
ptr_dac8E:	DAC_Entry	08h+3, Tom,		dpcm	; $8E	- Floor-Tom
ptr_dac8F:	DAC_Entry	08h+3, Bongo,		dpcm	; $8F	- Hi-Bongo
ptr_dac90:	DAC_Entry	0Bh+3, Bongo,		dpcm	; $90	- Mid-Bongo
ptr_dac91:	DAC_Entry	12h+3, Bongo,		dpcm	; $91	- Low-Bongo
	endif

	if SMPS_S3DACSamples||SMPS_SKDACSamples||SMPS_S3DDACSamples
		; Sonic 3 & K & 3D
ptr_dac92:	DAC_Entry	04h+2, SnareS3,		dpcm	; $92	- Snare (S3)
ptr_dac93:	DAC_Entry	0Eh+2, TomS3,		dpcm	; $93	- Hi-Tom (S3)
ptr_dac94:	DAC_Entry	14h+2, TomS3,		dpcm	; $94	- Mid-Tom (S3)
ptr_dac95:	DAC_Entry	1Ah+2, TomS3,		dpcm	; $95	- Low Tom (S3)
ptr_dac96:	DAC_Entry	20h+2, TomS3,		dpcm	; $96	- Floor-Tom (S3)
ptr_dac97:	DAC_Entry	04h+2, KickS3,		dpcm	; $97	- Kick (S3)
ptr_dac98:	DAC_Entry	04h+2, MuffledSnare,	dpcm	; $98	- Muffled Snare
ptr_dac99:	DAC_Entry	06h+2, CrashCymbal,	dpcm	; $99	- Crash Cymbal 
ptr_dac9A:	DAC_Entry	0Ah+2, RideCymbal,	dpcm	; $9A	- Ride Cymbal
ptr_dac9B:	DAC_Entry	14h+2, MetalHit,	dpcm	; $9B	- Low-Metal Hit
ptr_dac9C:	DAC_Entry	1Bh+2, MetalHit,	dpcm	; $9C	- Metal Hit
ptr_dac9D:	DAC_Entry	08h+2, MetalHit2,	dpcm	; $9D	- High-Metal Hit
ptr_dac9E:	DAC_Entry	0Bh+2, MetalHit3,	dpcm	; $9E	- Higher-Metal Hit
ptr_dac9F:	DAC_Entry	11h+2, MetalHit3,	dpcm	; $9F	- Mid-Metal Hit
ptr_dacA0:	DAC_Entry	08h+2, ClapS3,		dpcm	; $A0	- Clap (S3)
ptr_dacA1:	DAC_Entry	03h+2, ElectricTom,	dpcm	; $A1	- Electric High-Tom
ptr_dacA2:	DAC_Entry	07h+2, ElectricTom,	dpcm	; $A2	- Electric Mid-Tom
ptr_dacA3:	DAC_Entry	0Ah+2, ElectricTom,	dpcm	; $A3	- Electric Low-Tom
ptr_dacA4:	DAC_Entry	0Eh+2, ElectricTom,	dpcm	; $A4	- Electric Floor-Tom
ptr_dacA5:	DAC_Entry	06h+2, SnareS32,	dpcm	; $A5	- Mid-Pitch Snare
ptr_dacA6:	DAC_Entry	0Ah+2, SnareS32,	dpcm	; $A6	- Tight Snare
ptr_dacA7:	DAC_Entry	0Dh+2, SnareS32,	dpcm	; $A7	- Loose Snare
ptr_dacA8:	DAC_Entry	12h+2, SnareS32,	dpcm	; $A8	- Looser Snare
ptr_dacA9:	DAC_Entry	0Bh+2, TimpaniS3,	dpcm	; $A9	- Hi-Timpani (S3)
ptr_dacAA:	DAC_Entry	13h+2, TimpaniS3,	dpcm	; $AA	- Low-Timpani (S3)
ptr_dacAB:	DAC_Entry	16h+2, TimpaniS3,	dpcm	; $AB	- Mid-Timpani (S3)
ptr_dacAC:	DAC_Entry	0Ch+2, SnareS33,	dpcm	; $AC	- Quick Loose Snare
ptr_dacAD:	DAC_Entry	0Ah+2, Click,		dpcm	; $AD	- Click
ptr_dacAE:	DAC_Entry	18h+2, PowerKick,	dpcm	; $AE	- Power Kick
ptr_dacAF:	DAC_Entry	18h+2, QuickGlassCrash,	dpcm	; $AF	- Quick Glass Crash
	endif

	if SMPS_S3DACSamples||SMPS_SKDACSamples
		; Sonic 3 & K
ptr_dacB0:	DAC_Entry	0Ch+2, GlassCrashSnare,	dpcm	; $B0	- Glass Crash Snare
ptr_dacB1:	DAC_Entry	0Ch+2, GlassCrash,	dpcm	; $B1	- Glass Crash
ptr_dacB2:	DAC_Entry	0Ah+2, GlassCrashKick,	dpcm	; $B2	- Glass Crash Kick
ptr_dacB3:	DAC_Entry	0Ah+2, QuietGlassCrash,	dpcm	; $B3	- Quiet Glass Crash
ptr_dacB4:	DAC_Entry	18h+2, SnareKick,	dpcm	; $B4	- Snare + Kick
ptr_dacB5:	DAC_Entry	18h+2, KickBass,	dpcm	; $B5	- Bassy Kick
ptr_dacB6:	DAC_Entry	0Ch+2, ComeOn,		dpcm	; $B6	- "Come On!"
ptr_dacB7:	DAC_Entry	09h+2, DanceSnare,	dpcm	; $B7	- Dance Snare
ptr_dacB8:	DAC_Entry	18h+2, LooseKick,	dpcm	; $B8	- Loose Kick
ptr_dacB9:	DAC_Entry	18h+2, LooseKick2,	dpcm	; $B9	- Mod Loose Kick
ptr_dacBA:	DAC_Entry	0Ch+2, Woo,		dpcm	; $BA	- "Woo!"
ptr_dacBB:	DAC_Entry	0Ah+2, Go,		dpcm	; $BB	- "Go!"
ptr_dacBC:	DAC_Entry	0Dh+2, SnareGo,		dpcm	; $BC	- Snare (S3) + "Go!"
ptr_dacBD:	DAC_Entry	06h+2, PowerTom,	dpcm	; $BD	- Power Tom
ptr_dacBE:	DAC_Entry	10h+2, WoodBlock,	dpcm	; $BE	- Hi-Wood Block
ptr_dacBF:	DAC_Entry	18h+2, WoodBlock,	dpcm	; $BF	- Low-Wood Block
ptr_dacC0:	DAC_Entry	09h+2, HitDrum,		dpcm	; $C0	- Hi-Hit Drum
ptr_dacC1:	DAC_Entry	12h+2, HitDrum,		dpcm	; $C1	- Low-Hit Drum
ptr_dacC2:	DAC_Entry	18h+2, MetalCrashHit,	dpcm	; $C2	- Metal Crash Hit
ptr_dacC3:	DAC_Entry	16h+2, EchoedClapHit,	dpcm	; $C3	- Echoed Clap Hit
ptr_dacC4:	DAC_Entry	20h+2, EchoedClapHit,	dpcm	; $C4	- Lower Echoed Clap Hit
ptr_dacC5:	DAC_Entry	0Ch+2, HipHopHitKick,	dpcm	; $C5	- HipHop Hit Kick
ptr_dacC6:	DAC_Entry	0Ch+2, HipHopPowerKick,	dpcm	; $C6	- HipHop Hit Power Kick
ptr_dacC7:	DAC_Entry	0Ch+2, BassHey,		dpcm	; $C7	- Bass + "Hey!"
ptr_dacC8:	DAC_Entry	18h+2, DanceStyleKick,	dpcm	; $C8	- Dance-Style Kick
ptr_dacC9:	DAC_Entry	0Ch+2, HipHopHitKick2,	dpcm	; $C9	- HipHop Hit Kick 2
ptr_dacCA:	DAC_Entry	18h+2, RevFadingWind,	dpcm	; $CA	- Reverse Fading Wind
ptr_dacCB:	DAC_Entry	18h+2, ScratchS3,	dpcm	; $CB	- Scratch (S3)
ptr_dacCC:	DAC_Entry	18h+2, LooseSnareNoise,	dpcm	; $CC	- Loose-Snare Noise
ptr_dacCD:	DAC_Entry	0Ch+2, PowerKick2,	dpcm	; $CD	- Power Kick 2
ptr_dacCE:	DAC_Entry	0Ch+2, CrashNoiseWoo,	dpcm	; $CE	- Crash Noise + "Woo!"
ptr_dacCF:	DAC_Entry	1Ch+2, QuickHit,	dpcm	; $CF	- Quick Hit
ptr_dacD0:	DAC_Entry	0Bh+2, KickHey,		dpcm	; $D0	- Kick (S3) + "Hey!"
ptr_dacD1:	DAC_Entry	0Fh+2, HipHopHitKick,	dpcm	; $D1	- Power Kick Hit
ptr_dacD2:	DAC_Entry	11h+2, HipHopHitKick,	dpcm	; $D2	- Low Power Kick Hit
ptr_dacD3:	DAC_Entry	12h+2, HipHopHitKick,	dpcm	; $D3	- Lower Power Kick Hit
ptr_dacD4:	DAC_Entry	0Bh+2, HipHopHitKick,	dpcm	; $D4	- Lowest Power Kick Hit
	endif

	if SMPS_S3DDACSamples
		; Sonic 3D
ptr_dacD5:	DAC_Entry	01h+2, MetalCrashS3D,	dpcm	; $D5	- Final Fight Metal Crash
ptr_dacD6:	DAC_Entry	12h+2, IntroKickS3D,	dpcm	; $D6	- Intro Kick
	endif

	if SMPS_S3DACSamples
		; Sonic 3
ptr_dacD7:	DAC_Entry	16h+2, EchoedClapHitS3,	dpcm	; $D7	- Echoed Clap Hit (S3)
ptr_dacD8:	DAC_Entry	20h+2, EchoedClapHitS3,	dpcm	; $D8	- Lower Echoed Clap Hit(S3)	; Clownacy | Good golly, we're close to reaching Mega PCM's limit...
	endif

	if SMPS_SCDACSamples
		; Sonic Crackers
ptr_dacD9:	DAC_Entry	30h+2, Beat,		dpcm	; $D9	- Beat
ptr_dacDA:	DAC_Entry	0Ah+2, SnareSC,		dpcm	; $DA	- Snare (SC)
ptr_dacDB:	DAC_Entry	0Ah+2, TimTom,		dpcm	; $DB	- Hi Timpani/Tom (SC)
ptr_dacDC:	DAC_Entry	0Eh+2, TimTom,		dpcm	; $DC	- Mid Timpani/Tom (SC)
ptr_dacDD:	DAC_Entry	10h+2, TimTom,		dpcm	; $DD	- Low Timpani/Tom (SC)
ptr_dacDE:	DAC_Entry	0Ah+2, LetsGo,		dpcm	; $DE	- "Let's Go!"
ptr_dacDF:	DAC_Entry	0Ah+2, Hey,		dpcm	; $DF	- "Hey!"	; Clownacy | X_X Extending the DAC range is going to take some creativity...
	endif

	if SMPS_SegaPCM_68k = 0
ptr_dacE0:	DAC_Entry	08h, SegaPCM,		pcm	; $E0	- Sega!
	endif

	if $ > Stack
		fatal "There's too much data before the volume lookup table! There should be less than \{Stack}h bytes of data, but you're using \{$}h bytes!"
	endif
