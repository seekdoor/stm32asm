        .thumb                 
        .syntax unified      
	.align 2
        .global _start
.section .data
	.equ duizhanding, 0x20001000
.section .text
vectors:        
        .word duizhanding        
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
_start:
shizhong:
	ldr r0, = 0x40021000 @ rcc
	ldr r2, = 0x40022000   @FLASH访问控制
	movs r1, # 0x32
	str r1, [r2]           @FLASH缓冲 缓冲开启
	ldr r0, = 0x40021000 @ rcc
	ldr r1, = 0x100002
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

	movs r1, # 0
	mov r12, r1
xunhuan1:	
	ldr r0, = 0x20000500
	mov sp, r0
mmldrldr:
	ldr r1, [r0, # 20]
	 ldr r1, [r0, # 20]
	 ldr r1, [r0, # 20]
	 ldr r1, [r0, # 20]
	 ldr r1, [r0, # 20]
	 ldr r1, [r0, # 20]
	 ldr r1, [r0, # 20]
	 ldr r1, [r0, # 20]

	        ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]


	        ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]

	        ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]

	        ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]

	        ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]

	        ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]

	        ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]

	        ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]

	        ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]

	        ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]

	        ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]

	        ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]

	        ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]
	         ldr r1, [r0, # 20]

	mov r1, r12
	adds r1, r1, # 1
	mov r12, r1
	b xunhuan1
	
mmvvv:
	mov r0, r0
	mov r0, r0
	mov r0, r0
	mov r0, r0
	mov r0, r0
	mov r0, r0
	mov r0, r0
	mov r0, r0

	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0

	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	        mov r0, r0
	
	mov r1, r12
	adds r1, r1, # 1
	mov r12, r1
	b xunhuan1
	
xunhuan:
	 push {r0-r7}
	 push {r0-r7}
	 push {r0-r7}
	 push {r0-r7}
	 push {r0-r7}
	 push {r0-r7}
	 push {r0-r7}
         push {r0-r7}

	         push {r0-r7}
	         push {r0-r7}
	         push {r0-r7}
	         push {r0-r7}
	         push {r0-r7}
	         push {r0-r7}
	         push {r0-r7}
	         push {r0-r7}

	         push {r0-r7}
	         push {r0-r7}
	         push {r0-r7}
	         push {r0-r7}
	         push {r0-r7}
	         push {r0-r7}
	         push {r0-r7}
	         push {r0-r7}

	         push {r0-r7}
	         push {r0-r7}
	         push {r0-r7}
	         push {r0-r7}
	         push {r0-r7}
	         push {r0-r7}
	         push {r0-r7}
	         push {r0-r7}

	         push {r0-r7}
	         push {r0-r7}
	         push {r0-r7}
	         push {r0-r7}
	         push {r0-r7}
	         push {r0-r7}
	         push {r0-r7}
	         push {r0-r7}

	                push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}

	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	
	                push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}

	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	
	                push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}

	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	
	                push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}

	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	
	                push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}
	                 push {r0-r7}

	           

	mov r1, r12
	adds r1, r1, # 1
	mov r12, r1
	b xunhuan1
	

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
_systickzhongduan:
dd:
	b dd

	
	
