#ifndef _GAME_ITEMPLANT_FSM_H
#define _GAME_ITEMPLANT_FSM_H

/*
    __vt__Q34Game9ItemPlant3FSM:
    .4byte 0
    .4byte 0
    .4byte init__Q34Game9ItemPlant3FSMFPQ34Game9ItemPlant4Item
    .4byte
   "start__Q24Game36StateMachine<Q34Game9ItemPlant4Item>FPQ34Game9ItemPlant4ItemiPQ24Game8StateArg"
    .4byte
   "exec__Q24Game36StateMachine<Q34Game9ItemPlant4Item>FPQ34Game9ItemPlant4Item"
    .4byte
   "transit__Q24Game36StateMachine<Q34Game9ItemPlant4Item>FPQ34Game9ItemPlant4ItemiPQ24Game8StateArg"
    .4byte 0
*/

namespace Game {
namespace StateMachine < Game
{
	namespace ItemPlant {
		struct Item >
		{
			virtual void init(Item*);                                   // _00
			virtual void StateMachine < start(Item*, int, StateArg*);   // _04
			virtual void StateMachine < exec(Item*);                    // _08
			virtual void StateMachine < transit(Item*, int, StateArg*); // _0C

			// _00 VTBL
		};
	} // namespace ItemPlant
} // namespace Game
} // namespace Game

namespace Game {
namespace ItemPlant {
	struct FSM : public Item > {
		virtual void init(Item*);                                   // _00
		virtual void StateMachine < start(Item*, int, StateArg*);   // _04
		virtual void StateMachine < exec(Item*);                    // _08
		virtual void StateMachine < transit(Item*, int, StateArg*); // _0C
		virtual void _10() = 0;                                     // _10

		// _00 VTBL
	};
} // namespace ItemPlant
} // namespace Game

#endif
