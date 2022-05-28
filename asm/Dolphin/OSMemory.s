.include "macros.inc"
.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 0x8
.global ResetFunctionInfo_2
ResetFunctionInfo_2:
	.4byte OnReset2
	.4byte 0x0000007F
	.4byte 0x00000000
	.4byte 0x00000000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global OnReset2
OnReset2:
/* 800EF794 000EC6D4  7C 08 02 A6 */	mflr r0
/* 800EF798 000EC6D8  2C 03 00 00 */	cmpwi r3, 0
/* 800EF79C 000EC6DC  90 01 00 04 */	stw r0, 4(r1)
/* 800EF7A0 000EC6E0  94 21 FF F8 */	stwu r1, -8(r1)
/* 800EF7A4 000EC6E4  41 82 00 18 */	beq lbl_800EF7BC
/* 800EF7A8 000EC6E8  3C 60 CC 00 */	lis r3, 0xCC004010@ha
/* 800EF7AC 000EC6EC  38 00 00 FF */	li r0, 0xff
/* 800EF7B0 000EC6F0  B0 03 40 10 */	sth r0, 0xCC004010@l(r3)
/* 800EF7B4 000EC6F4  3C 60 F0 00 */	lis r3, 0xf000
/* 800EF7B8 000EC6F8  4B FF F8 49 */	bl __OSMaskInterrupts
lbl_800EF7BC:
/* 800EF7BC 000EC6FC  38 60 00 01 */	li r3, 1
/* 800EF7C0 000EC700  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800EF7C4 000EC704  38 21 00 08 */	addi r1, r1, 8
/* 800EF7C8 000EC708  7C 08 03 A6 */	mtlr r0
/* 800EF7CC 000EC70C  4E 80 00 20 */	blr 

.global MEMIntrruptHandler
MEMIntrruptHandler:
/* 800EF7D0 000EC710  7C 08 02 A6 */	mflr r0
/* 800EF7D4 000EC714  3C 60 CC 00 */	lis r3, 0xCC004000@ha
/* 800EF7D8 000EC718  90 01 00 04 */	stw r0, 4(r1)
/* 800EF7DC 000EC71C  39 03 40 00 */	addi r8, r3, 0xCC004000@l
/* 800EF7E0 000EC720  38 00 00 00 */	li r0, 0
/* 800EF7E4 000EC724  94 21 FF F8 */	stwu r1, -8(r1)
/* 800EF7E8 000EC728  A0 E3 40 24 */	lhz r7, 0x4024(r3)
/* 800EF7EC 000EC72C  3C 60 80 4F */	lis r3, __OSErrorTable@ha
/* 800EF7F0 000EC730  A0 C8 00 22 */	lhz r6, 0x22(r8)
/* 800EF7F4 000EC734  38 63 66 70 */	addi r3, r3, __OSErrorTable@l
/* 800EF7F8 000EC738  A0 A8 00 1E */	lhz r5, 0x1e(r8)
/* 800EF7FC 000EC73C  50 E6 81 9E */	rlwimi r6, r7, 0x10, 6, 0xf
/* 800EF800 000EC740  B0 08 00 20 */	sth r0, 0x20(r8)
/* 800EF804 000EC744  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 800EF808 000EC748  28 0C 00 00 */	cmplwi r12, 0
/* 800EF80C 000EC74C  41 82 00 18 */	beq lbl_800EF824
/* 800EF810 000EC750  7D 88 03 A6 */	mtlr r12
/* 800EF814 000EC754  38 60 00 0F */	li r3, 0xf
/* 800EF818 000EC758  4C C6 31 82 */	crclr 6
/* 800EF81C 000EC75C  4E 80 00 21 */	blrl 
/* 800EF820 000EC760  48 00 00 0C */	b lbl_800EF82C
lbl_800EF824:
/* 800EF824 000EC764  38 60 00 0F */	li r3, 0xf
/* 800EF828 000EC768  4B FF E2 89 */	bl __OSUnhandledException
lbl_800EF82C:
/* 800EF82C 000EC76C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800EF830 000EC770  38 21 00 08 */	addi r1, r1, 8
/* 800EF834 000EC774  7C 08 03 A6 */	mtlr r0
/* 800EF838 000EC778  4E 80 00 20 */	blr 

