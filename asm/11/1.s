	 .thumb                 
         .syntax unified
.section .data
lcdchushihuamabiao: .byte 0x00,0x00,0x01,0x00,0x03,0x00,0x0f,0x00,0x10,0x00,0x11,0x00,0x12,0x11,0x20,0x27,0x21,0x27,0x30,0xef,0x31,0xef,0x40,0x00,0x50,0x00,0x60,0x00,0x61,0x00,0x62,0x00,0x70,0x00,0x71,0x00,0x72,0x00,0x80,0x00,0x90,0x00,0xa0,0x00,0xa1,0x00,0xa2,0x00,0xa3,0x00,0xa3,0x00,0xb0,0x00,0xb1,0x00,0xc1,0x00,0xc2,0x00,0xc3,0x00,0xd0,0x00,0xd1,0x00,0xe0,0x00,0xf0,0x00,0xf1,0x00
	
	
	
         .equ STACKINIT, 0x20005000
	.equ lcdyanshi,    8000
	.equ resyanshi,   80000
	.equ lcdyanshi2,   80000
	.equ lcdwr,      0x422201a8
	.equ lcdrd,      0x422201ac
	.equ lcdcs,      0x422201b0
	.equ lcdmang,	 0x42220118


	.equ lcdrs,      0x4221818c
	.equ lcdrst,     0x42218190
	.equ fengmingqi, 0x422201a0
	.equ lcddx,      0x422181a0
	.equ lcdshuju,   0x22006000
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
	mov r0, # 0
	mov r1, # 0
	mov r2, # 0
	mov r3, # 0
	mov r4, # 0
	mov r5, # 0
	mov r6, # 0 
	mov r7, # 0
	mov r8, # 0
	mov r9, # 0
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
rccapb2enr:
	ldr r0, = 0x40021018
	mov r1, # 0x3d
	str r1, [r0]
	
        ldr r0, = 0x40010004 @ AFIO_MAPR
	ldr r1, = 0x02000000
	str r1, [r0]
