.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global TRKSaveExtended1Block
TRKSaveExtended1Block:
/* 800BFA60 000BC9A0  3C 40 80 4F */	lis r2, gTRKCPUState@h
/* 800BFA64 000BC9A4  60 42 43 28 */	ori r2, r2, gTRKCPUState@l
/* 800BFA68 000BC9A8  7E 00 04 A6 */	mfsr r16, 0
/* 800BFA6C 000BC9AC  7E 21 04 A6 */	mfsr r17, 1
/* 800BFA70 000BC9B0  7E 42 04 A6 */	mfsr r18, 2
/* 800BFA74 000BC9B4  7E 63 04 A6 */	mfsr r19, 3
/* 800BFA78 000BC9B8  7E 84 04 A6 */	mfsr r20, 4
/* 800BFA7C 000BC9BC  7E A5 04 A6 */	mfsr r21, 5
/* 800BFA80 000BC9C0  7E C6 04 A6 */	mfsr r22, 6
/* 800BFA84 000BC9C4  7E E7 04 A6 */	mfsr r23, 7
/* 800BFA88 000BC9C8  7F 08 04 A6 */	mfsr r24, 8
/* 800BFA8C 000BC9CC  7F 29 04 A6 */	mfsr r25, 9
/* 800BFA90 000BC9D0  7F 4A 04 A6 */	mfsr r26, 0xa
/* 800BFA94 000BC9D4  7F 6B 04 A6 */	mfsr r27, 0xb
/* 800BFA98 000BC9D8  7F 8C 04 A6 */	mfsr r28, 0xc
/* 800BFA9C 000BC9DC  7F AD 04 A6 */	mfsr r29, 0xd
/* 800BFAA0 000BC9E0  7F CE 04 A6 */	mfsr r30, 0xe
/* 800BFAA4 000BC9E4  7F EF 04 A6 */	mfsr r31, 0xf
/* 800BFAA8 000BC9E8  BE 02 01 A8 */	stmw r16, lbl_8051E508@sda21(r2)
/* 800BFAAC 000BC9EC  7D 4C 42 E6 */	mftb r10, 0x10c
/* 800BFAB0 000BC9F0  7D 6D 42 E6 */	mftbu r11
/* 800BFAB4 000BC9F4  7D 90 FA A6 */	mfspr r12, 0x3f0
/* 800BFAB8 000BC9F8  7D B1 FA A6 */	mfspr r13, 0x3f1
/* 800BFABC 000BC9FC  7D DB 02 A6 */	mfspr r14, 0x1b
/* 800BFAC0 000BCA00  7D FF 42 A6 */	mfpvr r15
/* 800BFAC4 000BCA04  7E 10 82 A6 */	mfibatu r16, 0
/* 800BFAC8 000BCA08  7E 31 82 A6 */	mfibatl r17, 0
/* 800BFACC 000BCA0C  7E 52 82 A6 */	mfibatu r18, 1
/* 800BFAD0 000BCA10  7E 73 82 A6 */	mfibatl r19, 1
/* 800BFAD4 000BCA14  7E 94 82 A6 */	mfibatu r20, 2
/* 800BFAD8 000BCA18  7E B5 82 A6 */	mfibatl r21, 2
/* 800BFADC 000BCA1C  7E D6 82 A6 */	mfibatu r22, 3
/* 800BFAE0 000BCA20  7E F7 82 A6 */	mfibatl r23, 3
/* 800BFAE4 000BCA24  7F 18 82 A6 */	mfdbatu r24, 0
/* 800BFAE8 000BCA28  7F 39 82 A6 */	mfdbatl r25, 0
/* 800BFAEC 000BCA2C  7F 5A 82 A6 */	mfdbatu r26, 1
/* 800BFAF0 000BCA30  7F 7B 82 A6 */	mfdbatl r27, 1
/* 800BFAF4 000BCA34  7F 9C 82 A6 */	mfdbatu r28, 2
/* 800BFAF8 000BCA38  7F BD 82 A6 */	mfdbatl r29, 2
/* 800BFAFC 000BCA3C  7F DE 82 A6 */	mfdbatu r30, 3
/* 800BFB00 000BCA40  7F FF 82 A6 */	mfdbatl r31, 3
/* 800BFB04 000BCA44  BD 42 01 E8 */	stmw r10, lbl_8051E548@sda21(r2)
/* 800BFB08 000BCA48  7E D9 02 A6 */	mfspr r22, 0x19
/* 800BFB0C 000BCA4C  7E F3 02 A6 */	mfdar r23
/* 800BFB10 000BCA50  7F 12 02 A6 */	mfdsisr r24
/* 800BFB14 000BCA54  7F 30 42 A6 */	mfspr r25, 0x110
/* 800BFB18 000BCA58  7F 51 42 A6 */	mfspr r26, 0x111
/* 800BFB1C 000BCA5C  7F 72 42 A6 */	mfspr r27, 0x112
/* 800BFB20 000BCA60  7F 93 42 A6 */	mfspr r28, 0x113
/* 800BFB24 000BCA64  3B A0 00 00 */	li r29, 0
/* 800BFB28 000BCA68  7F D2 FA A6 */	mfspr r30, 0x3f2
/* 800BFB2C 000BCA6C  7F FA 42 A6 */	mfspr r31, 0x11a
/* 800BFB30 000BCA70  BE C2 02 5C */	stmw r22, lbl_8051E5BC@sda21(r2)
/* 800BFB34 000BCA74  7E 90 E2 A6 */	mfspr r20, 0x390
/* 800BFB38 000BCA78  7E B1 E2 A6 */	mfspr r21, 0x391
/* 800BFB3C 000BCA7C  7E D2 E2 A6 */	mfspr r22, 0x392
/* 800BFB40 000BCA80  7E F3 E2 A6 */	mfspr r23, 0x393
/* 800BFB44 000BCA84  7F 14 E2 A6 */	mfspr r24, 0x394
/* 800BFB48 000BCA88  7F 35 E2 A6 */	mfspr r25, 0x395
/* 800BFB4C 000BCA8C  7F 56 E2 A6 */	mfspr r26, 0x396
/* 800BFB50 000BCA90  7F 77 E2 A6 */	mfspr r27, 0x397
/* 800BFB54 000BCA94  7F 98 E2 A6 */	mfspr r28, 0x398
/* 800BFB58 000BCA98  7F B9 E2 A6 */	mfspr r29, 0x399
/* 800BFB5C 000BCA9C  7F DA E2 A6 */	mfspr r30, 0x39a
/* 800BFB60 000BCAA0  7F FB E2 A6 */	mfspr r31, 0x39b
/* 800BFB64 000BCAA4  BE 82 02 FC */	stmw r20, lbl_8051E65C@sda21(r2)
/* 800BFB68 000BCAA8  48 00 00 48 */	b lbl_800BFBB0
/* 800BFB6C 000BCAAC  7E 00 EA A6 */	mfspr r16, 0x3a0
/* 800BFB70 000BCAB0  7E 27 EA A6 */	mfspr r17, 0x3a7
/* 800BFB74 000BCAB4  7E 48 EA A6 */	mfspr r18, 0x3a8
/* 800BFB78 000BCAB8  7E 69 EA A6 */	mfspr r19, 0x3a9
/* 800BFB7C 000BCABC  7E 8A EA A6 */	mfspr r20, 0x3aa
/* 800BFB80 000BCAC0  7E AB EA A6 */	mfspr r21, 0x3ab
/* 800BFB84 000BCAC4  7E CC EA A6 */	mfspr r22, 0x3ac
/* 800BFB88 000BCAC8  7E ED EA A6 */	mfspr r23, 0x3ad
/* 800BFB8C 000BCACC  7F 0E EA A6 */	mfspr r24, 0x3ae
/* 800BFB90 000BCAD0  7F 2F EA A6 */	mfspr r25, 0x3af
/* 800BFB94 000BCAD4  7F 50 EA A6 */	mfspr r26, 0x3b0
/* 800BFB98 000BCAD8  7F 77 EA A6 */	mfspr r27, 0x3b7
/* 800BFB9C 000BCADC  7F 9F EA A6 */	mfspr r28, 0x3bf
/* 800BFBA0 000BCAE0  7F B6 FA A6 */	mfspr r29, 0x3f6
/* 800BFBA4 000BCAE4  7F D7 FA A6 */	mfspr r30, 0x3f7
/* 800BFBA8 000BCAE8  7F FF FA A6 */	mfspr r31, 0x3ff
/* 800BFBAC 000BCAEC  BE 02 02 B8 */	stmw r16, lbl_8051E618@sda21(r2)
lbl_800BFBB0:
/* 800BFBB0 000BCAF0  7E 75 FA A6 */	mfspr r19, 0x3f5
/* 800BFBB4 000BCAF4  7E 99 EA A6 */	mfspr r20, 0x3b9
/* 800BFBB8 000BCAF8  7E BA EA A6 */	mfspr r21, 0x3ba
/* 800BFBBC 000BCAFC  7E DD EA A6 */	mfspr r22, 0x3bd
/* 800BFBC0 000BCB00  7E FE EA A6 */	mfspr r23, 0x3be
/* 800BFBC4 000BCB04  7F 1B EA A6 */	mfspr r24, 0x3bb
/* 800BFBC8 000BCB08  7F 38 EA A6 */	mfspr r25, 0x3b8
/* 800BFBCC 000BCB0C  7F 5C EA A6 */	mfspr r26, 0x3bc
/* 800BFBD0 000BCB10  7F 7C FA A6 */	mfspr r27, 0x3fc
/* 800BFBD4 000BCB14  7F 9D FA A6 */	mfspr r28, 0x3fd
/* 800BFBD8 000BCB18  7F BE FA A6 */	mfspr r29, 0x3fe
/* 800BFBDC 000BCB1C  7F DB FA A6 */	mfspr r30, 0x3FB
/* 800BFBE0 000BCB20  7F F9 FA A6 */	mfspr r31, 0x3f9
/* 800BFBE4 000BCB24  BE 62 02 84 */	stmw r19, lbl_8051E5E4@sda21(r2)
/* 800BFBE8 000BCB28  4E 80 00 20 */	blr 
/* 800BFBEC 000BCB2C  7F 30 F2 A6 */	mfspr r25, 0x3d0
/* 800BFBF0 000BCB30  7F 51 F2 A6 */	mfspr r26, 0x3d1
/* 800BFBF4 000BCB34  7F 72 F2 A6 */	mfspr r27, 0x3d2
/* 800BFBF8 000BCB38  7F 93 F2 A6 */	mfspr r28, 0x3d3
/* 800BFBFC 000BCB3C  7F B4 F2 A6 */	mfspr r29, 0x3D4
/* 800BFC00 000BCB40  7F D5 F2 A6 */	mfspr r30, 0x3D5
/* 800BFC04 000BCB44  7F F6 F2 A6 */	mfspr r31, 0x3d6
/* 800BFC08 000BCB48  BF 22 02 40 */	stmw r25, lbl_8051E5A0@sda21(r2)
/* 800BFC0C 000BCB4C  7F F6 02 A6 */	mfspr r31, 0x16
/* 800BFC10 000BCB50  93 E2 02 78 */	stw r31, lbl_8051E5D8@sda21(r2)
/* 800BFC14 000BCB54  4E 80 00 20 */	blr 

