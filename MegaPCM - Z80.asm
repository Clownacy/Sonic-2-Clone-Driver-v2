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

MegaPCM_Stack		equ	0DF0h
MegaPCM_Ptr_InitPlayback equ	MegaPCM_Event_InitPlayback+1	; Init Playback event pointer
MegaPCM_Ptr_SoundProc	equ	MegaPCM_Event_SoundProc+1	; Sound process event pointer
MegaPCM_Ptr_Interrupt	equ	MegaPCM_Event_Interrupt+1	; Sound interrupt event pointer
MegaPCM_Ptr_EndPlayback	equ	MegaPCM_Event_EndPlayback+1	; End playback event pointer
MegaPCM_DAC_Number	equ	0DFFh				; Number of DAC sample to play ($81-based)
						; There are special numbers to control playback:
						;	$80	- Stop Playback
						;	$7F	- Pause Playback
						;	$00	- Continue Playback
MegaPCM_DAC_Volume	equ	0DFEh		; DAC volume
MegaPCM_DAC_Type	equ	0DFDh		; Type of DAC ($00 - music, $FF - SFX), this is effectively an 'ignore volume' flag

; Look-up tables

MegaPCM_DPCM_LowNibble	equ	0E00h
MegaPCM_DPCM_HighNibble	equ	0F00h

; System ports

MegaPCM_YM_Port0_Ctrl	equ	4000h
MegaPCM_YM_Port0_Data	equ	4001h
MegaPCM_YM_Port1_Ctrl	equ	4002h
MegaPCM_YM_Port1_Data	equ	4003h
MegaPCM_BankRegister	equ	6000h

; Sample struct vars

MegaPCM_flags	equ	0	; playback flags
MegaPCM_pitch	equ	1	; pitch value
MegaPCM_s_bank	equ	2	; start bank
MegaPCM_e_bank	equ	3	; end bank
MegaPCM_s_pos	equ	4	; start offset (in first bank)
MegaPCM_e_pos	equ	6	; end offset (in last bank)


; ===============================================================
; ---------------------------------------------------------------
; Driver initialization code
; ---------------------------------------------------------------

	di				; disable interrupts
;	di				; Clownacy | Aren't these redundant?
;	di				; Might as well save the space and cycles

	; Setup variables
	ld	sp,MegaPCM_Stack		; init SP
	call	MegaPCM_GenerateTables
	xor	a			; a = 0
	ld	(MegaPCM_DAC_Number),a		; reset DAC to play
	ld	h,a
	ld	l,a
	ld	(MegaPCM_Ptr_InitPlayback),hl	; reset 'InitPlayback' event
	ld	(MegaPCM_Ptr_SoundProc),hl	; reset 'SoundProc' event
	ld	(MegaPCM_Ptr_Interrupt),hl	; reset 'Interrupt' event
	ld	(MegaPCM_Ptr_EndPlayback),hl	; reset 'PlayOver' event
	ld	iy,MegaPCM_YM_Port0_Ctrl

; ---------------------------------------------------------------
; Idle loop, waiting DAC number input
; ---------------------------------------------------------------

MegaPCM_Idle_Loop:
	ld	hl,MegaPCM_DAC_Number

MegaPCM_Idle_WaitDAC:
	ld	a,(hl)			; load DAC number
	or	a			; test it
	jp	p,MegaPCM_Idle_WaitDAC	; if it's positive, branch

; ---------------------------------------------------------------
; Load DAC sample according to its number and play it
; ---------------------------------------------------------------

MegaPCM_LoadDAC:
	sub	81h			; subtract 81h from DAC number
	jr	c,MegaPCM_Idle_WaitDAC	; if a = 80h, branch
	ld	b,0h			; Clownacy | Moved this here so it can be used to clear the other areas quicker
	ld	(hl),b			; reset DAC number in RAM	; Clownacy | Now uses reg b (faster and smaller)

	; Load DAC table entry
	ld	ix,MegaPCM_DAC_Table	; ix = DAC Table
	ld	h,b			; Clownacy | Now uses reg b (faster and smaller)
	ld	l,a			; hl = DAC
	add	hl,hl			; hl = DAC*2
	add	hl,hl			; hl = DAC*4
	add	hl,hl			; hl = DAC*8
	ex	de,hl
	add	ix,de			; ix = DAC_Table + DAC*8

	; Init events table according to playback mode
	ld	a,(ix+MegaPCM_flags)	; a = Flags
	and	7h			; mask only Mode
	add	a,a			; a = Mode*2
	add	a,a			; a = Mode*4
	add	a,a			; a = Mode*8
	ld	c,a			; bc = Mode*8
	ld	hl,MegaPCM_Events_List
	add	hl,bc			; hl = Events_List + Mode*8
	ld	de,MegaPCM_Ptr_InitPlayback	; de = Events Pointers
	ld	bc,4FFh			; do 4 times, 'c' should never borrow 'b' on decrement
-	ldi				; transfer event pointer
	ldi				;
	inc	de			; skip a byte in events table ('jp' opcode)
	djnz	-

	jp	MegaPCM_Event_InitPlayback	; launch 'InitPlayback' event

; ---------------------------------------------------------------
; Setup YM to playback DAC
; ---------------------------------------------------------------

MegaPCM_SetupDAC:
	; Wait for YM2612
-	bit	7,(iy+0)
	jr	nz,-

	ld	(iy+0),2Bh		;
	ld	(iy+1),80h		; YM => Enable DAC
	ld	a,(ix+MegaPCM_flags)		; load flags
	and	0C0h			; are pan bits set?
	jr	z,+			; if not, branch
        ld	(iy+2),0B6h		;
	ld	(iy+3),a		; YM => Set Pan
+	ld	(iy+0),2Ah		; setup YM to fetch DAC bytes
	ret

; ---------------------------------------------------------------
; Setup volume depending on DAC is music or SFX
; ---------------------------------------------------------------

; Clownacy | I can't be the only one that thinks it would be stupid
; for DAC SFX to be at the same volume as music DACs, right?
; The guys that made SMPS 32x didn't. Anyway, that's what this subroutine does.
; If a DAC is marked as one used for music, it's affected by volume.
; SMPS 32x didn't do this, but then again, there's a lot of stuff SMPS 32x
; didn't do properly with its DAC volume control.
MegaPCM_SetupVolume:
	ld	a,(MegaPCM_DAC_Type)
	or	a
	ld	a,MegaPCM_VolumeTbls>>8
	jp	m,+
	ld	a,(MegaPCM_DAC_Volume)
+
	ld	(MegaPCM_LoadBank.volume+1),a
	ld	(MegaPCM_Init_PCM.volume+1),a
	ret

; ---------------------------------------------------------------
; Generate tables used by driver
; ---------------------------------------------------------------

MegaPCM_GenerateTables:
	; First, generate DPCM_LowNibble
	ld	de,MegaPCM_DPCM_LowNibble
	ld	b,10h
-
	push	bc
	ld	hl,MegaPCM_DPCM_DeltaArray
	ld	bc,MegaPCM_DPCM_DeltaArray_End-MegaPCM_DPCM_DeltaArray
	ldir
	pop	bc
	djnz	-

	; Now for DPCM_HighNibble
	ld	de,MegaPCM_DPCM_HighNibble
	ld	hl,MegaPCM_DPCM_DeltaArray
	ld	b,10h
-
	push	bc
	ld	a,(hl)
	ld	b,10h
-
	ld	(de),a
	inc	de
	djnz	-
	inc	hl
	pop	bc
	djnz	--
	
	ret

MegaPCM_DPCM_DeltaArray:
	db	0, 1, 2, 4, 8, 10h, 20h, 40h
	db	-80h, -1, -2, -4, -8, -10h, -20h, -40h
MegaPCM_DPCM_DeltaArray_End

; ---------------------------------------------------------------

MegaPCM_Events_List:
	;	Initplayback,		SoundProc,		Interrupt,		EndPlayback	;
	dw	MegaPCM_Init_PCM,	MegaPCM_Process_PCM,	MegaPCM_Int_Normal,	MegaPCM_StopDAC		; Mode 0
	dw	MegaPCM_Init_PCM,	MegaPCM_Process_PCM,	MegaPCM_Int_NoOverride,	MegaPCM_StopDAC		; Mode 1
	dw	MegaPCM_Init_PCM,	MegaPCM_Process_PCM,	MegaPCM_Int_Normal,	MegaPCM_Reload_PCM	; Mode 2
	dw	MegaPCM_Init_PCM,	MegaPCM_Process_PCM,	MegaPCM_Int_NoOverride,	MegaPCM_Reload_PCM	; Mode 3
	dw	MegaPCM_Init_DPCM,	MegaPCM_Process_DPCM,	MegaPCM_Int_Normal,	MegaPCM_StopDAC		; Mode 4
	dw	MegaPCM_Init_DPCM,	MegaPCM_Process_DPCM,	MegaPCM_Int_NoOverride,	MegaPCM_StopDAC		; Mode 5
	dw	MegaPCM_Init_DPCM,	MegaPCM_Process_DPCM,	MegaPCM_Int_Normal,	MegaPCM_Reload_DPCM	; Mode 6
	dw	MegaPCM_Init_DPCM,	MegaPCM_Process_DPCM,	MegaPCM_Int_NoOverride,	MegaPCM_Reload_DPCM	; Mode 7

; ===============================================================
; ---------------------------------------------------------------
; Dynamic Events Table, filled from 'Events_List'
; ---------------------------------------------------------------

MegaPCM_Event_InitPlayback:
	jp	0h

MegaPCM_Event_SoundProc:
	jp	0h
	
MegaPCM_Event_Interrupt:
	jp	0h

MegaPCM_Event_EndPlayback:
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

MegaPCM_Int_Normal:
	cp	80h			; stop flag?
	jp	z,MegaPCM_StopDAC	; if yes, branch
	jp	m,MegaPCM_PauseDAC	; if < 80h, branch
	ld	hl,MegaPCM_DAC_Number
	jp	MegaPCM_LoadDAC

; ---------------------------------------------------------------
; DAC Interrupt: High Priority
; ---------------------------------------------------------------
; INPUT:
;	a	= Ctrl byte
; ---------------------------------------------------------------

