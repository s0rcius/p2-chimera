.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 0x8
.global lbl_80483A48
lbl_80483A48:
	.asciz "gameTekiStat.cpp"
	.skip 3
.global lbl_80483A5C
lbl_80483A5C:
	.asciz "P2Assert"
	.skip 3

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global incKilled__Q34Game8TekiStat4InfoFv
incKilled__Q34Game8TekiStat4InfoFv:
/* 8023381C 0023075C  80 8D 93 E8 */	lwz r4, gameSystem__4Game@sda21(r13)
/* 80233820 00230760  28 04 00 00 */	cmplwi r4, 0
/* 80233824 00230764  4D 82 00 20 */	beqlr 
/* 80233828 00230768  80 04 00 44 */	lwz r0, 0x44(r4)
/* 8023382C 0023076C  2C 00 00 00 */	cmpwi r0, 0
/* 80233830 00230770  4C 82 00 20 */	bnelr 
/* 80233834 00230774  80 83 00 00 */	lwz r4, 0(r3)
/* 80233838 00230778  38 04 00 01 */	addi r0, r4, 1
/* 8023383C 0023077C  90 03 00 00 */	stw r0, 0(r3)
/* 80233840 00230780  88 03 00 08 */	lbz r0, 8(r3)
/* 80233844 00230784  60 00 00 01 */	ori r0, r0, 1
/* 80233848 00230788  98 03 00 08 */	stb r0, 8(r3)
/* 8023384C 0023078C  4E 80 00 20 */	blr 

.global incKillPikmin__Q34Game8TekiStat4InfoFv
incKillPikmin__Q34Game8TekiStat4InfoFv:
/* 80233850 00230790  80 8D 93 E8 */	lwz r4, gameSystem__4Game@sda21(r13)
/* 80233854 00230794  28 04 00 00 */	cmplwi r4, 0
/* 80233858 00230798  4D 82 00 20 */	beqlr 
/* 8023385C 0023079C  80 04 00 44 */	lwz r0, 0x44(r4)
/* 80233860 002307A0  2C 00 00 00 */	cmpwi r0, 0
/* 80233864 002307A4  4C 82 00 20 */	bnelr 
/* 80233868 002307A8  80 83 00 04 */	lwz r4, 4(r3)
/* 8023386C 002307AC  38 04 00 01 */	addi r0, r4, 1
/* 80233870 002307B0  90 03 00 04 */	stw r0, 4(r3)
/* 80233874 002307B4  4E 80 00 20 */	blr 

.global __ct__Q34Game8TekiStat3MgrFv
__ct__Q34Game8TekiStat3MgrFv:
/* 80233878 002307B8  38 00 00 00 */	li r0, 0
/* 8023387C 002307BC  90 03 00 00 */	stw r0, 0(r3)
/* 80233880 002307C0  90 03 00 04 */	stw r0, 4(r3)
/* 80233884 002307C4  4E 80 00 20 */	blr 

.global whatsNew__Q34Game8TekiStat3MgrFv
whatsNew__Q34Game8TekiStat3MgrFv:
/* 80233888 002307C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023388C 002307CC  7C 08 02 A6 */	mflr r0
/* 80233890 002307D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80233894 002307D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80233898 002307D8  3B E0 00 00 */	li r31, 0
/* 8023389C 002307DC  93 C1 00 08 */	stw r30, 8(r1)
/* 802338A0 002307E0  7C 7E 1B 78 */	mr r30, r3
/* 802338A4 002307E4  48 00 00 40 */	b lbl_802338E4
lbl_802338A8:
/* 802338A8 002307E8  7F C3 F3 78 */	mr r3, r30
/* 802338AC 002307EC  7F E4 FB 78 */	mr r4, r31
/* 802338B0 002307F0  48 00 02 15 */	bl getTekiInfo__Q34Game8TekiStat3MgrFi
/* 802338B4 002307F4  88 03 00 08 */	lbz r0, 8(r3)
/* 802338B8 002307F8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802338BC 002307FC  41 82 00 24 */	beq lbl_802338E0
/* 802338C0 00230800  7F C3 F3 78 */	mr r3, r30
/* 802338C4 00230804  7F E4 FB 78 */	mr r4, r31
/* 802338C8 00230808  48 00 01 FD */	bl getTekiInfo__Q34Game8TekiStat3MgrFi
/* 802338CC 0023080C  88 03 00 08 */	lbz r0, 8(r3)
/* 802338D0 00230810  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802338D4 00230814  40 82 00 0C */	bne lbl_802338E0
/* 802338D8 00230818  38 60 00 01 */	li r3, 1
/* 802338DC 0023081C  48 00 00 18 */	b lbl_802338F4
lbl_802338E0:
/* 802338E0 00230820  3B FF 00 01 */	addi r31, r31, 1
lbl_802338E4:
/* 802338E4 00230824  80 1E 00 04 */	lwz r0, 4(r30)
/* 802338E8 00230828  7C 1F 00 00 */	cmpw r31, r0
/* 802338EC 0023082C  41 80 FF BC */	blt lbl_802338A8
/* 802338F0 00230830  38 60 00 00 */	li r3, 0
lbl_802338F4:
/* 802338F4 00230834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802338F8 00230838  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802338FC 0023083C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80233900 00230840  7C 08 03 A6 */	mtlr r0
/* 80233904 00230844  38 21 00 10 */	addi r1, r1, 0x10
/* 80233908 00230848  4E 80 00 20 */	blr 

