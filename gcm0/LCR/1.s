	@@ 单片机stm32f030f4p6
	@lcr
	@作者：yjmwxwx
	@时间：2021-07-31
	@编译器：ARM-NONE-EABI
	.thumb
	.syntax unified
	.section .data
zheng_xian_100khz:
	.short 0x7,0x9,0xb,0xd,0xe,0xe,0xe,0xd,0xb,0x9,0x7,0x5,0x3,0x1,0x0,0x0,0x0,0x1,0x3,0x5
cos_sin_biao:
	.int 0x00008000,0x00000000,0x0000678D,0xFFFFB4C4,0x0000278D,0xFFFF8644,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C4,0xFFFF8000,0x00000000,0xFFFF9873,0x00004B3C,0xFFFFD873,0x000079BC,0x0000278D,0x000079BC,0x0000678D,0x00004B3C,0x00008000,0x00000000,0x0000678D,0xFFFFB4C4,0x0000278D,0xFFFF8644,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C4,0xFFFF8000,0x00000000,0xFFFF9873,0x00004B3C,0xFFFFD873,0x000079BC,0x0000278D,0x000079BC,0x0000678D,0x00004B3C,0x00008000,0x00000000,0x0000678D,0xFFFFB4C4,0x0000278D,0xFFFF8644,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C4,0xFFFF8000,0x00000000,0xFFFF9873,0x00004B3C,0xFFFFD872,0x000079BC,0x0000278D,0x000079BC,0x0000678D,0x00004B3C,0x00008000,0x00000000,0x0000678D,0xFFFFB4C4,0x0000278D,0xFFFF8644,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C4,0xFFFF8000,0x00000000,0xFFFF9873,0x00004B3C,0xFFFFD873,0x000079BC,0x0000278D,0x000079BC,0x0000678D,0x00004B3C,0x00008000,0x00000000,0x0000678D,0xFFFFB4C4,0x0000278E,0xFFFF8644,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C4,0xFFFF8000,0x00000000,0xFFFF9873,0x00004B3C,0xFFFFD873,0x000079BC,0x0000278D,0x000079BC,0x0000678D,0x00004B3C,0x00008000,0x00000000,0x0000678D,0xFFFFB4C4,0x0000278E,0xFFFF8644,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C4,0xFFFF8000,0x00000000,0xFFFF9873,0x00004B3C,0xFFFFD872,0x000079BC,0x0000278D,0x000079BC,0x0000678D,0x00004B3C,0x00008000,0x00000000,0x0000678E,0xFFFFB4C4,0x0000278E,0xFFFF8644,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C4,0xFFFF8000,0x00000000,0xFFFF9873,0x00004B3C,0xFFFFD872,0x000079BC,0x0000278D,0x000079BC,0x0000678D,0x00004B3C,0x00008000,0x00000000,0x0000678D,0xFFFFB4C4,0x0000278E,0xFFFF8644,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C4,0xFFFF8000,0x00000000,0xFFFF9872,0x00004B3C,0xFFFFD872,0x000079BC,0x0000278D,0x000079BC,0x0000678D,0x00004B3C,0x00008000,0x00000000,0x0000678E,0xFFFFB4C4,0x0000278E,0xFFFF8644,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C4,0xFFFF8000,0x00000000,0xFFFF9872,0x00004B3C,0xFFFFD872,0x000079BC,0x0000278D,0x000079BC,0x0000678D,0x00004B3C,0x00008000,0x00000000,0x0000678E,0xFFFFB4C4,0x0000278E,0xFFFF8644,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C4,0xFFFF8000,0x00000000,0xFFFF9872,0x00004B3C,0xFFFFD872,0x000079BC,0x0000278D,0x000079BC,0x0000678D,0x00004B3C,0x00008000,0x00000000,0x0000678E,0xFFFFB4C4,0x0000278E,0xFFFF8644,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C4,0xFFFF8000,0x00000000,0xFFFF9872,0x00004B3C,0xFFFFD872,0x000079BC,0x0000278D,0x000079BC,0x0000678D,0x00004B3D,0x00008000,0x00000000,0x0000678E,0xFFFFB4C4,0x0000278E,0xFFFF8644,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C4,0xFFFF8000,0x00000000,0xFFFF9872,0x00004B3C,0xFFFFD872,0x000079BC,0x0000278D,0x000079BC,0x0000678D,0x00004B3C,0x00008000,0x00000000,0x0000678E,0xFFFFB4C5,0x0000278E,0xFFFF8644,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C4,0xFFFF8000,0x00000000,0xFFFF9872,0x00004B3C,0xFFFFD872,0x000079BC,0x0000278D,0x000079BC,0x0000678D,0x00004B3C,0x00008000,0x00000000,0x0000678E,0xFFFFB4C4,0x0000278E,0xFFFF8644,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C3,0xFFFF8000,0x00000000,0xFFFF9872,0x00004B3C,0xFFFFD872,0x000079BC,0x0000278D,0x000079BC,0x0000678D,0x00004B3D,0x00008000,0x00000000,0x0000678E,0xFFFFB4C4,0x0000278E,0xFFFF8644,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C4,0xFFFF8000,0x00000000,0xFFFF9872,0x00004B3B,0xFFFFD872,0x000079BC,0x0000278D,0x000079BC,0x0000678D,0x00004B3D,0x00008000,0x00000000,0x0000678E,0xFFFFB4C5,0x0000278E,0xFFFF8645,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C3,0xFFFF8000,0x00000000,0xFFFF9872,0x00004B3B,0xFFFFD872,0x000079BC,0x0000278D,0x000079BC,0x0000678D,0x00004B3D,0x00008000,0x00000000,0x0000678E,0xFFFFB4C4,0x0000278E,0xFFFF8645,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C3,0xFFFF8000,0x00000000,0xFFFF9872,0x00004B3B,0xFFFFD872,0x000079BB,0x0000278D,0x000079BC,0x0000678D,0x00004B3D,0x00008000,0x00000000,0x0000678E,0xFFFFB4C5,0x0000278E,0xFFFF8645,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C4,0xFFFF8000,0x00000000,0xFFFF9872,0x00004B3B,0xFFFFD872,0x000079BB,0x0000278D,0x000079BC,0x0000678D,0x00004B3D,0x00008000,0x00000000,0x0000678E,0xFFFFB4C5,0x0000278E,0xFFFF8645,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C3,0xFFFF8000,0x00000000,0xFFFF9872,0x00004B3B,0xFFFFD872,0x000079BC,0x0000278D,0x000079BC,0x0000678D,0x00004B3D,0x00008000,0x00000000,0x0000678E,0xFFFFB4C5,0x0000278E,0xFFFF8645,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C3,0xFFFF8000,0x00000000,0xFFFF9872,0x00004B3B,0xFFFFD872,0x000079BB,0x0000278D,0x000079BC,0x0000678D,0x00004B3D,0x00008000,0x00000000,0x0000678E,0xFFFFB4C4,0x0000278E,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9873,0xFFFFB4C3,0xFFFF8000,0xFFFFFFFF,0xFFFF9872,0x00004B3B,0xFFFFD872,0x000079BC,0x0000278D,0x000079BC,0x0000678D,0x00004B3D,0x00008000,0x00000001,0x0000678E,0xFFFFB4C5,0x0000278E,0xFFFF8645,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C3,0xFFFF8000,0x00000000,0xFFFF9872,0x00004B3B,0xFFFFD872,0x000079BB,0x0000278C,0x000079BC,0x0000678D,0x00004B3D,0x00008000,0x00000001,0x0000678E,0xFFFFB4C5,0x0000278E,0xFFFF8644,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C3,0xFFFF8000,0x00000000,0xFFFF9872,0x00004B3C,0xFFFFD872,0x000079BB,0x0000278C,0x000079BC,0x0000678D,0x00004B3D,0x00008000,0x00000001,0x0000678E,0xFFFFB4C5,0x0000278E,0xFFFF8644,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C3,0xFFFF8000,0x00000000,0xFFFF9872,0x00004B3B,0xFFFFD872,0x000079BB,0x0000278C,0x000079BC,0x0000678D,0x00004B3D,0x00008000,0x00000001,0x0000678E,0xFFFFB4C5,0x0000278F,0xFFFF8645,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C3,0xFFFF8000,0x00000000,0xFFFF9872,0x00004B3B,0xFFFFD872,0x000079BB,0x0000278C,0x000079BC,0x0000678D,0x00004B3D,0x00008000,0x00000000,0x0000678E,0xFFFFB4C5,0x0000278E,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9873,0xFFFFB4C3,0xFFFF8000,0xFFFFFFFF,0xFFFF9872,0x00004B3B,0xFFFFD872,0x000079BB,0x0000278D,0x000079BC,0x0000678D,0x00004B3D,0x00008000,0x00000001,0x0000678E,0xFFFFB4C5,0x0000278F,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9873,0xFFFFB4C3,0xFFFF8000,0xFFFFFFFF,0xFFFF9872,0x00004B3B,0xFFFFD872,0x000079BB,0x0000278C,0x000079BC,0x0000678D,0x00004B3D,0x00008000,0x00000001,0x0000678E,0xFFFFB4C5,0x0000278F,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9873,0xFFFFB4C3,0xFFFF8000,0x00000000,0xFFFF9872,0x00004B3B,0xFFFFD872,0x000079BB,0x0000278C,0x000079BC,0x0000678D,0x00004B3D,0x00008000,0x00000001,0x0000678E,0xFFFFB4C5,0x0000278E,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9873,0xFFFFB4C3,0xFFFF8000,0xFFFFFFFF,0xFFFF9872,0x00004B3B,0xFFFFD871,0x000079BB,0x0000278C,0x000079BC,0x0000678D,0x00004B3D,0x00008000,0x00000001,0x0000678E,0xFFFFB4C5,0x0000278F,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9873,0xFFFFB4C3,0xFFFF8000,0x00000000,0xFFFF9872,0x00004B3B,0xFFFFD872,0x000079BB,0x0000278C,0x000079BC,0x0000678D,0x00004B3D,0x00008000,0x00000001,0x0000678E,0xFFFFB4C5,0x0000278F,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFF,0xFFFF9872,0x00004B3B,0xFFFFD872,0x000079BB,0x0000278C,0x000079BC,0x0000678D,0x00004B3D,0x00008000,0x00000000,0x0000678E,0xFFFFB4C5,0x0000278F,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9873,0xFFFFB4C3,0xFFFF8000,0xFFFFFFFF,0xFFFF9872,0x00004B3B,0xFFFFD871,0x000079BB,0x0000278C,0x000079BC,0x0000678C,0x00004B3D,0x00008000,0x00000001,0x0000678E,0xFFFFB4C5,0x0000278F,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9874,0xFFFFB4C3,0xFFFF8000,0xFFFFFFFF,0xFFFF9872,0x00004B3B,0xFFFFD871,0x000079BB,0x0000278C,0x000079BC,0x0000678C,0x00004B3D,0x00008000,0x00000001,0x0000678E,0xFFFFB4C5,0x0000278F,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9874,0xFFFFB4C3,0xFFFF8000,0x00000000,0xFFFF9872,0x00004B3B,0xFFFFD872,0x000079BB,0x0000278C,0x000079BC,0x0000678D,0x00004B3D,0x00008000,0x00000001,0x0000678E,0xFFFFB4C5,0x0000278F,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9874,0xFFFFB4C3,0xFFFF8000,0xFFFFFFFF,0xFFFF9872,0x00004B3B,0xFFFFD871,0x000079BB,0x0000278C,0x000079BC,0x0000678D,0x00004B3D,0x00008000,0x00000001,0x0000678E,0xFFFFB4C5,0x0000278F,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFF,0xFFFF9872,0x00004B3B,0xFFFFD871,0x000079BB,0x0000278C,0x000079BC,0x0000678D,0x00004B3D,0x00008000,0x00000001,0x0000678E,0xFFFFB4C5,0x0000278F,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9873,0xFFFFB4C3,0xFFFF8000,0xFFFFFFFE,0xFFFF9872,0x00004B3B,0xFFFFD871,0x000079BB,0x0000278C,0x000079BC,0x0000678C,0x00004B3D,0x00008000,0x00000001,0x0000678E,0xFFFFB4C5,0x0000278F,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9873,0xFFFFB4C3,0xFFFF8000,0xFFFFFFFF,0xFFFF9872,0x00004B3B,0xFFFFD872,0x000079BB,0x0000278C,0x000079BC,0x0000678C,0x00004B3D,0x00008000,0x00000001,0x0000678E,0xFFFFB4C5,0x0000278F,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9874,0xFFFFB4C3,0xFFFF8000,0xFFFFFFFF,0xFFFF9872,0x00004B3B,0xFFFFD872,0x000079BB,0x0000278C,0x000079BC,0x0000678D,0x00004B3D,0x00008000,0x00000001,0x0000678F,0xFFFFB4C6,0x0000278F,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9874,0xFFFFB4C3,0xFFFF8000,0xFFFFFFFF,0xFFFF9872,0x00004B3B,0xFFFFD871,0x000079BB,0x0000278C,0x000079BC,0x0000678D,0x00004B3D,0x00008000,0x00000001,0x0000678E,0xFFFFB4C5,0x0000278E,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFE,0xFFFF9871,0x00004B3A,0xFFFFD871,0x000079BB,0x0000278C,0x000079BC,0x0000678C,0x00004B3E,0x00008000,0x00000002,0x0000678E,0xFFFFB4C5,0x0000278F,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9873,0xFFFFB4C3,0xFFFF8000,0x00000000,0xFFFF9872,0x00004B3B,0xFFFFD870,0x000079BB,0x0000278B,0x000079BC,0x0000678C,0x00004B3D,0x00008000,0x00000002,0x0000678F,0xFFFFB4C6,0x0000278F,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9873,0xFFFFB4C3,0xFFFF8000,0xFFFFFFFE,0xFFFF9872,0x00004B3B,0xFFFFD871,0x000079BB,0x0000278C,0x000079BC,0x0000678C,0x00004B3E,0x00008000,0x00000001,0x0000678F,0xFFFFB4C6,0x00002790,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFF,0xFFFF9871,0x00004B3A,0xFFFFD872,0x000079BB,0x0000278C,0x000079BC,0x0000678C,0x00004B3D,0x00008000,0x00000002,0x0000678E,0xFFFFB4C5,0x00002790,0xFFFF8645,0xFFFFD875,0xFFFF8643,0xFFFF9873,0xFFFFB4C3,0xFFFF8000,0xFFFFFFFE,0xFFFF9872,0x00004B3B,0xFFFFD870,0x000079BB,0x0000278C,0x000079BC,0x0000678C,0x00004B3E,0x00008000,0x00000001,0x0000678F,0xFFFFB4C6,0x0000278F,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9874,0xFFFFB4C3,0xFFFF8000,0xFFFFFFFF,0xFFFF9871,0x00004B3A,0xFFFFD871,0x000079BB,0x0000278B,0x000079BD,0x0000678D,0x00004B3D,0x00008000,0x00000002,0x0000678E,0xFFFFB4C5,0x00002790,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9873,0xFFFFB4C3,0xFFFF8000,0xFFFFFFFF,0xFFFF9872,0x00004B3B,0xFFFFD871,0x000079BB,0x0000278B,0x000079BC,0x0000678C,0x00004B3E,0x00008000,0x00000001,0x0000678F,0xFFFFB4C6,0x0000278F,0xFFFF8645,0xFFFFD875,0xFFFF8643,0xFFFF9874,0xFFFFB4C3,0xFFFF8000,0xFFFFFFFF,0xFFFF9871,0x00004B3A,0xFFFFD871,0x000079BB,0x0000278C,0x000079BC,0x0000678D,0x00004B3D,0x00008000,0x00000002,0x0000678E,0xFFFFB4C5,0x00002790,0xFFFF8645,0xFFFFD875,0xFFFF8644,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFF,0xFFFF9872,0x00004B3B,0xFFFFD871,0x000079BB,0x0000278C,0x000079BC,0x0000678C,0x00004B3D,0x00008000,0x00000001,0x0000678F,0xFFFFB4C6,0x0000278F,0xFFFF8645,0xFFFFD875,0xFFFF8643,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFE,0xFFFF9872,0x00004B3B,0xFFFFD871,0x000079BB,0x0000278B,0x000079BC,0x0000678C,0x00004B3E,0x00008000,0x00000001,0x0000678E,0xFFFFB4C5,0x00002790,0xFFFF8645,0xFFFFD875,0xFFFF8644,0xFFFF9874,0xFFFFB4C3,0xFFFF8000,0xFFFFFFFF,0xFFFF9871,0x00004B3A,0xFFFFD871,0x000079BB,0x0000278C,0x000079BC,0x0000678C,0x00004B3E,0x00008000,0x00000002,0x0000678F,0xFFFFB4C6,0x0000278F,0xFFFF8645,0xFFFFD875,0xFFFF8644,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0x00000000,0xFFFF9872,0x00004B3B,0xFFFFD871,0x000079BB,0x0000278B,0x000079BC,0x0000678C,0x00004B3E,0x00008000,0x00000002,0x0000678F,0xFFFFB4C6,0x00002790,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFE,0xFFFF9871,0x00004B3A,0xFFFFD871,0x000079BB,0x0000278C,0x000079BC,0x0000678C,0x00004B3E,0x00008000,0x00000002,0x0000678E,0xFFFFB4C5,0x00002790,0xFFFF8645,0xFFFFD876,0xFFFF8643,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFE,0xFFFF9871,0x00004B3A,0xFFFFD870,0x000079BB,0x0000278B,0x000079BC,0x0000678C,0x00004B3D,0x00008000,0x00000002,0x0000678F,0xFFFFB4C6,0x0000278F,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFE,0xFFFF9871,0x00004B3A,0xFFFFD870,0x000079BB,0x0000278B,0x000079BC,0x0000678C,0x00004B3E,0x00008000,0x00000001,0x0000678F,0xFFFFB4C6,0x00002790,0xFFFF8645,0xFFFFD875,0xFFFF8644,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFE,0xFFFF9871,0x00004B3A,0xFFFFD871,0x000079BB,0x0000278B,0x000079BD,0x0000678C,0x00004B3E,0x00008000,0x00000002,0x0000678F,0xFFFFB4C6,0x00002790,0xFFFF8645,0xFFFFD875,0xFFFF8643,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFE,0xFFFF9871,0x00004B3A,0xFFFFD870,0x000079BB,0x0000278C,0x000079BC,0x0000678C,0x00004B3E,0x00008000,0x00000002,0x0000678F,0xFFFFB4C6,0x0000278F,0xFFFF8645,0xFFFFD875,0xFFFF8643,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFE,0xFFFF9871,0x00004B3A,0xFFFFD871,0x000079BB,0x0000278B,0x000079BD,0x0000678D,0x00004B3D,0x00008000,0x00000002,0x0000678E,0xFFFFB4C5,0x00002790,0xFFFF8645,0xFFFFD875,0xFFFF8644,0xFFFF9874,0xFFFFB4C1,0xFFFF8000,0xFFFFFFFE,0xFFFF9871,0x00004B3A,0xFFFFD870,0x000079BB,0x0000278B,0x000079BC,0x0000678C,0x00004B3E,0x00008000,0x00000001,0x0000678F,0xFFFFB4C6,0x0000278F,0xFFFF8645,0xFFFFD875,0xFFFF8643,0xFFFF9874,0xFFFFB4C3,0xFFFF8000,0xFFFFFFFE,0xFFFF9871,0x00004B3A,0xFFFFD870,0x000079BB,0x0000278B,0x000079BC,0x0000678C,0x00004B3E,0x00008000,0x00000002,0x0000678E,0xFFFFB4C5,0x00002790,0xFFFF8645,0xFFFFD875,0xFFFF8644,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFF,0xFFFF9871,0x00004B3A,0xFFFFD871,0x000079BB,0x0000278A,0x000079BD,0x0000678C,0x00004B3E,0x00008000,0x00000002,0x0000678F,0xFFFFB4C6,0x0000278F,0xFFFF8645,0xFFFFD875,0xFFFF8643,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFD,0xFFFF9871,0x00004B3A,0xFFFFD870,0x000079BB,0x0000278B,0x000079BC,0x0000678C,0x00004B3E,0x00008000,0x00000001,0x0000678F,0xFFFFB4C6,0x00002790,0xFFFF8645,0xFFFFD876,0xFFFF8643,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFE,0xFFFF9871,0x00004B39,0xFFFFD870,0x000079BB,0x0000278B,0x000079BD,0x0000678C,0x00004B3E,0x00008000,0x00000002,0x0000678F,0xFFFFB4C6,0x0000278F,0xFFFF8645,0xFFFFD875,0xFFFF8644,0xFFFF9875,0xFFFFB4C1,0xFFFF8000,0xFFFFFFFE,0xFFFF9871,0x00004B3A,0xFFFFD86F,0x000079BB,0x0000278A,0x000079BD,0x0000678C,0x00004B3E,0x00008000,0x00000002,0x0000678F,0xFFFFB4C6,0x00002790,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFE,0xFFFF9871,0x00004B3A,0xFFFFD870,0x000079BB,0x0000278A,0x000079BD,0x0000678B,0x00004B3F,0x00008000,0x00000002,0x0000678F,0xFFFFB4C6,0x0000278F,0xFFFF8645,0xFFFFD876,0xFFFF8643,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFD,0xFFFF9871,0x00004B39,0xFFFFD870,0x000079BB,0x0000278B,0x000079BD,0x0000678B,0x00004B3F,0x00008000,0x00000003,0x0000678F,0xFFFFB4C6,0x00002790,0xFFFF8645,0xFFFFD875,0xFFFF8643,0xFFFF9875,0xFFFFB4C1,0xFFFF8000,0xFFFFFFFE,0xFFFF9871,0x00004B3A,0xFFFFD870,0x000079BB,0x0000278A,0x000079BD,0x0000678C,0x00004B3E,0x00008000,0x00000001,0x0000678F,0xFFFFB4C6,0x00002790,0xFFFF8645,0xFFFFD875,0xFFFF8644,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFE,0xFFFF9871,0x00004B3A,0xFFFFD871,0x000079BB,0x0000278C,0x000079BC,0x0000678B,0x00004B3F,0x00008000,0x00000003,0x0000678F,0xFFFFB4C6,0x00002791,0xFFFF8645,0xFFFFD875,0xFFFF8643,0xFFFF9875,0xFFFFB4C1,0xFFFF8000,0xFFFFFFFD,0xFFFF9870,0x00004B39,0xFFFFD870,0x000079BB,0x0000278A,0x000079BD,0x0000678C,0x00004B3E,0x00008000,0x00000003,0x0000678F,0xFFFFB4C6,0x0000278F,0xFFFF8645,0xFFFFD875,0xFFFF8643,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFE,0xFFFF9871,0x00004B3A,0xFFFFD870,0x000079BB,0x0000278B,0x000079BD,0x0000678C,0x00004B3E,0x00008000,0x00000002,0x0000678E,0xFFFFB4C5,0x00002790,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9875,0xFFFFB4C1,0xFFFF8000,0xFFFFFFFD,0xFFFF9871,0x00004B39,0xFFFFD86F,0x000079BB,0x0000278A,0x000079BD,0x0000678C,0x00004B3E,0x00008000,0x00000003,0x0000678F,0xFFFFB4C7,0x00002790,0xFFFF8645,0xFFFFD876,0xFFFF8643,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFD,0xFFFF9871,0x00004B3A,0xFFFFD870,0x000079BB,0x0000278B,0x000079BC,0x0000678B,0x00004B3F,0x00008000,0x00000002,0x00006790,0xFFFFB4C7,0x00002790,0xFFFF8645,0xFFFFD875,0xFFFF8644,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFF,0xFFFF9871,0x00004B3A,0xFFFFD871,0x000079BB,0x0000278B,0x000079BD,0x0000678C,0x00004B3E,0x00008000,0x00000004,0x00006790,0xFFFFB4C7,0x00002790,0xFFFF8645,0xFFFFD876,0xFFFF8643,0xFFFF9875,0xFFFFB4C1,0xFFFF8000,0xFFFFFFFC,0xFFFF9871,0x00004B3A,0xFFFFD86F,0x000079BB,0x0000278A,0x000079BD,0x0000678B,0x00004B3F,0x00008000,0x00000002,0x0000678F,0xFFFFB4C7,0x00002790,0xFFFF8645,0xFFFFD876,0xFFFF8643,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFE,0xFFFF9871,0x00004B39,0xFFFFD870,0x000079BB,0x0000278B,0x000079BD,0x0000678C,0x00004B3E,0x00008000,0x00000003,0x0000678F,0xFFFFB4C6,0x0000278F,0xFFFF8645,0xFFFFD875,0xFFFF8644,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFE,0xFFFF9870,0x00004B39,0xFFFFD86E,0x000079BA,0x0000278A,0x000079BD,0x0000678B,0x00004B3F,0x00008000,0x00000003,0x00006790,0xFFFFB4C7,0x00002790,0xFFFF8645,0xFFFFD875,0xFFFF8643,0xFFFF9875,0xFFFFB4C1,0xFFFF8000,0xFFFFFFFD,0xFFFF9871,0x00004B3A,0xFFFFD870,0x000079BB,0x0000278A,0x000079BD,0x0000678B,0x00004B3F,0x00008000,0x00000003,0x0000678F,0xFFFFB4C6,0x00002791,0xFFFF8645,0xFFFFD876,0xFFFF8643,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFE,0xFFFF9871,0x00004B3A,0xFFFFD870,0x000079BB,0x0000278B,0x000079BC,0x0000678C,0x00004B3E,0x00008000,0x00000002,0x00006790,0xFFFFB4C7,0x00002791,0xFFFF8645,0xFFFFD877,0xFFFF8643,0xFFFF9875,0xFFFFB4C1,0xFFFF8000,0xFFFFFFFD,0xFFFF9870,0x00004B39,0xFFFFD86F,0x000079BB,0x0000278A,0x000079BD,0x0000678C,0x00004B3F,0x00008000,0x00000003,0x0000678F,0xFFFFB4C7,0x00002791,0xFFFF8645,0xFFFFD876,0xFFFF8643,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFD,0xFFFF9871,0x00004B3A,0xFFFFD870,0x000079BB,0x0000278B,0x000079BD,0x0000678B,0x00004B3F,0x00008000,0x00000002,0x0000678F,0xFFFFB4C6,0x00002790,0xFFFF8645,0xFFFFD876,0xFFFF8643,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFF,0xFFFF9871,0x00004B3A,0xFFFFD86F,0x000079BB,0x00002789,0x000079BD,0x0000678B,0x00004B3F,0x00008000,0x00000004,0x0000678F,0xFFFFB4C7,0x00002791,0xFFFF8646,0xFFFFD876,0xFFFF8643,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFE,0xFFFF9871,0x00004B39,0xFFFFD86F,0x000079BB,0x00002789,0x000079BD,0x0000678B,0x00004B3F,0x00008000,0x00000004,0x0000678F,0xFFFFB4C6,0x00002791,0xFFFF8645,0xFFFFD875,0xFFFF8644,0xFFFF9874,0xFFFFB4C1,0xFFFF8000,0xFFFFFFFD,0xFFFF9871,0x00004B3A,0xFFFFD86F,0x000079BB,0x0000278B,0x000079BC,0x0000678C,0x00004B3E,0x00008000,0x00000001,0x0000678F,0xFFFFB4C6,0x00002790,0xFFFF8645,0xFFFFD876,0xFFFF8643,0xFFFF9875,0xFFFFB4C0,0xFFFF8000,0xFFFFFFFD,0xFFFF9870,0x00004B39,0xFFFFD870,0x000079BB,0x0000278A,0x000079BD,0x0000678B,0x00004B3F,0x00008000,0x00000004,0x00006790,0xFFFFB4C7,0x00002792,0xFFFF8646,0xFFFFD876,0xFFFF8643,0xFFFF9875,0xFFFFB4C1,0xFFFF8000,0xFFFFFFFE,0xFFFF9871,0x00004B39,0xFFFFD86F,0x000079BA,0x0000278B,0x000079BD,0x0000678B,0x00004B3F,0x00008000,0x00000004,0x0000678F,0xFFFFB4C6,0x0000278F,0xFFFF8645,0xFFFFD875,0xFFFF8643,0xFFFF9875,0xFFFFB4C1,0xFFFF8000,0xFFFFFFFE,0xFFFF9871,0x00004B3A,0xFFFFD86F,0x000079BB,0x00002789,0x000079BD,0x0000678C,0x00004B3F,0x00008000,0x00000003,0x00006790,0xFFFFB4C8,0x00002792,0xFFFF8646,0xFFFFD876,0xFFFF8643,0xFFFF9875,0xFFFFB4C0,0xFFFF8000,0xFFFFFFFD,0xFFFF9871,0x00004B3A,0xFFFFD870,0x000079BB,0x0000278A,0x000079BD,0x0000678B,0x00004B40,0x00008000,0x00000003,0x00006790,0xFFFFB4C7,0x00002792,0xFFFF8646,0xFFFFD876,0xFFFF8643,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFE,0xFFFF9870,0x00004B39,0xFFFFD870,0x000079BB,0x0000278A,0x000079BD,0x0000678B,0x00004B3F,0x00008000,0x00000004,0x0000678E,0xFFFFB4C5,0x0000278F,0xFFFF8645,0xFFFFD875,0xFFFF8643,0xFFFF9876,0xFFFFB4BF,0xFFFF8000,0xFFFFFFFC,0xFFFF9870,0x00004B38,0xFFFFD86F,0x000079BB,0x0000278B,0x000079BD,0x0000678B,0x00004B3F,0x00008000,0x00000004,0x00006790,0xFFFFB4C8,0x00002791,0xFFFF8645,0xFFFFD877,0xFFFF8643,0xFFFF9876,0xFFFFB4C0,0xFFFF8000,0xFFFFFFFD,0xFFFF9871,0x00004B3A,0xFFFFD870,0x000079BB,0x0000278A,0x000079BD,0x0000678C,0x00004B3E,0x00008000,0x00000003,0x00006790,0xFFFFB4C7,0x00002792,0xFFFF8646,0xFFFFD874,0xFFFF8644,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFD,0xFFFF9870,0x00004B39,0xFFFFD870,0x000079BB,0x0000278A,0x000079BD,0x0000678A,0x00004B41,0x00008000,0x00000002,0x0000678F,0xFFFFB4C7,0x00002792,0xFFFF8646,0xFFFFD877,0xFFFF8643,0xFFFF9875,0xFFFFB4C1,0xFFFF8000,0xFFFFFFFC,0xFFFF9870,0x00004B38,0xFFFFD871,0x000079BB,0x0000278B,0x000079BD,0x0000678B,0x00004B3F,0x00008000,0x00000004,0x0000678F,0xFFFFB4C6,0x00002791,0xFFFF8645,0xFFFFD877,0xFFFF8643,0xFFFF9876,0xFFFFB4C0,0xFFFF8000,0xFFFFFFFD,0xFFFF9871,0x00004B3A,0xFFFFD86F,0x000079BB,0x0000278B,0x000079BC,0x0000678C,0x00004B3E,0x00008000,0x00000003,0x00006790,0xFFFFB4C8,0x00002790,0xFFFF8645,0xFFFFD874,0xFFFF8644,0xFFFF9874,0xFFFFB4C2,0xFFFF8000,0xFFFFFFFB,0xFFFF9870,0x00004B39,0xFFFFD86E,0x000079BA,0x00002788,0x000079BD,0x0000678B,0x00004B40,0x00008000,0x00000003,0x00006790,0xFFFFB4C7,0x00002792,0xFFFF8646,0xFFFFD876,0xFFFF8643,0xFFFF9875,0xFFFFB4C1,0xFFFF8000,0xFFFFFFFC,0xFFFF986F,0x00004B38,0xFFFFD86F,0x000079BA,0x0000278A,0x000079BD,0x0000678B,0x00004B3F,0x00008000,0x00000002,0x0000678F,0xFFFFB4C7,0x00002791,0xFFFF8646,0xFFFFD877,0xFFFF8643,0xFFFF9875,0xFFFFB4C1,0xFFFF8000,0xFFFFFFFC,0xFFFF9871,0x00004B3A,0xFFFFD86F,0x000079BB,0x0000278B,0x000079BC,0x0000678B,0x00004B3F,0x00008000,0x00000005,0x00006790,0xFFFFB4C8,0x00002791,0xFFFF8645,0xFFFFD877,0xFFFF8643,0xFFFF9876,0xFFFFB4C0,0xFFFF8000,0xFFFFFFFD,0xFFFF9870,0x00004B38,0xFFFFD86E,0x000079BA,0x00002788,0x000079BE,0x0000678B,0x00004B40,0x00008000,0x00000003,0x00006790,0xFFFFB4C7,0x00002790,0xFFFF8645,0xFFFFD876,0xFFFF8643,0xFFFF9875,0xFFFFB4C0,0xFFFF8000,0xFFFFFFFB,0xFFFF9870,0x00004B39,0xFFFFD86E,0x000079BA,0x0000278A,0x000079BD,0x0000678C,0x00004B3E,0x00008000,0x00000002,0x0000678F,0xFFFFB4C7,0x00002791,0xFFFF8646,0xFFFFD875,0xFFFF8643,0xFFFF9875,0xFFFFB4C1,0xFFFF8000,0xFFFFFFFC,0xFFFF9870,0x00004B38,0xFFFFD86F,0x000079BA,0x00002789,0x000079BD,0x0000678A,0x00004B40,0x00008000,0x00000004,0x00006790,0xFFFFB4C8,0x00002791,0xFFFF8645,0xFFFFD877,0xFFFF8643,0xFFFF9874,0xFFFFB4C1,0xFFFF8000,0xFFFFFFFD,0xFFFF9870,0x00004B38,0xFFFFD86E,0x000079BA,0x00002789,0x000079BD,0x0000678B,0x00004B40
	