.global OSProtectRange
OSProtectRange:
/* 800EF83C 000EC77C  7C 08 02 A6 */	mflr r0
/* 800EF840 000EC780  90 01 00 04 */	stw r0, 4(r1)
/* 800EF844 000EC784  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800EF848 000EC788  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 800EF84C 000EC78C  3B 43 00 00 */	addi r26, r3, 0
/* 800EF850 000EC790  28 1A 00 04 */	cmplwi r26, 4
/* 800EF854 000EC794  40 80 00 98 */	bge lbl_800EF8EC
/* 800EF858 000EC798  7C 64 2A 14 */	add r3, r4, r5
/* 800EF85C 000EC79C  38 03 03 FF */	addi r0, r3, 0x3ff
/* 800EF860 000EC7A0  54 9B 00 2A */	rlwinm r27, r4, 0, 0, 0x15
/* 800EF864 000EC7A4  54 1D 00 2A */	rlwinm r29, r0, 0, 0, 0x15
/* 800EF868 000EC7A8  38 7B 00 00 */	addi r3, r27, 0
/* 800EF86C 000EC7AC  54 DF 07 BE */	clrlwi r31, r6, 0x1e
/* 800EF870 000EC7B0  7C 9B E8 50 */	subf r4, r27, r29
/* 800EF874 000EC7B4  4B FF CE A5 */	bl DCFlushRange
/* 800EF878 000EC7B8  4B FF F3 C1 */	bl OSDisableInterrupts
/* 800EF87C 000EC7BC  3C 00 80 00 */	lis r0, 0x8000
/* 800EF880 000EC7C0  7C 1E D4 30 */	srw r30, r0, r26
/* 800EF884 000EC7C4  3B 83 00 00 */	addi r28, r3, 0
/* 800EF888 000EC7C8  38 7E 00 00 */	addi r3, r30, 0
/* 800EF88C 000EC7CC  4B FF F7 75 */	bl __OSMaskInterrupts
/* 800EF890 000EC7D0  3C 60 CC 00 */	lis r3, 0xCC004000@ha
/* 800EF894 000EC7D4  38 A3 40 00 */	addi r5, r3, 0xCC004000@l
/* 800EF898 000EC7D8  57 43 10 3A */	slwi r3, r26, 2
/* 800EF89C 000EC7DC  57 60 B4 3E */	rlwinm r0, r27, 0x16, 0x10, 0x1f
/* 800EF8A0 000EC7E0  7C 05 1B 2E */	sthx r0, r5, r3
/* 800EF8A4 000EC7E4  57 A4 B4 3E */	rlwinm r4, r29, 0x16, 0x10, 0x1f
/* 800EF8A8 000EC7E8  7C 65 1A 14 */	add r3, r5, r3
/* 800EF8AC 000EC7EC  B0 83 00 02 */	sth r4, 2(r3)
/* 800EF8B0 000EC7F0  38 85 00 10 */	addi r4, r5, 0x10
/* 800EF8B4 000EC7F4  57 46 08 3C */	slwi r6, r26, 1
/* 800EF8B8 000EC7F8  38 00 00 03 */	li r0, 3
/* 800EF8BC 000EC7FC  A0 A5 00 10 */	lhz r5, 0x10(r5)
/* 800EF8C0 000EC800  7C 03 30 30 */	slw r3, r0, r6
/* 800EF8C4 000EC804  7F E0 30 30 */	slw r0, r31, r6
/* 800EF8C8 000EC808  7C A5 18 78 */	andc r5, r5, r3
/* 800EF8CC 000EC80C  7C A5 03 78 */	or r5, r5, r0
/* 800EF8D0 000EC810  28 1F 00 03 */	cmplwi r31, 3
/* 800EF8D4 000EC814  B0 A4 00 00 */	sth r5, 0(r4)
/* 800EF8D8 000EC818  41 82 00 0C */	beq lbl_800EF8E4
/* 800EF8DC 000EC81C  7F C3 F3 78 */	mr r3, r30
/* 800EF8E0 000EC820  4B FF F7 A9 */	bl __OSUnmaskInterrupts
lbl_800EF8E4:
/* 800EF8E4 000EC824  7F 83 E3 78 */	mr r3, r28
/* 800EF8E8 000EC828  4B FF F3 79 */	bl OSRestoreInterrupts
lbl_800EF8EC:
/* 800EF8EC 000EC82C  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 800EF8F0 000EC830  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800EF8F4 000EC834  38 21 00 30 */	addi r1, r1, 0x30
/* 800EF8F8 000EC838  7C 08 03 A6 */	mtlr r0
/* 800EF8FC 000EC83C  4E 80 00 20 */	blr 

