#ifndef _POKOINFOOWNER_H
#define _POKOINFOOWNER_H

/*
        __vt__13PokoInfoOwner:
        .4byte 0
        .4byte 0
        .4byte getCarryInfoParam__13PokoInfoOwnerFR14CarryInfoParam
        .4byte 0
        .4byte 0
        .4byte "@4@__dt__13PokoInfoOwnerFv"
        .4byte getChildCount__5CNodeFv
        .4byte __dt__13PokoInfoOwnerFv
*/

struct CNode {
    virtual void getCarryInfoParam(CarryInfoParam&); // _00
    virtual void _04() = 0;                          // _04
    virtual void _08() = 0;                          // _08
    virtual void @4 @__dt();                         // _0C
    virtual void getChildCount();                    // _10

    // _00 VTBL
};

struct PokoInfoOwner : public CNode {
    virtual void getCarryInfoParam(CarryInfoParam&); // _00
    virtual void _04() = 0;                          // _04
    virtual void _08() = 0;                          // _08
    virtual void @4 @__dt();                         // _0C
    virtual void getChildCount();                    // _10
    virtual ~PokoInfoOwner();                        // _14

    // _00 VTBL
};

#endif
