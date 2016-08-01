; ====================================================================
; -----------------------------------------------------------------
; SH2
; -----------------------------------------------------------------

		CPU SH7600
		padding off
		supmode on
		listing purecode
		page 0

		include	"shmap.i"
		include	"shmap68k.i"
		org CS3
		
; -----------------------------------------------------------------
; Master CPU
; -----------------------------------------------------------------

		phase MasterStart
SH2_Master
		dc.l SH2_Entry			; Cold Start PC
		dc.l M_STACK			; Cold Start SP
		dc.l SH2_Entry			; Manual Reset PC
		dc.l M_STACK			; Manual Reset SP

		dc.l error0			; Illegal instruction
		dc.l $00000000			; reserved
		dc.l error0			; Invalid slot instruction
		dc.l $20100400			; reserved
		dc.l $20100420			; reserved
		dc.l error0			; CPU address error
		dc.l error0			; DMA address error
		dc.l error0			; NMI vector
		dc.l error0			; User break vector

		rept 19
		dc.l 0				; reserved
		endm

		rept 32
		dc.l error0			; Trap vectors
		endm

 		dc.l m_main_irq			; Level 1 IRQ
		dc.l m_main_irq			; Level 2 & 3 IRQ's
		dc.l m_main_irq			; Level 4 & 5 IRQ's
		dc.l m_main_irq			; PWM interupt
		dc.l m_main_irq			; Command interupt
		dc.l m_main_irq			; H Blank interupt
		dc.l m_main_irq			; V Blank interupt
		dc.l m_main_irq			; Reset Button

; ====================================================================
; ---------------------------------------------------------------
; Entry point
; ---------------------------------------------------------------

SH2_Entry:
		mov.l	#_sysreg,r14
		ldc	r14,gbr

		mov.w	r0,@(vintclr,gbr)
		mov.w	r0,@(vintclr,gbr)
		mov.w	r0,@(hintclr,gbr)	;clear IRQ ACK regs
		mov.w	r0,@(hintclr,gbr)
		mov.w	r0,@(cmdintclr,gbr)
		mov.w	r0,@(cmdintclr,gbr)
		mov.w	r0,@(pwmintclr,gbr)
		mov.w	r0,@(pwmintclr,gbr)

		mov.l	#_FRT,r1		; Set Free Run Timer
		mov	#$00,r0
		mov.b	r0,@(_TIER,r1)		;
		mov	#$e2,r0
		mov.b	r0,@(_TOCR,r1)		;
		mov	#$00,r0
		mov.b	r0,@(_OCR_H,r1)		;
		mov	#$01,r0
		mov.b	r0,@(_OCR_L,r1)		;
		mov	#0,r0
		mov.b	r0,@(_TCR,r1)		;
		mov	#1,r0
		mov.b	r0,@(_TCSR,r1)		;
		mov	#$00,r0
		mov.b	r0,@(_FRC_L,r1)		;
		mov.b	r0,@(_FRC_H,r1)		;

		mov	#$f2,r0			; reset setup
		mov.b	r0,@(_TOCR,r1)		;
		mov	#$00,r0
		mov.b	r0,@(_OCR_H,r1)		;
		mov	#$01,r0
		mov.b	r0,@(_OCR_L,r1)		;
		mov	#$e2,r0
		mov.b	r0,@(_TOCR,r1)		;

.wait_md:
		mov.l	@(comm0,gbr),r0		; wait fo the genesis to finish booting
		cmp/eq	#0,r0
		bf	.wait_md
		nop

		mov.l	#"SLAV",r1
.wait_slave:
		mov.l	@(comm8,gbr),r0		; wait for the slave to finish booting
		cmp/eq	r1,r0
		bf	.wait_slave
		nop

; ====================================================================
; ---------------------------------------------------------------
; Hotstart
; ---------------------------------------------------------------

m_hotstart:
		mov.l	#_sysreg,r14
		ldc	r14,gbr

 		mov	#FM,r0
 		mov.b	r0,@(adapter,gbr)

		mov.l	#_sysreg,r14
		ldc	r14,gbr

		mov.l	#VIRQ_ON+CMDIRQ_ON+HIRQ_ON,r0
 		mov.b	r0,@(1,gbr)

		mov.l	#$20,r0
		ldc	r0,sr

; =================================================================

 		mov.l	#Master_GoToHere,r0
		jmp	@r0
 		nop
		ltorg

