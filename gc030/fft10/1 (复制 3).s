	@ stm32f030f4p6 asm
	@fft 8点
	 .thumb                 
         .syntax unified
.section .data	
       	.equ STACKINIT,                 0x20001000
shuru:	.int 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
	.int 16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
hudie:	.int 0,64,32,96,16,80,48,112,8,72,40,104,24,88,56,120
	.int 4,68,36,100,20,84,52,116,12,76,44,108,28,92,60,124
fft3xuanzhuanyinzi: .int 32768,0,23170,-23170,0,-32768,-23170,-23170
fft4xuanzhuanyinzi: .int 1,1,1,1,1,1,1,1
		    .int 1,1,1,1,1,1,1,1
fft5xuanzhuanyinzi: .int 1,1,1,1,1,1,1,1
		    .int 1,1,1,1,1,1,1,1
		    .int 1,1,1,1,1,1,1,1
		    .int 1,1,1,1,1,1,1,1
	           
	           
	
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
	
_start:
_shizhong:	                     @时钟设置
	ldr r2, = 0x40022000   @FLASH访问控制
	movs r1, # 0x32
	str r1, [r2]
	ldr r0, = 0x40021000 @ rcc
	@0x34时钟控制寄存器 2 (RCC_CR2)
	movs r1, # 0x01
	str r1, [r0, # 0x34]  @ HSI开14M时钟
_dengdai14mshizhongwending:	    @等14M时钟稳定
	ldr r1, [r0, # 0x34]
	lsls r1, r1, # 30     @ 左移30位
	bpl _dengdai14mshizhongwending  @ 等待14M时钟稳定

_neicunqingling:	                         @ 0x1000的内存清零
	                                 @ 1K=1024BIT=0X400
	ldr r0, = 0x20000000
	movs r1, # 0
	ldr r3, = 0x1000
_neicunqinglingxunhuan:	                   @ 内存清零循环
	subs r3, # 4
	str r1, [r0, r3]
	bne _neicunqinglingxunhuan                @



	
_fftjisuan:
_fft1:	
	ldr r0, = shuru
	ldr r1, = 0x20000000
	movs r2, # 16
	ldr r3, = hudie
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
	mov r4, r0
	adds r4, r4, # 0x80
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
	mov r7, r0
	adds r7, r7, # 0x80
	str r1, [r0]
	str r2, [r0, # 0x08]
	str r3, [r0, # 0x04]
	str r4, [r7, # 0x04]
	str r5, [r0, # 0x0c]
	str r6, [r7, # 0x0c]
	adds r0, r0, # 0x10
	cmp r0, r8
	bne _fft2xunhuan
	
	bkpt
_fft3:
	ldr r2, = fft3xuanzhuanyinzi
	ldr r0, = 0x20000000
	movs r1, r0
	adds r1, r1, # 0x80
	mov r8, r1
	mov r9, r0
	mov r10, r2
	movs r0, # 0
	mov lr, r0
_fft3xunhuan:
	mov r0, r9
	mov r1, r8
	mov r2, r10
	ldr r4, [r0]
	ldr r5, [r1]
	ldr r6, [r0, # 0x10]
	ldr r7, [r1, # 0x10]
	ldr r3, [r2]		@sr
	ldr r2, [r2, # 0x04]	@si
	mov r11, r4
	mov r12, r5
	mov r4, r6
	muls r4, r4, r3
	mov r5, r7
	muls r5, r5, r2
	subs r4, r4, r5		@r	
	asrs r4, r4, # 15
	mov r5, r6
	muls r5, r5, r2
	muls r7, r7, r3
	adds r7, r7, r5		@i
	asrs r7, r7, # 15
	mov r2, r11		@0r
	mov r5, r12		@0i
	adds r2, r2, r4
	adds r3, r5, r7
	subs r4, r2, r4
	subs r5, r5, r7
	str r2, [r0]
	str r3, [r1]
	str r4, [r0, # 0x10]
	str r5, [r1, # 0x10]
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
	cmp r4, # 4
	bne _fft3xunhuan
	movs  r4, # 0
	ldr r5, = 0x20000080
	ldr r6, = fft3xuanzhuanyinzi
	mov lr, r4
	mov r10, r6
	adds r0, r0, # 0x10
	adds r1, r1, # 0x10
	mov r9, r0
	mov r8, r1
	cmp r0, r5
	bne _fft3xunhuan
	
_tingting:
	b _tingting
		
_nmi_handler:
	bx lr
_hard_fault:
	bx lr
_svc_handler:
	bx lr
_pendsv_handler:
	bx lr
