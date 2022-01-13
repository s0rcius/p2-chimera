#include "Game/MoviePlayer.h"
#include "Game/Navi.h"
#include "efx/TSimple.h"

namespace util {
inline void SpawnParticle_1(u16 effectID, const Vector3f& position)
{
	efx::TSimple1 simple_fx(effectID, nullptr);
	efx::Arg settings(position);
	simple_fx.create(&settings);
}
} // namespace util

namespace mod {
struct CStickControls {
	u8 _00[0x58];
	f32 m_cStickHoriz;    // _58
	f32 m_cStickVertical; // _5C
};

struct PlayerParticle {
	PlayerParticle(u16 idx)
	    : m_fxGenerator(idx, nullptr)
	{
		m_offset.x = m_offset.y = 0;
	}

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

	efx::TSimple1 m_fxGenerator;

	Vector3f m_origin;
	Vector2f m_offset; // X is applied on X, Y is applied on Z
};

static PlayerParticle gPlayerParticleMgr(19);

// Handle_NaviWalkState__3modFPQ24Game4Navi
// This function is branched to from (8017E988 - plugProjectKandoU/naviState.s - line 2560)
void Handle_NaviWalkState(Game::Navi* navi)
{
	if (Game::moviePlayer->m_flags == Game::MoviePlayer::IS_ACTIVE) {
		return;
	}

	// Hacky way of doing it - better alternative would be to fill out pad input properly
	CStickControls* controller = (CStickControls*)navi->m_padinput;

	// We'll only apply this to Olimar
	if (!controller) {
		return;
	}

	gPlayerParticleMgr.m_origin = navi->getPosition();
	gPlayerParticleMgr.handleFrame(controller);
}
} // namespace mod