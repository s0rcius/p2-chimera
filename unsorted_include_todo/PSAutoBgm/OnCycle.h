#ifndef _PSAUTOBGM_ONCYCLE_H
#define _PSAUTOBGM_ONCYCLE_H

/*
    __vt__Q29PSAutoBgm7OnCycle:
    .4byte 0
    .4byte 0
    .4byte play__Q29PSAutoBgm7OnCycleFP8JASTrack
    .4byte getCycleType__Q29PSAutoBgm7OnCycleFv
    .4byte avoidCheck__Q29PSAutoBgm7OnCycleFv
*/

namespace PSAutoBgm {
struct OnCycle {
	virtual void play(JASTrack*); // _00
	virtual void getCycleType();  // _04
	virtual void avoidCheck();    // _08

	// _00 VTBL
};
} // namespace PSAutoBgm

#endif
