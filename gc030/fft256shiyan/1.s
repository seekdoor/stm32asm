	@ stm32f030f4p6 asm
	@fft 256点
	@2018-01-05
	 .thumb                 
         .syntax unified
.section .data	
       	.equ STACKINIT,                 0x20001000
	.equ xuanzhuanyinzi,		0x20000804
	.align 4
shuru:
	.int 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255
	
hudieweifanzhuan:
	.int 0x0000,0x0200,0x0100,0x0300,0x0080,0x0280,0x0180,0x0380,0x0040,0x0240,0x0140,0x0340,0x00C0,0x02C0,0x01C0,0x03C0,0x0020,0x0220,0x0120,0x0320,0x00A0,0x02A0,0x01A0,0x03A0,0x0060,0x0260,0x0160,0x0360,0x00E0,0x02E0,0x01E0,0x03E0,0x0010,0x0210,0x0110,0x0310,0x0090,0x0290,0x0190,0x0390,0x0050,0x0250,0x0150,0x0350,0x00D0,0x02D0,0x01D0,0x03D0,0x0030,0x0230,0x0130,0x0330,0x00B0,0x02B0,0x01B0,0x03B0,0x0070,0x0270,0x0170,0x0370,0x00F0,0x02F0,0x01F0,0x03F0,0x0008,0x0208,0x0108,0x0308,0x0088,0x0288,0x0188,0x0388,0x0048,0x0248,0x0148,0x0348,0x00C8,0x02C8,0x01C8,0x03C8,0x0028,0x0228,0x0128,0x0328,0x00A8,0x02A8,0x01A8,0x03A8,0x0068,0x0268,0x0168,0x0368,0x00E8,0x02E8,0x01E8,0x03E8,0x0018,0x0218,0x0118,0x0318,0x0098,0x0298,0x0198,0x0398,0x0058,0x0258,0x0158,0x0358,0x00D8,0x02D8,0x01D8,0x03D8,0x0038,0x0238,0x0138,0x0338,0x00B8,0x02B8,0x01B8,0x03B8,0x0078,0x0278,0x0178,0x0378,0x00F8,0x02F8,0x01F8,0x03F8,0x0004,0x0204,0x0104,0x0304,0x0084,0x0284,0x0184,0x0384,0x0044,0x0244,0x0144,0x0344,0x00C4,0x02C4,0x01C4,0x03C4,0x0024,0x0224,0x0124,0x0324,0x00A4,0x02A4,0x01A4,0x03A4,0x0064,0x0264,0x0164,0x0364,0x00E4,0x02E4,0x01E4,0x03E4,0x0014,0x0214,0x0114,0x0314,0x0094,0x0294,0x0194,0x0394,0x0054,0x0254,0x0154,0x0354,0x00D4,0x02D4,0x01D4,0x03D4,0x0034,0x0234,0x0134,0x0334,0x00B4,0x02B4,0x01B4,0x03B4,0x0074,0x0274,0x0174,0x0374,0x00F4,0x02F4,0x01F4,0x03F4,0x000C,0x020C,0x010C,0x030C,0x008C,0x028C,0x018C,0x038C,0x004C,0x024C,0x014C,0x034C,0x00CC,0x02CC,0x01CC,0x03CC,0x002C,0x022C,0x012C,0x032C,0x00AC,0x02AC,0x01AC,0x03AC,0x006C,0x026C,0x016C,0x036C,0x00EC,0x02EC,0x01EC,0x03EC,0x001C,0x021C,0x011C,0x031C,0x009C,0x029C,0x019C,0x039C,0x005C,0x025C,0x015C,0x035C,0x00DC,0x02DC,0x01DC,0x03DC,0x003C,0x023C,0x013C,0x033C,0x00BC,0x02BC,0x01BC,0x03BC,0x007C,0x027C,0x017C,0x037C,0x00FC,0x02FC,0x01FC,0x03FC
fft3xuanzhuanyinzi:
	.int 0x8000,0x0000,0x5A82,0xFFFFA57E,0x0000,0xFFFF8000,0xFFFFA57E,0xFFFFA57E
