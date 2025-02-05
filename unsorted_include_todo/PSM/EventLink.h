#ifndef _PSM_EVENTLINK_H
#define _PSM_EVENTLINK_H

/*
    __vt__Q23PSM9EventLink:
    .4byte 0
    .4byte 0
    .4byte getListDirectorActor__Q23PSM9EventLinkFv
    .4byte eventStart__Q23PSM12DirectorLinkFv
    .4byte eventRestart__Q23PSM12DirectorLinkFv
    .4byte eventStop__Q23PSM12DirectorLinkFv
    .4byte eventFinish__Q23PSM12DirectorLinkFv
*/

namespace PSM {
struct DirectorLink {
	virtual void getListDirectorActor(); // _00
	virtual void eventStart();           // _04
	virtual void eventRestart();         // _08
	virtual void eventStop();            // _0C
	virtual void eventFinish();          // _10

	// _00 VTBL
};
} // namespace PSM

namespace PSM {
struct EventLink : public DirectorLink {
	virtual void getListDirectorActor(); // _00
	virtual void eventStart();           // _04
	virtual void eventRestart();         // _08
	virtual void eventStop();            // _0C
	virtual void eventFinish();          // _10

	// _00 VTBL
};
} // namespace PSM

#endif