.global setOutOfDateAll__Q34Game8TekiStat3MgrFv
setOutOfDateAll__Q34Game8TekiStat3MgrFv:
/* 8023390C 0023084C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80233910 00230850  7C 08 02 A6 */	mflr r0
/* 80233914 00230854  90 01 00 14 */	stw r0, 0x14(r1)
/* 80233918 00230858  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023391C 0023085C  3B E0 00 00 */	li r31, 0
/* 80233920 00230860  93 C1 00 08 */	stw r30, 8(r1)
/* 80233924 00230864  7C 7E 1B 78 */	mr r30, r3
/* 80233928 00230868  48 00 00 38 */	b lbl_80233960
lbl_8023392C:
/* 8023392C 0023086C  7F C3 F3 78 */	mr r3, r30
/* 80233930 00230870  7F E4 FB 78 */	mr r4, r31
/* 80233934 00230874  48 00 01 91 */	bl getTekiInfo__Q34Game8TekiStat3MgrFi
/* 80233938 00230878  88 03 00 08 */	lbz r0, 8(r3)
/* 8023393C 0023087C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80233940 00230880  41 82 00 1C */	beq lbl_8023395C
/* 80233944 00230884  7F C3 F3 78 */	mr r3, r30
/* 80233948 00230888  7F E4 FB 78 */	mr r4, r31
/* 8023394C 0023088C  48 00 01 79 */	bl getTekiInfo__Q34Game8TekiStat3MgrFi
/* 80233950 00230890  88 03 00 08 */	lbz r0, 8(r3)
/* 80233954 00230894  60 00 00 02 */	ori r0, r0, 2
/* 80233958 00230898  98 03 00 08 */	stb r0, 8(r3)
lbl_8023395C:
/* 8023395C 0023089C  3B FF 00 01 */	addi r31, r31, 1
lbl_80233960:
/* 80233960 002308A0  80 1E 00 04 */	lwz r0, 4(r30)
/* 80233964 002308A4  7C 1F 00 00 */	cmpw r31, r0
/* 80233968 002308A8  41 80 FF C4 */	blt lbl_8023392C
/* 8023396C 002308AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80233970 002308B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80233974 002308B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80233978 002308B8  7C 08 03 A6 */	mtlr r0
/* 8023397C 002308BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80233980 002308C0  4E 80 00 20 */	blr 

