.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
.global lbl_80483CD0
lbl_80483CD0:
	.asciz "actRescue"
	.skip 2
.global lbl_80483CDC
lbl_80483CDC:
	.asciz "aiRescue.cpp"
	.skip 3
.global lbl_80483CEC
lbl_80483CEC:
	.asciz "P2Assert"
	.skip 3
	.asciz "rhandjnt"
	.skip 3
	.asciz "ApproachPosActionArg"
	.skip 3
	.asciz "ActionArg"
	.skip 2

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global __vt__10WPFindCond
__vt__10WPFindCond:
	.4byte 0
	.4byte 0
	.4byte satisfy__10WPFindCondFPQ24Game8WayPoint
.global __vt__Q26PikiAI9ActRescue
__vt__Q26PikiAI9ActRescue:
	.4byte 0
	.4byte 0
	.4byte init__Q26PikiAI9ActRescueFPQ26PikiAI9ActionArg
	.4byte exec__Q26PikiAI9ActRescueFv
	.4byte cleanup__Q26PikiAI9ActRescueFv
	.4byte emotion_success__Q26PikiAI9ActRescueFv
	.4byte emotion_fail__Q26PikiAI6ActionFv
	.4byte applicable__Q26PikiAI6ActionFv
	.4byte getNextAIType__Q26PikiAI9ActRescueFv
	.4byte bounceCallback__Q26PikiAI6ActionFPQ24Game4PikiPQ23Sys8Triangle
	.4byte collisionCallback__Q26PikiAI9ActRescueFPQ24Game4PikiRQ24Game9CollEvent
	.4byte platCallback__Q26PikiAI6ActionFPQ24Game4PikiRQ24Game9PlatEvent
	.4byte doDirectDraw__Q26PikiAI9ActRescueFR8Graphics
	.4byte "wallCallback__Q26PikiAI6ActionFR10Vector3<f>"
	.4byte getInfo__Q26PikiAI6ActionFPc
	.4byte onKeyEvent__Q26PikiAI9ActRescueFRCQ28SysShape8KeyEvent
	.4byte 0
	.4byte 0
	.4byte "@40@4@onKeyEvent__Q26PikiAI9ActRescueFRCQ28SysShape8KeyEvent"

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.global lbl_8051A4F0
lbl_8051A4F0:
	.4byte 0x52657363
	.4byte 0x75650000
.global lbl_8051A4F8
lbl_8051A4F8:
	.4byte 0x41200000
.global lbl_8051A4FC
lbl_8051A4FC:
	.4byte 0xBF800000
.global lbl_8051A500
lbl_8051A500:
	.4byte 0x437A0000
.global lbl_8051A504
lbl_8051A504:
	.4byte 0x40400000
.global lbl_8051A508
lbl_8051A508:
	.4byte 0x00000000
.global lbl_8051A50C
lbl_8051A50C:
	.float 0.5
.global lbl_8051A510
lbl_8051A510:
	.4byte 0x42480000
.global lbl_8051A514
lbl_8051A514:
	.4byte 0x40000000
.global lbl_8051A518
lbl_8051A518:
	.4byte 0x43A2F983
.global lbl_8051A51C
lbl_8051A51C:
	.4byte 0xC3A2F983

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q26PikiAI9ActRescueFPQ24Game4Piki
__ct__Q26PikiAI9ActRescueFPQ24Game4Piki:
/* 80238EB0 00235DF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80238EB4 00235DF4  7C 08 02 A6 */	mflr r0
/* 80238EB8 00235DF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80238EBC 00235DFC  7C 80 07 35 */	extsh. r0, r4
/* 80238EC0 00235E00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80238EC4 00235E04  7C BF 2B 78 */	mr r31, r5
/* 80238EC8 00235E08  93 C1 00 08 */	stw r30, 8(r1)
/* 80238ECC 00235E0C  7C 7E 1B 78 */	mr r30, r3
/* 80238ED0 00235E10  41 82 00 18 */	beq lbl_80238EE8
/* 80238ED4 00235E14  38 1E 00 28 */	addi r0, r30, 0x28
/* 80238ED8 00235E18  3C 60 80 4B */	lis r3, __vt__Q28SysShape14MotionListener@ha
/* 80238EDC 00235E1C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80238EE0 00235E20  38 03 A6 6C */	addi r0, r3, __vt__Q28SysShape14MotionListener@l
/* 80238EE4 00235E24  90 1E 00 28 */	stw r0, 0x28(r30)
lbl_80238EE8:
/* 80238EE8 00235E28  7F C3 F3 78 */	mr r3, r30
/* 80238EEC 00235E2C  7F E4 FB 78 */	mr r4, r31
/* 80238EF0 00235E30  4B F5 DB 29 */	bl __ct__Q26PikiAI6ActionFPQ24Game4Piki
/* 80238EF4 00235E34  3C 60 80 4C */	lis r3, __vt__Q26PikiAI9ActRescue@ha
/* 80238EF8 00235E38  38 BE 00 28 */	addi r5, r30, 0x28
/* 80238EFC 00235E3C  38 63 15 44 */	addi r3, r3, __vt__Q26PikiAI9ActRescue@l
/* 80238F00 00235E40  38 80 00 00 */	li r4, 0
/* 80238F04 00235E44  90 7E 00 00 */	stw r3, 0(r30)
/* 80238F08 00235E48  38 E3 00 40 */	addi r7, r3, 0x40
/* 80238F0C 00235E4C  38 02 C1 90 */	addi r0, r2, lbl_8051A4F0@sda21
/* 80238F10 00235E50  38 60 00 28 */	li r3, 0x28
/* 80238F14 00235E54  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 80238F18 00235E58  90 E6 00 00 */	stw r7, 0(r6)
/* 80238F1C 00235E5C  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 80238F20 00235E60  7C A6 28 50 */	subf r5, r6, r5
/* 80238F24 00235E64  90 A6 00 04 */	stw r5, 4(r6)
/* 80238F28 00235E68  98 9E 00 14 */	stb r4, 0x14(r30)
/* 80238F2C 00235E6C  90 1E 00 08 */	stw r0, 8(r30)
/* 80238F30 00235E70  4B DE AF 75 */	bl __nw__FUl
/* 80238F34 00235E74  7C 60 1B 79 */	or. r0, r3, r3
/* 80238F38 00235E78  41 82 00 10 */	beq lbl_80238F48
/* 80238F3C 00235E7C  7F E4 FB 78 */	mr r4, r31
/* 80238F40 00235E80  4B F5 E5 71 */	bl __ct__Q26PikiAI14ActApproachPosFPQ24Game4Piki
/* 80238F44 00235E84  7C 60 1B 78 */	mr r0, r3
lbl_80238F48:
/* 80238F48 00235E88  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80238F4C 00235E8C  7F C3 F3 78 */	mr r3, r30
/* 80238F50 00235E90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80238F54 00235E94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80238F58 00235E98  83 C1 00 08 */	lwz r30, 8(r1)
/* 80238F5C 00235E9C  7C 08 03 A6 */	mtlr r0
/* 80238F60 00235EA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80238F64 00235EA4  4E 80 00 20 */	blr 

