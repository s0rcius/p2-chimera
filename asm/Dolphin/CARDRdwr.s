.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global BlockReadCallback
BlockReadCallback:
/* 800D6B80 000D3AC0  7C 08 02 A6 */	mflr r0
/* 800D6B84 000D3AC4  90 01 00 04 */	stw r0, 4(r1)
/* 800D6B88 000D3AC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800D6B8C 000D3ACC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800D6B90 000D3AD0  3B E3 00 00 */	addi r31, r3, 0
/* 800D6B94 000D3AD4  3C 60 80 4F */	lis r3, __CARDBlock@ha
/* 800D6B98 000D3AD8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800D6B9C 000D3ADC  1C BF 01 10 */	mulli r5, r31, 0x110
/* 800D6BA0 000D3AE0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800D6BA4 000D3AE4  38 03 5A F0 */	addi r0, r3, __CARDBlock@l
/* 800D6BA8 000D3AE8  7C 9D 23 79 */	or. r29, r4, r4
/* 800D6BAC 000D3AEC  7F C0 2A 14 */	add r30, r0, r5
/* 800D6BB0 000D3AF0  41 80 00 50 */	blt lbl_800D6C00
/* 800D6BB4 000D3AF4  80 7E 00 B8 */	lwz r3, 0xb8(r30)
/* 800D6BB8 000D3AF8  38 03 02 00 */	addi r0, r3, 0x200
/* 800D6BBC 000D3AFC  90 1E 00 B8 */	stw r0, 0xb8(r30)
/* 800D6BC0 000D3B00  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 800D6BC4 000D3B04  38 03 02 00 */	addi r0, r3, 0x200
/* 800D6BC8 000D3B08  90 1E 00 B0 */	stw r0, 0xb0(r30)
/* 800D6BCC 000D3B0C  80 7E 00 B4 */	lwz r3, 0xb4(r30)
/* 800D6BD0 000D3B10  38 03 02 00 */	addi r0, r3, 0x200
/* 800D6BD4 000D3B14  90 1E 00 B4 */	stw r0, 0xb4(r30)
/* 800D6BD8 000D3B18  80 7E 00 AC */	lwz r3, 0xac(r30)
/* 800D6BDC 000D3B1C  34 03 FF FF */	addic. r0, r3, -1
/* 800D6BE0 000D3B20  90 1E 00 AC */	stw r0, 0xac(r30)
/* 800D6BE4 000D3B24  40 81 00 1C */	ble lbl_800D6C00
/* 800D6BE8 000D3B28  3C 60 80 0D */	lis r3, BlockReadCallback@ha
/* 800D6BEC 000D3B2C  38 83 6B 80 */	addi r4, r3, BlockReadCallback@l
/* 800D6BF0 000D3B30  38 7F 00 00 */	addi r3, r31, 0
/* 800D6BF4 000D3B34  4B FF E5 BD */	bl __CARDReadSegment
/* 800D6BF8 000D3B38  7C 7D 1B 79 */	or. r29, r3, r3
/* 800D6BFC 000D3B3C  40 80 00 44 */	bge lbl_800D6C40
lbl_800D6C00:
/* 800D6C00 000D3B40  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800D6C04 000D3B44  28 00 00 00 */	cmplwi r0, 0
/* 800D6C08 000D3B48  40 82 00 10 */	bne lbl_800D6C18
/* 800D6C0C 000D3B4C  38 7E 00 00 */	addi r3, r30, 0
/* 800D6C10 000D3B50  38 9D 00 00 */	addi r4, r29, 0
/* 800D6C14 000D3B54  4B FF EA 71 */	bl __CARDPutControlBlock
lbl_800D6C18:
/* 800D6C18 000D3B58  80 1E 00 D4 */	lwz r0, 0xd4(r30)
/* 800D6C1C 000D3B5C  28 00 00 00 */	cmplwi r0, 0
/* 800D6C20 000D3B60  7C 0C 03 78 */	mr r12, r0
/* 800D6C24 000D3B64  41 82 00 1C */	beq lbl_800D6C40
/* 800D6C28 000D3B68  38 00 00 00 */	li r0, 0
/* 800D6C2C 000D3B6C  7D 88 03 A6 */	mtlr r12
/* 800D6C30 000D3B70  90 1E 00 D4 */	stw r0, 0xd4(r30)
/* 800D6C34 000D3B74  38 7F 00 00 */	addi r3, r31, 0
/* 800D6C38 000D3B78  38 9D 00 00 */	addi r4, r29, 0
/* 800D6C3C 000D3B7C  4E 80 00 21 */	blrl 
lbl_800D6C40:
/* 800D6C40 000D3B80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800D6C44 000D3B84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800D6C48 000D3B88  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800D6C4C 000D3B8C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800D6C50 000D3B90  38 21 00 20 */	addi r1, r1, 0x20
/* 800D6C54 000D3B94  7C 08 03 A6 */	mtlr r0
/* 800D6C58 000D3B98  4E 80 00 20 */	blr 