fft4xuanzhuanyinzi:
	.int 0x8000,0x0000,0x7641,0xFFFFCF05,0x5A82,0xFFFFA57E,0x30FB,0xFFFF89BF,0x0000,0xFFFF8000,0xFFFFCF05,0xFFFF89BF,0xFFFFA57E,0xFFFFA57E,0xFFFF89BF,0xFFFFCF05
fft5xuanzhuanyinzi:
	.int 0x8000,0x0000,0x7D8A,0xFFFFE708,0x7641,0xFFFFCF05,0x6A6D,0xFFFFB8E4,0x5A82,0xFFFFA57E,0x471C,0xFFFF9593,0x30FB,0xFFFF89BF,0x18F8,0xFFFF8276,0x0000,0xFFFF8000,0xFFFFE708,0xFFFF8276,0xFFFFCF05,0xFFFF89BF,0xFFFFB8E4,0xFFFF9593,0xFFFFA57E,0xFFFFA57E,0xFFFF9593,0xFFFFB8E4,0xFFFF89BF,0xFFFFCF05,0xFFFF8276,0xFFFFE708
fft6xuanzhuanyinzi:
	.int 0x8000,0x0000,0x7F62,0xFFFFF375,0x7D8A,0xFFFFE708,0x7A7D,0xFFFFDAD8,0x7641,0xFFFFCF05,0x70E2,0xFFFFC3AA,0x6A6D,0xFFFFB8E4,0x62F2,0xFFFFAECD,0x5A82,0xFFFFA57E,0x5133,0xFFFF9D0E,0x471C,0xFFFF9593,0x3C56,0xFFFF8F1E,0x30FB,0xFFFF89BF,0x2528,0xFFFF8583,0x18F8,0xFFFF8276,0x0C8B,0xFFFF809E,0x0000,0xFFFF8000,0xFFFFF375,0xFFFF809E,0xFFFFE708,0xFFFF8276,0xFFFFDAD8,0xFFFF8583,0xFFFFCF05,0xFFFF89BF,0xFFFFC3AA,0xFFFF8F1E,0xFFFFB8E4,0xFFFF9593,0xFFFFAECD,0xFFFF9D0E,0xFFFFA57E,0xFFFFA57E,0xFFFF9D0E,0xFFFFAECD,0xFFFF9593,0xFFFFB8E4,0xFFFF8F1E,0xFFFFC3AA,0xFFFF89BF,0xFFFFCF05,0xFFFF8583,0xFFFFDAD8,0xFFFF8276,0xFFFFE708,0xFFFF809E,0xFFFFF375