.global Config24MB
Config24MB:
/* 800EF900 000EC840  38 E0 00 00 */	li r7, 0
/* 800EF904 000EC844  3C 80 00 00 */	lis r4, 0x00000002@ha
/* 800EF908 000EC848  38 84 00 02 */	addi r4, r4, 0x00000002@l
/* 800EF90C 000EC84C  3C 60 80 00 */	lis r3, 0x800001FF@ha
/* 800EF910 000EC850  38 63 01 FF */	addi r3, r3, 0x800001FF@l
/* 800EF914 000EC854  3C C0 01 00 */	lis r6, 0x01000002@ha
/* 800EF918 000EC858  38 C6 00 02 */	addi r6, r6, 0x01000002@l
/* 800EF91C 000EC85C  3C A0 81 00 */	lis r5, 0x810000FF@ha
/* 800EF920 000EC860  38 A5 00 FF */	addi r5, r5, 0x810000FF@l
/* 800EF924 000EC864  4C 00 01 2C */	isync 
/* 800EF928 000EC868  7C F8 83 A6 */	mtdbatu 0, r7
/* 800EF92C 000EC86C  7C 99 83 A6 */	mtdbatl 0, r4
/* 800EF930 000EC870  7C 78 83 A6 */	mtdbatu 0, r3
/* 800EF934 000EC874  4C 00 01 2C */	isync 
/* 800EF938 000EC878  7C F0 83 A6 */	mtibatu 0, r7
/* 800EF93C 000EC87C  7C 91 83 A6 */	mtibatl 0, r4
/* 800EF940 000EC880  7C 70 83 A6 */	mtibatu 0, r3
/* 800EF944 000EC884  4C 00 01 2C */	isync 
/* 800EF948 000EC888  7C FC 83 A6 */	mtdbatu 2, r7
/* 800EF94C 000EC88C  7C DD 83 A6 */	mtdbatl 2, r6
/* 800EF950 000EC890  7C BC 83 A6 */	mtdbatu 2, r5
/* 800EF954 000EC894  4C 00 01 2C */	isync 
/* 800EF958 000EC898  7C F4 83 A6 */	mtibatu 2, r7
/* 800EF95C 000EC89C  7C D5 83 A6 */	mtibatl 2, r6
/* 800EF960 000EC8A0  7C B4 83 A6 */	mtibatu 2, r5
/* 800EF964 000EC8A4  4C 00 01 2C */	isync 
/* 800EF968 000EC8A8  7C 60 00 A6 */	mfmsr r3
/* 800EF96C 000EC8AC  60 63 00 30 */	ori r3, r3, 0x30
/* 800EF970 000EC8B0  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800EF974 000EC8B4  7C 68 02 A6 */	mflr r3
/* 800EF978 000EC8B8  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800EF97C 000EC8BC  4C 00 00 64 */	rfi 

.global Config48MB
Config48MB:
/* 800EF980 000EC8C0  38 E0 00 00 */	li r7, 0
/* 800EF984 000EC8C4  3C 80 00 00 */	lis r4, 0x00000002@ha
/* 800EF988 000EC8C8  38 84 00 02 */	addi r4, r4, 0x00000002@l
/* 800EF98C 000EC8CC  3C 60 80 00 */	lis r3, 0x800003FF@ha
/* 800EF990 000EC8D0  38 63 03 FF */	addi r3, r3, 0x800003FF@l
/* 800EF994 000EC8D4  3C C0 02 00 */	lis r6, 0x02000002@ha
/* 800EF998 000EC8D8  38 C6 00 02 */	addi r6, r6, 0x02000002@l
/* 800EF99C 000EC8DC  3C A0 82 00 */	lis r5, 0x820001FF@ha
/* 800EF9A0 000EC8E0  38 A5 01 FF */	addi r5, r5, 0x820001FF@l
/* 800EF9A4 000EC8E4  4C 00 01 2C */	isync 
/* 800EF9A8 000EC8E8  7C F8 83 A6 */	mtdbatu 0, r7
/* 800EF9AC 000EC8EC  7C 99 83 A6 */	mtdbatl 0, r4
/* 800EF9B0 000EC8F0  7C 78 83 A6 */	mtdbatu 0, r3
/* 800EF9B4 000EC8F4  4C 00 01 2C */	isync 
/* 800EF9B8 000EC8F8  7C F0 83 A6 */	mtibatu 0, r7
/* 800EF9BC 000EC8FC  7C 91 83 A6 */	mtibatl 0, r4
/* 800EF9C0 000EC900  7C 70 83 A6 */	mtibatu 0, r3
/* 800EF9C4 000EC904  4C 00 01 2C */	isync 
/* 800EF9C8 000EC908  7C FC 83 A6 */	mtdbatu 2, r7
/* 800EF9CC 000EC90C  7C DD 83 A6 */	mtdbatl 2, r6
/* 800EF9D0 000EC910  7C BC 83 A6 */	mtdbatu 2, r5
/* 800EF9D4 000EC914  4C 00 01 2C */	isync 
/* 800EF9D8 000EC918  7C F4 83 A6 */	mtibatu 2, r7
/* 800EF9DC 000EC91C  7C D5 83 A6 */	mtibatl 2, r6
/* 800EF9E0 000EC920  7C B4 83 A6 */	mtibatu 2, r5
/* 800EF9E4 000EC924  4C 00 01 2C */	isync 
/* 800EF9E8 000EC928  7C 60 00 A6 */	mfmsr r3
/* 800EF9EC 000EC92C  60 63 00 30 */	ori r3, r3, 0x30
/* 800EF9F0 000EC930  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800EF9F4 000EC934  7C 68 02 A6 */	mflr r3
/* 800EF9F8 000EC938  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800EF9FC 000EC93C  4C 00 00 64 */	rfi 

