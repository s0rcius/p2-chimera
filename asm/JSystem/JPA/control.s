.include "macros.inc"
.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 0x8
.global __vt__Q217JStudio_JParticle13TCreateObject
__vt__Q217JStudio_JParticle13TCreateObject:
	.4byte 0
	.4byte 0
	.4byte __dt__Q217JStudio_JParticle13TCreateObjectFv
	.4byte create__Q217JStudio_JParticle13TCreateObjectFPPQ27JStudio7TObjectRCQ47JStudio3stb4data20TParse_TBlock_object

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global "createObject_PARTICLE_JPA___Q217JStudio_JParticle21@unnamed@control_cpp@FRCQ47JStudio3stb4data20TParse_TBlock_objectP17JPAEmitterManagerPCQ26JStage7TSystem"
"createObject_PARTICLE_JPA___Q217JStudio_JParticle21@unnamed@control_cpp@FRCQ47JStudio3stb4data20TParse_TBlock_objectP17JPAEmitterManagerPCQ26JStage7TSystem":
/* 80006220 00003160  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80006224 00003164  7C 08 02 A6 */	mflr r0
/* 80006228 00003168  90 01 00 24 */	stw r0, 0x24(r1)
/* 8000622C 0000316C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80006230 00003170  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80006234 00003174  7C BE 2B 78 */	mr r30, r5
/* 80006238 00003178  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8000623C 0000317C  7C 9D 23 78 */	mr r29, r4
/* 80006240 00003180  93 81 00 10 */	stw r28, 0x10(r1)
/* 80006244 00003184  7C 7C 1B 78 */	mr r28, r3
/* 80006248 00003188  38 60 01 A8 */	li r3, 0x1a8
/* 8000624C 0000318C  48 01 DC 59 */	bl __nw__FUl
/* 80006250 00003190  7C 7F 1B 79 */	or. r31, r3, r3
/* 80006254 00003194  41 82 00 14 */	beq lbl_80006268
/* 80006258 00003198  7F A4 EB 78 */	mr r4, r29
/* 8000625C 0000319C  7F C5 F3 78 */	mr r5, r30
/* 80006260 000031A0  4B FF F4 61 */	bl __ct__Q217JStudio_JParticle17TAdaptor_particleFP17JPAEmitterManagerPCQ26JStage7TSystem
/* 80006264 000031A4  7C 7F 1B 78 */	mr r31, r3
lbl_80006268:
/* 80006268 000031A8  28 1F 00 00 */	cmplwi r31, 0
/* 8000626C 000031AC  40 82 00 0C */	bne lbl_80006278
/* 80006270 000031B0  38 60 00 00 */	li r3, 0
/* 80006274 000031B4  48 00 00 58 */	b lbl_800062CC
lbl_80006278:
/* 80006278 000031B8  38 60 00 38 */	li r3, 0x38
/* 8000627C 000031BC  48 01 DC 29 */	bl __nw__FUl
/* 80006280 000031C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80006284 000031C4  41 82 00 14 */	beq lbl_80006298
/* 80006288 000031C8  7F 84 E3 78 */	mr r4, r28
/* 8000628C 000031CC  7F E5 FB 78 */	mr r5, r31
/* 80006290 000031D0  48 00 8A E1 */	bl __ct__Q27JStudio16TObject_particleFRCQ47JStudio3stb4data20TParse_TBlock_objectPQ27JStudio17TAdaptor_particle
/* 80006294 000031D4  7C 7E 1B 78 */	mr r30, r3
lbl_80006298:
/* 80006298 000031D8  28 1E 00 00 */	cmplwi r30, 0
/* 8000629C 000031DC  40 82 00 0C */	bne lbl_800062A8
/* 800062A0 000031E0  3B C0 00 00 */	li r30, 0
/* 800062A4 000031E4  48 00 00 24 */	b lbl_800062C8
lbl_800062A8:
/* 800062A8 000031E8  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 800062AC 000031EC  28 03 00 00 */	cmplwi r3, 0
/* 800062B0 000031F0  41 82 00 18 */	beq lbl_800062C8
/* 800062B4 000031F4  81 83 00 00 */	lwz r12, 0(r3)
/* 800062B8 000031F8  7F C4 F3 78 */	mr r4, r30
/* 800062BC 000031FC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800062C0 00003200  7D 89 03 A6 */	mtctr r12
/* 800062C4 00003204  4E 80 04 21 */	bctrl 
lbl_800062C8:
/* 800062C8 00003208  7F C3 F3 78 */	mr r3, r30
lbl_800062CC:
/* 800062CC 0000320C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800062D0 00003210  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800062D4 00003214  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800062D8 00003218  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800062DC 0000321C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800062E0 00003220  7C 08 03 A6 */	mtlr r0
/* 800062E4 00003224  38 21 00 20 */	addi r1, r1, 0x20
/* 800062E8 00003228  4E 80 00 20 */	blr 

