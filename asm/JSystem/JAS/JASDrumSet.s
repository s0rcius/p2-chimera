.include "macros.inc"
.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 0x8
.global __vt__10JASDrumSet
__vt__10JASDrumSet:
	.4byte 0
	.4byte 0
	.4byte __dt__10JASDrumSetFv
	.4byte getParam__10JASDrumSetCFiiP12JASInstParam
	.4byte getType__10JASDrumSetCFv
	.4byte 0

.section .sbss # 0x80514D80 - 0x80516360
.balign 0x8
.global oscp$640
oscp$640:
	.skip 0x4
.global init$641
init$641:
	.skip 0x4

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 0x8
.global lbl_80516CD8
lbl_80516CD8:
	.float 1.0
.global lbl_80516CDC
lbl_80516CDC:
	.4byte 0x00000000
.global lbl_80516CE0
lbl_80516CE0:
	.4byte 0x3FE00000
	.4byte 0x00000000
.global lbl_80516CE8
lbl_80516CE8:
	.float 0.5
	.4byte 0x00000000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global getParam__10JASDrumSetCFiiP12JASInstParam
getParam__10JASDrumSetCFiiP12JASInstParam:
/* 8009B0B8 00097FF8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8009B0BC 00097FFC  7C 08 02 A6 */	mflr r0
/* 8009B0C0 00098000  90 01 00 34 */	stw r0, 0x34(r1)
/* 8009B0C4 00098004  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 8009B0C8 00098008  7C 9C 23 78 */	mr r28, r4
/* 8009B0CC 0009800C  28 1C 00 80 */	cmplwi r28, 0x80
/* 8009B0D0 00098010  7C BD 2B 78 */	mr r29, r5
/* 8009B0D4 00098014  7C DE 33 78 */	mr r30, r6
/* 8009B0D8 00098018  41 80 00 0C */	blt lbl_8009B0E4
/* 8009B0DC 0009801C  38 60 00 00 */	li r3, 0
/* 8009B0E0 00098020  48 00 01 C0 */	b lbl_8009B2A0
lbl_8009B0E4:
/* 8009B0E4 00098024  57 84 28 34 */	slwi r4, r28, 5
/* 8009B0E8 00098028  38 A0 00 00 */	li r5, 0
/* 8009B0EC 0009802C  3B E4 00 04 */	addi r31, r4, 4
/* 8009B0F0 00098030  98 BE 00 00 */	stb r5, 0(r30)
/* 8009B0F4 00098034  7F E3 FA 14 */	add r31, r3, r31
/* 8009B0F8 00098038  38 80 00 01 */	li r4, 1
/* 8009B0FC 0009803C  98 9E 00 24 */	stb r4, 0x24(r30)
/* 8009B100 00098040  3C 60 80 4F */	lis r3, osc$639@ha
/* 8009B104 00098044  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8009B108 00098048  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8009B10C 0009804C  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8009B110 00098050  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8009B114 00098054  D0 3E 00 14 */	stfs f1, 0x14(r30)
/* 8009B118 00098058  A0 1F 00 0C */	lhz r0, 0xc(r31)
/* 8009B11C 0009805C  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 8009B120 00098060  C0 22 89 78 */	lfs f1, lbl_80516CD8@sda21(r2)
/* 8009B124 00098064  B0 1E 00 26 */	sth r0, 0x26(r30)
/* 8009B128 00098068  C0 02 89 7C */	lfs f0, lbl_80516CDC@sda21(r2)
/* 8009B12C 0009806C  94 A3 05 50 */	stwu r5, osc$639@l(r3)
/* 8009B130 00098070  88 0D 8A 34 */	lbz r0, init$641@sda21(r13)
/* 8009B134 00098074  D0 23 00 04 */	stfs f1, 4(r3)
/* 8009B138 00098078  7C 00 07 75 */	extsb. r0, r0
/* 8009B13C 0009807C  90 A3 00 08 */	stw r5, 8(r3)
/* 8009B140 00098080  90 A3 00 0C */	stw r5, 0xc(r3)
/* 8009B144 00098084  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 8009B148 00098088  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8009B14C 0009808C  40 82 00 0C */	bne lbl_8009B158
/* 8009B150 00098090  90 6D 8A 30 */	stw r3, oscp$640@sda21(r13)
/* 8009B154 00098094  98 8D 8A 34 */	stb r4, init$641@sda21(r13)
lbl_8009B158:
/* 8009B158 00098098  38 6D 8A 30 */	addi r3, r13, oscp$640@sda21
/* 8009B15C 0009809C  38 00 00 01 */	li r0, 1
/* 8009B160 000980A0  90 7E 00 08 */	stw r3, 8(r30)
/* 8009B164 000980A4  3B 40 00 00 */	li r26, 0
/* 8009B168 000980A8  3B 60 00 00 */	li r27, 0
/* 8009B16C 000980AC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8009B170 000980B0  48 00 00 C0 */	b lbl_8009B230
lbl_8009B174:
/* 8009B174 000980B4  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8009B178 000980B8  7F 23 D8 2E */	lwzx r25, r3, r27
/* 8009B17C 000980BC  28 19 00 00 */	cmplwi r25, 0
/* 8009B180 000980C0  41 82 00 A8 */	beq lbl_8009B228
/* 8009B184 000980C4  7F 23 CB 78 */	mr r3, r25
/* 8009B188 000980C8  7F 84 E3 78 */	mr r4, r28
/* 8009B18C 000980CC  81 99 00 00 */	lwz r12, 0(r25)
/* 8009B190 000980D0  7F A5 EB 78 */	mr r5, r29
/* 8009B194 000980D4  81 8C 00 08 */	lwz r12, 8(r12)
/* 8009B198 000980D8  7D 89 03 A6 */	mtctr r12
/* 8009B19C 000980DC  4E 80 04 21 */	bctrl 
/* 8009B1A0 000980E0  88 19 00 04 */	lbz r0, 4(r25)
/* 8009B1A4 000980E4  2C 00 00 02 */	cmpwi r0, 2
/* 8009B1A8 000980E8  41 82 00 48 */	beq lbl_8009B1F0
/* 8009B1AC 000980EC  40 80 00 14 */	bge lbl_8009B1C0
/* 8009B1B0 000980F0  2C 00 00 00 */	cmpwi r0, 0
/* 8009B1B4 000980F4  41 82 00 1C */	beq lbl_8009B1D0
/* 8009B1B8 000980F8  40 80 00 28 */	bge lbl_8009B1E0
/* 8009B1BC 000980FC  48 00 00 6C */	b lbl_8009B228
lbl_8009B1C0:
/* 8009B1C0 00098100  2C 00 00 04 */	cmpwi r0, 4
/* 8009B1C4 00098104  41 82 00 58 */	beq lbl_8009B21C
/* 8009B1C8 00098108  40 80 00 60 */	bge lbl_8009B228
/* 8009B1CC 0009810C  48 00 00 40 */	b lbl_8009B20C
lbl_8009B1D0:
/* 8009B1D0 00098110  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8009B1D4 00098114  EC 00 00 72 */	fmuls f0, f0, f1
/* 8009B1D8 00098118  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8009B1DC 0009811C  48 00 00 4C */	b lbl_8009B228
lbl_8009B1E0:
/* 8009B1E0 00098120  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8009B1E4 00098124  EC 00 00 72 */	fmuls f0, f0, f1
/* 8009B1E8 00098128  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 8009B1EC 0009812C  48 00 00 3C */	b lbl_8009B228
lbl_8009B1F0:
/* 8009B1F0 00098130  C8 02 89 80 */	lfd f0, lbl_80516CE0@sda21(r2)
/* 8009B1F4 00098134  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 8009B1F8 00098138  FC 01 00 28 */	fsub f0, f1, f0
/* 8009B1FC 0009813C  FC 02 00 2A */	fadd f0, f2, f0
/* 8009B200 00098140  FC 00 00 18 */	frsp f0, f0
/* 8009B204 00098144  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 8009B208 00098148  48 00 00 20 */	b lbl_8009B228
lbl_8009B20C:
/* 8009B20C 0009814C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8009B210 00098150  EC 00 08 2A */	fadds f0, f0, f1
/* 8009B214 00098154  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 8009B218 00098158  48 00 00 10 */	b lbl_8009B228
lbl_8009B21C:
/* 8009B21C 0009815C  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 8009B220 00098160  EC 00 08 2A */	fadds f0, f0, f1
/* 8009B224 00098164  D0 1E 00 20 */	stfs f0, 0x20(r30)
lbl_8009B228:
/* 8009B228 00098168  3B 7B 00 04 */	addi r27, r27, 4
/* 8009B22C 0009816C  3B 5A 00 01 */	addi r26, r26, 1
lbl_8009B230:
/* 8009B230 00098170  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8009B234 00098174  7C 1A 00 40 */	cmplw r26, r0
/* 8009B238 00098178  41 80 FF 3C */	blt lbl_8009B174
/* 8009B23C 0009817C  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8009B240 00098180  38 60 00 00 */	li r3, 0
/* 8009B244 00098184  7C 09 03 A6 */	mtctr r0
/* 8009B248 00098188  28 00 00 00 */	cmplwi r0, 0
/* 8009B24C 0009818C  40 81 00 50 */	ble lbl_8009B29C
lbl_8009B250:
/* 8009B250 00098190  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8009B254 00098194  7C 80 1A 14 */	add r4, r0, r3
/* 8009B258 00098198  80 04 00 00 */	lwz r0, 0(r4)
/* 8009B25C 0009819C  7C 1D 00 00 */	cmpw r29, r0
/* 8009B260 000981A0  41 81 00 34 */	bgt lbl_8009B294
/* 8009B264 000981A4  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8009B268 000981A8  38 60 00 01 */	li r3, 1
/* 8009B26C 000981AC  C0 04 00 08 */	lfs f0, 8(r4)
/* 8009B270 000981B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8009B274 000981B4  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8009B278 000981B8  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8009B27C 000981BC  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8009B280 000981C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8009B284 000981C4  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 8009B288 000981C8  80 04 00 04 */	lwz r0, 4(r4)
/* 8009B28C 000981CC  90 1E 00 04 */	stw r0, 4(r30)
/* 8009B290 000981D0  48 00 00 10 */	b lbl_8009B2A0
lbl_8009B294:
/* 8009B294 000981D4  38 63 00 10 */	addi r3, r3, 0x10
/* 8009B298 000981D8  42 00 FF B8 */	bdnz lbl_8009B250
lbl_8009B29C:
/* 8009B29C 000981DC  38 60 00 00 */	li r3, 0
lbl_8009B2A0:
/* 8009B2A0 000981E0  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 8009B2A4 000981E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8009B2A8 000981E8  7C 08 03 A6 */	mtlr r0
/* 8009B2AC 000981EC  38 21 00 30 */	addi r1, r1, 0x30
/* 8009B2B0 000981F0  4E 80 00 20 */	blr 

