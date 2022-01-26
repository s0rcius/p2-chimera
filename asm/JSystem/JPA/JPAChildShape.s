.include "macros.inc"
.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.global lbl_80516B70
lbl_80516B70:
	.4byte 0x437F0000
.global lbl_80516B74
lbl_80516B74:
	.float 1.0

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global JPARegistChildPrmEnv__FP18JPAEmitterWorkData
JPARegistChildPrmEnv__FP18JPAEmitterWorkData:
/* 8008EE44 0008BD84  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8008EE48 0008BD88  7C 08 02 A6 */	mflr r0
/* 8008EE4C 0008BD8C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8008EE50 0008BD90  38 81 00 0C */	addi r4, r1, 0xc
/* 8008EE54 0008BD94  BF 21 00 24 */	stmw r25, 0x24(r1)
/* 8008EE58 0008BD98  80 A3 00 04 */	lwz r5, 4(r3)
/* 8008EE5C 0008BD9C  83 83 00 00 */	lwz r28, 0(r3)
/* 8008EE60 0008BDA0  38 60 00 01 */	li r3, 1
/* 8008EE64 0008BDA4  80 A5 00 24 */	lwz r5, 0x24(r5)
/* 8008EE68 0008BDA8  88 FC 00 B8 */	lbz r7, 0xb8(r28)
/* 8008EE6C 0008BDAC  80 A5 00 00 */	lwz r5, 0(r5)
/* 8008EE70 0008BDB0  38 07 00 01 */	addi r0, r7, 1
/* 8008EE74 0008BDB4  88 DC 00 B9 */	lbz r6, 0xb9(r28)
/* 8008EE78 0008BDB8  8B E5 00 34 */	lbz r31, 0x34(r5)
/* 8008EE7C 0008BDBC  39 06 00 01 */	addi r8, r6, 1
/* 8008EE80 0008BDC0  8B 25 00 35 */	lbz r25, 0x35(r5)
/* 8008EE84 0008BDC4  7D 5F 01 D6 */	mullw r10, r31, r0
/* 8008EE88 0008BDC8  88 FC 00 BA */	lbz r7, 0xba(r28)
/* 8008EE8C 0008BDCC  88 DC 00 BB */	lbz r6, 0xbb(r28)
/* 8008EE90 0008BDD0  8B 45 00 36 */	lbz r26, 0x36(r5)
/* 8008EE94 0008BDD4  38 07 00 01 */	addi r0, r7, 1
/* 8008EE98 0008BDD8  8B 65 00 37 */	lbz r27, 0x37(r5)
/* 8008EE9C 0008BDDC  39 26 00 01 */	addi r9, r6, 1
/* 8008EEA0 0008BDE0  88 FC 00 BD */	lbz r7, 0xbd(r28)
/* 8008EEA4 0008BDE4  7D 79 41 D6 */	mullw r11, r25, r8
/* 8008EEA8 0008BDE8  89 1C 00 BC */	lbz r8, 0xbc(r28)
/* 8008EEAC 0008BDEC  55 4C C6 3E */	rlwinm r12, r10, 0x18, 0x18, 0x1f
/* 8008EEB0 0008BDF0  9B E1 00 14 */	stb r31, 0x14(r1)
/* 8008EEB4 0008BDF4  88 DC 00 BE */	lbz r6, 0xbe(r28)
/* 8008EEB8 0008BDF8  39 08 00 01 */	addi r8, r8, 1
/* 8008EEBC 0008BDFC  7D 5A 01 D6 */	mullw r10, r26, r0
/* 8008EEC0 0008BE00  8B 85 00 38 */	lbz r28, 0x38(r5)
/* 8008EEC4 0008BE04  8B A5 00 39 */	lbz r29, 0x39(r5)
/* 8008EEC8 0008BE08  38 06 00 01 */	addi r0, r6, 1
/* 8008EECC 0008BE0C  8B C5 00 3A */	lbz r30, 0x3a(r5)
/* 8008EED0 0008BE10  38 E7 00 01 */	addi r7, r7, 1
/* 8008EED4 0008BE14  8B E5 00 3B */	lbz r31, 0x3b(r5)
/* 8008EED8 0008BE18  7D 3B 49 D6 */	mullw r9, r27, r9
/* 8008EEDC 0008BE1C  9B 21 00 15 */	stb r25, 0x15(r1)
/* 8008EEE0 0008BE20  55 6B C6 3E */	rlwinm r11, r11, 0x18, 0x18, 0x1f
/* 8008EEE4 0008BE24  55 4A C6 3E */	rlwinm r10, r10, 0x18, 0x18, 0x1f
/* 8008EEE8 0008BE28  9B 41 00 16 */	stb r26, 0x16(r1)
/* 8008EEEC 0008BE2C  7C DC 41 D6 */	mullw r6, r28, r8
/* 8008EEF0 0008BE30  9B 61 00 17 */	stb r27, 0x17(r1)
/* 8008EEF4 0008BE34  55 28 C6 3E */	rlwinm r8, r9, 0x18, 0x18, 0x1f
/* 8008EEF8 0008BE38  99 81 00 14 */	stb r12, 0x14(r1)
/* 8008EEFC 0008BE3C  7C BD 39 D6 */	mullw r5, r29, r7
/* 8008EF00 0008BE40  99 61 00 15 */	stb r11, 0x15(r1)
/* 8008EF04 0008BE44  54 C7 C6 3E */	rlwinm r7, r6, 0x18, 0x18, 0x1f
/* 8008EF08 0008BE48  9B 81 00 10 */	stb r28, 0x10(r1)
/* 8008EF0C 0008BE4C  99 41 00 16 */	stb r10, 0x16(r1)
/* 8008EF10 0008BE50  7C 1E 01 D6 */	mullw r0, r30, r0
/* 8008EF14 0008BE54  54 A6 C6 3E */	rlwinm r6, r5, 0x18, 0x18, 0x1f
/* 8008EF18 0008BE58  9B A1 00 11 */	stb r29, 0x11(r1)
/* 8008EF1C 0008BE5C  99 01 00 17 */	stb r8, 0x17(r1)
/* 8008EF20 0008BE60  54 05 C6 3E */	rlwinm r5, r0, 0x18, 0x18, 0x1f
/* 8008EF24 0008BE64  9B C1 00 12 */	stb r30, 0x12(r1)
/* 8008EF28 0008BE68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8008EF2C 0008BE6C  9B E1 00 13 */	stb r31, 0x13(r1)
/* 8008EF30 0008BE70  98 E1 00 10 */	stb r7, 0x10(r1)
/* 8008EF34 0008BE74  98 C1 00 11 */	stb r6, 0x11(r1)
/* 8008EF38 0008BE78  98 A1 00 12 */	stb r5, 0x12(r1)
/* 8008EF3C 0008BE7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8008EF40 0008BE80  48 05 97 21 */	bl GXSetTevColor
/* 8008EF44 0008BE84  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8008EF48 0008BE88  38 81 00 08 */	addi r4, r1, 8
/* 8008EF4C 0008BE8C  38 60 00 02 */	li r3, 2
/* 8008EF50 0008BE90  90 01 00 08 */	stw r0, 8(r1)
/* 8008EF54 0008BE94  48 05 97 0D */	bl GXSetTevColor
/* 8008EF58 0008BE98  BB 21 00 24 */	lmw r25, 0x24(r1)
/* 8008EF5C 0008BE9C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8008EF60 0008BEA0  7C 08 03 A6 */	mtlr r0
/* 8008EF64 0008BEA4  38 21 00 40 */	addi r1, r1, 0x40
/* 8008EF68 0008BEA8  4E 80 00 20 */	blr 

