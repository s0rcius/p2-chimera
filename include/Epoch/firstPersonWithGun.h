#ifndef _FIRSTPERSONWITHGUN_H
#define _FIRSTPERSONWITHGUN_H

#include "types.h"
#include "Epoch/playCamera.h"
#include "Game/Navi.h"
#include "Vector3.h"

namespace Game {

typedef struct HoudaiShotGunMgr HoudaiShotGunMgr, *PHoudaiShotGunMgr;
typedef struct HoudaiShotGunNode HoudaiShotGunNode, *PHoudaiShotGunNode;
typedef struct NaviShotGunMgr NaviShotGunMgr, *PNaviShotGunMgr;
typedef struct NaviShotGunNode NaviShotGunNode, *PNaviShotGunNode;

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

struct NaviShotGunMgr { /* PlaceHolder Class Structure */
	// struct houdaiObj* HoudaiObject;
	// float gun_angletimer;
	float gun_angle;
	struct Matrixf* tamaMatrix;
	struct Matrixf* gunPosMatrix;
	float TargetX;
	float TargetY;
	float TargetZ;
	// float Lockon_X;
	// float Lockon_Y;
	// float Lockon_Z;
	// struct THdamaSight* efx_sight;
	struct NaviShotGunNode* gunNode1;
	struct NaviShotGunNode* gunNode2;
};

struct NaviShotGunNode { /* PlaceHolder Class Structure */
	// uint* this;
	u32 filler_00;
	struct CNode* field_0x4;
	struct astruct_4* field_0x8;
	struct CNode* field_0xc;
	struct astruct_4* astruct_4_pointer;
	u32 field_0x14;
	// struct houdaiObj* owner;
	struct THdamaShell* efx_shell;
	Vector3f bounds;
	Vector3f field_0x2c;
};

// int abs(int in);
// JAISe* playSystemSe(SysIF* this, SoundID soundid, ulong flag);
// u32 isModCameraFinished(PlayCamera* this);
extern "C" {
void emitShotGun__Q34Game6Houdai3ObjFv(HoudaiShotGunMgr*);
}
// void OSReport(char* uParm1, ...);
// void panic_f(char* filename, int line, char* param_3, ...);
// char* TSimpleMtx3::simpleMTX3Create(Arg* param_1);
// uint JSystem__operator_new(u32 structsize);

static HoudaiShotGunMgr* sHoudaiShotGunMgr;

void pikminGunFire(PlayCamera& camera, Navi* player);

} // namespace Game
#endif