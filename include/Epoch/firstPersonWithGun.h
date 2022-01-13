#ifndef _FIRSTPERSONWITHGUN_H
#define _FIRSTPERSONWITHGUN_H

#include "types.h"
#include "Epoch/playCamera.h"
#include "Game/Navi.h"
#include "Vector3.h"
#include "JSystem/JKR/JKRHeap.h"
#include "efx/TSimple.h"

namespace Game {

typedef struct HoudaiShotGunMgr HoudaiShotGunMgr, *PHoudaiShotGunMgr;
typedef struct HoudaiShotGunNode HoudaiShotGunNode, *PHoudaiShotGunNode;

struct HoudaiShotGunMgr { /* PlaceHolder Class Structure */
	struct houdaiObj* HoudaiObject;
	u8 aimingActive;
	u8 lockon_on;
	u8 shotgun_on;
	u8 field_0x7;
	float gun_angletimer;
	float gun_angle;
	struct Matrixf* tamaMatrix;
	struct Matrixf* gunPosMatrix;
	float TargetX;
	float TargetY;
	float TargetZ;
	float Lockon_X;
	float Lockon_Y;
	float Lockon_Z;
	struct THdamaSight* efx_sight;
	struct HoudaiShotGunNode* gunNode1;
	struct HoudaiShotGunNode* gunNode2;

	HoudaiShotGunMgr();
};

struct HoudaiShotGunNode { /* PlaceHolder Class Structure */
	// uint* this;
	u32 filler_00;
	struct CNode* field_0x4;
	struct astruct_4* field_0x8;
	struct CNode* field_0xc;
	struct astruct_4* astruct_4_pointer;
	u32 field_0x14;
	struct houdaiObj* owner;
	struct THdamaShell* efx_shell;
	Vector3f bounds;
	Vector3f field_0x2c;
};

extern "C" {
void emitShotGun__Q34Game6Houdai16HoudaiShotGunMgrFv(HoudaiShotGunMgr*);
// void __ct__Q34Game6Houdai16HoudaiShotGunMgrFPQ34Game6Houdai3Obj(void*);
}

void pikminGunFire(PlayCamera& camera, Navi* player);
void useNaviController(Navi* player);
void createShotGun();
void naviParticleSpawn(Game::Navi* navi, int efx_id);

} // namespace Game

namespace util {
inline void SpawnParticle_1(u16 effectID, const Vector3f& position)
{
	efx::TSimple1 simple_fx(effectID, nullptr);
	efx::Arg settings(position);
	simple_fx.create(&settings);
}
} // namespace util

#endif
