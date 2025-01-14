	@@ 单片机stm32f030f4p6
	@lcr_3 NE5532运放版
	@作者：yjmwxwx
	@时间：2022-01-27
	@编译器：ARM-NONE-EABI
	.thumb
	.syntax unified
	.section .data
H:
	.ascii " H"
mH:
	.ascii "mH"
uH:
	.ascii "uH"
nH:
	.ascii "nH"
	.align 4
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
	.word nH,nH,nH,uH,uH,uH,uH,uH
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
	.byte 3,4,4,1,2,2,2,3
	.byte 3,4,4,4,0xff,0xff,0xff,3
	.byte 3,3,4,4,4,0xff,0xff,0xff
	
	
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
	.word UF,UF,UF,UF,NF,NF,NF,NF
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
	.byte 4,1,1,1,3,3,3,2
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
	.short 1000,10,10,10,10,10,10,10
	.short 10,100,10,10,100,10,10,100
	.short 10,10,100,100,100,100,100,1000
	
jiaozhun_0.5555:
	.ascii " 555 "
jiaozhun_1.666:
	.ascii " 1663"
jiaozhun_3.333:
	.ascii " 3333"
jiaozhun_5.555:
	.ascii " 5555"
jiaozhun_10:
	.ascii " 10  "
jiaozhun_16.66:
	.ascii "16.66"
jiaozhun_33.33:
	.ascii "33.33"
jiaozhun_100:
	.ascii " 100 "
jiaozhun_300:
	.ascii " 300 "
jiaozhun_600:
	.ascii " 600 "
jiaozhun_1k:	
	.ascii " 1000"
jiaozhun_3k:
	.ascii " 3000"
jiaozhun_6k:
	.ascii " 6000"
jiaozhun_10k:
	.ascii "  10 "
jiaozhun_30k:
	.ascii "  30 "
jiaozhun_60k:
	.ascii "  60 "
jiaozhun_100k:
	.ascii " 100 "
jiaozhun_300k:
	.ascii " 300 "
jiaozhun_600k:
	.ascii " 600 "
jiaozhun_1M:
	.ascii "  1  "
jiaozhun_1.8M:
	.ascii " 1.8 "
jiaozhun_3M:
	.ascii "  3  "
jiaozhun_6M:
	.ascii "  6  "
jiaozhun_18M:
	.ascii "  18 "
jiaozhun:	
	.ascii "jiaozhun"
jiaozhun_wancheng:
	.ascii "jiao zhun wan le"
guan_ji:
	.ascii " qing guan ji   "
pinlv_100hz:
	.ascii "  pin lv 100HZ  "
pinlv_1khz:
	.ascii "  pin lv 1KHZ   "
pinlv_10khz:
	.ascii "  pin lv 10KHZ  "
pinlv_100khz:
	.ascii "  pin lv 100KHZ "
	.align 4

atan_biao:	@角度
	.int 0x00168000,0x000D4853,0x000704A3,0x00039000,0x0001C9C5,0x0000E51B,0x00007295,0x0000394B,0x00001CA5,0x00000E52,0x00000729,0x00000394,0x000001CA,0x000000E5,0x00000072,0x00000039
	.align 4
jiaodu_jiaozhun_yong_cordic:
	.int -32768,0,0,32768,23170,23170,30274,12540,32138,6393,32610,3212,32729,1608,32758,804,32766,402,32767,201,32768,101,32768,50,32768,25,32768,13,32768,6,32758,3,32768,2,32768,1,32768,1,32768,1,32768,1,32768,1,32768,1,32768,1,32768,1,32768,1,32768,1,32768,1,32768,1,32768,1
jiaozhun_yong_cordic:
	.int 32768,16384,8192,4096,2048,1024,512,256,128,64,32,16,8,4,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
cordic_yong_cos_sin:
	.int 0x0000,0x4000,0x2D41,0x2D41,0x3B20,0x187D,0x3EC5,0x0C7C,0x3FB1,0x0645,0x3FEC,0x0323,0x3FFB,0x0192,0x3FFE,0x00C9,0x3FFF,0x0064,0x3FFF,0x0032,0x3FFF,0x0019,0x3FFF,0x000C,0x3FFF,0x0006,0x3FFF,0x0003,0x3FFF,0x0001,0x3FFF,0x0000
cordic_yong_atan_biao:	@弧度
	.int 0x00006487,0x00003B58,0x00001F5B,0x00000FEA,0x000007FD,0x000003FF,0x000001FF,0x000000FF,0x0000007F,0x0000003F,0x0000001F,0x0000000F,0x00000007,0x00000003,0x00000001,0x00000000
	.align 4
zheng_xian_100khz:
	.byte 10,13,16,18,20,20,20,18,16,13,10,7,4,2,0,0,0,2,4,7
	.align 4
zheng_xian_10khz:
	.short 56,62,69,76,82,88,93,98,102,106,108,110,111,111,110,108,106,102,98,93,88,82,76,69,62,56,49,42,35,29,23,18,13,9,5,3,1,0,0,1,3,5,9,13,18,23,29,35,42,49
	.align 4
zheng_xian_1khz:
	.short 140,144,148,153,157,161,166,170,174,178,183,187,191,195,199,203,207,211,214,218,221,225,228,232,235,238,241,244,247,250,252,255,257,260,262,264,266,268,269,271,272,273,275,276,277,277,278,278,279,279,279,279,279,278,278,277,277,276,275,273,272,271,269,268,266,264,262,260,257,255,252,250,247,244,241,238,235,232,228,225,221,218,214,211,207,203,199,195,191,187,183,178,174,170,166,161,157,153,148,144,140,135,131,126,122,118,113,109,105,101,96,92,88,84,80,76,72,68,65,61,58,54,51,47,44,41,38,35,32,29,27,24,22,19,17,15,13,11,10,8,7,6,4,3,2,2,1,1,0,0,0,0,0,1,1,2,2,3,4,6,7,8,10,11,13,15,17,19,22,24,27,29,32,35,38,41,44,47,51,54,58,61,65,68,72,76,80,84,88,92,96,101,105,109,113,118,122,126,131,135
	
	.align 4
zheng_xian_100hz:
	.short 517,518,519,520,521,522,523,524,524,525,526,527,528,529,529,530,531,532,532,533,534,535,535,536,537,537,538,539,539,540,541,541,542,542,543,544,544,545,545,546,546,547,547,548,548,549,549,550,550,551,551,551,552,552,553,553,553,554,554,554,555,555,555,556,556,556,556,557,557,557,557,557,558,558,558,558,558,558,558,559,559,559,559,559,559,559,559,559,559,559,559,559,559,559,559,559,559,559,558,558,558,558,558,558,558,557,557,557,557,557,556,556,556,556,555,555,555,554,554,554,553,553,553,552,552,551,551,551,550,550,549,549,548,548,547,547,546,546,545,545,544,544,543,542,542,541,541,540,539,539,538,537,537,536,535,535,534,533,532,532,531,530,529,529,528,527,526,525,524,524,523,522,521,520,519,518,517,516,515,515,514,513,512,511,510,509,508,507,506,505,504,502,501,500,499,498,497,496,495,494,493,491,490,489,488,487,486,484,483,482,481,480,478,477,476,475,473,472,471,470,468,467,466,464,463,462,460,459,458,456,455,454,452,451,449,448,447,445,444,442,441,439,438,437,435,434,432,431,429,428,426,425,423,422,420,419,417,416,414,413,411,410,408,406,405,403,402,400,399,397,395,394,392,391,389,387,386,384,382,381,379,377,376,374,373,371,369,368,366,364,363,361,359,357,356,354,352,351,349,347,346,344,342,340,339,337,335,334,332,330,328,327,325,323,321,320,318,316,315,313,311,309,308,306,304,302,301,299,297,295,294,292,290,288,287,285,283,281,280,278,276,274,272,271,269,267,265,264,262,260,258,257,255,253,251,250,248,246,244,243,241,239,238,236,234,232,231,229,227,225,224,222,220,219,217,215,213,212,210,208,207,205,203,202,200,198,196,195,193,191,190,188,186,185,183,182,180,178,177,175,173,172,170,168,167,165,164,162,160,159,157,156,154,153,151,149,148,146,145,143,142,140,139,137,136,134,133,131,130,128,127,125,124,122,121,120,118,117,115,114,112,111,110,108,107,105,104,103,101,100,99,97,96,95,93,92,91,89,88,87,86,84,83,82,81,79,78,77,76,75,73,72,71,70,69,68,66,65,64,63,62,61,60,59,58,57,55,54,53,52,51,50,49,48,47,46,45,44,44,43,42,41,40,39,38,37,36,35,35,34,33,32,31,30,30,29,28,27,27,26,25,24,24,23,22,22,21,20,20,19,18,18,17,17,16,15,15,14,14,13,13,12,12,11,11,10,10,9,9,8,8,8,7,7,6,6,6,5,5,5,4,4,4,3,3,3,3,2,2,2,2,2,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,2,2,2,2,2,3,3,3,3,4,4,4,5,5,5,6,6,6,7,7,8,8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15,16,17,17,18,18,19,20,20,21,22,22,23,24,24,25,26,27,27,28,29,30,30,31,32,33,34,35,35,36,37,38,39,40,41,42,43,44,44,45,46,47,48,49,50,51,52,53,54,55,57,58,59,60,61,62,63,64,65,66,68,69,70,71,72,73,75,76,77,78,79,81,82,83,84,86,87,88,89,91,92,93,95,96,97,99,100,101,103,104,105,107,108,110,111,112,114,115,117,118,120,121,122,124,125,127,128,130,131,133,134,136,137,139,140,142,143,145,146,148,149,151,153,154,156,157,159,160,162,164,165,167,168,170,172,173,175,177,178,180,182,183,185,186,188,190,191,193,195,196,198,200,202,203,205,207,208,210,212,213,215,217,219,220,222,224,225,227,229,231,232,234,236,238,239,241,243,244,246,248,250,251,253,255,257,258,260,262,264,265,267,269,271,272,274,276,278,280,281,283,285,287,288,290,292,294,295,297,299,301,302,304,306,308,309,311,313,315,316,318,320,321,323,325,327,328,330,332,334,335,337,339,340,342,344,346,347,349,351,352,354,356,357,359,361,363,364,366,368,369,371,373,374,376,377,379,381,382,384,386,387,389,391,392,394,395,397,399,400,402,403,405,406,408,410,411,413,414,416,417,419,420,422,423,425,426,428,429,431,432,434,435,437,438,439,441,442,444,445,447,448,449,451,452,454,455,456,458,459,460,462,463,464,466,467,468,470,471,472,473,475,476,477,478,480,481,482,483,484,486,487,488,489,490,491,493,494,495,496,497,498,499,500,501,502,504,505,506,507,508,509,510,511,512,513,514,515,515,516
	

	.align 4
