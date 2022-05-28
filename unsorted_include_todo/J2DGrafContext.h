#ifndef _J2DGRAFCONTEXT_H
#define _J2DGRAFCONTEXT_H

/*
    __vt__14J2DGrafContext:
    .4byte 0
    .4byte 0
    .4byte __dt__14J2DGrafContextFv
    .4byte "place__14J2DGrafContextFRCQ29JGeometry8TBox2<f>"
    .4byte place__14J2DGrafContextFffff
    .4byte setPort__14J2DGrafContextFv
    .4byte setup2D__14J2DGrafContextFv
    .4byte setScissor__14J2DGrafContextFv
    .4byte getGrafType__14J2DGrafContextCFv
    .4byte setLookat__14J2DGrafContextFv
*/

struct J2DGrafContext {
	virtual ~J2DGrafContext();                          // _00
	virtual void place(const JGeometry::TBox2<float>&); // _04
	virtual void place(float, float, float, float);     // _08
	virtual void setPort();                             // _0C
	virtual void setup2D();                             // _10
	virtual void setScissor();                          // _14
	virtual void getGrafType() const;                   // _18
	virtual void setLookat();                           // _1C

	// _00 VTBL
};

#endif