.global JPACalcChildAlphaOut__FP18JPAEmitterWorkDataP15JPABaseParticle
JPACalcChildAlphaOut__FP18JPAEmitterWorkDataP15JPABaseParticle:
/* 8008EF6C 0008BEAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8008EF70 0008BEB0  C0 22 88 14 */	lfs f1, lbl_80516B74@sda21(r2)
/* 8008EF74 0008BEB4  C0 04 00 84 */	lfs f0, 0x84(r4)
/* 8008EF78 0008BEB8  C0 42 88 10 */	lfs f2, lbl_80516B70@sda21(r2)
/* 8008EF7C 0008BEBC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8008EF80 0008BEC0  EC 62 00 32 */	fmuls f3, f2, f0
/* 8008EF84 0008BEC4  F0 61 A0 08 */	psq_st f3, 8(r1), 1, qr2
/* 8008EF88 0008BEC8  88 01 00 08 */	lbz r0, 8(r1)
/* 8008EF8C 0008BECC  98 04 00 96 */	stb r0, 0x96(r4)
/* 8008EF90 0008BED0  38 21 00 10 */	addi r1, r1, 0x10
/* 8008EF94 0008BED4  4E 80 00 20 */	blr 

.global JPACalcChildScaleOut__FP18JPAEmitterWorkDataP15JPABaseParticle
JPACalcChildScaleOut__FP18JPAEmitterWorkDataP15JPABaseParticle:
/* 8008EF98 0008BED8  C0 42 88 14 */	lfs f2, lbl_80516B74@sda21(r2)
/* 8008EF9C 0008BEDC  C0 04 00 84 */	lfs f0, 0x84(r4)
/* 8008EFA0 0008BEE0  C0 24 00 68 */	lfs f1, 0x68(r4)
/* 8008EFA4 0008BEE4  EC 02 00 28 */	fsubs f0, f2, f0
/* 8008EFA8 0008BEE8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8008EFAC 0008BEEC  D0 04 00 60 */	stfs f0, 0x60(r4)
/* 8008EFB0 0008BEF0  C0 04 00 84 */	lfs f0, 0x84(r4)
/* 8008EFB4 0008BEF4  C0 24 00 6C */	lfs f1, 0x6c(r4)
/* 8008EFB8 0008BEF8  EC 02 00 28 */	fsubs f0, f2, f0
/* 8008EFBC 0008BEFC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8008EFC0 0008BF00  D0 04 00 64 */	stfs f0, 0x64(r4)
/* 8008EFC4 0008BF04  4E 80 00 20 */	blr 

.global __ct__13JPAChildShapeFPCUc
__ct__13JPAChildShapeFPCUc:
/* 8008EFC8 0008BF08  90 83 00 00 */	stw r4, 0(r3)
/* 8008EFCC 0008BF0C  4E 80 00 20 */	blr 