.global getPerc__10JASDrumSetFi
getPerc__10JASDrumSetFi:
/* 8009B2B4 000981F4  54 84 28 34 */	slwi r4, r4, 5
/* 8009B2B8 000981F8  7C 60 1B 78 */	mr r0, r3
/* 8009B2BC 000981FC  38 64 00 04 */	addi r3, r4, 4
/* 8009B2C0 00098200  7C 60 1A 14 */	add r3, r0, r3
/* 8009B2C4 00098204  4E 80 00 20 */	blr 

.global __ct__Q210JASDrumSet5TPercFv
__ct__Q210JASDrumSet5TPercFv:
/* 8009B2C8 00098208  C0 22 89 78 */	lfs f1, lbl_80516CD8@sda21(r2)
/* 8009B2CC 0009820C  38 80 03 E8 */	li r4, 0x3e8
/* 8009B2D0 00098210  C0 02 89 88 */	lfs f0, lbl_80516CE8@sda21(r2)
/* 8009B2D4 00098214  38 00 00 00 */	li r0, 0
/* 8009B2D8 00098218  D0 23 00 00 */	stfs f1, 0(r3)
/* 8009B2DC 0009821C  D0 23 00 04 */	stfs f1, 4(r3)
/* 8009B2E0 00098220  D0 03 00 08 */	stfs f0, 8(r3)
/* 8009B2E4 00098224  B0 83 00 0C */	sth r4, 0xc(r3)
/* 8009B2E8 00098228  90 03 00 10 */	stw r0, 0x10(r3)
/* 8009B2EC 0009822C  90 03 00 14 */	stw r0, 0x14(r3)
/* 8009B2F0 00098230  90 03 00 18 */	stw r0, 0x18(r3)
/* 8009B2F4 00098234  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8009B2F8 00098238  4E 80 00 20 */	blr 