.global clear__Q34Game8TekiStat3MgrFv
clear__Q34Game8TekiStat3MgrFv:
/* 80233984 002308C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80233988 002308C8  7C 08 02 A6 */	mflr r0
/* 8023398C 002308CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80233990 002308D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80233994 002308D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80233998 002308D8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8023399C 002308DC  7C 7D 1B 78 */	mr r29, r3
/* 802339A0 002308E0  38 60 00 00 */	li r3, 0
/* 802339A4 002308E4  80 1D 00 00 */	lwz r0, 0(r29)
/* 802339A8 002308E8  28 00 00 00 */	cmplwi r0, 0
/* 802339AC 002308EC  41 82 00 14 */	beq lbl_802339C0
/* 802339B0 002308F0  80 1D 00 04 */	lwz r0, 4(r29)
/* 802339B4 002308F4  2C 00 00 00 */	cmpwi r0, 0
/* 802339B8 002308F8  41 82 00 08 */	beq lbl_802339C0
/* 802339BC 002308FC  38 60 00 01 */	li r3, 1
lbl_802339C0:
/* 802339C0 00230900  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802339C4 00230904  40 82 00 20 */	bne lbl_802339E4
/* 802339C8 00230908  3C 60 80 48 */	lis r3, lbl_80483A48@ha
/* 802339CC 0023090C  3C A0 80 48 */	lis r5, lbl_80483A5C@ha
/* 802339D0 00230910  38 63 3A 48 */	addi r3, r3, lbl_80483A48@l
/* 802339D4 00230914  38 80 00 3C */	li r4, 0x3c
/* 802339D8 00230918  38 A5 3A 5C */	addi r5, r5, lbl_80483A5C@l
/* 802339DC 0023091C  4C C6 31 82 */	crclr 6
/* 802339E0 00230920  4B DF 6C 61 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802339E4:
/* 802339E4 00230924  3B C0 00 00 */	li r30, 0
/* 802339E8 00230928  3B E0 00 00 */	li r31, 0
/* 802339EC 0023092C  48 00 00 38 */	b lbl_80233A24
lbl_802339F0:
/* 802339F0 00230930  7F A3 EB 78 */	mr r3, r29
/* 802339F4 00230934  7F C4 F3 78 */	mr r4, r30
/* 802339F8 00230938  48 00 00 CD */	bl getTekiInfo__Q34Game8TekiStat3MgrFi
/* 802339FC 0023093C  93 E3 00 00 */	stw r31, 0(r3)
/* 80233A00 00230940  7F A3 EB 78 */	mr r3, r29
/* 80233A04 00230944  7F C4 F3 78 */	mr r4, r30
/* 80233A08 00230948  48 00 00 BD */	bl getTekiInfo__Q34Game8TekiStat3MgrFi
/* 80233A0C 0023094C  93 E3 00 04 */	stw r31, 4(r3)
/* 80233A10 00230950  7F A3 EB 78 */	mr r3, r29
/* 80233A14 00230954  7F C4 F3 78 */	mr r4, r30
/* 80233A18 00230958  48 00 00 AD */	bl getTekiInfo__Q34Game8TekiStat3MgrFi
/* 80233A1C 0023095C  9B E3 00 08 */	stb r31, 8(r3)
/* 80233A20 00230960  3B DE 00 01 */	addi r30, r30, 1
lbl_80233A24:
/* 80233A24 00230964  80 1D 00 04 */	lwz r0, 4(r29)
/* 80233A28 00230968  7C 1E 00 00 */	cmpw r30, r0
/* 80233A2C 0023096C  41 80 FF C4 */	blt lbl_802339F0
/* 80233A30 00230970  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80233A34 00230974  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80233A38 00230978  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80233A3C 0023097C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80233A40 00230980  7C 08 03 A6 */	mtlr r0
/* 80233A44 00230984  38 21 00 20 */	addi r1, r1, 0x20
/* 80233A48 00230988  4E 80 00 20 */	blr 

.global allocate__Q34Game8TekiStat3MgrFi
allocate__Q34Game8TekiStat3MgrFi:
/* 80233A4C 0023098C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80233A50 00230990  7C 08 02 A6 */	mflr r0
/* 80233A54 00230994  90 01 00 14 */	stw r0, 0x14(r1)
/* 80233A58 00230998  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80233A5C 0023099C  7C 9F 23 78 */	mr r31, r4
/* 80233A60 002309A0  93 C1 00 08 */	stw r30, 8(r1)
/* 80233A64 002309A4  7C 7E 1B 78 */	mr r30, r3
/* 80233A68 002309A8  1C 7F 00 0C */	mulli r3, r31, 0xc
/* 80233A6C 002309AC  38 63 00 10 */	addi r3, r3, 0x10
/* 80233A70 002309B0  4B DF 05 3D */	bl __nwa__FUl
/* 80233A74 002309B4  3C 80 80 23 */	lis r4, __ct__Q34Game8TekiStat4InfoFv@ha
/* 80233A78 002309B8  7F E7 FB 78 */	mr r7, r31
/* 80233A7C 002309BC  38 84 3A AC */	addi r4, r4, __ct__Q34Game8TekiStat4InfoFv@l
/* 80233A80 002309C0  38 A0 00 00 */	li r5, 0
/* 80233A84 002309C4  38 C0 00 0C */	li r6, 0xc
/* 80233A88 002309C8  4B E8 DF 69 */	bl __construct_new_array
/* 80233A8C 002309CC  90 7E 00 00 */	stw r3, 0(r30)
/* 80233A90 002309D0  93 FE 00 04 */	stw r31, 4(r30)
/* 80233A94 002309D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80233A98 002309D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80233A9C 002309DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80233AA0 002309E0  7C 08 03 A6 */	mtlr r0
/* 80233AA4 002309E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80233AA8 002309E8  4E 80 00 20 */	blr 