MegaPCM_Int_NoOverride:
	cp	80h			; stop flag?
	jr	z,MegaPCM_StopDAC	; if yes, branch	; Clownacy | jp -> jr
	jp	m,MegaPCM_PauseDAC	; if < 80h, branch
	xor	a			; a = 0
	ld	(MegaPCM_DAC_Number),a	; clear DAC number to prevent later ints
	jr	MegaPCM_Event_SoundProc	; Clownacy | (jp -> jr)

; ---------------------------------------------------------------
; Code to wait while playback is paused
; ---------------------------------------------------------------

MegaPCM_PauseDAC:
	ld	(iy+1),80h		; stop sound

-	ld	a,(MegaPCM_DAC_Number)	; load ctrl byte
	or	a			; is byte zero?
	jr	nz,-			; if not, branch

	call	MegaPCM_SetupDAC	; setup YM for playback
	jr	MegaPCM_Event_SoundProc	; go on playing	; Clownacy | (jp -> jr)

; ---------------------------------------------------------------
; Stop DAC playback and get back to idle loop
; ---------------------------------------------------------------

MegaPCM_StopDAC:
	ld	(iy+1),80h		; stop sound
	jp	MegaPCM_Idle_Loop

; ---------------------------------------------------------------
; Quit playback loop (used by Process_PCM/Process_DPCM)
; ---------------------------------------------------------------
	; Clownacy | Some portable duplicate code, moved to padding territory
MegaPCM_QuitPlaybackLoop:
	exx
	jr	MegaPCM_Event_EndPlayback	; Clownacy | (jp -> jr)

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

MegaPCM_InitBankSwitching:
	exx
	ld	d,(ix+MegaPCM_s_pos+1)
	ld	e,(ix+MegaPCM_s_pos)	; de' = start offset (in first bank)
	ld	h,(ix+MegaPCM_e_pos+1)
	ld	l,(ix+MegaPCM_e_pos)	; hl' = end offset (in last bank)
	ld	b,(ix+MegaPCM_s_bank)	; b'  = start bank number
	ld	c,(ix+MegaPCM_e_bank)	; c'  = end bank number
	ld	a,b			; load start bank number
	cp	c			; does the sample end in the first bank?
	jr	nz,+			; if not, branch
	sbc	hl,de			; hl' = end offset - start offset
	set	7,h			; make the number 8000h-based
+	jr	MegaPCM_LoadBank	; Clownacy | (jp -> jr)

; ---------------------------------------------------------------
; Subroutine to switch to the next bank
; ---------------------------------------------------------------

MegaPCM_LoadNextBank:
	exx
	inc	b		; increase bank number
	ld	a,b		; load bank number

MegaPCM_LoadBank:
	ld	de,MegaPCM_BankRegister	; de' = bank register
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
    if SMPS_IsOn32X
	ld	a,1
    else
	xor	a	; a = 0
    endif
	ld	(de), a	; A23
.volume:	; Clownacy | Modified by SetupVolume
	ld	d,MegaPCM_VolumeTbls>>8		; high byte of volume table pointer
	exx
	ret

; ===============================================================
; ---------------------------------------------------------------
; Routines to process PCM sound playback
; ---------------------------------------------------------------
; PCM Registers Set:
;	B	= Pitch Counter
;	C	= Pitch
;	DE	= Volume byte pointer
;	HL	= PCM byte pointer
; ---------------------------------------------------------------

; ---------------------------------------------------------------
; Init PCM playback or reload PCM file
; ---------------------------------------------------------------

MegaPCM_Reload_PCM:

MegaPCM_Init_PCM:
	call	MegaPCM_SetupDAC       
	call	MegaPCM_SetupVolume
	call	MegaPCM_InitBankSwitching
	ld	c,(ix+MegaPCM_pitch)		; c  = pitch
	ld	h,(ix+MegaPCM_s_pos+1)		;
	ld	l,(ix+MegaPCM_s_pos)		; hl = Start offset
	set	7,h				; make it 8000h-based if it's not (perverts memory damage if playing corrupted slots)
.volume:	; Clownacy | Modified by SetupVolume
	ld	d,MegaPCM_VolumeTbls>>8		; high byte of volume table pointer
	ld	(iy+0),2Ah			; YM => prepare to fetch DAC bytes

; ---------------------------------------------------------------
; PCM Playback Loop
; ---------------------------------------------------------------

MegaPCM_Process_PCM:

	; Read sample's byte and send it to DAC with pitching
	ld	e,(hl)			; 7	; Clownacy | get PCM byte, de = pointer to volume data
	ld	b,c			; 4	; b = Pitch
	djnz	$			; 7/13+	; wait until pitch zero
	ld	a,(de)			; 7	; Clownacy | get volume-adjusted PCM byte
	ld	(MegaPCM_YM_Port0_Data),a	; 13	; write to DAC
	; Cycles: 38

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
	jp	p,MegaPCM_QuitPlaybackLoop	; 10	; if yes, quit playback loop
	exx				; 4	;
	; Cycles: 43

	; Check if we should play a new sample
-	ld	a,(MegaPCM_DAC_Number)		; 13	; load DAC number
	or	a			; 4	; test it
	jp	z,MegaPCM_Process_PCM		; 10	; if zero, go on playing
	jp	MegaPCM_Event_Interrupt		;	; otherwise, interrupt playback
	; Cycles: 27

	; Synchronization loop (20 cycles)
+	exx				; 4
	nop				; 4
	jr	-			; 12

	; Switch to next bank
+	ld	h,80h			; restore base addr
	call	MegaPCM_LoadNextBank
	jp	-

; ---------------------------------------------------------------
; Best cycles per loop:	129
; Max Possible rate:	3,550 kHz / 129 = 27.5 kHz (PAL)
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
;	DE'	= Volume byte pointer
; ---------------------------------------------------------------

; ---------------------------------------------------------------
; Init DPCM playback or reload DPCM file
; ---------------------------------------------------------------

MegaPCM_Reload_DPCM:

MegaPCM_Init_DPCM:
	call	MegaPCM_SetupDAC
	call	MegaPCM_SetupVolume
	call	MegaPCM_InitBankSwitching
	ld	c,(ix+MegaPCM_pitch)	; c  = pitch
	ld	d,(ix+MegaPCM_s_pos+1)	;
	ld	e,(ix+MegaPCM_s_pos)	; de = start offset
	set	7,d			; make it 8000h-based if it's not (perverts memory damage if playing corrupted slots)
	ld	(iy+0),2Ah		; YM => prepare to fetch DAC bytes
	ld	b,80h			; init DAC value

MegaPCM_Process_DPCM:

	; Calculate and send 2 values to DAC
	ld	a,(de)			; 7	; get a byte from DPCM stream
	ld	h,MegaPCM_DPCM_HighNibble>>8	; 7	; load delta table base
	ld	l,a			; 4	; setup delta table index
	ld	a,b			; 4	; load DAC Value
	add	a,(hl)			; 7	; add delta to it
	ld	b,c			; 4	; b = Pitch
	djnz	$			; 7/13+	; wait until pitch zero
	ld	b,a			; 4	; b = DAC Value
	exx				; 4
	ld	e,a			; 4	; Clownacy | get address of volume-adjusted PCM byte
	ld	a,(de)			; 7	; Clownacy | get volume-adjusted PCM byte
	exx				; 4
	ld	(MegaPCM_YM_Port0_Data),a	; 13	; write to DAC
	; Cycles: 76

	ld	a,(de)			; 7	; reload DPCM stream byte
	ld	h,MegaPCM_DPCM_LowNibble>>8	; 7	; load delta table base
	ld	l,a			; 4	; setup delta table index
	ld	a,b			; 4	; load DAC Value
	add	a,(hl)			; 7	; add delta to it
	ld	b,c			; 4	; b = Pitch
	djnz	$			; 7/13+	; wait until pitch zero
	ld	b,a			; 4	; b = DAC Value
	exx				; 4
	ld	e,a			; 4	; Clownacy | get address of volume-adjusted PCM byte
	ld	a,(de)			; 7	; Clownacy | get volume-adjusted PCM byte
	exx				; 4
	ld	(MegaPCM_YM_Port0_Data),a	; 13	; write to DAC
	; Cycles: 76

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
	jp	p,MegaPCM_QuitPlaybackLoop	; 10	; if yes, quit playback loop
	exx				; 4	;
	; Cycles: 43

	; Check if we should play a new sample
-	ld	a,(MegaPCM_DAC_Number)	; 13	; load DAC number
	or	a			; 4	; test it
	jp	z,MegaPCM_Process_DPCM	; 10	; if zero, go on playing
	jp	MegaPCM_Event_Interrupt	;	; otherwise, interrupt playback
	; Cycles: 27

	; Synchronization loop (20 cycles)
+	exx				; 4
	nop				; 4
	jr	-			; 12

	; Switch to next bank
+	ld	d,80h			; restore base address
	call	MegaPCM_LoadNextBank
	jp	-

; ---------------------------------------------------------------
; Best cycles per loop:	243/2
; Max possible rate:	3,550 kHz / 122 = 32 kHz (PAL)
; ---------------------------------------------------------------

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
	db	MegaPCM_vFlags			; 00h	- Flags
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
MegaPCM_panLR	= 0C0h
MegaPCM_panL	= 80h
MegaPCM_panR	= 40h
MegaPCM_pcm	= 0
MegaPCM_dpcm	= 4
MegaPCM_loop	= 2
MegaPCM_pri	= 1

; ---------------------------------------------------------------
; DAC Samples Table
; ---------------------------------------------------------------

MegaPCM_DAC_Table:
	if SMPS_S1DACSamples||SMPS_S2DACSamples
		; Sonic 1 & 2
ptr_dac81:	DAC_Entry	17h+2, Kick,		dpcm	; $81	- Kick
ptr_dac82:	DAC_Entry	01h+2, Snare,		dpcm	; $82	- Snare
ptr_dac85:	DAC_Entry	1Bh+2, Timpani,		dpcm	; $85	- Timpani
ptr_dac88:	DAC_Entry	12h+2, Timpani,		dpcm	; $88	- Hi-Timpani
ptr_dac89:	DAC_Entry	15h+2, Timpani,		dpcm	; $89	- Mid-Timpani
ptr_dac8A:	DAC_Entry	1Ch+2, Timpani,		dpcm	; $8A	- Low-Timpani
ptr_dac8B:	DAC_Entry	1Dh+2, Timpani,		dpcm	; $8B	- Very Low-Timpani
	endif

	if SMPS_S2DACSamples
		; Sonic 2
