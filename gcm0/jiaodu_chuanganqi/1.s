	@@ 单片机stm32f030f4p6
	@旋转变压器解码
	@作者：yjmwxwx
	@时间：2021-02-23
	@编译器：ARM-NONE-EABI
	.thumb
	.syntax unified
	.section .data
yjmwxwx:
	.ascii "yjmwxwx-20210223"
	.align 4
zheng_xian_biao:
	.short 28,29,31,33,34,36,38,39,41,42,44,45,46,48,49,50,51,52,52,53,54,54,55,55,55,55,55,55,55,54,54,53,52,52,51,50,49,48,46,45,44,42,41,39,38,36,34,33,31,29,28,26,24,22,21,19,17,16,14,13,11,10,9,7,6,5,4,3,3,2,1,1,0,0,0,0,0,0,0,1,1,2,3,3,4,5,6,7,9,10,11,13,14,16,17,19,21,22,24,26,28	
	.align 4
fir_xi_shu:
	.int -27,154,-105,-507,941,592,-3407,2027,16715,16715,2027,-3407,592,941,-507,-105,154,-27
cordic_yong_cos_sin:
	.int 0x0000,0x4000,0x2D41,0x2D41,0x3B20,0x187D,0x3EC5,0x0C7C,0x3FB1,0x0645,0x3FEC,0x0323,0x3FFB,0x0192,0x3FFE,0x00C9,0x3FFF,0x0064,0x3FFF,0x0032,0x3FFF,0x0019,0x3FFF,0x000C,0x3FFF,0x0006,0x3FFF,0x0003,0x3FFF,0x0001,0x3FFF,0x0000
cordic_yong_atan_biao:
	.int 0x00006487,0x00003B58,0x00001F5B,0x00000FEA,0x000007FD,0x000003FF,0x000001FF,0x000000FF,0x0000007F,0x0000003F,0x0000001F,0x0000000F,0x00000007,0x00000003,0x00000001,0x00000000
	.align 4
	.equ STACKINIT,        	        0x20001000
	.equ shangci_buchang,		0x20000080
	.equ shang_ci_i,		0x20000084
	.equ zhengfan_zhuan,		0x20000088
	.equ jiaodu_cha, 		0x2000008c
	.equ shangci_jiaodu,		0x20000090
	.equ shangci_jiaodu_cha,	0x20000094
	.equ cos_cha,			0x20000098
	.equ sin_cha,			0x2000009c
	.equ jiaodu_a,			0x200000a0
	.equ jiaodu_b,			0x200000a4
	.equ zhuansu,			0x200000b0
	.equ jishu,			0x200000b4
	.equ cos,			0x200000b8
	.equ sin,			0x200000bc
	.equ cos_jiaozheng,		0x200000e0
	.equ sin_jiaozheng,		0x200000e4
	.equ jiaodu_jiaozheng,		0x200000e8
	.equ jiaodu,			0x200000f0
	.equ dianyabiao,		0x20000100
	.equ lvboqizhizhen,		0x20000300
	.equ lvboqihuanchong,		0x20000308
	.equ lvboqizhizhen1,		0x20000510
	.equ lvboqihuanchong1,		0x20000518
	.equ lvboqizhizhen2,		0x20000900
	.equ lvboqihuanchong2,		0x20000908
	.equ lvboqizhizhen3,		0x20000b10
	.equ lvboqihuanchong3,		0x20000b18
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
	.word _systickzhongduan +1           @ 15
	.word aaa +1     @ _wwdg +1          @ 0
	.word aaa +1     @_pvd +1            @ 1
	.word aaa +1     @_rtc +1            @ 2
	.word aaa +1     @_flash +1          @ 3
	.word aaa +1	@ _rcc + 1           @ 4
	.word aaa +1      @_exti0_1  +1      @ 5
	.word aaa +1      @ _exti2_3 +1      @ 6
	.word aaa +1       @_exti4_15 +1     @ 7
	.word aaa +1                         @ 8
	.word aaa +1	@__dma_wan  +1	     @ 9
	.word aaa +1    @_dma1_2_3 +1        @ 10
	.word aaa +1       @_dma1_4_5 +1     @ 11
	.word aaa +1	 @_adc1 +1           @ 12
	.word aaa +1       @_tim1_brk_up +1  @ 13
	.word aaa +1        @ _tim1_cc +1    @ 14
	.word aaa +1         @_tim2 +1       @ 15
	.word aaa +1          @_tim3 +1      @ 16
	.word aaa +1                         @ 17
	.word aaa +1		             @ 18
	.word aaa +1	@_tim14 +1           @ 19
	.word aaa +1                         @ 20
	.word aaa +1         @_tim16 +1      @ 21
	.word aaa +1         @_tim17 +1      @ 22
	.word aaa +1          @_i2c   +1     @ 23
	.word aaa +1                         @ 24
	.word aaa +1           @_spi   +1    @ 25
	.word aaa +1                         @ 26
	.word aaa +1         @_usart1 +1     @ 27
	.align 2