cos_sin_biao_100k:
	.int 0x00008000,0x00000000,0x0000678D,0xFFFFB4C4,0x0000278D,0xFFFF8644,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C4,0xFFFF8000,0x00000000,0xFFFF9873,0x00004B3C,0xFFFFD873,0x000079BC,0x0000278D,0x000079BC,0x0000678D,0x00004B3C,0x00008000,0x00000000,0x0000678D,0xFFFFB4C4,0x0000278D,0xFFFF8644,0xFFFFD873,0xFFFF8644,0xFFFF9873,0xFFFFB4C4,0xFFFF8000,0x00000000,0xFFFF9873,0x00004B3C,0xFFFFD873,0x000079BC,0x0000278D,0x000079BC,0x0000678D,0x00004B3C,0x12345678
	
cos_sin_biao_10k:
cos_sin_biao_1k:
	.int 0x8000,0x0000,0x79BC,0xFFFFD873,0x678D,0xFFFFB4C4,0x4B3C,0xFFFF9873,0x278D,0xFFFF8644,0x0000,0xFFFF8000,0xFFFFD873,0xFFFF8644,0xFFFFB4C4,0xFFFF9873,0xFFFF9873,0xFFFFB4C4,0xFFFF8644,0xFFFFD873,0xFFFF8000,0x0000,0xFFFF8644,0x278D,0xFFFF9873,0x4B3C,0xFFFFB4C4,0x678D,0xFFFFD873,0x79BC,0x0000,0x8000,0x278D,0x79BC,0x4B3C,0x678D,0x678D,0x4B3C,0x79BC,0x278D,0x12345678
cos_sin_biao_100:
	.int 0x8000,0x0000,0x7EFD,0xFFFFEFF6,0x7BFA,0xFFFFE02B,0x7702,0xFFFFD0E2,0x702A,0xFFFFC256,0x678D,0xFFFFB4C4,0x5D4E,0xFFFFA861,0x5197,0xFFFF9D60,0x4495,0xFFFF93EE,0x367F,0xFFFF8C2F,0x278D,0xFFFF8644,0x17FC,0xFFFF8245,0x0809,0xFFFF8041,0xFFFFF7F7,0xFFFF8041,0xFFFFE804,0xFFFF8245,0xFFFFD873,0xFFFF8644,0xFFFFC981,0xFFFF8C2F,0xFFFFBB6B,0xFFFF93EE,0xFFFFAE69,0xFFFF9D60,0xFFFFA2B2,0xFFFFA861,0xFFFF9873,0xFFFFB4C4,0xFFFF8FD6,0xFFFFC256,0xFFFF88FE,0xFFFFD0E2,0xFFFF8406,0xFFFFE02B,0xFFFF8103,0xFFFFEFF6,0xFFFF8000,0x0000,0xFFFF8103,0x100A,0xFFFF8406,0x1FD5,0xFFFF88FE,0x2F1E,0xFFFF8FD6,0x3DAA,0xFFFF9873,0x4B3C,0xFFFFA2B2,0x579F,0xFFFFAE69,0x62A0,0xFFFFBB6B,0x6C12,0xFFFFC981,0x73D1,0xFFFFD873,0x79BC,0xFFFFE804,0x7DBB,0xFFFFF7F7,0x7FBF,0x0809,0x7FBF,0x17FC,0x7DBB,0x278D,0x79BC,0x367F,0x73D1,0x4495,0x6C12,0x5197,0x62A0,0x5D4E,0x579F,0x678D,0x4B3C,0x702A,0x3DAA,0x7702,0x2F1E,0x7BFA,0x1FD5,0x7EFD,0x100A,0x12345678
shangbi_liangcheng:
	.short 0x0e,0x0c,0x0a,0x06,0x08,0x04,0x02,0x00
	.short 0x00,0x00,0x200,0x200,0x200,0x40,0x40,0x40
	.short 0x240,0x240,0x240,0x240,0x240,0x240,0x240,0x240
xiabi_liangcheng:
	.short 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.short 0x02,0x04,0x200,0x202,0x204,0x40,0x42,0x44
	.short 0x240,0x242,0x244,0x248,0x246,0x24a,0x24c,0x24e
	.align 4
zukang_xiaoshu_dian:			@jdjd
	.byte 3,4,4,4,2,2,2,3
	.byte 3,4,4,4,4,2,2,3
	.byte 3,3,4,1,1,2,2,3
	.align 4
qiwang_fudu:	@期望幅度
	.int 50000,10000,10000,10000,10000,10000,33333,10000
	.int 10000,5000,10000,10000,5000,10000,10000,5000
	.int 10000,10000,5000,10000,10000,1000,1000,1000
qiwang_jiaodu_100hz:
	.int 0,0,0,0,0,0,0,0
	.int 0,0,0,0,0,0,0,0
	.int 0,0,0,0,0,0,0,0
qiwang_jiaodu_1khz:
	.int 0,0,0,0,0,0,0,0
	.int 0,0,0,0,0,0,0,0
	.int 0,0,0,0,0,0,0,0
qiwang_jiaodu_10khz:
	.int 0,0,0,0,0,0,0,0
	.int 0,0,0,0,0,0,0,0
	.int 0,0,0,0,0,0,0,0
qiwang_jiaodu_100khz:
	.int 0,0,0,0,0,0,0,0
	.int 0,0,0,0,0,0,0,0
	.int 0,0,0,0,0,0,0,0
qiwang_jiaodu_biao:
	.word qiwang_jiaodu_100hz
	.word qiwang_jiaodu_1khz
	.word qiwang_jiaodu_10khz
	.word qiwang_jiaodu_100khz
zukang_dianzu_biao:
	.int 55555,16666,33333,55555,10000,16666,33333,10000
	.int 30000,6000,10000,30000,6000,10000,30000,6000
	.int 10000,30000,6000,10000,18000,3000,6000,1800
zukang_danwei:
	@毫欧=0XF46D，欧=0XF420, 千欧=0XF44B，兆欧=0XF44D
	.int 0xf46d,0xf46d,0xf46d,0xf46d,0xf420,0xf420,0xf420,0xf420
	.int 0xf420,0xf420,0xf420,0xf420,0xf420,0xf44b,0xf44b,0xf44b
	.int 0xf44b,0xf44b,0xf44b,0xf44d,0xf44d,0xf44d,0xf44d,0xf44d
pinlv_qiehuan_yanshi_biao:
	.int 300,300,300,40
	.align 4
an_jian_biao:
	.word __an_jian0         	   	   +1
	.word __dang_wei_jia     	   	   +1
	.word __pin_lv_jia      	   	   +1
	.word __an_jian3         	           +1