;-------------------------------------------------------;
;UNIFIED IRQ HANDLER
;-------------------------------------------------------;

m_main_irq
		mov.l	r0,@-r15
		mov.l	r1,@-r15
		sts.l	pr,@-r15		;save registers

		stc	sr,r0			;SR holds IRQ level
		shlr2	r0
		and	#$3C,r0
		mov.l	#m_inttable,r1
		add	r1,r0			;create index into IRQ table
		mov.l	@r0,r1			;fetch address
		jsr	@r1			;call IRQ service routine
		nop

		lds.l	@r15+,pr
		mov.l	@r15+,r1		;get registers back
		mov.l	@r15+,r0
		rte				;return from exception
		nop
		ltorg

;-------------------------------------------------------;
;IRQ TABLE
;-------------------------------------------------------;
	align	4
m_inttable
		dc.l m_invalid_irq
		dc.l m_invalid_irq
		dc.l m_invalid_irq
		dc.l m_invalid_irq
		dc.l m_invalid_irq
		dc.l m_invalid_irq
		dc.l m_pwm_irq
		dc.l m_pwm_irq
		dc.l m_cmd_irq
		dc.l m_cmd_irq
		dc.l m_h_irq
		dc.l m_h_irq
		dc.l m_v_irq
		dc.l m_v_irq
		dc.l m_vres_irq
		dc.l m_vres_irq

;-------------------------------------------------------;
;INVALID IRQ
;-------------------------------------------------------;
m_invalid_irq
		rts		;return back to mainline
		nop

;---------------------------------------------------------------*
;	VRES Interrupt
;---------------------------------------------------------------*

m_vres_irq:
		mov.l	#_sysreg,r0
		ldc	r0,gbr

		mov.w	r0,@(vresintclr,gbr)

		mov.l	#_FRT,r1		; System Reset
		mov.b	@(_TOCR,r1),r0		;
		or	#$01,r0		;
		mov.b	r0,@(_TOCR,r1)		;
.vresloop:
		bra	.vresloop
		nop

		ltorg

;---------------------------------------------------------------*
;	V Interrupt
;---------------------------------------------------------------*

m_v_irq:
	mov.l	r2,@-r15
	stc.l	gbr,@-r15	;save regs

	mov.l	#_sysreg,r0
	ldc	r0,gbr	;GBR = addr of sys regs

	mov.l	#$f0,r0
	ldc	r0,sr	;mask off all IRQS

	mov.l	#_FRT,r1
	mov.b	@(_TOCR,r1),r0
	xor	#$02,r0	;toggle FRT bit as required
	mov.b	r0,@(_TOCR,r1)


	mov.w	r0,@(vintclr,gbr)	; V interrupt clear
	nop
	nop
	nop		;delay 2 cycles as required
	nop

	mov.l	#TH+m_vcounter,r1
	mov.l	@r1,r0
	add	#1,r0	;do some work
	mov.l	r0,@r1

	ldc.l @r15+,gbr
	mov.l	@r15+,r2	;restore regs

	rts		;return to unified IRQ handler
	nop		;RTS!!

	align	4

m_vcounter		dc.l $00000000

	ltorg

;---------------------------------------------------------------*
;	H Interrupt
;---------------------------------------------------------------*

m_h_irq:

	stc.l	gbr,@-r15	;save regs

	mov.l	#_sysreg,r0
	ldc	r0,gbr	;GBR = addr of sys regs

	mov.l	#$f0,r0
	ldc	r0,sr	;mask off all IRQS

	mov.l	#_FRT,r1
	mov.b	@(_TOCR,r1),r0
	xor	#$02,r0	;toggle FRT bit as required
	mov.b	r0,@(_TOCR,r1)


	mov.w	r0,@(hintclr,gbr)	; H interrupt clear

	nop
	nop
	nop		;delay 2 cycles as required
	nop

	mov.l	#TH+m_hcounter,r1
	mov.l	@r1,r0
	add	#1,r0	;do some work
	mov.l	r0,@r1

	ldc.l @r15+,gbr	;restore regs

	rts		;return to unified IRQ handler
	nop		;RTS!!

	align	4
m_hcounter		dc.l $00000000

	ltorg

;---------------------------------------------------------------*
;	CMD Interrupt
;---------------------------------------------------------------*

