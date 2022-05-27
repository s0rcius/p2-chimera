#include "types.h"

/*
    Generated from dpostproc

    .section .rodata  # 0x804732E0 - 0x8049E220
    .global lbl_80486CD0
    lbl_80486CD0:
        .4byte 0x8369837D
        .4byte 0x8359837D
        .4byte 0x836C815B
        .4byte 0x83578383
        .4byte 0x00000000
        .4byte 0x00000000

    .section .data, "wa"  # 0x8049E220 - 0x804EFC20
    .global __vt__Q34Game7Catfish3Mgr
    __vt__Q34Game7Catfish3Mgr:
        .4byte 0
        .4byte 0
        .4byte doAnimation__Q24Game12EnemyMgrBaseFv
        .4byte doEntry__Q24Game12EnemyMgrBaseFv
        .4byte doSetView__Q24Game12EnemyMgrBaseFi
        .4byte doViewCalc__Q24Game12EnemyMgrBaseFv
        .4byte doSimulation__Q24Game12EnemyMgrBaseFf
        .4byte doDirectDraw__Q24Game12EnemyMgrBaseFR8Graphics
        .4byte doSimpleDraw__16GenericObjectMgrFP8Viewport
        .4byte loadResources__16GenericObjectMgrFv
        .4byte resetMgr__16GenericObjectMgrFv
        .4byte pausable__16GenericObjectMgrFv
        .4byte frozenable__16GenericObjectMgrFv
        .4byte getMatrixLoadType__16GenericObjectMgrFv
        .4byte 0
        .4byte 0
        .4byte "@4@__dt__Q34Game7Catfish3MgrFv"
        .4byte getChildCount__5CNodeFv
        .4byte "@4@getObject__Q24Game12EnemyMgrBaseFPv"
        .4byte "@4@getNext__Q24Game12EnemyMgrBaseFPv"
        .4byte "@4@getStart__Q24Game12EnemyMgrBaseFv"
        .4byte "@4@getEnd__Q24Game12EnemyMgrBaseFv"
        .4byte __dt__Q34Game7Catfish3MgrFv
        .4byte getObject__Q24Game12EnemyMgrBaseFPv
        .4byte getNext__Q24Game12EnemyMgrBaseFPv
        .4byte getStart__Q24Game12EnemyMgrBaseFv
        .4byte getEnd__Q24Game12EnemyMgrBaseFv
        .4byte alloc__Q24Game12EnemyMgrBaseFv
        .4byte birth__Q24Game12EnemyMgrBaseFRQ24Game13EnemyBirthArg
        .4byte getJ3DModelData__Q24Game12EnemyMgrBaseCFv
        .4byte getGenerator__Q24Game12EnemyMgrBaseCFv
        .4byte killAll__Q24Game12EnemyMgrBaseFPQ24Game15CreatureKillArg
        .4byte setupSoundViewerAndBas__Q24Game12EnemyMgrBaseFv
        .4byte setDebugParm__Q24Game12EnemyMgrBaseFUl
        .4byte resetDebugParm__Q24Game12EnemyMgrBaseFUl
        .4byte getMaxObjects__Q24Game12EnemyMgrBaseCFv
        .4byte startMovie__Q24Game12EnemyMgrBaseFv
        .4byte endMovie__Q24Game12EnemyMgrBaseFv
        .4byte get__Q24Game12EnemyMgrBaseFPv
        .4byte isAlwaysMovieActor__Q24Game12EnemyMgrBaseFv
        .4byte createObj__Q34Game7Catfish3MgrFi
        .4byte getEnemy__Q34Game7Catfish3MgrFi
        .4byte doAlloc__Q34Game7Catfish3MgrFv
        .4byte getEnemyTypeID__Q34Game7Catfish3MgrFv
        .4byte createModel__Q24Game12EnemyMgrBaseFv
        .4byte initParms__Q24Game12EnemyMgrBaseFv
        .4byte loadResource__Q24Game12EnemyMgrBaseFv
        .4byte initObjects__Q24Game12EnemyMgrBaseFv
        .4byte initStoneSetting__Q24Game12EnemyMgrBaseFv
        .4byte loadModelData__Q24Game12EnemyMgrBaseFP10JKRArchive
        .4byte loadModelData__Q24Game12EnemyMgrBaseFv
        .4byte loadAnimData__Q24Game12EnemyMgrBaseFv
        .4byte loadTexData__Q24Game12EnemyMgrBaseFv
        .4byte doLoadBmd__Q24Game12EnemyMgrBaseFPv
        .4byte doLoadBdl__Q24Game12EnemyMgrBaseFPv
        .4byte initGenerator__Q24Game12EnemyMgrBaseFv
*/

