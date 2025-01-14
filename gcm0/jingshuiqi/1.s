	@ stm32f030f4p6 asm
	@净水器定时器2019-12-18
	 .thumb
	         .syntax unified
	.section .data
shumaguanmabiao:
	.int 0x02,0xae,0x14,0x0c,0xa8,0x48,0x40,0x2e,0x00,0x08
	.align 4
cai_dan:
	.word __bao_cun_she_zhi +1
	.word __zhi_shui_shi_jian_she_zhi + 1
	.word __chong_xi_shi_jian_she_zhi + 1
	.word __zhi_shui_xun_huan + 1
	
	.equ STACKINIT,        	        0x20001000
	.equ shumaguanma,		0x20000000
	.equ jishu,			0x20000064
	.equ kaijichongxi,		0x20000068
	.equ zhishuishijian,		0x2000006c
	.equ chongxishichang,		0x20000070
	.equ anjianyanshi,		0x20000074
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
	.word _systickzhongduan +1               @ 15
	.word aaa +1     @ _wwdg +1          @ 0
	.word aaa +1     @_pvd +1            @ 1
	.word aaa +1     @_rtc +1            @ 2
	.word aaa +1     @_flash +1          @ 3
	.word aaa +1	@ _rcc + 1          @ 4
	.word aaa +1	@_exti0_1  +1      @ 5
	.word aaa +1      @ _exti2_3 +1      @ 6
	.word aaa +1       @_exti4_15 +1     @ 7
	.word aaa +1                         @ 8
	.word aaa +1 	@_dma1_1  +1    @ 9
	.word aaa +1    @_dma1_2_3 +1        @ 10
	.word aaa +1       @_dma1_4_5 +1     @ 11
	.word aaa +1	 @_adc1 +1          @ 12
	.word aaa +1	@_tim1_brk_up +1  @ 13
	.word aaa +1 @_tim1_buhuo +1    @ 14
	.word aaa +1         @_tim2 +1       @ 15
	.word aaa +1          @_tim3 +1      @ 16
	.word aaa +1                         @ 17
	.word aaa +1		                @ 18
	.word aaa +1		@_tim14 +1    @ 19
	.word aaa +1                         @ 20
	.word aaa +1 	@_tim16 +1      @ 21
	.word aaa +1         @_tim17 +1      @ 22
	.word aaa +1          @_i2c   +1     @ 23
	.word aaa +1                         @ 24
	.word aaa +1           @_spi   +1    @ 25
	.word aaa +1                         @ 26
	.word aaa +1         @_usart1 +1     @ 27
_start:	
neicunqingling:
	ldr r0, = 0x20000000
	movs r1, # 0
	ldr r3, = 0x1000
neicunqinglingxunhuan:
	subs r3, # 4
	str r1, [r0, r3]
	bne neicunqinglingxunhuan