fft7xuanzhuanyinzi:
	.int 0x8000,0x0000,0x7FD8,0xFFFFF9B9,0x7F62,0xFFFFF375,0x7E9D,0xFFFFED38,0x7D8A,0xFFFFE708,0x7C29,0xFFFFE0E7,0x7A7D,0xFFFFDAD8,0x7884,0xFFFFD4E1,0x7641,0xFFFFCF05,0x73B5,0xFFFFC946,0x70E2,0xFFFFC3AA,0x6DCA,0xFFFFBE32,0x6A6D,0xFFFFB8E4,0x66CF,0xFFFFB3C1,0x62F2,0xFFFFAECD,0x5ED7,0xFFFFAA0B,0x5A82,0xFFFFA57E,0x55F5,0xFFFFA129,0x5133,0xFFFF9D0E,0x4C3F,0xFFFF9931,0x471C,0xFFFF9593,0x41CE,0xFFFF9236,0x3C56,0xFFFF8F1E,0x36BA,0xFFFF8C4B,0x30FB,0xFFFF89BF,0x2B1F,0xFFFF877C,0x2528,0xFFFF8583,0x1F19,0xFFFF83D7,0x18F8,0xFFFF8276,0x12C8,0xFFFF8163,0x0C8B,0xFFFF809E,0x0647,0xFFFF8028,0x0000,0xFFFF8000,0xFFFFF9B9,0xFFFF8028,0xFFFFF375,0xFFFF809E,0xFFFFED38,0xFFFF8163,0xFFFFE708,0xFFFF8276,0xFFFFE0E7,0xFFFF83D7,0xFFFFDAD8,0xFFFF8583,0xFFFFD4E1,0xFFFF877C,0xFFFFCF05,0xFFFF89BF,0xFFFFC946,0xFFFF8C4B,0xFFFFC3AA,0xFFFF8F1E,0xFFFFBE32,0xFFFF9236,0xFFFFB8E4,0xFFFF9593,0xFFFFB3C1,0xFFFF9931,0xFFFFAECD,0xFFFF9D0E,0xFFFFAA0B,0xFFFFA129,0xFFFFA57E,0xFFFFA57E,0xFFFFA129,0xFFFFAA0B,0xFFFF9D0E,0xFFFFAECD,0xFFFF9931,0xFFFFB3C1,0xFFFF9593,0xFFFFB8E4,0xFFFF9236,0xFFFFBE32,0xFFFF8F1E,0xFFFFC3AA,0xFFFF8C4B,0xFFFFC946,0xFFFF89BF,0xFFFFCF05,0xFFFF877C,0xFFFFD4E1,0xFFFF8583,0xFFFFDAD8,0xFFFF83D7,0xFFFFE0E7,0xFFFF8276,0xFFFFE708,0xFFFF8163,0xFFFFED38,0xFFFF809E,0xFFFFF375,0xFFFF8028,0xFFFFF9B9