.global __dt__Q210JASDrumSet5TPercFv
__dt__Q210JASDrumSet5TPercFv:
/* 8009B2FC 0009823C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009B300 00098240  7C 08 02 A6 */	mflr r0
/* 8009B304 00098244  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009B308 00098248  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009B30C 0009824C  7C 9F 23 78 */	mr r31, r4
/* 8009B310 00098250  93 C1 00 08 */	stw r30, 8(r1)
/* 8009B314 00098254  7C 7E 1B 79 */	or. r30, r3, r3
/* 8009B318 00098258  41 82 00 24 */	beq lbl_8009B33C
/* 8009B31C 0009825C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8009B320 00098260  4B F8 8D B9 */	bl __dla__FPv
/* 8009B324 00098264  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8009B328 00098268  4B F8 8D B1 */	bl __dla__FPv
/* 8009B32C 0009826C  7F E0 07 35 */	extsh. r0, r31
/* 8009B330 00098270  40 81 00 0C */	ble lbl_8009B33C
/* 8009B334 00098274  7F C3 F3 78 */	mr r3, r30
/* 8009B338 00098278  4B F8 8D 7D */	bl __dl__FPv
lbl_8009B33C:
/* 8009B33C 0009827C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009B340 00098280  7F C3 F3 78 */	mr r3, r30
/* 8009B344 00098284  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009B348 00098288  83 C1 00 08 */	lwz r30, 8(r1)
/* 8009B34C 0009828C  7C 08 03 A6 */	mtlr r0
/* 8009B350 00098290  38 21 00 10 */	addi r1, r1, 0x10
/* 8009B354 00098294  4E 80 00 20 */	blr 

