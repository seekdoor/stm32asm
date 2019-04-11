@#include "asmnames.h"

	.set  CYCLES , 32

	.text
	.align 4
	
	.global		point_of_return
	.type		point_of_return, %function
	.global		point_of_return_lu
	.type		point_of_return_lu, %function
	.global		patch_point_of_return
	.type		patch_point_of_return, %function
	.global		patch_spec_point_of_return
	.type		patch_spec_point_of_return, %function


	.global		int_0x40
	.type		int_0x40, %function
	.global		int_0x48
	.type		int_0x48, %function
	.global		int_0x50
	.type		int_0x50, %function
	.global		int_0x58
	.type		int_0x58, %function
	.global		int_0x60
	.type		int_0x60, %function
	
	.global		Anchor
	.type		Anchor, %function	 

	.global cpu
	.type cpu, object

	.global int_vec_table
	.type int_vec_table, object
	.global int_vec_table_template
	.type int_vec_table_template, object

cpu:				@ 56 Byte
	.word 0x0000	@ af				-88
	.word 0x0000	@ bc				-84
	.word 0x0000	@ de				-80
	.word 0x0000	@ hl				-76
	.word 0x0000	@ sp				-72
	.word 0x0000	@ pc				-68
	
	.word 0x0000	@ ime				-64
	.word 0x0000	@ xint				-60
	.word 0x0000	@ speed				-56
	.word 0x0000	@ halt				-52
	.word 0x0000	@ div				-48
	.word 0x0000	@ tim				-44
	.word 0x0000	@ lcdc				-40
	.word 0x0000	@ snd				-36

	.global mbc
	.type mbc, object
mbc:				@ 160 Byte
	.word 0x0000	@ type				-32
	.word 0x0000	@ model				-28
	.word 0x0000	@ rombank			-24
	.word 0x0000	@ rambank			-20
	.word 0x0000	@ romsize			-16
	.word 0x0000	@ ramsize			-12
	.word 0x0000	@ enableram			-08
	.word 0x0000	@ batt				-04

Anchor:
@rmap	
	.word 0, 0, 0, 0, 0, 0, 0, 0,    0, 0, 0, 0, 0, 0, 0, 0  
@wmap	
	.word 0, 0, 0, 0, 0, 0, 0, 0,    0, 0, 0, 0, 0, 0, 0, 0  
