#ifndef _GAME_ITEMUJAMUSHI_UJA_H
#define _GAME_ITEMUJAMUSHI_UJA_H

/*
    __vt__Q34Game12ItemUjamushi3Uja:
    .4byte 0
    .4byte 0
    .4byte makeMatrix__Q34Game12ItemUjamushi3UjaFv
    .4byte isVisible__Q34Game12ItemUjamushi3UjaFv
    .4byte isWeed__Q24Game6TFlockFv
    .4byte fear__Q24Game6TFlockFv
    .4byte getRadius__Q24Game6TFlockFv
    .4byte damaged__Q34Game12ItemUjamushi3UjaFf
    .4byte constructor__Q24Game6TFlockFv
*/

namespace Game {
struct TFlock {
	virtual void makeMatrix();   // _00
	virtual void isVisible();    // _04
	virtual void isWeed();       // _08
	virtual void fear();         // _0C
	virtual void getRadius();    // _10
	virtual void damaged(float); // _14
	virtual void constructor();  // _18

	// _00 VTBL
};
} // namespace Game

namespace Game {
namespace ItemUjamushi {
	struct Uja : public TFlock {
		virtual void makeMatrix();   // _00
		virtual void isVisible();    // _04
		virtual void isWeed();       // _08
		virtual void fear();         // _0C
		virtual void getRadius();    // _10
		virtual void damaged(float); // _14
		virtual void constructor();  // _18

		// _00 VTBL
	};
} // namespace ItemUjamushi
} // namespace Game

#endif
