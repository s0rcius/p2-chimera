#include "Game/Navi.h"
#include "efx/TSimple.h"

/*
 * BY INTNS / AXIOT 2022
 *
 * This file is meant to serve as an introduction into modding Pikmin 2 via assisted decompilation.
 *
 * This example mod, when built, adds a particle system to Olimar that can be moved around using the C-stick.
 *
 * This mod may have bugs or unintended side-effects, and is only meant to be used for learning purposes.
 */

// Spawns a single particle at a set position with an effect ID, for a list of IDs go to
// https://pikmintkb.com/wiki/Pikmin_2_particle_list
inline void SpawnParticle_1(u16 effectID, const Vector3f& position)
{
	efx::TSimple1 simple_fx(effectID, nullptr);
	efx::Arg settings(position);
	simple_fx.create(&settings);
}

namespace mod {
// A barebones controller structure just to find the C-stick controls
struct CStickControls {
	u8 _00[0x58];
	f32 m_cStickHoriz;    // _58
	f32 m_cStickVertical; // _5C
};

// Our manager for the particle attached to the player
struct PlayerParticle {
	PlayerParticle(u16 idx)
	    : m_fxGenerator(idx, nullptr)
	{
		m_offset.x = m_offset.y = 0;
	}

	// Clamps the position of the particle to "max_offset"
	// distance away from the player
	void clampOffset()
	{
		const float max_offset = 75;

		if (m_offset.x > max_offset) {
			m_offset.x = max_offset;
		} else if (m_offset.x < -max_offset) {
			m_offset.x = -max_offset;
		}

		if (m_offset.y > max_offset) {
			m_offset.y = max_offset;
		} else if (m_offset.y < -max_offset) {
			m_offset.y = -max_offset;
		}
	}

	// Code that is ran each time NaviWalkState::exec runs
	void handleFrame(CStickControls* controls)
	{
		const float move_speed = 3.75f;

		// Move left and right
		if (controls->m_cStickHoriz > 0.5f) {
			m_offset.y -= move_speed;
		} else if (controls->m_cStickHoriz < -0.5f) {
			m_offset.y += move_speed;
		}

		// Moving forward and backward
		if (controls->m_cStickVertical > 0.5f) {
			m_offset.x -= move_speed;
		} else if (controls->m_cStickVertical < -0.5f) {
			m_offset.x += move_speed;
		}

		// Make sure the effect doesn't get too far away
		clampOffset();

		// Find the final position by applying the offsets
		Vector3f final_pos = m_origin;
		final_pos.x += m_offset.x;
		final_pos.z += m_offset.y;
		efx::Arg settings(final_pos);

		// Finally, spawn the particle
		m_fxGenerator.create(&settings);
		m_fxGenerator.forceKill();
	}

	// Our particle generator
	efx::TSimple1 m_fxGenerator;

	Vector3f m_origin;
	Vector2f m_offset; // X is applied on X, Y is applied on Z
};

static PlayerParticle gPlayerParticleMgr(19);

// Handle_NaviWalkState__3modFPQ24Game4Navi
// This function is branched to from (8017E988 - plugProjectKandoU/naviState.s - line 2560)
void Handle_NaviWalkState(Game::Navi* navi)
{
	// Hacky way of doing it - better alternative would be to fill out pad input properly
	CStickControls* controller = (CStickControls*)navi->m_padinput;

	// We'll only apply the particle to Olimar, which has m_padinput defined, this code
	// runs for player 2 too, so if it is nullptr (!controller) then it is not Olimar
	if (!controller) {
		return;
	}

	// Set the origin for the particle and spawn
	gPlayerParticleMgr.m_origin = navi->getPosition();
	gPlayerParticleMgr.handleFrame(controller);
}
} // namespace mod