@tempwords (I don't like push)
	.word 0, 0 @FIXME: cycles and tempword for read-word
@daa_table
	.word daa_table
	.word daa_carry_table
	.word ram
@unsigned int hiram_dirty_mask[4];
	.global hiram_dirty_mask
	.type hiram_dirty_mask, object
hiram_dirty_mask:
	.word 0, 0, 0, 0

	.set DIVo, 4
	.set TIMAo, 5
	.set TMAo, 6
	.set TACo, 7
	
	.set IFo, 0x0f
	.set IEo, 0xff
	.set KEY1o, 0x4d

	.set halto,	-52
	.set IMEo, 	-64
	.set XINTo,	-60


	.set Ao,	-87 @FIXME 87
	.set Fo,	-88

	.set AFo,	-88
	.set BCo,	-84
	.set DEo,	-80
	.set HLo,	-76
	.set SPo, 	-72
	.set PCo,	-68	

	.set spdo,	-56
	.set divo,	-48
	.set timo,  -44
	.set lcdco, -40
	.set sndo,	-36

@--------------------------------------------------------------------
Lanchor: .word Anchor
@---------------------------------------------------------------------@
.global		cpu_emulate
	.type	cpu_emulate, %function
@---------------------------------------------------------------------@

cpu_emulate:
	stmfd	sp!, {r4-r11,lr}  @FIXME use many swaps	
	ldr		r11, Lanchor
	
	ldrb	r4, [r11, #Fo]		
	ldrb	r5, [r11, #Ao]			
	ldrh	r6, [r11, #BCo]
	ldrh	r7, [r11, #DEo]
	ldrh	r8, [r11, #HLo]
	ldrh	r9, [r11, #SPo]
	ldrh	r10, [r11, #PCo]

	b		next_lu
	
	
point_of_return_lu:
	rsb 	r0, r10, #CYCLES		@ r0 = cycles
	mov 	r10, r1
	bl 	advance_all
	ldr 	r1, [r11, #128]		@ FIXME 128 is offset of I
	subs  	r0, r1, r0 			@ r0 = I - cycles
	ble	return_native_lu
next_lu:
	ldr		r2, [r11, #halto]	@movl halt, %eax
	ldr		r3, [r11, #IMEo]	@andl IME, %eax
	ands		r2, r2, r3
	blne 		cpu_idle			@ r0 = cpu_idle(r0);
	@bl 	cpu_idle			@ r0 = cpu_idle(r0);
	cmp	r0, #0x00			@ check negative
	ble	return_native_lu	@ convertstate, return and restore regs
	str 	r0, [r11, #128]		@ FIXME 128 is offset of I
	ldr	r0, [r11, #IMEo]	@movl IME, %eax
	cmp	r0, #0				@testl %eax, %eax
	beq	int_no_lu
	ldr 	r3, Lram
	ldrb	r2, [r3, #IFo]		@movb IF, %cl
	ldrb	r1, [r3, #IEo]		@, #0xf0movb IE, %al
	ands	r1, r1, r2			@andb %cl, %al
	bne	int_begin_lu		@jnz .Lint
int_no_lu:  
	mov 	r0, r10
	mov 	r10, #CYCLES
	bl 	pc_to_native
	mov 	pc, r0
	
	
	
point_of_return:
	rsb 	r0, r10, #CYCLES		@ r0 = cycles
	mov		r10, r14				@ store next native addr FIXME use r10 directly
	bl 		advance_all
	ldr 	r1, [r11, #128]		@ FIXME 128 is offset of I
	subs  	r0, r1, r0 			@ r0 = I - cycles
	ble		return_native

@// state bei nextmarke: r0 = global cycles, r10 = pointer zu successor struct	
next:
	ldr		r2, [r11, #halto]	@movl halt, %eax
	ldr		r3, [r11, #IMEo]	@andl IME, %eax
	ands		r2, r2, r3
	blne 		cpu_idle			@ r0 = cpu_idle(r0);
	@bl 		cpu_idle			@ r0 = cpu_idle(r0);
	cmp		r0, #0x00			@ check negative
	ble		return_native		@ convertstate, return and restore regs

	str 	r0, [r11, #128]		@ FIXME 128 is offset of I

	ldr		r0, [r11, #IMEo]	@movl IME, %eax
	cmp		r0, #0				@testl %eax, %eax
	beq		int_no
	ldr 	r3, Lram
	ldrb	r2, [r3, #IFo]		@movb IF, %cl
	ldrb	r1, [r3, #IEo]		@, #0xf0movb IE, %al
	ands	r1, r1, r2			@andb %cl, %al
	bne		int_begin			@jnz .Lint
int_no:  
	@ldr		r0, [r11, #IMAo]	@movl IMA, %eax
	@str		r0, [r11, #IMEo]	@movl %eax, IME  

	mov 	r0, r10
	mov 	r10, #CYCLES
	ldr 	pc, [r0, #4]


patch_point_of_return:
	ldr 	r1, [r14, #0]
patch_spec_point_of_return:	
	ldr	r0, [r14, #4]
	bl 		ccmpl_patch			@ r0 = cmpl_patch(r0:PC , r1:Patchblock, r2:cascade)
		
	@ldr		r11, Lanchor @FIXME DEBUG r11
		
	rsb 	r1, r10, #CYCLES
	mov		r10,r0				@ next native addr
	mov		r0, r1
	bl 		advance_all
	ldr 	r1, [r11, #128]		@ FIXME 128 is offset of I
	subs  	r0, r1, r0 			@ r0 = I - cycles
	ldr 	r10, [r10, #0]
	bgt		next_lu
	b return_native_lu

@// state bei return native: r0 = negative global cycs, r10 = pointer zu successor struct
return_native:
	ldr 	r10, [r10, #0]
return_native_lu:
	strb	r4, [r11, #Fo]		
	strb	r5, [r11, #Ao]
	strh	r6, [r11, #BCo]
	strh	r7, [r11, #DEo]
	strh	r8, [r11, #HLo]
	strh	r9, [r11, #SPo]	
	strh	r10,[r11, #PCo]
	ldmfd	sp!, {r4-r11,pc}

@------------------------------------
5:	.word int_mask_table
6:	.word int_vec_table	
@	# throw an interrupt	r1...IF & IE		r2...IF (cl)     r3...RAM
int_begin:	
	ldr		r10, [r10, #0]			@r10 is no loger used as pointer to struct stored_successor
int_begin_lu:
	eor		r0, r0, r0
	str		r0, [r11, #IMEo]		@andb %ch, %cl
	str		r0, [r11, #halto]
	
	ldr		r0, 5b
	ldrb	r0, [r0, r1]			@movb int_mask_table(%eax), %ch
	and		r2, r2, r0				@???movl %edx, IMA
	strb	r2, [r3, #IFo]			@movb %cl, IF
	

	@begin push
		sub		r9, r9, #2
		mov		r0, r9, lsl #20
		cmn		r0, #0x100000
		beq		pushbl					
		mov		r0, r9, lsr #12
		add		r2, r11, #64
		ldr		r0, [r2,r0,lsl #2]
		cmp		r0, #0
		beq		pushbl					
		strb	r10, [r0, r9]		@ FIXME: post increment
		add		r2, r9, #1
		mov		r3, r10, lsr #8	
		strb	r3, [r0, r2]		
		b		pushend
pushbl:	
		str		r1, [r11, #132]	
		mov		r0, r9
		and		r1, r10, #0xff	
		bl		mem_write 
		add		r0, r9, #1
		mov		r1, r10, lsr #8	
		bl		mem_write	
		ldr		r1, [r11, #132]	
	@end push
pushend:
	mov 		r10, #CYCLES
	ldr 		r0, 6b
	ldr 		pc, [r0, r1, asl #2]
	

int_0x40:
	mov 	r0, #0x40
	bl		ccmpl_cache_interrupts
	mov 	pc, r0
	

int_0x48:
	mov 	r0, #0x48
	bl		ccmpl_cache_interrupts
	mov 	pc, r0

int_0x50:
	mov 	r0, #0x50
	bl		ccmpl_cache_interrupts
	mov 	pc, r0 
	
int_0x58:
	mov 	r0, #0x58
	bl		ccmpl_cache_interrupts
	mov 	pc, r0

int_0x60:
	mov 	r0, #0x60
	bl		ccmpl_cache_interrupts
	mov 	pc, r0
	
	
@------------------------------------		
.global		flush_cache
	.type		flush_cache, %function	
flush_cache:
	stmfd	sp!, {lr}
	mov		r2, #0
	swi		#0x9f0002
	ldmfd	sp!, {pc}
	
	
	
int_mask_table:
	.byte  ~0, ~1, ~2, ~1, ~4, ~1, ~2, ~1
	.byte  ~8, ~1, ~2, ~1, ~4, ~1, ~2, ~1
	.byte ~16, ~1, ~2, ~1, ~4, ~1, ~2, ~1
	.byte  ~8, ~1, ~2, ~1, ~4, ~1, ~2, ~1

int_vec_table:
	.word 	0,0,0,0,0,0,0,0
	.word 	0,0,0,0,0,0,0,0
	.word 	0,0,0,0,0,0,0,0
	.word 	0,0,0,0,0,0,0,0

Lram:
	.word ram
