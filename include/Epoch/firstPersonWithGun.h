#ifndef _FIRSTPERSONWITHGUN_H
#define _FIRSTPERSONWITHGUN_H

#include "types.h"
#include "Epoch/playCamera.h"
#include "Game/Navi.h"
#include "Vector3.h"
#include "JSystem/JKR/JKRHeap.h"

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
void emitShotGun__Q34Game6Houdai16HoudaiShotGunMgrFv(HoudaiShotGunMgr*);
// void __ct__Q34Game6Houdai16HoudaiShotGunMgrFPQ34Game6Houdai3Obj(void*);
}
// void OSReport(char* uParm1, ...);
// void panic_f(char* filename, int line, char* param_3, ...);
// char* TSimpleMtx3::simpleMTX3Create(Arg* param_1);
// uint JSystem__operator_new(u32 structsize);

void pikminGunFire(PlayCamera& camera, Navi* player);
void createShotGun();
void naviEmitShotGun(HoudaiShotGunMgr* shotmgr);


struct astruct_4 {
	u32 field_0x0;
	struct astruct_4* inc;
	struct CNode* field_0x8;
	struct CNode* field_0xc;
	u32 field_0x10;
	char* field_0x14;
	float info;
	int* id;
	float first_angle_x;
	float first_angle_y;
	float first_angle_z;
	float last_angle_x;
	float last_angle_y;
	float last_angle_z;
};
} // namespace Game
typedef struct TSimpleMtx3 TSimpleMtx3, *PTSimpleMtx3;

struct HDamaShootVt {
	u32 a;
	u32 b;
	u32 c;
	u32 d;
	u32 e;
};

struct TSimpleMtx3 { /* PlaceHolder Structure */
	void* vtptr;
	int id;
	int id2;
	int id3;
	u8 field_0xa;
	u8 field_0xb;
	int* mgr;
	int* unk;
	struct Matrixf* mtx;
};
#endif
