#include "Game/Navi.h"
#include "Game/Piki.h"
#include "efx/TSimple.h"
#include "ObjectTypes.h"

// Bad breath demo - Axiot/Intns 2022

namespace Game {
enum MoviePlayerFlags { MPF_IS_ACTIVE = 1 };

struct MoviePlayer {
	u8 _00[0x1F0];
	u32 m_flags;
};

extern MoviePlayer* moviePlayer;
} // namespace Game

namespace mod {
struct CStickControls {
	u8 _00[0x58];
	f32 m_cStickHoriz;    // _58
	f32 m_cStickVertical; // _5C
};

// Handle_NaviWalkState__3modFPQ24Game4Navi
// This function is branched to from (8017E988 - plugProjectKandoU/naviState.s - line 2560)
void Handle_NaviWalkState(Game::Navi* navi)
{
	CStickControls* controller = (CStickControls*)navi->m_padinput;

	// Exit early if we're in a cutscene or there is no controller on this player
	if (!controller || Game::moviePlayer->m_flags & Game::MPF_IS_ACTIVE) {
		return;
	}

	Vector3f naviPos = navi->getPosition();

	// Create a sphere with a radius of 75 at olimar's position
	Sys::Sphere detectionSphere(naviPos, 75);
	Game::CellIteratorArg arg(detectionSphere);

	// Create the iterator based on the sphere
	Game::CellIterator iterator(arg);

	// Initialise properly
	iterator.first();

	// Loop until there are no objects left
	while (!iterator.isDone()) {
		// Grab the current object by calling *iterator
		Game::CellObject* obj = *iterator;

		// Push any Pikis away from Olimar - he has bad breath.
		if (obj->getObjType() == OBJTYPE_Piki) {
			Game::Piki* piki_obj = (Game::Piki*)obj;
			Vector3f piki_pos    = piki_obj->getPosition();

			// Turn the position into a direction (velocity), pushes the Piki away from the player
			piki_pos.x -= naviPos.x;
			piki_pos.y = 0;
			piki_pos.z -= naviPos.z;

			// Exaggerate the velocity
			piki_pos.x *= 25;
			piki_pos.z *= 25;

			piki_obj->setVelocity(piki_pos);
		}

		// Iterate to the next object
		iterator.next();
	}
}
} // namespace mod