fft8xuanzhuanyinzi:
	.int 0x8000,0x0000,0x7FF6,0xFFFFFCDC,0x7FD8,0xFFFFF9B9,0x7FA7,0xFFFFF696,0x7F62,0xFFFFF375,0x7F09,0xFFFFF055,0x7E9D,0xFFFFED38,0x7E1D,0xFFFFEA1E,0x7D8A,0xFFFFE708,0x7CE3,0xFFFFE3F5,0x7C29,0xFFFFE0E7,0x7B5D,0xFFFFDDDD,0x7A7D,0xFFFFDAD8,0x798A,0xFFFFD7DA,0x7884,0xFFFFD4E1,0x776C,0xFFFFD1EF,0x7641,0xFFFFCF05,0x7504,0xFFFFCC22,0x73B5,0xFFFFC946,0x7255,0xFFFFC674,0x70E2,0xFFFFC3AA,0x6F5F,0xFFFFC0E9,0x6DCA,0xFFFFBE32,0x6C24,0xFFFFBB86,0x6A6D,0xFFFFB8E4,0x68A6,0xFFFFB64C,0x66CF,0xFFFFB3C1,0x64E8,0xFFFFB141,0x62F2,0xFFFFAECD,0x60EC,0xFFFFAC65,0x5ED7,0xFFFFAA0B,0x5CB4,0xFFFFA7BE,0x5A82,0xFFFFA57E,0x5842,0xFFFFA34C,0x55F5,0xFFFFA129,0x539B,0xFFFF9F14,0x5133,0xFFFF9D0E,0x4EBF,0xFFFF9B18,0x4C3F,0xFFFF9931,0x49B4,0xFFFF975A,0x471C,0xFFFF9593,0x447A,0xFFFF93DC,0x41CE,0xFFFF9236,0x3F17,0xFFFF90A1,0x3C56,0xFFFF8F1E,0x398C,0xFFFF8DAB,0x36BA,0xFFFF8C4B,0x33DE,0xFFFF8AFC,0x30FB,0xFFFF89BF,0x2E11,0xFFFF8894,0x2B1F,0xFFFF877C,0x2826,0xFFFF8676,0x2528,0xFFFF8583,0x2223,0xFFFF84A3,0x1F19,0xFFFF83D7,0x1C0B,0xFFFF831D,0x18F8,0xFFFF8276,0x15E2,0xFFFF81E3,0x12C8,0xFFFF8163,0x0FAB,0xFFFF80F7,0x0C8B,0xFFFF809E,0x096A,0xFFFF8059,0x0647,0xFFFF8028,0x0324,0xFFFF800A,0x0000,0xFFFF8000,0xFFFFFCDC,0xFFFF800A,0xFFFFF9B9,0xFFFF8028,0xFFFFF696,0xFFFF8059,0xFFFFF375,0xFFFF809E,0xFFFFF055,0xFFFF80F7,0xFFFFED38,0xFFFF8163,0xFFFFEA1E,0xFFFF81E3,0xFFFFE708,0xFFFF8276,0xFFFFE3F5,0xFFFF831D,0xFFFFE0E7,0xFFFF83D7,0xFFFFDDDD,0xFFFF84A3,0xFFFFDAD8,0xFFFF8583,0xFFFFD7DA,0xFFFF8676,0xFFFFD4E1,0xFFFF877C,0xFFFFD1EF,0xFFFF8894,0xFFFFCF05,0xFFFF89BF,0xFFFFCC22,0xFFFF8AFC,0xFFFFC946,0xFFFF8C4B,0xFFFFC674,0xFFFF8DAB,0xFFFFC3AA,0xFFFF8F1E,0xFFFFC0E9,0xFFFF90A1,0xFFFFBE32,0xFFFF9236,0xFFFFBB86,0xFFFF93DC,0xFFFFB8E4,0xFFFF9593,0xFFFFB64C,0xFFFF975A,0xFFFFB3C1,0xFFFF9931,0xFFFFB141,0xFFFF9B18,0xFFFFAECD,0xFFFF9D0E,0xFFFFAC65,0xFFFF9F14,0xFFFFAA0B,0xFFFFA129,0xFFFFA7BE,0xFFFFA34C,0xFFFFA57E,0xFFFFA57E,0xFFFFA34C,0xFFFFA7BE,0xFFFFA129,0xFFFFAA0B,0xFFFF9F14,0xFFFFAC65,0xFFFF9D0E,0xFFFFAECD,0xFFFF9B18,0xFFFFB141,0xFFFF9931,0xFFFFB3C1,0xFFFF975A,0xFFFFB64C,0xFFFF9593,0xFFFFB8E4,0xFFFF93DC,0xFFFFBB86,0xFFFF9236,0xFFFFBE32,0xFFFF90A1,0xFFFFC0E9,0xFFFF8F1E,0xFFFFC3AA,0xFFFF8DAB,0xFFFFC674,0xFFFF8C4B,0xFFFFC946,0xFFFF8AFC,0xFFFFCC22,0xFFFF89BF,0xFFFFCF05,0xFFFF8894,0xFFFFD1EF,0xFFFF877C,0xFFFFD4E1,0xFFFF8676,0xFFFFD7DA,0xFFFF8583,0xFFFFDAD8,0xFFFF84A3,0xFFFFDDDD,0xFFFF83D7,0xFFFFE0E7,0xFFFF831D,0xFFFFE3F5,0xFFFF8276,0xFFFFE708,0xFFFF81E3,0xFFFFEA1E,0xFFFF8163,0xFFFFED38,0xFFFF80F7,0xFFFFF055,0xFFFF809E,0xFFFFF375,0xFFFF8059,0xFFFFF696,0xFFFF8028,0xFFFFF9B9,0xFFFF800A,0xFFFFFCDC
	           	
.section .text
vectors:        
        .word STACKINIT         
        .word _start + 1        
        .word _nmi_handler + 1  
        .word _hard_fault  + 1  
        .word 0 
        .word 0    
        .word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word _svc_handler +1
	.word 0 
	.word 0
	.word _pendsv_handler +1
	.word _systickzhongduan +1
	.align 2
