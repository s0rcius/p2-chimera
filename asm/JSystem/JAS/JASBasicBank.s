.include "macros.inc"
.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 0x8
.global __vt__12JASBasicBank
__vt__12JASBasicBank:
	.4byte 0
	.4byte 0
	.4byte __dt__12JASBasicBankFv
	.4byte getInst__12JASBasicBankCFi
	.4byte getType__12JASBasicBankCFv
.global __vt__7JASBank
__vt__7JASBank:
	.4byte 0
	.4byte 0
	.4byte __dt__7JASBankFv
	.4byte 0
	.4byte 0

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__12JASBasicBankFv
__ct__12JASBasicBankFv:
/* 800996FC 0009663C  3C C0 80 4A */	lis r6, __vt__7JASBank@ha
/* 80099700 00096640  3C 80 80 4A */	lis r4, __vt__12JASBasicBank@ha
/* 80099704 00096644  38 C6 37 64 */	addi r6, r6, __vt__7JASBank@l
/* 80099708 00096648  38 A0 00 00 */	li r5, 0
/* 8009970C 0009664C  90 C3 00 00 */	stw r6, 0(r3)
/* 80099710 00096650  38 04 37 50 */	addi r0, r4, __vt__12JASBasicBank@l
/* 80099714 00096654  90 A3 00 04 */	stw r5, 4(r3)
/* 80099718 00096658  90 03 00 00 */	stw r0, 0(r3)
/* 8009971C 0009665C  90 A3 00 08 */	stw r5, 8(r3)
/* 80099720 00096660  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80099724 00096664  4E 80 00 20 */	blr 

.global __dt__7JASBankFv
__dt__7JASBankFv:
/* 80099728 00096668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009972C 0009666C  7C 08 02 A6 */	mflr r0
/* 80099730 00096670  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099734 00096674  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80099738 00096678  7C 7F 1B 79 */	or. r31, r3, r3
/* 8009973C 0009667C  41 82 00 1C */	beq lbl_80099758
/* 80099740 00096680  3C A0 80 4A */	lis r5, __vt__7JASBank@ha
/* 80099744 00096684  7C 80 07 35 */	extsh. r0, r4
/* 80099748 00096688  38 05 37 64 */	addi r0, r5, __vt__7JASBank@l
/* 8009974C 0009668C  90 1F 00 00 */	stw r0, 0(r31)
/* 80099750 00096690  40 81 00 08 */	ble lbl_80099758
/* 80099754 00096694  4B F8 A9 61 */	bl __dl__FPv
lbl_80099758:
/* 80099758 00096698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009975C 0009669C  7F E3 FB 78 */	mr r3, r31
/* 80099760 000966A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80099764 000966A4  7C 08 03 A6 */	mtlr r0
/* 80099768 000966A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8009976C 000966AC  4E 80 00 20 */	blr 

.global __dt__12JASBasicBankFv
__dt__12JASBasicBankFv:
/* 80099770 000966B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099774 000966B4  7C 08 02 A6 */	mflr r0
/* 80099778 000966B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009977C 000966BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80099780 000966C0  7C 9F 23 78 */	mr r31, r4
/* 80099784 000966C4  93 C1 00 08 */	stw r30, 8(r1)
/* 80099788 000966C8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8009978C 000966CC  41 82 00 3C */	beq lbl_800997C8
/* 80099790 000966D0  3C 60 80 4A */	lis r3, __vt__12JASBasicBank@ha
/* 80099794 000966D4  38 03 37 50 */	addi r0, r3, __vt__12JASBasicBank@l
/* 80099798 000966D8  90 1E 00 00 */	stw r0, 0(r30)
/* 8009979C 000966DC  80 7E 00 08 */	lwz r3, 8(r30)
/* 800997A0 000966E0  4B F8 A9 39 */	bl __dla__FPv
/* 800997A4 000966E4  28 1E 00 00 */	cmplwi r30, 0
/* 800997A8 000966E8  41 82 00 10 */	beq lbl_800997B8
/* 800997AC 000966EC  3C 60 80 4A */	lis r3, __vt__7JASBank@ha
/* 800997B0 000966F0  38 03 37 64 */	addi r0, r3, __vt__7JASBank@l
/* 800997B4 000966F4  90 1E 00 00 */	stw r0, 0(r30)
lbl_800997B8:
/* 800997B8 000966F8  7F E0 07 35 */	extsh. r0, r31
/* 800997BC 000966FC  40 81 00 0C */	ble lbl_800997C8
/* 800997C0 00096700  7F C3 F3 78 */	mr r3, r30
/* 800997C4 00096704  4B F8 A8 F1 */	bl __dl__FPv
lbl_800997C8:
/* 800997C8 00096708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800997CC 0009670C  7F C3 F3 78 */	mr r3, r30
/* 800997D0 00096710  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800997D4 00096714  83 C1 00 08 */	lwz r30, 8(r1)
/* 800997D8 00096718  7C 08 03 A6 */	mtlr r0
/* 800997DC 0009671C  38 21 00 10 */	addi r1, r1, 0x10
/* 800997E0 00096720  4E 80 00 20 */	blr 