m_cmd_irq:
	mov.l	r2,@-r15
	stc.l	gbr,@-r15	;save regs

	mov.l	#_sysreg,r0
	ldc	r0,gbr	;GBR = addr of sys regs

	mov.l	#$f0,r0
	ldc	r0,sr	;mask off all IRQS

	mov.l	#_FRT,r1
	mov.b	@(_TOCR,r1),r0
	xor	#$02,r0	;toggle FRT bit as required
	mov.b	r0,@(_TOCR,r1)


	mov.w	r0,@(cmdintclr,gbr)	; CMD interrupt clear

	nop
	nop
	nop		;delay 2 cycles as required
	nop

	mov.l	#TH+m_cmdcounter,r1
	mov.l	@r1,r0
	add	#1,r0	;do some work
	mov.l	r0,@r1

	ldc.l @r15+,gbr
	mov.l	@r15+,r2	;restore regs

	rts		;return to unified IRQ handler
	nop		;RTS!!

	align	4
m_cmdcounter		dc.l $00000000

	ltorg


;---------------------------------------------------------------*
;	PWM Interrupt
;---------------------------------------------------------------*

m_pwm_irq:
	stc.l	gbr,@-r15	;save regs

	mov.l	#_sysreg,r0
	ldc	r0,gbr	;GBR = addr of sys regs

	mov.l	#$f0,r0
	ldc	r0,sr	;mask off all IRQS

	mov.l	#_FRT,r1
	mov.b	@(_TOCR,r1),r0
	xor	#$02,r0	;toggle FRT bit as required
	mov.b	r0,@(_TOCR,r1)

	mov.w	r0,@(pwmintclr,gbr)	; PWM interrupt clear

	nop
	nop		;delay 2 cycles as required
	nop
	nop

	ldc.l @r15+,gbr	;restore regs

	rts		;return to unified IRQ handler
	nop		;RTS!!

	ltorg

;---------------------------------------------------------------*
;	ERROR
;---------------------------------------------------------------*

error0:
	bra	error0	;bad IRQ HALT
	nop

	ltorg

; =================================================================
; -------------------------------------------
; Subs
; -------------------------------------------

		
; =====================================================================
; -------------------------------------------
; Main
; -------------------------------------------

Master_GoToHere:
		nop
		nop
.loop:
		nop
		nop
		bra	.loop
		nop
	
; ====================================================================
		
		dephase

; ====================================================================
; ---------------------------------------------------------------
; Slave CPU
; ---------------------------------------------------------------

		rept (SlaveStart)-(*)
		;align (SlaveStart-CS3)
		dc.b	0
		endm
		phase SlaveStart
SH2_Slave:
		dc.l s_EntryPoint		; Cold Start PC
		dc.l S_STACK			; Cold Start SP
		dc.l s_EntryPoint		; Manual Reset PC
		dc.l S_STACK			; Manual Reset SP

		dc.l error0			; Illegal instruction
		dc.l $00000000			; reserved
		dc.l error0			; Invalid slot instruction
		dc.l $20100400			; reserved
		dc.l $20100420			; reserved
		dc.l error0			; CPU address error
		dc.l error0			; DMA address error
		dc.l error0			; NMI vector
		dc.l error0			; User break vector

		rept 19
		dc.l 0				; reserved
		endm

		rept 32
		dc.l error0			; Trap vectors
		endm

		dc.l s_main_irq			; Level 1 IRQ
		dc.l s_main_irq			; Level 2 & 3 IRQ's
		dc.l s_main_irq			; Level 4 & 5 IRQ's
		dc.l s_main_irq			; PWM interupt
		dc.l s_main_irq			; Command interupt
		dc.l s_main_irq			; H Blank interupt
		dc.l s_main_irq			; V Blank interupt
		dc.l s_main_irq			; Reset Button

; ====================================================================
; ---------------------------------------------------------------
; Entry point
; ---------------------------------------------------------------

s_EntryPoint:
		mov.l	#_sysreg,r14
		ldc	r14,gbr

		mov.l	#_FRT,r1		; Set Free Run Timer
		mov	#$00,r0
		mov.b	r0,@(_TIER,r1)		;
		mov	#$e2,r0
		mov.b	r0,@(_TOCR,r1)		;
		mov	#$00,r0
		mov.b	r0,@(_OCR_H,r1)		;
		mov	#$01,r0
		mov.b	r0,@(_OCR_L,r1)		;
		mov	#0,r0
		mov.b	r0,@(_TCR,r1)		;
		mov	#1,r0
		mov.b	r0,@(_TCSR,r1)		;
		mov	#$00,r0
		mov.b	r0,@(_FRC_L,r1)		;
		mov.b	r0,@(_FRC_H,r1)		;