.global setEffectCount__Q210JASDrumSet5TPercFUl
setEffectCount__Q210JASDrumSet5TPercFUl:
/* 8009B358 00098298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009B35C 0009829C  7C 08 02 A6 */	mflr r0
/* 8009B360 000982A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009B364 000982A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009B368 000982A8  7C 9F 23 78 */	mr r31, r4
/* 8009B36C 000982AC  93 C1 00 08 */	stw r30, 8(r1)
/* 8009B370 000982B0  7C 7E 1B 78 */	mr r30, r3
/* 8009B374 000982B4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8009B378 000982B8  4B F8 8D 61 */	bl __dla__FPv
/* 8009B37C 000982BC  28 1F 00 00 */	cmplwi r31, 0
/* 8009B380 000982C0  93 FE 00 14 */	stw r31, 0x14(r30)
/* 8009B384 000982C4  40 82 00 10 */	bne lbl_8009B394
/* 8009B388 000982C8  38 00 00 00 */	li r0, 0
/* 8009B38C 000982CC  90 1E 00 10 */	stw r0, 0x10(r30)
/* 8009B390 000982D0  48 00 00 28 */	b lbl_8009B3B8
lbl_8009B394:
/* 8009B394 000982D4  48 00 0F 69 */	bl getCurrentHeap__7JASBankFv
/* 8009B398 000982D8  7C 64 1B 78 */	mr r4, r3
/* 8009B39C 000982DC  57 E3 10 3A */	slwi r3, r31, 2
/* 8009B3A0 000982E0  38 A0 00 00 */	li r5, 0
/* 8009B3A4 000982E4  4B F8 8C A5 */	bl __nwa__FUlP7JKRHeapi
/* 8009B3A8 000982E8  90 7E 00 10 */	stw r3, 0x10(r30)
/* 8009B3AC 000982EC  57 E4 10 3A */	slwi r4, r31, 2
/* 8009B3B0 000982F0  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8009B3B4 000982F4  48 00 AE B1 */	bl bzero__7JASCalcFPvUl
lbl_8009B3B8:
/* 8009B3B8 000982F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009B3BC 000982FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009B3C0 00098300  83 C1 00 08 */	lwz r30, 8(r1)
/* 8009B3C4 00098304  7C 08 03 A6 */	mtlr r0
/* 8009B3C8 00098308  38 21 00 10 */	addi r1, r1, 0x10
/* 8009B3CC 0009830C  4E 80 00 20 */	blr 

.global setVeloRegionCount__Q210JASDrumSet5TPercFUl
setVeloRegionCount__Q210JASDrumSet5TPercFUl:
/* 8009B3D0 00098310  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009B3D4 00098314  7C 08 02 A6 */	mflr r0
/* 8009B3D8 00098318  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009B3DC 0009831C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009B3E0 00098320  7C 9F 23 78 */	mr r31, r4
/* 8009B3E4 00098324  93 C1 00 08 */	stw r30, 8(r1)
/* 8009B3E8 00098328  7C 7E 1B 78 */	mr r30, r3
/* 8009B3EC 0009832C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8009B3F0 00098330  4B F8 8C E9 */	bl __dla__FPv
/* 8009B3F4 00098334  48 00 0F 09 */	bl getCurrentHeap__7JASBankFv
/* 8009B3F8 00098338  7C 64 1B 78 */	mr r4, r3
/* 8009B3FC 0009833C  57 E3 20 36 */	slwi r3, r31, 4
/* 8009B400 00098340  38 A0 00 00 */	li r5, 0
/* 8009B404 00098344  4B F8 8C 45 */	bl __nwa__FUlP7JKRHeapi
/* 8009B408 00098348  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 8009B40C 0009834C  93 FE 00 18 */	stw r31, 0x18(r30)
/* 8009B410 00098350  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009B414 00098354  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009B418 00098358  83 C1 00 08 */	lwz r30, 8(r1)
/* 8009B41C 0009835C  7C 08 03 A6 */	mtlr r0
/* 8009B420 00098360  38 21 00 10 */	addi r1, r1, 0x10
/* 8009B424 00098364  4E 80 00 20 */	blr 