.global __ct__Q34Game8TekiStat4InfoFv
__ct__Q34Game8TekiStat4InfoFv:
/* 80233AAC 002309EC  38 00 00 00 */	li r0, 0
/* 80233AB0 002309F0  98 03 00 08 */	stb r0, 8(r3)
/* 80233AB4 002309F4  90 03 00 04 */	stw r0, 4(r3)
/* 80233AB8 002309F8  90 03 00 00 */	stw r0, 0(r3)
/* 80233ABC 002309FC  98 03 00 08 */	stb r0, 8(r3)
/* 80233AC0 00230A00  4E 80 00 20 */	blr 

.global getTekiInfo__Q34Game8TekiStat3MgrFi
getTekiInfo__Q34Game8TekiStat3MgrFi:
/* 80233AC4 00230A04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80233AC8 00230A08  7C 08 02 A6 */	mflr r0
/* 80233ACC 00230A0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80233AD0 00230A10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80233AD4 00230A14  7C 9F 23 79 */	or. r31, r4, r4
/* 80233AD8 00230A18  93 C1 00 08 */	stw r30, 8(r1)
/* 80233ADC 00230A1C  7C 7E 1B 78 */	mr r30, r3
/* 80233AE0 00230A20  38 60 00 00 */	li r3, 0
/* 80233AE4 00230A24  41 80 00 14 */	blt lbl_80233AF8
/* 80233AE8 00230A28  80 1E 00 04 */	lwz r0, 4(r30)
/* 80233AEC 00230A2C  7C 1F 00 00 */	cmpw r31, r0
/* 80233AF0 00230A30  40 80 00 08 */	bge lbl_80233AF8
/* 80233AF4 00230A34  38 60 00 01 */	li r3, 1
lbl_80233AF8:
/* 80233AF8 00230A38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80233AFC 00230A3C  40 82 00 20 */	bne lbl_80233B1C
/* 80233B00 00230A40  3C 60 80 48 */	lis r3, lbl_80483A48@ha
/* 80233B04 00230A44  3C A0 80 48 */	lis r5, lbl_80483A5C@ha
/* 80233B08 00230A48  38 63 3A 48 */	addi r3, r3, lbl_80483A48@l
/* 80233B0C 00230A4C  38 80 00 4C */	li r4, 0x4c
/* 80233B10 00230A50  38 A5 3A 5C */	addi r5, r5, lbl_80483A5C@l
/* 80233B14 00230A54  4C C6 31 82 */	crclr 6
/* 80233B18 00230A58  4B DF 6B 29 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80233B1C:
/* 80233B1C 00230A5C  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 80233B20 00230A60  80 7E 00 00 */	lwz r3, 0(r30)
/* 80233B24 00230A64  7C 63 02 14 */	add r3, r3, r0
/* 80233B28 00230A68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80233B2C 00230A6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80233B30 00230A70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80233B34 00230A74  7C 08 03 A6 */	mtlr r0
/* 80233B38 00230A78  38 21 00 10 */	addi r1, r1, 0x10
/* 80233B3C 00230A7C  4E 80 00 20 */	blr 

