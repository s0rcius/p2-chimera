#ifndef _GAME_ENEMYSTONE_STATEMACHINE_H
#define _GAME_ENEMYSTONE_STATEMACHINE_H

/*
    __vt__Q34Game10EnemyStone12StateMachine:
    .4byte 0
    .4byte 0
    .4byte init__Q34Game10EnemyStone12StateMachineFPQ34Game10EnemyStone8DrawInfo
    .4byte
   "start__Q24Game42StateMachine<Q34Game10EnemyStone8DrawInfo>FPQ34Game10EnemyStone8DrawInfoiPQ24Game8StateArg"
    .4byte
   "exec__Q24Game42StateMachine<Q34Game10EnemyStone8DrawInfo>FPQ34Game10EnemyStone8DrawInfo"
    .4byte
   "transit__Q24Game42StateMachine<Q34Game10EnemyStone8DrawInfo>FPQ34Game10EnemyStone8DrawInfoiPQ24Game8StateArg"
    .4byte
   makeMatrix__Q34Game10EnemyStone12StateMachineFPQ34Game10EnemyStone8DrawInfoP7Matrixf
    .4byte 0
*/

namespace Game {
namespace StateMachine < Game
{
	namespace EnemyStone {
		struct DrawInfo >
		{
			virtual void init(DrawInfo*);                                 // _00
			virtual void StateMachine < start(DrawInfo*, int, StateArg*); // _04
			virtual void StateMachine < exec(DrawInfo*);                  // _08
			virtual void StateMachine
			    < transit(DrawInfo*, int, StateArg*); // _0C

			// _00 VTBL
		};
	} // namespace EnemyStone
} // namespace Game
} // namespace Game

namespace Game {
namespace EnemyStone {
	struct StateMachine : public DrawInfo > {
		virtual void init(DrawInfo*);                                   // _00
		virtual void StateMachine < start(DrawInfo*, int, StateArg*);   // _04
		virtual void StateMachine < exec(DrawInfo*);                    // _08
		virtual void StateMachine < transit(DrawInfo*, int, StateArg*); // _0C
		virtual void makeMatrix(DrawInfo*, Matrixf*);                   // _10
		virtual void _14() = 0;                                         // _14

		// _00 VTBL
	};
} // namespace EnemyStone
} // namespace Game

#endif
