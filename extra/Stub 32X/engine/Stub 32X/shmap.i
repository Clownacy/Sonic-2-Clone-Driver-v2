; ====================================================================
; -----------------------------------------------------------------
; SH2 Address map
; 
; Only for SH2
; -----------------------------------------------------------------

sh.S_STACK	equ	$0603E000
sh.M_STACK	equ	$0603F000

; -----------------------------------------------------------------

sh.CS0		equ	$00000000	; Boot rom & system registers
sh.CS1		equ	$02000000	; Cart rom
sh.CS2		equ	$04000000	; Frame buffer
sh.CS3		equ	$06000000	; SDRAM

sh.TH		equ	$20000000	; Cache thru address start
sh.CS0TH	equ	$20000000	; Boot rom chached thru
sh.CS1TH	equ	$22000000	; Cart rom cahced thru
sh.CS2TH	equ	$24000000	; frame buffer cached thru
sh.CS3TH	equ	$26000000	; SDRAM chaced thru

;---------------------------------------------------------------*
;	SYSREG.
;---------------------------------------------------------------*

sh._sysreg	equ	$00004000+sh.TH	; SYSREG.
sh.adapter	equ	$00		; adapter control register
sh.intmask	equ	$01		; interrupt mask
sh.standby	equ	$02
sh.hcount	equ	$05		; H Interrupt Counter register
sh.dreqctl	equ	$06		; DREQ control
sh.dreqsource	equ	$08		; DREQ source address
sh.dreqdest	equ	$0c		; DREQ destination address
sh.dreqlen	equ	$10		; DREQ length
sh.fifo		equ	$12		; FIFO
sh.vresintclr	equ	$14		; VRES interrupt clear
sh.vintclr	equ	$16		; V interrupt clear
sh.hintclr	equ	$18		; H interrupt clear
sh.cmdintclr	equ	$1a		; CMD interrupt clear
sh.pwmintclr	equ	$1c		; PWM interrupt clear

sh.comm0	equ	$20		; Communication port
sh.comm2	equ	$22		;
sh.comm4	equ	$24		;
sh.comm6	equ	$26		;
sh.comm8	equ	$28		;
sh.comm9	equ	$29		;
sh.comm10	equ	$2a		;
sh.comm12	equ	$2c		;
sh.comm14	equ	$2e		;
sh.timerctl	equ	$30		; PWM Timer Control
sh.pwmctl	equ	$31		; PWM Control
sh.cycle	equ	$32		; PWM Cycle
sh.lchwidth	equ	$34		; PWM L ch Width
sh.rchwidth	equ	$36		; PWM R ch Width
sh.monowidth	equ	$38		; PWM Monaural Width

;---------------------------------------------------------------*
;	VDPREG.
;---------------------------------------------------------------*

sh._vdpreg	equ	$00004100+sh.TH	; VDPREG.
sh.tvmode	equ	$00		; TV mode register
sh.bitmapmd	equ	$01		; Bitmap mode register
sh.shift	equ	$03		; Shift Control register
sh.filllength	equ	$05		; Auto Fill Length register
sh.fillstart	equ	$06		; Auto Fill Start Address register
sh.filldata	equ	$08		; Auto Fill Data register
sh.vdpsts	equ	$0a		; VDP Status register
sh.framectl	equ	$0b		; Frame Buffer Control register

;---------------------------------------------------------------*
sh._palette	equ	$00004200+sh.TH	; Palette RAM
sh._framebuffer	equ	sh.CS2TH	; Frame buffer
sh._overwrite	equ	sh.CS2TH+$20000	; Over Write Image
;---------------------------------------------------------------*

;---------------------------------------------------------------*
;	Bit assign
;---------------------------------------------------------------*

; adapter
sh.CART		equ	%00000001	; 0: CD		/1: Cartridge
sh.ADEN		equ	%00000010	; 0: No MARS	/1: MARS
sh.FM		equ	%10000000	; 0: MD		/1: SH

; framectl
sh.FS		equ	%00000001	; 0: DRAM 0	/1: DRAM 1
sh.FEN		equ	%00000010	; 0: アクセス可	/1: アクセス不可

; vdpsts
sh.VBLK		equ	%10000000
sh.HBLK		equ	%01000000
sh.PEN		equ	%00100000

;-------------------------------------------------------;

sh._DMASOURCE0	.equ	$ffffff80	; DMA source address 0
sh._DMADEST0	.equ	$ffffff84	; DMA destination address 0
sh._DMACOUNT0	.equ	$ffffff88	; DMA transfer count 0
sh._DMACHANNEL0	.equ	$ffffff8c	; DMA channel control 0
sh._DMASOURCE1	.equ	$ffffff90	; DMA source address 1
sh._DMADEST1	.equ	$ffffff94	; DMA destination address 1
sh._DMACOUNT1	.equ	$ffffff98	; DMA transfer count 1
sh._DMACHANNEL1	.equ	$ffffff9c	; DMA channel control 1
sh._DMAVECTORN0	.equ	$ffffffa0	; DMA vector number N0
sh._DMAVECTORE0	.equ	$ffffffa4	; DMA vector number E0
sh._DMAVECTORN1	.equ	$ffffffa8	; DMA vector number N1
sh._DMAVECTORE1	.equ	$ffffffac	; DMA vector number E1
sh._DMAOPERATION	.equ	$ffffffb0	; DMA operation
sh._DMAREQACK0	.equ	$ffffffb4	; DMA request/ack select control 0
sh._DMAREQACK1	.equ	$ffffffb8	; DMA request/ack select control 1
sh._SERIAL	.equ	$fffffe00	; Serial Control
sh._FRT		.equ	$fffffe10	; Free run timer
sh._TIER	.equ	$00		; Timer interrup enable register
sh._TCSR	.equ	$01		; Timer control & status register
sh._FRC_H	.equ	$02		; free running counter High
sh._FRC_L	.equ	$03		; free running counter Low
sh._OCR_H	.equ	$04		; Output compare register High
sh._OCR_L	.equ	$05		; Output compare register Low
sh._TCR		.equ	$06		; Timer control register
sh._TOCR	.equ	$07		; timer output compare control register

;-------------------------------------------------------;
sh.VIRQ_ON	.equ	$08		;IRQ masks for IRQ mask register
sh.HIRQ_ON	.equ	$04
sh.CMDIRQ_ON	.equ	$02
sh.PWMIRQ_ON	.equ	$01
;-------------------------------------------------------;