.global getVeloRegion__Q210JASDrumSet5TPercFi
getVeloRegion__Q210JASDrumSet5TPercFi:
/* 8009B428 00098368  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8009B42C 0009836C  54 80 20 36 */	slwi r0, r4, 4
/* 8009B430 00098370  7C 63 02 14 */	add r3, r3, r0
/* 8009B434 00098374  4E 80 00 20 */	blr 

.global setEffect__Q210JASDrumSet5TPercFiP13JASInstEffect
setEffect__Q210JASDrumSet5TPercFiP13JASInstEffect:
/* 8009B438 00098378  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8009B43C 0009837C  54 80 10 3A */	slwi r0, r4, 2
/* 8009B440 00098380  7C A3 01 2E */	stwx r5, r3, r0
/* 8009B444 00098384  4E 80 00 20 */	blr 

.global setRelease__Q210JASDrumSet5TPercFUl
setRelease__Q210JASDrumSet5TPercFUl:
/* 8009B448 00098388  B0 83 00 0C */	sth r4, 0xc(r3)
/* 8009B44C 0009838C  4E 80 00 20 */	blr 

.global __dt__10JASDrumSetFv
__dt__10JASDrumSetFv:
/* 8009B450 00098390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009B454 00098394  7C 08 02 A6 */	mflr r0
/* 8009B458 00098398  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009B45C 0009839C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009B460 000983A0  7C 9F 23 78 */	mr r31, r4
/* 8009B464 000983A4  93 C1 00 08 */	stw r30, 8(r1)
/* 8009B468 000983A8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8009B46C 000983AC  41 82 00 4C */	beq lbl_8009B4B8
/* 8009B470 000983B0  3C 60 80 4A */	lis r3, __vt__10JASDrumSet@ha
/* 8009B474 000983B4  3C 80 80 0A */	lis r4, __dt__Q210JASDrumSet5TPercFv@ha
/* 8009B478 000983B8  38 03 38 20 */	addi r0, r3, __vt__10JASDrumSet@l
/* 8009B47C 000983BC  38 A0 00 20 */	li r5, 0x20
/* 8009B480 000983C0  90 1E 00 00 */	stw r0, 0(r30)
/* 8009B484 000983C4  38 7E 00 04 */	addi r3, r30, 4
/* 8009B488 000983C8  38 84 B2 FC */	addi r4, r4, __dt__Q210JASDrumSet5TPercFv@l
/* 8009B48C 000983CC  38 C0 00 80 */	li r6, 0x80
/* 8009B490 000983D0  48 02 63 35 */	bl __destroy_arr
/* 8009B494 000983D4  28 1E 00 00 */	cmplwi r30, 0
/* 8009B498 000983D8  41 82 00 10 */	beq lbl_8009B4A8
/* 8009B49C 000983DC  3C 60 80 4A */	lis r3, __vt__7JASInst@ha
/* 8009B4A0 000983E0  38 03 37 90 */	addi r0, r3, __vt__7JASInst@l
/* 8009B4A4 000983E4  90 1E 00 00 */	stw r0, 0(r30)
lbl_8009B4A8:
/* 8009B4A8 000983E8  7F E0 07 35 */	extsh. r0, r31
/* 8009B4AC 000983EC  40 81 00 0C */	ble lbl_8009B4B8
/* 8009B4B0 000983F0  7F C3 F3 78 */	mr r3, r30
/* 8009B4B4 000983F4  4B F8 8C 01 */	bl __dl__FPv
lbl_8009B4B8:
/* 8009B4B8 000983F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009B4BC 000983FC  7F C3 F3 78 */	mr r3, r30
/* 8009B4C0 00098400  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009B4C4 00098404  83 C1 00 08 */	lwz r30, 8(r1)
/* 8009B4C8 00098408  7C 08 03 A6 */	mtlr r0
/* 8009B4CC 0009840C  38 21 00 10 */	addi r1, r1, 0x10
/* 8009B4D0 00098410  4E 80 00 20 */	blr 

.global getType__10JASDrumSetCFv
getType__10JASDrumSetCFv:
/* 8009B4D4 00098414  3C 60 50 45 */	lis r3, 0x50455243@ha
/* 8009B4D8 00098418  38 63 52 43 */	addi r3, r3, 0x50455243@l
/* 8009B4DC 0009841C  4E 80 00 20 */	blr 
