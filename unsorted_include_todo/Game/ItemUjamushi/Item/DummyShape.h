#ifndef _GAME_ITEMUJAMUSHI_ITEM_DUMMYSHAPE_H
#define _GAME_ITEMUJAMUSHI_ITEM_DUMMYSHAPE_H

/*
    __vt__Q44Game12ItemUjamushi4Item10DummyShape:
    .4byte 0
    .4byte 0
    .4byte getMatrix__Q44Game12ItemUjamushi4Item10DummyShapeFi
    .4byte isModel__Q28SysShape9MtxObjectFv
*/

namespace SysShape {
struct MtxObject {
	virtual void getMatrix(int); // _00
	virtual void isModel();      // _04

	// _00 VTBL
};
} // namespace SysShape

namespace Game {
namespace ItemUjamushi {
	namespace Item {
		struct DummyShape : public MtxObject {
			virtual void getMatrix(int); // _00
			virtual void isModel();      // _04

			// _00 VTBL
		};
	} // namespace Item
} // namespace ItemUjamushi
} // namespace Game

#endif
