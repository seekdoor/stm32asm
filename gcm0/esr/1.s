	@@ 单片机stm32f030f4p6
	@lcr_2
	@作者：yjmwxwx
	@时间：2022-01-01
	@编译器：ARM-NONE-EABI
	.thumb
	.syntax unified
	.section .data

atan_biao:		@角度
	.int 0x00168000,0x000D4853,0x000704A3,0x00039000,0x0001C9C5,0x0000E51B,0x00007295,0x0000394B,0x00001CA5,0x00000E52,0x00000729,0x00000394,0x000001CA,0x000000E5,0x00000072,0x00000039,0x0000001C,0x0000000E,0x00000007,0x00000003,0x00000001
an_jian_biao:
	.word __an_jian0         	   	   +1
	.word __dang_wei_jia     	   	   +1
	.word __pin_lv_jia      	   	   +1
	.word __an_jian3         	           +1
H:
	.ascii " H"
mH:
	.ascii "mH"
uH:
	.ascii "uH"
nH:
	.ascii "nH"
diangan_danwei:
	.word diangan_danwei100hz
	.word diangan_danwei1khz
	.word diangan_danwei10khz
	.word diangan_danwei100khz
diangan_danwei100hz:
	.word uH,uH,uH,uH,uH,uH,uH,mH
	.word mH,mH,mH,mH,mH,mH,mH,H
	.word H,H,H,H,H,H,H,H
diangan_danwei1khz:
	.word nH,uH,uH,uH,uH,uH,uH,uH
	.word uH,mH,mH,mH,mH,mH,mH,mH
	.word mH,mH,H,H,H,H,H,H
diangan_danwei10khz:
	.word nH,uH,uH,uH,uH,uH,uH,uH
	.word uH,uH,uH,uH,mH,mH,mH,mH
	.word mH,mH,mH,mH,mH,H,H,H
diangan_danwei100khz:
	.word uH,uH,mH,uH,uH,uH,uH,uH
	.word uH,uH,uH,uH,uH,uH,uH,mH
	.word mH,mH,mH,mH,mH,mH,mH,mH
diangan_xiaoshudian:
	.word diangan_100hz
	.word diangan_1khz
	.word diangan_10khz
	.word diangan_100khz
diangan_100hz:
	.byte 3,4,4,4,0xff,0xff,0xff,3
	.byte 3,3,4,4,4,0xff,0xff,2
	.byte 3,3,3,4,4,4,0xff,0xff
diangan_1khz:
	.byte 0xff,3,3,3,4,4,4,0xff
	.byte 0xff,2,3,3,3,4,4,0xff
	.byte 0xff,0xff,2,3,3,3,4,0xff
diangan_10khz:
	.byte 4,2,2,2,3,3,3,4
	.byte 4,0xff,0xff,0xff,2,3,3,4
	.byte 4,4,0xff,0xff,0xff,2,3,4
diangan_100khz:
	.byte 2,3,2,1,2,2,2,3
	.byte 3,4,4,4,0xff,0xff,0xff,3
	.byte 3,3,4,4,4,0xff,0xff,0xff
diangan_weishu:
	.word diangan_weishu100hz
	.word diangan_weishu1khz
	.word diangan_weishu10khz
	.word diangan_weishu100khz
diangan_weishu100hz:
	.short 1000,10,10,10,100,100,10,10
	.short 10,100,1000,1000,1000,10,10,100
	.short 10,10,100,10,10,100,100,100
diangan_weishu1khz:
	.short 1000,100,10,1,1,1,1,10
	.short 1,1,1,1,10,10,10,10
	.short 10,10,100,10,10,100,100,1000
diangan_weishu10khz:
	.short 1000,100,100,100,100,100,10,10
	.short 10,100,10,10,100,10,10,100
	.short 10,10,100,100,10,100,100,1000
diangan_weishu100khz:
	.short 1,1,10,10,10,10,10,10
	.short 10,100,10,10,100,10,10,100
	.short 10,10,100,100,100,100,100,1000
	
	

MF:
	.ascii "mF"
UF:
	.ascii "uF"
NF:
	.ascii "nF"
PF:
	.ascii "pF"
	.align 4
dianrong_danwei:
	.word dianrong_danwei100hz
	.word dianrong_danwei1khz
	.word dianrong_danwei10khz
	.word dianrong_danwei100khz
dianrong_danwei100hz:
	.word MF,UF,UF,UF,UF,UF,UF,UF
	.word UF,UF,UF,UF,NF,NF,NF,NF
	.word NF,NF,NF,PF,PF,PF,PF,PF
dianrong_danwei1khz:
	.word MF,UF,UF,UF,UF,UF,UF,NF
	.word NF,NF,NF,NF,NF,NF,NF,NF
	.word NF,NF,PF,PF,PF,PF,PF,PF
dianrong_danwei10khz:
	.word UF,UF,UF,UF,UF,UF,UF,NF
	.word NF,NF,NF,NF,NF,NF,NF,NF
	.word PF,PF,PF,PF,PF,PF,PF,PF
dianrong_danwei100khz:
	.word UF,UF,PF,UF,NF,NF,NF,NF
	.word NF,NF,NF,NF,NF,PF,PF,PF
	.word PF,PF,PF,PF,PF,PF,PF,PF
dianrong_xiaoshudian:
	.word dianrong_xiaoshudian100hz
	.word dianrong_xiaoshudian1khz
	.word dianrong_xiaoshudian10khz
	.word dianrong_xiaoshudian100khz
dianrong_xiaoshudian100hz:
	.byte 4,4,4,4,4,4,3,2
	.byte 2,2,3,3,3,3,3,3
	.byte 3,3,3,4,4,4,4,3
dianrong_xiaoshudian1khz:
	.byte 3,4,3,2,2,2,2,4
	.byte 3,2,2,2,2,2,2,1
	.byte 1,1,4,3,3,3,3,3
dianrong_xiaoshudian10khz:
	.byte 0xff,3,3,3,2,2,1,3
	.byte 3,3,2,2,2,1,1,1
	.byte 3,3,3,3,2,2,2,2
dianrong_xiaoshudian100khz:
	.byte 2,1,0xff,1,3,3,3,2
	.byte 2,2,1,1,1,3,3,3
	.byte 2,2,2,2,2,1,1,1
dianrong_weishu:
	.word dianrong_weishu100hz
	.word dianrong_weishu1khz
	.word dianrong_weishu10khz
	.word dianrong_weishu100khz
dianrong_weishu100hz:
	.short 1000,10,10,10,100,100,10,10
	.short 10,100,1000,1000,1000,10,10,100
	.short 10,10,100,10,10,100,100,100
dianrong_weishu1khz:
	.short 1000,100,10,1,1,1,1,10
	.short 1,1,1,1,10,10,10,10
	.short 10,10,100,10,10,100,100,1000
dianrong_weishu10khz:
	.short 1000,100,100,100,100,100,10,10
	.short 10,100,10,10,100,10,10,100
	.short 10,10,100,100,10,100,100,1000
dianrong_weishu100khz:
	.short 1000,1000,100,10,10,10,10,10
	.short 10,100,10,10,100,10,10,100
	.short 10,10,100,100,100,100,100,1000
	.align 4

	
zukang_dianzu_biao:
	.int 10000,10000,10000
zukang_xiaoshu_dian:				@jdjd
	.byte 2,3,1
	.align 4
zheng_xian_100khz:
	.byte 10,13,16,18,20,20,20,18,16,13,10,7,4,2,0,0,0,2,4,7

	.align 4

