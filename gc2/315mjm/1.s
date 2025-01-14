	 .thumb                 
         .syntax unified
.section .data
	.align 4
        	.equ zhanding,          0x20000300
	.section .text
zhongduanxiangliangbiao:
	.word zhanding +1
	.word fuwei +1
	.word nmi +1
	.word hardf +1
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word svc +1
	.word 0
	.word 0
	.word pendsv +1
	.word systick +1
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word tim3 +1
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
fuwei:	
shizhong:
	ldr r0, = 0x40021000 @ rcc_cr
	ldr r1, = 0x15683     
	str r1, [r0]
gsszbz: 
	ldr r2, [r0]
	ldr r1, = 0x20000    
	tst r1, r2           @HSE时钟标志位           
	bne rccchushihua
	b gsszbz
rccchushihua: 
	ldr r0, = 0x40022000   @FLASH访问控制
	movs r1, # 0x32
	str r1, [r0]           @FLASH缓冲 缓冲开启 
	ldr r0, = 0x40021004 
	ldr r1, = 0x110000    @ HSE-PLL-6倍频
	str r1, [r0]
	ldr r0, = 0x40021000
	ldr r1, = 0x1035683     @ PLL开
	str r1, [r0]
chaxun:
	ldr r2, [r0]
	ldr r1, = 0x2000000     @ PLL锁定标志位
	tst r1, r2              
	bne rccgg               @ 等待PLL锁定 
	b chaxun
rccgg:
	ldr r0, = 0x40021004
	ldr r1, = 0x11000a      @ PLL作为系统时钟
	str r1, [r0]
	ldr r1, = 0x400
	movs r0, # 0
	ldr r2, = 0x20000000
neicunqingling:
	str r0, [r2]
	adds r2, # 0x04
	subs r1, # 1
	bne neicunqingling
quanjubianliang:
	ldr r0, = 0x200007fc
	ldr r1, = 0x20000800
	str r1, [r0]
	ldr r0, = 0x200007f4
	movs r1, # 24
	str r1, [r0]
shi_zhong_she_zhi:
	ldr r0, = 0x40021014    @ AHB外部时钟
	ldr r1, = 0x60014       @ 开时钟
	str r1, [r0]
	@ DMA（0）SRAM（2）FLITF（4）CRC（6）PA（17）
	@PB（18）PC（19）PD（20）PF（22）TSCEN（24）
	ldr r0, = 0x4002101c
	ldr r1, = 0x02
	str r1, [r0]
zhongduanshezhi:
	ldr r0, = 0xe000e100
	ldr r1, = 0x10000
	str r1, [r0]
tim3chushihua:
	ldr r0, = 0x40000400
	ldr r1, = 0x10
	str r1, [r0, # 0x0c]     
	ldr r1, = 4800
	str r1, [r0, # 0x28]
	ldr r1, = 0xffff
	str r1, [r0, # 0x2c]
	ldr r1, = 0xf100
	str r1, [r0, # 0x1c]
	ldr r1, = 0x3000
	str r1, [r0, # 0x20]
	movs r1, # 0x01
	str r1, [r0, # 0x14]
	ldr r1, = 0x201
	str r1, [r0]
io_she_zhi:
	@a(0x48000000)b(0x48000400)c(0x48000800)d(0x48000c00)f(0x48001400)
	ldr r0, = 0x48000000   @ 端口模式
	@ 输入（00）通用输出（01）复用功能（10）模拟（11）
	ldr r1, = 0x28000000  
	str r1, [r0]
	@偏移0x4 = 端口输出类型 @ （0 推挽）（ 1 开漏）
	@偏移0x8 = 输出速度  00低速 01中速 11高速
	@偏移0xC = 上拉下拉 00无上下拉  01 上拉 10下拉
	@偏移0x10 = 输入数据寄存器
	@偏移0x14 = 输出数据寄存器
	@偏移0x18 = 端口开  0-15置位 
	@偏移0x28 = 端口关
	@0X20 = 复用低
	@0x24 = 复用高
	ldr r0, = 0x48000400
	movs r1, # 0x08
	str r1, [r0]
	movs r1, # 0x10
	str r1, [r0, # 0x20]

tingzhu:
	b tingzhu
	
nmi:
	bx lr
hardf:
	bx lr
svc:
	bx lr
pendsv:
	bx lr
systick:
	bx lr
tim3:
	push {r0-r6,lr}
	ldr r0, = 0x200007f0
	ldr r2, = 0x40000400
	ldr r3, [r2, # 0x40]
	ldr r1, [r0, # 0x04]
	cmp r1, # 1
	bne jiema315
	cmp r3, # 0x80
	bhi tim3fanhui
	cmp r3, # 0x20
	bls quma315
	movs r4, # 1
	str r4, [r0]
	movs r4, # 0
	str r4, [r0, # 0x08]
	b tim3fanhui
quma315:
	ldr r4, [r0]
	lsls r4, r4, # 31
	bpl tim3fanhui
	cmp r3, # 0x10
	bcc ma0
	movs r5, # 1
	b tim3fanhui1
ma0:
	movs r5, # 0
tim3fanhui1:
	ldr r4, [r0, # 0x08]
	lsls r4, r4, # 1
	orrs r4, r4, r5
	str r4, [r0, # 0x08]
	ldr r4, [r0, # 0x04]
	subs r4, r4, # 1
	str r4, [r0, # 0x04]
	bne tim3fanhui
	ldr r4, [r0, # 0x08]
	mov r11, r4
	mov r10, r4
	movs r4, # 24
	str r4, [r0, # 0x04]
	movs r4, # 0
	str r4, [r0]
	b tim3fanhui
jiema315:
	cmp r3, # 0x20
	bhi tim3fanhui
	cmp r3, # 0x10
	bcc maling
	movs r3, # 1
	b majisuan
maling:
	movs r3, # 0
majisuan:
	ldr r0, = 0x200007e0
	ldr r1, [r0]
	lsls r1, r1, # 1
	orrs r1, r1, r3
	str r1, [r0]
	ldr r5, = 0xffffff
	ands r1, r1, r5
	ldr r4, = 0xa0a228
	cmp r1, r4
	bne tim3fanhui
	mov r8, r1
	movs r1, # 1
	str r1, [r0, # 0x04]
tim3fanhui:
	movs r1, # 1
	str r1, [r2, # 0x14]
	pop {r0-r6,pc}
	
