#ifndef _OG_SCREEN_CALLBACK_FURIKO_H
#define _OG_SCREEN_CALLBACK_FURIKO_H

/*
    __vt__Q32og6Screen15CallBack_Furiko:
    .4byte 0
    .4byte 0
    .4byte __dt__Q32og6Screen15CallBack_FurikoFv
    .4byte getChildCount__5CNodeFv
    .4byte update__Q32og6Screen15CallBack_FurikoFv
    .4byte draw__Q32og6Screen15CallBack_FurikoFR8GraphicsR14J2DGrafContext
    .4byte doInit__Q29P2DScreen4NodeFv
    .4byte 0
*/

struct CNode {
	virtual void _00() = 0;       // _00
	virtual void getChildCount(); // _04

	// _00 VTBL
};

namespace P2DScreen {
struct Node {
	virtual void _00() = 0; // _00
	virtual void _04() = 0; // _04
	virtual void _08() = 0; // _08
	virtual void _0C() = 0; // _0C
	virtual void doInit();  // _10

	// _00 VTBL
};
} // namespace P2DScreen

namespace og {
namespace Screen {
	struct CallBack_Furiko : public CNode, public Node {
		virtual ~CallBack_Furiko();                    // _00
		virtual void getChildCount();                  // _04
		virtual void update();                         // _08
		virtual void draw(Graphics&, J2DGrafContext&); // _0C
		virtual void doInit();                         // _10
		virtual void _14() = 0;                        // _14

		// _00 VTBL
	};
} // namespace Screen
} // namespace og

#endif
