#include "types.h"
#include "Epoch/firstPersonWithGun.h"
#include "Game/FakePiki.h"
#include "Game/gameSystem.h"
#include "SoundID.h"
#include "PSSystem/SysIF.h"
#include "efx/TSimple.h"

// extern struct HoudaiShotGunMgr* Game::Houdai::sNaviGunMgr;

namespace Game {

HoudaiShotGunMgr* sNaviGunMgr;
static int sEfxId          = 339;
static bool isCStickCamera = true;

void firstPersonGunCamera(PlayCamera& player_camera) // sets player_camera angle
{
	if (gameSystem != nullptr) {
		Navi* player = (player_camera.target);

		if (player != nullptr) {
			Controller* input = (player->m_padinput);
			if (input != nullptr) {
				float cstick_horizontal = (input->cstick_lr);
				// OSReport("cstick_horizontal = %f\n", cstick_horizontal);
				float cstick_vertical = (input->cstick_up);
				// OSReport("cstick_vertical = %f\n", cstick_vertical);
				// cstick controls camera angle
				useNaviController(player_camera, player);
				if ((isCStickCamera) && (gameSystem->m_isInCave == false)) { // checks boolean conditional
					if (__fabs(cstick_horizontal) > 0.05f) {
						(player_camera.camAngle2) -= 0.02f * cstick_horizontal;
					}
					if (__fabs(cstick_vertical) > 0.05f) {
						(player_camera.zoomCam) -= 0.02f * cstick_vertical;
					}
					// clamp camera to 45 degrees vertical variance
					if ((player_camera.zoomCam) > 0.5f) {
						(player_camera.zoomCam) = 0.5f;
					}
					if ((player_camera.zoomCam) < -0.5f) {
						(player_camera.zoomCam) = -0.5f;
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
	if (!sNaviGunMgr) {
		createShotGun();
	}

	u32 input = player->m_padinput->press;
	if (input) {
		sNaviGunMgr->gunPosMatrix = (Matrixf*)&player->m_mainMatrix;
		player->m_mainMatrix.m_matrix.structView.ty += 15;

		float aim                                   = player->m_mainMatrix.m_matrix.structView.xx;
		player->m_mainMatrix.m_matrix.structView.xx = -player->m_mainMatrix.m_matrix.structView.xz;
		player->m_mainMatrix.m_matrix.structView.xz = aim;

		if (input & 0x40) // press L (0x40)
		{
			PSSystem::spSysIF->playSystemSe(PSSE_EN_HOUDAI_SHOT, 0);
		}
	}
}

bool gunmodeCstick(FakePiki& param_1)

{
	if (gameSystem == nullptr) {
		return false;
	} else if ((!isCStickCamera) || (gameSystem->m_isInCave == true)) {
		return param_1.useMoveRotation();
	} else {
		return false;
	}
}

void naviParticleSpawn(Game::Navi* navi, int efx_id)
{
	Vector3f overhead_position = navi->getPosition();
	overhead_position.x += (-100.0f * navi->m_padinput->cstick_lr);
	overhead_position.y += 5.0f /* (100.0f * navi->m_padinput->cstickdeflection)*/;
	overhead_position.z += (100.0f * navi->m_padinput->cstick_up);
	util::SpawnParticle_1(efx_id, overhead_position);
}

void useNaviController(PlayCamera& camera, Navi* player)
{
	if ((player != nullptr) /* && (input != 0)*/) {
		u32 input = (player->m_padinput->press);
		// OSReport("input = %x\n", input); // reports input as unsigned long
		if (player->m_padinput->cstickdeflection > 0.1f) {
			naviParticleSpawn(player, sEfxId);
		}
		if ((input & 0x10) != 0) // press Z (0x10) to disable C-Stick camera control
		{
			isCStickCamera = !isCStickCamera;
		}
		if ((input & 0x40) != 0) // press L (0x40) to increment spawned particle ID
		{
			OSReport("we are incrementing particle ID\n");
			PSSystem::spSysIF->playSystemSe(PSSE_PK_RESULT_INCREMENT, 0);
			sEfxId++;
			if (sEfxId > 694) { // highest particle id is 694
				sEfxId = 0;
			}
			OSReport("Particle spawned with ID %i\n", sEfxId);
		}
	}
	return;
}

HoudaiShotGunMgr::HoudaiShotGunMgr()
{
	HoudaiObject   = nullptr;
	aimingActive   = 0;
	lockon_on      = 0;
	shotgun_on     = 0;
	field_0x7      = 0;
	gun_angletimer = 0.0f;
	gun_angle      = 0.0f;
	tamaMatrix     = nullptr;
	gunPosMatrix   = nullptr;
	TargetX        = 0.0f;
	TargetY        = 0.0f;
	TargetZ        = 0.0f;
	Lockon_X       = 0.0f;
	Lockon_Y       = 0.0f;
	Lockon_Z       = 0.0f;
	efx_sight      = nullptr;
	gunNode1       = new HoudaiShotGunNode;
	gunNode2       = new HoudaiShotGunNode;

	// __ct__Q34Game6Houdai16HoudaiShotGunMgrFPQ34Game6Houdai3Obj(nullptr);
};

void createShotGun() { sNaviGunMgr = new HoudaiShotGunMgr; };

} // namespace Game
