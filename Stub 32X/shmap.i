; ====================================================================
; -----------------------------------------------------------------
; SH2 Address map
; 
; Only for SH2
; -----------------------------------------------------------------

S_STACK		equ	$0603E000
M_STACK		equ	$0603F000

; -----------------------------------------------------------------

CS0		equ	$00000000	; Boot rom & system registers
CS1		equ	$02000000	; Cart rom
CS2		equ	$04000000	; Frame buffer
CS3		equ	$06000000	; SDRAM

TH		equ	$20000000	; Cache thru address start
CS0TH		equ	$20000000	; Boot rom chached thru
CS1TH		equ	$22000000	; Cart rom cahced thru
CS2TH		equ	$24000000	; frame buffer cached thru
CS3TH		equ	$26000000	; SDRAM chaced thru

;---------------------------------------------------------------*
;	SYSREG.
;---------------------------------------------------------------*

_sysreg		equ	$00004000+TH	; SYSREG.
adapter		equ	$00		; adapter control register
intmask		equ	$01		; interrupt mask
standby		equ	$02
hcount		equ	$05		; H Interrupt Counter register
dreqctl		equ	$06		; DREQ control
dreqsource	equ	$08		; DREQ source address
dreqdest	equ	$0c		; DREQ destination address
dreqlen		equ	$10		; DREQ length
fifo		equ	$12		; FIFO
vresintclr	equ	$14		; VRES interrupt clear
vintclr		equ	$16		; V interrupt clear
hintclr		equ	$18		; H interrupt clear
cmdintclr	equ	$1a		; CMD interrupt clear
pwmintclr	equ	$1c		; PWM interrupt clear

comm0		equ	$20		; Communication port
comm2		equ	$22		;
comm4		equ	$24		;
comm6		equ	$26		;
comm8		equ	$28		;
comm9		equ	$29		;
comm10		equ	$2a		;
comm12		equ	$2c		;
comm14		equ	$2e		;
timerctl	equ	$30		; PWM Timer Control
pwmctl		equ	$31		; PWM Control
cycle		equ	$32		; PWM Cycle
lchwidth	equ	$34		; PWM L ch Width
rchwidth	equ	$36		; PWM R ch Width
monowidth	equ	$38		; PWM Monaural Width

;---------------------------------------------------------------*
;	VDPREG.
;---------------------------------------------------------------*

_vdpreg		equ	$00004100+TH	; VDPREG.
tvmode		equ	$00		; TV mode register
bitmapmd	equ	$01		; Bitmap mode register
shift		equ	$03		; Shift Control register
filllength	equ	$05		; Auto Fill Length register
fillstart	equ	$06		; Auto Fill Start Address register
filldata	equ	$08		; Auto Fill Data register
vdpsts		equ	$0a		; VDP Status register
framectl	equ	$0b		; Frame Buffer Control register

;---------------------------------------------------------------*
_palette	equ	$00004200+TH	; Palette RAM
_framebuffer:	equ	CS2TH		; Frame buffer
_overwrite:	equ	CS2TH+$20000	; Over Write Image
;---------------------------------------------------------------*

;---------------------------------------------------------------*
;	Bit assign
;---------------------------------------------------------------*

; adapter
CART		equ	%00000001	; 0: CD		/1: Cartridge
ADEN		equ	%00000010	; 0: No MARS	/1: MARS
FM		equ	%10000000	; 0: MD		/1: SH

; framectl
FS		equ	%00000001	; 0: DRAM 0	/1: DRAM 1
FEN		equ	%00000010	; 0: アクセス可	/1: アクセス不可

; vdpsts
VBLK		equ	%10000000
HBLK		equ	%01000000
PEN		equ	%00100000

;-------------------------------------------------------;

_DMASOURCE0	.equ	$ffffff80	; DMA source address 0
_DMADEST0	.equ	$ffffff84	; DMA destination address 0
_DMACOUNT0	.equ	$ffffff88	; DMA transfer count 0
_DMACHANNEL0	.equ	$ffffff8c	; DMA channel control 0
_DMASOURCE1	.equ	$ffffff90	; DMA source address 1
_DMADEST1	.equ	$ffffff94	; DMA destination address 1
_DMACOUNT1	.equ	$ffffff98	; DMA transfer count 1
_DMACHANNEL1	.equ	$ffffff9c	; DMA channel control 1
_DMAVECTORN0	.equ	$ffffffa0	; DMA vector number N0
_DMAVECTORE0	.equ	$ffffffa4	; DMA vector number E0
_DMAVECTORN1	.equ	$ffffffa8	; DMA vector number N1
_DMAVECTORE1	.equ	$ffffffac	; DMA vector number E1
_DMAOPERATION	.equ	$ffffffb0	; DMA operation
_DMAREQACK0	.equ	$ffffffb4	; DMA request/ack select control 0
_DMAREQACK1	.equ	$ffffffb8	; DMA request/ack select control 1
_SERIAL		.equ	$fffffe00	; Serial Control
_FRT		.equ	$fffffe10	; Free run timer
_TIER		.equ	$00		; Timer interrup enable register
_TCSR		.equ	$01		; Timer control & status register
_FRC_H		.equ	$02		; free running counter High
_FRC_L		.equ	$03		; free running counter Low
_OCR_H		.equ	$04		; Output compare register High
_OCR_L		.equ	$05		; Output compare register Low
_TCR		.equ	$06		; Timer control register
_TOCR		.equ	$07		; timer output compare control register

;-------------------------------------------------------;
VIRQ_ON		.equ	$08		;IRQ masks for IRQ mask register
HIRQ_ON		.equ	$04
CMDIRQ_ON	.equ	$02
PWMIRQ_ON	.equ	$01
;-------------------------------------------------------;



