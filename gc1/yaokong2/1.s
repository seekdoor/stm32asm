	 .thumb                 
         .syntax unified
.section .data
	.align 4
	
shumaguanmabiao: .byte 0x77,0x11,0x6b,0x3b,0x1d,0x3e,0x7e,0x13,0x7f,0x3f
hongwaimabiao: .int 0x2f472f47,0x1f471f47,0x3b473b47,0x2b472b47,0x37473747,0x27472747,0x33473347,0x23472347,0x2a472a47,0x32473247,0x0b470b47,0x22472247,0x1b471b47,0x12471247,0x0a470a47,0x01470147,0x09470947,0x11471147,0x19471947,0x20472047,0x28472847,0x30473047,0x38473847,0x00470047,0x08470847,0x10471047,0x18471847,0x3a473a47,0x17471747,0x02470247
shuaxinbiao: .byte 0xfd,0xfb,0xf7,0xef,0xdf,0xbf
	
caidian: .word zhucaidan +1,dd1 +1,dd2 +1,dd3 +1,dd4 +1,dd5 +1,dd6 +1,dd7 +1,dd8 +1,dd9 +1,dd10 +1,dd11 +1,dd12 +1,dd13 +1,dd14 +1,dd15 +1,dd16 +1,dd17 +1,dd18 +1,dd19 +1,dd20 +1,dd21 +1,dd22 +1,dd23 +1,dd24 +1,dd25 +1,dd26 +1,dd27 +1,dd28 +1,dd29 +1,dd30 +1
		.equ STACKINIT,          0x20005000
		.equ systickbiaozhi,     0x20000300
		.equ jidianqipb10,       0x422181a8