.wait_md:
		mov.l	@(comm0,gbr),r0
		cmp/eq	#0,r0
		bf	.wait_md
	
		mov.l	#"SLAV",r0
		mov.l	r0,@(comm8,gbr)
	
		mov.l	#_vdpreg,r14

; ====================================================================
; ---------------------------------------------------------------
; Hotstart
; ---------------------------------------------------------------

s_hotstart:
		mov.l	#S_STACK,r15

		mov.l	#_sysreg,r14
		ldc	r14,gbr
	
		mov.l	#PWMIRQ_ON,r0
		mov.b	r0,@(1,gbr)		;enable IRQS

		mov.l	#$20,r0
		ldc	r0,sr

		mov.w	r0,@(pwmintclr,gbr)
		mov.w	r0,@(pwmintclr,gbr)
		mov.w	r0,@(vintclr,gbr)
		mov.w	r0,@(vintclr,gbr)
		mov.w	r0,@(hintclr,gbr)	;clear IRQ ACK regs
		mov.w	r0,@(hintclr,gbr)
		mov.w	r0,@(cmdintclr,gbr)
		mov.w	r0,@(cmdintclr,gbr)

; =================================================================
 		
 		mov.l	#Slave_GoToHere,r0
		jmp	@r0
 		nop
		ltorg
		
; =====================================================================
;-------------------------------------------------------;
;UNIFIED IRQ HANDLER
;-------------------------------------------------------;

s_main_irq:
		mov.l	r0,@-r15
		mov.l	r1,@-r15
		mov.l	r2,@-r15

		stc	sr,r1
		mov.l	#$F0,r2
		ldc	r2,sr
		mov.l	#$FFFFFE10,r2
		xor	r0,r0
		mov.b	r0,@(_TOCR,r2)

		sts.l	pr,@-r15	;save registers
		mov.l	r1,r0
		shlr2	r0
		and	#$3C,r0
		mov.l	#s_inttable,r1
		mov.l	@(r0,r1),r0
		jsr	@r0		;call IRQ service routine
		nop
		lds.l	@r15+,pr

		mov.l	@r15+,r2	;get registers back
		mov.l	@r15+,r1	;get registers back
		mov.l	@r15+,r0
	
		rte			;return from exception
		nop
		ltorg

;-------------------------------------------------------;
;IRQ TABLE
;-------------------------------------------------------;
		.align	4
s_inttable
		dc.l s_invalid_irq
		dc.l s_invalid_irq
		dc.l s_invalid_irq
		dc.l s_invalid_irq
		dc.l s_invalid_irq
		dc.l s_invalid_irq
		dc.l $C0000004	; PWM driver's update routine
		dc.l $C0000004	; PWM driver's update routine
		dc.l s_cmd_irq
		dc.l s_cmd_irq
		dc.l s_h_irq
		dc.l s_h_irq
		dc.l s_v_irq
		dc.l s_v_irq
		dc.l s_vres_irq
		dc.l s_vres_irq

;-------------------------------------------------------;
;INVALID IRQ
;-------------------------------------------------------;

s_invalid_irq
		rts
		nop

;---------------------------------------------------------------*
;	VRES Interrupt
;---------------------------------------------------------------*

s_vres_irq:
		mov.l	#_sysreg,r0
		ldc	r0,gbr

		mov.w	r0,@(vresintclr,gbr)	; V interrupt clear

		mov.b	@(dreqctl,gbr),r0
		tst	#1,r0
		bf	.vresloop

		mov.l	#S_STACK-8,r15		; reset the stack
		mov.l	#s_hotstart,r0
		mov	r0,@r15
		mov.w	#$f0,r0
		mov	r0,@(4,r15)

		mov.l	#_DMAOPERATION,r1
		mov	#0,r0
		mov.l	r0,@r1

		mov.l	#_DMACHANNEL0,r1
		mov	#0,r0
		mov.l	r0,@r1
		mov.l	#%0100010011100000,r1
		mov.l	r0,@r1

		rte
		nop

.vresloop:
		bra	.vresloop
		nop
		ltorg

;---------------------------------------------------------------*
;	V Interrupt
;---------------------------------------------------------------*

