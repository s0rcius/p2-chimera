#ifndef _J3DPEBLOCKFOGOFF_H
#define _J3DPEBLOCKFOGOFF_H

/*
    __vt__16J3DPEBlockFogOff:
    .4byte 0
    .4byte 0
    .4byte reset__16J3DPEBlockFogOffFP10J3DPEBlock
    .4byte load__16J3DPEBlockFogOffFv
    .4byte patch__10J3DPEBlockFv
    .4byte diff__16J3DPEBlockFogOffFUl
    .4byte diffFog__10J3DPEBlockFv
    .4byte diffBlend__16J3DPEBlockFogOffFv
    .4byte countDLSize__16J3DPEBlockFogOffFv
    .4byte getType__16J3DPEBlockFogOffFv
    .4byte setFog__10J3DPEBlockF6J3DFog
    .4byte setFog__10J3DPEBlockFP6J3DFog
    .4byte getFog__10J3DPEBlockFv
    .4byte setAlphaComp__16J3DPEBlockFogOffFPC12J3DAlphaComp
    .4byte setAlphaComp__16J3DPEBlockFogOffFRC12J3DAlphaComp
    .4byte getAlphaComp__16J3DPEBlockFogOffFv
    .4byte setBlend__16J3DPEBlockFogOffFPC8J3DBlend
    .4byte setBlend__16J3DPEBlockFogOffFRC8J3DBlend
    .4byte getBlend__16J3DPEBlockFogOffFv
    .4byte setZMode__16J3DPEBlockFogOffFPC8J3DZMode
    .4byte setZMode__16J3DPEBlockFogOffF8J3DZMode
    .4byte getZMode__16J3DPEBlockFogOffFv
    .4byte setZCompLoc__16J3DPEBlockFogOffFPCUc
    .4byte setZCompLoc__16J3DPEBlockFogOffFUc
    .4byte getZCompLoc__16J3DPEBlockFogOffCFv
    .4byte setDither__16J3DPEBlockFogOffFPCUc
    .4byte setDither__16J3DPEBlockFogOffFUc
    .4byte getDither__16J3DPEBlockFogOffCFv
    .4byte getFogOffset__10J3DPEBlockCFv
    .4byte setFogOffset__10J3DPEBlockFUl
    .4byte __dt__16J3DPEBlockFogOffFv
*/

struct J3DPEBlock {
	virtual void reset(J3DPEBlock*);                // _00
	virtual void load();                            // _04
	virtual void patch();                           // _08
	virtual void diff(unsigned long);               // _0C
	virtual void diffFog();                         // _10
	virtual void diffBlend();                       // _14
	virtual void countDLSize();                     // _18
	virtual void getType();                         // _1C
	virtual void setFog(J3DFog);                    // _20
	virtual void setFog(J3DFog*);                   // _24
	virtual void getFog();                          // _28
	virtual void setAlphaComp(const J3DAlphaComp*); // _2C
	virtual void setAlphaComp(const J3DAlphaComp&); // _30
	virtual void getAlphaComp();                    // _34
	virtual void setBlend(const J3DBlend*);         // _38
	virtual void setBlend(const J3DBlend&);         // _3C
	virtual void getBlend();                        // _40
	virtual void setZMode(const J3DZMode*);         // _44
	virtual void setZMode(J3DZMode);                // _48
	virtual void getZMode();                        // _4C
	virtual void setZCompLoc(const unsigned char*); // _50
	virtual void setZCompLoc(unsigned char);        // _54
	virtual void getZCompLoc() const;               // _58
	virtual void setDither(const unsigned char*);   // _5C
	virtual void setDither(unsigned char);          // _60
	virtual void getDither() const;                 // _64
	virtual void getFogOffset() const;              // _68
	virtual void setFogOffset(unsigned long);       // _6C

	// _00 VTBL
};

struct J3DPEBlockFogOff : public J3DPEBlock {
	virtual void reset(J3DPEBlock*);                // _00
	virtual void load();                            // _04
	virtual void patch();                           // _08
	virtual void diff(unsigned long);               // _0C
	virtual void diffFog();                         // _10
	virtual void diffBlend();                       // _14
	virtual void countDLSize();                     // _18
	virtual void getType();                         // _1C
	virtual void setFog(J3DFog);                    // _20
	virtual void setFog(J3DFog*);                   // _24
	virtual void getFog();                          // _28
	virtual void setAlphaComp(const J3DAlphaComp*); // _2C
	virtual void setAlphaComp(const J3DAlphaComp&); // _30
	virtual void getAlphaComp();                    // _34
	virtual void setBlend(const J3DBlend*);         // _38
	virtual void setBlend(const J3DBlend&);         // _3C
	virtual void getBlend();                        // _40
	virtual void setZMode(const J3DZMode*);         // _44
	virtual void setZMode(J3DZMode);                // _48
	virtual void getZMode();                        // _4C
	virtual void setZCompLoc(const unsigned char*); // _50
	virtual void setZCompLoc(unsigned char);        // _54
	virtual void getZCompLoc() const;               // _58
	virtual void setDither(const unsigned char*);   // _5C
	virtual void setDither(unsigned char);          // _60
	virtual void getDither() const;                 // _64
	virtual void getFogOffset() const;              // _68
	virtual void setFogOffset(unsigned long);       // _6C
	virtual ~J3DPEBlockFogOff();                    // _70

	// _00 VTBL
};

#endif
