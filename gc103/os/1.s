@ stm32f030f4p6 asm 
@ 温度控制
	 .thumb                 
         .syntax unified
.section .data
	.equ duizhanding,       0x20001000
	.equ dqrwyxj,           0x20000044 @ 当前任务优先级
	.equ xtzgyxj,           0x20000048 @ 系统里最高优先级
	.equ dangqian,          0x2000004c @  当前TCB任务控制块指针
	.equ dengyunxing,       0x20000050 @ 待运行TCB任务控制块指针
	.equ jiuxubiao,         0x20000054 @ 就绪查找表8个任务
	 @ 保留0X20
	.equ renwubiao,         0x20000074 @ 任务控制块指针表
	@保留0x20
	.equ renwukongzhikuai,  0x20000094 @ 任务控制块起始地址
	@每个控制块两个数据，+0堆栈顶，+4任务时间
	@保留 0x40
	.equ renwuduizhan,	0x200000d4 @ 任务堆栈
	@每个占用16个32位=0X40，8个就是0x200
	@保留 0X200
	.equ ddd, 0x200002d4
	
.section .text
vectors:          @向量表
        .word duizhanding                     
        .word _start + 1             @复位向量
        .word _nmi_handler + 1  
        .word _hard_fault  + 1  
        .word 0 
        .word 0    
        .word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word _svc + 1
	.word 0
	.word 0
	.word _pendsvzhongduan + 1
	.word _systickzhongduan + 1
	
	

_start:
_shizhong:                     @时钟设置
	ldr r2, = 0x40022000   @FLASH访问控制
	movs r1, # 0x32
	str r1, [r2]
	ldr r0, = 0x40021000 @ rcc
	@0x34时钟控制寄存器 2 (RCC_CR2)
	movs r1, # 0x01
	str r1, [r0, # 0x34]  @ HSI开14M时钟

_neicunqingling:
	ldr r0, = 0x20000000
	movs r1, # 0
	ldr r3, = 0x5000
_neicunqinglingxunhuan:
	subs r3, # 4
	str r1, [r0, r3]
	bne _neicunqinglingxunhuan

_systick:
	@ 0xe000ed20 30-31 youxianji
	ldr r0, = 0xe000e010
	ldr r1, = 10000    
	str r1, [r0, # 4]
	str r1, [r0, # 8]
	@movs r1, # 0x07
	@str r1, [r0]

	movs r0, # 0
	msr psp, r0

	ldr r0, = renwuduizhan
	ldr r1, = _kongxianrenwu
	str r1, [r0, # 0x24]
	str r1, [r0, # 0x28]
	ldr r1, = 0x01000000
	str r1, [r0, # 0x2c]
	movs r1, # 0x10
	mov r0, r0
	
	ldr r1, = renwukongzhikuai
	str r0, [r1]

	ldr r0, = renwubiao
	str r1, [r0]

	ldr r1, = dengyunxing
	str r0, [r1]
	
	
	
	
_kongxianrenwu:
	
	ldr r0, = 0xe000ed04
	ldr r1, = 0x10000000
	str r1, [r0]
	b _kongxianrenwu
	
_nmi_handler:
	bx lr
_hard_fault:
	bx lr
_svc:
	bx lr
_pendsvzhongduan:             @PENDSV中断
	cpsid i               @ 关中断
	mrs r0, psp           @ 读PSP当前地址到R0
	cmp r0, # 0	      @ psp等不等于0	
	beq _qiehuanrenwu     @ 不等于0就切换任务
	subs r0, r0, # 0X0c   @ PSP堆栈保留4个32位数
	stmia r0!, {r4-r7}
_qiehuanrenwu:                @ 切换任务
	ldr r0, = dangqian    @ 当前任务指针
	ldr r1, = dengyunxing @ 等待运行指针
	ldr r2, [r1]          @ 取出任务表里的指针
	str r2, [r0]          @ 任务表里的指针写到待运行指针
	ldr r0, [r2]          @ R0等于任务表地址
	ldr r0, [r0]          @ 取出任务堆栈底
  	ldmia r0!, {r4-r7}    @ 当前任务堆栈里的数据写到R4-R11
	msr psp, r0
	orrs lr, lr, # 0x04
	cpsie i               @ 开中断
	bx lr
_systickzhongduan:
	bx lr