.global __CARDRead
__CARDRead:
/* 800D6C5C 000D3B9C  7C 08 02 A6 */	mflr r0
/* 800D6C60 000D3BA0  1D 23 01 10 */	mulli r9, r3, 0x110
/* 800D6C64 000D3BA4  90 01 00 04 */	stw r0, 4(r1)
/* 800D6C68 000D3BA8  3D 00 80 4F */	lis r8, __CARDBlock@ha
/* 800D6C6C 000D3BAC  94 21 FF F8 */	stwu r1, -8(r1)
/* 800D6C70 000D3BB0  38 08 5A F0 */	addi r0, r8, __CARDBlock@l
/* 800D6C74 000D3BB4  7D 00 4A 14 */	add r8, r0, r9
/* 800D6C78 000D3BB8  80 08 00 00 */	lwz r0, 0(r8)
/* 800D6C7C 000D3BBC  2C 00 00 00 */	cmpwi r0, 0
/* 800D6C80 000D3BC0  40 82 00 0C */	bne lbl_800D6C8C
/* 800D6C84 000D3BC4  38 60 FF FD */	li r3, -3
/* 800D6C88 000D3BC8  48 00 00 28 */	b lbl_800D6CB0
lbl_800D6C8C:
/* 800D6C8C 000D3BCC  90 E8 00 D4 */	stw r7, 0xd4(r8)
/* 800D6C90 000D3BD0  54 A0 BA 7E */	srwi r0, r5, 9
/* 800D6C94 000D3BD4  3C A0 80 0D */	lis r5, BlockReadCallback@ha
/* 800D6C98 000D3BD8  90 08 00 AC */	stw r0, 0xac(r8)
/* 800D6C9C 000D3BDC  38 05 6B 80 */	addi r0, r5, BlockReadCallback@l
/* 800D6CA0 000D3BE0  90 88 00 B0 */	stw r4, 0xb0(r8)
/* 800D6CA4 000D3BE4  7C 04 03 78 */	mr r4, r0
/* 800D6CA8 000D3BE8  90 C8 00 B4 */	stw r6, 0xb4(r8)
/* 800D6CAC 000D3BEC  4B FF E5 05 */	bl __CARDReadSegment
lbl_800D6CB0:
/* 800D6CB0 000D3BF0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800D6CB4 000D3BF4  38 21 00 08 */	addi r1, r1, 8
/* 800D6CB8 000D3BF8  7C 08 03 A6 */	mtlr r0
/* 800D6CBC 000D3BFC  4E 80 00 20 */	blr 