s_v_irq:
		mov.l	r2,@-r15
		stc.l	gbr,@-r15	;save regs

		mov.l	#_sysreg,r0
		ldc	r0,gbr	;GBR = addr of sys regs

		mov.w	r0,@(vintclr,gbr)	; V interrupt clear
		mov.l	#_FRT,r1
		mov.l	#$02,r0		;toggle FRT bit for future IRQs
		mov.b	r0,@(_TOCR,r1)	;as required
		mov.w	@(vintclr,gbr),r0	; V interrupt clear
		mov.b	@(_TOCR,r1),r0	;as required

		mov.l	#TH+s_vcounter,r1
		mov.l	@r1,r0
		add	#1,r0	;do some work
		mov.l	r0,@r1

		ldc.l	@r15+,gbr
		mov.l	@r15+,r2	;restore regs

		rts		;return to universal handler
		nop		;RTS!

		.align	4
s_vcounter	dc.l	$00000000
		ltorg

;---------------------------------------------------------------*
;	H Interrupt
;---------------------------------------------------------------*

s_h_irq:
		stc.l	gbr,@-r15	;save regs

		mov.l	#_sysreg,r0
		ldc	r0,gbr	;GBR = addr of sys regs

		mov.w	r0,@(hintclr,gbr)	; V interrupt clear
		mov.l	#_FRT,r1
		mov.l	#$02,r0	;toggle FRT bit for future IRQs
		mov.b	r0,@(_TOCR,r1)	;as required
		mov.w	@(hintclr,gbr),r0	; V interrupt clear
		mov.b	@(_TOCR,r1),r0	;as required


		mov.l	#TH+s_hcounter,r1
		mov.l	@r1,r0
		add	#1,r0	;do some work
		mov.l	r0,@r1

		ldc.l	@r15+,gbr	;restore regs

		rts		;return to universal handler
		nop                                    ;RTS!

		.align	4
s_hcounter	dc.l	$00000000

		ltorg

;---------------------------------------------------------------*
;	CMD Interrupt
;---------------------------------------------------------------*

s_cmd_irq:
		mov.l	r2,@-r15
		stc.l	gbr,@-r15	;save regs

		mov.l	#_sysreg,r0
		ldc	r0,gbr	;GBR = addr of sys regs

		mov.w	r0,@(cmdintclr,gbr)	; V interrupt clear
		mov.l	#_FRT,r1
		mov.l	#$02,r0	;toggle FRT bit for future IRQs
		mov.b	r0,@(_TOCR,r1)	;as required
		mov.w	@(cmdintclr,gbr),r0	; V interrupt clear
		mov.b	@(_TOCR,r1),r0	;as required

		mov.l	#TH+s_cmdcounter,r1
		mov.l	@r1,r0
		add	#1,r0	;do some work
		mov.l	r0,@r1

		ldc.l	@r15+,gbr
		mov.l	@r15+,r2	;restore regs

		rts		;return to universal handler
		nop		;RTS!

		.align	4
s_cmdcounter	dc.l	$00000000
		ltorg

; =================================================================
; -------------------------------------------
; Subs
; -------------------------------------------

		
; =====================================================================
; -------------------------------------------
; Main
; -------------------------------------------

Slave_GoToHere:
		; Load PWM driver
		mov.l	#Slave_PWMDriverAddress, r1	; Get pointer to address of PWM driver
		mov.l	@r1, r1		; Get address of PWM driver
		mov.l	#$C0000000, r2	; Destination in cache of PWM driver
		mov.w	#$400/4, r3	; Length of PWM driver

.writeloop:
		mov.l	@r1+, r0
		dt	r3
		mov.l	r0, @r2
		bf/s	.writeloop
		add	#4, r2
		mov.l	#$C0000000, r14
		jsr	@r14		; Jump into PWM driver's init routine
		nop
.loop:
		nop
		nop
		bra	.loop
		nop

	ltorg

		; This label MUST come at the end of the binary
Slave_PWMDriverAddress:
		; This line is assembled seperately, and can be found after
		; where the SH2 binary is binclude'd.
		; This is just to allow the 68k assembler to fix the pointer for us.
		;dc.l	$02XXXXXX
		ds.l	1

; ====================================================================

		dephase
		
; ====================================================================
; ---------------------------------------------------------------
; RAM
; ---------------------------------------------------------------

		include	"ram.asm"