ptr_dac83:	DAC_Entry	06h+2, Clap,		dpcm	; $83	- Clap
ptr_dac84:	DAC_Entry	08h+2, Scratch,		dpcm	; $84	- Scratch
ptr_dac86:	DAC_Entry	0Ah+2, Tom,		dpcm	; $86	- Hi-Tom
ptr_dac87:	DAC_Entry	1Bh+2, Bongo,		dpcm	; $87	- Very Low-Bongo
ptr_dac8C:	DAC_Entry	02h+2, Tom,		dpcm	; $8C	- Mid-Tom
ptr_dac8D:	DAC_Entry	05h+2, Tom,		dpcm	; $8D	- Low-Tom
ptr_dac8E:	DAC_Entry	08h+2, Tom,		dpcm	; $8E	- Floor-Tom
ptr_dac8F:	DAC_Entry	08h+2, Bongo,		dpcm	; $8F	- Hi-Bongo
ptr_dac90:	DAC_Entry	0Bh+2, Bongo,		dpcm	; $90	- Mid-Bongo
ptr_dac91:	DAC_Entry	12h+2, Bongo,		dpcm	; $91	- Low-Bongo
	endif

	if SMPS_S3DACSamples||SMPS_SKDACSamples||SMPS_S3DDACSamples
		; Sonic 3 & K & 3D
ptr_dac92:	DAC_Entry	04h+1, SnareS3,		dpcm	; $92	- Snare (S3)
ptr_dac93:	DAC_Entry	0Eh+1, TomS3,		dpcm	; $93	- Hi-Tom (S3)
ptr_dac94:	DAC_Entry	14h+1, TomS3,		dpcm	; $94	- Mid-Tom (S3)
ptr_dac95:	DAC_Entry	1Ah+1, TomS3,		dpcm	; $95	- Low Tom (S3)
ptr_dac96:	DAC_Entry	20h+1, TomS3,		dpcm	; $96	- Floor-Tom (S3)
ptr_dac97:	DAC_Entry	04h+1, KickS3,		dpcm	; $97	- Kick (S3)
ptr_dac98:	DAC_Entry	04h+1, MuffledSnare,	dpcm	; $98	- Muffled Snare
ptr_dac99:	DAC_Entry	06h+1, CrashCymbal,	dpcm	; $99	- Crash Cymbal 
ptr_dac9A:	DAC_Entry	0Ah+1, RideCymbal,	dpcm	; $9A	- Ride Cymbal
ptr_dac9B:	DAC_Entry	14h+1, MetalHit,	dpcm	; $9B	- Low-Metal Hit
ptr_dac9C:	DAC_Entry	1Bh+1, MetalHit,	dpcm	; $9C	- Metal Hit
ptr_dac9D:	DAC_Entry	08h+1, MetalHit2,	dpcm	; $9D	- High-Metal Hit
ptr_dac9E:	DAC_Entry	0Bh+1, MetalHit3,	dpcm	; $9E	- Higher-Metal Hit
ptr_dac9F:	DAC_Entry	11h+1, MetalHit3,	dpcm	; $9F	- Mid-Metal Hit
ptr_dacA0:	DAC_Entry	08h+1, ClapS3,		dpcm	; $A0	- Clap (S3)
ptr_dacA1:	DAC_Entry	03h+1, ElectricTom,	dpcm	; $A1	- Electric High-Tom
ptr_dacA2:	DAC_Entry	07h+1, ElectricTom,	dpcm	; $A2	- Electric Mid-Tom
ptr_dacA3:	DAC_Entry	0Ah+1, ElectricTom,	dpcm	; $A3	- Electric Low-Tom
ptr_dacA4:	DAC_Entry	0Eh+1, ElectricTom,	dpcm	; $A4	- Electric Floor-Tom
ptr_dacA5:	DAC_Entry	06h+1, SnareS32,	dpcm	; $A5	- Mid-Pitch Snare
ptr_dacA6:	DAC_Entry	0Ah+1, SnareS32,	dpcm	; $A6	- Tight Snare
ptr_dacA7:	DAC_Entry	0Dh+1, SnareS32,	dpcm	; $A7	- Loose Snare
ptr_dacA8:	DAC_Entry	12h+1, SnareS32,	dpcm	; $A8	- Looser Snare
ptr_dacA9:	DAC_Entry	0Bh+1, TimpaniS3,	dpcm	; $A9	- Hi-Timpani (S3)
ptr_dacAA:	DAC_Entry	13h+1, TimpaniS3,	dpcm	; $AA	- Low-Timpani (S3)
ptr_dacAB:	DAC_Entry	16h+1, TimpaniS3,	dpcm	; $AB	- Mid-Timpani (S3)
ptr_dacAC:	DAC_Entry	0Ch+1, SnareS33,	dpcm	; $AC	- Quick Loose Snare
ptr_dacAD:	DAC_Entry	0Ah+1, Click,		dpcm	; $AD	- Click
ptr_dacAE:	DAC_Entry	18h+1, PowerKick,	dpcm	; $AE	- Power Kick
ptr_dacAF:	DAC_Entry	18h+1, QuickGlassCrash,	dpcm	; $AF	- Quick Glass Crash
	endif

	if SMPS_S3DACSamples||SMPS_SKDACSamples
		; Sonic 3 & K
ptr_dacB0:	DAC_Entry	0Ch+1, GlassCrashSnare,	dpcm	; $B0	- Glass Crash Snare
ptr_dacB1:	DAC_Entry	0Ch+1, GlassCrash,	dpcm	; $B1	- Glass Crash
ptr_dacB2:	DAC_Entry	0Ah+1, GlassCrashKick,	dpcm	; $B2	- Glass Crash Kick
ptr_dacB3:	DAC_Entry	0Ah+1, QuietGlassCrash,	dpcm	; $B3	- Quiet Glass Crash
ptr_dacB4:	DAC_Entry	18h+1, SnareKick,	dpcm	; $B4	- Snare + Kick
ptr_dacB5:	DAC_Entry	18h+1, KickBass,	dpcm	; $B5	- Bassy Kick
ptr_dacB6:	DAC_Entry	0Ch+1, ComeOn,		dpcm	; $B6	- "Come On!"
ptr_dacB7:	DAC_Entry	09h+1, DanceSnare,	dpcm	; $B7	- Dance Snare
ptr_dacB8:	DAC_Entry	18h+1, LooseKick,	dpcm	; $B8	- Loose Kick
ptr_dacB9:	DAC_Entry	18h+1, LooseKick2,	dpcm	; $B9	- Mod Loose Kick
ptr_dacBA:	DAC_Entry	0Ch+1, Woo,		dpcm	; $BA	- "Woo!"
ptr_dacBB:	DAC_Entry	0Ah+1, Go,		dpcm	; $BB	- "Go!"
ptr_dacBC:	DAC_Entry	0Dh+1, SnareGo,		dpcm	; $BC	- Snare (S3) + "Go!"
ptr_dacBD:	DAC_Entry	06h+1, PowerTom,	dpcm	; $BD	- Power Tom
ptr_dacBE:	DAC_Entry	10h+1, WoodBlock,	dpcm	; $BE	- Hi-Wood Block
ptr_dacBF:	DAC_Entry	18h+1, WoodBlock,	dpcm	; $BF	- Low-Wood Block
ptr_dacC0:	DAC_Entry	09h+1, HitDrum,		dpcm	; $C0	- Hi-Hit Drum
ptr_dacC1:	DAC_Entry	12h+1, HitDrum,		dpcm	; $C1	- Low-Hit Drum
ptr_dacC2:	DAC_Entry	18h+1, MetalCrashHit,	dpcm	; $C2	- Metal Crash Hit
ptr_dacC3:	DAC_Entry	16h+1, EchoedClapHit,	dpcm	; $C3	- Echoed Clap Hit
ptr_dacC4:	DAC_Entry	20h+1, EchoedClapHit,	dpcm	; $C4	- Lower Echoed Clap Hit
ptr_dacC5:	DAC_Entry	0Ch+1, HipHopHitKick,	dpcm	; $C5	- HipHop Hit Kick
ptr_dacC6:	DAC_Entry	0Ch+1, HipHopPowerKick,	dpcm	; $C6	- HipHop Hit Power Kick
ptr_dacC7:	DAC_Entry	0Ch+1, BassHey,		dpcm	; $C7	- Bass + "Hey!"
ptr_dacC8:	DAC_Entry	18h+1, DanceStyleKick,	dpcm	; $C8	- Dance-Style Kick
ptr_dacC9:	DAC_Entry	0Ch+1, HipHopHitKick2,	dpcm	; $C9	- HipHop Hit Kick 2
ptr_dacCA:	DAC_Entry	18h+1, RevFadingWind,	dpcm	; $CA	- Reverse Fading Wind
ptr_dacCB:	DAC_Entry	18h+1, ScratchS3,	dpcm	; $CB	- Scratch (S3)
ptr_dacCC:	DAC_Entry	18h+1, LooseSnareNoise,	dpcm	; $CC	- Loose-Snare Noise
ptr_dacCD:	DAC_Entry	0Ch+1, PowerKick2,	dpcm	; $CD	- Power Kick 2
ptr_dacCE:	DAC_Entry	0Ch+1, CrashNoiseWoo,	dpcm	; $CE	- Crash Noise + "Woo!"
ptr_dacCF:	DAC_Entry	1Ch+1, QuickHit,	dpcm	; $CF	- Quick Hit
ptr_dacD0:	DAC_Entry	0Bh+1, KickHey,		dpcm	; $D0	- Kick (S3) + "Hey!"
ptr_dacD1:	DAC_Entry	0Fh+1, HipHopHitKick,	dpcm	; $D1	- Power Kick Hit
ptr_dacD2:	DAC_Entry	11h+1, HipHopHitKick,	dpcm	; $D2	- Low Power Kick Hit
ptr_dacD3:	DAC_Entry	12h+1, HipHopHitKick,	dpcm	; $D3	- Lower Power Kick Hit
ptr_dacD4:	DAC_Entry	0Bh+1, HipHopHitKick,	dpcm	; $D4	- Lowest Power Kick Hit
	endif

	if SMPS_S3DDACSamples
		; Sonic 3D
ptr_dacD5:	DAC_Entry	01h+1, MetalCrashS3D,	dpcm	; $D5	- Final Fight Metal Crash
ptr_dacD6:	DAC_Entry	12h+1, IntroKickS3D,	dpcm	; $D6	- Intro Kick
	endif

	if SMPS_S3DACSamples
		; Sonic 3
