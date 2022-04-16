#include "types.h"
#include "Game/FakePiki.h"
#include "Game/Piki.h"
#include "Game/Navi.h"
#include "Game/gameSystem.h"
#include "SoundID.h"
#include "PSSystem/SysIF.h"
#include "Epoch/playCamera.h"

namespace Game {

void useNaviController(Navi* player);

static Vector3f storedPos;
static bool isWarpControls = false;

void warpCam(PlayCamera& player_camera) // grabs Navi from player_camera
// hooked at 0x8023F928 in playCamera.s
{
	if (gameSystem != nullptr) {
		Navi* player = (player_camera.target);

		if (player != nullptr) {
			Controller* input = (player->m_padinput);
			if (input != nullptr) {
				useNaviController(player);
			}
		}
	}
	return;
}

void useNaviController(Navi* player)
{
	if ((player != nullptr) /* && (input != 0)*/) {
		u32 input = (player->m_padinput->press);

		// toggle flags
		if ((input & 0x10) != 0) // press Z (0x10) to toggle warp controls
		{
			isWarpControls = !isWarpControls;
			PSSystem::spSysIF->playSystemSe(PSSE_EN_ONIKURAGE_VOMIT, 0);
		}
		if (((input & 0x1) != 0) && isWarpControls) // press D-PAD left (0x1) to store navi position
		{
			PSSystem::spSysIF->playSystemSe(PSSE_EV_HOME_PELLET_FINISH, 0);
			storedPos = player->getPosition();
		}
		if (((input & 0x2) != 0) && isWarpControls) // press D-PAD right (0x2) to load navi position
		{
			PSSystem::spSysIF->playSystemSe(PSSE_EV_ROCKET_LAND, 0);
			player->setPosition(storedPos, false);
		}
	}
	return;
}

} // namespace Game