.global init__Q26PikiAI9ActRescueFPQ26PikiAI9ActionArg
init__Q26PikiAI9ActRescueFPQ26PikiAI9ActionArg:
/* 80238F68 00235EA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80238F6C 00235EAC  7C 08 02 A6 */	mflr r0
/* 80238F70 00235EB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80238F74 00235EB4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80238F78 00235EB8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80238F7C 00235EBC  7C 9E 23 79 */	or. r30, r4, r4
/* 80238F80 00235EC0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80238F84 00235EC4  7C 7D 1B 78 */	mr r29, r3
/* 80238F88 00235EC8  40 82 00 20 */	bne lbl_80238FA8
/* 80238F8C 00235ECC  3C 60 80 48 */	lis r3, lbl_80483CDC@ha
/* 80238F90 00235ED0  3C A0 80 48 */	lis r5, lbl_80483CEC@ha
/* 80238F94 00235ED4  38 63 3C DC */	addi r3, r3, lbl_80483CDC@l
/* 80238F98 00235ED8  38 80 00 2E */	li r4, 0x2e
/* 80238F9C 00235EDC  38 A5 3C EC */	addi r5, r5, lbl_80483CEC@l
/* 80238FA0 00235EE0  4C C6 31 82 */	crclr 6
/* 80238FA4 00235EE4  4B DF 16 9D */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80238FA8:
/* 80238FA8 00235EE8  80 7E 00 04 */	lwz r3, 4(r30)
/* 80238FAC 00235EEC  3B E0 00 00 */	li r31, 0
/* 80238FB0 00235EF0  28 03 00 00 */	cmplwi r3, 0
/* 80238FB4 00235EF4  41 82 00 20 */	beq lbl_80238FD4
/* 80238FB8 00235EF8  81 83 00 00 */	lwz r12, 0(r3)
/* 80238FBC 00235EFC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80238FC0 00235F00  7D 89 03 A6 */	mtctr r12
/* 80238FC4 00235F04  4E 80 04 21 */	bctrl 
/* 80238FC8 00235F08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80238FCC 00235F0C  41 82 00 08 */	beq lbl_80238FD4
/* 80238FD0 00235F10  3B E0 00 01 */	li r31, 1
lbl_80238FD4:
/* 80238FD4 00235F14  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80238FD8 00235F18  40 82 00 20 */	bne lbl_80238FF8
/* 80238FDC 00235F1C  3C 60 80 48 */	lis r3, lbl_80483CDC@ha
/* 80238FE0 00235F20  3C A0 80 48 */	lis r5, lbl_80483CEC@ha
/* 80238FE4 00235F24  38 63 3C DC */	addi r3, r3, lbl_80483CDC@l
/* 80238FE8 00235F28  38 80 00 30 */	li r4, 0x30
/* 80238FEC 00235F2C  38 A5 3C EC */	addi r5, r5, lbl_80483CEC@l
/* 80238FF0 00235F30  4C C6 31 82 */	crclr 6
/* 80238FF4 00235F34  4B DF 16 4D */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80238FF8:
/* 80238FF8 00235F38  80 9E 00 04 */	lwz r4, 4(r30)
/* 80238FFC 00235F3C  38 00 00 00 */	li r0, 0
/* 80239000 00235F40  7F A3 EB 78 */	mr r3, r29
/* 80239004 00235F44  90 9D 00 1C */	stw r4, 0x1c(r29)
/* 80239008 00235F48  90 1D 00 20 */	stw r0, 0x20(r29)
/* 8023900C 00235F4C  48 00 00 81 */	bl initApproach__Q26PikiAI9ActRescueFv
/* 80239010 00235F50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80239014 00235F54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80239018 00235F58  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8023901C 00235F5C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80239020 00235F60  7C 08 03 A6 */	mtlr r0
/* 80239024 00235F64  38 21 00 20 */	addi r1, r1, 0x20
/* 80239028 00235F68  4E 80 00 20 */	blr 

.global exec__Q26PikiAI9ActRescueFv
exec__Q26PikiAI9ActRescueFv:
/* 8023902C 00235F6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80239030 00235F70  7C 08 02 A6 */	mflr r0
/* 80239034 00235F74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80239038 00235F78  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8023903C 00235F7C  2C 00 00 01 */	cmpwi r0, 1
/* 80239040 00235F80  41 82 00 28 */	beq lbl_80239068
/* 80239044 00235F84  40 80 00 10 */	bge lbl_80239054
/* 80239048 00235F88  2C 00 00 00 */	cmpwi r0, 0
/* 8023904C 00235F8C  40 80 00 14 */	bge lbl_80239060
/* 80239050 00235F90  48 00 00 28 */	b lbl_80239078
lbl_80239054:
/* 80239054 00235F94  2C 00 00 03 */	cmpwi r0, 3
/* 80239058 00235F98  40 80 00 20 */	bge lbl_80239078
/* 8023905C 00235F9C  48 00 00 14 */	b lbl_80239070
lbl_80239060:
/* 80239060 00235FA0  48 00 00 D9 */	bl execApproach__Q26PikiAI9ActRescueFv
/* 80239064 00235FA4  48 00 00 18 */	b lbl_8023907C
lbl_80239068:
/* 80239068 00235FA8  48 00 03 5D */	bl execGo__Q26PikiAI9ActRescueFv
/* 8023906C 00235FAC  48 00 00 10 */	b lbl_8023907C
lbl_80239070:
/* 80239070 00235FB0  48 00 05 79 */	bl execThrow__Q26PikiAI9ActRescueFv
/* 80239074 00235FB4  48 00 00 08 */	b lbl_8023907C
lbl_80239078:
/* 80239078 00235FB8  38 60 00 01 */	li r3, 1
lbl_8023907C:
/* 8023907C 00235FBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80239080 00235FC0  7C 08 03 A6 */	mtlr r0
/* 80239084 00235FC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80239088 00235FC8  4E 80 00 20 */	blr 