ioshezhi:
	ldr r0, = 0x40010800
	ldr r1, = 0x24444444
	str r1, [r0, # 4]
	ldr r0, = 0x40010c00
	ldr r1, = 0x44455444
	str r1, [r0]
	ldr r1, = 0x55555555
	str r1, [r0, # 4]
	ldr r0, = 0x40011004
	ldr r1, = 0x44455555
	str r1, [r0]
	ldr r5, = lcdyanshi
lcdresres:
	subs r5, # 1
	bne lcdresres
	ldr r0, = lcdrst
	mov r1, # 0
	str r1, [r0]
	ldr r5, = resyanshi
lcdresres1:
	subs r5, # 1
	bne lcdresres1
	mov r1, # 1
	str r1, [r0]
	ldr r0, = fengmingqi
	str r1, [r0]
	
lcdchushihua:
	ldr r0, = 0x20000300
	mov r1, # 0x00
	str r1, [r0]
	bl lcdxiemingling
	mov r1, # 0x0c
	str r1, [r0]
	bl lcdxieshuju

	ldr r5, = resyanshi
yanshi10:
	subs r5, # 1
	bne yanshi10

	mov r1, # 0x01
	str r1, [r0]
	bl lcdxiemingling
	mov r1, # 0x34
	str r1, [r0]
	bl lcdxieshuju

	
	ldr r5, = resyanshi
yanshi11:
	subs r5, # 1
	bne yanshi11

        mov r1, # 0x90
	str r1, [r0]
	bl lcdxiemingling
	mov r1, # 107
	str r1, [r0]
	bl lcdxieshuju

	mov r1, # 0x10
	str r1, [r0]
	bl lcdxiemingling
	mov r1, # 0x40
	str r1, [r0]
	bl lcdxieshuju

	mov r1, # 0x11
	str r1, [r0]
	bl lcdxiemingling
	mov r1, # 0xf0
	str r1, [r0]
	bl lcdxieshuju

	mov r1, # 0x12
	str r1, [r0]
	bl lcdxiemingling
	mov r1, # 0x31
	str r1, [r0]
	bl lcdxieshuju

	mov r1, # 0xf0
	str r1, [r0]
	bl lcdxiemingling
	mov r1, # 0x80
	str r1, [r0]
	bl lcdxieshuju

	mov r1, # 0xf1
	str r1, [r0]
	bl lcdxiemingling
	mov r1, # 0x0f
	str r1, [r0]
	bl lcdxieshuju

	mov r1, # 0x80
	str r1, [r0]
	bl lcdxiemingling
	mov r1, # 0x33
	str r1, [r0]
	bl lcdxieshuju

	mov r1, # 0x0f
	str r1, [r0]
	bl lcdxiemingling
	mov r1, # 0x30
	str r1, [r0]
	bl lcdxieshuju

	mov r1, # 0x41
	str r1, [r0]
	bl lcdxiemingling
	mov r1, # 0x00
	str r1, [r0]
	bl lcdxieshuju

	mov r1, # 0x21
	str r1, [r0]
	bl lcdxiemingling
	mov r1, # 0x27
	str r1, [r0]
	bl lcdxieshuju

	mov r1, # 0x51
	str r1, [r0]
	bl lcdxiemingling
	mov r1, # 0x00
	str r1, [r0]
	bl lcdxieshuju

	mov r1, # 0x31
	str r1, [r0]
	bl lcdxiemingling
	mov r1, # 0x7f
	str r1, [r0]
	bl lcdxieshuju

	 mov r1, # 0x40
	 str r1, [r0]
	 bl lcdxiemingling
	 mov r1, # 0x00
	str r1, [r0]
	bl lcdxieshuju

	 mov r1, # 0x20
	 str r1, [r0]
	 bl lcdxiemingling
	 mov r1, # 0x27
	str r1, [r0]
	bl lcdxieshuju

	 mov r1, # 0x50
	str r1, [r0]
	bl lcdxiemingling
	mov r1, # 0x00
	str r1, [r0]
	bl lcdxieshuju

	mov r1, # 0x30
	str r1, [r0]
	bl lcdxiemingling
	mov r1, # 0x7f
	str r1, [r0]
	bl lcdxieshuju

	 mov r1, # 0x60
	 str r1, [r0]
	bl lcdxiemingling
	 mov r1, # 0x00
	str r1, [r0]
	bl lcdxieshuju

	mov r1, # 0x70
	str r1, [r0]
	bl lcdxiemingling
	mov r1, # 0x00
	str r1, [r0]
	bl lcdxieshuju

	b tiaochulcdchushihua
	


	
	
	
	

	
lcdxiemingling:
	push {r0-r9, lr}

	ldr r8, = lcdcs
	mov r9, # 0
	str r9, [r8]

	ldr r8, = lcdrd
	mov r9, # 1
	str r9, [r8]
	
	ldr r8, = lcdrs
	mov r9, # 1
	str r9, [r8]

	ldr r8, = lcdshuju
	ldmia r8!, {r0-r7}
	ldr r8, = lcddx
	stmia r8!, {r0-r7}

	ldr r8, = lcdwr
	mov r9, # 0
	str r9, [r8]
	
	ldr r5, = lcdyanshi
	
dd1:
	subs r5, # 1
	bne dd1
	ldr r8, = lcdwr
	mov r9, # 1
	str r9, [r8]
	
	ldr r8, = lcdcs
	mov r9, # 1
	str r9, [r8]
	
	pop {r0-r9, pc}

lcdxieshuju:
	push {r0-r9, lr}
	ldr r5, = lcdyanshi2
lcdxieshujuyanshi3:
	subs r5, # 1
	bne lcdxieshujuyanshi3

	ldr r8, = lcdcs
	mov r9, # 0
	str r9, [r8]

	ldr r5, = lcdyanshi
lcdshujuyanshi:
	subs r5, # 1
	bne lcdshujuyanshi

	
	ldr r8, = lcdrd
	mov r9, # 1
	str r9, [r8]

	ldr r8, = lcdrs
	mov r9, # 0
	str r9, [r8]

	ldr r8, = lcdshuju
	ldmia r8!, {r0-r7}
	ldr r8, = lcddx
	stmia r8!, {r0-r7}

	
	ldr r8, = lcdwr
	mov r9, # 0
	str r9, [r8]
	
	ldr r5, = lcdyanshi
dd2:
	subs r5, # 1
	bne dd2
	ldr r8, = lcdwr
	mov r9, # 1
	str r9, [r8]

	ldr r5, = lcdyanshi
lcdxieshujuyanshi1:
	subs r5, # 1
	bne lcdxieshujuyanshi1
	
	ldr r8, = lcdcs
	mov r9, # 1
	str r9, [r8]

	ldr r5, = lcdyanshi2
lcdxieshujuyanshi2:
	subs r5, # 1
	bne lcdxieshujuyanshi2
	
	pop {r0-r9, pc}
	
	
tiaochulcdchushihua:
	ldr r0, = 0x20000300
	mov r1, # 0x00
	str r1, [r0]
	bl lcdxiemingling

	mov r1, # 0x0c
	str r1, [r0]
	bl lcdxieshuju

	mov r1, # 0x12
	str r1, [r0]
	bl lcdxiemingling

	mov r1, # 0x32
	str r1, [r0]
	bl lcdxieshuju
	

	mov r1, # 0xb0
	str r1, [r0]
	bl lcdxiemingling

	mov r1, # 0x41
	str r1, [r0]
	bl lcdxieshuju
	

	b tiaochulcdchushihua
	
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

	
	
	