_start:
shizhong:
        ldr r2, = 0x40022000   @FLASH访问控制
        movs r1, # 0x32
        str r1, [r2]           @FLASH缓冲 缓冲开启
        ldr r0, = 0x40021000 @ rcc
	ldr r1, = 0x10001
        str r1, [r0]
denghse:
        ldr r1, [r0]
        lsls r1, r1, # 14
        bpl denghse
dengpllguan:
        ldr r1, [r0]
	lsls r1, r1, # 6
	bmi dengpllguan
	ldr r1, = 0x150002	@0x150002
	mov r0, r0
	str r1, [r0, # 0x04]
	mov r0, r0
	ldr r1, = 0x1010000
	mov r0, r0
	str r1, [r0]

dengpll:
        ldr r1, [r0]
	lsls r1, # 6
	bpl dengpll


	ldr r1, = 100
	str r1, [r0, # 0x30]
	
_waisheshizhong:                         @ 外设时钟
        @+0x14=RCC_AHBENR
	@ 0=DMA @ 2=SRAM @ 4=FLITF@ 6=CRC @ 17=PA @ 18=PB @ 19=PC @ 20=PD @ 22=PF
	ldr r0, = 0x40021000
	ldr r1, = 0x60001
        str r1, [r0, # 0x14]

        @+0x18外设时钟使能寄存器 (RCC_APB2ENR)
        @0=SYSCFG @5=USART6EN @9=ADC @11=TIM1 @12=SPI1 @14=USART1 @16=TIM15 @17=TIM16 @18=TIM17 @22=DBGMCU
        ldr r1, = 0x1a00
	str r1, [r0, # 0x18]
	@+0X1C=RCC_APB1ENR
	@ 1=TIM3 @ 4=TIM6 @ 5=TIM7 @ 8=TIM14 @ 11=WWDG @ 14=SPI @ 17=USRT2 @ 18=USART3 @ 20=USART5 @ 21=I2C1
	@ 22=I2C2 @ 23=USB @ 28=PWR
        ldr r2, = 0x902
        str r2, [r0, # 0x1c]

_neicunqingling:
	ldr r0, = 0x20000000
	movs r1, # 0
	ldr r3, = 0x1000
_neicunqinglingxunhuan:
	subs r3, # 4
	str r1, [r0, r3]
	bne _neicunqinglingxunhuan

_waishezhongduan:				@外设中断
	@0xE000E100    0-31  写1开，写0没效
	@0XE000E180    0-31 写1关，写0没效
	@0XE000E200    0-31 挂起，写0没效
	@0XE000E280    0-31 清除， 写0没效
	ldr r0, =  0xe000e100
	ldr r1, = 0x200 @0x10200  @ 0x10000
	str r1, [r0]
@_kanmengou:
@	ldr r0, = 0x40003000
@	ldr r1, = 0x5555
@	str r1, [r0]
@	movs r1, # 7
@	str r1, [r0, # 4]
@	ldr r1, = 0xfff
@	str r1, [r0, # 8]
@	ldr r1, = 0xaaaa
@	str r1, [r0]
@	ldr r1, = 0xcccc
@	str r1, [r0]
	
io_she_zhi:
	@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	@a(0x48000000)b(0x48000400)c(0x48000800)d(0x48000c00)f(0x48001400)
	@ 输入（00），通用输出（01），复用功能（10），模拟（11）
	@偏移0x4 = 端口输出类型 @ （0 推挽），（ 1 开漏）
	@偏移0x8 = 输出速度  00低速， 01中速， 11高速
	@偏移0xC = 上拉下拉 (00无上下拉，  01 上拉， 10下拉)
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

	ldr r0, = 0x48000000
	ldr r1, = 0x2820aa4f 
	str r1, [r0]
	ldr r1, = 0x0c30ff00
	str r1, [r0, # 0x08]
	ldr r1, = 0x200
	str r1, [r0, # 0x24]
		
	ldr r0, = 0x48000400
	movs r1, # 0x08 @ pb1
	str r1, [r0]
	movs r1, # 0x20
	str r1, [r0, # 0x20]

spi_chushihua:
	ldr r0, = 0x40013000
	ldr  r1, = 0xf08
	str r1, [r0, # 0x04]
	ldr r1, = 0x4c
	str r1, [r0]
	
	
_adcchushihua:
	ldr r0, = 0x40012400  @ adc基地址
	ldr r1, = 0x80000000
	str r1, [r0, # 0x08]  @ ADC 控制寄存器 (ADC_CR)  @adc校准
_dengadcjiaozhun:
	ldr r1, [r0, # 0x08]
	movs r1, r1
	bmi _dengadcjiaozhun   @ 等ADC校准
	movs r1, # 1
	str r1, [r0]
_kaiadc:
	ldr r1, [r0, # 0x08]
	movs r2, # 0x01
	orrs r1, r1, r2
	str r1, [r0, # 0x08]
_deng_adc_wen_ding:
	ldr r1, [r0]
	lsls r1, r1, # 31
	bpl _deng_adc_wen_ding @ 等ADC稳定
_tongdaoxuanze:
	ldr r1, = 0x40000000
	str r1, [r0, # 0x10]
	movs r1, # 0x03
	str r1, [r0, # 0x28]    @ 通道选择寄存器 (ADC_CHSELR)
	ldr r1, = 0x803
	str r1, [r0, # 0x0c]    @ 配置寄存器 1 (ADC_CFGR1)
	movs r1, # 0
	str r1, [r0, # 0x14]    @ ADC 采样时间寄存器 (ADC_SMPR)
	ldr r1, [r0, # 0x08]
	ldr r2, = 0x04         @ 开始转换
	orrs r1, r1, r2
	str r1, [r0, # 0x08]    @ 控制寄存器 (ADC_CR)

dmachushihua:
	@+0=LSR,+4=IFCR,
	@+8=CCR1,+c=CNDTR1,+10=CPAR1+14=CMAR1,
	@+1c=CCR2,+20=CNDTR2,+24=CPAR2,+28=CMAR2
	@+30=CCR3,+34=CNDTR3,+38=CPAR2,+3c=CMAR3
	@+44=CCR4,+48=CNDTR4,+4c=CPAR4,+50=CMAR4
	@+58=CCR5,+5c=CNDTR5,+60=CPAR5,+64=CMAR5
	@+6C=CCR6,+70=CNDTR6,+74=CPAR6,+78=CMAR6
	@+80=CCR7,+84=CNDTR7,+88=CPAR7,+8c=CMAR7

	@tim1ch3DMA
	ldr r0, = 0x40020000
	ldr r1, = 0x40012c3c @ 外设地址
	str r1, [r0, # 0x60]
	ldr r1, = zheng_xian_biao @ 储存器地址
	str r1, [r0, # 0x64]
	ldr r1, = 100             @点数
	str r1, [r0, # 0x5c]
	ldr r1, = 0x35b1         @ 储存到外设
	str r1, [r0, # 0x58]
	@ adc dma
	ldr r0, = 0x40020000
	ldr r1, = 0x40012440
	str r1, [r0, # 0x10]
	ldr r1, = dianyabiao
	str r1, [r0, # 0x14]
	ldr r1, =  100
	str r1, [r0, # 0x0c]
	ldr r1, = 0xaa1		@ 5a1
	str r1, [r0, # 0x08]

_systick:	@ systick定时器初始化

	ldr r7, = 0xe000e010
	ldr r6, = 5600
	str r6, [r7, # 4]
	str r6, [r7, # 8]
	movs r6, # 0x07
tim1chushiha:
	ldr r0, = 0x40012c00 @ tim1_cr1
	movs r1, # 0
	str r1, [r0, # 0x28] @ psc
	ldr r1, = 56
	str r1, [r0, # 0x2c] @ ARR
	movs r1, # 0x20
	str r1, [r0, # 0x04] @ TRGO
	movs r1, # 0x38
	str r1, [r0, # 0x18] @ ccmr1 cc1
	movs r1, # 56
	str r1, [r0, # 0x34]
	ldr r1, = 0x68
	str r1, [r0, # 0x1c] @ ccmr2  CC3
	ldr r1, = 0x500    @  CC3
	str r1, [r0, # 0x20] @ ccer
	ldr r1, = 0x8000
	str r1, [r0, # 0x44] @ BDTR
	ldr r1, = 0x800 @ CC3 DMA
	str r1, [r0, # 0x0c] @ DIER
	ldr r1, = 0x81
	str r1, [r0]
	str r6, [r7]	@systick 开
	

	
ting:
        ldr r0, = 0x200001ac @sin_zheng
	ldr r1, = 0x20000274 @sin_fu
	ldr r3, = 0x200001a8 @cos_zheng
	ldr r2, = 0x20000270 @cos_fu
	ldr r4, [r0]
	ldr r5, [r1]
	ldr r6, [r2]
	ldr r7, [r3]
	subs r4, r4, r5
	subs r6, r6, r7
		
	b ting

__jisuan_zhuansu:
	@角度差0.01秒
	push {r0-r3,lr}
	ldr r0, = jiaodu_cha
	ldr r1, = 18849555
	ldr r0, [r0]
	movs r0, r0
	bpl __suan_zhuansu
	mvns r0, r0
	adds r0, r0, # 1
__suan_zhuansu:	
	ldr r2, = 113097335
	bl __chengfa
	bl __chufa64
	ldr r2, = zhuansu
	str r1, [r2]
	pop {r0-r3,pc}
	
__xiang_wei_xuan_zhuan:
	push {r2-r7,lr}
	@R0=R,R1=I
	mov r3, r0
	mov r0, r1
	ldr r4, = cos_jiaozheng         @cos
	ldr r5, = sin_jiaozheng         @sin
	ldr r4, [r4]
	ldr r5, [r5]
	cmp r4, # 0
	bne __xuanzhuan_fangxiang_jiance
	cmp r5, # 0
	bne __xuanzhuan_fangxiang_jiance
	mov r1, r0
	mov r0, r3
	pop {r2-r7,pc}
__xuanzhuan_fangxiang_jiance:	
	movs r4, r4
	bpl __xuan_zhuan_xiang_wei
	mov r6, r4
	mov r7, r5
	mov r4, r7
	mov r5, r6
__xuan_zhuan_xiang_wei:
	mov r6, r4
	mov r7, r5
	muls r4, r4, r3         @x*cos
	muls r6, r6, r0         @y*cos
	muls r5, r5, r3         @x*sin
	muls r7, r7, r0         @y*sin
	asrs r4, r4, # 15
	asrs r5, r5, # 15
	asrs r6, r6, # 15
	asrs r7, r7, # 15

	subs r4, r4, r7         @x
	adds r6, r6, r5         @y
	mov r1, r6		@i
	mov r0, r4		@r
	pop {r2-r7,pc}
__cordic_cos_sin:
	@入口R0
	@出口R0=COS，R1=SIN
	@ x= 0x4dba
	@ r1=x,r2=y,r0=z,r4=d,r5=k,r6=cordic_mabiao

	push {r2-r7,lr}
	mov r2, r8
	mov r3, r9
	push {r2-r3}
	movs r5, # 0
	mov r2, r5
	mov r4, r5
	ldr r1, = 0x4dba
cordicxunhuan:		 @ 循环
	asrs r4, r0, # 15
	@ x
	mov r7, r2
	asrs r2, r2, r5
	eors r2, r2, r4
	subs r2, r2, r4
	subs r3, r1, r2
	@ y
	mov r6, r1
	asrs r1, r1, r5
	eors r1, r1, r4
	subs r1, r1, r4
	adds r7, r7, r1
	@ z
	ldr r6, = cordic_yong_atan_biao
	lsls r2, r5, # 2
	ldr r1, [r6, r2]
	eors r1, r1, r4
	subs r1, r1, r4
	subs r0, r0, r1
	mov r1, r3
	mov r2, r7
	adds r5, # 1
	cmp r5, # 16
	bne cordicxunhuan
	mov r0, r3
	mov r1, r7
	pop {r2-r3}
	mov r8, r2
	mov r9, r3
	pop {r2-r7,pc}
__atan2_ji_suan:
	@入口R0=实部，R1=虚部，结果=R0
	push {r2-r7,lr}
	mov r2, r8
	push {r2}
	ldr r3, = cordic_yong_cos_sin
	movs r2, # 10
	muls r0, r0, r2
	muls r1, r1, r2
	movs r2, # 0
	mov r8, r2
	ldr r4, = 9000
	lsls r4, r4, # 15
__cordic_atan2_xun_huan:
__du_cos_sin:
	ldr r5, [r3]	@cos
	adds r3, r3, # 4
	mov r7, r5
	ldr r6, [r3]	@sin
	adds r3, r3, # 4
	mov r2, r6
	muls r5, r5, r0         @x*cos
	muls r2, r2, r0         @x*sin
	muls r6, r6, r1         @y*sin
	muls r7, r7, r1         @y*cos
	movs r1, r1
	bpl __ni_shi_zhen_zhuan
__shun_shi_zhen_zhuan:
	subs r5, r5, r6
	adds r7, r7, r2
	mov r6, r8
	adds r6, r6, r4
	mov r8, r6
	b __xuan_zhuan_wan
__ni_shi_zhen_zhuan:
	adds r5, r5, r6
	subs r7, r7, r2
	mov r6, r8
	subs r6, r6, r4
	mov r8, r6
__xuan_zhuan_wan:
	ldr r6, = cordic_yong_cos_sin
	movs r2, # 32
	lsls r2, r2, # 2
	adds r6, r6, r2
	asrs r5, r5, # 14
	asrs r7, r7, # 14
	mov r0, r5
	mov r1, r7
	lsrs r4, r4, # 1	@旋转
	cmp r3,	r6
	bne __cordic_atan2_xun_huan
	mov r0, r8
	mvns r0, r0
	adds r0, r0, # 1
	asrs r0, r0, # 15      @除32768等于角度
	pop {r2}
	mov r8, r2
	pop {r2-r7,pc}
	.ltorg


	
__xiangwei_jiaozheng:
	push {r0-r5,lr}
	ldr r0, = jiaodu_jiaozheng
	ldr r1, = 9000
	ldr r0, [r0]
	ldr r2, = 51471
	movs r0, r0
	bpl __jiaozheng_jiaodu_bushi0
	mvns r0, r0
	adds r0, r0, # 1
	movs r4, # 1
	b __ji_suan_jiaozheng_jiaodu
__jiaozheng_jiaodu_bushi0:
	movs r4, # 0
__ji_suan_jiaozheng_jiaodu:	
	ldr r5, = 10000
	muls r0, r0, r5
	bl _chufa
	muls r0, r0, r2
	mov r1, r5
	bl _chufa
	cmp r4, # 1
	bne __suan_cos_sin
	mvns r0, r0
	adds r0, r0, # 1
__suan_cos_sin:
	bl __cordic_cos_sin	
	ldr r2, = cos_jiaozheng
	ldr r3, = sin_jiaozheng
	str r0, [r2]
	str r1, [r3]
	pop {r0-r5,pc}


__chuan_gan_qi_lvbo:
	@50*4偏移
	push {r2-r7,lr}
	mov r4, r8
	mov r5, r9
	push {r4-r5}
	ldr r0, = 0x200001ac @sin_zheng
	ldr r1, = 0x20000274 @sin_fu
	ldr r2, = 0x200001a8 @cos_zheng
	ldr r3, = 0x20000270 @cos_fu
	ldr r4, [r0]
	ldr r5, [r1]
	ldr r6, [r2]
	ldr r7, [r3]
	subs r4, r4, r5
	subs r6, r6, r7
	mov r8, r6
	mov r9, r4
	bl __xiangwei_jiaozheng
	mov r0, r6
	mov r1, r4
	bl __xiang_wei_xuan_zhuan
	mov r6, r0
	mov r4, r1
	mov r1, r4
	ldr r2, = lvboqizhizhen
	ldr r0, =lvboqihuanchong
	bl __lv_bo_qi
	mov r1, r6
	mov r4, r0
	ldr r2, = lvboqizhizhen1
	ldr r0, = lvboqihuanchong1
	bl __lv_bo_qi
	mov r1, r4
	ldr r2, = cos_cha
	ldr r3, = sin_cha
	mov r4, r8
	mov r5, r9
	str r4, [r2]
	str r5, [r3]
	pop {r4-r5}
	mov r8, r4
	mov r9, r5
	pop {r2-r7,pc}
	.ltorg	
__fir_lvbo:
	@入口R0滤波指针，R1=滤波器缓冲区，R2=数据
	push {r3-r7,lr}
	mov r3, r8
	mov r4, r9
	mov r5, r10
	mov r6, r11
	mov r7, r12
	push {r3-r7}
	mov r12, sp
        movs r7, # 18
	mov r5, r0
	ldr r0, [r5]
	mov r3, r0
	lsls r3, r3, # 2
	str r2, [r1, r3]
	adds r0, r0, # 1
	str r0, [r5]
	cmp r0, r7
	bne __huanchong_leijia1
	movs r0, # 0
	str r0, [r5]
__huanchong_leijia1:	
	ldr r3, = fir_xi_shu
	mov sp, r1
	mov r10, r3

	@0-3
	pop {r0-r3}
	mov r11, sp
	mov sp, r10
	pop {r4-r7}
	mov r10, sp
	muls r0, r0, r4
	muls r1, r1, r5
	muls r2, r2, r6
	muls r3, r3, r7
	asrs r0, r0, # 15
	asrs r1, r1, # 15
	asrs r2, r2, # 15
	asrs r3, r3, # 15
	adds r0, r0, r1
	adds r0, r0, r2
	adds r0, r0, r3
	mov r8, r0
	@4-7
	mov sp, r11
        pop {r0-r3}
	mov r11, sp
	mov sp, r10
	pop {r4-r7}
	mov r10, sp
	muls r0, r0, r4
	muls r1, r1, r5
	muls r2, r2, r6
	muls r3, r3, r7
	asrs r0, r0, # 15
	asrs r1, r1, # 15
	asrs r2, r2, # 15
	asrs r3, r3, # 15
	adds r0, r0, r1
	adds r0, r0, r2
	adds r0, r0, r3
	mov r9, r0
	@8-11
        mov sp, r11
	pop {r0-r3}
	mov r11, sp
	mov sp, r10
	pop {r4-r7}
	mov r10, sp
	muls r0, r0, r4
	muls r1, r1, r5
	muls r2, r2, r6
	muls r3, r3, r7
	asrs r0, r0, # 15
	asrs r1, r1, # 15
	asrs r2, r2, # 15
	asrs r3, r3, # 15
	adds r0, r0, r1
	adds r0, r0, r2
	adds r0, r0, r3
	mov r1, r8
	mov r2, r9
	mov sp, r12
	push {r0-r2}
	mov r12, sp
	@12-15
        mov sp, r11
	pop {r0-r3}
	mov r11, sp
	mov sp, r10
	pop {r4-r7}
	mov r10, sp
	muls r0, r0, r4
	muls r1, r1, r5
	muls r2, r2, r6
	muls r3, r3, r7
	asrs r0, r0, # 15
	asrs r1, r1, # 15
	asrs r2, r2, # 15
	asrs r3, r3, # 15
	adds r0, r0, r1
	adds r0, r0, r2
	adds r0, r0, r3
	mov r9, r0
	@16-23
        mov sp, r11
	pop {r0-r1}
	mov r11, sp
	mov sp, r10
	pop {r4-r5}
	mov r10, sp
	muls r0, r0, r4
	muls r1, r1, r5
	asrs r0, r0, # 15
	asrs r1, r1, # 15
	adds r0, r0, r1
	mov r1, r9
	mov sp, r12
	pop {r2-r4}
	adds r0, r0, r1
	adds r0, r0, r2
	adds r0, r0, r3
	adds r0, r0, r4

	pop {r3-r7}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	mov r11, r6
	mov r12, r7
	pop {r3-r7,pc}

	
		
__lv_bo_qi:
	@地址顺序：指针，累加值，缓冲区
	@入口R0=缓冲区，R1=数据, r2,=指针
	@出口R0
	push {r3-r6,lr}
	movs r4, # 128
	ldr r5, [r2]
	mov r3, r5
	lsls r3, r5, # 2
	ldr r6, [r0, r3]
	str r1, [r0, r3]
	adds r5, r5, # 1
	str r5, [r2]
	cmp r5, r4
	bne __huanchong_leijia
	movs r5, # 0
	str r5, [r2]
__huanchong_leijia:
	subs r0, r0, # 4
	ldr r5, [r0]
	adds r1, r1, r5
	subs r1, r1, r6
	str r1, [r0]
	asrs r0, r1, # 7	@128
	pop {r3-r6,pc}
	.ltorg
	











	

_chufa:				@软件除法
	@ r0 除以 r1 等于 商(r0)
	push {r1-r4,lr}
	cmp r0, # 0
	beq _chufafanhui
	cmp r1, # 0
	beq _chufafanhui
	mov r2, r0
	movs r3, # 1
	lsls r3, r3, # 31
	movs r0, # 0
	mov r4, r0
_chufaxunhuan:
	lsls r2, r2, # 1
	adcs r4, r4, r4
	cmp r4, r1
	bcc _chufaweishubudao0
	adds r0, r0, r3
	subs r4, r4, r1
_chufaweishubudao0:
	lsrs r3, r3, # 1
	bne _chufaxunhuan
_chufafanhui:
	pop {r1-r4,pc}
__chufa64:
	@64位除32位
	@ （R0=高32位R1=低32位）除（R2)= （R0高32）（R1低32）
	push {r3-r7,lr}
	cmp r2, # 0
	beq __chu_fa64_fan_hui0
	cmp r1, # 0
	bne __chu_fa64_ji_suan
	cmp r0, # 0
	beq __chu_fa64_fan_hui0
__chu_fa64_ji_suan:
	movs r4, # 0
	mov r7, r4
	mov r3, r4
	mov r5, r4
	movs r6, # 1
	lsls r6, r6, # 31
__chu_fa64_xun_huan:
	lsls r1, r1, # 1
	adcs r0, r0, r0
	adcs r4, r4, r4
	cmp r4, r2
	bcc __chu_fa_yi_wei
	adds r3, r3, r6
	adcs r5, r5, r7
	subs r4, r4, r2
__chu_fa_yi_wei:
	movs r6, r6
	beq __di_yi_wei
	lsrs r6, r6, # 1        @高32位移位
	bne __chu_fa64_xun_huan
	movs r7, # 1
	lsls r7, r7, # 31
	b __chu_fa64_xun_huan
__di_yi_wei:	            @低32位移位
	lsrs r7, r7, # 1
	bne __chu_fa64_xun_huan
	mov r0, r3
	mov r1, r5
	pop {r3-r7,pc}
__chu_fa64_fan_hui0:
	movs r0, # 0
	movs r1, # 0
	pop {r3-r7,pc}
__chengfa:
	@入R0 乘以 R1
	@出 R0高32 ， R1低32
	@0xffffffff*0xffffffff
	@4        F F F E 0 0 0 1			@4
	@3                F F F E 0 0 0 1		@3
	@2                F F F E 0 0 0 1		@2
	@1                        F F F E 0 0 0 1	@1
	@         F F F F F F F E 0 0 0 0 0 0 0 1
	push {r2-r7,lr}
	cmp r0, # 0
	beq __cheng_fa_fan_hui
	cmp r1, # 0
	beq __cheng_fa_fan_hui
__ji_suan_cheng_fa:
	mov r2, r0
	mov r3, r1
	lsrs r0, r0, # 16	@高16
	lsls r2, r2, # 16	@ 低16
	lsrs r2, r2, # 16
	lsrs r1, r1, # 16	@高16
	lsls r3, r3, # 16	@低16
	lsrs r3, r3, # 16
	mov r4, r2
	mov r5, r0
	muls r2, r2, r3		@1
	muls r0, r0, r3		@2
	muls r4, r4, r1		@3
	muls r5, r5, r1		@4
	mov r6, r0
	mov r7, r4
	lsls r0, r0, # 16	@2低32
	lsls r4, r4, # 16	@3低32
	lsrs r6, r6, # 16	@2高32
	lsrs r7, r7, # 16	@3高32
	movs r1, # 0
	adds r2, r2, r0		@低32
	adcs r6, r6, r1		@高32
	adds r2, r2, r4
	adcs r6, r6, r7
	adds r6, r6, r5
	mov r0, r6
	mov r1, r2
	pop {r2-r7,pc}
__cheng_fa_fan_hui:
	movs r0, # 0
	movs r1, # 0
	pop {r2-r7,pc}
__dai_yu_shu_chufa:	                         @软件除法
	@ r0 除以 r1 等于 商(r0)余R1
	push {r2-r4,lr}
	cmp r0, # 0
	beq __dai_yu_shu_chufafanhui
	cmp r1, # 0
	beq __dai_yu_shu_chufafanhui
	mov r2, r0
	movs r3, # 1
	lsls r3, r3, # 31
	movs r0, # 0
	mov r4, r0
__dai_yu_shu_chufaxunhuan:
	lsls r2, r2, # 1
	adcs r4, r4, r4
	cmp r4, r1
	bcc __dai_yu_shu_chufaweishubudao0
	adds r0, r0, r3
	subs r4, r4, r1
__dai_yu_shu_chufaweishubudao0:
	lsrs r3, r3, # 1
	bne __dai_yu_shu_chufaxunhuan
__dai_yu_shu_chufafanhui:
	        pop {r2-r4,pc}
_nmi_handler:
	bx lr
_hard_fault:
	bx lr
_svc_handler:
	bx lr
_pendsv_handler:
	bx lr
_systickzhongduan:
	push {r4-r7,lr}
	mov r3, r8
	mov r4, r9
	mov r5, r10
	mov r6, r11
	mov r7, r12
	push {r3-r7}
	ldr r0, = 0xe0000d04
	ldr r1, = 0x02000000
	str r1, [r0]                 @ 清除SYSTICK中断
	bl __chuan_gan_qi_lvbo
	ldr r2, = cos
	ldr r3, = sin
	str r0, [r2]		@r
	str r1, [r3]		@i
	
	bl __atan2_ji_suan
	ldr r4, = jiaodu
	ldr r5, = jiaodu_a
        movs r2, r0
	bpl __jiaodu_bushi_fu
	ldr r1, = 36000
	mvns r2, r2
	adds r2, r2, # 1
	subs r2, r1, r2
__jiaodu_bushi_fu:
	str r0, [r4]
	str r0, [r5]
	mov r8, r0

	ldr r1, = 0x4001300c
	strh r2, [r1]
	
	ldr r0, = cos_cha
	ldr r1, = sin_cha
	ldr r0, [r0]
	ldr r1, [r1]
	bl __atan2_ji_suan
@        movs r0, r0
@	bpl __jiaodu_bushi_fu1
@	ldr r1, = 36000
@	mvns r0, r0
@	adds r0, r0, # 1
@	subs r0, r1, r0
@__jiaodu_bushi_fu1:
	ldr r1, = jiaodu_b
	str r0, [r1]


	
	mov r7, r0
	mov r0, r8
	mov r8, r7
	
__led_jiance1:
	ldr r3, = 100
	ldr r2, = 0x48000000
	movs r1, # 0x08
	cmp r0, # 10
	bls __led_guan1
	cmp r0, r3
	bhi __led_guan1
	str r1, [r2, # 0x18]
	ldr r2, = 0x200000c0
	ldr r3, = 0x200000c4
	str r0, [r2]
	mov r1, r8
	str r1, [r3]
	b __jiaodu_buchang_jisuan
__led_guan1:
	str r1, [r2, # 0x28]
	

__jiaodu_buchang_jisuan:
	
	ldr r7, = 18000
	mov r5, r8
	mov r6, r0
	subs r6, r6, r5
	mvns r6, r6
	adds r6, r6, # 1
	ldr r3, = 0x200000d0
	ldr r4, = 0x200000d4
	movs r5, r6
	bpl __bao_cun_jiaodu_cha
	mvns r5, r5
	adds r5, r5, # 1
	b __bao_cun_jiaodu_cha
__bao_cun_jiaodu_cha:
	cmp r5, r7
	bhi __systick_fanhui
	str r0, [r3]
	str r5, [r4]
	ldr r3, = 0x200000c8
	str r6, [r3]
__pid:
	mov r7, r6
	mov r4, r6
__pid_bi_li:
	ldr r3, = 32768         @ KP
	muls r7, r7, r3
	asrs r7, r7, # 15
__pid_ji_fen:
	ldr r6, = shang_ci_i
	ldr r2, = 20		@ KI
	ldr r3, [r6]
	muls r4, r4, r2
	asrs r4, r4, # 15
	adds r4, r4, r3
	str r4, [r6]
@	adds r7, r7, r4
__zhengzhuan_buchang:
	ldr r5, = jiaodu_jiaozheng
	str r7, [r5]

__systick_fanhui:

__jiaodu_cha_jisuan:
	ldr r3, = shangci_jiaodu
	ldr r7, = 18000
	ldr r4, [r3]
	mov r9, r0
	mov r6, r0
	subs r6, r6, r4
	movs r2, r6
	bpl __baocun_jiaodu_cha
	mvns r2, r2
	adds r2, r2, # 1
__baocun_jiaodu_cha:
	cmp r2, r7
	bhi __tick_fanhui
	ldr r0, = lvboqihuanchong3
	ldr r2, = lvboqizhizhen3
	mov r1, r6
	bl __lv_bo_qi
	ldr r3, = jiaodu_cha
	str r0, [r3]
	movs r0, r0
	bpl __jiance_zhuangtai
	movs r4, # 1
__jiance_zhuangtai:
	cmp r0, # 0
	bne __zai_zhuan
	movs r1, # 0
	b __baocun_zhengfan_zhuan
__zai_zhuan:
	cmp r4, # 1
	bne __fan_zhuan
	movs r1, # 0xc3
	b __baocun_zhengfan_zhuan
__fan_zhuan:
	movs r1, # 0x3c
__baocun_zhengfan_zhuan:	
	ldr r3, = zhengfan_zhuan
	str r1, [r3]
__tick_fanhui:
        ldr r3, = shangci_jiaodu
	mov r0, r9
	str r0, [r3]
	
	pop {r3-r7}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	mov r11, r6
	mov r12, r7
	pop {r4-r7,pc}
aaa:
	bx lr
	.ltorg
	.end