.global TRKRestoreExtended1Block
TRKRestoreExtended1Block:
/* 800BFC18 000BCB58  3C 40 80 4F */	lis r2, gTRKCPUState@h
/* 800BFC1C 000BCB5C  60 42 43 28 */	ori r2, r2, gTRKCPUState@l
/* 800BFC20 000BCB60  3C A0 80 4A */	lis r5, gTRKRestoreFlags@h
/* 800BFC24 000BCB64  60 A5 68 B0 */	ori r5, r5, gTRKRestoreFlags@l
/* 800BFC28 000BCB68  88 65 00 00 */	lbz r3, 0(r5)
/* 800BFC2C 000BCB6C  88 C5 00 01 */	lbz r6, 1(r5)
/* 800BFC30 000BCB70  38 00 00 00 */	li r0, 0
/* 800BFC34 000BCB74  98 05 00 00 */	stb r0, 0(r5)
/* 800BFC38 000BCB78  98 05 00 01 */	stb r0, 1(r5)
/* 800BFC3C 000BCB7C  2C 03 00 00 */	cmpwi r3, 0
/* 800BFC40 000BCB80  41 82 00 14 */	beq lbl_800BFC54
/* 800BFC44 000BCB84  83 02 01 E8 */	lwz r24, lbl_8051E548@sda21(r2)
/* 800BFC48 000BCB88  83 22 01 EC */	lwz r25, lbl_8051E54C@sda21(r2)
/* 800BFC4C 000BCB8C  7F 1C 43 A6 */	mttbl r24
/* 800BFC50 000BCB90  7F 3D 43 A6 */	mttbu r25
lbl_800BFC54:
/* 800BFC54 000BCB94  BA 82 02 FC */	lmw r20, lbl_8051E65C@sda21(r2)
/* 800BFC58 000BCB98  7E 90 E3 A6 */	mtspr 0x390, r20
/* 800BFC5C 000BCB9C  7E B1 E3 A6 */	mtspr 0x391, r21
/* 800BFC60 000BCBA0  7E D2 E3 A6 */	mtspr 0x392, r22
/* 800BFC64 000BCBA4  7E F3 E3 A6 */	mtspr 0x393, r23
/* 800BFC68 000BCBA8  7F 14 E3 A6 */	mtspr 0x394, r24
/* 800BFC6C 000BCBAC  7F 35 E3 A6 */	mtspr 0x395, r25
/* 800BFC70 000BCBB0  7F 56 E3 A6 */	mtspr 0x396, r26
/* 800BFC74 000BCBB4  7F 77 E3 A6 */	mtspr 0x397, r27
/* 800BFC78 000BCBB8  7F 98 E3 A6 */	mtspr 0x398, r28
/* 800BFC7C 000BCBBC  7F DA E3 A6 */	mtspr 0x39a, r30
/* 800BFC80 000BCBC0  7F FB E3 A6 */	mtspr 0x39b, r31
/* 800BFC84 000BCBC4  48 00 00 1C */	b lbl_800BFCA0
/* 800BFC88 000BCBC8  BB 42 02 E0 */	lmw r26, lbl_8051E640@sda21(r2)
/* 800BFC8C 000BCBCC  7F 50 EB A6 */	mtspr 0x3b0, r26
/* 800BFC90 000BCBD0  7F 77 EB A6 */	mtspr 0x3b7, r27
/* 800BFC94 000BCBD4  7F B6 FB A6 */	mtspr 0x3f6, r29
/* 800BFC98 000BCBD8  7F D7 FB A6 */	mtspr 0x3f7, r30
/* 800BFC9C 000BCBDC  7F FF FB A6 */	mtspr 0x3ff, r31
lbl_800BFCA0:
/* 800BFCA0 000BCBE0  BA 62 02 84 */	lmw r19, lbl_8051E5E4@sda21(r2)
/* 800BFCA4 000BCBE4  7E 75 FB A6 */	mtspr 0x3f5, r19
/* 800BFCA8 000BCBE8  7E 99 EB A6 */	mtspr 0x3b9, r20
/* 800BFCAC 000BCBEC  7E BA EB A6 */	mtspr 0x3ba, r21
/* 800BFCB0 000BCBF0  7E DD EB A6 */	mtspr 0x3bd, r22
/* 800BFCB4 000BCBF4  7E FE EB A6 */	mtspr 0x3be, r23
/* 800BFCB8 000BCBF8  7F 1B EB A6 */	mtspr 0x3bb, r24
/* 800BFCBC 000BCBFC  7F 38 EB A6 */	mtspr 0x3b8, r25
/* 800BFCC0 000BCC00  7F 5C EB A6 */	mtspr 0x3bc, r26
/* 800BFCC4 000BCC04  7F 7C FB A6 */	mtspr 0x3fc, r27
/* 800BFCC8 000BCC08  7F 9D FB A6 */	mtspr 0x3fd, r28
/* 800BFCCC 000BCC0C  7F BE FB A6 */	mtspr 0x3fe, r29
/* 800BFCD0 000BCC10  7F DB FB A6 */	mtictc r30
/* 800BFCD4 000BCC14  7F F9 FB A6 */	mtspr 0x3f9, r31
/* 800BFCD8 000BCC18  48 00 00 34 */	b lbl_800BFD0C
/* 800BFCDC 000BCC1C  2C 06 00 00 */	cmpwi r6, 0
/* 800BFCE0 000BCC20  41 82 00 0C */	beq lbl_800BFCEC
/* 800BFCE4 000BCC24  83 42 02 78 */	lwz r26, lbl_8051E5D8@sda21(r2)
/* 800BFCE8 000BCC28  7F 56 03 A6 */	mtspr 0x16, r26
lbl_800BFCEC:
/* 800BFCEC 000BCC2C  BB 22 02 40 */	lmw r25, lbl_8051E5A0@sda21(r2)
/* 800BFCF0 000BCC30  7F 30 F3 A6 */	mtspr 0x3d0, r25
/* 800BFCF4 000BCC34  7F 51 F3 A6 */	mtspr 0x3d1, r26
/* 800BFCF8 000BCC38  7F 72 F3 A6 */	mtspr 0x3d2, r27
/* 800BFCFC 000BCC3C  7F 93 F3 A6 */	mtspr 0x3d3, r28
/* 800BFD00 000BCC40  7F B4 F3 A6 */	mtspr 0x3D4, r29
/* 800BFD04 000BCC44  7F D5 F3 A6 */	mtspr 0x3D5, r30
/* 800BFD08 000BCC48  7F F6 F3 A6 */	mtspr 0x3d6, r31
lbl_800BFD0C:
/* 800BFD0C 000BCC4C  BA 02 01 A8 */	lmw r16, lbl_8051E508@sda21(r2)
/* 800BFD10 000BCC50  7E 00 01 A4 */	mtsr 0, r16
/* 800BFD14 000BCC54  7E 21 01 A4 */	mtsr 1, r17
/* 800BFD18 000BCC58  7E 42 01 A4 */	mtsr 2, r18
/* 800BFD1C 000BCC5C  7E 63 01 A4 */	mtsr 3, r19
/* 800BFD20 000BCC60  7E 84 01 A4 */	mtsr 4, r20
/* 800BFD24 000BCC64  7E A5 01 A4 */	mtsr 5, r21
/* 800BFD28 000BCC68  7E C6 01 A4 */	mtsr 6, r22
/* 800BFD2C 000BCC6C  7E E7 01 A4 */	mtsr 7, r23
/* 800BFD30 000BCC70  7F 08 01 A4 */	mtsr 8, r24
/* 800BFD34 000BCC74  7F 29 01 A4 */	mtsr 9, r25
/* 800BFD38 000BCC78  7F 4A 01 A4 */	mtsr 0xa, r26
/* 800BFD3C 000BCC7C  7F 6B 01 A4 */	mtsr 0xb, r27
/* 800BFD40 000BCC80  7F 8C 01 A4 */	mtsr 0xc, r28
/* 800BFD44 000BCC84  7F AD 01 A4 */	mtsr 0xd, r29
/* 800BFD48 000BCC88  7F CE 01 A4 */	mtsr 0xe, r30
/* 800BFD4C 000BCC8C  7F EF 01 A4 */	mtsr 0xf, r31
/* 800BFD50 000BCC90  B9 82 01 F0 */	lmw r12, lbl_8051E550@sda21(r2)
/* 800BFD54 000BCC94  7D 90 FB A6 */	mtspr 0x3f0, r12
/* 800BFD58 000BCC98  7D B1 FB A6 */	mtspr 0x3f1, r13
/* 800BFD5C 000BCC9C  7D DB 03 A6 */	mtspr 0x1b, r14
/* 800BFD60 000BCCA0  7D FF 43 A6 */	mtspr 0x11f, r15
/* 800BFD64 000BCCA4  7E 10 83 A6 */	mtibatu 0, r16
/* 800BFD68 000BCCA8  7E 31 83 A6 */	mtibatl 0, r17
/* 800BFD6C 000BCCAC  7E 52 83 A6 */	mtibatu 1, r18
/* 800BFD70 000BCCB0  7E 73 83 A6 */	mtibatl 1, r19
/* 800BFD74 000BCCB4  7E 94 83 A6 */	mtibatu 2, r20
/* 800BFD78 000BCCB8  7E B5 83 A6 */	mtibatl 2, r21
/* 800BFD7C 000BCCBC  7E D6 83 A6 */	mtibatu 3, r22
/* 800BFD80 000BCCC0  7E F7 83 A6 */	mtibatl 3, r23
/* 800BFD84 000BCCC4  7F 18 83 A6 */	mtdbatu 0, r24
/* 800BFD88 000BCCC8  7F 39 83 A6 */	mtdbatl 0, r25
/* 800BFD8C 000BCCCC  7F 5A 83 A6 */	mtdbatu 1, r26
/* 800BFD90 000BCCD0  7F 7B 83 A6 */	mtdbatl 1, r27
/* 800BFD94 000BCCD4  7F 9C 83 A6 */	mtdbatu 2, r28
/* 800BFD98 000BCCD8  7F BD 83 A6 */	mtdbatl 2, r29
/* 800BFD9C 000BCCDC  7F DE 83 A6 */	mtdbatu 3, r30
/* 800BFDA0 000BCCE0  7F FF 83 A6 */	mtdbatl 3, r31
/* 800BFDA4 000BCCE4  BA C2 02 5C */	lmw r22, lbl_8051E5BC@sda21(r2)
/* 800BFDA8 000BCCE8  7E D9 03 A6 */	mtspr 0x19, r22
/* 800BFDAC 000BCCEC  7E F3 03 A6 */	mtdar r23
/* 800BFDB0 000BCCF0  7F 12 03 A6 */	mtdsisr r24
/* 800BFDB4 000BCCF4  7F 30 43 A6 */	mtspr 0x110, r25
/* 800BFDB8 000BCCF8  7F 51 43 A6 */	mtspr 0x111, r26
/* 800BFDBC 000BCCFC  7F 72 43 A6 */	mtspr 0x112, r27
/* 800BFDC0 000BCD00  7F 93 43 A6 */	mtspr 0x113, r28
/* 800BFDC4 000BCD04  7F D2 FB A6 */	mtspr 0x3f2, r30
/* 800BFDC8 000BCD08  7F FA 43 A6 */	mtspr 0x11a, r31
/* 800BFDCC 000BCD0C  4E 80 00 20 */	blr 
