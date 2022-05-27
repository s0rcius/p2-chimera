#ifndef _GAME_ENTITIES_CATFISH_H
#define _GAME_ENTITIES_CATFISH_H

#include "Game/EnemyMgrBase.h"
#include "Game/EnemyBase.h"

#include "Game/Entities/KochappyBase.h"

namespace Game {
namespace Catfish {
struct Obj : public KochappyBase::Obj {
	Obj();
	virtual ~Obj();

	virtual void onInit(CreatureInitArg*);                     // _28
	virtual void inWaterCallback(WaterBox*);                   // _7C
	virtual void outWaterCallback();                           // _80
	virtual void getShadowParam(ShadowParam&);                 // _12C
	virtual void changeMaterial();                             // _1F0
	virtual void initMouthSlots();                             // _21C
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID();        // _248
	virtual bool pressCallBack(Creature*, float, CollPart*);   // _26C
	virtual bool hipdropCallBack(Creature*, float, CollPart*); // _274
};

struct Mgr : public EnemyMgrBase {
	Mgr(int, unsigned char);

	virtual void createObj(int); // _60

	/*
	 * --INFO--
	 * Address:	80276F38
	 * Size:	000010
	 */
	virtual EnemyBase* getEnemy(int idx) { return (EnemyBase*)&m_objects[idx]; }

	virtual ~Mgr() { }

	virtual void doAlloc(); // _68

	/*
	 * --INFO--
	 * Address:	80276FF8
	 * Size:	000008
	 */
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() { return EnemyTypeID::EnemyID_Catfish; }

	u32 _40;
	Obj* m_objects;
};
} // namespace Catfish
} // namespace Game

#endif
