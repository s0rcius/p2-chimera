#ifndef _GAME_CAVE_RANDMAPUNIT_H
#define _GAME_CAVE_RANDMAPUNIT_H

#include "types.h"
#include "Game/Cave/ObjectLayout.h"
#include "Game/Cave/Node.h"
#include "Game/Cave/Info.h"
#include "Game/Cave/RandMapMgr.h"

namespace Game {
namespace Cave {
struct EditMapUnit;
struct EnemyNode;
struct GateNode;
struct ItemNode;
struct MapNode;

struct MapUnitGenerator {
	bool m_isFinalFloor;
	bool m_hasEscapeFountain;
	bool m_versusMode;
	u8 _03; 					// _03
	
	u32 _04; 					// _04

	FloorInfo* m_floorInfo;     // _08
	MapNode* m_mapNode;         // _0C
	MapNode* m_mapNodeArr;      // _10
	EnemyNode* m_enemyNodeA;    // _14
	EnemyNode* m_enemyNodeB;    // _18
	EnemyNode* m_enemyNodeC;    // _1C
	GateNode* m_gateNode;       // _20
	ItemNode* m_itemNode;       // _24
	MapNode* m_placedMapNodes;  // _28
	MapNode* _2C;          		// _2C
	EditMapUnit* m_editMapUnit; // _30
};

struct RandMapChecker {
	MapNode* m_mapNode; // _00

	RandMapChecker(MapNode*);
	bool isPutOnMap(MapNode*);
	bool isPartsOnParts(MapNode*);
	bool isDoorOnParts(MapNode*);
	bool isPartsOnDoor(MapNode*);
	bool isInnerBox(int, int, int, int, int, int, int, int);
};

/// @size{0x2C}
struct RandMapUnit {
	RandMapUnit(MapUnitGenerator*);

	void addMap(UnitInfo*, int, int, bool);

	void closeDoorCheck();
	void changeCapToRootLoopMapUnit();
	void changeMapPriority(UnitInfo*);
	void changeTwoToOneMapUnit();
	void createLoopMapNodeCheck();

	void deleteMapNode(MapNode*);

	int getAliveMapIndex(MapNode*);
	MapNode* getCalcDoorIndex(int&, int&, int&, int);
	CardinalDirection getDownToLinkDoorDir(int, int, int);
	MapNode* getFirstMapUnit();
	CardinalDirection getLeftToLinkDoorDir(int, int, int);
	CardinalDirection getLinkDoorDirection(MapNode*, int, MapNode*, int);
	MapNode* getLinkDoorNodeFirst(MapNode*, int, int, int, int&);
	MapNode* getLoopEndMapUnit();
	u32 getLoopMapNode(MapNode**);
	MapNode* getLoopRandMapUnit();
	MapNode* getNormalRandMapUnit();
	int getOpenDoorNum();
	int getPartsKindNum(int);
	MapNode* getRandMapUnit();
	CardinalDirection getRightToLinkDoorDir(int, int, int);
	void getTextureSize(int&, int&);
	CardinalDirection getUpToLinkDoorDir(int, int, int);

	bool isInLinkArea(int, int, int, int, int);
	bool isLoopMapNodeCheck(MapNode*, int);

	void moveCentre();

	void setEditorMapUnit();
	void setFirstMapUnit();
	void setMapUnit();
	void setUnitDoorSorting(int);
	void setUnitKindOrder(MapNode*, int*);
	void setRandomDoorIndex(int*, int);

	int m_doorCountMaybe;         // _00
	int m_roomCount;              // _04
	float m_routeRatio;           // _08
	bool m_mapHasDiameter36;      // _0C
	bool m_needsLoopMapNodeCheck; // _0D
	int m_capCandidateCount;      // _10
	// Float between 0.0 and 1.0
	float m_capMax;                       // _14
	MapNode** m_capCandidateNodes;        // _18
	int* m_capCandidateDoorIndices;       // _1C
	MapUnitGenerator* m_mapUnitGenerator; // _20
	int* _24;                             // _24
	RandMapChecker* m_checker;            // _28
};
} // namespace Cave
} // namespace Game

#endif