.section .text
xiangliangbiao:
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
	.word systickdingshiqi +1
	.word	0 @WWDG  	0
	.word	0 @PVD  	1
	.word	0 @TAMPER	2
	.word	0 @RTC		3
	.word	0 @FLASH	4
	.word	0 @RCC		5
	.word	0 @EXTI0	6
	.word	0 @EXTI1	7
	.word	0 @EXTI2	8
	.word	0 @EXTI3	9
	.word	0 @EXTI4	10
	.word	0 @DMA11	11
	.word	0 @DMA12	12
	.word	0 @DMA13	13
	.word	0 @DMA14	14
	.word	0 @DMA15	15
	.word	0 @DMA16	16
	.word	0 @DMA17	17
	.word	0 @ADC1_2 	18
	.word	0 @USB_HP_CAN1_TX 19
	.word	0 @USB_LP_CAN1_RX0 20
	.word	0 @CAN1_RX1	21
	.word	0 @CAN1_SCE	22
	.word	0 @EXTI9_5	23
	.word	0 @TIM1_BRK	24
	.word	0 @TIM1_UP	25
	.word	0 @TIM1_TRG_COM	26
	.word	0 @TIM1_CC	27
	.word	tim2dingshiqi +1  @TIM2 28
	.word	tim3dingshiqi +1  @TIM3		29
	.word	0 @TIM4		30
	.word	0 @I2C1_EV	31
	.word	0 @I2C1_ER	32
	.word	0 @I2C2_EV	33
	.word	0 @I2C2_ER	34
	.word	0 @SPI1		35
	.word	0 @SPI2		36
	.word	0 @USART1	37
	.word	0 @USART2	38
	.word	0 @USART3	39
	.word	0 @EXTI15_10	40
	.word	0 @RTCAlarm_IRQ	41
	.word	0 @USBWakeUp	42
	.word	0	
	.word	0	
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0 @BootRAM   
_start:
	ldr r0, = 0x40010004
	ldr r1, = 0x02000000
	str r1, [r0]

	str r1, [r0, # 0x04]
	ldr r0, = 0x40021000
	ldr r1, = 0x14D83
	str r1, [r0]
gsszbz: 
	ldr r2, [r0]
	ldr r1, = 0x20000
	tst r1, r2           @HSE高速时钟标志位           
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
	bne rccgg               @等待PLL稳定
	b chaxun
rccgg:
	ldr r0, = 0x40021004
	ldr r1, = 0x1D8402
	str r1, [r0]            @ PLL作为系统时钟

	ldr r0, = 0x40010004
	ldr r1, = 0x02000000
	str r1, [r0]

neicunqingling:                  @ 无聊把内存清0
	ldr r0, = 0x20000000
	ldr r2, = 0x4fff         @ 区域是0X4FFF大的地方
	mov r1, # 0              @ 写0
qingling_xunhuan:                
	str r1, [r0], 4         
	subs r2, # 1
	bne qingling_xunhuan     @ 循环清0

chushihuashuju:
	ldr r0, = 0x200005e0
	ldr r1, = 0x2200c000
	str r1, [r0]
	mov r1, # 24
	str r1, [r0, # 0x04]
	mov r1, # 0
	str r1, [r0, # 0x08]

	ldr r0, = 0x20000020
	ldr r1, = 700
	str r1, [r0]

	
systick:
	@0xe000e010 SYSTICK控制状态寄存器
	@0=定时器使能
	@1=（1倒数到0发出异常请，0无动作）
	@2=（0外部始终1内核时钟）
	@16= 如果赏赐读取本寄存器后SYSTICK已经数到0则该位为1如果读取该位则清0
	@0xe000e014 重载值寄存器 数到0将要被重载的值
	@0xe000e018 当前值，写清0
	@0e000e01c
	@0-23 10MS的时间内倒计数的格数
	@ 30=(1教准不是准确的10MS)（0教准是准确的10MS）
	ldr r0, = 0xe000e010
	mov r1, # 0               
	str r1, [r0]            @ 关掉SYSTICK
	ldr r1, = 9000      @ 重载数
	str r1, [r0, # 4]       @ 写进重载数
	str r1, [r0, # 8]       @ 清0当前数          
	ldr r3, = 0xe000ed23  @systick优先级
	mov r1, # 240
	str r1, [r3]
	mov r1, # 0
	str r1, [r0] @ 开定时器
	
waisheshizhong:

	@AHBENR=0x40021014
	@0=DMA1,1=DMA2,2=SRAMEN,4=FLITFEN,6=CRCEN,8=FSMCEN,10=SDIOEN
	
	@APB2_ENR=0X40021018 0(AFIO)1(保留)2(PA)3(PB)4(PC)5(PD)6(PE)78(保留)
	@9(ADC1)10(ADC2)11(TIM1)12(SPI1)13(保留)14（USART1）15(保留)
	        ldr r0, = 0x40021018 @ APB2_ENR
	        ldr r1, = 0x3c
	        str r1, [r0]
	@APB1_ENR=0X4002101C
	@0=TIM2,1=TIM3,2=TIM4,3=TIM5,4=TIM6,5=TIM7,11=WWDG
	@14=SP12,15=SP13,17=UART3,19=UART4,20=UART5
	@21=I2C,22=I2C2,23=USB,25=CAN,27=BKPT,28=PWR,29=DACEN
		ldr r0, = 0X4002101C @ APB1_ENR
		ldr r1, = 0x03
		str r1, [r0]
	
zhongduankongzhi:
	@SETENA0=0XE000E100,SETENA1=0XE000E104 @中断使能
	@CLRENA0=0XE000E180,CLRENA1=0XE000E184 @中断除能
	@SETPEND0=0XE000E200,SETPPEND1=0XE000E204 @中断悬起
	@CLRPEND0=0XE000E280,CLRPEND1=0XE000E284  @中断解悬
	@ACTIVE0=0XE000E300,ACTIVE1=0XE000E304   @ 中断活动状态
	@0XE000E400-0XE000E43C 中断优先级阵列每个占8位
	@0XE000ED00=CPUID，0XE000ED04=中断控制及状态寄存器
	@0xe000ed08=向量表偏移，0xe000ed0c=应用程序中断及复位
	@0xe000ed10=系统控制，0XE000ED14=配置与控制
	@0xe000ed18-0xe000ed23=系统异常优先级阵列
	ldr r0, = 0xe000ed0c
	ldr r1, = 0x5fa0500
	str r1, [r0]
	ldr r0, = 0xe000e400
	mov r1, # 200
	str r1, [r0, # 28] @ tim2优先级
	mov r1, # 200
	str r1, [r0, # 29] @ tim3 优先级
	
	
	ldr r0, = 0xe000e100 @ 中断使能
	@0-31号使能，0x300000000 = TIM2和TIM3
	ldr r1, = 0x30000000
	str r1, [r0]
	
tim2chushihua:
	@tim1=0x40012c00
	@+0=CR1 控制寄存器
	@+4=CR2 控制寄存器2
	@+8=SMCR 从模式控制寄存器
	@+c=DIER 中断使能寄存器
	@+10=SR 状态寄存器
	@+14=EGR 事件产生寄存器
	@+18=CCMR1 捕获/比较模式寄存器1
	@+1C=CCMR2 捕获/比较模式寄存器2
	@+20=CCER 捕获/比较使能寄存器
	@+24=CNT 计数器
	@+28=PSC 预分频器
	@+2C=ARR 重载寄存器
	@+30=RCR 重复计数寄存器
	@+34=CCR1 捕获/比较寄存器1
	@+38=CCR2 捕获/比较寄存器2
	@+3C=CCR3 捕获/比较寄存器3
	@+40=CCR4 捕获/比较寄存器4
	@+44=BDTR 刹车/死区寄存器
	@+48=DCR DMA控制器
	@+4C=DMAR 连续模式的DMA地址
	@TIM2=0x40000000
	@18=CCMR1,18=OCMR1,1C=CCMR2,1C=OCMR2
	@CNT与CCR比较占空，ARR与PSC决定频率。主频除以PSC=计数频率

	ldr r0, = 0x40000000 @ tim2
	ldr r1, = 720
	str r1, [r0, # 0x28] @ 分频
	ldr r1, = 0xffffff
	str r1, [r0, # 0x2c] @ 重载
	mov r1, # 2
	str r1, [r0, # 0x0c] @开中断
	mov r1, # 0xf1
	str r1, [r0, # 0x18] @ 捕获/比较模式
	mov r1, # 3
	str r1, [r0, # 0x20] @ 下降沿捕获
	ldr r1, = 0x81
	str r1, [r0]
tim3chushihua:
	ldr r0, = 0x40000400 @ TIM3
	ldr r1, = 720
	str r1, [r0, # 0x28] @ PSC @分频
	ldr r1, =   0xffffff
	str r1, [r0, # 0x2c] @ ARR  @ 重载
	ldr r1, = 0x02
	str r1, [r0, # 0x0c]  @ 开中断
	ldr r1, = 0xf1
	str r1, [r0, # 0x18] @ CCMR 捕获 比较模式
	ldr r1, = 0x03
	str r1, [r0, # 0x20]  @ 下降沿捕获
	ldr r1, = 0x81
	str r1, [r0]         @ cr1 
	
IOshezhi:
	
	@PA=0x40010800 PB=0x40010c00 PC=0x40011000 
	@PD=0x40011400 PE=0x40011800 PF=0x40011c00 
	@ IO 1(通用推挽10M)2(通用推挽2M)3(通用推挽50M)
	@4(浮空输入)5(通用开漏输出10M)6(通用开漏输出2M)
	@7(通用开漏输出50M)8(上拉下拉输入)9(复用功能推挽输出10M)
	@A(复用功能推挽输出2M)B(复用功能推挽输出50M)C(保留)
	@D(复用功能开溜输出10M)E(复用功能开漏输出2M)F(复用功能开漏输出50M)
	@ 偏移0X8=IDR 输入数据寄存器
	@偏移0XC=ODR 输出数据寄存器
	@偏移0X10=BSRR IO开
	@偏移0X14=BRR  IO关
	ldr r0, = 0x40010c00
	ldr r1, = 0x44444344
	str r1, [r0, # 4]
	ldr r0, = 0x40010800
	ldr r1, = 0x54545444
	str r1, [r0]
	
zhucaidan:
	ldr r0, = 0xe000e010
	mov r1, # 0
	str r1, [r0]
	bl anjian
	ldr r0, = 0x20000030
	bl zhuan_shijinzhi
	ldr r0, [r12, # - 4]
	mov r1, # 6
	ldr r2, = 0x20000100
	bl zhuan_ascii
	mov r0, # 6
	bl xieshumaguan
	ldr r3, = 0x200004f8
	ldr r0, [r3]
	ldr r1, = caidian
	ldr lr, [r1]
	lsl r0, # 2
	ldr r2, [r1, r0]
	mov pc, r2
dd1:
	bx lr
dd2:
	bx lr
dd3:
	bx lr
dd4:
        push {r0-r1,lr}
        ldr r0, = jidianqipb10
        mov r1, # 0
        str r1, [r0]
	bl qingchuanjian
        pop {r0-r1,pc}
dd5:
	bx lr
dd6:
	bx lr
dd7:
	push {r0-r1,lr}
	ldr r0, = jidianqipb10
	mov r1, # 1
	str r1, [r0]
	bl qingchuanjian
	pop {r0-r1,pc}
dd8:
	bx lr
dd9: 
	bx lr
dd10:
	bx lr
dd11:
	bx lr
dd12:
	bx lr
dd13:
	bx lr
dd14:
	bx lr
dd15:
	bx lr
dd16:
	        push {r0-r1,lr}
	        ldr r0, = 0x20000030
	        ldrh r1, [r0, # 2]
	        add r1, # 1
	        cmp r1, # 900
	        it cs
	        movcs r1, # 0
	        strh r1, [r0, # 2]
	        bl qingchuanjian
	        pop {r0-r1,pc}
dd17:
	        push {r0-r1,lr}
	        ldr r0, = 0x20000030
	        ldrh r1, [r0, # 2]
	        sub r1, # 1
	        cmp r1, # 900
	        it hi
	        movhi r1, # 0
	        strh r1, [r0, # 2]
	        bl qingchuanjian
	        pop {r0-r1,pc}
dd18:
	bx lr
dd19:
	push {r0-r1,lr}
	ldr r0, = 0x20000030
	ldrh r1, [r0]
	add r1, # 1
	cmp r1, # 900
	it cs
	movcs r1, # 0
	strh r1, [r0]
	bl qingchuanjian
	pop {r0-r1,pc}
dd20:
	bx lr
dd21:
	bx lr
dd22:
	push {r0-r1,lr}
	ldr r0, = 0x20000030
	ldrh r1, [r0]
	sub r1, # 1
	cmp r1, # 900
	it hi
	movhi r1, # 0
	strh r1, [r0]
	bl qingchuanjian
	pop {r0-r1,pc}
dd23:
	bx lr
dd24:
	bx lr
dd25:
	bx lr
dd26:
	bx lr
dd27:
	bx lr
dd28:
	bx lr
dd29:
	bx lr
dd30:
	bl qingchuanjian
	mov r11, # 0x11
	ldr r0, = 0xe000e010
	mov r1, # 3
	str r1, [r0]	
zhuye:
	bl anjian
	ldr r0, = 0x200004f8
	ldr r0, [r0]
	cmp r0, # 2
	beq zhucaidan
	ldr r2, = 0x20000030
	ldrh r0, [r2]
	ldr r1, [r2, # 2]
	bl dingshikaiguan
        ldr r0, = 0x20000014
        bl zhuan_shijinzhi
        ldr r0, [r12, # - 4]
	mov r1, # 6
        ldr r2, = 0x20000100
        bl zhuan_ascii
        mov r0, # 6
        bl xieshumaguan
	b zhuye

zhuan_shijinzhi:   @ R0=要转换的数的地址
	push {r0-r9,lr}
	mov r12, sp
	sub sp, # 0x04	
	ldrh r8, [r0]
	ldrh r2, [r0, # 2]
	movw r3, # 1000
	mul r2, r2, r3
	add r2, r2, r8
	str r2, [sp]
	mov sp, r12
	pop {r0-r9,pc}
zhuan_ascii: @ 入口R0=数据 R1= 长度 R2=出口
	push {r0-r7,lr}
	ldr r7, = shumaguanmabiao
	mov r5, # 10
xunhuanqiuma:
	udiv r4, r0, r5
	mul r6, r4, r5
	sub r3, r0, r6
	ldrb r6, [r7, r3]
	strb r6, [r2], # 1
	mov r0, r4
	subs r1, # 1
	bne xunhuanqiuma
	pop {r0-r7,pc}

xie595:    @ 入口0X20000000
	
	@74HC595 11=输入锁存 12=输出锁存 14=数据
	push {r0-r6,lr}
	ldr r0, =  0x4221018c @ 位带地址  
	mov r1, # 1       @ 1
	mov r2, # 0          @ 0
	ldr r3, = 0x22000000 @ 0x20000000的位带
	mov r4, # 16         @ 写两个8位
xunhuan595:
	str r2, [r0, # 0x08] @ 595_11 输入锁存
	ldr r5, [r3], # 4    @ 取出一位的数据
	str r5, [r0]         @14脚输出数据
	str r1, [r0, # 0x08] @ 锁存
	subs r4, # 1         
	bne xunhuan595       @循环16次
	str r2, [r0, # 0x10] @ 12输出锁存
	str r1, [r0, # 0x10] 
	pop {r0-r6,pc}      @ 弹出各寄存器返回
	
qingchuanjian:
	push {r0-r1,lr}
	ldr r0, = 0x200004f8
	mov r1, # 0
	str r1, [r0]
	ldr r0, = 0x20000500
	str r1, [r0]
	pop {r0-r1,pc}
anjian:
	push {r0-r12,lr}
	ldr r7, = 0x20000600
	ldr r3, = 0x20000500
	ldr r5, = hongwaimabiao
	mov r6, # 30        @ 按键数量
panduananjian:
	ldr r4, [r5], # 4    @ 取出红外码表里面的码
	ldr r2, [r3]          @ 取出解码后的码
	cmp r2, r4           @ 比较两个码
	ittt eq
	ldreq r2, = 0x200004f8
	streq r6, [r2]
	popeq {r0-r12,pc}
	subs r6, # 1
	bne panduananjian
	pop {r0-r12,pc}
xieshumaguan: @ r0位数
	push {r0-r12,lr}
	ldr r7, = 0x20000100
	ldr r8, = shuaxinbiao
	ldr r6, = 0x20000000

xianshi:
	ldrb r5, [r8], # 1
	ldrb r2, [r7], # 1
	strb r5, [r6]
	strb r2, [r6, # 0x01]
	bl xie595
	subs r0, # 1
	bne xianshi
	pop {r0-r12,pc}
dingshikaiguan:  @ 入口 r0= 开时间 r1= 关时间
	push {r0-r8,lr}
	ldr r7, = 0x2000001c
	ldr r8, = 0x20000014
	ldr r5, [r7]
	ldr r2, = jidianqipb10
	ldr r6, [r2]
	cmp r6, # 1
	bne guanjian
kaijian:
	subs r1, r5
	bne dskgfanhui
	mov r3, # 0
	str r3, [r7]
	mov r3, # 0
	str r3, [r2]
	b dskgfanhui
guanjian:
	subs r0, r5
	bne dskgfanhui
	mov r3, # 1
	str r3, [r2]
	mov r3, # 0
	str r3, [r7]
dskgfanhui:
	strh r0, [r8]
	strh r1, [r8, # 2]
	pop {r0-r8,pc}

	
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
systickdingshiqi:	              @ SYSTICK定时期中断服务函数
	push {r0-r10,lr}
	ldr r0, = 0xe000ed04
	ldr r1, = 0x2000000
	str r1, [r0]
	
	ldr r2, = 0x20000010
	ldr r8, = 0x2000001c
	ldr r9, = 0x20000018
	ldr r3, [r9]
	ldrh r0, [r8]
	ldr r1, [r2]
	add r1, # 1
	cmp r1, # 1000
	itt cs
	movcs r1, # 0
	addcs r3, # 1
	cmp r3, # 60
	itt cs
	movcs r3, # 0
	addcs r0, # 1
	str r1, [r2]
	str r3, [r9]
	strh r0, [r8]
	pop {r0-r10,pc}
tim2dingshiqi:
	push {r0-r12,lr}
	ldr r2, = 0x200004fc
	ldr r0, = 0x40000034
	ldr r3, [r2]
	ldr r1, [r0]  @ 读取时间
	cmp.w r1, # 0xe000
	bhi tim2fanhui
	cmp.w r1, # 0x1000
	ittt hi
	ldrhi r4, = 0x2200a000
	strhi r4, [r2]
	bhi tim2fanhui

	cmp r1, # 0xff
	itttt hi
	ldrbhi r5, [r2, # - 0x0c]
	addhi r5, # 1
	strbhi r5, [r2, # - 0x0c]
	bhi tim2fanhui
	cmp r1, # 0x90
	itttt hi
	movhi r6, # 1
	strhi r6, [r3], # 4
	strhi r3, [r2]
	bhi tim2fanhui

	cmp r1, # 0x50
	ittt hi
	movhi r6, # 0
	strhi r6, [r3], # 4
	strhi r3, [r2]

tim2fanhui:
	ldr r0, = 0x40000024
	mov r1,  # 0
	str r1, [r0]
	pop {r0-r12,pc}
tim3dingshiqi:
	push {r0-r12,lr}
	ldr r0, = 0x40000434
	ldr r1, [r0]          @ 取出315M时间
	ldr r2, = 0x200005e0   @ 位带地址存储地址
	ldr r5, [r2]           @ 取出位带地址
	ldr r7, [r2, # 0x04]   @315M码数据长度
	ldr r3, = 0x3ff        
	cmp r1, r3
	bhi tim3fanhui          @ 检测引导码，0x300-0x3ff之间
	cmp r1, # 0x300
	itt hi
	movhi r6, # 1
	strhi r6, [r2, # 0x08]   @ 保存引导码标记
	ldr r6, [r2, # 0x08]      @ 取出引导码标记
	cmp r6, # 1             
	bne tim3fanhui           @ 检测到引导码
	cmp r1, # 0xff
	bhi tim3fanhui
qu315ma:                          @ 取出数据码
	cmp r1, # 0x9f
	ittee hi
	movhi r4, # 0
	strhi r4, [r5], # 0x04
	movls r4, # 1
	strls r4, [r5], # 0x04
	str r5, [r2]
	subs r7, # 1
	bne tim3fanhui  @每进一次中断取出一位的数据存到位带地址
	mov r7, # 24
	ldr r8, = 0x2200c000
	str r8, [r2]
	ldr r9, =  0xbf7b7d         @按键1
	ldr r10, = 0xf77b7d         @按键2
	ldr r11, [r2, # 0x20]       @取出的315码码
	cmp r11, r9                 @和315码比较
	ittt eq                     @ 相等打开继电器
	ldreq r0, = jidianqipb10
	moveq r12, # 1
	streq r12, [r0]
	cmp r11, r10                @ 和315码比较
	ittt eq                     @ 相等关闭继电器
	ldreq r0, = jidianqipb10
	moveq r12, # 0
	streq r12, [r0]
qinganjian315:
	mov r1, # 0                 
	str r1, [r2, # 0x20]         @清除315码储存区域
	str r1, [r2, # 0x04]         @清除数据长度内存区域
	str r1, [r2, # 0x08]         @清除引导码标记
tim3fanhui:
	str r7, [r2, # 0x04]          @ 保存数据长度减1后到内存
	ldr r0, = 0x40000424          
	mov r1, # 0
	str r1, [r0]
	pop {r0-r12,pc}
	
	