.global initApproach__Q26PikiAI9ActRescueFv
initApproach__Q26PikiAI9ActRescueFv:
/* 8023908C 00235FCC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80239090 00235FD0  7C 08 02 A6 */	mflr r0
/* 80239094 00235FD4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80239098 00235FD8  38 00 00 00 */	li r0, 0
/* 8023909C 00235FDC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802390A0 00235FE0  7C 7F 1B 78 */	mr r31, r3
/* 802390A4 00235FE4  90 03 00 10 */	stw r0, 0x10(r3)
/* 802390A8 00235FE8  38 61 00 08 */	addi r3, r1, 8
/* 802390AC 00235FEC  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 802390B0 00235FF0  81 84 00 00 */	lwz r12, 0(r4)
/* 802390B4 00235FF4  81 8C 00 08 */	lwz r12, 8(r12)
/* 802390B8 00235FF8  7D 89 03 A6 */	mtctr r12
/* 802390BC 00235FFC  4E 80 04 21 */	bctrl 
/* 802390C0 00236000  3C 60 80 4B */	lis r3, __vt__Q26PikiAI9ActionArg@ha
/* 802390C4 00236004  38 00 00 00 */	li r0, 0
/* 802390C8 00236008  38 83 05 30 */	addi r4, r3, __vt__Q26PikiAI9ActionArg@l
/* 802390CC 0023600C  C0 81 00 08 */	lfs f4, 8(r1)
/* 802390D0 00236010  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 802390D4 00236014  3C 60 80 4B */	lis r3, __vt__Q26PikiAI20ApproachPosActionArg@ha
/* 802390D8 00236018  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 802390DC 0023601C  38 63 4E 98 */	addi r3, r3, __vt__Q26PikiAI20ApproachPosActionArg@l
/* 802390E0 00236020  90 81 00 14 */	stw r4, 0x14(r1)
/* 802390E4 00236024  38 81 00 14 */	addi r4, r1, 0x14
/* 802390E8 00236028  C0 22 C1 98 */	lfs f1, lbl_8051A4F8@sda21(r2)
/* 802390EC 0023602C  C0 02 C1 9C */	lfs f0, lbl_8051A4FC@sda21(r2)
/* 802390F0 00236030  90 61 00 14 */	stw r3, 0x14(r1)
/* 802390F4 00236034  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 802390F8 00236038  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 802390FC 0023603C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80239100 00236040  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80239104 00236044  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80239108 00236048  98 01 00 2C */	stb r0, 0x2c(r1)
/* 8023910C 0023604C  98 01 00 2D */	stb r0, 0x2d(r1)
/* 80239110 00236050  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80239114 00236054  81 83 00 00 */	lwz r12, 0(r3)
/* 80239118 00236058  81 8C 00 08 */	lwz r12, 8(r12)
/* 8023911C 0023605C  7D 89 03 A6 */	mtctr r12
/* 80239120 00236060  4E 80 04 21 */	bctrl 
/* 80239124 00236064  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80239128 00236068  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8023912C 0023606C  7C 08 03 A6 */	mtlr r0
/* 80239130 00236070  38 21 00 40 */	addi r1, r1, 0x40
/* 80239134 00236074  4E 80 00 20 */	blr 

.global execApproach__Q26PikiAI9ActRescueFv
execApproach__Q26PikiAI9ActRescueFv:
/* 80239138 00236078  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023913C 0023607C  7C 08 02 A6 */	mflr r0
/* 80239140 00236080  90 01 00 24 */	stw r0, 0x24(r1)
/* 80239144 00236084  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80239148 00236088  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8023914C 0023608C  7C 7E 1B 78 */	mr r30, r3
/* 80239150 00236090  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80239154 00236094  81 83 00 00 */	lwz r12, 0(r3)
/* 80239158 00236098  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 8023915C 0023609C  7D 89 03 A6 */	mtctr r12
/* 80239160 002360A0  4E 80 04 21 */	bctrl 
/* 80239164 002360A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80239168 002360A8  40 82 00 0C */	bne lbl_80239174
/* 8023916C 002360AC  38 60 00 02 */	li r3, 2
/* 80239170 002360B0  48 00 00 70 */	b lbl_802391E0
lbl_80239174:
/* 80239174 002360B4  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80239178 002360B8  4B F0 FD BD */	bl getStateID__Q24Game4PikiFv
/* 8023917C 002360BC  7C 7F 1B 78 */	mr r31, r3
/* 80239180 002360C0  2C 1F 00 05 */	cmpwi r31, 5
/* 80239184 002360C4  41 82 00 30 */	beq lbl_802391B4
/* 80239188 002360C8  2C 1F 00 0A */	cmpwi r31, 0xa
/* 8023918C 002360CC  41 82 00 28 */	beq lbl_802391B4
/* 80239190 002360D0  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80239194 002360D4  81 83 00 00 */	lwz r12, 0(r3)
/* 80239198 002360D8  81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 8023919C 002360DC  7D 89 03 A6 */	mtctr r12
/* 802391A0 002360E0  4E 80 04 21 */	bctrl 
/* 802391A4 002360E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802391A8 002360E8  40 82 00 0C */	bne lbl_802391B4
/* 802391AC 002360EC  38 60 00 00 */	li r3, 0
/* 802391B0 002360F0  48 00 00 30 */	b lbl_802391E0
lbl_802391B4:
/* 802391B4 002360F4  2C 1F 00 05 */	cmpwi r31, 5
/* 802391B8 002360F8  40 82 00 24 */	bne lbl_802391DC
/* 802391BC 002360FC  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 802391C0 00236100  80 1E 00 04 */	lwz r0, 4(r30)
/* 802391C4 00236104  80 63 02 90 */	lwz r3, 0x290(r3)
/* 802391C8 00236108  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802391CC 0023610C  7C 03 00 40 */	cmplw r3, r0
/* 802391D0 00236110  41 82 00 0C */	beq lbl_802391DC
/* 802391D4 00236114  38 60 00 00 */	li r3, 0
/* 802391D8 00236118  48 00 00 08 */	b lbl_802391E0
lbl_802391DC:
/* 802391DC 0023611C  38 60 00 01 */	li r3, 1
lbl_802391E0:
/* 802391E0 00236120  2C 03 00 01 */	cmpwi r3, 1
/* 802391E4 00236124  41 82 00 08 */	beq lbl_802391EC
/* 802391E8 00236128  48 00 00 74 */	b lbl_8023925C
lbl_802391EC:
/* 802391EC 0023612C  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 802391F0 00236130  38 61 00 08 */	addi r3, r1, 8
/* 802391F4 00236134  81 84 00 00 */	lwz r12, 0(r4)
/* 802391F8 00236138  81 8C 00 08 */	lwz r12, 8(r12)
/* 802391FC 0023613C  7D 89 03 A6 */	mtctr r12
/* 80239200 00236140  4E 80 04 21 */	bctrl 
/* 80239204 00236144  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80239208 00236148  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8023920C 0023614C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 80239210 00236150  C0 01 00 08 */	lfs f0, 8(r1)
/* 80239214 00236154  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80239218 00236158  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 8023921C 0023615C  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 80239220 00236160  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 80239224 00236164  81 83 00 00 */	lwz r12, 0(r3)
/* 80239228 00236168  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8023922C 0023616C  7D 89 03 A6 */	mtctr r12
/* 80239230 00236170  4E 80 04 21 */	bctrl 
/* 80239234 00236174  2C 03 00 00 */	cmpwi r3, 0
/* 80239238 00236178  40 82 00 10 */	bne lbl_80239248
/* 8023923C 0023617C  7F C3 F3 78 */	mr r3, r30
/* 80239240 00236180  48 00 00 35 */	bl initGo__Q26PikiAI9ActRescueFv
/* 80239244 00236184  48 00 00 14 */	b lbl_80239258
lbl_80239248:
/* 80239248 00236188  2C 03 00 02 */	cmpwi r3, 2
/* 8023924C 0023618C  40 82 00 0C */	bne lbl_80239258
/* 80239250 00236190  38 60 00 02 */	li r3, 2
/* 80239254 00236194  48 00 00 08 */	b lbl_8023925C
lbl_80239258:
/* 80239258 00236198  38 60 00 01 */	li r3, 1
lbl_8023925C:
/* 8023925C 0023619C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80239260 002361A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80239264 002361A4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80239268 002361A8  7C 08 03 A6 */	mtlr r0
/* 8023926C 002361AC  38 21 00 20 */	addi r1, r1, 0x20
/* 80239270 002361B0  4E 80 00 20 */	blr 