kong:
	.int 0x20202020
_fu:
	.ascii "-"
yjmwxwx:
	.ascii "yjmwxwx-20210731"
	.align 4
	.equ STACKINIT,        	        0x20001000
	.equ asciimabiao,		0x20000000
	.equ lcd_beiguang,		0x20000020
	.equ shangbi_r, 		0x20000024
	.equ shangbi_i,			0x20000028
	.equ xiabi_r,			0x2000002c
	.equ xiabi_i,			0x20000030
	.equ shangxiabi_qiehuan,	0x20000034
	.equ dianyabiao,		0x20000100
	.equ lvboqizhizhen,		0x200008d0
	.equ lvboqihuanchong,		0x200008d8
	.equ lvboqizhizhen1,            0x200009e0
	.equ lvboqihuanchong1,          0x200009e8
        .equ lvboqizhizhen2,            0x20000af0
	.equ lvboqihuanchong2,           0x20000af8
	.equ lvboqizhizhen3,            0x20000c00
	.equ lvboqihuanchong3,          0x20000c08
	
	
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
	ldr r0, = 0x20000000
	movs r1, # 0
	ldr r3, = 0x1000
_neicunqinglingxunhuan:
	subs r3, # 4
	str r1, [r0, r3]
	bne _neicunqinglingxunhuan