.global write__Q34Game8TekiStat3MgrFR6Stream
write__Q34Game8TekiStat3MgrFR6Stream:
/* 80233B40 00230A80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80233B44 00230A84  7C 08 02 A6 */	mflr r0
/* 80233B48 00230A88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80233B4C 00230A8C  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 80233B50 00230A90  7C 9C 23 78 */	mr r28, r4
/* 80233B54 00230A94  7C 7B 1B 78 */	mr r27, r3
/* 80233B58 00230A98  80 83 00 04 */	lwz r4, 4(r3)
/* 80233B5C 00230A9C  7F 83 E3 78 */	mr r3, r28
/* 80233B60 00230AA0  48 1E 1C 61 */	bl writeInt__6StreamFi
/* 80233B64 00230AA4  3B A0 00 00 */	li r29, 0
/* 80233B68 00230AA8  3B C0 00 00 */	li r30, 0
/* 80233B6C 00230AAC  48 00 00 74 */	b lbl_80233BE0
lbl_80233B70:
/* 80233B70 00230AB0  2C 1D 00 00 */	cmpwi r29, 0
/* 80233B74 00230AB4  38 00 00 00 */	li r0, 0
/* 80233B78 00230AB8  41 80 00 10 */	blt lbl_80233B88
/* 80233B7C 00230ABC  7C 1D 18 00 */	cmpw r29, r3
/* 80233B80 00230AC0  40 80 00 08 */	bge lbl_80233B88
/* 80233B84 00230AC4  38 00 00 01 */	li r0, 1
lbl_80233B88:
/* 80233B88 00230AC8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80233B8C 00230ACC  40 82 00 20 */	bne lbl_80233BAC
/* 80233B90 00230AD0  3C 60 80 48 */	lis r3, lbl_80483A48@ha
/* 80233B94 00230AD4  3C A0 80 48 */	lis r5, lbl_80483A5C@ha
/* 80233B98 00230AD8  38 63 3A 48 */	addi r3, r3, lbl_80483A48@l
/* 80233B9C 00230ADC  38 80 00 4C */	li r4, 0x4c
/* 80233BA0 00230AE0  38 A5 3A 5C */	addi r5, r5, lbl_80483A5C@l
/* 80233BA4 00230AE4  4C C6 31 82 */	crclr 6
/* 80233BA8 00230AE8  4B DF 6A 99 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80233BAC:
/* 80233BAC 00230AEC  80 1B 00 00 */	lwz r0, 0(r27)
/* 80233BB0 00230AF0  7F 83 E3 78 */	mr r3, r28
/* 80233BB4 00230AF4  7F E0 F2 14 */	add r31, r0, r30
/* 80233BB8 00230AF8  80 9F 00 00 */	lwz r4, 0(r31)
/* 80233BBC 00230AFC  48 1E 1C 05 */	bl writeInt__6StreamFi
/* 80233BC0 00230B00  80 9F 00 04 */	lwz r4, 4(r31)
/* 80233BC4 00230B04  7F 83 E3 78 */	mr r3, r28
/* 80233BC8 00230B08  48 1E 1B F9 */	bl writeInt__6StreamFi
/* 80233BCC 00230B0C  7F 83 E3 78 */	mr r3, r28
/* 80233BD0 00230B10  88 9F 00 08 */	lbz r4, 8(r31)
/* 80233BD4 00230B14  48 1E 1A 9D */	bl writeByte__6StreamFUc
/* 80233BD8 00230B18  3B DE 00 0C */	addi r30, r30, 0xc
/* 80233BDC 00230B1C  3B BD 00 01 */	addi r29, r29, 1
lbl_80233BE0:
/* 80233BE0 00230B20  80 7B 00 04 */	lwz r3, 4(r27)
/* 80233BE4 00230B24  7C 1D 18 00 */	cmpw r29, r3
/* 80233BE8 00230B28  41 80 FF 88 */	blt lbl_80233B70
/* 80233BEC 00230B2C  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 80233BF0 00230B30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80233BF4 00230B34  7C 08 03 A6 */	mtlr r0
/* 80233BF8 00230B38  38 21 00 20 */	addi r1, r1, 0x20
/* 80233BFC 00230B3C  4E 80 00 20 */	blr 