.global initGo__Q26PikiAI9ActRescueFv
initGo__Q26PikiAI9ActRescueFv:
/* 80239274 002361B4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80239278 002361B8  7C 08 02 A6 */	mflr r0
/* 8023927C 002361BC  3C 80 80 4C */	lis r4, __vt__10WPFindCond@ha
/* 80239280 002361C0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80239284 002361C4  38 00 00 01 */	li r0, 1
/* 80239288 002361C8  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8023928C 002361CC  7C 7F 1B 78 */	mr r31, r3
/* 80239290 002361D0  3C 60 80 4B */	lis r3, "__vt__27Condition<Q24Game8WayPoint>"@ha
/* 80239294 002361D4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80239298 002361D8  38 03 1F 64 */	addi r0, r3, "__vt__27Condition<Q24Game8WayPoint>"@l
/* 8023929C 002361DC  3C 60 80 4B */	lis r3, __vt__Q24Game11WPCondition@ha
/* 802392A0 002361E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 802392A4 002361E4  38 03 1F 58 */	addi r0, r3, __vt__Q24Game11WPCondition@l
/* 802392A8 002361E8  38 61 00 10 */	addi r3, r1, 0x10
/* 802392AC 002361EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802392B0 002361F0  38 04 15 38 */	addi r0, r4, __vt__10WPFindCond@l
/* 802392B4 002361F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 802392B8 002361F8  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 802392BC 002361FC  81 84 00 00 */	lwz r12, 0(r4)
/* 802392C0 00236200  81 8C 00 08 */	lwz r12, 8(r12)
/* 802392C4 00236204  7D 89 03 A6 */	mtctr r12
/* 802392C8 00236208  4E 80 04 21 */	bctrl 
/* 802392CC 0023620C  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 802392D0 00236210  38 A1 00 0C */	addi r5, r1, 0xc
/* 802392D4 00236214  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 802392D8 00236218  38 00 00 00 */	li r0, 0
/* 802392DC 0023621C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 802392E0 00236220  38 81 00 38 */	addi r4, r1, 0x38
/* 802392E4 00236224  C0 02 C1 98 */	lfs f0, lbl_8051A4F8@sda21(r2)
/* 802392E8 00236228  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 802392EC 0023622C  80 6D 93 08 */	lwz r3, mapMgr__4Game@sda21(r13)
/* 802392F0 00236230  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 802392F4 00236234  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 802392F8 00236238  90 A1 00 44 */	stw r5, 0x44(r1)
/* 802392FC 0023623C  98 01 00 48 */	stb r0, 0x48(r1)
/* 80239300 00236240  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80239304 00236244  80 63 00 08 */	lwz r3, 8(r3)
/* 80239308 00236248  4B F3 9C BD */	bl getNearestWayPoint__Q24Game8RouteMgrFRQ24Game11WPSearchArg
/* 8023930C 0023624C  90 7F 00 20 */	stw r3, 0x20(r31)
/* 80239310 00236250  80 BF 00 20 */	lwz r5, 0x20(r31)
/* 80239314 00236254  28 05 00 00 */	cmplwi r5, 0
/* 80239318 00236258  41 82 00 90 */	beq lbl_802393A8
/* 8023931C 0023625C  3C 80 80 4B */	lis r4, __vt__Q26PikiAI9ActionArg@ha
/* 80239320 00236260  3C 60 80 4B */	lis r3, __vt__Q26PikiAI20ApproachPosActionArg@ha
/* 80239324 00236264  38 04 05 30 */	addi r0, r4, __vt__Q26PikiAI9ActionArg@l
/* 80239328 00236268  C0 22 C1 A0 */	lfs f1, lbl_8051A500@sda21(r2)
/* 8023932C 0023626C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80239330 00236270  38 63 4E 98 */	addi r3, r3, __vt__Q26PikiAI20ApproachPosActionArg@l
/* 80239334 00236274  C0 02 C1 9C */	lfs f0, lbl_8051A4FC@sda21(r2)
/* 80239338 00236278  38 00 00 00 */	li r0, 0
/* 8023933C 0023627C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80239340 00236280  38 81 00 1C */	addi r4, r1, 0x1c
/* 80239344 00236284  C0 45 00 4C */	lfs f2, 0x4c(r5)
/* 80239348 00236288  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8023934C 0023628C  C0 45 00 50 */	lfs f2, 0x50(r5)
/* 80239350 00236290  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80239354 00236294  C0 45 00 54 */	lfs f2, 0x54(r5)
/* 80239358 00236298  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8023935C 0023629C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80239360 002362A0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80239364 002362A4  98 01 00 34 */	stb r0, 0x34(r1)
/* 80239368 002362A8  98 01 00 35 */	stb r0, 0x35(r1)
/* 8023936C 002362AC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80239370 002362B0  81 83 00 00 */	lwz r12, 0(r3)
/* 80239374 002362B4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80239378 002362B8  7D 89 03 A6 */	mtctr r12
/* 8023937C 002362BC  4E 80 04 21 */	bctrl 
/* 80239380 002362C0  80 1F 00 04 */	lwz r0, 4(r31)
/* 80239384 002362C4  38 C1 00 08 */	addi r6, r1, 8
/* 80239388 002362C8  38 A0 00 05 */	li r5, 5
/* 8023938C 002362CC  90 01 00 08 */	stw r0, 8(r1)
/* 80239390 002362D0  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 80239394 002362D4  80 64 02 8C */	lwz r3, 0x28c(r4)
/* 80239398 002362D8  81 83 00 00 */	lwz r12, 0(r3)
/* 8023939C 002362DC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802393A0 002362E0  7D 89 03 A6 */	mtctr r12
/* 802393A4 002362E4  4E 80 04 21 */	bctrl 
lbl_802393A8:
/* 802393A8 002362E8  38 00 00 64 */	li r0, 0x64
/* 802393AC 002362EC  98 1F 00 24 */	stb r0, 0x24(r31)
/* 802393B0 002362F0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802393B4 002362F4  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 802393B8 002362F8  7C 08 03 A6 */	mtlr r0
/* 802393BC 002362FC  38 21 00 60 */	addi r1, r1, 0x60
/* 802393C0 00236300  4E 80 00 20 */	blr 

