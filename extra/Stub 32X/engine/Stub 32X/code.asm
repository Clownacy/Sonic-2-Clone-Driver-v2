; ====================================================================
; -----------------------------------------------------------------
; SH2
; -----------------------------------------------------------------

		CPU SH7600
		listing purecode

		include	"Sonic-2-Clone-Driver-v2/engine/Stub 32X/shmap.i"
		phase sh.CS3
		
; -----------------------------------------------------------------
; Master CPU
; -----------------------------------------------------------------

SH2_Master
		dc.l SH2_Entry			; Cold Start PC
		dc.l sh.M_STACK			; Cold Start SP
		dc.l SH2_Entry			; Manual Reset PC
		dc.l sh.M_STACK			; Manual Reset SP

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
		mov.l	#sh._sysreg,r14
		ldc	r14,gbr

		mov.w	r0,@(sh.vintclr,gbr)
		mov.w	r0,@(sh.vintclr,gbr)
		mov.w	r0,@(sh.hintclr,gbr)	;clear IRQ ACK regs
		mov.w	r0,@(sh.hintclr,gbr)
		mov.w	r0,@(sh.cmdintclr,gbr)
		mov.w	r0,@(sh.cmdintclr,gbr)
		mov.w	r0,@(sh.pwmintclr,gbr)
		mov.w	r0,@(sh.pwmintclr,gbr)

		mov.l	#sh._FRT,r1		; Set Free Run Timer
		mov	#$00,r0
		mov.b	r0,@(sh._TIER,r1)		;
		mov	#$e2,r0
		mov.b	r0,@(sh._TOCR,r1)		;
		mov	#$00,r0
		mov.b	r0,@(sh._OCR_H,r1)		;
		mov	#$01,r0
		mov.b	r0,@(sh._OCR_L,r1)		;
		mov	#0,r0
		mov.b	r0,@(sh._TCR,r1)		;
		mov	#1,r0
		mov.b	r0,@(sh._TCSR,r1)		;
		mov	#$00,r0
		mov.b	r0,@(sh._FRC_L,r1)		;
		mov.b	r0,@(sh._FRC_H,r1)		;

		mov	#$f2,r0			; reset setup
		mov.b	r0,@(sh._TOCR,r1)		;
		mov	#$00,r0
		mov.b	r0,@(sh._OCR_H,r1)		;
		mov	#$01,r0
		mov.b	r0,@(sh._OCR_L,r1)		;
		mov	#$e2,r0
		mov.b	r0,@(sh._TOCR,r1)		;

.wait_md:
		mov.l	@(sh.comm0,gbr),r0		; wait fo the genesis to finish booting
		cmp/eq	#0,r0
		bf	.wait_md
		nop

		mov.l	#"SLAV",r1
.wait_slave:
		mov.l	@(sh.comm8,gbr),r0		; wait for the slave to finish booting
		cmp/eq	r1,r0
		bf	.wait_slave
		nop

; ====================================================================
; ---------------------------------------------------------------
; Hotstart
; ---------------------------------------------------------------

m_hotstart:
		mov.l	#sh._sysreg,r14
		ldc	r14,gbr

 		mov	#sh.FM,r0
 		mov.b	r0,@(sh.adapter,gbr)

		mov.l	#sh._sysreg,r14
		ldc	r14,gbr

		mov.l	#sh.VIRQ_ON+sh.CMDIRQ_ON+sh.HIRQ_ON,r0
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
		mov.l	#sh._sysreg,r0
		ldc	r0,gbr

		mov.w	r0,@(sh.vresintclr,gbr)

		mov.l	#sh._FRT,r1		; System Reset
		mov.b	@(sh._TOCR,r1),r0		;
		or	#$01,r0		;
		mov.b	r0,@(sh._TOCR,r1)		;
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

	mov.l	#sh._sysreg,r0
	ldc	r0,gbr	;GBR = addr of sys regs

	mov.l	#$f0,r0
	ldc	r0,sr	;mask off all IRQS

	mov.l	#sh._FRT,r1
	mov.b	@(sh._TOCR,r1),r0
	xor	#$02,r0	;toggle FRT bit as required
	mov.b	r0,@(sh._TOCR,r1)


	mov.w	r0,@(sh.vintclr,gbr)	; V interrupt clear
	nop
	nop
	nop		;delay 2 cycles as required
	nop

	mov.l	#sh.TH+.vcounter,r1
	mov.l	@r1,r0
	add	#1,r0	;do some work
	mov.l	r0,@r1

	ldc.l @r15+,gbr
	mov.l	@r15+,r2	;restore regs

	rts		;return to unified IRQ handler
	nop		;RTS!!

	align	4

.vcounter		dc.l $00000000

	ltorg

;---------------------------------------------------------------*
;	H Interrupt
;---------------------------------------------------------------*