.global RealMode
RealMode:
/* 800EFA00 000EC940  54 63 00 BE */	clrlwi r3, r3, 2
/* 800EFA04 000EC944  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800EFA08 000EC948  7C 60 00 A6 */	mfmsr r3
/* 800EFA0C 000EC94C  54 63 07 32 */	rlwinm r3, r3, 0, 0x1c, 0x19
/* 800EFA10 000EC950  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 800EFA14 000EC954  4C 00 00 64 */	rfi 

.global __OSInitMemoryProtection
__OSInitMemoryProtection:
/* 800EFA18 000EC958  7C 08 02 A6 */	mflr r0
/* 800EFA1C 000EC95C  90 01 00 04 */	stw r0, 4(r1)
/* 800EFA20 000EC960  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800EFA24 000EC964  BF 61 00 3C */	stmw r27, 0x3c(r1)
/* 800EFA28 000EC968  3F 60 80 00 */	lis r27, 0x800000F0@ha
/* 800EFA2C 000EC96C  83 FB 00 F0 */	lwz r31, 0x800000F0@l(r27)
/* 800EFA30 000EC970  4B FF F2 09 */	bl OSDisableInterrupts
/* 800EFA34 000EC974  3C 80 CC 00 */	lis r4, 0xCC004000@ha
/* 800EFA38 000EC978  3B 84 40 00 */	addi r28, r4, 0xCC004000@l
/* 800EFA3C 000EC97C  38 00 00 00 */	li r0, 0
/* 800EFA40 000EC980  B0 1C 00 20 */	sth r0, 0x20(r28)
/* 800EFA44 000EC984  38 00 00 FF */	li r0, 0xff
/* 800EFA48 000EC988  7C 7E 1B 78 */	mr r30, r3
/* 800EFA4C 000EC98C  B0 1C 00 10 */	sth r0, 0x10(r28)
/* 800EFA50 000EC990  3C 60 F0 00 */	lis r3, 0xf000
/* 800EFA54 000EC994  4B FF F5 AD */	bl __OSMaskInterrupts
/* 800EFA58 000EC998  3C 60 80 0F */	lis r3, MEMIntrruptHandler@ha
/* 800EFA5C 000EC99C  3B A3 F7 D0 */	addi r29, r3, MEMIntrruptHandler@l
/* 800EFA60 000EC9A0  7F A4 EB 78 */	mr r4, r29
/* 800EFA64 000EC9A4  38 60 00 00 */	li r3, 0
/* 800EFA68 000EC9A8  4B FF F2 1D */	bl __OSSetInterruptHandler
/* 800EFA6C 000EC9AC  7F A4 EB 78 */	mr r4, r29
/* 800EFA70 000EC9B0  38 60 00 01 */	li r3, 1
/* 800EFA74 000EC9B4  4B FF F2 11 */	bl __OSSetInterruptHandler
/* 800EFA78 000EC9B8  7F A4 EB 78 */	mr r4, r29
/* 800EFA7C 000EC9BC  38 60 00 02 */	li r3, 2
/* 800EFA80 000EC9C0  4B FF F2 05 */	bl __OSSetInterruptHandler
/* 800EFA84 000EC9C4  7F A4 EB 78 */	mr r4, r29
/* 800EFA88 000EC9C8  38 60 00 03 */	li r3, 3
/* 800EFA8C 000EC9CC  4B FF F1 F9 */	bl __OSSetInterruptHandler
/* 800EFA90 000EC9D0  7F A4 EB 78 */	mr r4, r29
/* 800EFA94 000EC9D4  38 60 00 04 */	li r3, 4
/* 800EFA98 000EC9D8  4B FF F1 ED */	bl __OSSetInterruptHandler
/* 800EFA9C 000EC9DC  3C 60 80 4B */	lis r3, ResetFunctionInfo_2@ha
/* 800EFAA0 000EC9E0  38 63 9D F0 */	addi r3, r3, ResetFunctionInfo_2@l
/* 800EFAA4 000EC9E4  48 00 08 01 */	bl OSRegisterResetFunction
/* 800EFAA8 000EC9E8  80 7B 00 F0 */	lwz r3, 0xf0(r27)
/* 800EFAAC 000EC9EC  80 1B 00 28 */	lwz r0, 0x28(r27)
/* 800EFAB0 000EC9F0  7C 03 00 40 */	cmplw r3, r0
/* 800EFAB4 000EC9F4  40 80 00 24 */	bge lbl_800EFAD8
/* 800EFAB8 000EC9F8  3C 03 FE 80 */	addis r0, r3, 0xfe80
/* 800EFABC 000EC9FC  28 00 00 00 */	cmplwi r0, 0
/* 800EFAC0 000ECA00  40 82 00 18 */	bne lbl_800EFAD8
/* 800EFAC4 000ECA04  3C 60 81 80 */	lis r3, 0x8180
/* 800EFAC8 000ECA08  3C 80 01 80 */	lis r4, 0x180
/* 800EFACC 000ECA0C  4B FF CC 21 */	bl DCInvalidateRange
/* 800EFAD0 000ECA10  38 00 00 02 */	li r0, 2
/* 800EFAD4 000ECA14  B0 1C 00 28 */	sth r0, 0x28(r28)
lbl_800EFAD8:
/* 800EFAD8 000ECA18  3C 00 01 80 */	lis r0, 0x180
/* 800EFADC 000ECA1C  7C 1F 00 40 */	cmplw r31, r0
/* 800EFAE0 000ECA20  41 81 00 14 */	bgt lbl_800EFAF4
/* 800EFAE4 000ECA24  3C 60 80 0F */	lis r3, Config24MB@ha
/* 800EFAE8 000ECA28  38 63 F9 00 */	addi r3, r3, Config24MB@l
/* 800EFAEC 000ECA2C  4B FF FF 15 */	bl RealMode
/* 800EFAF0 000ECA30  48 00 00 1C */	b lbl_800EFB0C
lbl_800EFAF4:
/* 800EFAF4 000ECA34  3C 00 03 00 */	lis r0, 0x300
/* 800EFAF8 000ECA38  7C 1F 00 40 */	cmplw r31, r0
/* 800EFAFC 000ECA3C  41 81 00 10 */	bgt lbl_800EFB0C
/* 800EFB00 000ECA40  3C 60 80 0F */	lis r3, Config48MB@ha
/* 800EFB04 000ECA44  38 63 F9 80 */	addi r3, r3, Config48MB@l
/* 800EFB08 000ECA48  4B FF FE F9 */	bl RealMode
lbl_800EFB0C:
/* 800EFB0C 000ECA4C  3C 60 08 00 */	lis r3, 0x800
/* 800EFB10 000ECA50  4B FF F5 79 */	bl __OSUnmaskInterrupts
/* 800EFB14 000ECA54  7F C3 F3 78 */	mr r3, r30
/* 800EFB18 000ECA58  4B FF F1 49 */	bl OSRestoreInterrupts
/* 800EFB1C 000ECA5C  BB 61 00 3C */	lmw r27, 0x3c(r1)
/* 800EFB20 000ECA60  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800EFB24 000ECA64  38 21 00 50 */	addi r1, r1, 0x50
/* 800EFB28 000ECA68  7C 08 03 A6 */	mtlr r0
/* 800EFB2C 000ECA6C  4E 80 00 20 */	blr 