.global execGo__Q26PikiAI9ActRescueFv
execGo__Q26PikiAI9ActRescueFv:
/* 802393C4 00236304  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802393C8 00236308  7C 08 02 A6 */	mflr r0
/* 802393CC 0023630C  3C 80 80 48 */	lis r4, lbl_80483CD0@ha
/* 802393D0 00236310  90 01 00 34 */	stw r0, 0x34(r1)
/* 802393D4 00236314  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802393D8 00236318  3B E4 3C D0 */	addi r31, r4, lbl_80483CD0@l
/* 802393DC 0023631C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802393E0 00236320  7C 7E 1B 78 */	mr r30, r3
/* 802393E4 00236324  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802393E8 00236328  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 802393EC 0023632C  81 83 00 00 */	lwz r12, 0(r3)
/* 802393F0 00236330  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 802393F4 00236334  7D 89 03 A6 */	mtctr r12
/* 802393F8 00236338  4E 80 04 21 */	bctrl 
/* 802393FC 0023633C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80239400 00236340  40 82 00 0C */	bne lbl_8023940C
/* 80239404 00236344  38 60 00 02 */	li r3, 2
/* 80239408 00236348  48 00 00 70 */	b lbl_80239478
lbl_8023940C:
/* 8023940C 0023634C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80239410 00236350  4B F0 FB 25 */	bl getStateID__Q24Game4PikiFv
/* 80239414 00236354  7C 7D 1B 78 */	mr r29, r3
/* 80239418 00236358  2C 1D 00 05 */	cmpwi r29, 5
/* 8023941C 0023635C  41 82 00 30 */	beq lbl_8023944C
/* 80239420 00236360  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80239424 00236364  41 82 00 28 */	beq lbl_8023944C
/* 80239428 00236368  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8023942C 0023636C  81 83 00 00 */	lwz r12, 0(r3)
/* 80239430 00236370  81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 80239434 00236374  7D 89 03 A6 */	mtctr r12
/* 80239438 00236378  4E 80 04 21 */	bctrl 
/* 8023943C 0023637C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80239440 00236380  40 82 00 0C */	bne lbl_8023944C
/* 80239444 00236384  38 60 00 00 */	li r3, 0
/* 80239448 00236388  48 00 00 30 */	b lbl_80239478
lbl_8023944C:
/* 8023944C 0023638C  2C 1D 00 05 */	cmpwi r29, 5
/* 80239450 00236390  40 82 00 24 */	bne lbl_80239474
/* 80239454 00236394  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80239458 00236398  80 1E 00 04 */	lwz r0, 4(r30)
/* 8023945C 0023639C  80 63 02 90 */	lwz r3, 0x290(r3)
/* 80239460 002363A0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80239464 002363A4  7C 03 00 40 */	cmplw r3, r0
/* 80239468 002363A8  41 82 00 0C */	beq lbl_80239474
/* 8023946C 002363AC  38 60 00 00 */	li r3, 0
/* 80239470 002363B0  48 00 00 08 */	b lbl_80239478
lbl_80239474:
/* 80239474 002363B4  38 60 00 01 */	li r3, 1
lbl_80239478:
/* 80239478 002363B8  2C 03 00 01 */	cmpwi r3, 1
/* 8023947C 002363BC  41 82 00 08 */	beq lbl_80239484
/* 80239480 002363C0  48 00 00 E8 */	b lbl_80239568
lbl_80239484:
/* 80239484 002363C4  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 80239488 002363C8  28 00 00 00 */	cmplwi r0, 0
/* 8023948C 002363CC  40 82 00 0C */	bne lbl_80239498
/* 80239490 002363D0  38 60 00 02 */	li r3, 2
/* 80239494 002363D4  48 00 00 D4 */	b lbl_80239568
lbl_80239498:
/* 80239498 002363D8  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8023949C 002363DC  81 83 00 00 */	lwz r12, 0(r3)
/* 802394A0 002363E0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802394A4 002363E4  7D 89 03 A6 */	mtctr r12
/* 802394A8 002363E8  4E 80 04 21 */	bctrl 
/* 802394AC 002363EC  88 9E 00 24 */	lbz r4, 0x24(r30)
/* 802394B0 002363F0  38 84 FF FF */	addi r4, r4, -1
/* 802394B4 002363F4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802394B8 002363F8  98 9E 00 24 */	stb r4, 0x24(r30)
/* 802394BC 002363FC  40 82 00 08 */	bne lbl_802394C4
/* 802394C0 00236400  38 60 00 00 */	li r3, 0
lbl_802394C4:
/* 802394C4 00236404  2C 03 00 00 */	cmpwi r3, 0
/* 802394C8 00236408  40 82 00 10 */	bne lbl_802394D8
/* 802394CC 0023640C  7F C3 F3 78 */	mr r3, r30
/* 802394D0 00236410  48 00 00 B5 */	bl initThrow__Q26PikiAI9ActRescueFv
/* 802394D4 00236414  48 00 00 14 */	b lbl_802394E8
lbl_802394D8:
/* 802394D8 00236418  2C 03 00 02 */	cmpwi r3, 2
/* 802394DC 0023641C  40 82 00 0C */	bne lbl_802394E8
/* 802394E0 00236420  38 60 00 02 */	li r3, 2
/* 802394E4 00236424  48 00 00 84 */	b lbl_80239568
lbl_802394E8:
/* 802394E8 00236428  80 7E 00 04 */	lwz r3, 4(r30)
/* 802394EC 0023642C  38 9F 00 28 */	addi r4, r31, 0x28
/* 802394F0 00236430  80 63 01 74 */	lwz r3, 0x174(r3)
/* 802394F4 00236434  48 20 5A F1 */	bl getJoint__Q28SysShape5ModelFPc
/* 802394F8 00236438  7C 7D 1B 79 */	or. r29, r3, r3
/* 802394FC 0023643C  40 82 00 18 */	bne lbl_80239514
/* 80239500 00236440  38 7F 00 0C */	addi r3, r31, 0xc
/* 80239504 00236444  38 BF 00 1C */	addi r5, r31, 0x1c
/* 80239508 00236448  38 80 00 DC */	li r4, 0xdc
/* 8023950C 0023644C  4C C6 31 82 */	crclr 6
/* 80239510 00236450  4B DF 11 31 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80239514:
/* 80239514 00236454  C0 02 C1 A8 */	lfs f0, lbl_8051A508@sda21(r2)
/* 80239518 00236458  7F A3 EB 78 */	mr r3, r29
/* 8023951C 0023645C  C0 22 C1 A4 */	lfs f1, lbl_8051A504@sda21(r2)
/* 80239520 00236460  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80239524 00236464  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80239528 00236468  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8023952C 0023646C  48 1F 03 75 */	bl getWorldMatrix__Q28SysShape5JointFv
/* 80239530 00236470  38 81 00 14 */	addi r4, r1, 0x14
/* 80239534 00236474  38 A1 00 08 */	addi r5, r1, 8
/* 80239538 00236478  4B EB 16 A1 */	bl PSMTXMultVec
/* 8023953C 0023647C  C0 41 00 08 */	lfs f2, 8(r1)
/* 80239540 00236480  38 81 00 14 */	addi r4, r1, 0x14
/* 80239544 00236484  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80239548 00236488  38 A0 00 00 */	li r5, 0
/* 8023954C 0023648C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80239550 00236490  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80239554 00236494  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80239558 00236498  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8023955C 0023649C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80239560 002364A0  4B F0 1C 49 */	bl "setPosition__Q24Game8CreatureFR10Vector3<f>b"
/* 80239564 002364A4  38 60 00 01 */	li r3, 1
lbl_80239568:
/* 80239568 002364A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8023956C 002364AC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80239570 002364B0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80239574 002364B4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80239578 002364B8  7C 08 03 A6 */	mtlr r0
/* 8023957C 002364BC  38 21 00 30 */	addi r1, r1, 0x30
/* 80239580 002364C0  4E 80 00 20 */	blr 