m_h_irq:

	stc.l	gbr,@-r15	;save regs

	mov.l	#sh._sysreg,r0
	ldc	r0,gbr	;GBR = addr of sys regs

	mov.l	#$f0,r0
	ldc	r0,sr	;mask off all IRQS

	mov.l	#sh._FRT,r1
	mov.b	@(sh._TOCR,r1),r0
	xor	#$02,r0	;toggle FRT bit as required
	mov.b	r0,@(sh._TOCR,r1)


	mov.w	r0,@(sh.hintclr,gbr)	; H interrupt clear

	nop
	nop
	nop		;delay 2 cycles as required
	nop

	mov.l	#sh.TH+.hcounter,r1
	mov.l	@r1,r0
	add	#1,r0	;do some work
	mov.l	r0,@r1

	ldc.l @r15+,gbr	;restore regs

	rts		;return to unified IRQ handler
	nop		;RTS!!

	align	4
.hcounter		dc.l $00000000

	ltorg

;---------------------------------------------------------------*
;	CMD Interrupt
;---------------------------------------------------------------*

m_cmd_irq:
	mov.l	r2,@-r15
	stc.l	gbr,@-r15	;save regs

	mov.l	#sh._sysreg,r0
	ldc	r0,gbr	;GBR = addr of sys regs

	mov.l	#$f0,r0
	ldc	r0,sr	;mask off all IRQS

	mov.l	#sh._FRT,r1
	mov.b	@(sh._TOCR,r1),r0
	xor	#$02,r0	;toggle FRT bit as required
	mov.b	r0,@(sh._TOCR,r1)


	mov.w	r0,@(sh.cmdintclr,gbr)	; CMD interrupt clear

	nop
	nop
	nop		;delay 2 cycles as required
	nop

	mov.l	#sh.TH+.cmdcounter,r1
	mov.l	@r1,r0
	add	#1,r0	;do some work
	mov.l	r0,@r1

	ldc.l @r15+,gbr
	mov.l	@r15+,r2	;restore regs

	rts		;return to unified IRQ handler
	nop		;RTS!!

	align	4
.cmdcounter		dc.l $00000000

	ltorg


;---------------------------------------------------------------*
;	PWM Interrupt
;---------------------------------------------------------------*

m_pwm_irq:
	stc.l	gbr,@-r15	;save regs

	mov.l	#sh._sysreg,r0
	ldc	r0,gbr	;GBR = addr of sys regs

	mov.l	#$f0,r0
	ldc	r0,sr	;mask off all IRQS

	mov.l	#sh._FRT,r1
	mov.b	@(sh._TOCR,r1),r0
	xor	#$02,r0	;toggle FRT bit as required
	mov.b	r0,@(sh._TOCR,r1)

	mov.w	r0,@(sh.pwmintclr,gbr)	; PWM interrupt clear

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
	align	4
; ---------------------------------------------------------------
; Slave CPU
; ---------------------------------------------------------------

SH2_Slave:
		dc.l s_EntryPoint		; Cold Start PC
		dc.l sh.S_STACK			; Cold Start SP
		dc.l s_EntryPoint		; Manual Reset PC
		dc.l sh.S_STACK			; Manual Reset SP

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
		mov.l	#sh._sysreg,r14
		ldc	r14,gbr

		mov.l	#sh._FRT,r1		; Set Free Run Timer
		mov	#$00,r0
		mov.b	r0,@(sh._TIER,r1)		;
		mov	#$e2,r0
		mov.b	r0,@(sh._TOCR,r1)		;
		mov	#$00,r0
		mov.b	r0,@(sh._OCR_H,r1)		;
		mov	#$01,r0
		mov.b	r0,@(sh._OCR_L,r1)		;
		mov	#0,r0
		mov.b	r0,@(sh._TCR,r1)		;
		mov	#1,r0
		mov.b	r0,@(sh._TCSR,r1)		;
		mov	#$00,r0
		mov.b	r0,@(sh._FRC_L,r1)		;
		mov.b	r0,@(sh._FRC_H,r1)		;
.wait_md:
		mov.l	@(sh.comm0,gbr),r0
		cmp/eq	#0,r0
		bf	.wait_md
	
		mov.l	#"SLAV",r0
		mov.l	r0,@(sh.comm8,gbr)
	
		mov.l	#sh._vdpreg,r14

; ====================================================================
; ---------------------------------------------------------------
; Hotstart
; ---------------------------------------------------------------

