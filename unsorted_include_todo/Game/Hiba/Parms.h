#ifndef _GAME_HIBA_PARMS_H
#define _GAME_HIBA_PARMS_H

/*
    __vt__Q34Game4Hiba5Parms:
    .4byte 0
    .4byte 0
    .4byte read__Q34Game4Hiba5ParmsFR6Stream
*/

namespace Game {
namespace Hiba {
	struct Parms {
		virtual void read(Stream&); // _00

		// _00 VTBL
	};
} // namespace Hiba
} // namespace Game

#endif