ptr_dacD7:	DAC_Entry	16h+1, EchoedClapHitS3,	dpcm	; $D7	- Echoed Clap Hit (S3)
ptr_dacD8:	DAC_Entry	20h+1, EchoedClapHitS3,	dpcm	; $D8	- Lower Echoed Clap Hit(S3)	; Clownacy | Good golly, we're close to reaching Mega PCM's limit...
	endif

	if SMPS_SCDACSamples
		; Sonic Crackers
ptr_dacD9:	DAC_Entry	30h+1, Beat,		dpcm	; $D9	- Beat
ptr_dacDA:	DAC_Entry	0Ah+1, SnareSC,		dpcm	; $DA	- Snare (SC)
ptr_dacDB:	DAC_Entry	0Ah+1, TimTom,		dpcm	; $DB	- Hi Timpani/Tom (SC)
ptr_dacDC:	DAC_Entry	0Eh+1, TimTom,		dpcm	; $DC	- Mid Timpani/Tom (SC)
ptr_dacDD:	DAC_Entry	10h+1, TimTom,		dpcm	; $DD	- Low Timpani/Tom (SC)
ptr_dacDE:	DAC_Entry	0Ah+1, LetsGo,		dpcm	; $DE	- "Let's Go!"
ptr_dacDF:	DAC_Entry	0Ah+1, Hey,		dpcm	; $DF	- "Hey!"	; Clownacy | X_X Extending the DAC range is going to take some creativity...
	endif

	if SMPS_SegaPCM_68k = 0
ptr_dacE0:	DAC_Entry	08h, SegaPCM,		pcm	; $E0	- Sega!
	endif

	if $ > MegaPCM_Stack
		fatal "There's too much data before the volume lookup table! There should be less than \{Stack}h bytes of data, but you're using \{$}h bytes!"
	endif

	align 1000h