_waishezhongduan:					@外设中断
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
	ldr r1, = 0x28245755
	str r1, [r0]
	movs r1, # 0x07
	str r1, [r0, # 0x04]
	ldr r1, = 0x200
	str r1, [r0, # 0x24]

        ldr r0, = 0x48000400
	movs r1, # 0x04
	str r1, [r0]

	movs r1, # 0x02
	str r1, [r0, # 0x28]

	ldr r0, = 0x48000000
	ldr r1, = 0x200
	str r1, [r0, # 0x28]

	movs r1, #  0x40
	str r1, [r0, # 0x28] 	@cd4053_9_10

	movs r1, # 0x20
	str r1, [r0, # 0x28]	@cd4053_11

	movs r1, # 0x08
	str r1, [r0, # 0x28]	@cd4052_B

	movs r1, # 80
	str r1, [r0, # 0x28]  	@cd4052_A
	
__kai_lcd_bei_guang:
        ldr r0, = lcd_beiguang
	movs r1, # 0xc0
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

	@tim1ch3DMA
	ldr r0, = 0x40020000
	ldr r1, = 0x40012c3c @ 外设地址
	str r1, [r0, # 0x60]
	ldr r1, = zheng_xian_100khz @ 储存器地址
	str r1, [r0, # 0x64]
	ldr r1, = 20             @点数
	str r1, [r0, # 0x5c]
	ldr r1, = 0x35b1         @ 储存到外设
	str r1, [r0, # 0x58]

	@ adc dma
	ldr r0, = 0x40020000
	ldr r1, = 0x40012440
	str r1, [r0, # 0x10]
	ldr r1, = dianyabiao
	str r1, [r0, # 0x14]
	ldr r1, = 1000
	str r1, [r0, # 0x0c]
	ldr r1, = 0x5a1 @  0x583 	@ 5a1
	str r1, [r0, # 0x08]
	
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
	ldr r1, = 0x10
	str r1, [r0, # 0x28]    @ 通道选择寄存器 (ADC_CHSELR)
	ldr r1, = 0x8c3 @ 0xc43		@TIM3 0x8c3 @0x2003 @0x8c3
	str r1, [r0, # 0x0c]    @ 配置寄存器 1 (ADC_CFGR1)
	movs r1, # 0
	str r1, [r0, # 0x14]    @ ADC 采样时间寄存器 (ADC_SMPR)
	ldr r1, [r0, # 0x08]
	ldr r2, = 0x04         @ 开始转换
	orrs r1, r1, r2
	str r1, [r0, # 0x08]    @ 控制寄存器 (ADC_CR)


_systick:	                             @ systick定时器初始化

	ldr r7, = 0xe000e010
	ldr r6, = 55999
	str r6, [r7, # 4]
	str r6, [r7, # 8]
	movs r6, # 0x07
	str r6, [r7]    @systick 开

	ldr r5, = 0x3690
__systick_yans:	
	subs r5, r5, # 1
	bne __systick_yans
	
tim3chushihua:
	ldr r3, = 0x40000400 @ tim3_cr1
	ldr r4, = 0
	str r4, [r3, # 0x28] @ psc
	ldr r4, = 27
	str r4, [r3, # 0x2c] @ ARR
	movs r4, # 0x20
	str r4, [r3, # 0x04] @ TRGO
	movs r4, # 0x06
	str r4, [r3, # 0x08]
	movs r4, # 0x80
@	str r4, [r3]
tim1chushiha:
	ldr r0, = 0x40012c00 @ tim1_cr1
	movs r1, # 0
	str r1, [r0, # 0x28] @ psc
	ldr r1, = 27
	str r1, [r0, # 0x2c] @ ARR
	movs r1, # 0x20
	str r1, [r0, # 0x04] @ TRGO
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
        str r4, [r3]
	
	
ting:
	bl __xianshi_shangxia_bi
	b ting



	
__xianshi_shangxia_bi:
	push {r0-r7,lr}
	ldr r0, = shangbi_r
	ldr r2, = shangbi_i
	ldr r1, [r0]
	ldr r7, [r2]
	movs r4, r1
	bpl a1
	movs r0, # 0x80
	ldr r1, = _fu
	movs r2, # 1
	bl _lcdxianshi
	mvns r4, r4
	adds r4, r4, # 1
	b a2
a1:
	movs r0, # 0x80
	ldr r1, = kong
	movs r2, # 1
	bl _lcdxianshi
a2:
	mov r0, r4
	movs r1, # 5
	ldr r2, = asciimabiao
	movs r3, # 0xff
	bl _zhuanascii
	movs r0, # 0x81
	ldr r1, = asciimabiao
	movs r2, # 5
	bl _lcdxianshi


	movs r4, r7
	bpl b1
	movs r0, # 0x8a
	ldr r1, = _fu
	movs r2, # 1
	bl _lcdxianshi
	mvns r4, r4
	adds r4, r4, # 1
	b b2
b1:
	movs r0, # 0x8a
	ldr r1, = kong
	movs r2, # 1
	bl _lcdxianshi
b2:
	mov r0, r4
	movs r1, # 5
	ldr r2, = asciimabiao
	movs r3, # 0xff
	bl _zhuanascii
	movs r0, # 0x8b
	ldr r1, = asciimabiao
	movs r2, # 5
	bl _lcdxianshi

        ldr r0, = xiabi_r
	ldr r2, = xiabi_i
	ldr r1, [r0]
	ldr r7, [r2]
	movs r4, r1
	bpl c1
	movs r0, # 0xc0
	ldr r1, = _fu
	movs r2, # 1
	bl _lcdxianshi
	mvns r4, r4
	adds r4, r4, # 1
	b c2
c1:
	movs r0, # 0xc0
	ldr r1, = kong
	movs r2, # 1
	bl _lcdxianshi
c2:
	mov r0, r4
	movs r1, # 5
	ldr r2, = asciimabiao
	movs r3, # 0xff
	bl _zhuanascii
	movs r0, # 0xc1
	ldr r1, = asciimabiao
	movs r2, # 5
	bl _lcdxianshi


	movs r4, r7
	bpl d1
	movs r0, # 0xca
	ldr r1, = _fu
	movs r2, # 1
	bl _lcdxianshi
	mvns r4, r4
	adds r4, r4, # 1
	b d2
d1:
	movs r0, # 0xca
	ldr r1, = kong
	movs r2, # 1
	bl _lcdxianshi
d2:
	mov r0, r4
	movs r1, # 5
	ldr r2, = asciimabiao
	movs r3, # 0xff
	bl _zhuanascii
	movs r0, # 0xcb
	ldr r1, = asciimabiao
	movs r2, # 5
	bl _lcdxianshi
	pop {r0-r7,pc}

__dft:
	push {r2-r7,lr}
	mov r2, r8
	push {r2}
	ldr r0, = dianyabiao
	ldr r1, = cos_sin_biao
	ldr r3, = 1984	@ 点数*2-16
	ldr r4, = 2048
	adds r3, r3, r0
	mov r8, r3
	movs r2, # 0
	mov r7, r2
__dft_xunhuan:
	ldrh r3, [r0]
	ldr r5, [r1]
	ldr r6, [r1, # 0x04]
	subs r3, r3, r4
	muls r5, r5, r3
	asrs r5, r5, # 15
	muls r6, r6, r3
	asrs r6, r6, # 15
	adds r2, r2, r5
	adds r7, r7, r6
	adds r0, r0, # 0x02
	adds r1, r1, # 0x08
	cmp r0, r8
	bne __dft_xunhuan
@	ldr r0, = r
@	ldr r1, = i
@	asrs r2, r2, # 7
@	asrs r7, r7, # 7
	mov r0, r2
	mov r1, r7
@	str r2, [r0]
@	str r7, [r1]
	pop {r2}
	mov r8, r2
	pop {r2-r7,pc}
	
__lv_bo_qi:
	@地址顺序：指针，累加值，缓冲区
	@入口R0=缓冲区，R1=数据, r2,=指针
	@出口R0
	push {r3-r6,lr}
	movs r4, # 64 @ =128
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
	asrs r0, r1, # 12 @  7	@128
	pop {r3-r6,pc}
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

_xielcd:				@入R0=8位,r1=0命令,r1=1数据
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
	movs r0, r2
	bl __74hc595
	subs r0, r0, # 0x02
	bl __74hc595
	mov r0, r1
	adds r0, r0, r3
	bl __74hc595
	subs r0, r0, # 0x02
	bl __74hc595
	pop {r0-r5,pc}

__74hc595:				@ 入R0=8位
	push {r0-r7,lr}
	ldr r6, = 0x48000000
	movs r5, # 0x01		@ SRCLK
	movs r2, # 0x02		@ RCLK
	movs r3, # 0x04		@ SER
	movs r4, # 24
__595_yiweixunhuan:
	str r2, [r6, # 0x28]	@ rclk=0
	str r5, [r6, # 0x28]	@ srclk=0
	@movs r7, # 0xff
	ldr r7, = 0x1ff
__595_yanshi:
	subs r7, r7, # 1
	bne __595_yanshi
	mov r1, r0
	lsls r1, r1, r4
	bpl __ser_0
__ser_1:
	str r3, [r6, # 0x18]	@ ser=1
	b __595_yiwei
__ser_0:
	str r3, [r6, # 0x28]	@ ser=0
__595_yiwei:
	str r5, [r6, # 0x18]
	@movs r7, # 0xff
	ldr r7, = 0x1ff
__595_yanshi1:
	subs r7, r7, # 1
	bne __595_yanshi1
	adds r4, r4, # 1
	cmp r4, # 32
	bne __595_yiweixunhuan
	str r2, [r6, # 0x18]	@ rclk=1
	@movs r7, # 0xff
	ldr r7, = 0x1ff
__595_yanshi2:
	subs r7, r7, # 1
	bne __595_yanshi2
	str r2, [r6, # 0x28]	@ rclk = 0
	pop {r0-r7,pc}
	

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
	ldr r0, = 0xe0000d04
	ldr r1, = 0x02000000
	str r1, [r0]                 @ 清除SYSTICK中断
	ldr r2, = shangxiabi_qiehuan
	ldr r3, [r2]
	cmp r3, # 1
	bne __shangbi_dft
        movs r3, # 0
	str r3, [r2]
	ldr r2, = 0x48000000
	movs r3, #  0x40
	str r3, [r2, # 0x28]    @cd4053_9_10 上臂开
	ldr r2, = 0x20000040
	ldr r0, = 0x40020000
	ldr r0, [r0, # 0x0c]
	str r0, [r2]
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
	movs r3, # 1
	str r3, [r2]
	ldr r2, = 0x48000000
        movs r3, #  0x40
	str r3, [r2, # 0x18]    @cd4053_9_10 下臂开
	ldr r2, = 0x20000044
	ldr r0, = 0x40020000
	ldr r0, [r0, # 0x0c]
	str r0, [r2]
	bl __dft
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
	pop {r4,pc}
aaa:
	bx lr
	.ltorg
	.end