_start:
shizhong:
	ldr r0, = 0x40021000 @ rcc
	ldr r2, = 0x40022000   @FLASH访问控制
	movs r1, # 0x32
	str r1, [r2]           @FLASH缓冲 缓冲开启
	ldr r0, = 0x40021000 @ rcc
	ldr r1, = 0x1c0002
	str r1, [r0, # 0x04]
	ldr r1, = 0x1000001
	str r1, [r0]
dengrc:
	ldr r1, [r0]
	lsls r1, # 30
	bpl dengrc
dengpll:
	ldr r1, [r0]
	lsls r1, # 6
	bpl dengpll
	@0x34时钟控制寄存器 2 (RCC_CR2)
	movs r1, # 0x01
	str r1, [r0, # 0x34]  @ HSI开14M时钟
dengdai14mshizhongwending:
	ldr r1, [r0, # 0x34]
	lsls r1, r1, # 30     @ 左移30位
	bpl dengdai14mshizhongwending  @ 等待14M时钟稳定

neicunqingling:
	ldr r0, = 0x20000000
	movs r1, # 0
	ldr r3, = 0x1000
neicunqinglingxunhuan:
	subs r3, # 4
	str r1, [r0, r3]
	bne neicunqinglingxunhuan
	
	ldr r0, = 0xe000e010
	ldr r1, = 0xffffff
	str r1, [r0, # 0x04]
	str r1, [r0, # 0x08]
	movs r1, # 0x07
	str r1, [r0]
	
_fftjisuan:
_fft1:	
	ldr r0, = shuru
	ldr r1, = 0x20000000
	movs r2, # 128
	ldr r3, = hudieweifanzhuan
_fft1xunhuan:
	ldr r6, [r3]
	ldr r7, [r3, # 0x04]
	ldr r6, [r0, r6]
	ldr r7, [r0, r7]
	adds r4, r6, r7
	subs r5, r6, r7
	str r4, [r1]
	str r5, [r1, # 0x04]
	adds r1, r1, # 0x08
	adds r3, r3, # 0x08
	subs r2, r2, # 1
	bne _fft1xunhuan
	
_fft2:
	ldr r0, = 0x20000000
	movs r4, # 1
	lsls r4, r4, # 10
	adds r4, r4, r0
	mov r8, r4
_fft2xunhuan:
	ldr r4, [r0]
	ldr r5, [r0, # 0x08]
	ldr r6, [r0, # 0x04]
	ldr r7, [r0, # 0x0c]
	adds r1, r4, r5
	subs r2, r4, r5
	mov r3, r6		@0r
	movs r4, # 0	
	subs r4, r4, r7		@0i
	mov r5, r6		@3r
	mov r6, r7		@3i
	movs r7, # 1
	lsls r7, r7, # 10
	adds r7, r7, r0
	str r1, [r0]
	str r2, [r0, # 0x08]
	str r3, [r0, # 0x04]
	str r4, [r7, # 0x04]
	str r5, [r0, # 0x0c]
	str r6, [r7, # 0x0c]
	adds r0, r0, # 0x10
	cmp r0, r8
	bne _fft2xunhuan
_fft3:
	ldr r6, = xuanzhuanyinzi
	ldr r2, = fft3xuanzhuanyinzi
	ldr r0, = 0x20000000
	str r2, [r6]
	movs r1, # 1
	lsls r1, r1, # 10
	adds r1, r1, r0
	mov r8, r1
	mov r9, r0
	mov r10, r2
	movs r5, # 0x10
	mov r11, r5
	movs r5, # 4
	mov r12, r5
	bl _fftg
_fft4:
	ldr r6, = xuanzhuanyinzi
	ldr r2, = fft4xuanzhuanyinzi
	ldr r0, = 0x20000000
	str r2, [r6]
	movs r1, # 1
	lsls r1, r1, # 10
	adds r1, r1, r0
	mov r8, r1
	mov r9, r0
	mov r10, r2
	movs r5, # 0x20
	mov r11, r5
	movs r5, # 8
	mov r12, r5
	bl _fftg
_fft5:
	ldr r6, = xuanzhuanyinzi
	ldr r2, = fft5xuanzhuanyinzi
	ldr r0, = 0x20000000
	str r2, [r6]
	movs r1, # 1
	lsls r1, r1, # 10
	adds r1, r1, r0
	mov r8, r1
	mov r9, r0
	mov r10, r2
	movs r5, # 0x40
	mov r11, r5
	movs r5, # 16
	mov r12, r5
	bl _fftg

_fft6:
	ldr r6, = xuanzhuanyinzi
	ldr r2, = fft6xuanzhuanyinzi
	ldr r0, = 0x20000000
	str r2, [r6]
	movs r1, # 1
	lsls r1, r1, # 10
	adds r1, r1, r0
	mov r8, r1
	mov r9, r0
	mov r10, r2
	movs r5, # 0x80
	mov r11, r5
	movs r5, # 32
	mov r12, r5
	bl _fftg
	
_fft7:
	ldr r6, = xuanzhuanyinzi
	ldr r2, = fft7xuanzhuanyinzi
	ldr r0, = 0x20000000
	str r2, [r6]
	movs r1, # 1
	lsls r1, r1, # 10
	adds r1, r1, r0
	mov r8, r1
	mov r9, r0
	mov r10, r2
	movs r5, # 1
	lsls r5, r5, # 8
	mov r11, r5
	movs r5, # 64
	mov r12, r5
	bl _fftg

_fft8:
	ldr r6, = xuanzhuanyinzi
	ldr r2, = fft8xuanzhuanyinzi
	ldr r0, = 0x20000000
	str r2, [r6]
	movs r1, # 1
	lsls r1, r1, # 10
	adds r1, r1, r0
	mov r8, r1
	mov r9, r0
	mov r10, r2
	movs r5, # 1
	lsls r5, r5, # 9
	mov r11, r5
	movs r5, # 128
	mov r12, r5
	bl _fftg
	

	ldr r0, = 0xe000e010
	movs r1, # 0
	str r1, [r0]
	ldr r1, [r0, # 0x08]
	mov r12, r1
	movs r2, # 0
tingting:
	adds r2, r2, # 1
	b tingting
_fftg:
	push {lr}
	movs r4, # 0
	mov lr, r4
_fftxunhuan:
	mov r0, r9
	mov r1, r8
	mov r2, r10
	mov r3, r11
	ldr r4, [r0]
	ldr r5, [r1]
	ldr r6, [r0, r3]
	ldr r7, [r1, r3]
	ldr r3, [r2]		@sr
	ldr r2, [r2, # 0x04]	@si
	push {r4,r5}
	mov r4, r6
	muls r4, r4, r3
	mov r5, r7
	muls r5, r5, r2
	subs r4, r4, r5		@r
	asrs r4, r4, # 15
	mov r5, r6
	muls r5, r5, r2
	muls r7, r7, r3
	adds r7, r7, r5    @i
	asrs r7, r7, # 15
	pop {r2,r5}
	adds r3, r2, r4    @0r
	subs r2, r2, r4    @1r
	adds r4, r5, r7
	subs r5, r5, r7
	mov r6, r11
	str r3, [r0]
	str r4, [r1]
	str r2, [r0, r6]
	str r5, [r1, r6]
	adds r0, r0, # 0x04
	adds r1, r1, # 0x04
	mov r9, r0
	mov r8, r1
	mov r2, r10
	adds r2, r2, # 0x08
	mov r10, r2
	mov r4, lr
	adds r4, r4, # 1
	mov lr, r4
	mov r7, r12
	cmp r4, r7
	bne _fftxunhuan
	movs  r4, # 0
	ldr r6, = xuanzhuanyinzi
	ldr r5, = 0x20000400
	ldr r6, [r6]
	mov r10, r6
	mov lr, r4
	mov r7, r11
	adds r0, r0, r7
	adds r1, r1, r7
	mov r9, r0
	mov r8, r1
	cmp r0, r5
	bne _fftxunhuan
	pop {pc}
	.ltorg
_nmi_handler:
	bx lr
_hard_fault:
	bx lr
_svc_handler:
	bx lr
_pendsv_handler:
	bx lr
_systickzhongduan:
	bx lr