.global __dt__Q217JStudio_JParticle13TCreateObjectFv
__dt__Q217JStudio_JParticle13TCreateObjectFv:
/* 800062EC 0000322C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800062F0 00003230  7C 08 02 A6 */	mflr r0
/* 800062F4 00003234  90 01 00 14 */	stw r0, 0x14(r1)
/* 800062F8 00003238  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800062FC 0000323C  7C 9F 23 78 */	mr r31, r4
/* 80006300 00003240  93 C1 00 08 */	stw r30, 8(r1)
/* 80006304 00003244  7C 7E 1B 79 */	or. r30, r3, r3
/* 80006308 00003248  41 82 00 28 */	beq lbl_80006330
/* 8000630C 0000324C  3C A0 80 4A */	lis r5, __vt__Q217JStudio_JParticle13TCreateObject@ha
/* 80006310 00003250  38 80 00 00 */	li r4, 0
/* 80006314 00003254  38 05 E2 D8 */	addi r0, r5, __vt__Q217JStudio_JParticle13TCreateObject@l
/* 80006318 00003258  90 1E 00 00 */	stw r0, 0(r30)
/* 8000631C 0000325C  48 00 69 9D */	bl __dt__Q27JStudio13TCreateObjectFv
/* 80006320 00003260  7F E0 07 35 */	extsh. r0, r31
/* 80006324 00003264  40 81 00 0C */	ble lbl_80006330
/* 80006328 00003268  7F C3 F3 78 */	mr r3, r30
/* 8000632C 0000326C  48 01 DD 89 */	bl __dl__FPv
lbl_80006330:
/* 80006330 00003270  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80006334 00003274  7F C3 F3 78 */	mr r3, r30
/* 80006338 00003278  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000633C 0000327C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80006340 00003280  7C 08 03 A6 */	mtlr r0
/* 80006344 00003284  38 21 00 10 */	addi r1, r1, 0x10
/* 80006348 00003288  4E 80 00 20 */	blr 

.global create__Q217JStudio_JParticle13TCreateObjectFPPQ27JStudio7TObjectRCQ47JStudio3stb4data20TParse_TBlock_object
create__Q217JStudio_JParticle13TCreateObjectFPPQ27JStudio7TObjectRCQ47JStudio3stb4data20TParse_TBlock_object:
/* 8000634C 0000328C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80006350 00003290  7C 08 02 A6 */	mflr r0
/* 80006354 00003294  80 E5 00 00 */	lwz r7, 0(r5)
/* 80006358 00003298  3C C0 4A 50 */	lis r6, 0x4A505443@ha
/* 8000635C 0000329C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80006360 000032A0  38 06 54 43 */	addi r0, r6, 0x4A505443@l
/* 80006364 000032A4  7C 66 1B 78 */	mr r6, r3
/* 80006368 000032A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000636C 000032AC  7C 9F 23 78 */	mr r31, r4
/* 80006370 000032B0  80 67 00 04 */	lwz r3, 4(r7)
/* 80006374 000032B4  7C 03 00 00 */	cmpw r3, r0
/* 80006378 000032B8  41 82 00 08 */	beq lbl_80006380
/* 8000637C 000032BC  48 00 00 10 */	b lbl_8000638C
lbl_80006380:
/* 80006380 000032C0  3C 60 80 00 */	lis r3, "createObject_PARTICLE_JPA___Q217JStudio_JParticle21@unnamed@control_cpp@FRCQ47JStudio3stb4data20TParse_TBlock_objectP17JPAEmitterManagerPCQ26JStage7TSystem"@ha
/* 80006384 000032C4  39 83 62 20 */	addi r12, r3, "createObject_PARTICLE_JPA___Q217JStudio_JParticle21@unnamed@control_cpp@FRCQ47JStudio3stb4data20TParse_TBlock_objectP17JPAEmitterManagerPCQ26JStage7TSystem"@l
/* 80006388 000032C8  48 00 00 0C */	b lbl_80006394
lbl_8000638C:
/* 8000638C 000032CC  38 60 00 00 */	li r3, 0
/* 80006390 000032D0  48 00 00 20 */	b lbl_800063B0
lbl_80006394:
/* 80006394 000032D4  7C A3 2B 78 */	mr r3, r5
/* 80006398 000032D8  80 86 00 0C */	lwz r4, 0xc(r6)
/* 8000639C 000032DC  80 A6 00 10 */	lwz r5, 0x10(r6)
/* 800063A0 000032E0  7D 89 03 A6 */	mtctr r12
/* 800063A4 000032E4  4E 80 04 21 */	bctrl 
/* 800063A8 000032E8  90 7F 00 00 */	stw r3, 0(r31)
/* 800063AC 000032EC  38 60 00 01 */	li r3, 1
lbl_800063B0:
/* 800063B0 000032F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800063B4 000032F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800063B8 000032F8  7C 08 03 A6 */	mtlr r0
/* 800063BC 000032FC  38 21 00 10 */	addi r1, r1, 0x10
/* 800063C0 00003300  4E 80 00 20 */	blr 