BlockWriteCallback:
/* 800D6CC0 000D3C00  7C 08 02 A6 */	mflr r0
/* 800D6CC4 000D3C04  90 01 00 04 */	stw r0, 4(r1)
/* 800D6CC8 000D3C08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800D6CCC 000D3C0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800D6CD0 000D3C10  3B E3 00 00 */	addi r31, r3, 0
/* 800D6CD4 000D3C14  3C 60 80 4F */	lis r3, __CARDBlock@ha
/* 800D6CD8 000D3C18  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800D6CDC 000D3C1C  1C BF 01 10 */	mulli r5, r31, 0x110
/* 800D6CE0 000D3C20  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800D6CE4 000D3C24  38 03 5A F0 */	addi r0, r3, __CARDBlock@l
/* 800D6CE8 000D3C28  7C 9D 23 79 */	or. r29, r4, r4
/* 800D6CEC 000D3C2C  7F C0 2A 14 */	add r30, r0, r5
/* 800D6CF0 000D3C30  41 80 00 50 */	blt lbl_800D6D40
/* 800D6CF4 000D3C34  80 7E 00 B8 */	lwz r3, 0xb8(r30)
/* 800D6CF8 000D3C38  38 03 00 80 */	addi r0, r3, 0x80
/* 800D6CFC 000D3C3C  90 1E 00 B8 */	stw r0, 0xb8(r30)
/* 800D6D00 000D3C40  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 800D6D04 000D3C44  38 03 00 80 */	addi r0, r3, 0x80
/* 800D6D08 000D3C48  90 1E 00 B0 */	stw r0, 0xb0(r30)
/* 800D6D0C 000D3C4C  80 7E 00 B4 */	lwz r3, 0xb4(r30)
/* 800D6D10 000D3C50  38 03 00 80 */	addi r0, r3, 0x80
/* 800D6D14 000D3C54  90 1E 00 B4 */	stw r0, 0xb4(r30)
/* 800D6D18 000D3C58  80 7E 00 AC */	lwz r3, 0xac(r30)
/* 800D6D1C 000D3C5C  34 03 FF FF */	addic. r0, r3, -1
/* 800D6D20 000D3C60  90 1E 00 AC */	stw r0, 0xac(r30)
/* 800D6D24 000D3C64  40 81 00 1C */	ble lbl_800D6D40
/* 800D6D28 000D3C68  3C 60 80 0D */	lis r3, BlockWriteCallback@ha
/* 800D6D2C 000D3C6C  38 83 6C C0 */	addi r4, r3, BlockWriteCallback@l
/* 800D6D30 000D3C70  38 7F 00 00 */	addi r3, r31, 0
/* 800D6D34 000D3C74  4B FF E5 B1 */	bl __CARDWritePage
/* 800D6D38 000D3C78  7C 7D 1B 79 */	or. r29, r3, r3
/* 800D6D3C 000D3C7C  40 80 00 44 */	bge lbl_800D6D80
lbl_800D6D40:
/* 800D6D40 000D3C80  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800D6D44 000D3C84  28 00 00 00 */	cmplwi r0, 0
/* 800D6D48 000D3C88  40 82 00 10 */	bne lbl_800D6D58
/* 800D6D4C 000D3C8C  38 7E 00 00 */	addi r3, r30, 0
/* 800D6D50 000D3C90  38 9D 00 00 */	addi r4, r29, 0
/* 800D6D54 000D3C94  4B FF E9 31 */	bl __CARDPutControlBlock
lbl_800D6D58:
/* 800D6D58 000D3C98  80 1E 00 D4 */	lwz r0, 0xd4(r30)
/* 800D6D5C 000D3C9C  28 00 00 00 */	cmplwi r0, 0
/* 800D6D60 000D3CA0  7C 0C 03 78 */	mr r12, r0
/* 800D6D64 000D3CA4  41 82 00 1C */	beq lbl_800D6D80
/* 800D6D68 000D3CA8  38 00 00 00 */	li r0, 0
/* 800D6D6C 000D3CAC  7D 88 03 A6 */	mtlr r12
/* 800D6D70 000D3CB0  90 1E 00 D4 */	stw r0, 0xd4(r30)
/* 800D6D74 000D3CB4  38 7F 00 00 */	addi r3, r31, 0
/* 800D6D78 000D3CB8  38 9D 00 00 */	addi r4, r29, 0
/* 800D6D7C 000D3CBC  4E 80 00 21 */	blrl 
lbl_800D6D80:
/* 800D6D80 000D3CC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800D6D84 000D3CC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800D6D88 000D3CC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800D6D8C 000D3CCC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800D6D90 000D3CD0  38 21 00 20 */	addi r1, r1, 0x20
/* 800D6D94 000D3CD4  7C 08 03 A6 */	mtlr r0
/* 800D6D98 000D3CD8  4E 80 00 20 */	blr 

.global __CARDWrite
__CARDWrite:
/* 800D6D9C 000D3CDC  7C 08 02 A6 */	mflr r0
/* 800D6DA0 000D3CE0  1D 23 01 10 */	mulli r9, r3, 0x110
/* 800D6DA4 000D3CE4  90 01 00 04 */	stw r0, 4(r1)
/* 800D6DA8 000D3CE8  3D 00 80 4F */	lis r8, __CARDBlock@ha
/* 800D6DAC 000D3CEC  94 21 FF F8 */	stwu r1, -8(r1)
/* 800D6DB0 000D3CF0  38 08 5A F0 */	addi r0, r8, __CARDBlock@l
/* 800D6DB4 000D3CF4  7D 00 4A 14 */	add r8, r0, r9
/* 800D6DB8 000D3CF8  80 08 00 00 */	lwz r0, 0(r8)
/* 800D6DBC 000D3CFC  2C 00 00 00 */	cmpwi r0, 0
/* 800D6DC0 000D3D00  40 82 00 0C */	bne lbl_800D6DCC
/* 800D6DC4 000D3D04  38 60 FF FD */	li r3, -3
/* 800D6DC8 000D3D08  48 00 00 28 */	b lbl_800D6DF0
lbl_800D6DCC:
/* 800D6DCC 000D3D0C  90 E8 00 D4 */	stw r7, 0xd4(r8)
/* 800D6DD0 000D3D10  54 A0 C9 FE */	srwi r0, r5, 7
/* 800D6DD4 000D3D14  3C A0 80 0D */	lis r5, BlockWriteCallback@ha
/* 800D6DD8 000D3D18  90 08 00 AC */	stw r0, 0xac(r8)
/* 800D6DDC 000D3D1C  38 05 6C C0 */	addi r0, r5, BlockWriteCallback@l
/* 800D6DE0 000D3D20  90 88 00 B0 */	stw r4, 0xb0(r8)
/* 800D6DE4 000D3D24  7C 04 03 78 */	mr r4, r0
/* 800D6DE8 000D3D28  90 C8 00 B4 */	stw r6, 0xb4(r8)
/* 800D6DEC 000D3D2C  4B FF E4 F9 */	bl __CARDWritePage
lbl_800D6DF0:
/* 800D6DF0 000D3D30  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800D6DF4 000D3D34  38 21 00 08 */	addi r1, r1, 8
/* 800D6DF8 000D3D38  7C 08 03 A6 */	mtlr r0
/* 800D6DFC 000D3D3C  4E 80 00 20 */	blr 