.global setInstCount__12JASBasicBankFUl
setInstCount__12JASBasicBankFUl:
/* 800997E4 00096724  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800997E8 00096728  7C 08 02 A6 */	mflr r0
/* 800997EC 0009672C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800997F0 00096730  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800997F4 00096734  7C 9F 23 78 */	mr r31, r4
/* 800997F8 00096738  93 C1 00 08 */	stw r30, 8(r1)
/* 800997FC 0009673C  7C 7E 1B 78 */	mr r30, r3
/* 80099800 00096740  80 63 00 08 */	lwz r3, 8(r3)
/* 80099804 00096744  4B F8 A8 D5 */	bl __dla__FPv
/* 80099808 00096748  48 00 2A F5 */	bl getCurrentHeap__7JASBankFv
/* 8009980C 0009674C  7C 64 1B 78 */	mr r4, r3
/* 80099810 00096750  57 E3 10 3A */	slwi r3, r31, 2
/* 80099814 00096754  38 A0 00 00 */	li r5, 0
/* 80099818 00096758  4B F8 A8 31 */	bl __nwa__FUlP7JKRHeapi
/* 8009981C 0009675C  90 7E 00 08 */	stw r3, 8(r30)
/* 80099820 00096760  57 E4 10 3A */	slwi r4, r31, 2
/* 80099824 00096764  80 7E 00 08 */	lwz r3, 8(r30)
/* 80099828 00096768  48 00 CA 3D */	bl bzero__7JASCalcFPvUl
/* 8009982C 0009676C  93 FE 00 0C */	stw r31, 0xc(r30)
/* 80099830 00096770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099834 00096774  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80099838 00096778  83 C1 00 08 */	lwz r30, 8(r1)
/* 8009983C 0009677C  7C 08 03 A6 */	mtlr r0
/* 80099840 00096780  38 21 00 10 */	addi r1, r1, 0x10
/* 80099844 00096784  4E 80 00 20 */	blr 

.global setInst__12JASBasicBankFiP7JASInst
setInst__12JASBasicBankFiP7JASInst:
/* 80099848 00096788  80 63 00 08 */	lwz r3, 8(r3)
/* 8009984C 0009678C  54 80 10 3A */	slwi r0, r4, 2
/* 80099850 00096790  7C A3 01 2E */	stwx r5, r3, r0
/* 80099854 00096794  4E 80 00 20 */	blr 

.global getInst__12JASBasicBankCFi
getInst__12JASBasicBankCFi:
/* 80099858 00096798  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8009985C 0009679C  7C 04 00 40 */	cmplw r4, r0
/* 80099860 000967A0  41 80 00 0C */	blt lbl_8009986C
/* 80099864 000967A4  38 60 00 00 */	li r3, 0
/* 80099868 000967A8  4E 80 00 20 */	blr 
lbl_8009986C:
/* 8009986C 000967AC  80 63 00 08 */	lwz r3, 8(r3)
/* 80099870 000967B0  54 80 10 3A */	slwi r0, r4, 2
/* 80099874 000967B4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80099878 000967B8  4E 80 00 20 */	blr 

.global getType__12JASBasicBankCFv
getType__12JASBasicBankCFv:
/* 8009987C 000967BC  3C 60 42 53 */	lis r3, 0x42534943@ha
/* 80099880 000967C0  38 63 49 43 */	addi r3, r3, 0x42534943@l
/* 80099884 000967C4  4E 80 00 20 */	blr 