.global initThrow__Q26PikiAI9ActRescueFv
initThrow__Q26PikiAI9ActRescueFv:
/* 80239584 002364C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80239588 002364C8  7C 08 02 A6 */	mflr r0
/* 8023958C 002364CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80239590 002364D0  38 00 00 02 */	li r0, 2
/* 80239594 002364D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80239598 002364D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8023959C 002364DC  90 03 00 10 */	stw r0, 0x10(r3)
/* 802395A0 002364E0  7F E6 FB 78 */	mr r6, r31
/* 802395A4 002364E4  41 82 00 08 */	beq lbl_802395AC
/* 802395A8 002364E8  80 DF 00 0C */	lwz r6, 0xc(r31)
lbl_802395AC:
/* 802395AC 002364EC  80 7F 00 04 */	lwz r3, 4(r31)
/* 802395B0 002364F0  38 80 00 21 */	li r4, 0x21
/* 802395B4 002364F4  38 A0 00 21 */	li r5, 0x21
/* 802395B8 002364F8  38 E0 00 00 */	li r7, 0
/* 802395BC 002364FC  81 83 00 00 */	lwz r12, 0(r3)
/* 802395C0 00236500  81 8C 02 08 */	lwz r12, 0x208(r12)
/* 802395C4 00236504  7D 89 03 A6 */	mtctr r12
/* 802395C8 00236508  4E 80 04 21 */	bctrl 
/* 802395CC 0023650C  38 00 00 00 */	li r0, 0
/* 802395D0 00236510  98 1F 00 14 */	stb r0, 0x14(r31)
/* 802395D4 00236514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802395D8 00236518  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802395DC 0023651C  7C 08 03 A6 */	mtlr r0
/* 802395E0 00236520  38 21 00 10 */	addi r1, r1, 0x10
/* 802395E4 00236524  4E 80 00 20 */	blr 