pinlv_biao:
	.word __pinlv_100			+1
	.word __pinlv_1K			+1
	.word __pinlv_10K			+1
	.word __pinlv_100K			+1
	.align 4
pinlv_xianshi_biao:
	.word pinlv_100hz
	.word pinlv_1khz
	.word pinlv_10khz
	.word pinlv_100khz
dangwei_xianshi_biao:
	.word jiaozhun_0.5555
	.word jiaozhun_1.666
	.word jiaozhun_3.333
	.word jiaozhun_5.555
	.word jiaozhun_10
	.word jiaozhun_16.66
	.word jiaozhun_33.33
	.word jiaozhun_100
	.word jiaozhun_300
	.word jiaozhun_600
	.word jiaozhun_1k
	.word jiaozhun_3k
	.word jiaozhun_6k
	.word jiaozhun_10k
	.word jiaozhun_30k
	.word jiaozhun_60k
	.word jiaozhun_100k
	.word jiaozhun_300k
	.word jiaozhun_600k
	.word jiaozhun_1M
	.word jiaozhun_1.8M
	.word jiaozhun_3M
	.word jiaozhun_6M
	.word jiaozhun_18M
	.align 4
kong:
	.int 0x20202020
_fu:
	.ascii "-"
jiaodu1:
	.int 0x3df2
jiaodufuhao:
	.int 0xdf
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
	.equ jisuan_dft_biaozhi,	0x200000a4
	.equ dft_yanshi,		0x200000a8
	.equ dft_xuanze,		0x200000ac
	
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
	ldr r1, = 0x150002
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

	ldr r0, = shezhi_pinlv
	ldr r0, [r0]
	cmp r0, # 1
	bne _neicunqingling
_neicunqingling1:
	ldr r0, = 0x20001000
	ldr r2, = 0x20000100
	movs r1, # 0
_neicunqinglingxunhuan1:
	subs r0, r0, # 4
	str r1, [r0]
	cmp r0, r2
	bne _neicunqinglingxunhuan1
	b _waishezhongduan


	
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
@	bkpt # 1
@	movs r0, # 0
@	cmp r0, # 0
	b __jlink_moshi