s_hotstart:
		mov.l	#sh.S_STACK,r15

		mov.l	#sh._sysreg,r14
		ldc	r14,gbr
	
		mov.l	#sh.PWMIRQ_ON,r0
		mov.b	r0,@(1,gbr)		;enable IRQS

		mov.l	#$20,r0
		ldc	r0,sr

		mov.w	r0,@(sh.pwmintclr,gbr)
		mov.w	r0,@(sh.pwmintclr,gbr)
		mov.w	r0,@(sh.vintclr,gbr)
		mov.w	r0,@(sh.vintclr,gbr)
		mov.w	r0,@(sh.hintclr,gbr)	;clear IRQ ACK regs
		mov.w	r0,@(sh.hintclr,gbr)
		mov.w	r0,@(sh.cmdintclr,gbr)
		mov.w	r0,@(sh.cmdintclr,gbr)

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
		mov.b	r0,@(sh._TOCR,r2)

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
		mov.l	#sh._sysreg,r0
		ldc	r0,gbr

		mov.w	r0,@(sh.vresintclr,gbr)	; V interrupt clear

		mov.b	@(sh.dreqctl,gbr),r0
		tst	#1,r0
		bf	.vresloop

		mov.l	#sh.S_STACK-8,r15		; reset the stack
		mov.l	#s_hotstart,r0
		mov	r0,@r15
		mov.w	#$f0,r0
		mov	r0,@(4,r15)

		mov.l	#sh._DMAOPERATION,r1
		mov	#0,r0
		mov.l	r0,@r1

		mov.l	#sh._DMACHANNEL0,r1
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

		mov.l	#sh._sysreg,r0
		ldc	r0,gbr	;GBR = addr of sys regs

		mov.w	r0,@(sh.vintclr,gbr)	; V interrupt clear
		mov.l	#sh._FRT,r1
		mov.l	#$02,r0		;toggle FRT bit for future IRQs
		mov.b	r0,@(sh._TOCR,r1)	;as required
		mov.w	@(sh.vintclr,gbr),r0	; V interrupt clear
		mov.b	@(sh._TOCR,r1),r0	;as required

		mov.l	#sh.TH+.vcounter,r1
		mov.l	@r1,r0
		add	#1,r0	;do some work
		mov.l	r0,@r1

		ldc.l	@r15+,gbr
		mov.l	@r15+,r2	;restore regs

		rts		;return to universal handler
		nop		;RTS!

		.align	4
.vcounter	dc.l	$00000000
		ltorg

;---------------------------------------------------------------*
;	H Interrupt
;---------------------------------------------------------------*

s_h_irq:
		stc.l	gbr,@-r15	;save regs

		mov.l	#sh._sysreg,r0
		ldc	r0,gbr	;GBR = addr of sys regs

		mov.w	r0,@(sh.hintclr,gbr)	; V interrupt clear
		mov.l	#sh._FRT,r1
		mov.l	#$02,r0	;toggle FRT bit for future IRQs
		mov.b	r0,@(sh._TOCR,r1)	;as required
		mov.w	@(sh.hintclr,gbr),r0	; V interrupt clear
		mov.b	@(sh._TOCR,r1),r0	;as required


		mov.l	#sh.TH+.hcounter,r1
		mov.l	@r1,r0
		add	#1,r0	;do some work
		mov.l	r0,@r1

		ldc.l	@r15+,gbr	;restore regs

		rts		;return to universal handler
		nop                                    ;RTS!

		.align	4
.hcounter	dc.l	$00000000

		ltorg

;---------------------------------------------------------------*
;	CMD Interrupt
;---------------------------------------------------------------*

s_cmd_irq:
		mov.l	r2,@-r15
		stc.l	gbr,@-r15	;save regs

		mov.l	#sh._sysreg,r0
		ldc	r0,gbr	;GBR = addr of sys regs

		mov.w	r0,@(sh.cmdintclr,gbr)	; V interrupt clear
		mov.l	#sh._FRT,r1
		mov.l	#$02,r0	;toggle FRT bit for future IRQs
		mov.b	r0,@(sh._TOCR,r1)	;as required
		mov.w	@(sh.cmdintclr,gbr),r0	; V interrupt clear
		mov.b	@(sh._TOCR,r1),r0	;as required

		mov.l	#sh.TH+.cmdcounter,r1
		mov.l	@r1,r0
		add	#1,r0	;do some work
		mov.l	r0,@r1

		ldc.l	@r15+,gbr
		mov.l	@r15+,r2	;restore regs

		rts		;return to universal handler
		nop		;RTS!

		.align	4
.cmdcounter	dc.l	$00000000
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
		mov.l	#$02000000|PWM_Driver, r1	; Get address of PWM driver
		mov.l	#$C0000000, r2	; Destination in cache of PWM driver
		mov.w	#(PWM_Driver_End-PWM_Driver)/4, r3	; Length of PWM driver

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
		
; ====================================================================
; ---------------------------------------------------------------
; RAM
; ---------------------------------------------------------------

		include	"Sonic-2-Clone-Driver-v2/engine/Stub 32X/ram.asm"

	dephase
