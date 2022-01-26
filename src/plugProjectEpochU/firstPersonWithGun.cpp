#include "types.h"
#include "Epoch/firstPersonWithGun.h"
#include "Game/FakePiki.h"
#include "Game/Piki.h"
#include "Game/Navi.h"
#include "ObjectTypes.h"
#include "Game/gameSystem.h"
#include "SoundID.h"
#include "PSSystem/SysIF.h"
#include "efx/TSimple.h"

// extern struct HoudaiShotGunMgr* Game::Houdai::sNaviGunMgr;

namespace Game {

// HoudaiShotGunMgr* sNaviGunMgr;
static int sEfxId           = 339;
static bool isCStickCamera  = true;
static bool isBouncySphere  = true;
static bool isParticleSpawn = true;

void firstPersonGunCamera(PlayCamera& player_camera) // sets player_camera angle
// hooked at 0x8023F928 in playCamera.s
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
				useNaviController(player);
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
// UNUSED
/*
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
*/
bool gunmodeCstick(FakePiki& param_1)
// hooked at 0x8013EB4C in fakePiki.s
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
	Vector3f particle_position = navi->getPosition();
	Vector3f cstick_pos        = navi->m_cStickTargetVector;
	// OSReport("cstickpos.x = %f\n", cstick_pos.x);
	// OSReport("cstickpos.y = %f\n", cstick_pos.y);
	// OSReport("cstickpos.z = %f\n", cstick_pos.z);
	particle_position.x += (100.0f * cstick_pos.x);
	particle_position.y += 5.0f /* (100.0f * navi->m_padinput->cstickdeflection)*/;
	particle_position.z += (100.0f * cstick_pos.z);
	util::SpawnParticle_1(efx_id, particle_position);
}

void naviBouncySphere(Game::Navi* navi)
{
	Vector3f sphere_pos = navi->getPosition();
	Vector3f cstick_pos = navi->m_cStickTargetVector;

	sphere_pos.x += (100.0f * cstick_pos.x);
	// sphere_pos.y += 5.0f /* (100.0f * navi->m_padinput->cstickdeflection)*/;
	sphere_pos.z += (100.0f * cstick_pos.z);

	// Create a sphere with a radius of 75 at offset from active Navi's position
	Sys::Sphere detectionSphere(sphere_pos, 75);
	Game::CellIteratorArg arg(detectionSphere);

	// Create the iterator based on the sphere
	Game::CellIterator iterator(arg);

	// Initialise properly
	iterator.first();

	// Loop until there are no objects left
	while (!iterator.isDone()) {
		// Grab the current object by calling *iterator
		Game::CellObject* obj = *iterator;

		// Repel any Pikis from the particle sphere.
		if (obj->getObjType() == OBJTYPE_Piki) {
			Game::Piki* piki_obj = (Game::Piki*)obj;
			Vector3f piki_pos    = piki_obj->getPosition();

			// Turn the position into a direction (velocity), pushes the Piki away from the sphere
			piki_pos.x -= sphere_pos.x;
			piki_pos.y = 10.0f;
			piki_pos.z -= sphere_pos.z;

			// Exaggerate the velocity
			piki_pos.x *= 25;
			piki_pos.z *= 25;

			piki_obj->setVelocity(piki_pos);
		}

		// Iterate to the next object
		iterator.next();
	}
}

void useNaviController(Navi* player)
{
	if ((player != nullptr) /* && (input != 0)*/) {
		u32 input = (player->m_padinput->press);
		// OSReport("input = %x\n", input); // reports input as unsigned long
		if ((player->m_padinput->cstickdeflection > 0.1f) && isParticleSpawn) {
			naviParticleSpawn(player, sEfxId);
		}
		if ((player->m_padinput->cstickdeflection > 0.1f) && isBouncySphere) {
			naviBouncySphere(player);
		}

		// toggle flags and increment particle ID
		if ((input & 0x10) != 0) // press Z (0x10) to toggle C-Stick camera control
		{
			isCStickCamera = !isCStickCamera;
		}
		if ((input & 0x1) != 0) // press D-PAD left (0x1) to toggle Bouncy Sphere
		{
			isBouncySphere = !isBouncySphere;
			PSSystem::spSysIF->playSystemSe(PSSE_EV_HOME_PELLET_FINISH, 0);
		}
		if ((input & 0x2) != 0) // press D-PAD right (0x2) to toggle particle spawn
		{
			isParticleSpawn = !isParticleSpawn;
			PSSystem::spSysIF->playSystemSe(PSSE_EV_ROCKET_LAND, 0);
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
// UNUSED
/*
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
*/
// UNUSED
// void createShotGun() { sNaviGunMgr = new HoudaiShotGunMgr; };

} // namespace Game
