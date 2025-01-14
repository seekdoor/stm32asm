  	.thumb                 
        .syntax unified

.section .data
lcdcsh:
	.short 0x0000,0x0001,0x0015,0x0030,0x009a,0x0010,0x0011,0x0020,0x0010,0x3428,0x0012,0x0002,0x0013,0x1038,0x0012,0x0012,0x0010,0x3420,0x0013,0x3038,0x0030,0x0000,0x0031,0x0402,0x0032,0x0307,0x0033,0x0304,0x0034,0x0004,0x0035,0x0401,0x0036,0x0707,0x0037,0x0305,0x0038,0x0610,0x0039,0x0610,0x0001,0x0100,0x0002,0x0300,0x0003,0x1030,0x0008,0x0808,0x000a,0x0008,0x0060,0x2700,0x0061,0x00001,0x0090,0x13e,0x0092,0x0100,0x0093,0x0100,0x00a0,0x3000,0x00a3,0x0010,0x0007,0x0001,0x0007,0x0021,0x0007,0x0023,0x0007,0x0033,0x0007,0x0133

yjm:	 .short 0x001f, 0xf81f, 0xffe0, 0x07ff, 0xf800
wxwx:	 .byte 0x00,0x00,0x00,0x08,0x08,0x18,0x14,0x14,0x24,0x3C,0x22,0x42,0x42,0xE7,0x00,0x00	



        .equ STACKINIT, 	0x20005000
	.equ lcdyanshia, 	40000

	
.section .text
vectors:        
        .word STACKINIT         
        .word _start + 1        
        .word _nmi_handler + 1  
        .word _hard_fault  + 1  
        .word _memory_fault + 1 
        .word _bus_fault + 1    
        .word _usage_fault + 1 
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0 
	.word 0
	.word _dingshiqi + 1

_start:

@@AFIO-MAPR 开SWD模式
	ldr r0, = 0x40010004
	ldr r1, = 0x02000000
	str r1, [r0]
shizhong:
	ldr r0, = 0x40021000
	ldr r1, = 0x14D83
	str r1, [r0]
gsszbz: 
	ldr r2, [r0]
	ldr r1, = 0x20000
	tst r1, r2           @高速时钟标志位           
	bne rccchushihua
	b gsszbz
rccchushihua: 
	ldr r0, = 0x40022000
	mov r1, # 0x00000032
	str r1, [r0]           @FLASH缓冲 缓冲开启 
	ldr r0, = 0x40021004
	ldr r1, = 0x1D8400
	str r1, [r0]
	ldr r0, = 0x40021000
	ldr r1, = 0x1033D03
	str r1, [r0]
chaxun:
	ldr r2, [r0]
	ldr r1, = 0x2000000
	tst r1, r2
	bne rccgg
	b chaxun
rccgg:
	ldr r0, = 0x40021004
	ldr r1, = 0x1D8402
	str r1, [r0]


ioshezhi:

       ldr r6, = 0x40021018
        mov r0, 0x39
        str r0, [r6]
	@@AFIO-MAPR 开SWD
	ldr r0, = 0x40010004
	ldr r1, = 0x02000000
	str r1, [r0]
	ldr r0, = 0x40011000
	ldr r1, = 0x33444444 
	str r1, [r0]
	ldr r1, = 0x44444333
	str r1, [r0, # 4]
	ldr r1, = 0x7c0
	str r1, [r0, # 0xc]
	ldr r0, = 0x40010C00
	ldr r1, = 0x33333333
	str r1, [r0]
	ldr r1, = 0x33333333
	str r1, [r0, # 4]
	ldr r1, = 0xffff
	str r1, [r0, # 0xc]



	ldr r5, = lcdyanshia
	mov r6, # 0
	mov r2, # 0




lcdchushihua:
	add r6, # 1
	ldr r0, = lcdcsh
	ldrh r4, [r0, r2]
	add r2, # 2
	ldrh r7, [r0, r2]
	add r2, # 2
	cmp r6, # 1
	beq yanshi1
	cmp r6, # 7
	beq yanshi1
	cmp r6, # 8
	beq yanshi1
	cmp r6, # 10
	beq yanshi1
	bl lcdchushihua2
	
lcd1:
	cmp r2, # 0x94
	bhi tiaochu
	b lcdchushihua
	
yanshi1:
	bl lcdchushihua2
	bl yanshi
	b lcd1
	
tiaochu:
	mov r2, # 0
	mov r8, # 239
	movw r9, # 319
	ldr r11, = yjm
	
shuaping:
	ldrh r10, [r11, r2]
	add r2, # 2
	cmp r2, # 0x14
	bne xxxxxx
	mov r2, # 0
	b shuaping
xxxxxx:
	mov r4, # 0x20
	mov r7, r8
	bl lcdchushihua2
	subs r8, # 1
	bne yyyyyy
	mov r8, # 239
	b shuaping
yyyyyy:
	mov r4, # 0x21
	mov r7, r9
	bl lcdchushihua2
	subs r9, # 1
	bne xielcd
	movw r9, # 319
	b xxxxxx
xielcd:
	mov r4, # 0x22
	mov r7, r10
	bl lcdchushihua2
	b yyyyyy
	
lcdchushihua2:
	ldr r0, = 0x4001100c
	mov r1, # 0x4c0
	str r1, [r0]
	ldr r3, = 0x40010c0c
	str r4, [r3]
	mov r1, # 0x440
	str r1, [r0]
	mov r1, # 0x7c0
	str r1, [r0]
	mov r1, # 0x5c0
	str r1, [r0]
	str r7, [r3]
	mov r1, # 0x540
	str r1, [r0]
	mov r1, # 0x7c0
	str r1, [r0]
	bx lr
	
	

yanshi:	
	subs r5, # 1
	bne yanshi
	ldr r5, = lcdyanshia
	bx lr 


	
		


_nmi_handler:
	bx lr
_hard_fault:
	bx lr
_memory_fault:
	bx lr
_bus_fault:
	bx lr
_usage_fault:
	bx lr
_dingshiqi:	
	bx lr
         

