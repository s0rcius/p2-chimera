#ifndef _OG_SCREEN_DISPMEMBERCAVE_H
#define _OG_SCREEN_DISPMEMBERCAVE_H

/*
    __vt__Q32og6Screen14DispMemberCave:
    .4byte 0
    .4byte 0
    .4byte getSize__Q32og6Screen14DispMemberCaveFv
    .4byte getOwnerID__Q32og6Screen14DispMemberCaveFv
    .4byte getMemberID__Q32og6Screen14DispMemberCaveFv
    .4byte doSetSubMemberAll__Q32og6Screen14DispMemberBaseFv
*/

namespace og {
namespace Screen {
	struct DispMemberBase {
		virtual void getSize();           // _00
		virtual void getOwnerID();        // _04
		virtual void getMemberID();       // _08
		virtual void doSetSubMemberAll(); // _0C

		// _00 VTBL
	};
} // namespace Screen
} // namespace og

namespace og {
namespace Screen {
	struct DispMemberCave : public DispMemberBase {
		virtual void getSize();           // _00
		virtual void getOwnerID();        // _04
		virtual void getMemberID();       // _08
		virtual void doSetSubMemberAll(); // _0C

		// _00 VTBL
	};
} // namespace Screen
} // namespace og

#endif
