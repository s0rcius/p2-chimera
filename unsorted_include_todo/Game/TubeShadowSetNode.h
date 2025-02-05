#ifndef _GAME_TUBESHADOWSETNODE_H
#define _GAME_TUBESHADOWSETNODE_H

/*
    __vt__Q24Game17TubeShadowSetNode:
    .4byte 0
    .4byte 0
    .4byte __dt__Q24Game17TubeShadowSetNodeFv
    .4byte getChildCount__5CNodeFv
*/

struct CNode {
	virtual ~CNode();             // _00
	virtual void getChildCount(); // _04

	// _00 VTBL
};

namespace Game {
struct TubeShadowSetNode : public CNode {
	virtual ~TubeShadowSetNode(); // _00
	virtual void getChildCount(); // _04

	// _00 VTBL
};
} // namespace Game

#endif