MegaPCM_VolumeTbls:
	db  00h, 01h, 02h, 03h,	04h, 05h, 06h, 07h, 08h, 09h, 0Ah, 0Bh,	0Ch, 0Dh, 0Eh, 0Fh
	db  10h, 11h, 12h, 13h,	14h, 15h, 16h, 17h, 18h, 19h, 1Ah, 1Bh,	1Ch, 1Dh, 1Eh, 1Fh
	db  20h, 21h, 22h, 23h,	24h, 25h, 26h, 27h, 28h, 29h, 2Ah, 2Bh,	2Ch, 2Dh, 2Eh, 2Fh
	db  30h, 31h, 32h, 33h,	34h, 35h, 36h, 37h, 38h, 39h, 3Ah, 3Bh,	3Ch, 3Dh, 3Eh, 3Fh
	db  40h, 41h, 42h, 43h,	44h, 45h, 46h, 47h, 48h, 49h, 4Ah, 4Bh,	4Ch, 4Dh, 4Eh, 4Fh
	db  50h, 51h, 52h, 53h,	54h, 55h, 56h, 57h, 58h, 59h, 5Ah, 5Bh,	5Ch, 5Dh, 5Eh, 5Fh
	db  60h, 61h, 62h, 63h,	64h, 65h, 66h, 67h, 68h, 69h, 6Ah, 6Bh,	6Ch, 6Dh, 6Eh, 6Fh
	db  70h, 71h, 72h, 73h,	74h, 75h, 76h, 77h, 78h, 79h, 7Ah, 7Bh,	7Ch, 7Dh, 7Eh, 7Fh
	db  80h, 81h, 82h, 83h,	84h, 85h, 86h, 87h, 88h, 89h, 8Ah, 8Bh,	8Ch, 8Dh, 8Eh, 8Fh
	db  90h, 91h, 92h, 93h,	94h, 95h, 96h, 97h, 98h, 99h, 9Ah, 9Bh,	9Ch, 9Dh, 9Eh, 9Fh
	db 0A0h,0A1h,0A2h,0A3h,0A4h,0A5h,0A6h,0A7h,0A8h,0A9h,0AAh,0ABh,0ACh,0ADh,0AEh,0AFh
	db 0B0h,0B1h,0B2h,0B3h,0B4h,0B5h,0B6h,0B7h,0B8h,0B9h,0BAh,0BBh,0BCh,0BDh,0BEh,0BFh
	db 0C0h,0C1h,0C2h,0C3h,0C4h,0C5h,0C6h,0C7h,0C8h,0C9h,0CAh,0CBh,0CCh,0CDh,0CEh,0CFh
	db 0D0h,0D1h,0D2h,0D3h,0D4h,0D5h,0D6h,0D7h,0D8h,0D9h,0DAh,0DBh,0DCh,0DDh,0DEh,0DFh
	db 0E0h,0E1h,0E2h,0E3h,0E4h,0E5h,0E6h,0E7h,0E8h,0E9h,0EAh,0EBh,0ECh,0EDh,0EEh,0EFh
	db 0F0h,0F1h,0F2h,0F3h,0F4h,0F5h,0F6h,0F7h,0F8h,0F9h,0FAh,0FBh,0FCh,0FDh,0FEh,0FFh
	db  08h, 09h, 0Ah, 0Bh,	0Ch, 0Dh, 0Eh, 0Fh, 10h, 11h, 12h, 13h,	14h, 15h, 16h, 16h
	db  17h, 18h, 19h, 1Ah,	1Bh, 1Ch, 1Dh, 1Eh, 1Fh, 20h, 21h, 22h,	23h, 24h, 25h, 25h
	db  26h, 27h, 28h, 29h,	2Ah, 2Bh, 2Ch, 2Dh, 2Eh, 2Fh, 30h, 31h,	32h, 33h, 34h, 34h
	db  35h, 36h, 37h, 38h,	39h, 3Ah, 3Bh, 3Ch, 3Dh, 3Eh, 3Fh, 40h,	41h, 42h, 43h, 43h
	db  44h, 45h, 46h, 47h,	48h, 49h, 4Ah, 4Bh, 4Ch, 4Dh, 4Eh, 4Fh,	50h, 51h, 52h, 52h
	db  53h, 54h, 55h, 56h,	57h, 58h, 59h, 5Ah, 5Bh, 5Ch, 5Dh, 5Eh,	5Fh, 60h, 61h, 61h
	db  62h, 63h, 64h, 65h,	66h, 67h, 68h, 69h, 6Ah, 6Bh, 6Ch, 6Dh,	6Eh, 6Fh, 70h, 70h
	db  71h, 72h, 73h, 74h,	75h, 76h, 77h, 78h, 79h, 7Ah, 7Bh, 7Ch,	7Dh, 7Eh, 7Fh, 7Fh
	db  80h, 80h, 81h, 82h,	83h, 84h, 85h, 86h, 87h, 88h, 89h, 8Ah,	8Bh, 8Ch, 8Dh, 8Eh
	db  8Fh, 8Fh, 90h, 91h,	92h, 93h, 94h, 95h, 96h, 97h, 98h, 99h,	9Ah, 9Bh, 9Ch, 9Dh
	db  9Eh, 9Eh, 9Fh,0A0h,0A1h,0A2h,0A3h,0A4h,0A5h,0A6h,0A7h,0A8h,0A9h,0AAh,0ABh,0ACh
	db 0ADh,0ADh,0AEh,0AFh,0B0h,0B1h,0B2h,0B3h,0B4h,0B5h,0B6h,0B7h,0B8h,0B9h,0BAh,0BBh
	db 0BCh,0BCh,0BDh,0BEh,0BFh,0C0h,0C1h,0C2h,0C3h,0C4h,0C5h,0C6h,0C7h,0C8h,0C9h,0CAh
	db 0CBh,0CBh,0CCh,0CDh,0CEh,0CFh,0D0h,0D1h,0D2h,0D3h,0D4h,0D5h,0D6h,0D7h,0D8h,0D9h
	db 0DAh,0DAh,0DBh,0DCh,0DDh,0DEh,0DFh,0E0h,0E1h,0E2h,0E3h,0E4h,0E5h,0E6h,0E7h,0E8h
	db 0E9h,0E9h,0EAh,0EBh,0ECh,0EDh,0EEh,0EFh,0F0h,0F1h,0F2h,0F3h,0F4h,0F5h,0F6h,0F7h
	db  10h, 11h, 12h, 13h,	14h, 15h, 16h, 16h, 17h, 18h, 19h, 1Ah,	1Bh, 1Ch, 1Dh, 1Dh
	db  1Eh, 1Fh, 20h, 21h,	22h, 23h, 24h, 24h, 25h, 26h, 27h, 28h,	29h, 2Ah, 2Bh, 2Bh
	db  2Ch, 2Dh, 2Eh, 2Fh,	30h, 31h, 32h, 32h, 33h, 34h, 35h, 36h,	37h, 38h, 39h, 39h
	db  3Ah, 3Bh, 3Ch, 3Dh,	3Eh, 3Fh, 40h, 40h, 41h, 42h, 43h, 44h,	45h, 46h, 47h, 47h
	db  48h, 49h, 4Ah, 4Bh,	4Ch, 4Dh, 4Eh, 4Eh, 4Fh, 50h, 51h, 52h,	53h, 54h, 55h, 55h
	db  56h, 57h, 58h, 59h,	5Ah, 5Bh, 5Ch, 5Ch, 5Dh, 5Eh, 5Fh, 60h,	61h, 62h, 63h, 63h
	db  64h, 65h, 66h, 67h,	68h, 69h, 6Ah, 6Ah, 6Bh, 6Ch, 6Dh, 6Eh,	6Fh, 70h, 71h, 71h
	db  72h, 73h, 74h, 75h,	76h, 77h, 78h, 78h, 79h, 7Ah, 7Bh, 7Ch,	7Dh, 7Eh, 7Fh, 7Fh
	db  80h, 80h, 81h, 82h,	83h, 84h, 85h, 86h, 87h, 87h, 88h, 89h,	8Ah, 8Bh, 8Ch, 8Dh
	db  8Eh, 8Eh, 8Fh, 90h,	91h, 92h, 93h, 94h, 95h, 95h, 96h, 97h,	98h, 99h, 9Ah, 9Bh
	db  9Ch, 9Ch, 9Dh, 9Eh,	9Fh,0A0h,0A1h,0A2h,0A3h,0A3h,0A4h,0A5h,0A6h,0A7h,0A8h,0A9h
	db 0AAh,0AAh,0ABh,0ACh,0ADh,0AEh,0AFh,0B0h,0B1h,0B1h,0B2h,0B3h,0B4h,0B5h,0B6h,0B7h
	db 0B8h,0B8h,0B9h,0BAh,0BBh,0BCh,0BDh,0BEh,0BFh,0BFh,0C0h,0C1h,0C2h,0C3h,0C4h,0C5h
	db 0C6h,0C6h,0C7h,0C8h,0C9h,0CAh,0CBh,0CCh,0CDh,0CDh,0CEh,0CFh,0D0h,0D1h,0D2h,0D3h
	db 0D4h,0D4h,0D5h,0D6h,0D7h,0D8h,0D9h,0DAh,0DBh,0DBh,0DCh,0DDh,0DEh,0DFh,0E0h,0E1h
	db 0E2h,0E2h,0E3h,0E4h,0E5h,0E6h,0E7h,0E8h,0E9h,0E9h,0EAh,0EBh,0ECh,0EDh,0EEh,0EFh
	db  18h, 19h, 1Ah, 1Bh,	1Ch, 1Ch, 1Dh, 1Eh, 1Fh, 20h, 20h, 21h,	22h, 23h, 24h, 24h
	db  25h, 26h, 27h, 28h,	29h, 29h, 2Ah, 2Bh, 2Ch, 2Dh, 2Dh, 2Eh,	2Fh, 30h, 31h, 31h
	db  32h, 33h, 34h, 35h,	36h, 36h, 37h, 38h, 39h, 3Ah, 3Ah, 3Bh,	3Ch, 3Dh, 3Eh, 3Eh
	db  3Fh, 40h, 41h, 42h,	43h, 43h, 44h, 45h, 46h, 47h, 47h, 48h,	49h, 4Ah, 4Bh, 4Bh
	db  4Ch, 4Dh, 4Eh, 4Fh,	50h, 50h, 51h, 52h, 53h, 54h, 54h, 55h,	56h, 57h, 58h, 58h
	db  59h, 5Ah, 5Bh, 5Ch,	5Dh, 5Dh, 5Eh, 5Fh, 60h, 61h, 61h, 62h,	63h, 64h, 65h, 65h
	db  66h, 67h, 68h, 69h,	6Ah, 6Ah, 6Bh, 6Ch, 6Dh, 6Eh, 6Eh, 6Fh,	70h, 71h, 72h, 72h
	db  73h, 74h, 75h, 76h,	77h, 77h, 78h, 79h, 7Ah, 7Bh, 7Bh, 7Ch,	7Dh, 7Eh, 7Fh, 7Fh
	db  80h, 80h, 81h, 82h,	83h, 84h, 84h, 85h, 86h, 87h, 88h, 88h,	89h, 8Ah, 8Bh, 8Ch
	db  8Dh, 8Dh, 8Eh, 8Fh,	90h, 91h, 91h, 92h, 93h, 94h, 95h, 95h,	96h, 97h, 98h, 99h
	db  9Ah, 9Ah, 9Bh, 9Ch,	9Dh, 9Eh, 9Eh, 9Fh,0A0h,0A1h,0A2h,0A2h,0A3h,0A4h,0A5h,0A6h
	db 0A7h,0A7h,0A8h,0A9h,0AAh,0ABh,0ABh,0ACh,0ADh,0AEh,0AFh,0AFh,0B0h,0B1h,0B2h,0B3h
	db 0B4h,0B4h,0B5h,0B6h,0B7h,0B8h,0B8h,0B9h,0BAh,0BBh,0BCh,0BCh,0BDh,0BEh,0BFh,0C0h
	db 0C1h,0C1h,0C2h,0C3h,0C4h,0C5h,0C5h,0C6h,0C7h,0C8h,0C9h,0C9h,0CAh,0CBh,0CCh,0CDh
	db 0CEh,0CEh,0CFh,0D0h,0D1h,0D2h,0D2h,0D3h,0D4h,0D5h,0D6h,0D6h,0D7h,0D8h,0D9h,0DAh
	db 0DBh,0DBh,0DCh,0DDh,0DEh,0DFh,0DFh,0E0h,0E1h,0E2h,0E3h,0E3h,0E4h,0E5h,0E6h,0E7h
	db  20h, 21h, 22h, 22h,	23h, 24h, 25h, 25h, 26h, 27h, 28h, 28h,	29h, 2Ah, 2Bh, 2Bh
	db  2Ch, 2Dh, 2Eh, 2Eh,	2Fh, 30h, 31h, 31h, 32h, 33h, 34h, 34h,	35h, 36h, 37h, 37h
	db  38h, 39h, 3Ah, 3Ah,	3Bh, 3Ch, 3Dh, 3Dh, 3Eh, 3Fh, 40h, 40h,	41h, 42h, 43h, 43h
	db  44h, 45h, 46h, 46h,	47h, 48h, 49h, 49h, 4Ah, 4Bh, 4Ch, 4Ch,	4Dh, 4Eh, 4Fh, 4Fh
	db  50h, 51h, 52h, 52h,	53h, 54h, 55h, 55h, 56h, 57h, 58h, 58h,	59h, 5Ah, 5Bh, 5Bh
	db  5Ch, 5Dh, 5Eh, 5Eh,	5Fh, 60h, 61h, 61h, 62h, 63h, 64h, 64h,	65h, 66h, 67h, 67h
	db  68h, 69h, 6Ah, 6Ah,	6Bh, 6Ch, 6Dh, 6Dh, 6Eh, 6Fh, 70h, 70h,	71h, 72h, 73h, 73h
	db  74h, 75h, 76h, 76h,	77h, 78h, 79h, 79h, 7Ah, 7Bh, 7Ch, 7Ch,	7Dh, 7Eh, 7Fh, 7Fh
	db  80h, 80h, 81h, 82h,	83h, 83h, 84h, 85h, 86h, 86h, 87h, 88h,	89h, 89h, 8Ah, 8Bh
	db  8Ch, 8Ch, 8Dh, 8Eh,	8Fh, 8Fh, 90h, 91h, 92h, 92h, 93h, 94h,	95h, 95h, 96h, 97h
	db  98h, 98h, 99h, 9Ah,	9Bh, 9Bh, 9Ch, 9Dh, 9Eh, 9Eh, 9Fh,0A0h,0A1h,0A1h,0A2h,0A3h
	db 0A4h,0A4h,0A5h,0A6h,0A7h,0A7h,0A8h,0A9h,0AAh,0AAh,0ABh,0ACh,0ADh,0ADh,0AEh,0AFh
	db 0B0h,0B0h,0B1h,0B2h,0B3h,0B3h,0B4h,0B5h,0B6h,0B6h,0B7h,0B8h,0B9h,0B9h,0BAh,0BBh
	db 0BCh,0BCh,0BDh,0BEh,0BFh,0BFh,0C0h,0C1h,0C2h,0C2h,0C3h,0C4h,0C5h,0C5h,0C6h,0C7h
	db 0C8h,0C8h,0C9h,0CAh,0CBh,0CBh,0CCh,0CDh,0CEh,0CEh,0CFh,0D0h,0D1h,0D1h,0D2h,0D3h
	db 0D4h,0D4h,0D5h,0D6h,0D7h,0D7h,0D8h,0D9h,0DAh,0DAh,0DBh,0DCh,0DDh,0DDh,0DEh,0DFh
	db  28h, 29h, 2Ah, 2Ah,	2Bh, 2Ch, 2Ch, 2Dh, 2Eh, 2Eh, 2Fh, 30h,	30h, 31h, 32h, 32h
	db  33h, 34h, 35h, 35h,	36h, 37h, 37h, 38h, 39h, 39h, 3Ah, 3Bh,	3Bh, 3Ch, 3Dh, 3Dh
	db  3Eh, 3Fh, 40h, 40h,	41h, 42h, 42h, 43h, 44h, 44h, 45h, 46h,	46h, 47h, 48h, 48h
	db  49h, 4Ah, 4Bh, 4Bh,	4Ch, 4Dh, 4Dh, 4Eh, 4Fh, 4Fh, 50h, 51h,	51h, 52h, 53h, 53h
	db  54h, 55h, 56h, 56h,	57h, 58h, 58h, 59h, 5Ah, 5Ah, 5Bh, 5Ch,	5Ch, 5Dh, 5Eh, 5Eh
	db  5Fh, 60h, 61h, 61h,	62h, 63h, 63h, 64h, 65h, 65h, 66h, 67h,	67h, 68h, 69h, 69h
	db  6Ah, 6Bh, 6Ch, 6Ch,	6Dh, 6Eh, 6Eh, 6Fh, 70h, 70h, 71h, 72h,	72h, 73h, 74h, 74h
	db  75h, 76h, 77h, 77h,	78h, 79h, 79h, 7Ah, 7Bh, 7Bh, 7Ch, 7Dh,	7Dh, 7Eh, 7Fh, 7Fh
	db  80h, 80h, 81h, 82h,	82h, 83h, 84h, 84h, 85h, 86h, 86h, 87h,	88h, 88h, 89h, 8Ah
	db  8Bh, 8Bh, 8Ch, 8Dh,	8Dh, 8Eh, 8Fh, 8Fh, 90h, 91h, 91h, 92h,	93h, 93h, 94h, 95h
	db  96h, 96h, 97h, 98h,	98h, 99h, 9Ah, 9Ah, 9Bh, 9Ch, 9Ch, 9Dh,	9Eh, 9Eh, 9Fh,0A0h
	db 0A1h,0A1h,0A2h,0A3h,0A3h,0A4h,0A5h,0A5h,0A6h,0A7h,0A7h,0A8h,0A9h,0A9h,0AAh,0ABh
	db 0ACh,0ACh,0ADh,0AEh,0AEh,0AFh,0B0h,0B0h,0B1h,0B2h,0B2h,0B3h,0B4h,0B4h,0B5h,0B6h
	db 0B7h,0B7h,0B8h,0B9h,0B9h,0BAh,0BBh,0BBh,0BCh,0BDh,0BDh,0BEh,0BFh,0BFh,0C0h,0C1h
	db 0C2h,0C2h,0C3h,0C4h,0C4h,0C5h,0C6h,0C6h,0C7h,0C8h,0C8h,0C9h,0CAh,0CAh,0CBh,0CCh
	db 0CDh,0CDh,0CEh,0CFh,0CFh,0D0h,0D1h,0D1h,0D2h,0D3h,0D3h,0D4h,0D5h,0D5h,0D6h,0D7h
	db  30h, 31h, 31h, 32h,	33h, 33h, 34h, 34h, 35h, 36h, 36h, 37h,	38h, 38h, 39h, 39h
	db  3Ah, 3Bh, 3Bh, 3Ch,	3Dh, 3Dh, 3Eh, 3Eh, 3Fh, 40h, 40h, 41h,	42h, 42h, 43h, 43h
	db  44h, 45h, 45h, 46h,	47h, 47h, 48h, 48h, 49h, 4Ah, 4Ah, 4Bh,	4Ch, 4Ch, 4Dh, 4Dh
	db  4Eh, 4Fh, 4Fh, 50h,	51h, 51h, 52h, 52h, 53h, 54h, 54h, 55h,	56h, 56h, 57h, 57h
	db  58h, 59h, 59h, 5Ah,	5Bh, 5Bh, 5Ch, 5Ch, 5Dh, 5Eh, 5Eh, 5Fh,	60h, 60h, 61h, 61h
	db  62h, 63h, 63h, 64h,	65h, 65h, 66h, 66h, 67h, 68h, 68h, 69h,	6Ah, 6Ah, 6Bh, 6Bh
	db  6Ch, 6Dh, 6Dh, 6Eh,	6Fh, 6Fh, 70h, 70h, 71h, 72h, 72h, 73h,	74h, 74h, 75h, 75h
	db  76h, 77h, 77h, 78h,	79h, 79h, 7Ah, 7Ah, 7Bh, 7Ch, 7Ch, 7Dh,	7Eh, 7Eh, 7Fh, 7Fh
	db  80h, 80h, 81h, 81h,	82h, 83h, 83h, 84h, 85h, 85h, 86h, 86h,	87h, 88h, 88h, 89h
	db  8Ah, 8Ah, 8Bh, 8Bh,	8Ch, 8Dh, 8Dh, 8Eh, 8Fh, 8Fh, 90h, 90h,	91h, 92h, 92h, 93h
	db  94h, 94h, 95h, 95h,	96h, 97h, 97h, 98h, 99h, 99h, 9Ah, 9Ah,	9Bh, 9Ch, 9Ch, 9Dh
	db  9Eh, 9Eh, 9Fh, 9Fh,0A0h,0A1h,0A1h,0A2h,0A3h,0A3h,0A4h,0A4h,0A5h,0A6h,0A6h,0A7h
	db 0A8h,0A8h,0A9h,0A9h,0AAh,0ABh,0ABh,0ACh,0ADh,0ADh,0AEh,0AEh,0AFh,0B0h,0B0h,0B1h
	db 0B2h,0B2h,0B3h,0B3h,0B4h,0B5h,0B5h,0B6h,0B7h,0B7h,0B8h,0B8h,0B9h,0BAh,0BAh,0BBh
	db 0BCh,0BCh,0BDh,0BDh,0BEh,0BFh,0BFh,0C0h,0C1h,0C1h,0C2h,0C2h,0C3h,0C4h,0C4h,0C5h
	db 0C6h,0C6h,0C7h,0C7h,0C8h,0C9h,0C9h,0CAh,0CBh,0CBh,0CCh,0CCh,0CDh,0CEh,0CEh,0CFh
	db  38h, 39h, 39h, 3Ah,	3Ah, 3Bh, 3Bh, 3Ch, 3Dh, 3Dh, 3Eh, 3Eh,	3Fh, 3Fh, 40h, 40h
	db  41h, 42h, 42h, 43h,	43h, 44h, 44h, 45h, 46h, 46h, 47h, 47h,	48h, 48h, 49h, 49h
	db  4Ah, 4Bh, 4Bh, 4Ch,	4Ch, 4Dh, 4Dh, 4Eh, 4Fh, 4Fh, 50h, 50h,	51h, 51h, 52h, 52h
	db  53h, 54h, 54h, 55h,	55h, 56h, 56h, 57h, 58h, 58h, 59h, 59h,	5Ah, 5Ah, 5Bh, 5Bh
	db  5Ch, 5Dh, 5Dh, 5Eh,	5Eh, 5Fh, 5Fh, 60h, 61h, 61h, 62h, 62h,	63h, 63h, 64h, 64h
	db  65h, 66h, 66h, 67h,	67h, 68h, 68h, 69h, 6Ah, 6Ah, 6Bh, 6Bh,	6Ch, 6Ch, 6Dh, 6Dh
	db  6Eh, 6Fh, 6Fh, 70h,	70h, 71h, 71h, 72h, 73h, 73h, 74h, 74h,	75h, 75h, 76h, 76h
	db  77h, 78h, 78h, 79h,	79h, 7Ah, 7Ah, 7Bh, 7Ch, 7Ch, 7Dh, 7Dh,	7Eh, 7Eh, 7Fh, 7Fh
	db  80h, 80h, 81h, 81h,	82h, 82h, 83h, 83h, 84h, 85h, 85h, 86h,	86h, 87h, 87h, 88h
	db  89h, 89h, 8Ah, 8Ah,	8Bh, 8Bh, 8Ch, 8Ch, 8Dh, 8Eh, 8Eh, 8Fh,	8Fh, 90h, 90h, 91h
	db  92h, 92h, 93h, 93h,	94h, 94h, 95h, 95h, 96h, 97h, 97h, 98h,	98h, 99h, 99h, 9Ah
	db  9Bh, 9Bh, 9Ch, 9Ch,	9Dh, 9Dh, 9Eh, 9Eh, 9Fh,0A0h,0A0h,0A1h,0A1h,0A2h,0A2h,0A3h
	db 0A4h,0A4h,0A5h,0A5h,0A6h,0A6h,0A7h,0A7h,0A8h,0A9h,0A9h,0AAh,0AAh,0ABh,0ABh,0ACh
	db 0ADh,0ADh,0AEh,0AEh,0AFh,0AFh,0B0h,0B0h,0B1h,0B2h,0B2h,0B3h,0B3h,0B4h,0B4h,0B5h
	db 0B6h,0B6h,0B7h,0B7h,0B8h,0B8h,0B9h,0B9h,0BAh,0BBh,0BBh,0BCh,0BCh,0BDh,0BDh,0BEh
	db 0BFh,0BFh,0C0h,0C0h,0C1h,0C1h,0C2h,0C2h,0C3h,0C4h,0C4h,0C5h,0C5h,0C6h,0C6h,0C7h
	db  40h, 40h, 41h, 41h,	42h, 42h, 43h, 43h, 44h, 44h, 45h, 45h,	46h, 46h, 47h, 47h
	db  48h, 48h, 49h, 49h,	4Ah, 4Ah, 4Bh, 4Bh, 4Ch, 4Ch, 4Dh, 4Dh,	4Eh, 4Eh, 4Fh, 4Fh
	db  50h, 50h, 51h, 51h,	52h, 52h, 53h, 53h, 54h, 54h, 55h, 55h,	56h, 56h, 57h, 57h
	db  58h, 58h, 59h, 59h,	5Ah, 5Ah, 5Bh, 5Bh, 5Ch, 5Ch, 5Dh, 5Dh,	5Eh, 5Eh, 5Fh, 5Fh
	db  60h, 60h, 61h, 61h,	62h, 62h, 63h, 63h, 64h, 64h, 65h, 65h,	66h, 66h, 67h, 67h
	db  68h, 68h, 69h, 69h,	6Ah, 6Ah, 6Bh, 6Bh, 6Ch, 6Ch, 6Dh, 6Dh,	6Eh, 6Eh, 6Fh, 6Fh
	db  70h, 70h, 71h, 71h,	72h, 72h, 73h, 73h, 74h, 74h, 75h, 75h,	76h, 76h, 77h, 77h
	db  78h, 78h, 79h, 79h,	7Ah, 7Ah, 7Bh, 7Bh, 7Ch, 7Ch, 7Dh, 7Dh,	7Eh, 7Eh, 7Fh, 7Fh
	db  80h, 80h, 81h, 81h,	82h, 82h, 83h, 83h, 84h, 84h, 85h, 85h,	86h, 86h, 87h, 87h
	db  88h, 88h, 89h, 89h,	8Ah, 8Ah, 8Bh, 8Bh, 8Ch, 8Ch, 8Dh, 8Dh,	8Eh, 8Eh, 8Fh, 8Fh
	db  90h, 90h, 91h, 91h,	92h, 92h, 93h, 93h, 94h, 94h, 95h, 95h,	96h, 96h, 97h, 97h
	db  98h, 98h, 99h, 99h,	9Ah, 9Ah, 9Bh, 9Bh, 9Ch, 9Ch, 9Dh, 9Dh,	9Eh, 9Eh, 9Fh, 9Fh
	db 0A0h,0A0h,0A1h,0A1h,0A2h,0A2h,0A3h,0A3h,0A4h,0A4h,0A5h,0A5h,0A6h,0A6h,0A7h,0A7h
	db 0A8h,0A8h,0A9h,0A9h,0AAh,0AAh,0ABh,0ABh,0ACh,0ACh,0ADh,0ADh,0AEh,0AEh,0AFh,0AFh
	db 0B0h,0B0h,0B1h,0B1h,0B2h,0B2h,0B3h,0B3h,0B4h,0B4h,0B5h,0B5h,0B6h,0B6h,0B7h,0B7h
	db 0B8h,0B8h,0B9h,0B9h,0BAh,0BAh,0BBh,0BBh,0BCh,0BCh,0BDh,0BDh,0BEh,0BEh,0BFh,0BFh
	db  48h, 48h, 49h, 49h,	4Ah, 4Ah, 4Bh, 4Bh, 4Bh, 4Ch, 4Ch, 4Dh,	4Dh, 4Eh, 4Eh, 4Eh
	db  4Fh, 4Fh, 50h, 50h,	51h, 51h, 52h, 52h, 52h, 53h, 53h, 54h,	54h, 55h, 55h, 55h
	db  56h, 56h, 57h, 57h,	58h, 58h, 59h, 59h, 59h, 5Ah, 5Ah, 5Bh,	5Bh, 5Ch, 5Ch, 5Ch
	db  5Dh, 5Dh, 5Eh, 5Eh,	5Fh, 5Fh, 60h, 60h, 60h, 61h, 61h, 62h,	62h, 63h, 63h, 63h
	db  64h, 64h, 65h, 65h,	66h, 66h, 67h, 67h, 67h, 68h, 68h, 69h,	69h, 6Ah, 6Ah, 6Ah
	db  6Bh, 6Bh, 6Ch, 6Ch,	6Dh, 6Dh, 6Eh, 6Eh, 6Eh, 6Fh, 6Fh, 70h,	70h, 71h, 71h, 71h
	db  72h, 72h, 73h, 73h,	74h, 74h, 75h, 75h, 75h, 76h, 76h, 77h,	77h, 78h, 78h, 78h
	db  79h, 79h, 7Ah, 7Ah,	7Bh, 7Bh, 7Ch, 7Ch, 7Ch, 7Dh, 7Dh, 7Eh,	7Eh, 7Fh, 7Fh, 7Fh
	db  80h, 80h, 80h, 81h,	81h, 82h, 82h, 83h, 83h, 83h, 84h, 84h,	85h, 85h, 86h, 86h
	db  87h, 87h, 87h, 88h,	88h, 89h, 89h, 8Ah, 8Ah, 8Ah, 8Bh, 8Bh,	8Ch, 8Ch, 8Dh, 8Dh
	db  8Eh, 8Eh, 8Eh, 8Fh,	8Fh, 90h, 90h, 91h, 91h, 91h, 92h, 92h,	93h, 93h, 94h, 94h
	db  95h, 95h, 95h, 96h,	96h, 97h, 97h, 98h, 98h, 98h, 99h, 99h,	9Ah, 9Ah, 9Bh, 9Bh
	db  9Ch, 9Ch, 9Ch, 9Dh,	9Dh, 9Eh, 9Eh, 9Fh, 9Fh, 9Fh,0A0h,0A0h,0A1h,0A1h,0A2h,0A2h
	db 0A3h,0A3h,0A3h,0A4h,0A4h,0A5h,0A5h,0A6h,0A6h,0A6h,0A7h,0A7h,0A8h,0A8h,0A9h,0A9h
	db 0AAh,0AAh,0AAh,0ABh,0ABh,0ACh,0ACh,0ADh,0ADh,0ADh,0AEh,0AEh,0AFh,0AFh,0B0h,0B0h
	db 0B1h,0B1h,0B1h,0B2h,0B2h,0B3h,0B3h,0B4h,0B4h,0B4h,0B5h,0B5h,0B6h,0B6h,0B7h,0B7h
	db  50h, 50h, 51h, 51h,	51h, 52h, 52h, 52h, 53h, 53h, 54h, 54h,	54h, 55h, 55h, 55h
	db  56h, 56h, 57h, 57h,	57h, 58h, 58h, 58h, 59h, 59h, 5Ah, 5Ah,	5Ah, 5Bh, 5Bh, 5Bh
	db  5Ch, 5Ch, 5Dh, 5Dh,	5Dh, 5Eh, 5Eh, 5Eh, 5Fh, 5Fh, 60h, 60h,	60h, 61h, 61h, 61h
	db  62h, 62h, 63h, 63h,	63h, 64h, 64h, 64h, 65h, 65h, 66h, 66h,	66h, 67h, 67h, 67h
	db  68h, 68h, 69h, 69h,	69h, 6Ah, 6Ah, 6Ah, 6Bh, 6Bh, 6Ch, 6Ch,	6Ch, 6Dh, 6Dh, 6Dh
	db  6Eh, 6Eh, 6Fh, 6Fh,	6Fh, 70h, 70h, 70h, 71h, 71h, 72h, 72h,	72h, 73h, 73h, 73h
	db  74h, 74h, 75h, 75h,	75h, 76h, 76h, 76h, 77h, 77h, 78h, 78h,	78h, 79h, 79h, 79h
	db  7Ah, 7Ah, 7Bh, 7Bh,	7Bh, 7Ch, 7Ch, 7Ch, 7Dh, 7Dh, 7Eh, 7Eh,	7Eh, 7Fh, 7Fh, 7Fh
	db  80h, 80h, 80h, 81h,	81h, 81h, 82h, 82h, 83h, 83h, 83h, 84h,	84h, 84h, 85h, 85h
	db  86h, 86h, 86h, 87h,	87h, 87h, 88h, 88h, 89h, 89h, 89h, 8Ah,	8Ah, 8Ah, 8Bh, 8Bh
	db  8Ch, 8Ch, 8Ch, 8Dh,	8Dh, 8Dh, 8Eh, 8Eh, 8Fh, 8Fh, 8Fh, 90h,	90h, 90h, 91h, 91h
	db  92h, 92h, 92h, 93h,	93h, 93h, 94h, 94h, 95h, 95h, 95h, 96h,	96h, 96h, 97h, 97h
	db  98h, 98h, 98h, 99h,	99h, 99h, 9Ah, 9Ah, 9Bh, 9Bh, 9Bh, 9Ch,	9Ch, 9Ch, 9Dh, 9Dh
	db  9Eh, 9Eh, 9Eh, 9Fh,	9Fh, 9Fh,0A0h,0A0h,0A1h,0A1h,0A1h,0A2h,0A2h,0A2h,0A3h,0A3h
	db 0A4h,0A4h,0A4h,0A5h,0A5h,0A5h,0A6h,0A6h,0A7h,0A7h,0A7h,0A8h,0A8h,0A8h,0A9h,0A9h
	db 0AAh,0AAh,0AAh,0ABh,0ABh,0ABh,0ACh,0ACh,0ADh,0ADh,0ADh,0AEh,0AEh,0AEh,0AFh,0AFh
	db  58h, 58h, 58h, 59h,	59h, 59h, 5Ah, 5Ah, 5Ah, 5Bh, 5Bh, 5Bh,	5Ch, 5Ch, 5Ch, 5Ch
	db  5Dh, 5Dh, 5Dh, 5Eh,	5Eh, 5Eh, 5Fh, 5Fh, 5Fh, 60h, 60h, 60h,	61h, 61h, 61h, 61h
	db  62h, 62h, 62h, 63h,	63h, 63h, 64h, 64h, 64h, 65h, 65h, 65h,	66h, 66h, 66h, 66h
	db  67h, 67h, 67h, 68h,	68h, 68h, 69h, 69h, 69h, 6Ah, 6Ah, 6Ah,	6Bh, 6Bh, 6Bh, 6Bh
	db  6Ch, 6Ch, 6Ch, 6Dh,	6Dh, 6Dh, 6Eh, 6Eh, 6Eh, 6Fh, 6Fh, 6Fh,	70h, 70h, 70h, 70h
	db  71h, 71h, 71h, 72h,	72h, 72h, 73h, 73h, 73h, 74h, 74h, 74h,	75h, 75h, 75h, 75h
	db  76h, 76h, 76h, 77h,	77h, 77h, 78h, 78h, 78h, 79h, 79h, 79h,	7Ah, 7Ah, 7Ah, 7Ah
	db  7Bh, 7Bh, 7Bh, 7Ch,	7Ch, 7Ch, 7Dh, 7Dh, 7Dh, 7Eh, 7Eh, 7Eh,	7Fh, 7Fh, 7Fh, 7Fh
	db  80h, 80h, 80h, 80h,	81h, 81h, 81h, 82h, 82h, 82h, 83h, 83h,	83h, 84h, 84h, 84h
	db  85h, 85h, 85h, 85h,	86h, 86h, 86h, 87h, 87h, 87h, 88h, 88h,	88h, 89h, 89h, 89h
	db  8Ah, 8Ah, 8Ah, 8Ah,	8Bh, 8Bh, 8Bh, 8Ch, 8Ch, 8Ch, 8Dh, 8Dh,	8Dh, 8Eh, 8Eh, 8Eh
	db  8Fh, 8Fh, 8Fh, 8Fh,	90h, 90h, 90h, 91h, 91h, 91h, 92h, 92h,	92h, 93h, 93h, 93h
	db  94h, 94h, 94h, 94h,	95h, 95h, 95h, 96h, 96h, 96h, 97h, 97h,	97h, 98h, 98h, 98h
	db  99h, 99h, 99h, 99h,	9Ah, 9Ah, 9Ah, 9Bh, 9Bh, 9Bh, 9Ch, 9Ch,	9Ch, 9Dh, 9Dh, 9Dh
	db  9Eh, 9Eh, 9Eh, 9Eh,	9Fh, 9Fh, 9Fh,0A0h,0A0h,0A0h,0A1h,0A1h,0A1h,0A2h,0A2h,0A2h
	db 0A3h,0A3h,0A3h,0A3h,0A4h,0A4h,0A4h,0A5h,0A5h,0A5h,0A6h,0A6h,0A6h,0A7h,0A7h,0A7h
	db  60h, 60h, 60h, 60h,	61h, 61h, 61h, 61h, 62h, 62h, 62h, 62h,	63h, 63h, 63h, 63h
	db  64h, 64h, 64h, 64h,	65h, 65h, 65h, 65h, 66h, 66h, 66h, 66h,	67h, 67h, 67h, 67h
	db  68h, 68h, 68h, 68h,	69h, 69h, 69h, 69h, 6Ah, 6Ah, 6Ah, 6Ah,	6Bh, 6Bh, 6Bh, 6Bh
	db  6Ch, 6Ch, 6Ch, 6Ch,	6Dh, 6Dh, 6Dh, 6Dh, 6Eh, 6Eh, 6Eh, 6Eh,	6Fh, 6Fh, 6Fh, 6Fh
	db  70h, 70h, 70h, 70h,	71h, 71h, 71h, 71h, 72h, 72h, 72h, 72h,	73h, 73h, 73h, 73h
	db  74h, 74h, 74h, 74h,	75h, 75h, 75h, 75h, 76h, 76h, 76h, 76h,	77h, 77h, 77h, 77h
	db  78h, 78h, 78h, 78h,	79h, 79h, 79h, 79h, 7Ah, 7Ah, 7Ah, 7Ah,	7Bh, 7Bh, 7Bh, 7Bh
	db  7Ch, 7Ch, 7Ch, 7Ch,	7Dh, 7Dh, 7Dh, 7Dh, 7Eh, 7Eh, 7Eh, 7Eh,	7Fh, 7Fh, 7Fh, 7Fh
	db  80h, 80h, 80h, 80h,	81h, 81h, 81h, 81h, 82h, 82h, 82h, 82h,	83h, 83h, 83h, 83h
	db  84h, 84h, 84h, 84h,	85h, 85h, 85h, 85h, 86h, 86h, 86h, 86h,	87h, 87h, 87h, 87h
	db  88h, 88h, 88h, 88h,	89h, 89h, 89h, 89h, 8Ah, 8Ah, 8Ah, 8Ah,	8Bh, 8Bh, 8Bh, 8Bh
	db  8Ch, 8Ch, 8Ch, 8Ch,	8Dh, 8Dh, 8Dh, 8Dh, 8Eh, 8Eh, 8Eh, 8Eh,	8Fh, 8Fh, 8Fh, 8Fh
	db  90h, 90h, 90h, 90h,	91h, 91h, 91h, 91h, 92h, 92h, 92h, 92h,	93h, 93h, 93h, 93h
	db  94h, 94h, 94h, 94h,	95h, 95h, 95h, 95h, 96h, 96h, 96h, 96h,	97h, 97h, 97h, 97h
	db  98h, 98h, 98h, 98h,	99h, 99h, 99h, 99h, 9Ah, 9Ah, 9Ah, 9Ah,	9Bh, 9Bh, 9Bh, 9Bh
	db  9Ch, 9Ch, 9Ch, 9Ch,	9Dh, 9Dh, 9Dh, 9Dh, 9Eh, 9Eh, 9Eh, 9Eh,	9Fh, 9Fh, 9Fh, 9Fh
	db  68h, 68h, 68h, 68h,	68h, 69h, 69h, 69h, 69h, 69h, 6Ah, 6Ah,	6Ah, 6Ah, 6Ah, 6Ah
	db  6Bh, 6Bh, 6Bh, 6Bh,	6Bh, 6Ch, 6Ch, 6Ch, 6Ch, 6Ch, 6Dh, 6Dh,	6Dh, 6Dh, 6Dh, 6Dh
	db  6Eh, 6Eh, 6Eh, 6Eh,	6Eh, 6Fh, 6Fh, 6Fh, 6Fh, 6Fh, 70h, 70h,	70h, 70h, 70h, 70h
	db  71h, 71h, 71h, 71h,	71h, 72h, 72h, 72h, 72h, 72h, 73h, 73h,	73h, 73h, 73h, 73h
	db  74h, 74h, 74h, 74h,	74h, 75h, 75h, 75h, 75h, 75h, 76h, 76h,	76h, 76h, 76h, 76h
	db  77h, 77h, 77h, 77h,	77h, 78h, 78h, 78h, 78h, 78h, 79h, 79h,	79h, 79h, 79h, 79h
	db  7Ah, 7Ah, 7Ah, 7Ah,	7Ah, 7Bh, 7Bh, 7Bh, 7Bh, 7Bh, 7Ch, 7Ch,	7Ch, 7Ch, 7Ch, 7Ch
	db  7Dh, 7Dh, 7Dh, 7Dh,	7Dh, 7Eh, 7Eh, 7Eh, 7Eh, 7Eh, 7Fh, 7Fh,	7Fh, 7Fh, 7Fh, 7Fh
	db  80h, 80h, 80h, 80h,	80h, 80h, 81h, 81h, 81h, 81h, 81h, 82h,	82h, 82h, 82h, 82h
	db  83h, 83h, 83h, 83h,	83h, 83h, 84h, 84h, 84h, 84h, 84h, 85h,	85h, 85h, 85h, 85h
	db  86h, 86h, 86h, 86h,	86h, 86h, 87h, 87h, 87h, 87h, 87h, 88h,	88h, 88h, 88h, 88h
	db  89h, 89h, 89h, 89h,	89h, 89h, 8Ah, 8Ah, 8Ah, 8Ah, 8Ah, 8Bh,	8Bh, 8Bh, 8Bh, 8Bh
	db  8Ch, 8Ch, 8Ch, 8Ch,	8Ch, 8Ch, 8Dh, 8Dh, 8Dh, 8Dh, 8Dh, 8Eh,	8Eh, 8Eh, 8Eh, 8Eh
	db  8Fh, 8Fh, 8Fh, 8Fh,	8Fh, 8Fh, 90h, 90h, 90h, 90h, 90h, 91h,	91h, 91h, 91h, 91h
	db  92h, 92h, 92h, 92h,	92h, 92h, 93h, 93h, 93h, 93h, 93h, 94h,	94h, 94h, 94h, 94h
	db  95h, 95h, 95h, 95h,	95h, 95h, 96h, 96h, 96h, 96h, 96h, 97h,	97h, 97h, 97h, 97h
	db  70h, 70h, 70h, 70h,	70h, 70h, 70h, 70h, 71h, 71h, 71h, 71h,	71h, 71h, 71h, 71h
	db  72h, 72h, 72h, 72h,	72h, 72h, 72h, 72h, 73h, 73h, 73h, 73h,	73h, 73h, 73h, 73h
	db  74h, 74h, 74h, 74h,	74h, 74h, 74h, 74h, 75h, 75h, 75h, 75h,	75h, 75h, 75h, 75h
	db  76h, 76h, 76h, 76h,	76h, 76h, 76h, 76h, 77h, 77h, 77h, 77h,	77h, 77h, 77h, 77h
	db  78h, 78h, 78h, 78h,	78h, 78h, 78h, 78h, 79h, 79h, 79h, 79h,	79h, 79h, 79h, 79h
	db  7Ah, 7Ah, 7Ah, 7Ah,	7Ah, 7Ah, 7Ah, 7Ah, 7Bh, 7Bh, 7Bh, 7Bh,	7Bh, 7Bh, 7Bh, 7Bh
	db  7Ch, 7Ch, 7Ch, 7Ch,	7Ch, 7Ch, 7Ch, 7Ch, 7Dh, 7Dh, 7Dh, 7Dh,	7Dh, 7Dh, 7Dh, 7Dh
	db  7Eh, 7Eh, 7Eh, 7Eh,	7Eh, 7Eh, 7Eh, 7Eh, 7Fh, 7Fh, 7Fh, 7Fh,	7Fh, 7Fh, 7Fh, 7Fh
	db  80h, 80h, 80h, 80h,	80h, 80h, 80h, 80h, 81h, 81h, 81h, 81h,	81h, 81h, 81h, 81h
	db  82h, 82h, 82h, 82h,	82h, 82h, 82h, 82h, 83h, 83h, 83h, 83h,	83h, 83h, 83h, 83h
	db  84h, 84h, 84h, 84h,	84h, 84h, 84h, 84h, 85h, 85h, 85h, 85h,	85h, 85h, 85h, 85h
	db  86h, 86h, 86h, 86h,	86h, 86h, 86h, 86h, 87h, 87h, 87h, 87h,	87h, 87h, 87h, 87h
	db  88h, 88h, 88h, 88h,	88h, 88h, 88h, 88h, 89h, 89h, 89h, 89h,	89h, 89h, 89h, 89h
	db  8Ah, 8Ah, 8Ah, 8Ah,	8Ah, 8Ah, 8Ah, 8Ah, 8Bh, 8Bh, 8Bh, 8Bh,	8Bh, 8Bh, 8Bh, 8Bh
	db  8Ch, 8Ch, 8Ch, 8Ch,	8Ch, 8Ch, 8Ch, 8Ch, 8Dh, 8Dh, 8Dh, 8Dh,	8Dh, 8Dh, 8Dh, 8Dh
	db  8Eh, 8Eh, 8Eh, 8Eh,	8Eh, 8Eh, 8Eh, 8Eh, 8Fh, 8Fh, 8Fh, 8Fh,	8Fh, 8Fh, 8Fh, 8Fh
	db  78h, 78h, 78h, 78h,	78h, 78h, 78h, 78h, 78h, 78h, 78h, 78h,	78h, 78h, 78h, 78h
	db  79h, 79h, 79h, 79h,	79h, 79h, 79h, 79h, 79h, 79h, 79h, 79h,	79h, 79h, 79h, 79h
	db  7Ah, 7Ah, 7Ah, 7Ah,	7Ah, 7Ah, 7Ah, 7Ah, 7Ah, 7Ah, 7Ah, 7Ah,	7Ah, 7Ah, 7Ah, 7Ah
	db  7Bh, 7Bh, 7Bh, 7Bh,	7Bh, 7Bh, 7Bh, 7Bh, 7Bh, 7Bh, 7Bh, 7Bh,	7Bh, 7Bh, 7Bh, 7Bh
	db  7Ch, 7Ch, 7Ch, 7Ch,	7Ch, 7Ch, 7Ch, 7Ch, 7Ch, 7Ch, 7Ch, 7Ch,	7Ch, 7Ch, 7Ch, 7Ch
	db  7Dh, 7Dh, 7Dh, 7Dh,	7Dh, 7Dh, 7Dh, 7Dh, 7Dh, 7Dh, 7Dh, 7Dh,	7Dh, 7Dh, 7Dh, 7Dh
	db  7Eh, 7Eh, 7Eh, 7Eh,	7Eh, 7Eh, 7Eh, 7Eh, 7Eh, 7Eh, 7Eh, 7Eh,	7Eh, 7Eh, 7Eh, 7Eh
	db  7Fh, 7Fh, 7Fh, 7Fh,	7Fh, 7Fh, 7Fh, 7Fh, 7Fh, 7Fh, 7Fh, 7Fh,	7Fh, 7Fh, 7Fh, 7Fh
	db  80h, 80h, 80h, 80h,	80h, 80h, 80h, 80h, 80h, 80h, 80h, 80h,	80h, 80h, 80h, 80h
	db  81h, 81h, 81h, 81h,	81h, 81h, 81h, 81h, 81h, 81h, 81h, 81h,	81h, 81h, 81h, 81h
	db  82h, 82h, 82h, 82h,	82h, 82h, 82h, 82h, 82h, 82h, 82h, 82h,	82h, 82h, 82h, 82h
	db  83h, 83h, 83h, 83h,	83h, 83h, 83h, 83h, 83h, 83h, 83h, 83h,	83h, 83h, 83h, 83h
	db  84h, 84h, 84h, 84h,	84h, 84h, 84h, 84h, 84h, 84h, 84h, 84h,	84h, 84h, 84h, 84h
	db  85h, 85h, 85h, 85h,	85h, 85h, 85h, 85h, 85h, 85h, 85h, 85h,	85h, 85h, 85h, 85h
	db  86h, 86h, 86h, 86h,	86h, 86h, 86h, 86h, 86h, 86h, 86h, 86h,	86h, 86h, 86h, 86h
	db  87h, 87h, 87h, 87h,	87h, 87h, 87h, 87h, 87h, 87h, 87h, 87h,	87h, 87h, 87h, 87h