.global read__Q34Game8TekiStat3MgrFR6Stream
read__Q34Game8TekiStat3MgrFR6Stream:
/* 80233C00 00230B40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80233C04 00230B44  7C 08 02 A6 */	mflr r0
/* 80233C08 00230B48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80233C0C 00230B4C  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 80233C10 00230B50  7C 9F 23 78 */	mr r31, r4
/* 80233C14 00230B54  7C 7E 1B 78 */	mr r30, r3
/* 80233C18 00230B58  7F E3 FB 78 */	mr r3, r31
/* 80233C1C 00230B5C  48 1E 0E 75 */	bl readInt__6StreamFv
/* 80233C20 00230B60  80 1E 00 04 */	lwz r0, 4(r30)
/* 80233C24 00230B64  7C 7D 1B 78 */	mr r29, r3
/* 80233C28 00230B68  7C 1D 00 00 */	cmpw r29, r0
/* 80233C2C 00230B6C  41 82 00 20 */	beq lbl_80233C4C
/* 80233C30 00230B70  3C 60 80 48 */	lis r3, lbl_80483A48@ha
/* 80233C34 00230B74  3C A0 80 48 */	lis r5, lbl_80483A5C@ha
/* 80233C38 00230B78  38 63 3A 48 */	addi r3, r3, lbl_80483A48@l
/* 80233C3C 00230B7C  38 80 00 69 */	li r4, 0x69
/* 80233C40 00230B80  38 A5 3A 5C */	addi r5, r5, lbl_80483A5C@l
/* 80233C44 00230B84  4C C6 31 82 */	crclr 6
/* 80233C48 00230B88  4B DF 69 F9 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80233C4C:
/* 80233C4C 00230B8C  93 BE 00 04 */	stw r29, 4(r30)
/* 80233C50 00230B90  3B 60 00 00 */	li r27, 0
/* 80233C54 00230B94  3B 80 00 00 */	li r28, 0
/* 80233C58 00230B98  48 00 00 74 */	b lbl_80233CCC
lbl_80233C5C:
/* 80233C5C 00230B9C  2C 1B 00 00 */	cmpwi r27, 0
/* 80233C60 00230BA0  38 00 00 00 */	li r0, 0
/* 80233C64 00230BA4  41 80 00 10 */	blt lbl_80233C74
/* 80233C68 00230BA8  7C 1B 18 00 */	cmpw r27, r3
/* 80233C6C 00230BAC  40 80 00 08 */	bge lbl_80233C74
/* 80233C70 00230BB0  38 00 00 01 */	li r0, 1
lbl_80233C74:
/* 80233C74 00230BB4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80233C78 00230BB8  40 82 00 20 */	bne lbl_80233C98
/* 80233C7C 00230BBC  3C 60 80 48 */	lis r3, lbl_80483A48@ha
/* 80233C80 00230BC0  3C A0 80 48 */	lis r5, lbl_80483A5C@ha
/* 80233C84 00230BC4  38 63 3A 48 */	addi r3, r3, lbl_80483A48@l
/* 80233C88 00230BC8  38 80 00 4C */	li r4, 0x4c
/* 80233C8C 00230BCC  38 A5 3A 5C */	addi r5, r5, lbl_80483A5C@l
/* 80233C90 00230BD0  4C C6 31 82 */	crclr 6
/* 80233C94 00230BD4  4B DF 69 AD */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80233C98:
/* 80233C98 00230BD8  80 1E 00 00 */	lwz r0, 0(r30)
/* 80233C9C 00230BDC  7F E3 FB 78 */	mr r3, r31
/* 80233CA0 00230BE0  7F A0 E2 14 */	add r29, r0, r28
/* 80233CA4 00230BE4  48 1E 0D ED */	bl readInt__6StreamFv
/* 80233CA8 00230BE8  90 7D 00 00 */	stw r3, 0(r29)
/* 80233CAC 00230BEC  7F E3 FB 78 */	mr r3, r31
/* 80233CB0 00230BF0  48 1E 0D E1 */	bl readInt__6StreamFv
/* 80233CB4 00230BF4  90 7D 00 04 */	stw r3, 4(r29)
/* 80233CB8 00230BF8  7F E3 FB 78 */	mr r3, r31
/* 80233CBC 00230BFC  48 1E 07 E1 */	bl readByte__6StreamFv
/* 80233CC0 00230C00  98 7D 00 08 */	stb r3, 8(r29)
/* 80233CC4 00230C04  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80233CC8 00230C08  3B 7B 00 01 */	addi r27, r27, 1
lbl_80233CCC:
/* 80233CCC 00230C0C  80 7E 00 04 */	lwz r3, 4(r30)
/* 80233CD0 00230C10  7C 1B 18 00 */	cmpw r27, r3
/* 80233CD4 00230C14  41 80 FF 88 */	blt lbl_80233C5C
/* 80233CD8 00230C18  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 80233CDC 00230C1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80233CE0 00230C20  7C 08 03 A6 */	mtlr r0
/* 80233CE4 00230C24  38 21 00 20 */	addi r1, r1, 0x20
/* 80233CE8 00230C28  4E 80 00 20 */	blr 
