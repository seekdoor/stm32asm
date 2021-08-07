	@@ 单片机stm32f030f4p6
	@磁通门传感器
	@作者：yjmwxwx
	@时间：2021-05-28
	@编译器：ARM-NONE-EABI
	.thumb
	.syntax unified
	.section .data
cos_sin_biao:
	.int 0x00008000,0x00000000,0x00007EFD,0xFFFFEFF6,0x00007BFA,0xFFFFE02B,0x00007702,0xFFFFD0E2,0x0000702A,0xFFFFC256,0x0000678D,0xFFFFB4C4,0x00005D4E,0xFFFFA861,0x00005197,0xFFFF9D60,0x00004495,0xFFFF93EE,0x0000367F,0xFFFF8C2F,0x0000278D,0xFFFF8644,0x000017FC,0xFFFF8245,0x00000809,0xFFFF8041,0xFFFFF7F7,0xFFFF8041,0xFFFFE804,0xFFFF8245,0xFFFFD873,0xFFFF8644,0xFFFFC981,0xFFFF8C2F,0xFFFFBB6B,0xFFFF93EE,0xFFFFAE69,0xFFFF9D60,0xFFFFA2B2,0xFFFFA861,0xFFFF9873,0xFFFFB4C4,0xFFFF8FD6,0xFFFFC256,0xFFFF88FE,0xFFFFD0E2,0xFFFF8406,0xFFFFE02B,0xFFFF8103,0xFFFFEFF6,0xFFFF8000,0x00000000,0xFFFF8103,0x0000100A,0xFFFF8406,0x00001FD5,0xFFFF88FE,0x00002F1E,0xFFFF8FD6,0x00003DAA,0xFFFF9873,0x00004B3C,0xFFFFA2B2,0x0000579F,0xFFFFAE69,0x000062A0,0xFFFFBB6A,0x00006C12,0xFFFFC981,0x000073D1,0xFFFFD873,0x000079BC,0xFFFFE804,0x00007DBB,0xFFFFF7F7,0x00007FBF,0x00000809,0x00007FBF,0x000017FC,0x00007DBB,0x0000278D,0x000079BC,0x0000367F,0x000073D1,0x00004495,0x00006C12,0x00005197,0x000062A0,0x00005D4E,0x0000579F,0x0000678D,0x00004B3C,0x0000702A,0x00003DAA,0x00007702,0x00002F1E,0x00007BFA,0x00001FD5,0x00007EFD,0x0000100A,0x00008000,0x00000000,0x00007EFD,0xFFFFEFF6,0x00007BFA,0xFFFFE02B,0x00007702,0xFFFFD0E2,0x0000702A,0xFFFFC256,0x0000678D,0xFFFFB4C4,0x00005D4E,0xFFFFA861,0x00005197,0xFFFF9D60,0x00004496,0xFFFF93EE,0x0000367F,0xFFFF8C2F,0x0000278D,0xFFFF8644,0x000017FC,0xFFFF8245,0x00000809,0xFFFF8041,0xFFFFF7F7,0xFFFF8041,0xFFFFE804,0xFFFF8245,0xFFFFD873,0xFFFF8644,0xFFFFC981,0xFFFF8C2F,0xFFFFBB6B,0xFFFF93EE,0xFFFFAE69,0xFFFF9D60,0xFFFFA2B2,0xFFFFA861,0xFFFF9873,0xFFFFB4C4,0xFFFF8FD6,0xFFFFC256,0xFFFF88FE,0xFFFFD0E2,0xFFFF8406,0xFFFFE02B,0xFFFF8103,0xFFFFEFF6,0xFFFF8000,0x00000000,0xFFFF8103,0x0000100A,0xFFFF8406,0x00001FD5,0xFFFF88FE,0x00002F1E,0xFFFF8FD6,0x00003DAA,0xFFFF9873,0x00004B3C,0xFFFFA2B2,0x0000579F,0xFFFFAE69,0x000062A0,0xFFFFBB6A,0x00006C12,0xFFFFC981,0x000073D1,0xFFFFD873,0x000079BC,0xFFFFE804,0x00007DBB,0xFFFFF7F7,0x00007FBF,0x00000809,0x00007FBF,0x000017FC,0x00007DBB,0x0000278D,0x000079BC,0x0000367F,0x000073D1,0x00004495,0x00006C12,0x00005197,0x000062A0,0x00005D4E,0x0000579F,0x0000678D,0x00004B3C,0x0000702A,0x00003DAA,0x00007702,0x00002F1E,0x00007BFA,0x00001FD5,0x00007EFD,0x0000100B,0x00008000,0x00000000,0x00007EFD,0xFFFFEFF6,0x00007BFA,0xFFFFE02C,0x00007702,0xFFFFD0E2,0x0000702A,0xFFFFC256,0x0000678D,0xFFFFB4C4,0x00005D4E,0xFFFFA861,0x00005197,0xFFFF9D60,0x00004496,0xFFFF93EE,0x0000367F,0xFFFF8C2F,0x0000278D,0xFFFF8644,0x000017FC,0xFFFF8245,0x00000809,0xFFFF8041,0xFFFFF7F7,0xFFFF8041,0xFFFFE805,0xFFFF8245,0xFFFFD873,0xFFFF8644,0xFFFFC981,0xFFFF8C2F,0xFFFFBB6B,0xFFFF93ED,0xFFFFAE69,0xFFFF9D60,0xFFFFA2B2,0xFFFFA861,0xFFFF9873,0xFFFFB4C4,0xFFFF8FD6,0xFFFFC256,0xFFFF88FE,0xFFFFD0E2,0xFFFF8406,0xFFFFE02B,0xFFFF8103,0xFFFFEFF5,0xFFFF8000,0x00000000,0xFFFF8103,0x0000100A,0xFFFF8406,0x00001FD4,0xFFFF88FE,0x00002F1E,0xFFFF8FD6,0x00003DAA,0xFFFF9873,0x00004B3C,0xFFFFA2B2,0x0000579F,0xFFFFAE69,0x000062A0,0xFFFFBB6A,0x00006C12,0xFFFFC980,0x000073D1,0xFFFFD873,0x000079BC,0xFFFFE804,0x00007DBB,0xFFFFF7F7,0x00007FBF,0x00000809,0x00007FBF,0x000017FC,0x00007DBB,0x0000278D,0x000079BC,0x0000367F,0x000073D1,0x00004495,0x00006C13,0x00005197,0x000062A0,0x00005D4E,0x0000579F,0x0000678D,0x00004B3C,0x0000702A,0x00003DAA,0x00007702,0x00002F1E,0x00007BFA,0x00001FD5,0x00007EFD,0x0000100B,0x00008000,0x00000000,0x00007EFD,0xFFFFEFF6,0x00007BFA,0xFFFFE02C,0x00007702,0xFFFFD0E2,0x0000702A,0xFFFFC256,0x0000678D,0xFFFFB4C4,0x00005D4E,0xFFFFA861,0x00005197,0xFFFF9D60,0x00004496,0xFFFF93EE,0x00003680,0xFFFF8C2F,0x0000278D,0xFFFF8644,0x000017FC,0xFFFF8245,0x00000809,0xFFFF8041,0xFFFFF7F7,0xFFFF8041,0xFFFFE805,0xFFFF8245,0xFFFFD873,0xFFFF8644,0xFFFFC981,0xFFFF8C2F,0xFFFFBB6B,0xFFFF93EE,0xFFFFAE69,0xFFFF9D60,0xFFFFA2B2,0xFFFFA861,0xFFFF9873,0xFFFFB4C4,0xFFFF8FD6,0xFFFFC256,0xFFFF88FE,0xFFFFD0E2,0xFFFF8406,0xFFFFE02B,0xFFFF8103,0xFFFFEFF5,0xFFFF8000,0x00000000,0xFFFF8103,0x0000100A,0xFFFF8406,0x00001FD4,0xFFFF88FE,0x00002F1E,0xFFFF8FD6,0x00003DA9,0xFFFF9873,0x00004B3C,0xFFFFA2B2,0x0000579F,0xFFFFAE69,0x000062A0,0xFFFFBB6A,0x00006C12,0xFFFFC980,0x000073D1,0xFFFFD873,0x000079BC,0xFFFFE804,0x00007DBB,0xFFFFF7F7,0x00007FBF,0x00000809,0x00007FBF,0x000017FB,0x00007DBB,0x0000278D,0x000079BC,0x0000367F,0x000073D1,0x00004495,0x00006C13,0x00005196,0x000062A0,0x00005D4E,0x0000579F,0x0000678D,0x00004B3C,0x0000702A,0x00003DAA,0x00007702,0x00002F1E,0x00007BFA,0x00001FD5,0x00007EFD,0x0000100B,0x00008000,0x00000000,0x00007EFD,0xFFFFEFF6,0x00007BFA,0xFFFFE02C,0x00007702,0xFFFFD0E2,0x0000702A,0xFFFFC257,0x0000678D,0xFFFFB4C4,0x00005D4E,0xFFFFA861,0x00005197,0xFFFF9D60,0x00004496,0xFFFF93EE,0x00003680,0xFFFF8C2F,0x0000278E,0xFFFF8644,0x000017FC,0xFFFF8245,0x00000809,0xFFFF8041,0xFFFFF7F7,0xFFFF8041,0xFFFFE805,0xFFFF8245,0xFFFFD873,0xFFFF8644,0xFFFFC981,0xFFFF8C2F,0xFFFFBB6B,0xFFFF93ED,0xFFFFAE69,0xFFFF9D60,0xFFFFA2B2,0xFFFFA861,0xFFFF9873,0xFFFFB4C4,0xFFFF8FD6,0xFFFFC256,0xFFFF88FE,0xFFFFD0E2,0xFFFF8406,0xFFFFE02B,0xFFFF8103,0xFFFFEFF5,0xFFFF8000,0x00000000,0xFFFF8103,0x0000100A,0xFFFF8406,0x00001FD4,0xFFFF88FD,0x00002F1E,0xFFFF8FD6,0x00003DA9,0xFFFF9873,0x00004B3C,0xFFFFA2B2,0x0000579F,0xFFFFAE69,0x000062A0,0xFFFFBB6A,0x00006C12,0xFFFFC980,0x000073D1,0xFFFFD872,0x000079BC,0xFFFFE804,0x00007DBB,0xFFFFF7F7,0x00007FBF,0x00000809,0x00007FBF,0x000017FB,0x00007DBB,0x0000278D,0x000079BC,0x0000367F,0x000073D1,0x00004495,0x00006C13,0x00005196,0x000062A0,0x00005D4E,0x0000579F,0x0000678D,0x00004B3C,0x0000702A,0x00003DAA,0x00007702,0x00002F1E,0x00007BFA,0x00001FD5,0x00007EFD,0x0000100B,0x00008000,0x00000000,0x00007EFD,0xFFFFEFF6,0x00007BFA,0xFFFFE02C,0x00007703,0xFFFFD0E2,0x0000702A,0xFFFFC257,0x0000678D,0xFFFFB4C4,0x00005D4E,0xFFFFA861,0x00005197,0xFFFF9D60,0x00004496,0xFFFF93EE,0x00003680,0xFFFF8C2F,0x0000278E,0xFFFF8644,0x000017FC,0xFFFF8245,0x00000809,0xFFFF8041,0xFFFFF7F7,0xFFFF8041,0xFFFFE805,0xFFFF8245,0xFFFFD873,0xFFFF8644,0xFFFFC981,0xFFFF8C2F,0xFFFFBB6B,0xFFFF93ED,0xFFFFAE6A,0xFFFF9D60,0xFFFFA2B2,0xFFFFA861,0xFFFF9873,0xFFFFB4C4,0xFFFF8FD6,0xFFFFC256,0xFFFF88FE,0xFFFFD0E2,0xFFFF8406,0xFFFFE02B,0xFFFF8103,0xFFFFEFF5,0xFFFF8000,0x00000000,0xFFFF8103,0x0000100A,0xFFFF8406,0x00001FD4,0xFFFF88FE,0x00002F1E,0xFFFF8FD6,0x00003DA9,0xFFFF9872,0x00004B3C,0xFFFFA2B1,0x0000579F,0xFFFFAE69,0x000062A0,0xFFFFBB6A,0x00006C12,0xFFFFC980,0x000073D1,0xFFFFD872,0x000079BC,0xFFFFE804,0x00007DBB,0xFFFFF7F7,0x00007FBF,0x00000809,0x00007FBF,0x000017FB,0x00007DBB,0x0000278D,0x000079BC,0x0000367F,0x000073D1,0x00004495,0x00006C13,0x00005196,0x000062A0,0x00005D4E,0x0000579F,0x0000678D,0x00004B3C,0x0000702A,0x00003DAA,0x00007702,0x00002F1E,0x00007BFA,0x00001FD5,0x00007EFD,0x0000100B,0x00008000,0x00000000,0x00007EFD,0xFFFFEFF6,0x00007BFA,0xFFFFE02C,0x00007702,0xFFFFD0E2,0x0000702A,0xFFFFC257,0x0000678E,0xFFFFB4C4,0x00005D4F,0xFFFFA861,0x00005197,0xFFFF9D60,0x00004496,0xFFFF93EE,0x00003680,0xFFFF8C2F,0x0000278E,0xFFFF8644,0x000017FC,0xFFFF8245,0x00000809,0xFFFF8041,0xFFFFF7F7,0xFFFF8041,0xFFFFE805,0xFFFF8245,0xFFFFD873,0xFFFF8644,0xFFFFC981,0xFFFF8C2F,0xFFFFBB6B,0xFFFF93ED,0xFFFFAE6A,0xFFFF9D60,0xFFFFA2B2,0xFFFFA861,0xFFFF9873,0xFFFFB4C4,0xFFFF8FD6,0xFFFFC256,0xFFFF88FE,0xFFFFD0E2,0xFFFF8406,0xFFFFE02B,0xFFFF8103,0xFFFFEFF5,0xFFFF8000,0x00000000,0xFFFF8103,0x0000100A,0xFFFF8406,0x00001FD4,0xFFFF88FD,0x00002F1E,0xFFFF8FD6,0x00003DA9,0xFFFF9873,0x00004B3C,0xFFFFA2B2,0x0000579F,0xFFFFAE69,0x000062A0,0xFFFFBB6A,0x00006C12,0xFFFFC980,0x000073D1,0xFFFFD872,0x000079BC,0xFFFFE804,0x00007DBB,0xFFFFF7F7,0x00007FBF,0x00000809,0x00007FBF,0x000017FB,0x00007DBB,0x0000278D,0x000079BC,0x0000367F,0x000073D1,0x00004495,0x00006C13,0x00005196,0x000062A0,0x00005D4E,0x0000579F,0x0000678D,0x00004B3C,0x0000702A,0x00003DAA,0x00007702,0x00002F1E,0x00007BFA,0x00001FD5,0x00007EFD,0x0000100B,0x00008000,0x00000000,0x00007EFD,0xFFFFEFF6,0x00007BFA,0xFFFFE02C,0x00007703,0xFFFFD0E2,0x0000702B,0xFFFFC257,0x0000678E,0xFFFFB4C4,0x00005D4F,0xFFFFA861,0x00005197,0xFFFF9D60,0x00004496,0xFFFF93EE,0x00003680,0xFFFF8C2F,0x0000278E,0xFFFF8644,0x000017FC,0xFFFF8245,0x00000809,0xFFFF8041,0xFFFFF7F7,0xFFFF8041,0xFFFFE805,0xFFFF8245,0xFFFFD873,0xFFFF8644,0xFFFFC981,0xFFFF8C2F,0xFFFFBB6B,0xFFFF93ED,0xFFFFAE6A,0xFFFF9D60,0xFFFFA2B2,0xFFFFA861,0xFFFF9873,0xFFFFB4C4,0xFFFF8FD6,0xFFFFC256,0xFFFF88FE,0xFFFFD0E2,0xFFFF8406,0xFFFFE02B,0xFFFF8103,0xFFFFEFF5,0xFFFF8000,0x00000000,0xFFFF8103,0x0000100A,0xFFFF8406,0x00001FD4,0xFFFF88FD,0x00002F1E,0xFFFF8FD5,0x00003DA9,0xFFFF9872,0x00004B3C,0xFFFFA2B1,0x0000579E,0xFFFFAE69,0x0000629F,0xFFFFBB6A,0x00006C12,0xFFFFC980,0x000073D1,0xFFFFD872,0x000079BC,0xFFFFE804,0x00007DBB,0xFFFFF7F7,0x00007FBF,0x00000809,0x00007FBF,0x000017FB,0x00007DBB,0x0000278D,0x000079BC,0x0000367F,0x000073D1,0x00004495,0x00006C13,0x00005196,0x000062A0,0x00005D4E,0x0000579F,0x0000678D,0x00004B3C,0x0000702A,0x00003DAA,0x00007702,0x00002F1F,0x00007BFA,0x00001FD5,0x00007EFD,0x0000100B,0x00008000,0x00000000,0x00007EFD,0xFFFFEFF6,0x00007BFA,0xFFFFE02C,0x00007703,0xFFFFD0E2,0x0000702B,0xFFFFC257,0x0000678E,0xFFFFB4C4,0x00005D4F,0xFFFFA861,0x00005197,0xFFFF9D61,0x00004496,0xFFFF93EE,0x00003680,0xFFFF8C2F,0x0000278E,0xFFFF8644,0x000017FC,0xFFFF8245,0x00000809,0xFFFF8041,0xFFFFF7F7,0xFFFF8041,0xFFFFE805,0xFFFF8245,0xFFFFD873,0xFFFF8644,0xFFFFC981,0xFFFF8C2F,0xFFFFBB6B,0xFFFF93ED,0xFFFFAE6A,0xFFFF9D60,0xFFFFA2B2,0xFFFFA861,0xFFFF9873,0xFFFFB4C4,0xFFFF8FD6,0xFFFFC256,0xFFFF88FE,0xFFFFD0E2,0xFFFF8406,0xFFFFE02B,0xFFFF8103,0xFFFFEFF5,0xFFFF8000,0x00000000,0xFFFF8103,0x0000100A,0xFFFF8406,0x00001FD4,0xFFFF88FD,0x00002F1E,0xFFFF8FD5,0x00003DA9,0xFFFF9872,0x00004B3C,0xFFFFA2B1,0x0000579E,0xFFFFAE69,0x000062A0,0xFFFFBB6A,0x00006C12,0xFFFFC980,0x000073D1,0xFFFFD872,0x000079BC,0xFFFFE804,0x00007DBB,0xFFFFF7F7,0x00007FBF,0x00000809,0x00007FBF,0x000017FB,0x00007DBB,0x0000278D,0x000079BC,0x0000367F,0x000073D1,0x00004495,0x00006C13,0x00005196,0x000062A0,0x00005D4E,0x0000579F,0x0000678D,0x00004B3C,0x0000702A,0x00003DAA,0x00007702,0x00002F1F,0x00007BFA,0x00001FD5,0x00007EFD,0x0000100B,0x00008000,0x00000000,0x00007EFD,0xFFFFEFF6,0x00007BFA,0xFFFFE02C,0x00007703,0xFFFFD0E2,0x0000702A,0xFFFFC257,0x0000678E,0xFFFFB4C4,0x00005D4F,0xFFFFA862,0x00005197,0xFFFF9D61,0x00004496,0xFFFF93EE,0x00003680,0xFFFF8C2F,0x0000278E,0xFFFF8644,0x000017FC,0xFFFF8245,0x00000809,0xFFFF8041,0xFFFFF7F7,0xFFFF8041,0xFFFFE805,0xFFFF8245,0xFFFFD873,0xFFFF8644,0xFFFFC981,0xFFFF8C2F,0xFFFFBB6B,0xFFFF93ED,0xFFFFAE6A,0xFFFF9D60,0xFFFFA2B2,0xFFFFA861,0xFFFF9873,0xFFFFB4C4,0xFFFF8FD6,0xFFFFC256,0xFFFF88FE,0xFFFFD0E1,0xFFFF8406,0xFFFFE02B,0xFFFF8103,0xFFFFEFF5,0xFFFF8000,0x00000000,0xFFFF8103,0x0000100A,0xFFFF8406,0x00001FD4,0xFFFF88FD,0x00002F1E,0xFFFF8FD6,0x00003DA9,0xFFFF9872,0x00004B3C,0xFFFFA2B1,0x0000579E,0xFFFFAE69,0x0000629F,0xFFFFBB6A,0x00006C12,0xFFFFC980,0x000073D1,0xFFFFD872,0x000079BC,0xFFFFE804,0x00007DBB,0xFFFFF7F7,0x00007FBF,0x00000809,0x00007FBF,0x000017FB,0x00007DBB,0x0000278D,0x000079BC,0x0000367F,0x000073D1,0x00004495,0x00006C13,0x00005196,0x000062A0,0x00005D4E,0x0000579F,0x0000678D,0x00004B3C,0x0000702A,0x00003DAA,0x00007702,0x00002F1F,0x00007BFA,0x00001FD5,0x00007EFD,0x0000100B,0x00008000,0x00000000,0x00007EFD,0xFFFFEFF6,0x00007BFA,0xFFFFE02C,0x00007703,0xFFFFD0E2,0x0000702B,0xFFFFC257,0x0000678E,0xFFFFB4C4,0x00005D4F,0xFFFFA862,0x00005197,0xFFFF9D61,0x00004496,0xFFFF93EE,0x00003680,0xFFFF8C2F,0x0000278E,0xFFFF8644,0x000017FC,0xFFFF8245,0x00000809,0xFFFF8041,0xFFFFF7F7,0xFFFF8041,0xFFFFE805,0xFFFF8245,0xFFFFD873,0xFFFF8644,0xFFFFC981,0xFFFF8C2F,0xFFFFBB6B,0xFFFF93ED,0xFFFFAE6A,0xFFFF9D60,0xFFFFA2B2,0xFFFFA861,0xFFFF9873,0xFFFFB4C4,0xFFFF8FD6,0xFFFFC256,0xFFFF88FE,0xFFFFD0E1,0xFFFF8406,0xFFFFE02B,0xFFFF8103,0xFFFFEFF5,0xFFFF8000,0x00000000,0xFFFF8103,0x0000100A,0xFFFF8406,0x00001FD4,0xFFFF88FD,0x00002F1E,0xFFFF8FD6,0x00003DA9,0xFFFF9872,0x00004B3C,0xFFFFA2B1,0x0000579E,0xFFFFAE69,0x0000629F,0xFFFFBB6A,0x00006C12,0xFFFFC980,0x000073D1,0xFFFFD872,0x000079BC,0xFFFFE804,0x00007DBB,0xFFFFF7F7,0x00007FBF,0x00000809,0x00007FBF,0x000017FB,0x00007DBB,0x0000278D,0x000079BC,0x0000367F,0x000073D1,0x00004495,0x00006C13,0x00005196,0x000062A0,0x00005D4E,0x0000579F,0x0000678D,0x00004B3D,0x0000702A,0x00003DAA,0x00007702,0x00002F1F,0x00007BFA,0x00001FD5,0x00007EFD,0x0000100B,0x00008000,0x00000000,0x00007EFD,0xFFFFEFF6,0x00007BFA,0xFFFFE02C,0x00007703,0xFFFFD0E2,0x0000702A,0xFFFFC257,0x0000678E,0xFFFFB4C4,0x00005D4F,0xFFFFA861,0x00005197,0xFFFF9D61,0x00004496,0xFFFF93EE,0x00003680,0xFFFF8C2F,0x0000278E,0xFFFF8644,0x000017FC,0xFFFF8245,0x0000080A,0xFFFF8041,0xFFFFF7F7,0xFFFF8041,0xFFFFE805,0xFFFF8245,0xFFFFD873,0xFFFF8644,0xFFFFC981,0xFFFF8C2F,0xFFFFBB6B,0xFFFF93ED,0xFFFFAE6A,0xFFFF9D60,0xFFFFA2B2,0xFFFFA861,0xFFFF9873,0xFFFFB4C4,0xFFFF8FD6,0xFFFFC256,0xFFFF88FE,0xFFFFD0E1,0xFFFF8406,0xFFFFE02B,0xFFFF8103,0xFFFFEFF5,0xFFFF8000,0x00000000,0xFFFF8103,0x0000100A,0xFFFF8406,0x00001FD4,0xFFFF88FD,0x00002F1E,0xFFFF8FD5,0x00003DA9,0xFFFF9872,0x00004B3C,0xFFFFA2B1,0x0000579F,0xFFFFAE69,0x000062A0,0xFFFFBB6A,0x00006C12,0xFFFFC980,0x000073D1,0xFFFFD872,0x000079BC,0xFFFFE804,0x00007DBB,0xFFFFF7F6,0x00007FBF,0x00000809,0x00007FBF,0x000017FB,0x00007DBB,0x0000278D,0x000079BC,0x0000367F,0x000073D1,0x00004495,0x00006C13,0x00005196,0x000062A0,0x00005D4E,0x0000579F,0x0000678D,0x00004B3C,0x0000702A,0x00003DAA,0x00007702,0x00002F1F,0x00007BFA,0x00001FD5,0x00007EFD,0x0000100B,0x00008000,0x00000000,0x00007EFD,0xFFFFEFF6,0x00007BFA,0xFFFFE02C,0x00007703,0xFFFFD0E2,0x0000702B,0xFFFFC257,0x0000678E,0xFFFFB4C4,0x00005D4F,0xFFFFA861,0x00005197,0xFFFF9D60,0x00004496,0xFFFF93EE,0x00003680,0xFFFF8C2F,0x0000278E,0xFFFF8644,0x000017FC,0xFFFF8245,0x00000809,0xFFFF8041,0xFFFFF7F7,0xFFFF8041,0xFFFFE805,0xFFFF8245,0xFFFFD873,0xFFFF8644,0xFFFFC981,0xFFFF8C2F,0xFFFFBB6B,0xFFFF93ED,0xFFFFAE6A,0xFFFF9D60,0xFFFFA2B2,0xFFFFA861,0xFFFF9873,0xFFFFB4C4,0xFFFF8FD6,0xFFFFC256,0xFFFF88FE,0xFFFFD0E1,0xFFFF8406,0xFFFFE02B,0xFFFF8103,0xFFFFEFF5,0xFFFF8000,0x00000000,0xFFFF8103,0x0000100A,0xFFFF8406,0x00001FD4,0xFFFF88FD,0x00002F1E,0xFFFF8FD5,0x00003DA9,0xFFFF9872,0x00004B3B,0xFFFFA2B1,0x0000579E,0xFFFFAE69,0x0000629F,0xFFFFBB6A,0x00006C12,0xFFFFC980,0x000073D1,0xFFFFD872,0x000079BC,0xFFFFE804,0x00007DBB,0xFFFFF7F7,0x00007FBF,0x00000809,0x00007FBF,0x000017FB,0x00007DBB,0x0000278D,0x000079BC,0x0000367F,0x000073D1,0x00004495,0x00006C13,0x00005196,0x000062A0,0x00005D4E,0x0000579F,0x0000678D,0x00004B3C,0x0000702A,0x00003DAA,0x00007702,0x00002F1F,0x00007BFA,0x00001FD5,0x00007EFD,0x0000100B,0x00008000,0x00000000,0x00007EFD,0xFFFFEFF6,0x00007BFA,0xFFFFE02C,0x00007703,0xFFFFD0E3,0x0000702B,0xFFFFC257,0x0000678E,0xFFFFB4C5,0x00005D4F,0xFFFFA862,0x00005197,0xFFFF9D61,0x00004496,0xFFFF93EE,0x00003680,0xFFFF8C2F,0x0000278E,0xFFFF8644,0x000017FC,0xFFFF8245,0x00000809,0xFFFF8041,0xFFFFF7F8,0xFFFF8041,0xFFFFE805,0xFFFF8245,0xFFFFD873,0xFFFF8644,0xFFFFC981,0xFFFF8C2F,0xFFFFBB6B,0xFFFF93ED,0xFFFFAE6A,0xFFFF9D60,0xFFFFA2B2,0xFFFFA861,0xFFFF9873,0xFFFFB4C4,0xFFFF8FD6,0xFFFFC256,0xFFFF88FE,0xFFFFD0E1,0xFFFF8406,0xFFFFE02B,0xFFFF8103,0xFFFFEFF5,0xFFFF8000,0x00000000,0xFFFF8103,0x0000100A,0xFFFF8406,0x00001FD4,0xFFFF88FD,0x00002F1E,0xFFFF8FD5,0x00003DA9,0xFFFF9872,0x00004B3B,0xFFFFA2B1,0x0000579E,0xFFFFAE69,0x0000629F,0xFFFFBB6A,0x00006C12,0xFFFFC980,0x000073D1,0xFFFFD872,0x000079BC,0xFFFFE804,0x00007DBB,0xFFFFF7F6,0x00007FBF,0x00000808,0x00007FBF,0x000017FB,0x00007DBB,0x0000278D,0x000079BC,0x0000367F,0x000073D1,0x00004495,0x00006C13,0x00005196,0x000062A0,0x00005D4E,0x0000579F,0x0000678D,0x00004B3D,0x0000702A,0x00003DAA,0x00007702,0x00002F1F,0x00007BFA,0x00001FD5,0x00007EFD,0x0000100B,0x00008000,0x00000000,0x00007EFD,0xFFFFEFF6,0x00007BFA,0xFFFFE02C,0x00007703,0xFFFFD0E2,0x0000702B,0xFFFFC257,0x0000678E,0xFFFFB4C5,0x00005D4F,0xFFFFA862,0x00005197,0xFFFF9D61,0x00004496,0xFFFF93EE,0x00003680,0xFFFF8C2F,0x0000278E,0xFFFF8644,0x000017FC,0xFFFF8245,0x0000080A,0xFFFF8041,0xFFFFF7F8,0xFFFF8041,0xFFFFE805,0xFFFF8245,0xFFFFD873,0xFFFF8644,0xFFFFC981,0xFFFF8C2F,0xFFFFBB6B,0xFFFF93ED,0xFFFFAE6A,0xFFFF9D60,0xFFFFA2B2,0xFFFFA861,0xFFFF9873,0xFFFFB4C4,0xFFFF8FD6,0xFFFFC256,0xFFFF88FE,0xFFFFD0E1,0xFFFF8406,0xFFFFE02B,0xFFFF8103,0xFFFFEFF5,0xFFFF8000,0x00000000,0xFFFF8103,0x0000100A,0xFFFF8406,0x00001FD4,0xFFFF88FD,0x00002F1E,0xFFFF8FD5,0x00003DA9,0xFFFF9872,0x00004B3B,0xFFFFA2B1,0x0000579E,0xFFFFAE69,0x0000629F,0xFFFFBB6A,0x00006C12,0xFFFFC980,0x000073D1,0xFFFFD872,0x000079BC,0xFFFFE804,0x00007DBB,0xFFFFF7F6,0x00007FBF,0x00000809,0x00007FBF,0x000017FB,0x00007DBB,0x0000278D,0x000079BC,0x0000367F,0x000073D1,0x00004495,0x00006C13,0x00005196,0x000062A0,0x00005D4E,0x0000579F,0x0000678D,0x00004B3C,0x0000702A,0x00003DAA,0x00007702,0x00002F1F,0x00007BFA,0x00001FD5,0x00007EFD,0x0000100B,0x00008000,0x00000000,0x00007EFD,0xFFFFEFF6,0x00007BFA,0xFFFFE02C,0x00007703,0xFFFFD0E2,0x0000702B,0xFFFFC257,0x0000678E,0xFFFFB4C4,0x00005D4F,0xFFFFA862,0x00005197,0xFFFF9D61,0x00004496,0xFFFF93EE,0x00003680,0xFFFF8C2F,0x0000278E,0xFFFF8645,0x000017FC,0xFFFF8245,0x0000080A,0xFFFF8041,0xFFFFF7F7,0xFFFF8041,0xFFFFE805,0xFFFF8245,0xFFFFD873,0xFFFF8644,0xFFFFC981,0xFFFF8C2F,0xFFFFBB6B,0xFFFF93ED,0xFFFFAE6A,0xFFFF9D60,0xFFFFA2B2,0xFFFFA861,0xFFFF9873,0xFFFFB4C3,0xFFFF8FD6,0xFFFFC256,0xFFFF88FE,0xFFFFD0E1,0xFFFF8406,0xFFFFE02B,0xFFFF8103,0xFFFFEFF5,0xFFFF8000,0x00000000,0xFFFF8103,0x0000100A,0xFFFF8406,0x00001FD4,0xFFFF88FD,0x00002F1E,0xFFFF8FD5,0x00003DA9,0xFFFF9872,0x00004B3B,0xFFFFA2B1,0x0000579E,0xFFFFAE69,0x0000629F,0xFFFFBB6A,0x00006C12,0xFFFFC980,0x000073D0,0xFFFFD872,0x000079BB,0xFFFFE804,0x00007DBB,0xFFFFF7F6,0x00007FBF,0x00000808,0x00007FBF,0x000017FB,0x00007DBB,0x0000278D,0x000079BC,0x0000367F,0x000073D1,0x00004495,0x00006C13,0x00005196,0x000062A0,0x00005D4E,0x0000579F,0x0000678D,0x00004B3D,0x0000702A,0x00003DAA,0x00007702,0x00002F1F,0x00007BFA,0x00001FD5,0x00007EFD,0x0000100B,0x00008000,0x00000000,0x00007EFD,0xFFFFEFF6,0x00007BFA,0xFFFFE02C,0x00007703,0xFFFFD0E2,0x0000702B,0xFFFFC257,0x0000678E,0xFFFFB4C4,0x00005D4F,0xFFFFA862,0x00005197,0xFFFF9D61,0x00004496,0xFFFF93EE,0x00003680,0xFFFF8C30,0x0000278E,0xFFFF8645,0x000017FC,0xFFFF8245,0x0000080A,0xFFFF8041,0xFFFFF7F8,0xFFFF8041,0xFFFFE805,0xFFFF8245,0xFFFFD873,0xFFFF8644,0xFFFFC981,0xFFFF8C2F,0xFFFFBB6B,0xFFFF93ED,0xFFFFAE6A,0xFFFF9D60,0xFFFFA2B2,0xFFFFA861,0xFFFF9873,0xFFFFB4C3,0xFFFF8FD6,0xFFFFC256,0xFFFF88FE,0xFFFFD0E1,0xFFFF8406,0xFFFFE02B,0xFFFF8103,0xFFFFEFF5,0xFFFF8000,0x00000000,0xFFFF8103,0x0000100A,0xFFFF8406,0x00001FD4,0xFFFF88FD,0x00002F1E,0xFFFF8FD5,0x00003DA9,0xFFFF9872,0x00004B3C,0xFFFFA2B1,0x0000579E,0xFFFFAE69,0x0000629F,0xFFFFBB6A,0x00006C12,0xFFFFC980,0x000073D1,0xFFFFD872,0x000079BB,0xFFFFE804,0x00007DBB,0xFFFFF7F6,0x00007FBF,0x00000808,0x00007FBF,0x000017FB,0x00007DBB,0x0000278D,0x000079BC,0x0000367F,0x000073D1,0x00004495,0x00006C13,0x00005196,0x000062A0,0x00005D4E,0x0000579F,0x0000678D,0x00004B3D,0x0000702A,0x00003DAA,0x00007702,0x00002F1F,0x00007BFA,0x00001FD5,0x00007EFD,0x0000100B,0x00008000,0x00000000,0x00007EFD,0xFFFFEFF6,0x00007BFA,0xFFFFE02C,0x00007703,0xFFFFD0E2,0x0000702B,0xFFFFC257,0x0000678E,0xFFFFB4C4,0x00005D4F,0xFFFFA862,0x00005197,0xFFFF9D61,0x00004496,0xFFFF93EE,0x00003680,0xFFFF8C30,0x0000278E,0xFFFF8645,0x000017FD,0xFFFF8245,0x0000080A,0xFFFF8041,0xFFFFF7F8,0xFFFF8041,0xFFFFE805,0xFFFF8245,0xFFFFD873,0xFFFF8644,0xFFFFC981,0xFFFF8C2F,0xFFFFBB6B,0xFFFF93ED,0xFFFFAE6A,0xFFFF9D60,0xFFFFA2B2,0xFFFFA861,0xFFFF9873,0xFFFFB4C4,0xFFFF8FD6,0xFFFFC256,0xFFFF88FE,0xFFFFD0E1,0xFFFF8406,0xFFFFE02B,0xFFFF8103,0xFFFFEFF5,0xFFFF8000,0x00000000,0xFFFF8103,0x0000100A,0xFFFF8406,0x00001FD4,0xFFFF88FD,0x00002F1E,0xFFFF8FD5,0x00003DA9,0xFFFF9872,0x00004B3C,0xFFFFA2B1,0x0000579E,0xFFFFAE69,0x0000629F,0xFFFFBB6A,0x00006C12,0xFFFFC980,0x000073D0,0xFFFFD872,0x000079BB,0xFFFFE803,0x00007DBB,0xFFFFF7F6,0x00007FBF,0x00000808,0x00007FBF,0x000017FB,0x00007DBB,0x0000278D,0x000079BC,0x0000367F,0x000073D1,0x00004495,0x00006C13,0x00005196,0x000062A0,0x00005D4E,0x0000579F,0x0000678D,0x00004B3D,0x0000702A,0x00003DAA,0x00007702,0x00002F1F,0x00007BFA,0x00001FD5,0x00007EFD,0x0000100B,0x00008000,0x00000000,0x00007EFD,0xFFFFEFF6,0x00007BFA,0xFFFFE02C,0x00007703,0xFFFFD0E2,0x0000702B,0xFFFFC257,0x0000678E,0xFFFFB4C5,0x00005D4F,0xFFFFA862,0x00005197,0xFFFF9D61,0x00004496,0xFFFF93EE,0x00003680,0xFFFF8C30,0x0000278E,0xFFFF8645,0x000017FD,0xFFFF8245,0x0000080A,0xFFFF8041,0xFFFFF7F8,0xFFFF8041,0xFFFFE805,0xFFFF8245,0xFFFFD873,0xFFFF8644,0xFFFFC981,0xFFFF8C2F,0xFFFFBB6B,0xFFFF93ED,0xFFFFAE6A,0xFFFF9D60,0xFFFFA2B2,0xFFFFA861,0xFFFF9873,0xFFFFB4C3,0xFFFF8FD6,0xFFFFC256,0xFFFF88FE,0xFFFFD0E1,0xFFFF8406,0xFFFFE02B,0xFFFF8103,0xFFFFEFF5,0xFFFF8000,0x00000000,0xFFFF8103,0x0000100A,0xFFFF8406,0x00001FD4,0xFFFF88FD,0x00002F1E,0xFFFF8FD5,0x00003DA9,0xFFFF9872,0x00004B3B,0xFFFFA2B1,0x0000579E,0xFFFFAE69,0x0000629F,0xFFFFBB6A,0x00006C12,0xFFFFC980,0x000073D1,0xFFFFD872,0x000079BB,0xFFFFE803,0x00007DBB,0xFFFFF7F6,0x00007FBF,0x00000808,0x00007FBF,0x000017FB,0x00007DBB,0x0000278C,0x000079BC,0x0000367F,0x000073D1,0x00004495,0x00006C13,0x00005196,0x000062A0,0x00005D4E,0x0000579F,0x0000678D,0x00004B3D,0x0000702A,0x00003DAA,0x00007702,0x00002F1F,0x00007BFA,0x00001FD5,0x00007EFD,0x0000100B,0x00008000,0x00000000,0x00007EFD,0xFFFFEFF6,0x00007BFA,0xFFFFE02C,0x00007703,0xFFFFD0E2,0x0000702B,0xFFFFC257,0x0000678E,0xFFFFB4C4,0x00005D4F,0xFFFFA862,0x00005197,0xFFFF9D61,0x00004496,0xFFFF93EE,0x00003680,0xFFFF8C2F,0x0000278E,0xFFFF8645,0x000017FC,0xFFFF8245,0x0000080A,0xFFFF8041,0xFFFFF7F8,0xFFFF8041,0xFFFFE806,0xFFFF8245,0xFFFFD873,0xFFFF8644,0xFFFFC982,0xFFFF8C2F,0xFFFFBB6B,0xFFFF93ED,0xFFFFAE6A,0xFFFF9D60,0xFFFFA2B2,0xFFFFA861,0xFFFF9873,0xFFFFB4C3,0xFFFF8FD6,0xFFFFC256,0xFFFF88FE,0xFFFFD0E1,0xFFFF8406,0xFFFFE02B,0xFFFF8103,0xFFFFEFF5,0xFFFF8000,0x00000000,0xFFFF8103,0x0000100A,0xFFFF8406,0x00001FD4,0xFFFF88FD,0x00002F1D,0xFFFF8FD5,0x00003DA9,0xFFFF9872,0x00004B3B,0xFFFFA2B1,0x0000579E,0xFFFFAE69,0x0000629F,0xFFFFBB6A,0x00006C12,0xFFFFC980,0x000073D1,0xFFFFD872,0x000079BC,0xFFFFE803,0x00007DBB,0xFFFFF7F6,0x00007FBF,0x00000808,0x00007FBF,0x000017FB,0x00007DBB,0x0000278C,0x000079BC,0x0000367E,0x000073D1,0x00004495,0x00006C13,0x00005196,0x000062A0,0x00005D4E,0x0000579F,0x0000678D,0x00004B3D,0x0000702A,0x00003DAA,0x00007702,0x00002F1F,0x00007BFA,0x00001FD5,0x00007EFD,0x0000100B

