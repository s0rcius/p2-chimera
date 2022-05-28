.include "macros.inc"
.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 0x8
.global lbl_804A7E60
lbl_804A7E60:
	.asciz "  Game Name ... %c%c%c%c\n"
	.skip 2
	.asciz "  Company ..... %c%c\n"
	.skip 2
	.asciz "  Disk # ...... %d\n"
	.asciz "  Game ver .... %d\n"
	.asciz "  Streaming ... %s\n"

.section .sdata, "wa"  # 0x80514680 - 0x80514D80
.balign 0x8
.global lbl_80514950
lbl_80514950:
	.asciz "\n"
	.skip 2
.global lbl_80514954
lbl_80514954:
	.asciz "OFF"
.global lbl_80514958
lbl_80514958:
	.asciz "ON"
	.skip 1

.section .sbss # 0x80514D80 - 0x80516360
.balign 0x8
.global status
status:
	.skip 0x4
.global bb2
bb2:
	.skip 0x4
.global idTmp
idTmp:
	.skip 0x8

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global cb
cb:
/* 800DF914 000DC854  7C 08 02 A6 */	mflr r0
/* 800DF918 000DC858  2C 03 00 00 */	cmpwi r3, 0
/* 800DF91C 000DC85C  90 01 00 04 */	stw r0, 4(r1)
/* 800DF920 000DC860  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800DF924 000DC864  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800DF928 000DC868  3B E4 00 00 */	addi r31, r4, 0
/* 800DF92C 000DC86C  40 81 00 7C */	ble lbl_800DF9A8
/* 800DF930 000DC870  80 0D 8E 80 */	lwz r0, status@sda21(r13)
/* 800DF934 000DC874  2C 00 00 01 */	cmpwi r0, 1
/* 800DF938 000DC878  41 82 00 3C */	beq lbl_800DF974
/* 800DF93C 000DC87C  40 80 00 9C */	bge lbl_800DF9D8
/* 800DF940 000DC880  2C 00 00 00 */	cmpwi r0, 0
/* 800DF944 000DC884  40 80 00 08 */	bge lbl_800DF94C
/* 800DF948 000DC888  48 00 00 90 */	b lbl_800DF9D8
lbl_800DF94C:
/* 800DF94C 000DC88C  38 00 00 01 */	li r0, 1
/* 800DF950 000DC890  80 8D 8E 84 */	lwz r4, bb2@sda21(r13)
/* 800DF954 000DC894  3C 60 80 0E */	lis r3, cb@ha
/* 800DF958 000DC898  90 0D 8E 80 */	stw r0, status@sda21(r13)
/* 800DF95C 000DC89C  38 E3 F9 14 */	addi r7, r3, cb@l
/* 800DF960 000DC8A0  38 7F 00 00 */	addi r3, r31, 0
/* 800DF964 000DC8A4  38 A0 00 20 */	li r5, 0x20
/* 800DF968 000DC8A8  38 C0 04 20 */	li r6, 0x420
/* 800DF96C 000DC8AC  4B FF F0 85 */	bl DVDReadAbsAsyncForBS
/* 800DF970 000DC8B0  48 00 00 68 */	b lbl_800DF9D8
lbl_800DF974:
/* 800DF974 000DC8B4  38 00 00 02 */	li r0, 2
/* 800DF978 000DC8B8  80 CD 8E 84 */	lwz r6, bb2@sda21(r13)
/* 800DF97C 000DC8BC  90 0D 8E 80 */	stw r0, status@sda21(r13)
/* 800DF980 000DC8C0  3C 60 80 0E */	lis r3, cb@ha
/* 800DF984 000DC8C4  38 E3 F9 14 */	addi r7, r3, cb@l
/* 800DF988 000DC8C8  80 A6 00 08 */	lwz r5, 8(r6)
/* 800DF98C 000DC8CC  7F E3 FB 78 */	mr r3, r31
/* 800DF990 000DC8D0  80 86 00 10 */	lwz r4, 0x10(r6)
/* 800DF994 000DC8D4  38 05 00 1F */	addi r0, r5, 0x1f
/* 800DF998 000DC8D8  80 C6 00 04 */	lwz r6, 4(r6)
/* 800DF99C 000DC8DC  54 05 00 34 */	rlwinm r5, r0, 0, 0, 0x1a
/* 800DF9A0 000DC8E0  4B FF F0 51 */	bl DVDReadAbsAsyncForBS
/* 800DF9A4 000DC8E4  48 00 00 34 */	b lbl_800DF9D8
lbl_800DF9A8:
/* 800DF9A8 000DC8E8  2C 03 FF FF */	cmpwi r3, -1
/* 800DF9AC 000DC8EC  41 82 00 2C */	beq lbl_800DF9D8
/* 800DF9B0 000DC8F0  2C 03 FF FC */	cmpwi r3, -4
/* 800DF9B4 000DC8F4  40 82 00 24 */	bne lbl_800DF9D8
/* 800DF9B8 000DC8F8  38 00 00 00 */	li r0, 0
/* 800DF9BC 000DC8FC  90 0D 8E 80 */	stw r0, status@sda21(r13)
/* 800DF9C0 000DC900  4B FF F3 61 */	bl DVDReset
/* 800DF9C4 000DC904  3C 60 80 0E */	lis r3, cb@ha
/* 800DF9C8 000DC908  80 8D 8E 88 */	lwz r4, idTmp@sda21(r13)
/* 800DF9CC 000DC90C  38 A3 F9 14 */	addi r5, r3, cb@l
/* 800DF9D0 000DC910  38 7F 00 00 */	addi r3, r31, 0
/* 800DF9D4 000DC914  4B FF F0 ED */	bl DVDReadDiskID
lbl_800DF9D8:
/* 800DF9D8 000DC918  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800DF9DC 000DC91C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800DF9E0 000DC920  38 21 00 18 */	addi r1, r1, 0x18
/* 800DF9E4 000DC924  7C 08 03 A6 */	mtlr r0
/* 800DF9E8 000DC928  4E 80 00 20 */	blr 

