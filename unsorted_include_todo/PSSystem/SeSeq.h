#ifndef _PSSYSTEM_SESEQ_H
#define _PSSYSTEM_SESEQ_H

/*
    __vt__Q28PSSystem5SeSeq:
    .4byte 0
    .4byte 0
    .4byte __dt__Q28PSSystem5SeSeqFv
    .4byte init__Q28PSSystem7SeqBaseFv
    .4byte scene1st__Q28PSSystem7SeqBaseFPQ28PSSystem11TaskChecker
    .4byte startSeq__Q28PSSystem7SeqBaseFv
    .4byte stopSeq__Q28PSSystem5SeSeqFUl
    .4byte pauseOn__Q28PSSystem7SeqBaseFQ38PSSystem7SeqBase9PauseMode
    .4byte pauseOff__Q28PSSystem7SeqBaseFv
    .4byte getCastType__Q28PSSystem5SeSeqFv
    .4byte getSeqType__Q28PSSystem5SeSeqFv
    .4byte exec__Q28PSSystem7SeqBaseFv
    .4byte onPlayingFrame__Q28PSSystem7SeqBaseFv
    .4byte isPlaying__Q28PSSystem7SeqBaseFv
    .4byte seqLoadAfter__Q28PSSystem5SeSeqFv
    .4byte getHandleP__Q28PSSystem5SeSeqFv
    .4byte setConfigVolume__Q28PSSystem5SeSeqFv
*/

namespace PSSystem {
struct SeqBase {
	virtual ~SeqBase();                  // _00
	virtual void init();                 // _04
	virtual void scene1st(TaskChecker*); // _08
	virtual void startSeq();             // _0C
	virtual void stopSeq(unsigned long); // _10
	virtual void pauseOn(PauseMode);     // _14
	virtual void pauseOff();             // _18
	virtual void getCastType();          // _1C
	virtual void getSeqType();           // _20
	virtual void exec();                 // _24
	virtual void onPlayingFrame();       // _28
	virtual void isPlaying();            // _2C

	// _00 VTBL
};
} // namespace PSSystem

namespace PSSystem {
struct SeSeq : public SeqBase {
	virtual ~SeSeq();                    // _00
	virtual void init();                 // _04
	virtual void scene1st(TaskChecker*); // _08
	virtual void startSeq();             // _0C
	virtual void stopSeq(unsigned long); // _10
	virtual void pauseOn(PauseMode);     // _14
	virtual void pauseOff();             // _18
	virtual void getCastType();          // _1C
	virtual void getSeqType();           // _20
	virtual void exec();                 // _24
	virtual void onPlayingFrame();       // _28
	virtual void isPlaying();            // _2C
	virtual void seqLoadAfter();         // _30
	virtual void getHandleP();           // _34
	virtual void setConfigVolume();      // _38

	// _00 VTBL
};
} // namespace PSSystem

#endif