.global execThrow__Q26PikiAI9ActRescueFv
execThrow__Q26PikiAI9ActRescueFv:
/* 802395E8 00236528  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802395EC 0023652C  7C 08 02 A6 */	mflr r0
/* 802395F0 00236530  90 01 00 84 */	stw r0, 0x84(r1)
/* 802395F4 00236534  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 802395F8 00236538  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 802395FC 0023653C  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80239600 00236540  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 80239604 00236544  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80239608 00236548  F3 A1 00 58 */	psq_st f29, 88(r1), 0, qr0
/* 8023960C 0023654C  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 80239610 00236550  F3 81 00 48 */	psq_st f28, 72(r1), 0, qr0
/* 80239614 00236554  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80239618 00236558  7C 7F 1B 78 */	mr r31, r3
/* 8023961C 0023655C  38 80 00 21 */	li r4, 0x21
/* 80239620 00236560  80 63 00 04 */	lwz r3, 4(r3)
/* 80239624 00236564  4B F0 39 09 */	bl assertMotion__Q24Game8FakePikiFi
/* 80239628 00236568  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8023962C 0023656C  40 82 00 0C */	bne lbl_80239638
/* 80239630 00236570  38 60 00 02 */	li r3, 2
/* 80239634 00236574  48 00 01 F8 */	b lbl_8023982C
lbl_80239638:
/* 80239638 00236578  88 7F 00 14 */	lbz r3, 0x14(r31)
/* 8023963C 0023657C  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80239640 00236580  41 82 01 D8 */	beq lbl_80239818
/* 80239644 00236584  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80239648 00236588  38 80 00 01 */	li r4, 1
/* 8023964C 0023658C  38 A0 00 00 */	li r5, 0
/* 80239650 00236590  80 63 02 94 */	lwz r3, 0x294(r3)
/* 80239654 00236594  4B F5 D9 41 */	bl start__Q26PikiAI5BrainFiPQ26PikiAI9ActionArg
/* 80239658 00236598  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 8023965C 0023659C  38 A0 00 06 */	li r5, 6
/* 80239660 002365A0  38 C0 00 00 */	li r6, 0
/* 80239664 002365A4  80 64 02 8C */	lwz r3, 0x28c(r4)
/* 80239668 002365A8  81 83 00 00 */	lwz r12, 0(r3)
/* 8023966C 002365AC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80239670 002365B0  7D 89 03 A6 */	mtctr r12
/* 80239674 002365B4  4E 80 04 21 */	bctrl 
/* 80239678 002365B8  38 00 00 00 */	li r0, 0
/* 8023967C 002365BC  38 61 00 08 */	addi r3, r1, 8
/* 80239680 002365C0  98 1F 00 14 */	stb r0, 0x14(r31)
/* 80239684 002365C4  80 9F 00 04 */	lwz r4, 4(r31)
/* 80239688 002365C8  81 84 00 00 */	lwz r12, 0(r4)
/* 8023968C 002365CC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80239690 002365D0  7D 89 03 A6 */	mtctr r12
/* 80239694 002365D4  4E 80 04 21 */	bctrl 
/* 80239698 002365D8  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8023969C 002365DC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 802396A0 002365E0  C0 43 00 54 */	lfs f2, 0x54(r3)
/* 802396A4 002365E4  C0 23 00 4C */	lfs f1, 0x4c(r3)
/* 802396A8 002365E8  EC 42 00 28 */	fsubs f2, f2, f0
/* 802396AC 002365EC  C0 01 00 08 */	lfs f0, 8(r1)
/* 802396B0 002365F0  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 802396B4 002365F4  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 802396B8 002365F8  EC 21 00 28 */	fsubs f1, f1, f0
/* 802396BC 002365FC  EC A2 00 B2 */	fmuls f5, f2, f2
/* 802396C0 00236600  C0 02 C1 A8 */	lfs f0, lbl_8051A508@sda21(r2)
/* 802396C4 00236604  EF A4 18 28 */	fsubs f29, f4, f3
/* 802396C8 00236608  EF C1 28 7A */	fmadds f30, f1, f1, f5
/* 802396CC 0023660C  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 802396D0 00236610  40 81 00 14 */	ble lbl_802396E4
/* 802396D4 00236614  40 81 00 14 */	ble lbl_802396E8
/* 802396D8 00236618  FC 00 F0 34 */	frsqrte f0, f30
/* 802396DC 0023661C  EF C0 07 B2 */	fmuls f30, f0, f30
/* 802396E0 00236620  48 00 00 08 */	b lbl_802396E8
lbl_802396E4:
/* 802396E4 00236624  FF C0 00 90 */	fmr f30, f0
lbl_802396E8:
/* 802396E8 00236628  3C 60 80 51 */	lis r3, atanTable___5JMath@ha
/* 802396EC 0023662C  38 63 D1 E0 */	addi r3, r3, atanTable___5JMath@l
/* 802396F0 00236630  4B DF BA 19 */	bl "atan2___Q25JMath18TAtanTable<1024,f>CFff"
/* 802396F4 00236634  FF E0 08 90 */	fmr f31, f1
/* 802396F8 00236638  48 1D 84 D9 */	bl roundAng__Ff
/* 802396FC 0023663C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80239700 00236640  FF A0 EA 10 */	fabs f29, f29
/* 80239704 00236644  C3 82 C1 AC */	lfs f28, lbl_8051A50C@sda21(r2)
/* 80239708 00236648  D0 23 01 FC */	stfs f1, 0x1fc(r3)
/* 8023970C 0023664C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80239710 00236650  4B F0 FE D5 */	bl getThrowHeight__Q24Game4PikiFv
/* 80239714 00236654  FC 40 E8 18 */	frsp f2, f29
/* 80239718 00236658  80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 8023971C 0023665C  C0 02 C1 B0 */	lfs f0, lbl_8051A510@sda21(r2)
/* 80239720 00236660  88 05 02 B8 */	lbz r0, 0x2b8(r5)
/* 80239724 00236664  EC 21 10 2A */	fadds f1, f1, f2
/* 80239728 00236668  2C 00 00 03 */	cmpwi r0, 3
/* 8023972C 0023666C  EC 40 08 2A */	fadds f2, f0, f1
/* 80239730 00236670  40 82 00 0C */	bne lbl_8023973C
/* 80239734 00236674  C0 02 C1 AC */	lfs f0, lbl_8051A50C@sda21(r2)
/* 80239738 00236678  EF 9C 00 32 */	fmuls f28, f28, f0
lbl_8023973C:
/* 8023973C 0023667C  C0 22 C1 B4 */	lfs f1, lbl_8051A514@sda21(r2)
/* 80239740 00236680  EC 42 E0 24 */	fdivs f2, f2, f28
/* 80239744 00236684  80 6D 93 F0 */	lwz r3, _aiConstants__4Game@sda21(r13)
/* 80239748 00236688  C0 02 C1 A8 */	lfs f0, lbl_8051A508@sda21(r2)
/* 8023974C 0023668C  C0 82 C1 AC */	lfs f4, lbl_8051A50C@sda21(r2)
/* 80239750 00236690  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 80239754 00236694  EC 21 07 32 */	fmuls f1, f1, f28
/* 80239758 00236698  EC 64 00 F2 */	fmuls f3, f4, f3
/* 8023975C 0023669C  FC 80 F8 90 */	fmr f4, f31
/* 80239760 002366A0  EC BE 08 24 */	fdivs f5, f30, f1
/* 80239764 002366A4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80239768 002366A8  EC 7C 10 FA */	fmadds f3, f28, f3, f2
/* 8023976C 002366AC  40 80 00 08 */	bge lbl_80239774
/* 80239770 002366B0  FC 80 F8 50 */	fneg f4, f31
lbl_80239774:
/* 80239774 002366B4  C0 42 C1 B8 */	lfs f2, lbl_8051A518@sda21(r2)
/* 80239778 002366B8  3C 60 80 50 */	lis r3, sincosTable___5JMath@ha
/* 8023977C 002366BC  C0 02 C1 A8 */	lfs f0, lbl_8051A508@sda21(r2)
/* 80239780 002366C0  38 83 71 A0 */	addi r4, r3, sincosTable___5JMath@l
/* 80239784 002366C4  EC 24 00 B2 */	fmuls f1, f4, f2
/* 80239788 002366C8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8023978C 002366CC  FC 00 08 1E */	fctiwz f0, f1
/* 80239790 002366D0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80239794 002366D4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80239798 002366D8  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 8023979C 002366DC  7C 64 02 14 */	add r3, r4, r0
/* 802397A0 002366E0  C0 03 00 04 */	lfs f0, 4(r3)
/* 802397A4 002366E4  EC 25 00 32 */	fmuls f1, f5, f0
/* 802397A8 002366E8  40 80 00 28 */	bge lbl_802397D0
/* 802397AC 002366EC  C0 02 C1 BC */	lfs f0, lbl_8051A51C@sda21(r2)
/* 802397B0 002366F0  EC 1F 00 32 */	fmuls f0, f31, f0
/* 802397B4 002366F4  FC 00 00 1E */	fctiwz f0, f0
/* 802397B8 002366F8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 802397BC 002366FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802397C0 00236700  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 802397C4 00236704  7C 04 04 2E */	lfsx f0, r4, r0
/* 802397C8 00236708  FC 00 00 50 */	fneg f0, f0
/* 802397CC 0023670C  48 00 00 1C */	b lbl_802397E8
lbl_802397D0:
/* 802397D0 00236710  EC 1F 00 B2 */	fmuls f0, f31, f2
/* 802397D4 00236714  FC 00 00 1E */	fctiwz f0, f0
/* 802397D8 00236718  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 802397DC 0023671C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802397E0 00236720  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 802397E4 00236724  7C 04 04 2E */	lfsx f0, r4, r0
lbl_802397E8:
/* 802397E8 00236728  EC 05 00 32 */	fmuls f0, f5, f0
/* 802397EC 0023672C  D0 05 02 00 */	stfs f0, 0x200(r5)
/* 802397F0 00236730  D0 65 02 04 */	stfs f3, 0x204(r5)
/* 802397F4 00236734  D0 25 02 08 */	stfs f1, 0x208(r5)
/* 802397F8 00236738  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 802397FC 0023673C  C0 03 02 00 */	lfs f0, 0x200(r3)
/* 80239800 00236740  D0 03 01 E4 */	stfs f0, 0x1e4(r3)
/* 80239804 00236744  C0 03 02 04 */	lfs f0, 0x204(r3)
/* 80239808 00236748  D0 03 01 E8 */	stfs f0, 0x1e8(r3)
/* 8023980C 0023674C  C0 03 02 08 */	lfs f0, 0x208(r3)
/* 80239810 00236750  D0 03 01 EC */	stfs f0, 0x1ec(r3)
/* 80239814 00236754  48 00 00 14 */	b lbl_80239828
lbl_80239818:
/* 80239818 00236758  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8023981C 0023675C  41 82 00 0C */	beq lbl_80239828
/* 80239820 00236760  38 60 00 00 */	li r3, 0
/* 80239824 00236764  48 00 00 08 */	b lbl_8023982C
lbl_80239828:
/* 80239828 00236768  38 60 00 01 */	li r3, 1
lbl_8023982C:
/* 8023982C 0023676C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 80239830 00236770  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80239834 00236774  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 80239838 00236778  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8023983C 0023677C  E3 A1 00 58 */	psq_l f29, 88(r1), 0, qr0
/* 80239840 00236780  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80239844 00236784  E3 81 00 48 */	psq_l f28, 72(r1), 0, qr0
/* 80239848 00236788  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 8023984C 0023678C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80239850 00236790  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80239854 00236794  7C 08 03 A6 */	mtlr r0
/* 80239858 00236798  38 21 00 80 */	addi r1, r1, 0x80
/* 8023985C 0023679C  4E 80 00 20 */	blr 

