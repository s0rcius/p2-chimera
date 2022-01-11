#include "types.h"
#include "Epoch/firstPersonWithGun.h"
#include "Game/FakePiki.h"
#include "Game/gameSystem.h"
#include "SoundID.h"
#include "PSSystem/SysIF.h"

// extern uint* HdamaShootVT;
// extern uint* efxArgDirVT;
// extern struct HoudaiShotGunMgr* Game::Houdai::sHoudaiShotGunMgr;

namespace Game {

void firstPersonGunCamera(PlayCamera& player_camera) // sets player_camera angle

{
	Controller* input;
	Navi* player;
	// HoudaiShotGunMgr* this_00;
	// OSReport("bingus\n"); //this gets reported ok (challenge) and gets
	// reported once (story)
	player = (player_camera.target);
	// OSReport("bongus\n"); //this gets reported ok (challenge) and gets
	// reported once (story)
	if (player != 0) {
		input = (player->m_padinput);
		if (input != 0) {
			float cstick_horizontal = (input->cstick_lr);
			OSReport("cstick_horizontal = %f\n", cstick_horizontal);
			float cstick_vertical   = (input->cstick_up);
			OSReport("cstick_vertical = %f\n", cstick_vertical);
			// panic_f("firstPersonWithGun.c", 0x2d, "P2Assert");

			if ((gameSystem == nullptr) || (gameSystem->m_isInCave == false)) {
				// OSReport("we are not in a cave\n"); //this is never reached

				// this_00 = (_sHoudaiShotGunMgr*)JSystem__operator_new(0x20);
				// if (this_00 != 0) {
				// create_sHoudaiShotGunMgr(this_00); //move this to happen
				// during navi init
				/// }
				// this->ShotgunMgr = this_00;

				if (input != 0) {
					pikminGunFire(player_camera, player);
					if (__fabs(cstick_horizontal) > 0.05f) {
						(player_camera.camAngle2) -= 0.02f * cstick_horizontal;
					}
					if (__fabs(cstick_vertical) > 0.05f) {
						(player_camera.zoomCam) -= 0.02f * cstick_vertical;
					}
					if ((player_camera.zoomCam) > 0.5f) {
						(player_camera.zoomCam) = 0.5f;
					}
					if ((player_camera.zoomCam) < -0.5f) {
						(player_camera.zoomCam) = -0.5f;
					}
					if (player != 0) {
						player->m_faceDir = player_camera.camAngle2 + 3.14f;
					}
				}
			}
		}
	} /* else {
		isModCameraFinished(player_camera);
	}*/
	return;
}
void pikminGunFire(PlayCamera& camera, Navi* player)

{
	float aim;
	u32 input;
	// HoudaiShotGunMgr* this;
	input = (player->m_padinput->press);

	// this = _sHoudaiShotGunMgr;
	OSReport("gunmgr = %x\n", sHoudaiShotGunMgr);
	OSReport("input = %x\n", input);
	OSReport("player = %x\n", player);
	if (((player != 0) && (input != 0)) && (sHoudaiShotGunMgr != 0)) {
		OSReport("gun initialized\n");
		aim                                           = camera.zoomCam;
		sHoudaiShotGunMgr->gunPosMatrix               = (Matrixf*)&player->m_mainMatrix;
		(player->m_mainMatrix).m_matrix.structView.ty = (player->m_mainMatrix).m_matrix.structView.ty + 15;
		(player->m_mainMatrix).m_matrix.structView.xy = (player->m_mainMatrix).m_matrix.structView.xy - aim;
		aim                                           = (player->m_mainMatrix).m_matrix.structView.xx;
		(player->m_mainMatrix).m_matrix.structView.xx = -(player->m_mainMatrix).m_matrix.structView.xz;
		(player->m_mainMatrix).m_matrix.structView.xz = aim;
		if ((input & 0x20) != 0) {
			OSReport("we are TRYING to fire the damn gun\n");
			PSSystem::spSysIF->playSystemSe(PSSE_EN_HOUDAI_SHOT, 0);
			emitShotGun__Q34Game6Houdai3ObjFv(sHoudaiShotGunMgr);
		}
	}
	return;
}

bool gunmodeCstick(FakePiki& param_1)

{
	// uint uVar1;
	if ((gameSystem == nullptr) || (gameSystem->m_isInCave == false)) {
		// uVar1 = 0;
		return false;
	} else {
		return param_1.useMoveRotation();
	}
	// return uVar1;
}

/*void naviEmitShotGun(HoudaiShotGunMgr* this)

{
    float fVar1;
    float fVar2;
    Matrixf* gunMatrix;
    astruct_4* this_00;
    Parms* pPVar4;
    Parms* pPVar5;
    const double inaccuracyThreshold = (0.008);
    double reciprocal_angle;
    double zpos;
    double ty;
    double xpos;
    double xz;
    double xy;
    double xx;
    uint* local_d8;
    float new_angle_x;
    float new_angle_y;
    float new_angle_z;
    float prev_x_angle;
    float prev_y_angle;
    float prev_z_angle;
    TSimpleMtx3 TSimpleMatrix;
    //Matrixf* pMStack164;
    uint random_value;

    this_00 = this->gunNode2->astruct_4_pointer;
    if (this_00 != (astruct_4*)0x0) {
        gunMatrix = this->gunPosMatrix;
        fVar1 = 0.0;
        xy = (double)gunMatrix->xy;
        xz = (double)gunMatrix->xz;
        xx = (double)gunMatrix->xx;
        xpos = (double)gunMatrix->xpos;
        ty = (double)gunMatrix->ty;
        zpos = (double)gunMatrix->zpos;
        fVar2 = (float)(xz * xz) + (float)(xx * xx +
(double)(float)(xy * xy)); if ((0.0 < fVar2) && (fVar1 = fVar2, 0.0 <
fVar2)) { fVar1 = (1.0 / SQRT(fVar2)) * fVar2;
        }
        if (0.0 < fVar1) {
            reciprocal_angle = (double)(1.0 / fVar1);
            xx = (double)(float)(xx * reciprocal_angle);
            xy = (double)(float)(xy * reciprocal_angle);
            xz = (double)(float)(xz * reciprocal_angle);
        }
        random_value = Dolphin::rand();
        xx = RANDOM_VALUE_MAPPED_TO_INT_LESS_THAN_LIMIT(random_value,
inaccuracyThreshold); random_value = Dolphin::rand(); xy =
RANDOM_VALUE_MAPPED_TO_INT_LESS_THAN_LIMIT(random_value, inaccuracyThreshold);
        random_value = Dolphin::rand();
        xz = RANDOM_VALUE_MAPPED_TO_INT_LESS_THAN_LIMIT(random_value,
inaccuracyThreshold); fVar1 = 0.0; fVar2 = (float)(xz * xz) +
(float)(xx * xx + (double)(float)(xy * xy)); if ((0.0 < fVar2)
&& (fVar1 = fVar2, 0.0 < fVar2)) { fVar1 = (1.0 / SQRT(fVar2)) * fVar2;
        }
        if (0.0 < fVar1) {
            reciprocal_angle = (double)(1.0 / fVar1);
            xx = (double)(float)(xx * reciprocal_angle);
            xy = (double)(float)(xy * reciprocal_angle);
            xz = (double)(float)(xz * reciprocal_angle);
        }
        fVar1 = 0.0;
        this_00->first_angle_x = (float)(xpos + (double)(float)(xx * 45.0));
        this_00->first_angle_y = (float)(ty + (double)(float)(xy * 45.0));
        this_00->first_angle_z = (float)(zpos + (double)(float)(xz * 45.0));
        this_00->last_angle_x = (float)(xx * 600.0);
        this_00->last_angle_y = (float)(xy * 600.0);
        this_00->last_angle_z = (float)(xz * 600.0);
        prev_y_angle = this_00->last_angle_y;
        prev_z_angle = this_00->last_angle_z;
        prev_x_angle = this_00->last_angle_x;
        fVar2 = prev_z_angle * prev_z_angle + prev_x_angle * prev_x_angle +
prev_y_angle * prev_y_angle; if ((0.0 < fVar2) && (fVar1 = fVar2, 0.0 < fVar2))
{ fVar1 = (1.0 / SQRT(fVar2)) * fVar2;
        }
        if (0.0 < fVar1) {
            fVar1 = 1.0 / fVar1;
            prev_x_angle = prev_x_angle * fVar1;
            prev_y_angle = prev_y_angle * fVar1;
            prev_z_angle = prev_z_angle * fVar1;
        }
        new_angle_x = this_00->first_angle_x;
        new_angle_y = this_00->first_angle_y;
        new_angle_z = this_00->first_angle_z;;
        this_00->id[4] = (int)&this_00->first_angle_x;
        vt_base(this_00, 0x20, int, 0x8)(this_00->id, &efxArgDirVT);
        CNode__del((CNode*)this_00);
        CNode__add((CNode*)this->gunNode1, (CNode*)this_00);
        //pMStack164 = this->gunPosMatrix;
        TSimpleMatrix.id = Enemy_Houdai_THamaShoot_1;
        TSimpleMatrix.id2 = Enemy_Houdai_THamaShoot_2;
        TSimpleMatrix.id3 = Enemy_Houdai_THdamaShoot_3;
        TSimpleMatrix.mgr = (int*)0x0;
        TSimpleMatrix.unk = (int*)0x0;
        TSimpleMatrix.mtx = (Matrixf*)0x0;
        TSimpleMatrix.this = HdamaShootVT;
        simpleMTX3Create(&TSimpleMatrix);
    }
    return;
}*/

/*void create_sHoudaiShotGunMgr(HoudaiShotGunMgr* this)
//WIP Function
{
    HoudaiShotGunNode* node;
    HoudaiShotGunNode* node2;
    HoudaiShotGunNode* node3;
    THdamaShell* efx1;
    int iVar1;
    Obj* pOVar2;

    this->gun_angle = 0.0;
    node = (HoudaiShotGunNode*)JSystem__operator_new(0x38);
    if (node != (HoudaiShotGunNode*)0x0) {
        pOVar2 = this->HoudaiObject;
        CNode::CNode((CNode*)node);
        node->this =
&plugProjectNishimuraU::__vt__Q34Game6Houdai17HoudaiShotGunNode; node->owner =
pOVar2;
    }
    this->gunNode1 = node;
    node2 = (HoudaiShotGunNode*)JSystem__operator_new(0x38);
    if (node2 != (HoudaiShotGunNode*)0x0) {
        pOVar2 = this->HoudaiObject;
        CNode::CNode((CNode*)node2);
        node2->this =
&plugProjectNishimuraU::__vt__Q34Game6Houdai17HoudaiShotGunNode; node2->owner =
pOVar2;
    }
    this->gunNode2 = node2;
    iVar1 = 0;
    do {
        node3 = (HoudaiShotGunNode*)JSystem__operator_new(0x38);
        if (node3 != (HoudaiShotGunNode*)0x0) {
            pOVar2 = this->HoudaiObject;
            CNode::CNode((CNode*)node3);
            node3->this =
&plugProjectNishimuraU::__vt__Q34Game6Houdai17HoudaiShotGunNode; node3->owner =
pOVar2;
        }
        efx1 = (THdamaShell*)JSystem__operator_new(0x14);
        if (efx1 != (THdamaShell*)0x0) {
            efx1->this = &plugProjectYamashitaU::__vt__Q23efx5TBase;
            efx1->this2 = &JSystem::__vt__18JPAEmitterCallBack;
            efx1->this = (uint*)&plugProjectEbisawaU::__vt__Q23efx5TSync;
            efx1->this2 = &UINT_804e68e0;
            efx1->field_0x8 = 0;
            efx1->field_0xc = Enemy_DangoMushi_TDangoFly_2;
            efx1->field_0xe = 0;
            efx1->this = &plugProjectEbisawaU::__vt__Q23efx9TChasePos;
            efx1->this2 = &UINT_804e6894;
            efx1->field_0x10 = 0;
            efx1->field_0xc = Enemy_Houdai_THdamaShell;
            efx1->this = &plugProjectEbisawaU::__vt__Q23efx11THdamaShell;
            efx1->this2 = &UINT_804e9f5c;
        }
        node3->efx_shell = efx1;
        (node3->bounds).X = sysCommonU::zero_Vector3.X;
        (node3->bounds).Y = sysCommonU::zero_Vector3.Y;
        (node3->bounds).Z = sysCommonU::zero_Vector3.Z;
        (node3->field_0x2c).X = sysCommonU::zero_Vector3.X;
        (node3->field_0x2c).Y = sysCommonU::zero_Vector3.Y;
        (node3->field_0x2c).Z = sysCommonU::zero_Vector3.Z;
        CNode::add((CNode*)this->gunNode2, (CNode*)node3);
        iVar1 = iVar1 + 1;
    } while (iVar1 < 10);
    _sHoudaiShotGunMgr = (HoudaiShotGunMgr*)0x0;
    return;
}*/
} // namespace Game