__anjian_moshi:	
	ldr r0, = 0x48000000
	ldr r1, = 0x249a57 
	str r1, [r0]
	ldr r1, = 0x14000000
	str r1, [r0, # 0x0c]
	b __pa_shezhi
__jlink_moshi:	
	ldr r0, = 0x48000000
	ldr r1, = 0x28249a57
	str r1, [r0]
__pa_shezhi:	
	movs r1, # 0xb0
	str r1, [r0, # 0x04]
	ldr r1, = 0x30cffc
	str r1, [r0, # 0x08]
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

	ldr r0, = shezhi_pinlv
	ldr r0, [r0]
	cmp r0, # 1
	beq __pinlv_dangwei_chushihua
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
	
	
__pinlv_dangwei_chushihua:

	ldr r0, = pinlv
	movs r1, # 3
	str r1, [r0]
	bl __pinlv_shezhi
	ldr r0, = liangcheng
	movs r1, # 7
	str r1, [r0]

b ting
	ldr r0, = flash_cachu_biaozhi
	ldr r0, [r0]
	cmp r0, # 1
	beq __an_jian3
	b ting
	
@	b __an_jian3

__pin_lv_jia:
	cpsid i
	ldr r0, = pinlv
	ldr r1, [r0]
	adds r1, r1, # 1
	str r1, [r0]
	cmp r1, # 4
	bne __pin_lv_fan_hui
	movs r1, # 0
	str r1, [r0]
__pin_lv_fan_hui:
	mov r2, r1
	lsls r2, r2, # 2
        movs r0, # 0x01
	movs r1, # 0
	bl _xielcd
	bl _lcdyanshi
        movs r0, # 0x80
	ldr r1, = pinlv_xianshi_biao
	ldr r1, [r1, r2]
	movs r2, # 16
	bl _lcdxianshi
	
	ldr r0, = 0xffffff
__pinlv_xianshi_yanshi:
	subs r0, r0, # 1
	bne __pinlv_xianshi_yanshi
	ldr r0, = 0xe000ed0c
	ldr r1, = 0x05fa0004
	str r1, [r0]			@复位
	bkpt # 1


	
__dang_wei_jia:
	b ting
		
	ldr r0, = liangcheng
	ldr r1, [r0]
	adds r1, r1, # 1
	str r1, [r0]
	cmp r1, # 23
	bne __dang_wei_fan_hui
	movs r1, # 0
	str r1, [r0]
__dang_wei_fan_hui:
	bkpt # 4
	




	
__an_jian3:
        ldr r0, = flash_cachu_biaozhi
	ldr r1, [r0]
	cmp r1, # 1
	beq __jiaozhun_chengxu
	
        movs r0, # 0x01
	movs r1, # 0
	bl _xielcd
	bl _lcdyanshi
	movs r0, # 0x80
	ldr r1, = jiaozhun
	movs r2, # 8
	bl _lcdxianshi
	bl _lcdyanshi
	ldr r0, = 0x3ffffff
__jinru_jiaozhun_yanshi:	
	subs r0, r0, # 1
	bne __jinru_jiaozhun_yanshi	
__jiaozhun_chengxu:
	ldr r3, = liangcheng
	ldr r3, [r3]
	lsls r3, r3, # 2
	movs r0, # 0x01
	movs r1, # 0
	bl _xielcd
	bl _lcdyanshi
	
	movs r0, # 0x8e
	ldr r1, = zukang_danwei
	adds r1, r1, r3
	movs r2, # 2
	bl _lcdxianshi
	bl _lcdyanshi
	
	movs r0, # 0x89
	ldr r1, = dangwei_xianshi_biao
	ldr r1, [r1, r3]
	movs r2, # 5
	bl _lcdxianshi
	bl _lcdyanshi

        movs r0, # 0x80
	ldr r1, = jiaozhun
	movs r2, # 8
	bl _lcdxianshi
	bl _lcdyanshi
__dangwei_qiehuan_xunhuan:
	ldr r4, = 0x20000090			@0等待用户确认
						@1进入校准
						@其他跳过校准
	ldr r1, [r4]
	cmp r1, # 1	
	beq __jinru_jiaozhun
	cmp r1, # 0
	beq __jiance_anjian
	cmp r1, # 2
	bne __jiance_anjian
	movs r1, # 0
	str r1, [r4]
	b __bu_jiaozhun
__jiance_anjian:
	bl __an_jian
	str r0, [r4]
	b __dangwei_qiehuan_xunhuan
	
__jinru_jiaozhun:
	ldr r0, = flash_cachu_biaozhi
	ldr r0, [r0]
	cmp r0, # 1
	beq __jiaozhun_kaishi
__cachu_flash:
	ldr r4, = fjiesuo
	movs r5, # 3
	add r5, r5, pc
	mov lr, r5
	mov pc, r4
	ldr r4, = ojiesuo
	movs r5, # 3
	add r5, r5, pc
	mov lr, r5
	mov pc, r4
	ldr r4, = yeca
	ldr r0, = 0x8003800
	movs r5, # 3
	add r5, r5, pc
	mov lr, r5
	mov pc, r4
	ldr r0, = 0x8003c00
	movs r5, # 3
	add r5, r5, pc
	mov lr, r5
	mov pc, r4
	ldr r0, = flash_cachu_biaozhi
	movs r1, # 1
	str r1, [r0]

        ldr r0, = pinlv
	ldr r1, = liangcheng
	movs r2, # 0
	str r2, [r0]
	str r2, [r1]
	ldr r0, = zidong_dangwei_kaiguan
	movs r1, # 1
	str r1, [r0]    @自动档位关闭
	ldr r0, = 0xe000ed0c
	ldr r1, = 0x05fa0004
	str r1, [r0]                    @复位
	bkpt # 1
	

__jiaozhun_kaishi:	
	ldr r1, = pinlv
	ldr r3, [r1]
	lsls r3, r3, # 2
	movs r0, # 0xc0
	ldr r1, = pinlv_xianshi_biao
	ldr r1, [r1, r3]
	movs r2, # 16
	bl _lcdxianshi
	
        ldr r0, = zidong_dangwei_kaiguan
	movs r1, # 1
	str r1, [r0]
__deng_zukang_wending:

	ldr r0, = pinlv
	ldr r0, [r0]
	lsls r0, r0, # 2
	ldr r7, = pinlv_qiehuan_yanshi_biao
	ldr r7, [r7, r0]
dzd1:
	bl __jisuan_zukang
	bl __xianshi_zukang

	subs r7, r7, # 1
	bne dzd1
	ldr r0, = qiwang_jiaodu_biao
	ldr r1, = pinlv
	ldr r2, = liangcheng
	ldr r1, [r1]
	ldr r2, [r2]
	lsls r1, r1, # 2
	ldr r1, [r0, r1]
	lsls r2, r2, # 2
	mov r6, r2
	ldr r0, [r1, r2] 	@读出期望角度
	bl __jiaozhun_jiaodu
	ldr r2, = z_r_jiaozhun
	ldr r3, = z_i_jiaozhun
	str r0, [r2]
	str r1, [r3]
	bl __xiangwei_xuanzhuan
	ldr r0, = qiwang_fudu
	ldr r0, [r0, r6]	@读出期望幅度
	bl __jiaozhun_fudu
	ldr r1, = z_jiaozhun
	str r0, [r1]

	ldr r4, = fjiesuo
	movs r5, # 3
	add r5, r5, pc
	mov lr, r5
	mov pc, r4
	ldr r4, = ojiesuo
	movs r5, # 3
	add r5, r5, pc
	mov lr, r5
	mov pc, r4
	
	
	
        ldr r3, = jiaozhun_biao_zhizhen
	ldr r0, [r3]
	ldr r4, = 0x8003800
	adds r0, r0, r4			@写地址
	ldr r4, = xieflash
	ldr r1, = z_r_jiaozhun
	ldr r1, [r1]			@数据
	movs r5, # 3
	add r5,  r5, pc
	mov lr, r5
	mov pc, r4

	ldr r3, = jiaozhun_biao_zhizhen
	ldr r0, [r3]
	ldr r4, = 0x8003800
	adds r0, r0, r4
	adds r0, r0, # 4
	ldr r4, = xieflash
	ldr r1, = z_i_jiaozhun
	ldr r1, [r1]
	movs r5, # 3
	add r5,  r5, pc
	mov lr, r5
	mov pc, r4

	ldr r3, = jiaozhun_biao_zhizhen
	ldr r0, [r3]
	ldr r4, = 0x8003800
	adds r0, r0, r4
	adds r0, r0, # 8
	ldr r4, = xieflash
	ldr r1, = z_jiaozhun
	ldr r1, [r1]
	movs r5, # 3
	add r5,  r5, pc
	mov lr, r5
	mov pc, r4
	b __jiaozhun_chengxu_fanhui

__bu_jiaozhun:	
        ldr r4, = fjiesuo
	movs r5, # 3
	add r5, r5, pc
	mov lr, r5
	mov pc, r4
	ldr r4, = ojiesuo
	movs r5, # 3
	add r5, r5, pc
	mov lr, r5
	mov pc, r4
	
	ldr r3, = jiaozhun_biao_zhizhen
	ldr r0, [r3]
	ldr r4, = 0x8003800
	adds r0, r0, r4                 @写地址
	ldr r4, = xieflash
	ldr r1, = 0x8000
	movs r5, # 3
	add r5,  r5, pc
	mov lr, r5
	mov pc, r4

	ldr r3, = jiaozhun_biao_zhizhen
	ldr r0, [r3]
	ldr r4, = 0x8003800
	adds r0, r0, r4
	adds r0, r0, # 4
	ldr r4, = xieflash
	movs r1, # 0
	movs r5, # 3
	add r5,  r5, pc
	mov lr, r5
	mov pc, r4

	ldr r3, = jiaozhun_biao_zhizhen
	ldr r0, [r3]
	ldr r4, = 0x8003800
	adds r0, r0, r4
	adds r0, r0, # 8
	ldr r4, = xieflash
	ldr r1, = 0x8000
	movs r5, # 3
	add r5,  r5, pc
	mov lr, r5
	mov pc, r4
	
__jiaozhun_chengxu_fanhui:	
	ldr r3, = jiaozhun_biao_zhizhen
	ldr r0, [r3]
	adds r0, r0, # 0x0c
	str r0, [r3]
	ldr r0, = pinlv
	ldr r0, [r0]
	cmp r0, # 3
	bne __jiaozhun_qiehuan_pinlv
	ldr r0, = 0x20000090
	movs r1, # 0
	str r1, [r0]
	ldr r0, = liangcheng
	ldr r1, [r0]
	adds r1, r1, # 1
	str r1, [r0]
	cmp r1, # 24
	bne __jiaozhun_qiehuan_pinlv
	cpsid i
_neicun_xie0:
	ldr r0, = 0x20001000
	ldr r2, = 0x20000000
	movs r1, # 0
_neicun_xie0_xunhuan:
	subs r0, r0, # 4
	str r1, [r0]
	cmp r0, r2
	bne _neicun_xie0_xunhuan
	
        movs r0, # 0x01
	movs r1, # 0
	bl _xielcd
	bl _lcdyanshi

	movs r0, # 0x80
	ldr r1, = jiaozhun_wancheng
	movs r2, # 16
	bl _lcdxianshi
	bl _lcdyanshi

	movs r0, # 0xc0
	ldr r1, = guan_ji
	movs r2, # 16
	bl _lcdxianshi
	
	bkpt # 200
__jiaozhun_qiehuan_pinlv:	
	b __pin_lv_jia
	.ltorg


__an_jian0:
ting:
	bl __jisuan_zukang
	bl __xianshi_zukang
	b ting
	bl __du_jiaozhun_biao
	ldr r6, = z_r
	ldr r7, = z_i
	ldr r0, [r6]
	ldr r1, [r7]
	bl __xiang_wei_xuan_zhuan
	ldr r2, = z_jiaozhun
	ldr r2, [r2]
	muls r0, r0, r2
	muls r1, r1, r2
	asrs r0, r0, # 15
	asrs r1, r1, # 15
	str r0, [r6]
	str r1, [r7]
	
	bl __xianshi_zukang
	ldr r0, = z_r
	ldr r1, = z_i
	ldr r0, [r0]
	ldr r1, [r1]
	asrs r0, r0, # 2
	asrs r1, r1, # 2
	bl __atan2_ji_suan
	asrs r0, r0, # 15
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
	ldr r2, [r1, r2]
	ldr r1, = liangcheng
	ldr r1, [r1]
	ldrb r3, [r2, r1]       @读出小数点位置
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
        bl __an_jian
	@__cai_dan_diao_du
	lsls r0, r0, # 2
	ldr r1, = an_jian_biao
	ldr r2, [r1, r0]
	mov pc, r2
	b ting
	
	
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
dddd:
	bl __jisuan_zukang
        ldr r2, = z_r_jiaozhun
	ldr r3, = z_i_jiaozhun
	ldr r0, [r2]
	ldr r1, [r3]
	bl __xiangwei_xuanzhuan
	ldr r0, = z_jiaozhun
	ldr r0, [r0]
	ldr r1, = z_r
	ldr r2, = z_i
	ldr r3, [r1]
	ldr r4, [r2]
	muls r3, r3, r0
	muls r4, r4, r0
	asrs r3, r3, # 15
	asrs r4, r4, # 15
	str r3, [r1]
	str r4, [r2]
	bl __xianshi_zukang

	ldr r0, = z_r
	ldr r1, = z_i
	ldr r0, [r0]
	ldr r1, [r1]
	bl __atan2_ji_suan
	asrs r0, r0, # 15
	movs r1, # 0xc9
	bl __xian_shi_jiao_du
	bl __xianshi_zukang
	b dddd




	
	bkpt # 4
        movs r0, # 0x01
	movs r1, # 0
	bl _xielcd
	bl _lcdyanshi
	b ting
	


	
	bl __jisuan_zukang
	movs r0, # 0x8e
	ldr r2, = liangcheng
	ldr r1, = zukang_danwei
	ldr r2, [r2]
	lsls r2, r2, # 2
	adds r1, r1, r2
	movs r2, # 2
	bl _lcdxianshi
	bl __xianshi_zukang
	bl __xianshi_liangcheng
        bl __an_jian
__cai_dan_diao_du:
	lsls r0, r0, # 2
	ldr r1, = an_jian_biao
	ldr r2, [r1, r0]
	mov pc, r2
	b ting
	.ltorg


__suan_zukang:
	push {r0-r3,r6-r7,lr}
	ldr r0, = shangbi_r
	ldr r1, = shangbi_i
	ldr r2, = xiabi_r
	ldr r3, = xiabi_i
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	push {r0-r1}
	bl __atan2_ji_suan
	push {r0}
	mov r0, r2
	mov r1, r3
	bl __atan2_ji_suan
	mov r6, r0
	pop {r0}
	subs r6, r0, r6         @jiaodu_cha
	mov r0, r2
	mov r1, r3
	bl __ji_suan_fu_du
	mov r7, r0
	pop {r0-r1}
	bl __ji_suan_fu_du
	ldr r1, = 10000
	muls r0, r0, r1
	mov r1, r7
	bl _chufa
	mov r7, r0
	mov r0, r6
	movs r0, r0
	bpl __jiaodu_shi_zheng
	ldr r1, = 36000
	add r0, r0, r1
__jiaodu_shi_zheng:
	bl __jisuan_cos_sin
	muls r0, r0, r7
	muls r1, r1, r7
	asrs r0, r0, # 15
	asrs r1, r1, # 15
	ldr r0, = z_r
	ldr r3, = z_i
	str r1, [r3]
	str r2, [r0]
	pop {r0-r3,r6-r7,pc}

	
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
	cmp r5, # 16
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
	mov r1, r2
	mov r0, r3
	pop {r2-r7,pc}
	
	
__du_jiaozhun_biao:
	push {r0-r3,lr}
	ldr r0, = 0x8003800
	ldr r2, = liangcheng
	ldr r1, = pinlv
	ldr r2, [r2]
	ldr r1, [r1]
	movs r3, # 3
	muls r2, r2, r3
	lsls r2, r2, # 4
	movs r3, # 0x0c
	muls r1, r1, r3
	adds r1, r1, r2
	adds r0, r0, r1
	ldr r3, = z_i_jiaozhun
	ldr r1, [r0, # 4]	@sin
	ldr r2, [r0, # 8]	@幅度
	str r1, [r3]
	ldr r3, = z_jiaozhun
	ldr r0, [r0]		@cos
	str r2, [r3]
	ldr r3, = z_r_jiaozhun
	str r0, [r3]
	pop {r0-r3,pc}
__xiang_wei_xuan_zhuan:
	@入口R0=R R1=I
	push {r2-r7,lr}
	mov r3, r0
	mov r0, r1
	ldr r4, = z_r_jiaozhun         @cos
	ldr r5, = z_i_jiaozhun         @sin
	ldr r4, [r4]
	ldr r5, [r5]
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
	.ltorg
@__xie_flash:
	@FPEC解锁
 @       ldr r4, = fjiesuo
@	movs r5, # 3
@	add r5, r5, pc
@	mov lr, r5
@	mov pc, r4
@	OPTWRE解锁
@	ldr r4, = ojiesuo
@	movs r5, # 3
@	add r5, r5, pc
@	mov lr, r5
@	mov pc, r4
@	页擦除
@
@	ldr r4, = yeca
@	ldr r0, = 0x8003c00
@	movs r5, # 3
@	add r5, r5, pc
@	mov lr, r5
@	mov pc, r4
@	写FLASH
@	ldr r4, = xieflash
@	ldr r0, = 0x8003c00
@	ldr r1, = 0x12345678
@	movs r5, # 3
@	add r5,  r5, pc
@	mov lr, r5
@	mov pc, r4
	
_adcchushihua:
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
	ldr r1, = 0x40000000
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
	mov pc, lr



	
__jiaozhun_fudu:
	@入口 R0=期望幅度
	@出口R0= 幅度校准值
	push {r1-r6,lr}
	mov r2, r0
	ldr r0, = z_r
	ldr r1, = z_i
	ldr r0, [r0]
	ldr r1, [r1]
	bl __ji_suan_fu_du
	movs r1, # 0
	ldr r3, = jiaozhun_yong_cordic
	ldr r5, = 32768
	mov r6, r0
__fudu_jiaozhun_xunhuan:
	ldr r4, [r3, r1]
	cmp r2, r0
	bcc __fudu_jian
__fudu_jia:
	adds r5, r5, r4
	b __jiaozhun_xuanzhuan
__fudu_jian:
	subs r5, r5, r4
__jiaozhun_xuanzhuan:
	mov r0, r6
	muls r0, r0, r5
	lsrs r0, r0, # 15
	adds r1, r1, # 4
	cmp r1, # 120
	bne __fudu_jiaozhun_xunhuan
__baocun_fudu_jiaozhun:
	movs r0, r5
	bpl __jiaozhun_fudu_fanhui
	ldr r0, = 32768
__jiaozhun_fudu_fanhui:
	pop {r1-r6,pc}
	
	
__xiangwei_xuanzhuan:
	push {r2-r7,lr}
	ldr r2, = z_r
	ldr r3, = z_i
	ldr r4, [r2]
	ldr r5, [r3]
	mov r6, r0
	mov r7, r1
        muls r0, r0, r4 @X*COS
	muls r7, r7, r5 @Y*SIN
	muls r1, r1, r4 @X*SIN
	muls r6, r6, r5 @Y*COS
	subs r0, r0, r7
	adds r1, r6, r1
	asrs r0, r0, # 15
	asrs r1, r1, # 15
	str r0, [r2]
	str r1, [r3]
	pop {r2-r7,pc}

__jiaozhun_jiaodu:
	@入口r0=期望角度
	@出口R0=COS，R1=SIN
	push {r2-r7,lr}
	mov r3, r8
	mov r4, r9
	mov r5, r10
	mov r6, r11
	mov r7, r12
	push {r3-r7}
	mov r12, r0
	ldr r0, = 32768	@180度
	movs r1, # 0
	mov r8, r0
	mov r9, r1
	ldr r0, = z_r
	ldr r1, = z_i
	ldr r6, [r0]
	ldr r7, [r1]
	ldr r3, = jiaodu_jiaozhun_yong_cordic
	movs r2, # 0
__jiaodu_jiaozhun_xunhuan:
	ldr r4, [r3, r2]
	adds r2, r2, # 4
	ldr r5, [r3, r2]
	mov r0, r6
	mov r1, r7
	bl __atan2_ji_suan
	asrs r0, r0, # 15
	mov r1, r12
	subs r0, r0, r1
	bmi __jiaodu_fanzhuan
	mov r10, r6
	mov r11, r7
	mov r6, r8
	mov r7, r9
	mov r0, r6
	mov r1, r7
	muls r6, r6, r4 @X*COS
	muls r1, r1, r5 @Y*SIN
	muls r0, r0, r5 @X*SIN
	muls r7, r7, r4 @Y*COS
	adds r6, r6, r1
	subs r7, r7, r0
	asrs r6, r6, # 15
	asrs r7, r7, # 15
	mov r8, r6
	mov r9, r7
	mov r6, r10
	mov r7, r11
	mov r0, r6
	mov r1, r7
	muls r6, r6, r4	@X*COS
	muls r1, r1, r5	@Y*SIN
	muls r0, r0, r5	@X*SIN
	muls r7, r7, r4	@Y*COS
	adds r6, r6, r1
	subs r7, r7, r0
	asrs r6, r6, # 15
	asrs r7, r7, # 15
	b __jiaodu_xuanzhuan
__jiaodu_fanzhuan:
	mov r10, r6
	mov r11, r7
	mov r6, r8
	mov r7, r9
	mov r0, r6
	mov r1, r7
	muls r6, r6, r4 @X*COS
	muls r1, r1, r5 @Y*SIN
	muls r0, r0, r5 @X*SIN
	muls r7, r7, r4 @Y*COS
	subs r6, r6, r1
	adds r7, r7, r0
	asrs r6, r6, # 15
	asrs r7, r7, # 15
	mov r8, r6
	mov r9, r7
	mov r6, r10
	mov r7, r11
	mov r0, r6
	mov r1, r7
	muls r6, r6, r4 @X*COS
	muls r1, r1, r5 @Y*SIN
	muls r0, r0, r5 @X*SIN
	muls r7, r7, r4 @Y*COS
	subs r6, r6, r1
	adds r7, r7, r0
	asrs r6, r6, # 15
	asrs r7, r7, # 15
__jiaodu_xuanzhuan:
	adds r2, r2, # 4
	cmp r2, # 240
	bne __jiaodu_jiaozhun_xunhuan
	mov r0, r8
	mov r1, r9
	pop {r3-r7}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	mov r11, r6
	mov r12, r7
	pop {r2-r7,pc}
		
__xianshi_shangxiabi_jiaodu:
	push {r0-r3,lr}
	ldr r0, = shangbi_r
	ldr r1, = shangbi_i
	ldr r0, [r0]
	ldr r1, [r1]
	bl __atan2_ji_suan
	asrs r0, r0, # 15
	movs r1, # 0x88	@ 显示位置
	bl __xian_shi_jiao_du
	ldr r0, = xiabi_r
	ldr r1, = xiabi_i
	ldr r0, [r0]
	ldr r1, [r1]
	bl __atan2_ji_suan
	asrs r0, r0, # 15
	movs r1, # 0xc8 @ 显示位置
	bl __xian_shi_jiao_du
	pop {r0-r3,pc}

	
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
	
__jiaozhun_shu_zhi:
	@入口R0=期望值，R1=当前值
	push {r2-r6,lr}
	ldr r3, = jiaozhun_yong_cordic
	ldr r5, = 32768
	mov r6, r1
	movs r2, # 0
__z_jiaozhun_xunhuan:
	ldr r4, [r3, r2]
	cmp r0, r1
	bcc __z_jian
__z_jia:
	adds r5, r5, r4
	b __z_xuanzhuan
__z_jian:
	subs r5, r5, r4
__z_xuanzhuan:
	mov r1, r6
	muls r1, r1, r5
	lsrs r1, r1, # 15
	adds r2, r2, # 4
	cmp r2, # 120
	bne __z_jiaozhun_xunhuan
__baocun_z_jiaozhun:
	mov r0, r5
	pop {r2-r6,pc}

	
		
	
	
__an_jian:
	push {r1,lr}
	ldr r1, = 0x48000010
	ldr r0, [r1]	@pa13 pa14
	mvns r0, r0
	lsls r0, r0, # 17
	lsrs r0, r0, # 30
	pop {r1,pc}
__pinlv_shezhi:
	@入口R0
	@0=100, 1=1KHZ, 2=10KHZ, 3=100KHZ
	push {r0-r3,lr}
	ldr r1, = shezhi_pinlv
	movs r2, # 1
	str r2, [r1]
	ldr r2, = pinlv
	ldr r1, = pinlv_biao
	ldr r2, [r2]
        lsls r2, r2, # 2
	ldr r2, [r1, r2]
	mov pc, r2
	
__pinlv_100:
	@tim1ch3DMA
	ldr r0, = 0x40020000
	ldr r1, = 1000
	str r1, [r0, # 0x58]
	ldr r1, = 0x40012c3c @ 外设地址
	str r1, [r0, # 0x60]
	ldr r1, = zheng_xian_100hz @ 储存器地址
@	ldr r2, = 160
@	lsls r2, r2, # 1
@	adds r1, r1, r2
	str r1, [r0, # 0x64]
	ldr r1, = 1000             @点数
	str r1, [r0, # 0x5c]
	ldr r1, = 0x35b1         @ 储存到外设
	str r1, [r0, # 0x58]
	
        @ adc dma
	ldr r1, = 0x40012440
	str r1, [r0, # 0x10]
	movs r1, # 0
	str r1, [r0, # 0x08]
	ldr r1, = dianyabiao
	str r1, [r0, # 0x14]
	ldr r1, = 1000
	str r1, [r0, # 0x0c]
	ldr r1, = 0x5a1 @  0x583        @ 5a1
	str r1, [r0, # 0x08]
	
	@tim3chushihua:
	ldr r3, = 0x40000400 @ tim3_cr1
	ldr r2, = 0
	str r2, [r3, # 0x28] @ psc
	ldr r2, = 11199
	str r2, [r3, # 0x2c] @ ARR
	movs r2, # 0x20
	str r2, [r3, # 0x04] @ TRGO
	movs r2, # 0x06
	str r2, [r3, # 0x08]
	movs r2, # 0x80
	@tim1chushiha:
	ldr r0, = 0x40012c00 @ tim1_cr1
	movs r1, # 0
	str r1, [r0, # 0x28] @ psc
	ldr r1, = 559
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
	str r2, [r3]
	ldr r0, = 0xe000e010
	ldr r1, = 11199999
	str r1, [r0, # 4]
	str r1, [r0, # 8]
	movs r1, # 0x07
	str r1, [r0]    @systick 开
        ldr r0, = cossin
	ldr r1, = cos_sin_biao_100
	str r1, [r0]
	ldr r0, = lcd_beiguang
	movs r1, # 0xc0
	str r1, [r0]
	ldr r0, = lvbo_changdu
	ldr r1, = lvbo_youyi
	movs r2, # 8
	movs r3, # 9
	str r2, [r0]
	str r3, [r1]
	ldr r0, = dft_yanshi
	ldr r1, = 1000
	str r1, [r0]
	ldr r0, = dft_xuanze
	movs r1, # 0
	str r1, [r0]
	movs r3, # 0
	bl _adcchushihua
	pop {r0-r3,pc}
	.ltorg
	
__pinlv_1K:
	@tim1ch3DMA
	ldr r0, = 0x40020000
	movs r1, # 0
	str r1, [r0, # 0x58]
	str r1, [r0, # 0x08]
	ldr r1, = 0x40012c3c @ 外设地址
	str r1, [r0, # 0x60]
	ldr r1, = zheng_xian_1khz @ 储存器地址
	str r1, [r0, # 0x64]
	ldr r1, =  200             @点数
	str r1, [r0, # 0x5c]
	ldr r1, = 0x35b1         @ 储存到外设
	str r1, [r0, # 0x58]
	@ adc dma
	ldr r1, = 0x40012440
	str r1, [r0, # 0x10]
	ldr r1, = dianyabiao
	str r1, [r0, # 0x14]
	ldr r1, = 1000
	str r1, [r0, # 0x0c]
	ldr r1, = 0x5a1 @  0x583        @ 5a1
	str r1, [r0, # 0x08]
	
	
	@tim3chushihua:
	ldr r3, = 0x40000400 @ tim3_cr1
	ldr r2, = 0
	str r2, [r3, # 0x28] @ psc
	ldr r2, = 2799
	str r2, [r3, # 0x2c] @ ARR
	movs r2, # 0x20
	str r2, [r3, # 0x04] @ TRGO
	movs r2, # 0x06
	str r2, [r3, # 0x08]
	movs r2, # 0x80
	@tim1chushiha:
	ldr r0, = 0x40012c00 @ tim1_cr1
	movs r1, # 0
	str r1, [r0, # 0x28] @ psc
	ldr r1, = 279
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
	str r2, [r3]
        ldr r0, = 0xe000e010
	ldr r1, = 2799999
	str r1, [r0, # 4]
	str r1, [r0, # 8]
	movs r1, # 0x07
	str r1, [r0]    @systick 开
	ldr r0, = cossin
	ldr r1, = cos_sin_biao_1k
	str r1, [r0]
	ldr r0, = lcd_beiguang
	movs r1, # 0xc0
	str r1, [r0]
        ldr r0, = lvbo_changdu
	ldr r1, = lvbo_youyi
	movs r2, # 50
	movs r3, # 10
	str r2, [r0]
	str r3, [r1]
	movs r3, # 0
	bl _adcchushihua
	pop {r0-r3,pc}
	.ltorg
	
__pinlv_10K:
	@tim1ch3DMA
	ldr r0, = 0x40020000
	movs r1, # 0
	str r1, [r0, # 0x58]
	str r1, [r0, # 0x08]
	ldr r1, = 0x40012c3c @ 外设地址
	str r1, [r0, # 0x60]
	ldr r1, = zheng_xian_10khz @ 储存器地址
	str r1, [r0, # 0x64]
	ldr r1, = 50 @ 200             @点数
	str r1, [r0, # 0x5c]
	ldr r1, = 0x35b1 @ 0x31b1         @ 储存到外设
	str r1, [r0, # 0x58]
	@ adc dma
	ldr r1, = 0x40012440
	str r1, [r0, # 0x10]
	ldr r1, = dianyabiao
	str r1, [r0, # 0x14]
	ldr r1, = 1000
	str r1, [r0, # 0x0c]
	ldr r1, = 0x5a1 @  0x583        @ 5a1
	str r1, [r0, # 0x08]

	@tim3chushihua:
	ldr r3, = 0x40000400 @ tim3_cr1
	ldr r2, = 0
	str r2, [r3, # 0x28] @ psc
	ldr r2, = 279
	str r2, [r3, # 0x2c] @ ARR
	movs r2, # 0x20
	str r2, [r3, # 0x04] @ TRGO
	movs r2, # 0x06
	str r2, [r3, # 0x08]
	movs r2, # 0x80
	@tim1chushiha:
	ldr r0, = 0x40012c00 @ tim1_cr1
	movs r1, # 0
	str r1, [r0, # 0x28] @ psc
	ldr r1, = 111 @ 27
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
	str r2, [r3]
	ldr r0, = 0xe000e010
	ldr r1, = 279999
	str r1, [r0, # 4]
	str r1, [r0, # 8]
	movs r1, # 0x07
	str r1, [r0]    @systick 开
	ldr r0, = cossin
	ldr r1, = cos_sin_biao_10k
	str r1, [r0]
	ldr r0, = lcd_beiguang
	movs r1, # 0x80
	str r1, [r0]
        ldr r0, = lvbo_changdu
	ldr r1, = lvbo_youyi
	movs r2, # 80
	movs r3, # 11
	str r2, [r0]
	str r3, [r1]
	movs r3, # 0
	bl _adcchushihua
	pop {r0-r3,pc}
	.ltorg
	
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
	ldr r1, = 27999 @55999
	str r1, [r0, # 4]
	str r1, [r0, # 8]
	movs r1, # 0x07
	str r1, [r0]    @systick 开
	ldr r0, = cossin
	ldr r1, = cos_sin_biao_1k
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
	ldr r0, = dft_yanshi
	ldr r1, = 2000
	str r1, [r0]
        ldr r0, = dft_xuanze
	movs r1, # 1
	str r1, [r0]
	movs r3, # 1
	bl _adcchushihua
	pop {r0-r3,pc}
__pinlv_yanshi:
	ldr r0, = 0x1ffff
__pinlv_yanshi_xunhuan:
	subs r0, r0, # 1
	bne __pinlv_yanshi_xunhuan
	mov pc, lr
__pin_lv_xian_shi:
	push {r0-r3,lr}
	ldr r0, = pinlv
	movs r1, # 1
	ldr r0, [r0]
	ldr r2, = asciimabiao
	movs r3, # 0xff
	bl _zhuanascii
	movs r0, # 0x80
	ldr r1, = asciimabiao
	movs r2, # 1
	bl _lcdxianshi
	pop {r0-r3,pc}
	.ltorg
	
__jisuan_z_fudu:
	push {r0-r2,lr}
	ldr r0, = xiabi_rr
	ldr r1, = xiabi_ii
	ldr r0, [r0]
	ldr r1, [r1]
	asrs r0, r0, # 9
	asrs r1, r1, # 9
	bl __ji_suan_fu_du
	mov r2, r0
	ldr r0, = shangbi_rr
	ldr r1, = shangbi_ii
	ldr r0, [r0]
	ldr r1, [r1]
	asrs r0, r0, # 9
	asrs r1, r1, # 9
	bl __ji_suan_fu_du
	mov r1, r2
	ldr r2, = 1000
	muls r0, r0, r2
	bl _chufa
	ldr r1, = z_fudu
	lsrs r0, r0, # 5
	str r0, [r1]
	pop {r0-r2,pc}
	
__zidong_dangwei:
	push {r0-r3,lr}
__huan_dang:
	ldr r0, = z_fudu
	ldr r0, [r0]
	ldr r3, =  900
	lsrs r3, r3, # 5
	cmp r0, r3
	bcc __dang_wei_jian
	ldr r3, =  3000
	lsrs r3, r3, # 5
	cmp r0, r3
	bcc __zi_dong_dang_wei_fan_hui
	ldr r0, = liangcheng
	ldr r1, [r0]
	adds r1, r1, # 1
	str r1, [r0]
	cmp r1, # 24
	bne __zi_dong_dang_wei_fan_hui
	movs r1, # 23
	str r1, [r0]
	b __zi_dong_dang_wei_fan_hui
__dang_wei_jian:
	ldr r0, = liangcheng
	ldr r1, [r0]
	subs r1, r1, # 1
	str r1, [r0]
	cmp r1, # 0xff
	bcc __zi_dong_dang_wei_fan_hui
	movs r1, # 0
	str r1, [r0]
__zi_dong_dang_wei_fan_hui:
	pop {r0-r3,pc}

	
__jisuan_zukang:
	push {r0-r4,lr}
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
	muls r0, r0, r4
	muls r1, r1, r4
	bl __fu_shu_chu_fa
	ldr r0, = z_r
	ldr r3, = z_i
	str r1, [r3]
	str r2, [r0]
	pop {r0-r4,pc}

	
	
__jisuan_cos_sin:				@jd
	@入口R0=角度 （-18000到+18000）
	@出口R0=COS，R1=SIN
	push {r2-r7,lr}
	ldr r1, = 18000
	cmp r0, r1
	bls __xiaoyu_180
	subs r0, r0, r1
	movs r7, # 1
	b __js_cos_sin
__xiaoyu_180:
	movs r7, # 0
__js_cos_sin:
	ldr r1, = 9000
	ldr r2, = 51471
	movs r0, r0
	bpl __jisuan_jiaodu_bushi0
	mvns r0, r0
	adds r0, r0, # 1
	movs r4, # 1
	b __jiance_chao90
__jisuan_jiaodu_bushi0:
	movs r4, # 0
__jiance_chao90:
	cmp r0, r1
	bls __xiaoyu_90
	ldr r6, = 18000
	subs r0, r6, r0
	movs r6, # 1
	b __suan_cossin
__xiaoyu_90:
	movs r6, # 0
__suan_cossin:
	ldr r5, = 10000
	muls r0, r0, r5
	bl _chufa
	muls r0, r0, r2
	mov r1, r5
	bl _chufa
	cmp r4, # 1
	bne __suan_cos_sin1
	mvns r0, r0
	adds r0, r0, # 1
__suan_cos_sin1:
	bl __cordic_cos_sin
	cmp r6, # 1
	bne __cos_sin_fanhui
	mvns r0, r0
	adds r0, r0, # 1
__cos_sin_fanhui:
	cmp r7, # 1
	bne __cossin_fh
	mvns r0, r0
	mvns r1, r1
	adds r0, r0, # 1
	adds r1, r1, # 1
__cossin_fh:
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
cordicxunhuan:				 @ 循环
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
__atan2_ji_suan:				@jt
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
@	asrs r0, r0, # 15      @除32768等于角度
	pop {r2}
	mov r8, r2
	pop {r2-r7,pc}
	.ltorg
__ji_suan_fu_du:	    @ 计算幅度
	@ 入r0= 实部，r1= 虚部
	@ 出r0 = 幅度
	@ Mag ~=Alpha * max(|I|, |Q|) + Beta * min(|I|, |Q|)
	@ Alpha * Max + Beta * Min
	push {r1-r3,lr}
	movs r0, r0
	bpl _shibubushifushu
	mvns r0, r0                             @ 是负数转成正数
	adds r0, r0, # 1
_shibubushifushu:	                               @ 实部不是负数
	movs r1, r1
	bpl _xububushifushu
	mvns r1, r1                             @ 是负数转成正数
	adds r1, r1, # 1
_xububushifushu:	                                @ 虚部不是负数
	cmp r0, # 0
	bne _panduanxubushibushi0
	mov r0, r1
	pop {r1-r3,pc}
_panduanxubushibushi0:
	cmp r1, # 0
	bne _jisuanfudu1
	pop {r1-r3,pc}
_jisuanfudu1:
	ldr r2, = 32765		@ Alpha q15 0.948059448969 @
				@ 感觉这个小了，要乘1.0547
	ldr r3, = 13572		@ Beta q15 0.392699081699
				@感觉这个小了要乘1.0547
	cmp r1, r0
	bhi _alpha_min_beta_max
_alpha_max_beta_min:
	muls r0, r0, r2
	muls r1, r1, r3
	asrs r0, r0, # 15
	asrs r1, r1, # 15
	adds r0, r0, r1
	movs r1, # 1
	pop {r1-r3,pc}
_alpha_min_beta_max:
	muls r0, r0, r3
	muls r1, r1, r2
	asrs r0, r0, # 15
	asrs r1, r1, # 15
	adds r0, r0, r1
	movs r1, # 0
	pop {r1-r3,pc}


	
	.ltorg
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


__xianshi_liangcheng:
	push {r0-r3,lr}
        ldr r0, = liangcheng
	movs r1, # 2
	ldr r0, [r0]
	ldr r2, = asciimabiao
	movs r3, # 0xff
	bl _zhuanascii
	movs r0, # 0xc0
	ldr r1, = asciimabiao
	movs r2, # 2
	bl _lcdxianshi
	pop {r0-r3,pc}
	
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
	.ltorg





__dft1:	@1000点用时376微秒
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



	
__dft:		@1000点用时723微秒
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
	ldr r2, [r5, # 0x08]
	lsls r2, r2, # 24
	bmi __spi_mang
	mov pc, lr
__yanshi_595:
	ldr r2, = 0x2000
__yanshi__595:
	subs r2, r2, # 1
	bne __yanshi__595
	mov pc, lr
	

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

__fu_shu_chu_fa:
	@入口R0=a R1=b,R2=c R3=d
	@出口R2=实部 R1=虚部
	push {r4-r7,lr}
	cmp r2, # 0
	bne __tiao_guo_bei_chu_shu_0_pan_duan
	cmp r3, # 0
	bne __tiao_guo_bei_chu_shu_0_pan_duan
	mov r2, r0
	pop {r4-r7,pc}
__tiao_guo_bei_chu_shu_0_pan_duan:
	mov r4, r8
	mov r5, r9
	mov r6, r10
	mov r7, r11
	push {r4-r7}
__ji_suan_chu_fa:
	mov r8, r0	@a
	mov r9, r1	@b
	mov r10, r2	@c
	mov r11, r3	@d
	movs r7, # 0
	@ (a+bi)/(c+di)=(ac+bd)/(c*c+d*d)+(bc-ad)/(c*c+d*d)
	movs r0, r0
	bpl b1
	mvns r0, r0
	adds r0, r0, # 1
	movs r7, # 1
b1:
	mov r1, r10
	movs r1, r1
	bpl b2
	mvns r1, r1
	adds r1, r1, # 1
	adds r7, r7, # 1
b2:
	bl __chengfa
b3:
	cmp r7, # 1
	bne a1
	mvns r0, r0
	mvns r1, r1
a1:
	mov r4, r0	@a*c高32
	mov r5, r1	@a*c低32
	movs r7, # 0
	mov r0, r9
	mov r1, r11
	movs r0, r0
	bpl b4
	mvns r0, r0
	adds r0, r0, # 1
	adds r7, r7, # 1
b4:
	movs r1, r1
	bpl b5
	mvns r1, r1
	adds r1, r1, # 1
	adds r7, r7, # 1
b5:
	bl __chengfa
b6:
	cmp r7, # 1
	bne a2
	mvns r0, r0
	mvns r1, r1
a2:
	adds r1, r1, r5	@ac+bd低32
	adcs r0, r0, r4	@ac+bd高32
	mov r6, r0
	mov r7, r1
	mov r0, r10
	muls r0, r0, r0
	mov r4, r0	@c*c
	mov r0, r11
	muls r0, r0, r0
	adds r0, r0, r4
	push {r0}
	mov r1, r7
	movs r7, # 0
	movs r2, r0
	bpl b7
	mvns r2, r2
	adds r2, r2, # 1
	adds r7, r7, # 1
b7:
	movs r0, r6
	bpl b8
	mvns r0, r0
	mvns r1, r1
	adds r7, r7, # 1
b8:
	bl __chufa64
	cmp r7, # 1
	bne __bao_cun_chu_fa_shi_bu_jie_guo
	mvns r0, r0
	mvns r1, r1
__bao_cun_chu_fa_shi_bu_jie_guo:
	mov r6, r0	@实部高32
	mov r7, r1	@实部低32
	@r8=a, r9=b, r10=c, r11=d
	@(b*c-a*d)/(c*c+d*d)
	movs r5, # 0
	mov r0, r9
	movs r0, r0
	bpl b9
	mvns r0, r0
	adds r0, r0, # 1
	adds r5, r5, # 1
b9:
	mov r1, r10
	movs r1, r1
	bpl b10
	mvns r1, r1
	adds r1, r1, # 1
	adds r5, r5, # 1
b10:
	bl __chengfa
	cmp r5, # 1
	bne a3
	mvns r0, r0
	mvns r1, r1
a3:
	mov r4, r0      @b*c高32
	mov r5, r1      @b*c低32
	movs r3, # 0
	mov r0, r8
	movs r0, r0
	bpl b11
	mvns r0, r0
	adds r0, r0, # 1
	adds r3, r3, # 1
b11:
	mov r1, r11
	movs r1, r1
	bpl b12
	mvns r1, r1
	adds r1, r1, # 1
	adds r3, r3, # 1
b12:
	bl __chengfa
	cmp r3, # 1
	bne a4
	mvns r0, r0
	mvns r1, r1
a4:
	subs r5, r5, r1 @bc-ad低32
	sbcs r4, r4, r0 @bc-ad高32
	pop {r2}
	mov r1, r5
	movs r5, # 0
	movs r2, r2
	bpl b13
	mvns r2, r2
	adds r2, r2, # 1
	adds r5, r5, # 1
b13:
	movs r0, r4
	bpl b14
	mvns r0, r0
	mvns r1, r1
	adds r5, r5, # 1
b14:
	bl __chufa64
	cmp r5, # 1
	bne __bao_cun_chu_fa_xu_bu_jie_guo
	mvns r1, r1
	mvns r0, r0
	adds r1, r1, # 1
__bao_cun_chu_fa_xu_bu_jie_guo:
	mov r2, r7
	pop {r4-r7}
	mov r8, r4
	mov r9, r5
	mov r10, r6
	mov r11, r7
	pop {r4-r7,pc}

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
	ldr r2, = shangxiabi_qiehuan
	ldr r3, [r2]
	cmp r3, # 0
	bne __xiabi_dft
__shangbi_dft:
        ldr r0, = jisuan_dft_biaozhi
	ldr r1, [r0]
	adds r1, r1, # 1
	str r1, [r0]
	cmp r1, # 2
	beq __suan_shangbi_dft
	ldr r2, = 0x48000400
	movs r3, #  0x02
	str r3, [r2, # 0x28]    @cd4053_9_10  0X28上臂开
	ldr r0, = liangcheng
	ldr r1, = shangbi_liangcheng
	ldr r0, [r0]
	lsls r0, r0, # 1
	ldr r2, = 0x48000000
	ldrh  r3, [r1, r0]
	str r3, [r2, # 0x14]
	ldr r0, = 0x200000b0
	ldr r1, [r0]
	cmp r1, # 2
	bne __systick_fanhui
	ldr r0, = 0x40020000
	movs r1, # 0
	str r1, [r0, # 0x08]
	
	
	b __systick_fanhui
__suan_shangbi_dft:
	movs r1, # 0
	str r1, [r0]
	movs r3, # 1
	str r3, [r2]
 	ldr r0, = dft_yanshi
	ldr r0, [r0]
	bl __dft_yanshi
        ldr r0, = dft_xuanze
	ldr r0, [r0]
	cmp r0, # 0
	bne __shangbi_suan_dft1
	bl __dft
	b __shangbi_lvbo
__shangbi_suan_dft1:
	bl __dft1
__shangbi_lvbo:
	mvns r0, r0
	mvns r1, r1
	adds r0, r0, # 1
	adds r1, r1, # 1
	ldr r2, = shangbi_rr
	ldr r3, = shangbi_ii
	str r0, [r2]
	str r1, [r3]
	mov r4, r0
	ldr r2, = lvboqizhizhen3
	ldr r0, =lvboqihuanchong3
	bl __lv_bo_qi
	ldr r1, = shangbi_i
	str r0, [r1]
	mov r1, r4
	ldr r2, = lvboqizhizhen2
	ldr r0, = lvboqihuanchong2
	bl __lv_bo_qi
	ldr r1, = shangbi_r
	str r0, [r1]
	b __systick_fanhui
__dft_yanshi:
	subs r0, r0, # 1
	bne __dft_yanshi
	mov pc, lr
__xiabi_dft:
	ldr r0, = jisuan_dft_biaozhi
	ldr r1, [r0]
	adds r1, r1, # 1
	str r1, [r0]
	cmp r1, # 2
	beq __suan_xiabi_dft
	
	ldr r0, = liangcheng
	ldr r1, = xiabi_liangcheng
	ldr r0, [r0]
	lsls r0, r0, # 1
	ldr r2, = 0x48000000
	ldrh r3, [r1, r0]
        ldr r0, = 0x48000400
	movs r1, #  0x02
	str r1, [r0, # 0x18]    @cd4053_9_10 下臂开
	str r3, [r2, # 0x14]

        ldr r0, = 0x200000b0
	ldr r1, [r0]
	cmp r1, # 1
	bne __systick_fanhui
	ldr r0, = 0x40020000
	movs r1, # 0
	str r1, [r0, # 0x08]



	bkpt # 15
	

	
	b __systick_fanhui
__suan_xiabi_dft:
	movs r1, # 0
	str r1, [r0]
	str r1, [r2]
 	ldr r0, = dft_yanshi
	ldr r0, [r0]
 	bl __dft_yanshi
	ldr r0, = dft_xuanze
	ldr r0, [r0]
	cmp r0, # 0
	bne __xiabi_suan_dft1
	bl __dft
	b __xiabi_lvbo
__xiabi_suan_dft1:	
	bl __dft1
__xiabi_lvbo:	
	ldr r2, = xiabi_rr
	ldr r3, = xiabi_ii
	str r0, [r2]
	str r1, [r3]
	mov r4, r0
	ldr r2, = lvboqizhizhen1
	ldr r0, =lvboqihuanchong1
	bl __lv_bo_qi
	ldr r1, = xiabi_i
	str r0, [r1]
	mov r1, r4
	ldr r2, = lvboqizhizhen
	ldr r0, =lvboqihuanchong
	bl __lv_bo_qi
	ldr r1, = xiabi_r
	str r0, [r1]
@	ldr r0, = jishu
@	ldr r1, [r0]
@	subs r1, r1, # 1
@	str r1, [r0]
@	bne __systick_fanhui
@	movs r1, # 1
@	str r1, [r0]
@	ldr r0, = xianshi_biaozhi
@	movs r1, # 1
@	str r1, [r0]
@	bl __jisuan_z_fudu
@	ldr r0, = zidong_dangwei_kaiguan
@	ldr r0, [r0]
@	cmp r0, # 1
@	beq __systick_fanhui
@	bl __zidong_dangwei
__systick_fanhui:
	ldr r0, = 0xe0000d04
	ldr r1, = 0x02000000
	str r1, [r0]                 @ 清除SYSTICK中断
	pop {r4,pc}

aaa:
	bx lr
	.ltorg
	.end