.global __fstLoad
__fstLoad:
/* 800DF9EC 000DC92C  7C 08 02 A6 */	mflr r0
/* 800DF9F0 000DC930  3C 60 80 4A */	lis r3, lbl_804A7E60@ha
/* 800DF9F4 000DC934  90 01 00 04 */	stw r0, 4(r1)
/* 800DF9F8 000DC938  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800DF9FC 000DC93C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 800DFA00 000DC940  3B E3 7E 60 */	addi r31, r3, lbl_804A7E60@l
/* 800DFA04 000DC944  93 C1 00 58 */	stw r30, 0x58(r1)
/* 800DFA08 000DC948  93 A1 00 54 */	stw r29, 0x54(r1)
/* 800DFA0C 000DC94C  48 00 CA 19 */	bl OSGetArenaHi
/* 800DFA10 000DC950  3C 60 80 4F */	lis r3, bb2Buf@ha
/* 800DFA14 000DC954  38 63 5E B8 */	addi r3, r3, bb2Buf@l
/* 800DFA18 000DC958  38 81 00 2B */	addi r4, r1, 0x2b
/* 800DFA1C 000DC95C  38 03 00 1F */	addi r0, r3, 0x1f
/* 800DFA20 000DC960  54 83 00 34 */	rlwinm r3, r4, 0, 0, 0x1a
/* 800DFA24 000DC964  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 800DFA28 000DC968  90 6D 8E 88 */	stw r3, idTmp@sda21(r13)
/* 800DFA2C 000DC96C  90 0D 8E 84 */	stw r0, bb2@sda21(r13)
/* 800DFA30 000DC970  4B FF F2 F1 */	bl DVDReset
/* 800DFA34 000DC974  3C 60 80 4F */	lis r3, block$18@ha
/* 800DFA38 000DC978  80 8D 8E 88 */	lwz r4, idTmp@sda21(r13)
/* 800DFA3C 000DC97C  3C A0 80 0E */	lis r5, cb@ha
/* 800DFA40 000DC980  38 63 5E F8 */	addi r3, r3, block$18@l
/* 800DFA44 000DC984  38 A5 F9 14 */	addi r5, r5, cb@l
/* 800DFA48 000DC988  4B FF F0 79 */	bl DVDReadDiskID
lbl_800DFA4C:
/* 800DFA4C 000DC98C  4B FF F3 65 */	bl DVDGetDriveStatus
/* 800DFA50 000DC990  2C 03 00 00 */	cmpwi r3, 0
/* 800DFA54 000DC994  40 82 FF F8 */	bne lbl_800DFA4C
/* 800DFA58 000DC998  80 6D 8E 84 */	lwz r3, bb2@sda21(r13)
/* 800DFA5C 000DC99C  3F A0 80 00 */	lis r29, 0x80000000@ha
/* 800DFA60 000DC9A0  3F C0 80 00 */	lis r30, 0x80000038@ha
/* 800DFA64 000DC9A4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800DFA68 000DC9A8  38 7D 00 00 */	addi r3, r29, 0x80000000@l
/* 800DFA6C 000DC9AC  38 A0 00 20 */	li r5, 0x20
/* 800DFA70 000DC9B0  90 1E 00 38 */	stw r0, 0x80000038@l(r30)
/* 800DFA74 000DC9B4  80 8D 8E 84 */	lwz r4, bb2@sda21(r13)
/* 800DFA78 000DC9B8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800DFA7C 000DC9BC  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 800DFA80 000DC9C0  80 8D 8E 88 */	lwz r4, idTmp@sda21(r13)
/* 800DFA84 000DC9C4  4B F2 57 19 */	bl memcpy
/* 800DFA88 000DC9C8  38 6D 82 D0 */	addi r3, r13, lbl_80514950@sda21
/* 800DFA8C 000DC9CC  4C C6 31 82 */	crclr 6
/* 800DFA90 000DC9D0  48 00 DC 5D */	bl OSReport
/* 800DFA94 000DC9D4  88 9D 00 00 */	lbz r4, 0(r29)
/* 800DFA98 000DC9D8  7F E3 FB 78 */	mr r3, r31
/* 800DFA9C 000DC9DC  88 BD 00 01 */	lbz r5, 1(r29)
/* 800DFAA0 000DC9E0  4C C6 31 82 */	crclr 6
/* 800DFAA4 000DC9E4  88 DD 00 02 */	lbz r6, 2(r29)
/* 800DFAA8 000DC9E8  88 FD 00 03 */	lbz r7, 3(r29)
/* 800DFAAC 000DC9EC  7C 84 07 74 */	extsb r4, r4
/* 800DFAB0 000DC9F0  7C A5 07 74 */	extsb r5, r5
/* 800DFAB4 000DC9F4  7C C6 07 74 */	extsb r6, r6
/* 800DFAB8 000DC9F8  7C E7 07 74 */	extsb r7, r7
/* 800DFABC 000DC9FC  48 00 DC 31 */	bl OSReport
/* 800DFAC0 000DCA00  88 9D 00 04 */	lbz r4, 4(r29)
/* 800DFAC4 000DCA04  38 7F 00 1C */	addi r3, r31, 0x1c
/* 800DFAC8 000DCA08  88 BD 00 05 */	lbz r5, 5(r29)
/* 800DFACC 000DCA0C  4C C6 31 82 */	crclr 6
/* 800DFAD0 000DCA10  7C 84 07 74 */	extsb r4, r4
/* 800DFAD4 000DCA14  7C A5 07 74 */	extsb r5, r5
/* 800DFAD8 000DCA18  48 00 DC 15 */	bl OSReport
/* 800DFADC 000DCA1C  88 9D 00 06 */	lbz r4, 6(r29)
/* 800DFAE0 000DCA20  38 7F 00 34 */	addi r3, r31, 0x34
/* 800DFAE4 000DCA24  4C C6 31 82 */	crclr 6
/* 800DFAE8 000DCA28  48 00 DC 05 */	bl OSReport
/* 800DFAEC 000DCA2C  88 9D 00 07 */	lbz r4, 7(r29)
/* 800DFAF0 000DCA30  38 7F 00 48 */	addi r3, r31, 0x48
/* 800DFAF4 000DCA34  4C C6 31 82 */	crclr 6
/* 800DFAF8 000DCA38  48 00 DB F5 */	bl OSReport
/* 800DFAFC 000DCA3C  88 1E 00 08 */	lbz r0, 8(r30)
/* 800DFB00 000DCA40  28 00 00 00 */	cmplwi r0, 0
/* 800DFB04 000DCA44  40 82 00 0C */	bne lbl_800DFB10
/* 800DFB08 000DCA48  38 8D 82 D4 */	addi r4, r13, lbl_80514954@sda21
/* 800DFB0C 000DCA4C  48 00 00 08 */	b lbl_800DFB14
lbl_800DFB10:
/* 800DFB10 000DCA50  38 8D 82 D8 */	addi r4, r13, lbl_80514958@sda21
lbl_800DFB14:
/* 800DFB14 000DCA54  4C C6 31 82 */	crclr 6
/* 800DFB18 000DCA58  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800DFB1C 000DCA5C  48 00 DB D1 */	bl OSReport
/* 800DFB20 000DCA60  38 6D 82 D0 */	addi r3, r13, lbl_80514950@sda21
/* 800DFB24 000DCA64  4C C6 31 82 */	crclr 6
/* 800DFB28 000DCA68  48 00 DB C5 */	bl OSReport
/* 800DFB2C 000DCA6C  80 6D 8E 84 */	lwz r3, bb2@sda21(r13)
/* 800DFB30 000DCA70  80 63 00 10 */	lwz r3, 0x10(r3)
/* 800DFB34 000DCA74  48 00 C9 01 */	bl OSSetArenaHi
/* 800DFB38 000DCA78  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800DFB3C 000DCA7C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 800DFB40 000DCA80  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 800DFB44 000DCA84  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 800DFB48 000DCA88  38 21 00 60 */	addi r1, r1, 0x60
/* 800DFB4C 000DCA8C  7C 08 03 A6 */	mtlr r0
/* 800DFB50 000DCA90  4E 80 00 20 */	blr 
