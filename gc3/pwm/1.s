@ stm32f030f4p6 asm 
	 .thumb                 
         .syntax unified
.section .data	
        	.equ STACKINIT,          0x20000300
		.equ shumaguanma,	0x20000000
shumaguanmabiao:	.int 0xfc,0x60,0xda,0xf2,0x66,0xb6,0xbe,0xe0,0xfe,0xf6	
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
	.word _systick +1   

_start:
shizhong:
	ldr r0, = 0x40021000 @ rcc
	ldr r2, = 0x40022000   @FLASH访问控制
	movs r1, # 0x32
	str r1, [r2]           @FLASH缓冲 缓冲开启
	ldr r1, = 0x110002     @HSE-PLL 6
	str r1, [r0, # 0x04]
	ldr r1, = 0x1090001
	str r1, [r0]
dengrc:
	ldr r1, [r0]
	lsls r1, # 30
	bpl dengrc
dengjingzhen:
	ldr r1, [r0]
	lsls r1, # 14
	bpl dengjingzhen
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
	
waisheshizhong:	 @ 外设时钟              
	@+0x14 #0(DMA),2(SRAM),4(FLITF),6(CRC),17(PA)
	@18(PB),19(PC),20(PD),22(PF)
	@+0x18 #0(SYSCFG),5(USART6),9(ADC),#11(TIM1)
	@12(SPI), @14(USART1),16(TIM15),17(TIM16),
	@18(TIM17),22(DBGMCU)
	@+0X1C # 1(TIM3),4(TIM6),5(TIM7),8(TIM14),11(WWDG),
	@14(SPI2),17(USART2),18(USART3),19(USART4),20(USART5)
	@21(I2C1),22(I2C2),23(USB),28(PWR)
	ldr r0, = 0x40021000
	ldr r1, = 0x60005
	str r1, [r0, # 0x14]
	ldr r1, = 0x100
	str r1, [r0, # 0x1c]
	
systick:
	@ 0xe000ed20 30-31 优先级
	ldr r0, = 0xe000e010
	ldr r1, = 47999 @ 重载数
	str r1, [r0, # 4] @ 写入重载数
	str r1, [r0, # 8] @ 清除当前数
	movs r1, # 0
	str r1, [r0] @ 开定时器

tim14chushihua:
	        ldr r0, = 0x40002000
	        ldr r1, = 0
	        str r1, [r0, # 0x28]
	        ldr r1, = 10000
	        str r1, [r0, # 0x2c]
	        ldr r1, = 0x70
	        str r1, [r0, # 0x18]
	        ldr r1, = 0x01
	        str r1, [r0, # 0x20]
		ldr r1, = 10000
	        str r1, [r0, # 0x34]
	        ldr r1, = 0x81
	        str r1, [r0]


	
io_she_zhi:
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	@a(0x48000000)b(0x48000400)c(0x48000800)d(0x48000c00)f(0x48001400)
	@ 输入（00），通用输出（01），复用功能（10），模拟（11）
	@偏移0x4 = 端口输出类型 @ （0 推挽），（ 1 开漏）
	@偏移0x8 = 输出速度  00低速， 01中速， 11高速
	@偏移0xC = 上拉下拉 00无上下拉，  01 上拉， 10下拉
	@偏移0x10 = 输入数据寄存器
	@偏移0x14 = 输出数据寄存器
	@偏移0x18 = 端口开  0-15置位 
	@偏移0x28 = 端口关
	@0X20 = 复用低
	@GPIO口0（0-3位）每个IO口占用4位
	@ AF0 = 0X0000, AF1 = 0X0001, AF2 = 0X0010 AF3 = 0X0011, AF4 = 0X0100
	@ AF5 = 0X0101, AF6 = 0X0111, AF7 = 0X1000
	@0x24 = 复用高
	@GPIO口8 （0-3位）每个IO口占用4位
	@ AF0 = 0X0000, AF1 = 0X0001, AF2 = 0X0010 AF3 = 0X0011, AF4 = 0X0100
	@ AF5 = 0X0101, AF6 = 0X0111, AF7 = 0X1000
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	ldr r0, = 0x48000000 @ gpio_a
	ldr r1, = 0x28000200 @ pa4
	str r1, [r0]
	ldr r1, = 0x40000
	str r1, [r0, # 0x20]
huxideng:
	ldr r0, = 0x40002000
	ldr r1, [r0, # 0x34]
	ldr r5, = 0x1000
huxideng1:
	subs r5, r5, # 1
	bne huxideng1
	ldr r5, = 0x1000
	subs r1, r1, # 1
	str r1, [r0, # 0x34]
	bne huxideng1
huxideng2:
	subs r5, r5, # 1
	bne huxideng2
	ldr r5, = 0x1000
	adds r1, r1, # 1
	str r1, [r0, # 0x34]
	ldr r2, = 10000
	cmp r1, r2
	bls huxideng2
	b huxideng
	

	

	
zhuanshumaguanma:@ 16进制转数码管码
		@ R0要转的数据， R1长度，R2结果表首地址
	push {r0-r7,lr}
	ldr r7, = shumaguanmabiao
	movs r5, # 10
	mov r11, r5
xunhuanqiuma:
	mov r12, r0
	bl chufa
	mov r4, r12
	muls r4, r5
	mov r6, r4
	subs r3, r0, r6
	lsls r3, # 2
	ldr r6, [r7, r3]
	str r6, [r2]
	adds r2, r2, # 4
	mov r0, r12
	subs r1, # 1
	bne xunhuanqiuma
	pop {r0-r7,pc}
	
xieshumaguan: @ r6=位数 @数码管码
	push {r0-r7,lr}
	ldr r1, = 0xfefefefe
	movs r2, # 0x01
	movs r7, # 0
	ldr r5, = shumaguanma
shumaguanshuaxin:
	ldr r3, [r5, r7]
	lsrs r4, r1, # 24
	lsls r4, r4, # 8
	orrs r4, r4, r3
	mov r12, r4
	bl xie595
	rors r1, r2
	adds  r7, r7, # 4
	cmp r7, r6
	bcc shumaguanshuaxin
	pop {r0-r7,pc}
	
xie595: @ R12=要写的数据
	push {r0-r7,lr}
	movs r0, # 0x40
	movs r7, # 0x80 
	movs r6, # 0x20 
	mov r5, r12
	movs r3, # 16   @16位
	ldr r2, = 0x48000000 @ gpioa
	movs r1, # 0x01
xunhuan595:
	str r7, [r2, # 0x18]
	bl yanshi
	tst r5, r1
	bne xie595_0
	str r0, [r2, # 0x28]
	b suocun595
xie595_0:
	str r0, [r2, # 0x18]
suocun595:
	bl yanshi
	lsrs r5, # 1
	str r7, [r2, # 0x28]
	bl yanshi
	subs r3, r3, # 1
	bne xunhuan595
	str r6, [r2, # 0x18]
	bl yanshi
	str r6, [r2, # 0x28]
	bl yanshi
	pop {r0-r7,pc}

yanshi:
	push {r0-r7,lr}
	ldr r0, = 10
yanshi1:
	subs r0, # 1
	bne yanshi1
	pop {r0-r7,pc}
	
chufa:	@软件除法
	@ r12 除以 R11
	push {r0-r7,lr}
	mov r6, r12
	cmp r6, # 0
	beq chufafanhui
	mov r7, r11
	cmp r7, # 0
	beq chufafanhui
	movs r0, # 0
chufaxunhuan:
	mov r12, r6
	bl jianceweishu
	mov r2, r12
	mov r12, r7
	bl jianceweishu
	mov r3, r12
	subs r2, r3, r2
	mov r4, r7
	lsls r4, r2
	mov r3, r4
	cmp r6, r3
	bcc dd1
	b dd2
dd1:
	subs r2, r2, # 1
	lsrs r3, # 1
dd2:
	subs r6, r6, r3
	movs r3, # 1
	lsls r3, r2
	orrs  r0, r3
	cmp r6, r7
	bcs chufaxunhuan
	mov r12, r0
chufafanhui:
	pop {r0-r7,pc}

jianceweishu:
	push {r0-r7,lr}
	movs r0, # 0
	mov r1, r12
jianceweishu1:
	bmi weishufanhui
	adds r0, r0, # 1
	lsls r1, # 1
	b jianceweishu1
weishufanhui:
	mov r12, r0
	pop {r0-r7,pc}
yanshius: @ 10 = 1us
	push {r0-r7,lr}
	mov r0, r12
usxunhuan:
	subs r0, r0, # 1
	bne usxunhuan
	pop {r0-r7,pc}
_nmi_handler:
	bx lr
_hard_fault:
	bx lr
_svc_handler:
	bx lr
_pendsv_handler:
	bx lr
_systick:
	push {r0-r7,lr}
	ldr r0, = 0x20000300
	ldr r1, [r0]
	adds r1, r1, # 1
	str r1, [r0]
	pop {r0-r7,pc}
	
	