_waisheshizhong:			 @ 外设时钟
	@ +0x14=RCC_AHBENR
	@ 0=DMA 2=SRAM 4=FLITF 6=CRC  17=PA  18=PB 19=PC 20=PD 22=PF
	ldr r0, = 0x40021000
	ldr r1, = 0x460005
	str r1, [r0, # 0x14]

	@ +0x18外设时钟使能寄存器 (RCC_APB2ENR)
	@ 0=SYSCFG 5=USART6EN 9=ADC 11=TIM1 12=SPI1 14=USART1
	@ 16=TIM15 17=TIM16 18=TIM17 22=DBGMCU
	@+0X1C=RCC_APB1ENR
	@ 1=TIM3 4=TIM6 5=TIM7 8=TIM14 11=WWDG 14=SPI 17=USRT2 18=USART3
	@ 20=USART5 21=I2C1 22=I2C2  23=USB 28=PWR

_systick:				@ systick定时器初始化

	ldr r0, = 0xe000e010
	ldr r1, = 8000
	str r1, [r0, # 4]
	str r1, [r0, # 8]
	movs r1, # 0x07
	str r1, [r0]
_kanmengou:
	ldr r0, = 0x40003000
	ldr r1, = 0x5555
	str r1, [r0]
	movs r1, # 7
	str r1, [r0, # 4]
	ldr r1, = 0xfff
	str r1, [r0, # 8]
	ldr r1, = 0xaaaa
	str r1, [r0]
	ldr r1, = 0xcccc
	str r1, [r0]
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
	ldr r1, = 0x28145557
	str r1, [r0]

	ldr r0, = 0x48000400
	movs r1, # 0x04 @ pb1
	str r1, [r0]
	
	ldr r0, = 0x48001400
	movs r1, # 0x00
	str r1, [r0]
	
	movs r1, # 0x05
	str r1, [r0, # 0x0c]
	ldr r0, = 0x8001000
	ldr r1, = zhishuishijian
	ldr r2, = chongxishichang
	ldr r3, [r0]
	ldr r4, [r0, # 0x04]
	str r3, [r1]
	str r4, [r2]
        ldr r0, = 0x48000400
        movs r1, # 2
        str r1, [r0, # 0x28]
	
	bl __chong_xi_shi_jian
	bl __chong_xi_shi_jian
	ldr r0, = 0x48000400
	movs r1, # 2
	str r1, [r0, # 0x18]
ting:
	ldr r0, = 0x48001400
	ldr r1, = cai_dan
	ldr r2, [r0, # 0x10]
	lsls r2, r2, # 2
	ldr r3, [r1, r2]
	mov pc, r3
	
__chong_xi_shi_jian_she_zhi:
        ldr r0, = 0x48000400
        movs r1, # 2
        str r1, [r0, # 0x18]
        ldr r1, = chongxishichang
        ldr r0, [r1]
        bl __shu_ma_guan_xian_shi
	bl __wei_gou
        ldr r2, = jishu
        ldr r3, = 1000
        ldr r0, [r2]
        cmp r0, r3
        bls __chong_xi_shi_jian_she_zhi
        movs r0, # 0
        str r0, [r2]
        ldr r0, [r1]
        adds r0, r0, # 1
        cmp r0, # 99
        bls _chucunchongxi
        movs r0, # 0
_chucunchongxi:
        str r0, [r1]
        ldr r0, = 0x48001410
        ldr r2, = cai_dan
        ldr r1, [r0]
        lsls r1, r1, # 2
        ldr r2, [r2, r1]
        mov pc, r2

__zhi_shui_shi_jian_she_zhi:
        ldr r0, = 0x48000400
        movs r1, # 2
        str r1, [r0, # 0x18]
	ldr r1, = zhishuishijian
	ldr r0, [r1]
	bl __shu_ma_guan_xian_shi
	bl __wei_gou
	ldr r2, = jishu
	ldr r3, = 1000
	ldr r0, [r2]
	cmp r0, r3
	bls __zhi_shui_shi_jian_she_zhi
	movs r0, # 0
	str r0, [r2]
	ldr r0, [r1]
	adds r0, r0, # 1
	cmp r0, # 99
	bls _chucunzhishui
	movs r0, # 0
_chucunzhishui:	
	str r0, [r1]
	ldr r0, = 0x48001410
	ldr r2, = cai_dan
        ldr r1, [r0]
	lsls r1, r1, # 2
	ldr r2, [r2, r1]
        mov pc, r2

__zhi_shui_xun_huan:
        ldr r0, = 0x48000400
        movs r1, # 2
        str r1, [r0, # 0x28]
	bl __chong_xi_shi_jian
        ldr r0, = 0x48000400
        movs r1, # 2
        str r1, [r0, # 0x18]
	bl __zhi_shui_shi_jian
	b __zhi_shui_xun_huan
__zhi_shui_shi_jian:
	push {r0-r7,lr}
	ldr r5, = jishu
	ldr r6, = zhishuishijian
	ldr r4, = 1000
	ldr r7, [r6]
	movs r3, # 60
__zhi_shui_hao_miao_xun_huan:
	bl __wei_gou
	bl __an_jian_jian_ce
	mov r0, r7
	bl __shu_ma_guan_xian_shi
	ldr r2, [r5]
	cmp r2, r4
	bcc __zhi_shui_hao_miao_xun_huan
	movs r2, # 0
	str r2, [r5]
__miao_jian_xun_huan:
	subs r3, r3, # 1
	bne __zhi_shui_hao_miao_xun_huan
	movs r3, # 60
	subs r7, r7, # 1
	bne __zhi_shui_hao_miao_xun_huan
	pop {r0-r7,pc}
__chong_xi_shi_jian:
	push {r0-r7,lr}
	ldr r6, = chongxishichang
	ldr r3, [r6]
	ldr r4, = 1000		@ 1秒
	ldr r5, = jishu
__chong_xi_hao_miao_xun_huan:
	bl __wei_gou
	bl __an_jian_jian_ce
	mov r0, r3
	bl __shu_ma_guan_xian_shi
	ldr r2, [r5]
	cmp r2, r4
	bcc  __chong_xi_hao_miao_xun_huan
	movs r2, # 0
	str r2, [r5]
__miao_jian:
	subs r3, r3, # 1
	bne __chong_xi_hao_miao_xun_huan
	pop {r0-r7,pc}
__wei_gou:
	push {r0-r1,lr}
        ldr r0, = 0x40003000
        ldr r1, = 0xaaaa
        str r1, [r0]
	pop {r0-r1,pc}
__an_jian_jian_ce:
	push {r0,lr}
	ldr r0, = 0x48001410
	ldr r0, [r0]
	cmp r0, # 3
	beq __an_jian_fan_hui
	ldr r0, = 0x20001000
	mov sp, r0
	ldr r0, = 0xffffffff
	mov lr, r0
	b ting
__an_jian_fan_hui:	
	pop {r0,pc}
__shu_ma_guan_xian_shi:
	push {r1-r2,lr}
        movs r1, # 2
	ldr r2, = shumaguanma
        bl _zhuanshumaguanma
        bl _xieshumaguan
	pop {r1-r2,pc}
_xieshumaguan:			@ r0=4位10进制数
	push {r0-r7,lr}
	ldr r2, = shumaguanma
	ldr r7, = 0xfff
	ldr r4, = 0x48000000
	ldr r5, = 0x48001400
	ldr r6, = 0x200
	ldr r1, [r2]
	str r6, [r4, # 0x18]
	strb r1, [r4, # 0x14]
_shumaguanyanshi:	
	subs r7, r7, # 1
	bne _shumaguanyanshi
	str r6, [r4, # 0x28]
	lsls r6, r6, # 1
	ldr r7, = 0xfff
	ldr r1, [r2, # 0x04]
	str r6, [r4, # 0x18]
	strb r1, [r4, # 0x14]
	ldr r6, = 0x600
_shumaguanyanshi1:	
	subs r7, r7, # 1
	bne _shumaguanyanshi1
	str  r6, [r4, # 0x28]
	movs r6, # 0x02
	ldr r7, = 0xfff
	ldr r1, [r2, # 0x08]
	str r6, [r5, # 0x14]
	strb r1, [r4, # 0x14]
_shumaguanyanshi2:	
	subs r7, r7, # 1
	bne _shumaguanyanshi2
	movs r6, # 0x01
	ldr r7, = 0xfff
	ldr r1, [r2, # 0x0c]
	str r6, [r5, # 0x14]
	strb r1, [r4, # 0x14]
_shumaguanyanshi3:
	subs r7,  r7, # 1
	bne _shumaguanyanshi3
	movs r3, # 0
	str r3, [r5, # 0x14]
	pop {r0-r7,pc}
	
_zhuanshumaguanma:			@ 16进制转数码管码
		@ R0要转的数据， R1长度，R2结果表首地址
	push {r0-r7,lr}
	ldr r7, = shumaguanmabiao
	mov r5, r0
	mov r6, r1
	movs r1, # 10
_xunhuanqiuma:
	bl _chufa
	mov r4, r0
	muls r4, r1
	subs r3, r5, r4
	lsls r3, # 2
	ldr r4, [r7, r3]
	str r4, [r2]
	mov r5, r0
	adds r2, r2, # 4
	subs r6, # 1
	bne _xunhuanqiuma
	pop {r0-r7,pc}
_chufa:				@软件除法
	@ r0 除以 r1 等于 商(r0)余数R1
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
__bao_cun_she_zhi:
	ldr r0, = 0xffffff
__bao_cun_yan_shi:	
	subs r0, r0, # 1
	bne __bao_cun_yan_shi
_xieflash:			@ flsh解锁
	ldr r0, = 0x40022000
	ldr r1, = 0x45670123
	str r1, [r0, # 0x04]
	ldr r1, = 0xcdef89ab
	str r1, [r0, # 0x04]
					@擦除2页
	movs r5, # 1
	ldr r4, = 0x8001000
	movs r7, # 1
	lsls r7, r7, # 10
_flashmang:
	ldr r2, [r0, # 0x0c]
	lsls r2, r2, # 31
	bmi _flashmang
	movs r1, # 2
	str r1, [r0, # 0x10]
	str r4, [r0, # 0x14]
	movs r1, # 0x42
	str r1, [r0, # 0x10]
	add r4, r4, r7
	subs r5, # 1
	bne _flashmang
						@写FLASH
	ldr r7, = 0x8001000
	ldr r4, = 0x2000006c
	movs r5, # 0
	movs r6, # 0x02
_flashmang1:
	ldr r2, [r0, # 0x0c]
	lsls r2, r2, # 31
	bmi _flashmang1
	movs r1, # 1
	str r1, [r0, # 0x10]
	ldrh r3, [r4, r5]
	strh r3, [r7, r5]
	adds r5, r5, # 2
_flashmang2:
	ldr r2, [r0, # 0x0c]
	lsls r2, r2, # 31
	bmi _flashmang2
	ldrh r3, [r4, r5]
	strh r3, [r7, r5]
	adds r5, r5, # 2
	subs r6, r6, # 1
	bne _flashmang1
_flashmang4:
	ldr r2, [r0, # 0x0c]
	lsls r2, r2, # 31
	bmi _flashmang4
	movs r1, # 0x80
	@str r1, [r0]          		@flsh上锁
	ldr r0, = 0xe000ed0c
	ldr r1, = 0x05fa0004
	str r1, [r0]          		@复位
_nmi_handler:
	bx lr
_hard_fault:
	bx lr
_svc_handler:
	bx lr
_pendsv_handler:
	bx lr
_systickzhongduan:
	ldr r2, = jishu
	ldr r0, = 0xe0000d04
	ldr r3, [r2]
	ldr r1, = 0x02000000
	adds r3, r3, # 1
	str r3, [r2]
	str r1, [r0] 
aaa:
	bx lr


