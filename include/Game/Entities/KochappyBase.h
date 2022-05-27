#ifndef _GAME_ENTITIES_KOCHAPPYBASE_H
#define _GAME_ENTITIES_KOCHAPPYBASE_H

#include "Game/EnemyAnimatorBase.h"
#include "Game/EnemyParmsBase.h"
#include "Game/EnemyBase.h"

namespace Game {
namespace KochappyBase {
struct ProperAnimator : public EnemyAnimatorBase {
	virtual ~ProperAnimator() {};
	virtual void setAnimMgr(SysShape::AnimMgr*);
	virtual SysShape::Animator& getAnimator() { return m_animator; };
	virtual SysShape::Animator& getAnimator(int);

	SysShape::Animator m_animator; // _10
};

struct Parms : public EnemyParmsBase {
	Parms();

	u8 _7FC[0x880 - 0x7FC];
};

struct FSM;

struct Obj : public EnemyBase {
	Obj();
	virtual ~Obj() { }

	virtual void onInit(CreatureInitArg*);                  // _28
	virtual void doDirectDraw(Graphics&);                   // _48
	virtual void bounceCallback(Sys::Triangle*);            // _E0
	virtual void getShadowParam(ShadowParam&);              // _12C
	virtual void birth(Vector3f&, float);                   // _1B0
	virtual void setInitialSetting(EnemyInitialParamBase*); // _1B4
	virtual void doUpdate();                                // _1BC
	virtual void doDebugDraw(Graphics&);                    // _1DC
	virtual Vector3f getOffsetForMapCollision();            // _214
	virtual void initMouthSlots();                          // _21C
	virtual void initWalkSmokeEffect();                     // _220
	virtual WalkSmokeEffect::Mgr* getWalkSmokeEffectMgr();  // _224
	virtual MouthSlots* getMouthSlots();                    // _24C
	virtual void doStartStoneState();                       // _2A4
	virtual void doFinishStoneState();                      // _2A8
	virtual void startCarcassMotion();                      // _2C4
	virtual float getDownSmokeScale();                      // _2E4

	virtual void setFSM(FSM*);
	virtual void setAnimationSpeed(float);
	virtual void resetEnemyNonStone();
	virtual void setEnemyNonStone();

	void changeMaterial();
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID(); // _248
};

struct FSM {
};
} // namespace KochappyBase

} // namespace Game

#endif