cos_sin_biao_100k:
	.int 0x00008000,0x00000000,0x0000678D,0xFFFFB4C4,0x0000278D,0xFFFF8644,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C4,0xFFFF8000,0x00000000,0xFFFF9873,0x00004B3C,0xFFFFD873,0x000079BC,0x0000278D,0x000079BC,0x0000678D,0x00004B3C,0x00008000,0x00000000,0x0000678D,0xFFFFB4C4,0x0000278D,0xFFFF8644,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C4,0xFFFF8000,0x00000000,0xFFFF9873,0x00004B3C,0xFFFFD873,0x000079BC,0x0000278D,0x000079BC,0x0000678D,0x00004B3C,0x12345678

dangwei_xianshi_biao:
	.word dangwei_10
	.word dangwei_100
	.word dangwei_1K

dangwei_10:
	.ascii " liang cheng 10 "
dangwei_100:
	.ascii " liang cheng 100"
dangwei_1K:
	.ascii " liang cheng 1K "
	.align 4	
zukang_danwei:
	@毫欧=0XF46D，欧=0XF420, 千欧=0XF44B，兆欧=0XF44D
	.int 0xf420,0xf420,0xf44b
	
	.align 4
shangbi_liangcheng:
	.short	0x08,0x00,0x00
	.align 4
xiabi_liangcheng:
	.short 0x00,0x00,0x08
	.align 4
kong:
	.int 0x20202020
_fu:
	.ascii "-"
jiaodufuhao:
	.int 0xdf
	.align 4
yjmwxwx:
	.ascii "yjmwxwx-20220101"
	.align 4
	.equ STACKINIT,        	        0x20001000
	.equ asciimabiao,		0x20000000
	.equ lcd_beiguang,		0x20000020
	.equ shangbi_r, 		0x20000024
	.equ shangbi_i,			0x20000028
	.equ xiabi_r,			0x2000002c
	.equ xiabi_i,			0x20000030
	.equ shangxiabi_qiehuan,	0x20000034
	.equ liangcheng,		0x20000038
	.equ z_r,			0x2000003c
	.equ z_i,			0x20000040
	.equ lvbo_changdu,		0x20000044
	.equ lvbo_youyi,		0x20000048
	.equ huandangyanshi,		0x2000004c
	.equ shangbi_rr,		0x20000050
	.equ shangbi_ii,		0x20000054
	.equ xiabi_rr,			0x20000058
	.equ xiabi_ii,			0x2000005c
	.equ jishu,			0x20000060
	.equ xianshi_biaozhi,		0x20000064
	.equ z_fudu,			0x20000068
	.equ cossin,			0x2000006c
	.equ pinlv,			0x20000070
	.equ anjian,			0x20000074
	.equ zhenfu,			0x20000078
	.equ shezhi_pinlv,		0x2000007c
	.equ zidong_dangwei_kaiguan,	0x20000080
	.equ z_r_jiaozhun,		0x20000084
	.equ z_i_jiaozhun,		0x20000088
	.equ z_jiaozhun, 		0x2000008c
	.equ flash_cachu_biaozhi,	0x20000094
	.equ jiaozhun_biao_zhizhen,	0x20000098
	.equ cs,			0x2000009c
	.equ ls,			0x200000a0
	.equ osm_biao_zhizhen,		0x200000a4
	.equ kailu_duanlu_biaozhi,	0x200000ac
	.equ dft_xuanze,		0x200000b0
	.equ z_jiao_du,			0x200000b4

	.equ zxm_r,			0x200000f0
	.equ zxm_i,			0x200000f4
	.equ dianyabiao,		0x20000100
	.equ lvboqizhizhen,		0x200008d0
	.equ lvboqihuanchong,		0x200008d8
	.equ lvboqizhizhen1,            0x20000a68  @0x200009e0
	.equ lvboqihuanchong1,          0x20000a70  @0x200009e8
        .equ lvboqizhizhen2,            0x20000c00  @0x20000af0
	.equ lvboqihuanchong2,          0x20000c08  @0x20000af8
	.equ lvboqizhizhen3,            0x20000d98  @0x20000c00
	.equ lvboqihuanchong3,          0x20000da0  @0x20000c08
	.equ fjiesuo, 	                0x1fffef62
	.equ ojiesuo,                   0x1fffef6e
	.equ quanca,                    0x1fffeff8
	.equ yeca,                      0x1fffefda
	.equ zica,                      0x1ffff020
	.equ xieflash,                  0x1fffef9a
	.equ zixie,                     0x1ffff048
	.equ xiebaohu,                  0x1ffff0a6
	.equ jiancedubaohu,             0x1ffff124
	.equ flashmang,                 0x1fffef7a
	.equ kailu_biao,		0x8004000
	.equ duanlu_biao,		0x8004400
	.equ pipei_biao,		0x8004800
	

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
	ldr r1, = 0x154002	@0x150002
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

_waisheshizhong:	                         @ 外设时钟
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
	ldr r0, = 0x20001000
	ldr r2, = 0x20000000
	movs r1, # 0
_neicunqinglingxunhuan:
        subs r0, r0, # 4
	str r1, [r0]
	cmp r0, r2
	bne _neicunqinglingxunhuan

	