kong:
	.int 0x20202020
_fu:
	.ascii "-"
yjmwxwx:
	.ascii "yjmwxwx-20210528"
	.align 4
	.equ STACKINIT,        	        0x20001000
	.equ asciimabiao,		0x20000000
	.equ lcd_beiguang,		0x20000020
	.equ r, 			0x20000024
	.equ i,				0x20000028
	.equ dianyabiao,		0x20000100
	.equ lvboqizhizhen,		0x200009b0
	.equ lvboqihuanchong,		0x200009b8
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
	ldr r1, = 0x2800a0d5
	str r1, [r0]
	ldr r1, = 0x11040000
	str r1, [r0, # 0x20]
	ldr r1, = 0x200
	str r1, [r0, # 0x24]


	
	ldr r0, = 0x48000400
	movs r1, # 0x08 @ pb1
	str r1, [r0]
	movs r1, # 0x20
	str r1, [r0, # 0x20]


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

	@ adc dma
	ldr r0, = 0x40020000
	ldr r1, = 0x40012440
	str r1, [r0, # 0x10]
	ldr r1, = dianyabiao
	str r1, [r0, # 0x14]
	ldr r1, =  1100
	str r1, [r0, # 0x0c]
	ldr r1, = 0x5a1 @0x581 @0x5a1 @0xaa1  
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
	movs r1, # 0x08
	str r1, [r0, # 0x28]    @ 通道选择寄存器 (ADC_CHSELR)
	ldr r1, = 0xc03 @连续0x2003  @TIM30x803
	str r1, [r0, # 0x0c]    @ 配置寄存器 1 (ADC_CFGR1)
	movs r1, # 0
	str r1, [r0, # 0x14]    @ ADC 采样时间寄存器 (ADC_SMPR)
	ldr r1, [r0, # 0x08]
	ldr r2, = 0x04         @ 开始转换
	orrs r1, r1, r2
	str r1, [r0, # 0x08]    @ 控制寄存器 (ADC_CR)

_systick:	@ systick定时器初始化

	ldr r7, = 0xe000e010
	ldr r6, = 55999
	str r6, [r7, # 4]
	str r6, [r7, # 8]
	movs r6, # 0x07
	
tim3chushihua:
	ldr r0, = 0x40000400 @ tim3_cr1
	movs r1, # 0
	str r1, [r0, # 0x28] @ psc
	ldr r1, = 100 @2799 @2799
	str r1, [r0, # 0x2c] @ ARR
	ldr r1, = 0x7868
	str r1, [r0, # 0x18]
	ldr r1, = 8  @200
	str r1, [r0, # 0x34]
	ldr r1, = 92  @2599
	str r1, [r0, # 0x38]
	movs r1, # 0x33
	str r1, [r0, # 0x20]
	movs r1, # 0x07
	str r1, [r0, # 0x08]
	ldr r1, = 0xe1
	str r1, [r0]
tim1chushiha:
	ldr r0, = 0x40012c00 @ tim1_cr1
	movs r1, # 0
	str r1, [r0, # 0x28] @ psc
	ldr r1, = 27
	str r1, [r0, # 0x2c] @ ARR
	movs r1, # 0x20
	str r1, [r0, # 0x04] @ TRGO
	ldr r1, = 0x81
	str r1, [r0]
	str r6, [r7]    @systick 开
	
	
ting:
	
	ldr r0, = r
	ldr r2, = i
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
	movs r1, # 8
	ldr r2, = asciimabiao
	movs r3, # 0xff
	bl _zhuanascii
	movs r0, # 0x81
	ldr r1, = asciimabiao
	movs r2, # 8
	bl _lcdxianshi


	movs r4, r7
	bpl b1
	movs r0, # 0xc0
	ldr r1, = _fu
	movs r2, # 1
	bl _lcdxianshi
	mvns r4, r4
	adds r4, r4, # 1
	b b2
b1:
	movs r0, # 0xc0
	ldr r1, = kong
	movs r2, # 1
	bl _lcdxianshi
b2:
	mov r0, r4
	movs r1, # 8
	ldr r2, = asciimabiao
	movs r3, # 0xff
	bl _zhuanascii
	movs r0, # 0xc1
	ldr r1, = asciimabiao
	movs r2, # 8
	bl _lcdxianshi
	b ting

__dft:
	push {r0-r7,lr}
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
	ldr r0, = r
	ldr r1, = i
	asrs r2, r2, # 9
	asrs r7, r7, # 9
	str r2, [r0]
	str r7, [r1]
	pop {r2}
	mov r8, r2
	pop {r0-r7,pc}
	
__lv_bo_qi:
	@地址顺序：指针，累加值，缓冲区
	@入口R0=缓冲区，R1=数据, r2,=指针
	@出口R0
	push {r3-r6,lr}
	movs r4, # 64 @128
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
	asrs r0, r1, # 6 @  7	@128
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
	str r2, [r6, # 0x18]	@ rclk=0
	str r5, [r6, # 0x18]	@ srclk=0
	@movs r7, # 0xff
	ldr r7, = 0x1ff
__595_yanshi:
	subs r7, r7, # 1
	bne __595_yanshi
	mov r1, r0
	lsls r1, r1, r4
	bpl __ser_0
__ser_1:
	str r3, [r6, # 0x28]	@ ser=1
	b __595_yiwei
__ser_0:
	str r3, [r6, # 0x18]	@ ser=0
__595_yiwei:
	str r5, [r6, # 0x28]
	@movs r7, # 0xff
	ldr r7, = 0x1ff
__595_yanshi1:
	subs r7, r7, # 1
	bne __595_yanshi1
	adds r4, r4, # 1
	cmp r4, # 32
	bne __595_yiweixunhuan
	str r2, [r6, # 0x28]	@ rclk=1
	@movs r7, # 0xff
	ldr r7, = 0x1ff
__595_yanshi2:
	subs r7, r7, # 1
	bne __595_yanshi2
	str r2, [r6, # 0x18]	@ rclk = 0
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
	push {lr}
	ldr r0, = 0xe0000d04
	ldr r1, = 0x02000000
	str r1, [r0]                 @ 清除SYSTICK中断
	bl __dft
	pop {pc}
aaa:
	bx lr
	.ltorg
	.end