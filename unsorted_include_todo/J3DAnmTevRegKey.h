#ifndef _J3DANMTEVREGKEY_H
#define _J3DANMTEVREGKEY_H

/*
    __vt__15J3DAnmTevRegKey:
    .4byte 0
    .4byte 0
    .4byte __dt__15J3DAnmTevRegKeyFv
    .4byte getKind__15J3DAnmTevRegKeyCFv
*/

struct J3DAnmTevRegKey {
	virtual ~J3DAnmTevRegKey();   // _00
	virtual void getKind() const; // _04

	// _00 VTBL
};

#endif