_waishezhongduan:		@外设中断
	@0xE000E100    0-31  写1开，写0没效
	@0XE000E180    0-31 写1关，写0没效
	@0XE000E200    0-31 挂起，写0没效
	@0XE000E280    0-31 清除， 写0没效
	ldr r0, =  0xe000e100
	ldr r1, = 0x200 @0x10200  @ 0x10000
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
	ldr r1, = 0x28208a43
	str r1, [r0]

	movs r1, # 0xb6
	str r1, [r0, # 0x04]
	ldr r1, = 0x30cfc0
	str r1, [r0, # 0x08]
	movs r1, # 0x14
	str r1, [r0, # 0x0c]
	ldr r1, = 0x200
	str r1, [r0, # 0x24]
	
	
        ldr r0, = 0x48000400
	movs r1, # 0x04
	str r1, [r0]
	movs r1, # 0x0c
	str r1, [r0, # 0x08]
	
spi_chushihua:
	ldr r0, = 0x40013000
	ldr  r1, = 0x708
	str r1, [r0, # 0x04]
	ldr r1, = 0x7c
	str r1, [r0]

_lcdchushihua:
	movs r0, # 0x33
	movs r1, # 0
	bl _xielcd
	bl _lcdyanshi

	movs r0, # 0x32
	movs r1, # 0
	bl _xielcd
	bl _lcdyanshi
	movs r0, # 0x28
	movs r1, # 0
	bl _xielcd
	bl _lcdyanshi
	movs r0, # 0x0c
	movs r1, # 0
	bl _xielcd
	bl _lcdyanshi
	movs r0, # 0x01
	movs r1, # 0
	bl _xielcd
	bl _lcdyanshi


	

	movs r0, # 0x80
	ldr r1, = yjmwxwx
	movs r2, # 16
	bl _lcdxianshi
	ldr r0, = 0xffffff
yjmwxwx_yanshi:
	subs r0, r0, # 1
	bne yjmwxwx_yanshi
	
	movs r0, # 0x01
	movs r1, # 0
	bl _xielcd
	bl _lcdyanshi

__pinlv_100K:
        @tim1ch3DMA
	ldr r0, = 0x40020000
	movs r1, # 0
	str r1, [r0, # 0x58]
	str r1, [r0, # 0x08]
	ldr r1, = 0x40012c3c @ 外设地址
	str r1, [r0, # 0x60]
	ldr r1, = zheng_xian_100khz @ 储存器地址
	str r1, [r0, # 0x64]
	ldr r1, = 20             @点数
	str r1, [r0, # 0x5c]
	ldr r1, = 0x31b1         @ 储存到外设
	str r1, [r0, # 0x58]
	@ adc dma
	ldr r1, = 0x40012440
	str r1, [r0, # 0x10]
	ldr r1, = dianyabiao
	str r1, [r0, # 0x14]
	ldr r1, = 1000
	str r1, [r0, # 0x0c]
	ldr r1, = 0x35a1 @  0x583        @ 5a1
	str r1, [r0, # 0x08]
	
@tim1chushiha:
	ldr r0, = 0x40012c00 @ tim1_cr1
	movs r1, # 0
	str r1, [r0, # 0x28] @ psc
	ldr r1, = 27
	str r1, [r0, # 0x2c] @ ARR
	ldr r1, = 0x68
	str r1, [r0, # 0x1c] @ ccmr2  CC3
	ldr r1, = 0x100    @  CC3
	str r1, [r0, # 0x20] @ ccer
	ldr r1, = 0x8000
	str r1, [r0, # 0x44] @ BDTR
	ldr r1, = 0x800 @ CC3 DMA
	str r1, [r0, # 0x0c] @ DIER
	ldr r1, = 0x81
	str r1, [r0]
	ldr r0, = 0xe000e010
	ldr r1, = 55999 	@55999
	str r1, [r0, # 4]
	str r1, [r0, # 8]
	movs r1, # 0x07
	str r1, [r0]    @systick 开
	ldr r0, = cossin
	ldr r1, = cos_sin_biao_100k
	str r1, [r0]
	ldr r0, = lcd_beiguang
	movs r1, # 0
	str r1, [r0]
        ldr r0, = lvbo_changdu
	ldr r1, = lvbo_youyi
	movs r2, # 100
	movs r3, # 12
	str r2, [r0]
	str r3, [r1]
        ldr r0, = dft_xuanze
	movs r1, # 1
	str r1, [r0]
	movs r3, # 1
	bl _adcchushihua

	


	ldr r0, = liangcheng
	movs r1, # 1
	str r1, [r0]
	ldr r0, = pinlv
	movs r1, # 3
	str r1, [r0]
	b ting

__dang_wei_jia:
	ldr r0, = liangcheng
	ldr r1, [r0]
	adds r1, r1, # 1
	str r1, [r0]
	cmp r1, # 3
	bne __dang_wei_fan_hui
	movs r1, # 0
	str r1, [r0]
__dang_wei_fan_hui:
	mov r2, r1
	lsls r2, r2, # 2
	movs r0, # 0x01
	movs r1, # 0
	bl _xielcd
	bl _lcdyanshi
	movs r0, # 0x80
	ldr r1, = dangwei_xianshi_biao
	ldr r1, [r1, r2]
	movs r2, # 16
	bl _lcdxianshi

	ldr r0, = 0x2fffff
__dangwei_xianshi_yanshi:
	subs r0, r0, # 1
	bne __dangwei_xianshi_yanshi
__pin_lv_jia:	
__an_jian3:
__an_jian0:	
ting:
@	bl __xianshi_shangxia_bi
@	b ting
	
	bl __jisuan_zukang
	bl __xianshi_zukang
@	b ting


	ldr r0, = z_jiao_du
	ldr r0, [r0]
	movs r1, # 0xc0
	bl __xian_shi_jiao_du
	
	movs r0, # 0x8e
	ldr r2, = liangcheng
	ldr r1, = zukang_danwei
	ldr r2, [r2]
	lsls r2, r2, # 2
	adds r1, r1, r2
	movs r2, # 2
	bl _lcdxianshi


        ldr r0, = z_i
	ldr r0, [r0]
	movs r0, r0
	bmi __dianrong_xianshi
__diangan_xianshi:
	ldr r1, = 52151         @0.15915494309189535×3276
	muls r0, r0, r1
	lsrs r0, r0, # 15
	ldr r1, = ls
	str r0, [r1]
	ldr r2, = pinlv
	ldr r1, = diangan_xiaoshudian
	ldr r2, [r2]
	lsls r2, r2, # 2
	mov r4, r2
	ldr r2, [r1, r2]
	ldr r1, = liangcheng
	ldr r1, [r1]
	ldr r5, = diangan_weishu
	ldr r4, [r5,r4]

	
	ldrb r3, [r2, r1]       @读出小数点位置
	lsls r1, r1, # 1
	ldrh r1, [r4, r1]
	bl _chufa
	movs r1, # 6
	ldr r2, = asciimabiao
	bl _zhuanascii
	movs r0, # 0xc8
	ldr r1, = asciimabiao
	movs r2, # 6
	bl _lcdxianshi

	movs r0, # 0xce
	ldr r2, = pinlv
	ldr r2, [r2]
	ldr r1, = diangan_danwei
	lsls r2, r2, # 2
	ldr r2, [r1, r2]
	ldr r1, = liangcheng
	ldr r1, [r1]
	lsls r1, r1, # 2
	ldr r1, [r2, r1]
	movs r2, # 2
	bl _lcdxianshi

	b ting_diaodu
__dianrong_xianshi:
	bl __jisuan_dianrong
	ldr r0, = cs
	ldr r0, [r0]
	ldr r2, = pinlv
	ldr r1, = dianrong_xiaoshudian
	ldr r2, [r2]
	lsls r2, r2, # 2
	ldr r2, [r1, r2]
	ldr r1, = liangcheng
	ldr r1, [r1]
	ldrb r3, [r2, r1]	@读出小数点位置
	movs r1, # 6
	ldr r2, = asciimabiao
	bl _zhuanascii
	movs r0, # 0xc8
	ldr r1, = asciimabiao
	movs r2, # 6
	bl _lcdxianshi

	movs r0, # 0xce
	ldr r2, = pinlv
	ldr r2, [r2]
	ldr r1, = dianrong_danwei
	lsls r2, r2, # 2
	ldr r2, [r1, r2]
	ldr r1, = liangcheng
	ldr r1, [r1]
	lsls r1, r1, # 2
	ldr r1, [r2, r1]
	movs r2, # 2
	bl _lcdxianshi
ting_diaodu:
@	b ting

	bl __an_jian
	@__cai_dan_diao_du
	lsls r0, r0, # 2
	ldr r1, = an_jian_biao
	ldr r2, [r1, r0]
	mov pc, r2
	b ting
	.ltorg


__xian_shi_jiao_du:
	@入口R0=角度 r1=要显示的位置
	push {r0-r5,lr}
	mov r4, r0
	mov r5, r1
	mov r0, r5
	adds r0, r0, # 7
	ldr r1, = jiaodufuhao
	movs r2, # 1
	bl _lcdxianshi

	movs r4, r4
	bpl __jiaodu_bu_shi_zheng
	mov r0, r5
	ldr r1, = _fu
	movs r2, # 1
	bl _lcdxianshi
	mvns r4, r4
	adds r4, r4, # 1
	b __xian_shi_jiaodu
__jiaodu_bu_shi_zheng:
	mov r0, r5
	ldr r1, = kong
	movs r2, # 1
	bl _lcdxianshi
__xian_shi_jiaodu:
	mov r0, r4
	movs r1, # 6
	ldr r2, = asciimabiao
	movs r3, # 3
	bl _zhuanascii
	mov r0, r5
	adds r0, r0, # 1
	ldr r1, = asciimabiao
	movs r2, # 6
	bl _lcdxianshi
	pop {r0-r5,pc}

	
__an_jian:
	push {r1,lr}
	ldr r1, = 0x48000010
	ldr r0, [r1]	@pa4
	mvns r0, r0
	lsls r0, r0, # 29
	lsrs r0, r0, # 30
	pop {r1,pc}

__jisuan_dianrong:
	push {r1-r2,lr}
	@入口r0= z_i
	mov r1, r0
	mvns  r1, r1
	adds r1, r1, # 1
	ldr r2, = pinlv
	ldr r2, [r2]
	ldr r0, = dianrong_weishu
	lsls r2, r2, # 2
	ldr r2, [r0, r2]
	ldr r0, = liangcheng
	ldr r0, [r0]
	lsls r0, r0, # 1
	ldrh r2, [r2, r0]
	ldr r0, = 1591549431
	muls r1, r1, r2
	bl _chufa
	ldr r1, = cs
	str r0, [r1]
	pop {r1-r2,pc}
	
__xianshi_zukang:
	push {r0-r5,lr}
	ldr r4, = z_r
	ldr r5, = z_i
	ldr r4, [r4]
	ldr r5, [r5]
	movs r4, r4
	bpl aaa1
	movs r0, # 0x80
	ldr r1, = _fu
	movs r2, # 1
	bl _lcdxianshi
	mvns r4, r4
	adds r4, r4, # 1
	b aaa2
aaa1:
	movs r0, # 0x80
	ldr r1, = kong
	movs r2, # 1
	bl _lcdxianshi
aaa2:
	mov r0, r4
	movs r1, # 6
	ldr r2, = asciimabiao
	ldr r4, = zukang_xiaoshu_dian
	ldr r3, = liangcheng
	ldr r3, [r3]
	ldrb r3, [r4, r3]
	bl _zhuanascii
	movs r0, # 0x81
	ldr r1, = asciimabiao
	movs r2, # 6
	bl _lcdxianshi


	movs r4, r5
	bpl bbb1
	movs r0, # 0x87
	ldr r1, = _fu
	movs r2, # 1
	bl _lcdxianshi
	mvns r4, r4
	adds r4, r4, # 1
	b bbb2
bbb1:
	movs r0, # 0x87
	ldr r1, = kong
	movs r2, # 1
	bl _lcdxianshi
bbb2:
	mov r0, r4
	movs r1, # 6
	ldr r2, = asciimabiao
	ldr r5, = zukang_xiaoshu_dian
	ldr r3, = liangcheng
	ldr r3, [r3]
	ldrb r3, [r5, r3]
	bl _zhuanascii
	movs r0, # 0x88
	ldr r1, = asciimabiao
	movs r2, # 6
	bl _lcdxianshi
	pop {r0-r5,pc}

__jisuan_zukang:
	push {r0-r7,lr}
	ldr r0, = zukang_dianzu_biao
	ldr r1, = liangcheng
	ldr r1, [r1]
	lsls r1, r1, # 2
	ldr r4, [r0, r1]
	ldr r0, = shangbi_r
	ldr r1, = shangbi_i
	ldr r2, = xiabi_r
	ldr r3, = xiabi_i
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	lsls r0, r0, # 15
	lsls r1, r1, # 15
	lsls r2, r2, # 15
	lsls r3, r3, # 15
	bl __fushu_chufa
	mov r6, r0
	mov r7, r1
	mov r3, r1
	mov r1, r4
	movs r2, # 0
	movs r0, r0
	bpl __z_r_cheng_dianzu
	movs r2, # 1
	mvns r0, r0
	adds r0, r0, # 1
__z_r_cheng_dianzu:
	bl __chengfa
	lsls r0, r0, # 17
	lsrs r1, r1, # 15
	orrs r1, r1, r0
	cmp r2, # 1
	bne __z_i_jiance
	mvns r1, r1
	adds r1, r1, # 1
__z_i_jiance:
	mov r0, r3
	mov r3, r1
	mov r1, r4
	movs r2, # 0
	movs r0, r0
	bpl __z_i_cheng_dianzu
	movs r2, # 1
	mvns r0, r0
	adds r0, r0, # 1
__z_i_cheng_dianzu:
	bl __chengfa
	lsls r0, r0, # 17
	lsrs r1, r1, # 15
	orrs r0, r0, r1
	cmp r2, # 1
	bne __jisuan_zukang_fanhui
	mvns r0, r0
	adds r0, r0, # 1
__jisuan_zukang_fanhui:
	mov r1, r3
	ldr r2, = z_r
	ldr r3, = z_i
	str r1, [r2]
	str r0, [r3]

	
	mov r0, r6
	mov r1, r7
	bl __suan_atan2
	movs r1, # 100
	muls r0, r0, r1
	asrs r0, r0, # 15
	ldr r3, = 18000
	cmp r0, r3
	bls __baocun_huansuan_jiaodu
	ldr r3, = 36000
	subs r0, r0, r3
__baocun_huansuan_jiaodu:
	ldr r2, = z_jiao_du
	str r0, [r2]
	pop {r0-r7,pc}


__xianshi_shangxia_bi:
	push {r0-r7,lr}
	ldr r0, = shangbi_r
	ldr r2, = shangbi_i
	ldr r1, [r0]
	ldr r7, [r2]
	movs r4, r1
	bpl aa1
	movs r0, # 0x80
	ldr r1, = _fu
	movs r2, # 1
	bl _lcdxianshi
	mvns r4, r4
	adds r4, r4, # 1
	b aa2
aa1:
	movs r0, # 0x80
	ldr r1, = kong
	movs r2, # 1
	bl _lcdxianshi
aa2:
	mov r0, r4
	movs r1, # 6
	ldr r2, = asciimabiao
	movs r3, # 0xff
	bl _zhuanascii
	movs r0, # 0x81
	ldr r1, = asciimabiao
	movs r2, # 6
	bl _lcdxianshi


	movs r4, r7
	bpl bb1
	movs r0, # 0x89
	ldr r1, = _fu
	movs r2, # 1
	bl _lcdxianshi
	mvns r4, r4
	adds r4, r4, # 1
	b bb2
bb1:
	movs r0, # 0x89
	ldr r1, = kong
	movs r2, # 1
	bl _lcdxianshi
bb2:
	mov r0, r4
	movs r1, # 6
	ldr r2, = asciimabiao
	movs r3, # 0xff
	bl _zhuanascii
	movs r0, # 0x8a
	ldr r1, = asciimabiao
	movs r2, # 6
	bl _lcdxianshi

	ldr r0, = xiabi_r
	ldr r2, = xiabi_i
	ldr r1, [r0]
	ldr r7, [r2]
	movs r4, r1
	bpl cc1
	movs r0, # 0xc0
	ldr r1, = _fu
	movs r2, # 1
	bl _lcdxianshi
	mvns r4, r4
	adds r4, r4, # 1
	b cc2
cc1:
	movs r0, # 0xc0
	ldr r1, = kong
	movs r2, # 1
	bl _lcdxianshi
cc2:
	mov r0, r4
	movs r1, # 6
	ldr r2, = asciimabiao
	movs r3, # 0xff
	bl _zhuanascii
	movs r0, # 0xc1
	ldr r1, = asciimabiao
	movs r2, # 6
	bl _lcdxianshi


	movs r4, r7
	bpl dd1
	movs r0, # 0xc9
	ldr r1, = _fu
	movs r2, # 1
	bl _lcdxianshi
	mvns r4, r4
	adds r4, r4, # 1
	b dd2
dd1:
	movs r0, # 0xc9
	ldr r1, = kong
	movs r2, # 1
	bl _lcdxianshi
dd2:
	mov r0, r4
	movs r1, # 6
	ldr r2, = asciimabiao
	movs r3, # 0xff
	bl _zhuanascii
	movs r0, # 0xca
	ldr r1, = asciimabiao
	movs r2, # 6
	bl _lcdxianshi
	pop {r0-r7,pc}





	
	
_adcchushihua:
	push {lr}
	@入口R3=1连续模式，0触发模式
	cmp r3, # 1
	beq __adc_lianxu
	ldr r3, = 0x8c3
	b __adc_chushi_hua
__adc_lianxu:
	ldr r3, = 0x2003
__adc_chushi_hua:	
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
	ldr r1, = 0x80000000
	str r1, [r0, # 0x10]
	ldr r1, = 0x01
	str r1, [r0, # 0x28]    @ 通道选择寄存器 (ADC_CHSELR)
@	ldr r1, = 0x2003 @0x8c3 @ 0xc43         @TIM3 0x8c3 @0x2003 @0x8c3
	str r3, [r0, # 0x0c]    @ 配置寄存器 1 (ADC_CFGR1)
	movs r1, # 0
	str r1, [r0, # 0x14]    @ ADC 采样时间寄存器 (ADC_SMPR)
	ldr r1, [r0, # 0x08]
	ldr r2, = 0x04         @ 开始转换
	orrs r1, r1, r2
	str r1, [r0, # 0x08]    @ 控制寄存器 (ADC_CR)
	pop {pc}





__dft:
	push {r2-r7,lr}
	mov r2, r8
	mov r3, r9
	push {r2-r3}
	ldr r1, = 0x12345678
	mov r9, r1
	ldr r0, = dianyabiao
	ldr r1, = cossin
	ldr r1, [r1]
	ldr r3, = 0x7d0      @1000
	ldr r4, = 2048
	adds r3, r3, r0
	mov r8, r3
	movs r2, # 0
	mov r7, r2
__dft_xunhuan:
	ldrh r3, [r0]
	ldr r5, [r1]
	cmp r5, r9
	bne __du_sin
	ldr r1, = cossin
	ldr r1, [r1]
	ldr r5, [r1]
__du_sin:
	ldr r6, [r1, # 0x04]
	subs r3, r3, r4
	muls r5, r5, r3
	asrs r5, r5, # 6
	muls r6, r6, r3
	asrs r6, r6, # 6
	adds r2, r2, r5
	adds r7, r7, r6
	adds r0, r0, # 0x02
	adds r1, r1, # 0x08
	cmp r0, r8
	bne __dft_xunhuan
	mov r0, r2
	mov r1, r7
	asrs r0, r0, # 9
	asrs r1, r1, # 9
	pop {r2-r3}
	mov r8, r2
	mov r9, r3
	pop {r2-r7,pc}
	
__dft1:		@1000点用时376微秒
	push {r2-r7,lr}
	mov r5, r10
	mov r6, r11
	mov r7, r12
	push {r3-r5}
	ldr r0, = cossin
	ldr r1, = dianyabiao
	ldr r0, [r0]
	movs r6, # 0
	mov r7, r6
	mov r12, sp
	mov r11, r0
	mov r10, r1
	b __ji_suan_dft
	.ltorg
__ji_suan_dft:
	@0
	mov sp, r11
	pop {r0-r3}
	mov r11, sp
	mov sp, r10
	pop {r4}
	mov r10, sp
	mov r5, r4
	lsls r4, r4, # 16
	lsrs r4, r4, # 16
	lsrs r5, r5, # 16
	muls r0, r0, r4		@R
	muls r1, r1, r4		@I
	muls r2, r2, r5		@R
	muls r3, r3, r5		@I
	asrs r0, r0, # 6
	asrs r1, r1, # 6
	asrs r2, r2, # 6
	asrs r3, r3, # 6
	adds r0, r0, r2	 @r
	adds r1, r1, r3	 @i
	adds r6, r6, r0
	adds r7, r7, r1

	mov sp, r11
	pop {r0-r3}
	mov r11, sp
	mov sp, r10
	pop {r4}
	mov r10, sp
	mov r5, r4
	lsls r4, r4, # 16
	lsrs r4, r4, # 16
	lsrs r5, r5, # 16
	muls r0, r0, r4
	muls r1, r1, r4
	muls r2, r2, r5
	muls r3, r3, r5
	asrs r0, r0, # 6
	asrs r1, r1, # 6
	asrs r2, r2, # 6
	asrs r3, r3, # 6
	adds r0, r0, r2         @r
	adds r1, r1, r3         @i
	adds r6, r6, r0
	adds r7, r7, r1

	mov sp, r11
	pop {r0-r3}
	mov r11, sp
	mov sp, r10
	pop {r4}
	mov r10, sp
	mov r5, r4
	lsls r4, r4, # 16
	lsrs r4, r4, # 16
	lsrs r5, r5, # 16
	muls r0, r0, r4
	muls r1, r1, r4
	muls r2, r2, r5
	muls r3, r3, r5
	asrs r0, r0, # 6
	asrs r1, r1, # 6
	asrs r2, r2, # 6
	asrs r3, r3, # 6
	adds r0, r0, r2  @r
	adds r1, r1, r3  @i
	adds r6, r6, r0
	adds r7, r7, r1

	mov sp, r11
	pop {r0-r3}
	mov r11, sp
	mov sp, r10
	pop {r4}
	mov r10, sp
	mov r5, r4
	lsls r4, r4, # 16
	lsrs r4, r4, # 16
	lsrs r5, r5, # 16
	muls r0, r0, r4
	muls r1, r1, r4
	muls r2, r2, r5
	muls r3, r3, r5
	asrs r0, r0, # 6
	asrs r1, r1, # 6
	asrs r2, r2, # 6
	asrs r3, r3, # 6
	adds r0, r0, r2         @r
	adds r1, r1, r3         @i
	adds r6, r6, r0
	adds r7, r7, r1
	@1
__dft1_fanhuile:
	mov sp, r11
	pop {r0-r3}
	mov r11, sp
	mov sp, r10
	pop {r4}
	mov r10, sp
	mov r5, r4
	lsls r4, r4, # 16
	lsrs r4, r4, # 16
	lsrs r5, r5, # 16
	muls r0, r0, r4         @R
	muls r1, r1, r4         @I
	muls r2, r2, r5         @R
	muls r3, r3, r5         @I
	asrs r0, r0, # 6
	asrs r1, r1, # 6
	asrs r2, r2, # 6
	asrs r3, r3, # 6
	adds r0, r0, r2  @r
	adds r1, r1, r3  @i
	adds r6, r6, r0
	adds r7, r7, r1

	mov sp, r11
	pop {r0-r3}
	mov r11, sp
	mov sp, r10
	pop {r4}
	mov r10, sp
	mov r5, r4
	lsls r4, r4, # 16
	lsrs r4, r4, # 16
	lsrs r5, r5, # 16
	muls r0, r0, r4
	muls r1, r1, r4
	muls r2, r2, r5
	muls r3, r3, r5
	asrs r0, r0, # 6
	asrs r1, r1, # 6
	asrs r2, r2, # 6
	asrs r3, r3, # 6
	adds r0, r0, r2         @r
	adds r1, r1, r3         @i
	adds r6, r6, r0
	adds r7, r7, r1

	mov sp, r11
	pop {r0-r3}
	mov r11, sp
	mov sp, r10
	pop {r4}
	mov r10, sp
	mov r5, r4
	lsls r4, r4, # 16
	lsrs r4, r4, # 16
	lsrs r5, r5, # 16
	muls r0, r0, r4
	muls r1, r1, r4
	muls r2, r2, r5
	muls r3, r3, r5
	asrs r0, r0, # 6
	asrs r1, r1, # 6
	asrs r2, r2, # 6
	asrs r3, r3, # 6
	adds r0, r0, r2  @r
	adds r1, r1, r3  @i
	adds r6, r6, r0
	adds r7, r7, r1

	mov sp, r11
	pop {r0-r3}
	mov r11, sp
	mov sp, r10
	pop {r4}
	mov r10, sp
	mov r5, r4
	lsls r4, r4, # 16
	lsrs r4, r4, # 16
	lsrs r5, r5, # 16
	muls r0, r0, r4
	muls r1, r1, r4
	muls r2, r2, r5
	muls r3, r3, r5
	asrs r0, r0, # 6
	asrs r1, r1, # 6
	asrs r2, r2, # 6
	asrs r3, r3, # 6
	adds r0, r0, r2         @r
	adds r1, r1, r3         @i
	adds r6, r6, r0
	adds r7, r7, r1
	@2
	mov sp, r11
	pop {r0-r3}
	mov r11, sp
	mov sp, r10
	pop {r4}
	mov r10, sp
	mov r5, r4
	lsls r4, r4, # 16
	lsrs r4, r4, # 16
	lsrs r5, r5, # 16
	muls r0, r0, r4         @R
	muls r1, r1, r4         @I
	muls r2, r2, r5         @R
	muls r3, r3, r5         @I
	asrs r0, r0, # 6
	asrs r1, r1, # 6
	asrs r2, r2, # 6
	asrs r3, r3, # 6
	adds r0, r0, r2  @r
	adds r1, r1, r3  @i
	adds r6, r6, r0
	adds r7, r7, r1

	mov sp, r11
	pop {r0-r3}
	mov r11, sp
	mov sp, r10
	pop {r4}
	mov r10, sp
	mov r5, r4
	lsls r4, r4, # 16
	lsrs r4, r4, # 16
	lsrs r5, r5, # 16
	muls r0, r0, r4
	muls r1, r1, r4
	muls r2, r2, r5
	muls r3, r3, r5
	asrs r0, r0, # 6
	asrs r1, r1, # 6
	asrs r2, r2, # 6
	asrs r3, r3, # 6
	adds r0, r0, r2         @r
	adds r1, r1, r3         @i
	adds r6, r6, r0
	adds r7, r7, r1

	ldr r1, = cossin
	ldr r1, [r1]
	mov r11, r1
__panduan_dianyabiao:
	ldr r0, = 0x200007b8
	cmp r10, r0
	bcs __dft1_fanhui
	b __ji_suan_dft
__dft1_fanhui:
	ldr r0, = 0x200007d0
	cmp r10, r0
	beq __dft1_fanhui1
	b __dft1_fanhuile
__dft1_fanhui1:
	mov r0, r6
	mov r1, r7
	asrs r0, r0, # 9
	asrs r1, r1, # 9
	mov sp, r12
	pop {r2-r4}
	mov r10, r2
	mov r11, r3
	mov r12, r4
	pop {r2-r7,pc}
	.ltorg






	
__lv_bo_qi:
	@地址顺序：指针，累加值，缓冲区
	@入口R0=缓冲区，R1=数据, r2,=指针
	@出口R0
	push {r3-r7,lr}
	ldr r4, = lvbo_changdu
	ldr r7, = lvbo_youyi
	ldr r4, [r4]
	ldr r7, [r7]
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
	asrs r1, r1, r7	 @# 12 @12 @  7	@128
	mov r0, r1
	pop {r3-r7,pc}
	.ltorg

	
_lcdxianshi:		  		@r0=LCD位置，r1=数据地址，r2=长度
	push {r0-r4,lr}
	mov r4, r1

	movs r1, # 0
	bl _xielcd

	movs r1, # 1
	movs r3, # 0
_lcdxianshixunhuan:
	ldrb r0, [r4,r3]
	bl _xielcd
	adds r3, r3, # 1
	cmp r3, r2
	bne _lcdxianshixunhuan
	pop {r0-r4,pc}

_lcdyanshi:
	push {r5,lr}
	ldr r5, = 0x1000
_lcdyanshixunhuan:
	subs r5, r5, # 1
	bne _lcdyanshixunhuan
	pop {r5,pc}
_xielcd:					@入R0=8位,r1=0命令,r1=1数据
	push {r0-r5,lr}
	ldr r4, = lcd_beiguang  @ 量程开关 (第6位和第7位)
	mov r2, r0
	ldr r5, [r4]
	lsrs r2, r2, # 4
	lsls r2, r2, # 2	@ 高四位
	lsls r0, r0, # 28
	lsrs r0, r0, # 26	@ 低四位
	lsls r1, r1, # 31
	bpl __lcd_ming_ling
__lcd_shu_ju:
	movs r3, # 0x03		@ RS = 1 E = 1
	b __xie_lcd_shu_ju
__lcd_ming_ling:
	movs r3, # 0x02		@ RS = 0 E = 1
__xie_lcd_shu_ju:
	adds r3, r3, r5
	mov r1, r0
	adds r2, r2, r3
	ldr r5, = 0x4001300c
	movs r0, r2
	strb r0, [r5]
	bl __spi_mang
	bl __yanshi_595
	subs r0, r0, # 0x02
	strb r0, [r5]
	bl __spi_mang
	bl __yanshi_595
	mov r0, r1
	adds r0, r0, r3
	strb r0, [r5]
	bl __spi_mang
	bl __yanshi_595
	subs r0, r0, # 0x02
	strb r0, [r5]
	bl __spi_mang
	bl __yanshi_595
	pop {r0-r5,pc}
__spi_mang:
	push {lr}
	ldr r2, [r5, # 0x08]
	lsls r2, r2, # 24
	bmi __spi_mang
	pop {pc}
__yanshi_595:
	push {lr}
	ldr r2, = 0x2000
__yanshi__595:
	subs r2, r2, # 1
	bne __yanshi__595
	pop {pc}
	.ltorg

_zhuanascii:						@ 16进制转ASCII
	@ R0要转的数据， R1长度，R2结果表首地址, r3=小数点位置
	push {r0-r7,lr}
	mov r7, r3
	mov r5, r0
	mov r6, r1
	movs r1, # 10
_xunhuanqiuma:
	bl _chufa
	mov r4, r0
	muls r4, r1
	subs r3, r5, r4
	adds r3, r3, # 0x30
	mov r5, r0
	subs r6, r6, # 1
	beq _qiumafanhui
	cmp r6, r7
	bne _meidaoxiaoshudian
	movs r4, # 0x2e		@小数点
	strb r4, [r2,r6]	@插入小数点
	subs r6, r6, # 1
_meidaoxiaoshudian:
	strb r3, [r2,r6]
	movs r6, r6
	bne _xunhuanqiuma
	pop {r0-r7,pc}
_qiumafanhui:
	strb r3, [r2, r6]
	pop {r0-r7,pc}

__suan_atan2:
	@入口R0=实部，R1=虚部
	@出口R0=角度
	push {r2-r6,lr}
	ldr r6, = atan_biao
	movs r2, # 0
	mov r3, r2
	movs r0, r0
	bpl __panduan_xubu
	ldr r2, = 5898240
	mvns r0, r0
	mvns r1, r1
	adds r0, r0, # 1
	adds r1, r1, # 1
__panduan_xubu:
	movs r1, r1
	bpl __suan_atan2_xunhuan
	ldr r2, = 11796480
__suan_atan2_xunhuan:
	movs r1, r1
	bpl __atan2_zhengzhuan
	mov r4, r0	@x
	mov r5, r1	@y
	asrs r5, r5, r3
	asrs r4, r4, r3
	subs r0, r0, r5
	adds r1, r1, r4
	mov r4, r3
	lsls r4, r4, # 2
	ldr r4, [r6, r4]
	subs r2, r2, r4
	b __atan2_xuanzhuan
__atan2_zhengzhuan:
	mov r4, r0	@x
	mov r5, r1	@y
	asrs r5, r5, r3
	asrs r4, r4, r3
	adds r0, r0, r5
	subs r1, r1, r4
	mov r4, r3
	lsls r4, r4, # 2
	ldr r4, [r6, r4]
	adds r2, r2, r4
__atan2_xuanzhuan:
	adds r3, r3, # 1
	cmp r3, # 21
	bne __suan_atan2_xunhuan
	mov r1, r0
	mov r0,r2
	pop {r2-r6,pc}





__suan_cos_sin:
	@入口R0=0*32768到360*32768
	@出口R0=COS，R1=SIN
	@增益 32768*0.6072529350088812561694
	push {r2-r7,lr}
	ldr r1, = 0x4dba
	ldr r2, = 2949120	@90
	ldr r3, = 8847360	@270
	ldr r7, = atan_biao
	movs r5, # 0
	mov r6, r5
	cmp r0, r2
	bhi __dayu_90
	movs r4, # 0
	b __suan_cos_sin_xunhuan
__dayu_90:
	cmp r0, r3
	bhi __dayu_270
	ldr r4, = 5898240	@180
	b __suan_cos_sin_xunhuan
__dayu_270:
	ldr r4, = 11796480 	@360
__suan_cos_sin_xunhuan:
	mov r3, r4
	mov r2, r0
	subs r2, r2, r3
	bmi __zhengzhuan
__fanzhuan:
	mov r3, r6
	mov r2, r1
	asrs r6, r6, r5
	subs r2, r2, r6	@x
	asrs r1, r1, r5
	mov r6, r5
	lsls r6, r6, # 2
	ldr r6, [r7, r6]
	adds r3, r3, r1	@y
	adds r4, r4, r6	@jiaodu
	b __cordic_xuanzhuan
__zhengzhuan:
	mov r3, r6
	mov r2, r1
	asrs r6, r6, r5
	adds r2, r2, r6	@x
	asrs r1, r1, r5
	mov r6, r5
	lsls r6, r6, # 2
	ldr r6, [r7, r6]
	subs r3, r3, r1	@y
	subs r4, r4, r6	@jiaodu
__cordic_xuanzhuan:
	mov r1, r2
	mov r6, r3
	adds r5, r5, # 1
	cmp r5, # 21
	bne __suan_cos_sin_xunhuan
	ldr r6, = 2949120	@90
	ldr r7, = 8847360      @270
	cmp r0, r6
	bls __suan_cos_sin_fanhui
	cmp r0, r7
	bcs __suan_cos_sin_fanhui
	mvns r2, r2
	mvns r3, r3
	adds r2, r2, # 1
	adds r3, r3, # 1
__suan_cos_sin_fanhui:
	mov r1, r3
	mov r0, r2
	pop {r2-r7,pc}

__ji_suan_fu_du:		    @ 计算幅度
	@ 入r0= 实部，r1= 虚部
	@ 出r0 = 幅度
	@ Mag ~=Alpha * max(|I|, |Q|) + Beta * min(|I|, |Q|)
	@ Alpha * Max + Beta * Min
	push {r1-r4,lr}
	movs r0, r0
	bpl _shibubushifushu
	mvns r0, r0                             @ 是负数转成正数
	adds r0, r0, # 1
_shibubushifushu:		                               @ 实部不是负数
	movs r1, r1
	bpl _xububushifushu
	mvns r1, r1                             @ 是负数转成正数
	adds r1, r1, # 1
_xububushifushu:		                                @ 虚部不是负数
	cmp r0, # 0
	bne _panduanxubushibushi0
	mov r0, r1
	pop {r1-r4,pc}
_panduanxubushibushi0:
	cmp r1, # 0
	bne _jisuanfudu1
	pop {r1-r4,pc}
_jisuanfudu1:
	ldr r2, = 31066		@ Alpha q15 0.948059448969 @
	ldr r3, = 12868		@ Beta q15 0.392699081699
	cmp r1, r0
	bhi _alpha_min_beta_max
_alpha_max_beta_min:
	mov r4, r1
	mov r1, r2
	bl __chengfa
	lsls r0, r0, # 17
	lsrs r1, r1, # 15
	orrs r0, r0, r1
	mov r2, r0

	mov r0, r3
	mov r1, r4
	bl __chengfa
	lsls r0, r0, # 17
	lsrs r1, r1, # 15
	orrs r1, r1, r0
	mov r0, r2

	@	muls r0, r0, r2
	@	muls r1, r1, r3
	@	asrs r0, r0, # 15
	@	asrs r1, r1, # 15
	adds r0, r0, r1
	movs r1, # 1
	pop {r1-r4,pc}
_alpha_min_beta_max:
	mov r4, r1
	mov r1, r3
	bl __chengfa
	lsls r0, r0, # 17
	lsrs r1, r1, # 15
	orrs r0, r0, r1
	mov r3, r0

	mov r0, r2
	mov r1, r4
	bl __chengfa
	lsls r0, r0, # 17
	lsrs r1, r1, # 15
	orrs r1, r1, r0
	mov r0, r3

	@	muls r0, r0, r3
	@	muls r1, r1, r2
	@	asrs r0, r0, # 15
	@	asrs r1, r1, # 15
	adds r0, r0, r1
	movs r1, # 0
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
__di_yi_wei:		            @低32位移位
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
	@4        F F F E 0 0 0 1                       @4
	@3                F F F E 0 0 0 1               @3
	@2                F F F E 0 0 0 1               @2
	@1                        F F F E 0 0 0 1       @1
	@         F F F F F F F E 0 0 0 0 0 0 0 1
	push {r2-r7,lr}
	cmp r0, # 0
	beq __cheng_fa_fan_hui
	cmp r1, # 0
	beq __cheng_fa_fan_hui
__ji_suan_cheng_fa:
	mov r2, r0
	mov r3, r1
	lsrs r0, r0, # 16       @高16
	lsls r2, r2, # 16       @ 低16
	lsrs r2, r2, # 16
	lsrs r1, r1, # 16       @高16
	lsls r3, r3, # 16       @低16
	lsrs r3, r3, # 16
	mov r4, r2
	mov r5, r0
	muls r2, r2, r3         @1
	muls r0, r0, r3         @2
	muls r4, r4, r1         @3
	muls r5, r5, r1         @4
	mov r6, r0
	mov r7, r4
	lsls r0, r0, # 16       @2低32
	lsls r4, r4, # 16       @3低32
	lsrs r6, r6, # 16       @2高32
	lsrs r7, r7, # 16       @3高32
	movs r1, # 0
	adds r2, r2, r0         @低32
	adcs r6, r6, r1         @高32
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


__fushu_chufa:
	@入口R0=Z1_R, R1=Z1_I,R2=Z2_R,R3=Z2_I
	@出口R0=Z_R,R1=Z_I
	push {r4-r7,lr}
	mov r6, r0
	mov r7, r1
	@	lsls r0, r0, # 15
	@	lsls r1, r1, # 15
	bl __suan_atan2
	mov r5, r0
	mov r0, r2
	mov r1, r3
	@	lsls r0, r0, # 15
	@	lsls r1, r1, # 15
	bl __suan_atan2
	@	bkpt # 0
	mov r1, r5
	subs r0, r1, r0 @算角度差
	bpl __suan_shangxiabi_fudu
	ldr r1, = 11796480      @360*32768
	adds r0, r0, r1
__suan_shangxiabi_fudu:
	mov r5, r0      @保存角度差
	@	bkpt # 1
	mov r0, r2
	mov r1, r3
	bl __ji_suan_fu_du
	@	bkpt # 2
	mov r2, r0
	mov r0, r6      @上臂R
	mov r1, r7      @上臂I
	bl __ji_suan_fu_du
	@	bkpt # 3
	mov r1, r0
	lsrs r0, r0, # 17
	lsls r1, r1, # 15
	bl __chufa64
	mov r3, r1      @Z幅度
	@	bkpt # 4
	mov r0, r5
	bl __suan_cos_sin
	@	bkpt # 4
	mov r4, r1
	mov r1, r3
	movs r2, # 0
	movs r0, r0
	bpl cl1
	adds r2, r2, # 1
	mvns r0, r0
	adds r0, r0, # 1
cl1:
	movs r1, r1
	bpl cl2
	adds r2, r2, # 1
	mvns r1, r1
	adds r1, r1, # 1
cl2:
	bl __chengfa
	@	bkpt # 5
	lsls r0, r0, # 17
	lsrs r1, r1, # 15
	orrs r1, r1, r0
	cmp r2, # 1
	bne __suan_xubu
	mvns r1, r1
	adds r1, r1, # 1
__suan_xubu:
	mov r0, r4
	mov r4, r1      @实部
	mov r1, r3
	movs r2, # 0
	movs r0, r0
	bpl cl3
	adds r2, r2, # 1
	mvns r0, r0
	adds r0, r0, # 1
cl3:
	movs r1, r1
	bpl cl4
	adds r2, r2, # 1
	mvns r1, r1
	adds r1, r1, # 1
cl4:
	bl __chengfa
	@	bkpt #6
	lsls r0, r0, # 17
	lsrs r1, r1, # 15
	orrs r1, r1, r0
	cmp r2, # 1
	bne cl5
	mvns r1, r1
	adds r1, r1, # 1
cl5:
	mov r0, r4
	pop {r4-r7,pc}

__fushu_chengfa:
	@入口R0=Z1_R, R1=Z1_I,R2=Z2_R,R3=Z2_I
	@出口R0=Z_R,R1=Z_I
	push {r4-r7,lr}
	mov r6, r0
	mov r7, r1
	@	lsls r0, r0, # 15
	@	lsls r1, r1, # 15
	bl __suan_atan2
	mov r5, r0
	mov r0, r2
	mov r1, r3
	@	lsls r0, r0, # 15
	@	lsls r1, r1, # 15
	bl __suan_atan2
	@	bkpt # 0
	mov r1, r5
	adds r0, r1, r0 @算角度差
	ldr r1, = 11796480      @360*32768
	cmp r0, r1
	bcc __suan_chengfa_shangxiabi_fudu
	subs r0, r0, r1
__suan_chengfa_shangxiabi_fudu:
	mov r5, r0      @保存角度和
	@      bkpt # 1
	mov r0, r2
	mov r1, r3
	bl __ji_suan_fu_du
	@       bkpt # 2
	mov r2, r0
	mov r0, r6      @上臂R
	mov r1, r7      @上臂I
	bl __ji_suan_fu_du
	@	bkpt # 3
	mov r1, r2
	bl __chengfa
	lsls r0, r0, # 17
	lsrs r1, r1, # 15
	orrs r0, r0, r1
	mov r3, r0      @Z幅度
	@	bkpt # 4
	mov r0, r5
	bl __suan_cos_sin
	@      bkpt # 4
	mov r4, r1
	mov r1, r3
	movs r2, # 0
	movs r0, r0
	bpl cf1
	adds r2, r2, # 1
	mvns r0, r0
	adds r0, r0, # 1
cf1:
	movs r1, r1
	bpl cf2
	adds r2, r2, # 1
	mvns r1, r1
	adds r1, r1, # 1
cf2:
	bl __chengfa
	@       bkpt # 5
	lsls r0, r0, # 17
	lsrs r1, r1, # 15
	orrs r1, r1, r0
	cmp r2, # 1
	bne __suan_chengfa_xubu
	mvns r1, r1
	adds r1, r1, # 1
__suan_chengfa_xubu:
	mov r0, r4
	mov r4, r1      @实部
	mov r1, r3
	movs r2, # 0
	movs r0, r0
	bpl cf3
	adds r2, r2, # 1
	mvns r0, r0
	adds r0, r0, # 1
cf3:
	movs r1, r1
	bpl cf4
	adds r2, r2, # 1
	mvns r1, r1
	adds r1, r1, # 1
cf4:
	bl __chengfa
	@       bkpt #6
	lsls r0, r0, # 17
	lsrs r1, r1, # 15
	orrs r1, r1, r0
	cmp r2, # 1
	bne cf5
	mvns r1, r1
	adds r1, r1, # 1
cf5:
	mov r0, r4
	pop {r4-r7,pc}
	.ltorg
__fu_shu_cheng_fa:
	push {r4-r7,lr}
	@r0=a,r1=b,r2=c,r3=d
	mov r4, r0      @a
	mov r5, r1      @b
	mov r6, r2      @c
	mov r7, r3      @d
	muls r0, r0, r2 @a*c
	muls r1, r1, r3 @b*d
	subs r0, r0, r1 @ac-bd
	muls r4, r4, r7 @a*d
	muls r5, r5, r6 @b*c
	adds r4, r4, r5 @ad+bc
	mov r1, r4
	pop {r4-r7,pc}
	.ltorg
_chufa:					@软件除法
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
_nmi_handler:
	bx lr
_hard_fault:
	bx lr
_svc_handler:
	bx lr
_pendsv_handler:
	bx lr
_systickzhongduan:
	push {r4,lr}
	ldr r2, = shangxiabi_qiehuan
	ldr r1, = 1000
	ldr r3, [r2]
	adds r3, r3, # 1
	str r3, [r2]
	cmp r3, r1
	bcs __shangbi_dft
	b __xiabi_dft
__xiabi_dft1:
	ldr r0, = 0x200000c0
	movs r3, # 0
	str r3, [r2]
	str r3, [r0]
__xiabi_dft:
        ldr r0, = 0x200000c0
	ldr r1, [r0]
	adds r1, r1, # 1
	str r1, [r0]
	ldr r2, = 200
	cmp r1, r2
	bhi __xia_bi_dft
	
	ldr r2, = 0x48000400
	movs r3, #  0x02
	str r3, [r2, # 0x18]    @cd4053_9_10  0X28上臂开
	ldr r0, = liangcheng
	ldr r1, = xiabi_liangcheng
	ldr r0, [r0]
	lsls r0, r0, # 1
	ldr r2, = 0x48000000
	ldrh  r3, [r1, r0]
	str r3, [r2, # 0x14]
	b __systick_fanhui
	
__xia_bi_dft:
	bl __dft
	mov r4, r0
	ldr r2, = lvboqizhizhen3
	ldr r0, =lvboqihuanchong3
	bl __lv_bo_qi
	ldr r1, = xiabi_i
	str r0, [r1]
	mov r1, r4
	ldr r2, = lvboqizhizhen2
	ldr r0, = lvboqihuanchong2
	bl __lv_bo_qi
	ldr r1, = xiabi_r
	str r0, [r1]
	b __systick_fanhui

__shangbi_dft:
	ldr r1, = 2000
	cmp r3, r1
	beq __xiabi_dft1
	ldr r2, = 1200
        ldr r0, = 0x200000c0
	ldr r1, [r0]
	adds r1, r1, # 1
	str r1, [r0]
	cmp r1, r2
	bhi __shang_bi_dft
	
	
	ldr r2, = 0x48000400
	movs r3, #  0x02
	str r3, [r2, # 0x28]    @cd4053_9_10 下臂开
	ldr r0, = liangcheng
	ldr r1, = shangbi_liangcheng
	ldr r0, [r0]
	lsls r0, r0, # 1
	ldr r2, = 0x48000000
	ldrh r3, [r1, r0]
	str r3, [r2, # 0x14]
	b __systick_fanhui
__shang_bi_dft:	
	bl __dft
        mvns r0, r0
	mvns r1, r1
	adds r0, r0, # 1
	adds r1, r1, # 1
	
	mov r4, r0
	ldr r2, = lvboqizhizhen1
	ldr r0, =lvboqihuanchong1
	bl __lv_bo_qi
	ldr r1, = shangbi_i
	str r0, [r1]
	mov r1, r4
	ldr r2, = lvboqizhizhen
	ldr r0, =lvboqihuanchong
	bl __lv_bo_qi
	ldr r1, = shangbi_r
	str r0, [r1]
__systick_fanhui:
	ldr r0, = 0xe0000d04
	ldr r1, = 0x02000000
	str r1, [r0]                 @ 清除SYSTICK中断
	pop {r4,pc}

	
aaa:
	bx lr
	.ltorg
	.end