#include "Game/Entities/Catfish.h"

namespace Game {

/*
 * --INFO--
 * Address:	80276D54
 * Size:	000050
 */
Catfish::Mgr::Mgr(int maxObjs, u8 modelType)
    : EnemyMgrBase(maxObjs, modelType)
{
	m_name = "ナマズマネージャ";
}

/*
 * --INFO--
 * Address:	80276DA4
 * Size:	000048
 */
void Catfish::Mgr::doAlloc() { init(new KochappyBase::Parms); }

/*
 * --INFO--
 * Address:	80276DEC
 * Size:	000060
 */
void Catfish::Mgr::createObj(int amount) { m_objects = new Obj[amount]; }

/*
 * --INFO--
 * Address:	80276E4C
 * Size:	0000EC
 */
Catfish::Obj::~Obj()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r4
	stw      r30, 8(r1)
	or.      r30, r3, r3
	beq      lbl_80276F1C
	lis      r3, __vt__Q34Game7Catfish3Obj@ha
	addi     r5, r30, 0x2d8
	addi     r4, r3, __vt__Q34Game7Catfish3Obj@l
	stw      r4, 0(r30)
	addi     r3, r4, 0x1b0
	addi     r0, r4, 0x308
	stw      r3, 0x178(r30)
	lwz      r3, 0x17c(r30)
	stw      r0, 0(r3)
	lwz      r3, 0x17c(r30)
	subf     r0, r3, r5
	stw      r0, 0xc(r3)
	beq      lbl_80276F0C
	lis      r3, __vt__Q34Game12KochappyBase3Obj@ha
	addi     r4, r3, __vt__Q34Game12KochappyBase3Obj@l
	stw      r4, 0(r30)
	addi     r3, r4, 0x1b0
	addi     r0, r4, 0x308
	stw      r3, 0x178(r30)
	lwz      r3, 0x17c(r30)
	stw      r0, 0(r3)
	lwz      r3, 0x17c(r30)
	subf     r0, r3, r5
	stw      r0, 0xc(r3)
	beq      lbl_80276F0C
	lis      r3, __vt__Q24Game9EnemyBase@ha
	addi     r0, r30, 0x2bc
	addi     r4, r3, __vt__Q24Game9EnemyBase@l
	addi     r3, r30, 0x290
	stw      r4, 0(r30)
	addi     r5, r4, 0x1b0
	addi     r6, r4, 0x2f8
	li       r4, -1
	stw      r5, 0x178(r30)
	lwz      r5, 0x17c(r30)
	stw      r6, 0(r5)
	lwz      r5, 0x17c(r30)
	subf     r0, r5, r0
	stw      r0, 0xc(r5)
	bl       __dt__5CNodeFv

lbl_80276F0C:
	extsh.   r0, r31
	ble      lbl_80276F1C
	mr       r3, r30
	bl       __dl__FPv

lbl_80276F1C:
	lwz      r0, 0x14(r1)
	mr       r3, r30
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	80277000
 * Size:	000008
 */
// AUTOGEN DTOR
} // namespace Game
