#ifndef _JSTUDIO_TOBJECT_AMBIENTLIGHT_H
#define _JSTUDIO_TOBJECT_AMBIENTLIGHT_H

/*
    __vt__Q27JStudio20TObject_ambientLight:
    .4byte 0
    .4byte 0
    .4byte __dt__Q27JStudio20TObject_ambientLightFv
    .4byte do_begin__Q27JStudio7TObjectFv
    .4byte do_end__Q27JStudio7TObjectFv
    .4byte do_paragraph__Q27JStudio20TObject_ambientLightFUlPCvUl
    .4byte do_wait__Q27JStudio7TObjectFUl
    .4byte do_data__Q27JStudio7TObjectFPCvUlPCvUl
*/

namespace JStudio {
struct TObject {
	virtual ~TObject();                                                   // _00
	virtual void do_begin();                                              // _04
	virtual void do_end();                                                // _08
	virtual void do_paragraph(unsigned long, const void*, unsigned long); // _0C
	virtual void do_wait(unsigned long);                                  // _10
	virtual void do_data(const void*, unsigned long, const void*,
	                     unsigned long); // _14

	// _00 VTBL
};
} // namespace JStudio

namespace JStudio {
struct TObject_ambientLight : public TObject {
	virtual ~TObject_ambientLight();                                      // _00
	virtual void do_begin();                                              // _04
	virtual void do_end();                                                // _08
	virtual void do_paragraph(unsigned long, const void*, unsigned long); // _0C
	virtual void do_wait(unsigned long);                                  // _10
	virtual void do_data(const void*, unsigned long, const void*,
	                     unsigned long); // _14

	// _00 VTBL
};
} // namespace JStudio

#endif