.global onKeyEvent__Q26PikiAI9ActRescueFRCQ28SysShape8KeyEvent
onKeyEvent__Q26PikiAI9ActRescueFRCQ28SysShape8KeyEvent:
/* 80239860 002367A0  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80239864 002367A4  28 00 00 02 */	cmplwi r0, 2
/* 80239868 002367A8  40 82 00 14 */	bne lbl_8023987C
/* 8023986C 002367AC  88 03 00 14 */	lbz r0, 0x14(r3)
/* 80239870 002367B0  60 00 00 01 */	ori r0, r0, 1
/* 80239874 002367B4  98 03 00 14 */	stb r0, 0x14(r3)
/* 80239878 002367B8  4E 80 00 20 */	blr 
lbl_8023987C:
/* 8023987C 002367BC  88 03 00 14 */	lbz r0, 0x14(r3)
/* 80239880 002367C0  60 00 00 02 */	ori r0, r0, 2
/* 80239884 002367C4  98 03 00 14 */	stb r0, 0x14(r3)
/* 80239888 002367C8  4E 80 00 20 */	blr 

.global emotion_success__Q26PikiAI9ActRescueFv
emotion_success__Q26PikiAI9ActRescueFv:
/* 8023988C 002367CC  4E 80 00 20 */	blr 

.global doDirectDraw__Q26PikiAI9ActRescueFR8Graphics
doDirectDraw__Q26PikiAI9ActRescueFR8Graphics:
/* 80239890 002367D0  4E 80 00 20 */	blr 

.global cleanup__Q26PikiAI9ActRescueFv
cleanup__Q26PikiAI9ActRescueFv:
/* 80239894 002367D4  4E 80 00 20 */	blr 

.global collisionCallback__Q26PikiAI9ActRescueFPQ24Game4PikiRQ24Game9CollEvent
collisionCallback__Q26PikiAI9ActRescueFPQ24Game4PikiRQ24Game9CollEvent:
/* 80239898 002367D8  4E 80 00 20 */	blr 

.global satisfy__10WPFindCondFPQ24Game8WayPoint
satisfy__10WPFindCondFPQ24Game8WayPoint:
/* 8023989C 002367DC  88 84 00 34 */	lbz r4, 0x34(r4)
/* 802398A0 002367E0  38 60 00 00 */	li r3, 0
/* 802398A4 002367E4  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 802398A8 002367E8  4C 82 00 20 */	bnelr 
/* 802398AC 002367EC  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 802398B0 002367F0  4C 82 00 20 */	bnelr 
/* 802398B4 002367F4  38 60 00 01 */	li r3, 1
/* 802398B8 002367F8  4E 80 00 20 */	blr 

.global getNextAIType__Q26PikiAI9ActRescueFv
getNextAIType__Q26PikiAI9ActRescueFv:
/* 802398BC 002367FC  38 60 00 01 */	li r3, 1
/* 802398C0 00236800  4E 80 00 20 */	blr 

.global "@40@4@onKeyEvent__Q26PikiAI9ActRescueFRCQ28SysShape8KeyEvent"
"@40@4@onKeyEvent__Q26PikiAI9ActRescueFRCQ28SysShape8KeyEvent":
/* 802398C4 00236804  39 60 00 04 */	li r11, 4
/* 802398C8 00236808  7D 63 58 2E */	lwzx r11, r3, r11
/* 802398CC 0023680C  7C 63 5A 14 */	add r3, r3, r11
/* 802398D0 00236810  38 63 FF D8 */	addi r3, r3, -40
/* 802398D4 00236814  4B FF FF 8C */	b onKeyEvent__Q26PikiAI9ActRescueFRCQ28SysShape8KeyEvent
