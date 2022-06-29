#include "Game/CurrTriInfo.h"
#include "Sys/CreateTriangleArg.h"
#include "Sys/Edge.h"
#include "Sys/GridDivider.h"
#include "Sys/RayIntersectInfo.h"
#include "Sys/Triangle.h"
#include "Sys/TriangleTable.h"
#include "Sys/TriIndexList.h"
#include "Sys/Tube.h"
#include "Container.h"
#include "Vector3.h"
#include "types.h"

/*
    Generated from dpostproc

    .section .rodata  # 0x804732E0 - 0x8049E220
    .global lbl_804997A8
    lbl_804997A8:
        .asciz "# %d/%d\r\n"
        .skip 0x6

    .section .data, "wa"  # 0x8049E220 - 0x804EFC20
    .global __vt__Q23Sys11VertexTable
    __vt__Q23Sys11VertexTable:
        .4byte 0
        .4byte 0
        .4byte __dt__Q23Sys11VertexTableFv
        .4byte getChildCount__5CNodeFv
        .4byte "getObject__23Container<10Vector3<f>>FPv"
        .4byte "getNext__28ArrayContainer<10Vector3<f>>FPv"
        .4byte "getStart__28ArrayContainer<10Vector3<f>>Fv"
        .4byte "getEnd__28ArrayContainer<10Vector3<f>>Fv"
        .4byte "get__28ArrayContainer<10Vector3<f>>FPv"
        .4byte "getAt__28ArrayContainer<10Vector3<f>>Fi"
        .4byte "getTo__28ArrayContainer<10Vector3<f>>Fv"
        .4byte "writeObject__Q23Sys11VertexTableFR6StreamR10Vector3<f>"
        .4byte "readObject__Q23Sys11VertexTableFR6StreamR10Vector3<f>"
        .4byte write__Q23Sys11VertexTableFR6Stream
        .4byte "read__28ArrayContainer<10Vector3<f>>FR6Stream"
        .4byte "alloc__28ArrayContainer<10Vector3<f>>Fi"
        .4byte "addOne__Q23Sys11VertexTableFR10Vector3<f>"
        .4byte "setArray__28ArrayContainer<10Vector3<f>>FP10Vector3<f>i"
    .global __vt__Q23Sys13TriangleTable
    __vt__Q23Sys13TriangleTable:
        .4byte 0
        .4byte 0
        .4byte __dt__Q23Sys13TriangleTableFv
        .4byte getChildCount__5CNodeFv
        .4byte "getObject__26Container<Q23Sys8Triangle>FPv"
        .4byte "getNext__31ArrayContainer<Q23Sys8Triangle>FPv"
        .4byte "getStart__31ArrayContainer<Q23Sys8Triangle>Fv"
        .4byte "getEnd__31ArrayContainer<Q23Sys8Triangle>Fv"
        .4byte "get__31ArrayContainer<Q23Sys8Triangle>FPv"
        .4byte "getAt__31ArrayContainer<Q23Sys8Triangle>Fi"
        .4byte "getTo__31ArrayContainer<Q23Sys8Triangle>Fv"
        .4byte writeObject__Q23Sys13TriangleTableFR6StreamRQ23Sys8Triangle
        .4byte readObject__Q23Sys13TriangleTableFR6StreamRQ23Sys8Triangle
        .4byte "write__31ArrayContainer<Q23Sys8Triangle>FR6Stream"
        .4byte "read__31ArrayContainer<Q23Sys8Triangle>FR6Stream"
        .4byte "alloc__31ArrayContainer<Q23Sys8Triangle>Fi"
        .4byte "addOne__31ArrayContainer<Q23Sys8Triangle>FRQ23Sys8Triangle"
        .4byte "setArray__31ArrayContainer<Q23Sys8Triangle>FPQ23Sys8Trianglei"
    .global "__vt__31ArrayContainer<Q23Sys8Triangle>"
    "__vt__31ArrayContainer<Q23Sys8Triangle>":
        .4byte 0
        .4byte 0
        .4byte "__dt__31ArrayContainer<Q23Sys8Triangle>Fv"
        .4byte getChildCount__5CNodeFv
        .4byte "getObject__26Container<Q23Sys8Triangle>FPv"
        .4byte "getNext__31ArrayContainer<Q23Sys8Triangle>FPv"
        .4byte "getStart__31ArrayContainer<Q23Sys8Triangle>Fv"
        .4byte "getEnd__31ArrayContainer<Q23Sys8Triangle>Fv"
        .4byte "get__31ArrayContainer<Q23Sys8Triangle>FPv"
        .4byte "getAt__31ArrayContainer<Q23Sys8Triangle>Fi"
        .4byte "getTo__31ArrayContainer<Q23Sys8Triangle>Fv"
        .4byte
   "writeObject__31ArrayContainer<Q23Sys8Triangle>FR6StreamRQ23Sys8Triangle"
        .4byte
   "readObject__31ArrayContainer<Q23Sys8Triangle>FR6StreamRQ23Sys8Triangle"
        .4byte "write__31ArrayContainer<Q23Sys8Triangle>FR6Stream"
        .4byte "read__31ArrayContainer<Q23Sys8Triangle>FR6Stream"
        .4byte "alloc__31ArrayContainer<Q23Sys8Triangle>Fi"
        .4byte "addOne__31ArrayContainer<Q23Sys8Triangle>FRQ23Sys8Triangle"
        .4byte "setArray__31ArrayContainer<Q23Sys8Triangle>FPQ23Sys8Trianglei"
    .global "__vt__26Container<Q23Sys8Triangle>"
    "__vt__26Container<Q23Sys8Triangle>":
        .4byte 0
        .4byte 0
        .4byte "__dt__26Container<Q23Sys8Triangle>Fv"
        .4byte getChildCount__5CNodeFv
        .4byte "getObject__26Container<Q23Sys8Triangle>FPv"
        .4byte 0
        .4byte 0
        .4byte 0
        .4byte 0
        .4byte "getAt__26Container<Q23Sys8Triangle>Fi"
        .4byte "getTo__26Container<Q23Sys8Triangle>Fv"
    .global __vt__Q23Sys11GridDivider
    __vt__Q23Sys11GridDivider:
        .4byte 0
        .4byte 0
        .4byte __dt__Q23Sys11GridDividerFv
        .4byte getChildCount__5CNodeFv
        .4byte "getMinY__Q23Sys11GridDividerFR10Vector3<f>"
        .4byte findTriLists__Q23Sys11GridDividerFRQ23Sys6Sphere
        .4byte read__Q23Sys11GridDividerFR6Stream
        .4byte getCurrTri__Q23Sys11GridDividerFRQ24Game11CurrTriInfo
        .4byte createTriangles__Q23Sys11GridDividerFRQ23Sys17CreateTriangleArg
        .4byte getBoundBox__Q23Sys11GridDividerFR8BoundBox
        .4byte clone__Q23Sys10TriDividerFR7Matrixf
        .4byte
   do_clone__Q23Sys11GridDividerFR7MatrixfPQ23Sys11VertexTablePQ23Sys13TriangleTable
        .4byte 0

    .section .sbss # 0x80514D80 - 0x80516360
    .global debug__Q23Sys8Triangle
    debug__Q23Sys8Triangle:
        .skip 0x8

    .section .sdata2, "a"     # 0x80516360 - 0x80520E40
    .global lbl_80520308
    lbl_80520308:
        .4byte 0x00000000
    .global lbl_8052030C
    lbl_8052030C:
        .float 1.0
    .global lbl_80520310
    lbl_80520310:
        .float 0.5
    .global lbl_80520314
    lbl_80520314:
        .4byte 0x3EAAAAAB
    .global lbl_80520318
    lbl_80520318:
        .4byte 0x4B435000
    .global lbl_8052031C
    lbl_8052031C:
        .4byte 0xCB435000
    .global lbl_80520320
    lbl_80520320:
        .4byte 0x3C23D70A
    .global lbl_80520324
    lbl_80520324:
        .4byte 0xBDCCCCCD
    .global lbl_80520328
    lbl_80520328:
        .4byte 0x48A02800
    .global lbl_8052032C
    lbl_8052032C:
        .4byte 0xC8A02800
    .global lbl_80520330
    lbl_80520330:
        .4byte 0x43300000
        .4byte 0x80000000
    .global lbl_80520338
    lbl_80520338:
        .4byte 0x0D0A0000
    .global lbl_8052033C
    lbl_8052033C:
        .4byte 0x47000000
    .global lbl_80520340
    lbl_80520340:
        .4byte 0xC7000000
    .global lbl_80520344
    lbl_80520344:
        .4byte 0x501502F9
    .global lbl_80520348
    lbl_80520348:
        .4byte 0xD01502F9
    .global lbl_8052034C
    lbl_8052034C:
        .4byte 0x40400000
*/

namespace Sys {

// /*
// * --INFO--
// * Address:	........
// * Size:	000238
// */
// void Edge::calcNearestEdgePoint(Vector3f&, Vector3f&)
// {
// // UNUSED FUNCTION
// }

/*
 * --INFO--
 * Address:	80415AA4
 * Size:	0000B4
 */
void Tube::getAxisVector(Vector3f& axisVector)
{
	// pos2(x,y,z) which are 0xC, 0x10, and 0x14 = position of one end of tube
	// pos1(x,y,z) which are 0x0, 0x4, and 0x8 = position of other end of tube
	// 'returns' a normalised vector 'axisVector' that points in direction of tube

	axisVector = pos2 - pos1;

	f32 X   = axisVector.x * axisVector.x;
	f32 Y   = axisVector.y * axisVector.y;
	f32 Z   = axisVector.z * axisVector.z;
	f32 mag = pikmin2_sqrtf(X + Y + Z); // length/magnitude of output vector

	// normalise output vector (so long as it's not just the zero vector lol)
	if (mag > lbl_80520308) { // idk if this should be 0.0f or 0x00000000, the file has 0x00000000 (4-byte)
		f32 norm = lbl_8052030C / mag;
		axisVector.x *= norm;
		axisVector.y *= norm;
		axisVector.z *= norm;
	}
}

// /*
// * --INFO--
// * Address:	........
// * Size:	00002C
// */
// void Tube::getYRatio(float)
// {
// // UNUSED FUNCTION
// }

/*
 * --INFO--
 * Address:	80415B58
 * Size:	00027C
 */
void Tube::collide(Sys::Sphere&, Vector3f&, float&)
{
	/*
	stwu     r1, -0x80(r1)
	mflr     r0
	stw      r0, 0x84(r1)
	stfd     f31, 0x70(r1)
	psq_st   f31, 120(r1), 0, qr0
	stfd     f30, 0x60(r1)
	psq_st   f30, 104(r1), 0, qr0
	stfd     f29, 0x50(r1)
	psq_st   f29, 88(r1), 0, qr0
	stfd     f28, 0x40(r1)
	psq_st   f28, 72(r1), 0, qr0
	stfd     f27, 0x30(r1)
	psq_st   f27, 56(r1), 0, qr0
	stfd     f26, 0x20(r1)
	psq_st   f26, 40(r1), 0, qr0
	stw      r31, 0x1c(r1)
	stw      r30, 0x18(r1)
	stw      r29, 0x14(r1)
	stw      r28, 0x10(r1)
	mr       r28, r3
	mr       r29, r4
	lfs      f2, 0x10(r3)
	mr       r30, r5
	lfs      f0, 4(r3)
	mr       r31, r6
	lfs      f1, 0xc(r3)
	fsubs    f30, f2, f0
	lfs      f0, 0(r3)
	lfs      f2, 0x14(r3)
	fsubs    f31, f1, f0
	lfs      f1, 8(r3)
	fmuls    f0, f30, f30
	fsubs    f29, f2, f1
	fmr      f28, f31
	fmadds   f0, f31, f31, f0
	fmr      f27, f30
	fmr      f26, f29
	fmadds   f1, f29, f29, f0
	bl       pikmin2_sqrtf__Ff
	lfs      f0, lbl_80520308@sda21(r2)
	fcmpo    cr0, f1, f0
	ble      lbl_80415C18
	lfs      f0, lbl_8052030C@sda21(r2)
	fdivs    f0, f0, f1
	fmuls    f28, f28, f0
	fmuls    f27, f27, f0
	fmuls    f26, f26, f0
	b        lbl_80415C1C

lbl_80415C18:
	fmr      f1, f0

lbl_80415C1C:
	lfs      f0, lbl_80520308@sda21(r2)
	fcmpu    cr0, f0, f1
	bne      lbl_80415C30
	li       r3, 0
	b        lbl_80415D84

lbl_80415C30:
	lfs      f4, 4(r29)
	lfs      f2, 4(r28)
	lfs      f6, 0(r29)
	fsubs    f0, f4, f2
	lfs      f5, 0(r28)
	lfs      f9, 8(r29)
	fsubs    f3, f6, f5
	lfs      f8, 8(r28)
	fmuls    f0, f27, f0
	fsubs    f7, f9, f8
	fmadds   f0, f28, f3, f0
	fmadds   f0, f26, f7, f0
	fdivs    f27, f0, f1
	fmuls    f1, f30, f27
	fmuls    f3, f31, f27
	fmuls    f0, f29, f27
	fadds    f2, f1, f2
	fadds    f3, f3, f5
	fadds    f1, f0, f8
	fsubs    f26, f2, f4
	fsubs    f29, f3, f6
	fsubs    f30, f1, f9
	fmuls    f0, f26, f26
	fmadds   f0, f29, f29, f0
	fmadds   f1, f30, f30, f0
	bl       pikmin2_sqrtf__Ff
	lfs      f5, lbl_8052030C@sda21(r2)
	lfs      f2, 0x1c(r28)
	fsubs    f4, f5, f27
	lfs      f0, lbl_80520308@sda21(r2)
	fmuls    f2, f2, f27
	lfs      f3, 0x18(r28)
	lfs      f6, 0xc(r29)
	fcmpo    cr0, f27, f0
	fmadds   f2, f4, f3, f2
	fadds    f2, f6, f2
	fsubs    f28, f2, f1
	cror     2, 1, 2
	bne      lbl_80415D80
	fcmpo    cr0, f27, f5
	cror     2, 0, 2
	bne      lbl_80415D80
	fcmpo    cr0, f28, f0
	cror     2, 1, 2
	bne      lbl_80415D80
	stfs     f29, 0(r30)
	stfs     f26, 4(r30)
	stfs     f30, 8(r30)
	lfs      f1, 0(r30)
	lfs      f0, 4(r30)
	fmuls    f1, f1, f1
	lfs      f2, 8(r30)
	fmuls    f0, f0, f0
	fmuls    f2, f2, f2
	fadds    f0, f1, f0
	fadds    f1, f2, f0
	bl       pikmin2_sqrtf__Ff
	lfs      f0, lbl_80520308@sda21(r2)
	fcmpo    cr0, f1, f0
	ble      lbl_80415D4C
	lfs      f2, lbl_8052030C@sda21(r2)
	lfs      f0, 0(r30)
	fdivs    f1, f2, f1
	fmuls    f0, f0, f1
	stfs     f0, 0(r30)
	lfs      f0, 4(r30)
	fmuls    f0, f0, f1
	stfs     f0, 4(r30)
	lfs      f0, 8(r30)
	fmuls    f0, f0, f1
	stfs     f0, 8(r30)

lbl_80415D4C:
	fneg     f3, f28
	lfs      f0, 0(r30)
	lfs      f1, 4(r30)
	li       r3, 1
	lfs      f2, 8(r30)
	fmuls    f0, f0, f3
	fmuls    f1, f1, f3
	fmuls    f2, f2, f3
	stfs     f0, 0(r30)
	stfs     f1, 4(r30)
	stfs     f2, 8(r30)
	stfs     f27, 0(r31)
	b        lbl_80415D84

lbl_80415D80:
	li       r3, 0

lbl_80415D84:
	psq_l    f31, 120(r1), 0, qr0
	lfd      f31, 0x70(r1)
	psq_l    f30, 104(r1), 0, qr0
	lfd      f30, 0x60(r1)
	psq_l    f29, 88(r1), 0, qr0
	lfd      f29, 0x50(r1)
	psq_l    f28, 72(r1), 0, qr0
	lfd      f28, 0x40(r1)
	psq_l    f27, 56(r1), 0, qr0
	lfd      f27, 0x30(r1)
	psq_l    f26, 40(r1), 0, qr0
	lfd      f26, 0x20(r1)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	lwz      r29, 0x14(r1)
	lwz      r0, 0x84(r1)
	lwz      r28, 0x10(r1)
	mtlr     r0
	addi     r1, r1, 0x80
	blr
	*/
}

/*
 * --INFO--
 * Address:	80415DD4
 * Size:	0000F4
 */
float Tube::getPosRatio(const Vector3f& point)
{
	// calculates dot product between axisVector of tube
	// and separation vector between pos1 of tube and
	// input 'point', then normalises by length of tube
	Vector3f axis(pos2.x - pos1.x, pos2.y - pos1.y, pos2.z - pos1.z);

	float mag = pikmin2_sqrtf(axis.x * axis.x + axis.y * axis.y + axis.z * axis.z);

	// if tube isn't 0-length, normalise axisVector to unit vector
	if (mag > lbl_80520308) {
		float norm = lbl_8052030C / mag;
		axis.x *= norm;
		axis.y *= norm;
		axis.z *= norm;
	} else {
		mag = lbl_80520308;
	}
	Vector3f sep = point - pos1;
	// return normalised dot product between (axisVector) and (separation vector between arg0 and pos1)
	return (axis.x * (point.x - pos1.x) + axis.y * (point.y - pos1.y) + axis.z * (point.z - pos1.z)) / mag;
}

// /*
// * --INFO--
// * Address:	........
// * Size:	00001C
// */
// void Tube::getRatioRadius(float)
// {
// // UNUSED FUNCTION
// }

// /*
// * --INFO--
// * Address:	........
// * Size:	000200
// */
// void Tube::getPosGradient(Vector3f&, float, Vector3f&, Vector3f&)
// {
// // UNUSED FUNCTION
// }

/*
 * --INFO--
 * Address:	80415EC8
 * Size:	00004C
 */
Vector3f Tube::setPos(float)
{
	/*
	lfs      f6, 0(r4)
	lfs      f0, 0xc(r4)
	lfs      f5, 4(r4)
	fsubs    f0, f0, f6
	lfs      f2, 0x10(r4)
	lfs      f4, 8(r4)
	fsubs    f2, f2, f5
	lfs      f3, 0x14(r4)
	fmuls    f0, f0, f1
	fsubs    f3, f3, f4
	fmuls    f2, f2, f1
	fadds    f0, f6, f0
	fmuls    f1, f3, f1
	fadds    f2, f5, f2
	stfs     f0, 0(r3)
	fadds    f0, f4, f1
	stfs     f2, 4(r3)
	stfs     f0, 8(r3)
	blr
	*/
}

/*
 * --INFO--
 * Address:	80415F14
 * Size:	000058
 */
bool Sphere::intersect(Sys::Sphere& ball)
{
	// check if a sphere intersects with a second sphere 'ball'
	// return 1 if yes, return 0 if no

	// first, calculate separation vector
	float diff_y = ball.m_position.y - m_position.y;
	float diff_x = ball.m_position.x - m_position.x;
	float diff_z = ball.m_position.z - m_position.z;

	// calculate square of distance between them
	float sq_dist = diff_x * diff_x + diff_y * diff_y + diff_z * diff_z;

	// add radii to get total "material" between their centers
	float sep = ball.m_radius + m_radius;

	// total material ^2 - dist^2 > 0 if no intersection, but flip the sign (??)
	float gap = -(sep * sep - sq_dist);

	// get return values - 1 if they spheres intersect (including touch), 0 if they don't
	if (gap <= lbl_80520308) {
		return 1;
	}
	return 0;
}

/*
 * --INFO--
 * Address:	80415F6C
 * Size:	000120
 */
bool Sphere::intersect(Sys::Sphere& ball, Vector3f& vec)
{
	// calculate whether sphere intersects with another sphere 'ball'
	// output 1 if they intersect (or touch), 0 if they don't
	// also load into vec the (negative) separation vector between the spheres, scaled by how much they overlap
	// i.e. a repulsion vector

	// get separation vector
	vec = ball.m_position - m_position;
	// vec = Vector3f(ball.m_position.x - m_position.x, ball.m_position.y - m_position.y, ball.m_position.z - m_position.z);

	// get distance between centers
	float mag = pikmin2_sqrtf(vec.x * vec.x + vec.y * vec.y + vec.z * vec.z);
	if (mag > lbl_80520308) { // if spheres aren't in the exact same spot, normalise separation vector
		float norm = lbl_8052030C / mag;
		vec.x *= norm;
		vec.y *= norm;
		vec.z *= norm;
	} else { // if they're in the same spot or some funky math has happened, make the distance 0
		mag = lbl_80520308;
	}
	// (distance between centers) - (total 'material' between centers); positive if there's a gap
	float sep = mag - (ball.m_radius + m_radius);

	// if positive, gap, so no intersection
	if (sep > lbl_80520308) {
		return 0;
	}
	// if negative, scale the unit separation vector by the (negative) overlap to make it a repulsion vector
	vec = Vector3f(vec.x * sep, vec.y * sep, vec.z * sep);

	// yes they intersect
	return 1;
}

/*
 * --INFO--
 * Address:	8041608C
 * Size:	000204
 */
bool Sphere::intersect(Sys::Edge& edge_in, float& t)
{
	// calculate if sphere intersections with edge edge_in
	// return 1 if intersecting, 0 if not
	// also put a parameter into t that says how far along the edge it's intersecting
	// t = 0 if intersecting at pos1; = 1 if at pos2; 0 < t < 1 if in the middle

	// check one end point of edge
	Vector3f diff_0(edge_in.pos1.x - m_position.x, edge_in.pos1.y - m_position.y, edge_in.pos1.z - m_position.z);
	float dist_0 = pikmin2_sqrtf(diff_0.x * diff_0.x + diff_0.y * diff_0.y + diff_0.z * diff_0.z);
	if (dist_0 <= m_radius) { // one end is already intersecting
		t = lbl_80520308;
		return 1;
	}

	// check other end point of edge
	Vector3f diff_1(edge_in.pos2.x - m_position.x, edge_in.pos2.y - m_position.y, edge_in.pos2.z - m_position.z);
	float dist_1 = pikmin2_sqrtf(diff_1.x * diff_1.x + diff_1.y * diff_1.y + diff_1.z * diff_1.z);
	if (dist_1 <= m_radius) { // one end is already intersecting
		t = lbl_8052030C;
		return 1;
	}

	// create edge vector (pointing along edge)
	Vector3f vec_edge(edge_in.pos2.x - edge_in.pos1.x, edge_in.pos2.y - edge_in.pos1.y, edge_in.pos2.z - edge_in.pos1.z);

	// calculate how long the edge is
	float len_edge = pikmin2_sqrtf(vec_edge.x * vec_edge.x + vec_edge.y * vec_edge.y + vec_edge.z * vec_edge.z);
	if (len_edge > lbl_80520308) { // if edge exists, normalise edge vector
		float norm = lbl_8052030C / len_edge;
		vec_edge.x *= norm;
		vec_edge.y *= norm;
		vec_edge.z *= norm;
	} else {
		len_edge = lbl_80520308; // edge is 0 length or we did funky math
	}

	// negative of diff_0, will be used to calculate perp dist
	Vector3f sep(m_position.x - edge_in.pos1.x, m_position.y - edge_in.pos1.y, m_position.z - edge_in.pos1.z);

	// set t = dot product between edge vec and sep vec between ball and start point
	t = sep.x * vec_edge.x + sep.y * vec_edge.y + sep.z * vec_edge.z;

	// if dot prod is negative or really big, there's no intersection
	if ((t < lbl_80520308) || (t > len_edge)) {
		return 0;
	}

	// create a weighted edge vector with dot product
	float t_vec_x = vec_edge.x * t;
	float t_vec_y = vec_edge.y * t;
	float t_vec_z = vec_edge.z * t;

	// vector to closest point of edge from center of sphere
	Vector3f weighted_sep(sep.x - t_vec_x, sep.y - t_vec_y, sep.z - t_vec_z);

	// check if perp distance to edge is less than or equal to radius of sphere
	float sep_dist = pikmin2_sqrtf(weighted_sep.x * weighted_sep.x + weighted_sep.y * weighted_sep.y + weighted_sep.z * weighted_sep.z);
	if (sep_dist <= m_radius) { // if so, intersects, so return 1; t is then parametrised 'center' of intersection on edge
		return 1;
	}
	return 0;
}

/*
 * --INFO--
 * Address:	80416290
 * Size:	00028C
 */
bool Sphere::intersect(Sys::Edge&, float&, Vector3f&)
{
	/*
	stwu     r1, -0x60(r1)
	mflr     r0
	stw      r0, 0x64(r1)
	stfd     f31, 0x50(r1)
	psq_st   f31, 88(r1), 0, qr0
	stfd     f30, 0x40(r1)
	psq_st   f30, 72(r1), 0, qr0
	stfd     f29, 0x30(r1)
	psq_st   f29, 56(r1), 0, qr0
	stfd     f28, 0x20(r1)
	psq_st   f28, 40(r1), 0, qr0
	stw      r31, 0x1c(r1)
	stw      r30, 0x18(r1)
	stw      r29, 0x14(r1)
	stw      r28, 0x10(r1)
	mr       r28, r3
	mr       r29, r4
	lfs      f2, 4(r4)
	mr       r30, r5
	lfs      f0, 4(r3)
	mr       r31, r6
	lfs      f1, 0(r4)
	fsubs    f4, f2, f0
	lfs      f0, 0(r3)
	lfs      f2, 8(r4)
	fsubs    f3, f1, f0
	lfs      f1, 8(r3)
	fmuls    f0, f4, f4
	fsubs    f1, f2, f1
	fmadds   f0, f3, f3, f0
	fmadds   f1, f1, f1, f0
	bl       pikmin2_sqrtf__Ff
	lfs      f0, 0xc(r28)
	fcmpo    cr0, f1, f0
	cror     2, 0, 2
	bne      lbl_80416348
	lfs      f0, lbl_80520308@sda21(r2)
	li       r3, 1
	stfs     f0, 0(r30)
	lfs      f0, 0(r29)
	stfs     f0, 0(r31)
	lfs      f0, 4(r29)
	stfs     f0, 4(r31)
	lfs      f0, 8(r29)
	stfs     f0, 8(r31)
	b        lbl_804164DC

lbl_80416348:
	lfs      f2, 0x10(r29)
	lfs      f0, 4(r28)
	lfs      f1, 0xc(r29)
	fsubs    f4, f2, f0
	lfs      f0, 0(r28)
	lfs      f2, 0x14(r29)
	fsubs    f3, f1, f0
	lfs      f1, 8(r28)
	fmuls    f0, f4, f4
	fsubs    f1, f2, f1
	fmadds   f0, f3, f3, f0
	fmadds   f1, f1, f1, f0
	bl       pikmin2_sqrtf__Ff
	lfs      f0, 0xc(r28)
	fcmpo    cr0, f1, f0
	cror     2, 0, 2
	bne      lbl_804163B4
	lfs      f0, lbl_8052030C@sda21(r2)
	li       r3, 1
	stfs     f0, 0(r30)
	lfs      f0, 0xc(r29)
	stfs     f0, 0(r31)
	lfs      f0, 0x10(r29)
	stfs     f0, 4(r31)
	lfs      f0, 0x14(r29)
	stfs     f0, 8(r31)
	b        lbl_804164DC

lbl_804163B4:
	lfs      f2, 0x10(r29)
	lfs      f0, 4(r29)
	lfs      f1, 0xc(r29)
	fsubs    f29, f2, f0
	lfs      f0, 0(r29)
	lfs      f2, 0x14(r29)
	fsubs    f30, f1, f0
	lfs      f1, 8(r29)
	fmuls    f0, f29, f29
	fsubs    f28, f2, f1
	fmadds   f0, f30, f30, f0
	fmadds   f1, f28, f28, f0
	bl       pikmin2_sqrtf__Ff
	lfs      f31, lbl_80520308@sda21(r2)
	fcmpo    cr0, f1, f31
	ble      lbl_8041640C
	lfs      f0, lbl_8052030C@sda21(r2)
	fmr      f31, f1
	fdivs    f0, f0, f1
	fmuls    f30, f30, f0
	fmuls    f29, f29, f0
	fmuls    f28, f28, f0

lbl_8041640C:
	lfs      f2, 4(r31)
	lfs      f0, 4(r29)
	lfs      f1, 0(r31)
	fsubs    f4, f2, f0
	lfs      f0, 0(r29)
	lfs      f2, 8(r31)
	fsubs    f3, f1, f0
	lfs      f0, 8(r29)
	fmuls    f1, f4, f29
	fsubs    f5, f2, f0
	lfs      f0, lbl_80520308@sda21(r2)
	fmadds   f1, f3, f30, f1
	fmadds   f1, f5, f28, f1
	stfs     f1, 0(r30)
	lfs      f2, 0(r30)
	fcmpo    cr0, f2, f0
	blt      lbl_80416458
	fcmpo    cr0, f2, f31
	ble      lbl_80416460

lbl_80416458:
	li       r3, 0
	b        lbl_804164DC

lbl_80416460:
	fmuls    f1, f29, f2
	fmuls    f0, f30, f2
	fmuls    f2, f28, f2
	fsubs    f4, f4, f1
	fsubs    f1, f3, f0
	fsubs    f2, f5, f2
	fmuls    f0, f4, f4
	fmadds   f0, f1, f1, f0
	fmadds   f1, f2, f2, f0
	bl       pikmin2_sqrtf__Ff
	lfs      f0, 0xc(r28)
	fcmpo    cr0, f1, f0
	cror     2, 0, 2
	bne      lbl_804164D8
	lfs      f0, 0(r30)
	li       r3, 1
	lfs      f1, 0(r29)
	fmuls    f4, f0, f31
	lfs      f3, 4(r29)
	lfs      f5, 8(r29)
	fmuls    f0, f30, f4
	fmuls    f2, f29, f4
	fmuls    f4, f28, f4
	fadds    f0, f1, f0
	fadds    f1, f3, f2
	fadds    f2, f5, f4
	stfs     f0, 0(r31)
	stfs     f1, 4(r31)
	stfs     f2, 8(r31)
	b        lbl_804164DC

lbl_804164D8:
	li       r3, 0

lbl_804164DC:
	psq_l    f31, 88(r1), 0, qr0
	lfd      f31, 0x50(r1)
	psq_l    f30, 72(r1), 0, qr0
	lfd      f30, 0x40(r1)
	psq_l    f29, 56(r1), 0, qr0
	lfd      f29, 0x30(r1)
	psq_l    f28, 40(r1), 0, qr0
	lfd      f28, 0x20(r1)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	lwz      r29, 0x14(r1)
	lwz      r0, 0x64(r1)
	lwz      r28, 0x10(r1)
	mtlr     r0
	addi     r1, r1, 0x60
	blr
	*/
}

/*
 * --INFO--
 * Address:	8041651C
 * Size:	0003D4
 */
bool Sphere::intersect(Sys::Edge& edge_in, float& t, Vector3f& vec_out, float& f_out)
{
	// cakculates whether sphere intersects an edge 'edge_in'
	// puts "position" of overlap in t - t = 0 if overlap = start of edge, t = 1 if overlap = end of edge
	// vec_out = repulsion vector away from edge
	// f_out = amount of overlap between edge and sphere - "strength of overlap"

	// calculate vector along edge
	Vector3f edge_vec(edge_in.pos2.x - edge_in.pos1.x, edge_in.pos2.y - edge_in.pos1.y, edge_in.pos2.z - edge_in.pos1.z);

	// calculate length of edge
	float len_edge = pikmin2_sqrtf(edge_vec.x * edge_vec.x + edge_vec.y * edge_vec.y + edge_vec.z * edge_vec.z);
	if (len_edge > lbl_80520308) { // if edge has non-zero length, normalise edge vector
		float norm_0 = lbl_8052030C / len_edge;
		edge_vec.x *= norm_0;
		edge_vec.y *= norm_0;
		edge_vec.z *= norm_0;
	} else { // if we did funky math or it's 0, make sure it's 0
		len_edge = lbl_80520308;
	}

	// calculate vector from start of edge to sphere
	Vector3f diff_0(m_position.x - edge_in.pos1.x, m_position.y - edge_in.pos1.y, m_position.z - edge_in.pos1.z);

	// set t to dot product between diff_0 and edge_vec - this is 0 if perpendicular, max if parallel.
	t = diff_0.x * edge_vec.x + diff_0.y * edge_vec.y + diff_0.z * edge_vec.z;

	// if sphere is either on "left" side of edge, or "right" side of edge, check more carefully
	if ((t < lbl_80520308) || (t > len_edge)) {

		// legit just -diff_0 but go with it
		Vector3f sep_1(edge_in.pos1.x - m_position.x, edge_in.pos1.y - m_position.y, edge_in.pos1.z - m_position.z);

		// if the length of sep vector <= radius, we have overlap with start of edge!
		if (pikmin2_sqrtf(sep_1.x * sep_1.x + sep_1.y * sep_1.y + sep_1.z * sep_1.z) <= m_radius) {

			// overlap is at start of edge!
			t = lbl_80520308;
			// vec_out (initially) = diff_0, i.e. sep vec but pointing away from edge, i.e. repulsion
			vec_out = Vector3f(m_position.x - edge_in.pos1.x, m_position.y - edge_in.pos1.y, m_position.z - edge_in.pos1.z);

			// next, normalise vec_out, and put "strength of overlap" into f_out
			float len_vec = pikmin2_sqrtf(vec_out.x * vec_out.x + vec_out.y * vec_out.y + vec_out.z * vec_out.z);
			if (len_vec > lbl_80520308) { // if sep vec has non-zero length, normalise
				float norm_vec = lbl_8052030C / len_vec;
				vec_out.x *= norm_vec;
				vec_out.y *= norm_vec;
				vec_out.z *= norm_vec;
			} else { // if we did funky math or it's 0, make sure it's 0
				len_vec = lbl_80520308;
			}

			// set f_out to roughly how much overlap there is, i.e. "strength of overlap"
			f_out = m_radius - len_vec;
			// if the length is 0, make sure output vector is 0
			if (lbl_80520308 == len_vec) {
				vec_out = Vector3f(lbl_80520308, lbl_80520308, lbl_80520308);
			}
			return 1; // yes it overlaps, we're done
		}

		// now we check end point of edge, so calculate vector between sphere and end point
		Vector3f diff_1(edge_in.pos2.x - m_position.x, edge_in.pos2.y - m_position.y, edge_in.pos2.z - m_position.z);

		// if we're too close to end point, need to do some overlap calculations
		if (pikmin2_sqrtf(diff_1.x * diff_1.x + diff_1.y * diff_1.y + diff_1.z * diff_1.z) <= m_radius) {
			// overlap is at the end of edge!
			t = 1.0f;
			// vec_out (initially) = -diff_1, i.e. sep vec but pointing away from edge, i.e. repulsion
			vec_out = Vector3f(m_position.x - edge_in.pos2.x, m_position.y - edge_in.pos2.y, m_position.z - edge_in.pos2.z);

			// next, normalise vec_out, and put "strength of overlap" into f_out
			float len_vec = pikmin2_sqrtf(vec_out.x * vec_out.x + vec_out.y * vec_out.y + vec_out.z * vec_out.z);
			if (len_vec > lbl_80520308) { // if sep vec has non-zero length, normalise
				float norm_vec = lbl_8052030C / len_vec;
				vec_out.x *= norm_vec;
				vec_out.y *= norm_vec;
				vec_out.z *= norm_vec;
			} else { // if we did funky math or it's 0, make sure it's 0
				len_vec = lbl_80520308;
			}

			// set f_out to roughly how much overlap there is, i.e. "strength of overlap"
			f_out = m_radius - len_vec;
			// if the length is 0, make sure output vector is 0
			if (lbl_80520308 == len_vec) {
				vec_out = Vector3f(lbl_80520308, lbl_80520308, lbl_80520308);
			}
			return 1; // yes it overlaps, we're done
		}
		return 0; // to "left" or "right" of edge, but not close enough - no overlap, we're done
	}

	// if sphere is "in front" of the edge, need to do some other calculations
	// first, weight edge vector by dot product
	float t_x = edge_vec.x * t;
	float t_y = edge_vec.y * t;
	float t_z = edge_vec.z * t;

	// calculate "perp dist" vector
	Vector3f sep(diff_0.x - t_x, diff_0.y - t_y, diff_0.z - t_z);

	// calculate distance from edge
	float len_sep = pikmin2_sqrtf(sep.x * sep.x + sep.y * sep.y + sep.z * sep.z);
	if (len_sep > lbl_80520308) { // if sep vec has non-zero length, normalise
		float norm_sep = lbl_8052030C / len_sep;
		sep.x *= norm_sep;
		sep.y *= norm_sep;
		sep.z *= norm_sep;
	} else { // if we did funky math or it's 0, make sure it's 0
		len_sep = lbl_80520308;
	}

	// check if sphere is too close to the edge
	if (len_sep < m_radius) {          // yes, it's too close - edge is inside radius
		if (lbl_80520308 == len_sep) { // if sphere is centered ON the edge
			vec_out = Vector3f(lbl_80520308, lbl_80520308, lbl_80520308);
			f_out   = m_radius; // "strength of overlap" is radius
			return 1;           // yes it overlaps, we're done
		}
		// sphere not centered on the edge
		f_out   = m_radius - len_sep;            // reduce "strength of overlap" by how far away it is
		vec_out = Vector3f(sep.x, sep.y, sep.z); // vec_out = repulsion vector directly away from edge
		return 1;                                // yes it overlaps, we're done
	}
	return 0; // not close enough to the edge - no overlap, we're done
}

// /*
// * --INFO--
// * Address:	........
// * Size:	0000D8
// */
// bool Sphere::intersectRay(Vector3f&, Vector3f&)
// {
// // UNUSED FUNCTION
// }

/*
 * --INFO--
 * Address:	804168F0
 * Size:	000068
 */
Triangle::Triangle(void)
{
	// Triangle constructor
	//     Vector3i m_vertices;
	//     Plane m_normal;
	//     Plane m_tangents[3];
	//     Sphere m_sphere;
	//     MapCode::Code m_code;
	m_code.m_contents = (bool)0;
}

// /*
// * --INFO--
// * Address:	........
// * Size:	00027C
// */
// void Triangle::findNearestPoint(Sys::VertexTable&, Vector3f&, Vector3f&)
// {
// // UNUSED FUNCTION
// }

/*
 * --INFO--
 * Address:	80416958
 * Size:	000168
 */
void Triangle::createSphere(Sys::VertexTable&)
{
	/*
	stwu     r1, -0x60(r1)
	mflr     r0
	stw      r0, 0x64(r1)
	stfd     f31, 0x50(r1)
	psq_st   f31, 88(r1), 0, qr0
	stfd     f30, 0x40(r1)
	psq_st   f30, 72(r1), 0, qr0
	stfd     f29, 0x30(r1)
	psq_st   f29, 56(r1), 0, qr0
	stfd     f28, 0x20(r1)
	psq_st   f28, 40(r1), 0, qr0
	stw      r31, 0x1c(r1)
	stw      r30, 0x18(r1)
	stw      r29, 0x14(r1)
	stw      r28, 0x10(r1)
	mr       r28, r3
	mr       r29, r4
	lwz      r3, 4(r3)
	mr       r31, r28
	lwz      r0, 0(r28)
	li       r30, 0
	mulli    r3, r3, 0xc
	lwz      r5, 0x24(r4)
	lwz      r4, 8(r28)
	lfs      f4, lbl_80520314@sda21(r2)
	add      r3, r5, r3
	lfs      f31, lbl_80520308@sda21(r2)
	mulli    r0, r0, 0xc
	lfs      f5, 0(r3)
	lfs      f2, 4(r3)
	lfs      f0, 8(r3)
	add      r3, r5, r0
	mulli    r0, r4, 0xc
	lfs      f6, 0(r3)
	lfs      f3, 4(r3)
	lfs      f1, 8(r3)
	fadds    f6, f6, f5
	add      r3, r5, r0
	lfs      f5, 0(r3)
	fadds    f3, f3, f2
	lfs      f2, 4(r3)
	fadds    f1, f1, f0
	lfs      f0, 8(r3)
	fadds    f5, f6, f5
	fadds    f2, f3, f2
	fadds    f0, f1, f0
	fmuls    f30, f5, f4
	fmuls    f29, f2, f4
	fmuls    f28, f0, f4

lbl_80416A1C:
	lwz      r0, 0(r31)
	lwz      r3, 0x24(r29)
	mulli    r0, r0, 0xc
	add      r3, r3, r0
	lfs      f1, 4(r3)
	lfs      f0, 0(r3)
	fsubs    f3, f1, f29
	lfs      f1, 8(r3)
	fsubs    f2, f0, f30
	fsubs    f1, f1, f28
	fmuls    f0, f3, f3
	fmadds   f0, f2, f2, f0
	fmadds   f1, f1, f1, f0
	bl       pikmin2_sqrtf__Ff
	fcmpo    cr0, f1, f31
	ble      lbl_80416A60
	fmr      f31, f1

lbl_80416A60:
	addi     r30, r30, 1
	addi     r31, r31, 4
	cmpwi    r30, 3
	blt      lbl_80416A1C
	stfs     f31, 0x58(r28)
	stfs     f30, 0x4c(r28)
	stfs     f29, 0x50(r28)
	stfs     f28, 0x54(r28)
	psq_l    f31, 88(r1), 0, qr0
	lfd      f31, 0x50(r1)
	psq_l    f30, 72(r1), 0, qr0
	lfd      f30, 0x40(r1)
	psq_l    f29, 56(r1), 0, qr0
	lfd      f29, 0x30(r1)
	psq_l    f28, 40(r1), 0, qr0
	lfd      f28, 0x20(r1)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	lwz      r29, 0x14(r1)
	lwz      r0, 0x64(r1)
	lwz      r28, 0x10(r1)
	mtlr     r0
	addi     r1, r1, 0x60
	blr
	*/
}

/*
 * --INFO--
 * Address:	80416AC0
 * Size:	000084
 */
bool Sys::Triangle::fastIntersect(Sys::Sphere& ball)
{
	// check if "triangle sphere" intersects with sphere 'ball'
	// first, calculate separation vector between center of spheres
	Vector3f sep = ball.m_position - m_sphere.m_position;

	// check how far apart they are
	float dist = pikmin2_sqrtf(sep.x * sep.x + sep.y * sep.y + sep.z * sep.z);
	// check how much "stuff" is between them
	float radii = ball.m_radius + m_sphere.m_radius;

	// if separation is less than or equal to amount of material, overlap; if not, no overlap
	return (dist <= radii);
}

// /*
// * --INFO--
// * Address:	........
// * Size:	000088
// */
// void Triangle::write(Stream&)
// {
// // UNUSED FUNCTION
// }

// /*
// * --INFO--
// * Address:	........
// * Size:	000088
// */
// void Triangle::read(Stream&)
// {
// // UNUSED FUNCTION
// }

// /*
// * --INFO--
// * Address:	........
// * Size:	000038
// */
// void Triangle::constructFromJ3D(Sys::VertexTable&, __J3DUTriangle&)
// {
// // UNUSED FUNCTION
// }

// /*
// * --INFO--
// * Address:	........
// * Size:	000004
// */
// void Triangle::draw(Graphics&, Sys::VertexTable&, bool)
// {
// // UNUSED FUNCTION
// }

/*
 * --INFO--
 * Address:	80416B44
 * Size:	000104
 */
float Sys::Triangle::calcDist(Plane& plane_in, Sys::VertexTable& vertTable)
{
	// calculate distance to closest vertex of triangle from a given plane

	// get triangle vertices from VertexTable vertTable
	Vector3f vert_1 = vertTable.m_objects[m_vertices[0]];
	Vector3f vert_2 = vertTable.m_objects[m_vertices[1]];
	Vector3f vert_3 = vertTable.m_objects[m_vertices[2]];

	// calculate distance from plane to each vertex
	float vert_1_sep = (vert_1.x * plane_in.a + vert_1.y * plane_in.b + vert_1.z * plane_in.c) - plane_in.d;
	float vert_2_sep = (vert_2.x * plane_in.a + vert_2.y * plane_in.b + vert_2.z * plane_in.c) - plane_in.d;
	float vert_3_sep = (vert_3.x * plane_in.a + vert_3.y * plane_in.b + vert_3.z * plane_in.c) - plane_in.d;

	float shortest_dist;

	// check what closest point is
	if (vert_1_sep < vert_2_sep) {
		shortest_dist = (vert_1_sep < vert_3_sep) ? vert_1_sep : vert_3_sep;
	} else {
		shortest_dist = (vert_2_sep < vert_3_sep) ? vert_2_sep : vert_3_sep;
	}

	// check what second closest point is
	float second_dist;
	if (vert_1_sep < vert_2_sep) {
		second_dist = (vert_2_sep < vert_3_sep) ? vert_3_sep : vert_2_sep;
	} else {
		second_dist = (vert_1_sep < vert_3_sep) ? vert_3_sep : vert_1_sep;
	}

	// make sure math isn't funky or we're not intersecting the plane
	// float factor = (shortest_dist * second_dist);
	if (shortest_dist * second_dist > lbl_80520308) { // 0.0f
		return shortest_dist;                         // assuming both distances are positive, we're good, return shortest distance
	}
	return lbl_80520308; // if something's negative or one is zero, we're overlapping, so return 0 as distance
}

// /*
// * --INFO--
// * Address:	........
// * Size:	0001EC
// */
// bool Triangle::intersect(Sys::VertexTable&, BoundBox2d&)
// {
// // UNUSED FUNCTION
// }

// /*
// * --INFO--
// * Address:	........
// * Size:	0002F0
// */
// bool Triangle::intersect(Sys::Edge&, Vector3f&)
// {
// // UNUSED FUNCTION
// }

/*
 * --INFO--
 * Address:	80416C48
 * Size:	000334
 */
bool Triangle::intersect(Sys::Edge&, float, Vector3f&)
{
	/*
	stwu     r1, -0x60(r1)
	mflr     r0
	stw      r0, 0x64(r1)
	stfd     f31, 0x50(r1)
	psq_st   f31, 88(r1), 0, qr0
	stfd     f30, 0x40(r1)
	psq_st   f30, 72(r1), 0, qr0
	stfd     f29, 0x30(r1)
	psq_st   f29, 56(r1), 0, qr0
	stfd     f28, 0x20(r1)
	psq_st   f28, 40(r1), 0, qr0
	stw      r31, 0x1c(r1)
	stw      r30, 0x18(r1)
	stw      r29, 0x14(r1)
	mr       r30, r4
	fmr      f28, f1
	lfs      f2, 0x10(r4)
	mr       r29, r3
	lfs      f0, 4(r4)
	mr       r31, r5
	lfs      f1, 0xc(r4)
	fsubs    f30, f2, f0
	lfs      f0, 0(r4)
	lfs      f2, 0x14(r4)
	fsubs    f31, f1, f0
	lfs      f1, 8(r4)
	fmuls    f0, f30, f30
	fsubs    f29, f2, f1
	fmadds   f0, f31, f31, f0
	fmadds   f1, f29, f29, f0
	bl       pikmin2_sqrtf__Ff
	lfs      f3, 0x10(r29)
	lfs      f0, lbl_80520308@sda21(r2)
	fmuls    f2, f3, f30
	lfs      f6, 0xc(r29)
	lfs      f7, 0x14(r29)
	fcmpu    cr0, f0, f1
	fmadds   f0, f6, f31, f2
	fmadds   f4, f7, f29, f0
	bne      lbl_80416CF0
	li       r3, 0
	b        lbl_80416F40

lbl_80416CF0:
	fdivs    f2, f28, f1
	lfs      f0, lbl_80520320@sda21(r2)
	fabs     f1, f4
	frsp     f1, f1
	fcmpo    cr0, f1, f0
	bge      lbl_80416E34
	lfs      f1, 4(r30)
	lfs      f4, 0(r30)
	fmuls    f3, f1, f3
	lfs      f5, 8(r30)
	lfs      f1, 0x18(r29)
	fmadds   f3, f4, f6, f3
	fmadds   f3, f5, f7, f3
	fsubs    f1, f3, f1
	fabs     f1, f1
	frsp     f1, f1
	fcmpo    cr0, f1, f28
	cror     2, 0, 2
	bne      lbl_80416E24
	lfs      f3, lbl_8052030C@sda21(r2)
	fneg     f1, f2
	li       r0, 3
	mr       r3, r29
	fadds    f2, f3, f2
	mtctr    r0

lbl_80416D54:
	lfs      f4, 0x20(r3)
	lfs      f5, 0x1c(r3)
	fmuls    f3, f4, f30
	lfs      f6, 0x24(r3)
	fmadds   f3, f5, f31, f3
	fmadds   f7, f6, f29, f3
	fabs     f3, f7
	frsp     f3, f3
	fcmpo    cr0, f3, f0
	ble      lbl_80416E18
	lfs      f9, 4(r30)
	lfs      f10, 0(r30)
	fmuls    f3, f4, f9
	lfs      f8, 8(r30)
	lfs      f4, 0x28(r3)
	fmadds   f3, f5, f10, f3
	fmadds   f3, f6, f8, f3
	fsubs    f3, f4, f3
	fdivs    f3, f3, f7
	fcmpo    cr0, f3, f1
	ble      lbl_80416E18
	fcmpo    cr0, f3, f2
	bge      lbl_80416E18
	fmuls    f5, f31, f3
	fmuls    f4, f30, f3
	fmuls    f3, f29, f3
	fadds    f5, f10, f5
	fadds    f4, f9, f4
	fadds    f3, f8, f3
	stfs     f5, 0(r31)
	stfs     f4, 4(r31)
	stfs     f3, 8(r31)
	lfs      f4, 4(r31)
	lfs      f3, 0x10(r29)
	lfs      f5, 0(r31)
	fmuls    f3, f4, f3
	lfs      f4, 0xc(r29)
	lfs      f7, 8(r31)
	lfs      f6, 0x14(r29)
	fmadds   f4, f5, f4, f3
	lfs      f3, 0x18(r29)
	fmadds   f4, f7, f6, f4
	fsubs    f3, f4, f3
	fabs     f3, f3
	frsp     f3, f3
	fcmpo    cr0, f3, f28
	bge      lbl_80416E18
	li       r3, 1
	b        lbl_80416F40

lbl_80416E18:
	addi     r3, r3, 0x10
	bdnz     lbl_80416D54
	b        lbl_80416E2C

lbl_80416E24:
	li       r3, 0
	b        lbl_80416F40

lbl_80416E2C:
	li       r3, 0
	b        lbl_80416F40

lbl_80416E34:
	lfs      f8, 4(r30)
	fneg     f0, f2
	lfs      f9, 0(r30)
	fmuls    f1, f3, f8
	lfs      f5, 8(r30)
	lfs      f3, 0x18(r29)
	fmadds   f1, f6, f9, f1
	fmadds   f1, f7, f5, f1
	fsubs    f1, f3, f1
	fdivs    f3, f1, f4
	fcmpo    cr0, f3, f0
	blt      lbl_80416E74
	lfs      f0, lbl_8052030C@sda21(r2)
	fadds    f0, f0, f2
	fcmpo    cr0, f3, f0
	ble      lbl_80416E7C

lbl_80416E74:
	li       r3, 0
	b        lbl_80416F40

lbl_80416E7C:
	fmuls    f2, f31, f3
	fmuls    f1, f30, f3
	fmuls    f0, f29, f3
	fadds    f2, f9, f2
	fadds    f1, f8, f1
	fadds    f0, f5, f0
	stfs     f2, 0(r31)
	stfs     f1, 4(r31)
	stfs     f0, 8(r31)
	lfs      f2, 4(r31)
	lfs      f0, 0x20(r29)
	lfs      f4, 0(r31)
	fmuls    f1, f2, f0
	lfs      f3, 0x1c(r29)
	lfs      f6, 8(r31)
	lfs      f5, 0x24(r29)
	fmadds   f1, f4, f3, f1
	lfs      f0, 0x28(r29)
	fmadds   f1, f6, f5, f1
	fsubs    f0, f1, f0
	fcmpo    cr0, f0, f28
	ble      lbl_80416EDC
	li       r3, 0
	b        lbl_80416F40

lbl_80416EDC:
	lfs      f0, 0x30(r29)
	lfs      f3, 0x2c(r29)
	fmuls    f1, f2, f0
	lfs      f5, 0x34(r29)
	lfs      f0, 0x38(r29)
	fmadds   f1, f4, f3, f1
	fmadds   f1, f6, f5, f1
	fsubs    f0, f1, f0
	fcmpo    cr0, f0, f28
	ble      lbl_80416F0C
	li       r3, 0
	b        lbl_80416F40

lbl_80416F0C:
	lfs      f0, 0x40(r29)
	lfs      f3, 0x3c(r29)
	fmuls    f1, f2, f0
	lfs      f5, 0x44(r29)
	lfs      f0, 0x48(r29)
	fmadds   f1, f4, f3, f1
	fmadds   f1, f6, f5, f1
	fsubs    f0, f1, f0
	fcmpo    cr0, f0, f28
	ble      lbl_80416F3C
	li       r3, 0
	b        lbl_80416F40

lbl_80416F3C:
	li       r3, 1

lbl_80416F40:
	psq_l    f31, 88(r1), 0, qr0
	lfd      f31, 0x50(r1)
	psq_l    f30, 72(r1), 0, qr0
	lfd      f30, 0x40(r1)
	psq_l    f29, 56(r1), 0, qr0
	lfd      f29, 0x30(r1)
	psq_l    f28, 40(r1), 0, qr0
	lfd      f28, 0x20(r1)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	lwz      r0, 0x64(r1)
	lwz      r29, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x60
	blr
	*/
}

/*
 * --INFO--
 * Address:	80416F7C
 * Size:	000370
 */
bool Triangle::intersect(Sys::Edge&, float, Vector3f&, float&)
{
	/*
	stwu     r1, -0x60(r1)
	mflr     r0
	stw      r0, 0x64(r1)
	stfd     f31, 0x50(r1)
	psq_st   f31, 88(r1), 0, qr0
	stfd     f30, 0x40(r1)
	psq_st   f30, 72(r1), 0, qr0
	stfd     f29, 0x30(r1)
	psq_st   f29, 56(r1), 0, qr0
	stfd     f28, 0x20(r1)
	psq_st   f28, 40(r1), 0, qr0
	stw      r31, 0x1c(r1)
	stw      r30, 0x18(r1)
	stw      r29, 0x14(r1)
	stw      r28, 0x10(r1)
	mr       r29, r4
	fmr      f28, f1
	lfs      f2, 0x10(r4)
	mr       r28, r3
	lfs      f0, 4(r4)
	mr       r30, r5
	lfs      f1, 0xc(r4)
	fsubs    f30, f2, f0
	lfs      f0, 0(r4)
	lfs      f2, 0x14(r4)
	mr       r31, r6
	fsubs    f31, f1, f0
	lfs      f1, 8(r4)
	fmuls    f0, f30, f30
	fsubs    f29, f2, f1
	fmadds   f0, f31, f31, f0
	fmadds   f1, f29, f29, f0
	bl       pikmin2_sqrtf__Ff
	lfs      f3, 0x10(r28)
	lfs      f0, lbl_80520308@sda21(r2)
	fmuls    f2, f3, f30
	lfs      f6, 0xc(r28)
	lfs      f7, 0x14(r28)
	fcmpu    cr0, f0, f1
	fmadds   f0, f6, f31, f2
	fmadds   f4, f7, f29, f0
	bne      lbl_8041702C
	li       r3, 0
	b        lbl_804172AC

lbl_8041702C:
	fdivs    f2, f28, f1
	lfs      f0, lbl_80520320@sda21(r2)
	fabs     f1, f4
	frsp     f1, f1
	fcmpo    cr0, f1, f0
	bge      lbl_80417178
	lfs      f1, 4(r29)
	lfs      f4, 0(r29)
	fmuls    f3, f1, f3
	lfs      f5, 8(r29)
	lfs      f1, 0x18(r28)
	fmadds   f3, f4, f6, f3
	fmadds   f3, f5, f7, f3
	fsubs    f1, f3, f1
	fabs     f1, f1
	frsp     f1, f1
	fcmpo    cr0, f1, f28
	cror     2, 0, 2
	bne      lbl_80417168
	lfs      f3, lbl_8052030C@sda21(r2)
	fneg     f1, f2
	li       r0, 3
	mr       r3, r28
	fadds    f2, f3, f2
	mtctr    r0

lbl_80417090:
	lfs      f4, 0x20(r3)
	lfs      f5, 0x1c(r3)
	fmuls    f3, f4, f30
	lfs      f6, 0x24(r3)
	fmadds   f3, f5, f31, f3
	fmadds   f7, f6, f29, f3
	fabs     f3, f7
	frsp     f3, f3
	fcmpo    cr0, f3, f0
	ble      lbl_8041715C
	lfs      f9, 4(r29)
	lfs      f10, 0(r29)
	fmuls    f3, f4, f9
	lfs      f8, 8(r29)
	lfs      f4, 0x28(r3)
	fmadds   f3, f5, f10, f3
	fmadds   f3, f6, f8, f3
	fsubs    f3, f4, f3
	fdivs    f3, f3, f7
	fcmpo    cr0, f3, f1
	ble      lbl_8041715C
	fcmpo    cr0, f3, f2
	bge      lbl_8041715C
	fmuls    f5, f31, f3
	fmuls    f4, f30, f3
	fmuls    f3, f29, f3
	fadds    f5, f10, f5
	fadds    f4, f9, f4
	fadds    f3, f8, f3
	stfs     f5, 0(r30)
	stfs     f4, 4(r30)
	stfs     f3, 8(r30)
	lfs      f4, 4(r30)
	lfs      f3, 0x10(r28)
	lfs      f5, 0(r30)
	fmuls    f3, f4, f3
	lfs      f4, 0xc(r28)
	lfs      f7, 8(r30)
	lfs      f6, 0x14(r28)
	fmadds   f4, f5, f4, f3
	lfs      f3, 0x18(r28)
	fmadds   f4, f7, f6, f4
	fsubs    f4, f4, f3
	fabs     f3, f4
	frsp     f3, f3
	fcmpo    cr0, f3, f28
	bge      lbl_8041715C
	fsubs    f0, f28, f4
	li       r3, 1
	stfs     f0, 0(r31)
	b        lbl_804172AC

lbl_8041715C:
	addi     r3, r3, 0x10
	bdnz     lbl_80417090
	b        lbl_80417170

lbl_80417168:
	li       r3, 0
	b        lbl_804172AC

lbl_80417170:
	li       r3, 0
	b        lbl_804172AC

lbl_80417178:
	lfs      f8, 4(r29)
	fneg     f0, f2
	lfs      f9, 0(r29)
	fmuls    f1, f3, f8
	lfs      f5, 8(r29)
	lfs      f3, 0x18(r28)
	fmadds   f1, f6, f9, f1
	fmadds   f1, f7, f5, f1
	fsubs    f1, f3, f1
	fdivs    f3, f1, f4
	fcmpo    cr0, f3, f0
	blt      lbl_804171B8
	lfs      f0, lbl_8052030C@sda21(r2)
	fadds    f0, f0, f2
	fcmpo    cr0, f3, f0
	ble      lbl_804171C0

lbl_804171B8:
	li       r3, 0
	b        lbl_804172AC

lbl_804171C0:
	fmuls    f2, f31, f3
	fmuls    f1, f30, f3
	fmuls    f0, f29, f3
	fadds    f2, f9, f2
	fadds    f1, f8, f1
	fadds    f0, f5, f0
	stfs     f2, 0(r30)
	stfs     f1, 4(r30)
	stfs     f0, 8(r30)
	lfs      f3, 4(r30)
	lfs      f0, 0x20(r28)
	lfs      f4, 0(r30)
	fmuls    f1, f3, f0
	lfs      f2, 0x1c(r28)
	lfs      f6, 8(r30)
	lfs      f5, 0x24(r28)
	fmadds   f1, f4, f2, f1
	lfs      f0, 0x28(r28)
	fmadds   f1, f6, f5, f1
	fsubs    f0, f1, f0
	fcmpo    cr0, f0, f28
	ble      lbl_80417220
	li       r3, 0
	b        lbl_804172AC

lbl_80417220:
	lfs      f0, 0x30(r28)
	lfs      f2, 0x2c(r28)
	fmuls    f1, f3, f0
	lfs      f5, 0x34(r28)
	lfs      f0, 0x38(r28)
	fmadds   f1, f4, f2, f1
	fmadds   f1, f6, f5, f1
	fsubs    f0, f1, f0
	fcmpo    cr0, f0, f28
	ble      lbl_80417250
	li       r3, 0
	b        lbl_804172AC

lbl_80417250:
	lfs      f0, 0x40(r28)
	lfs      f2, 0x3c(r28)
	fmuls    f1, f3, f0
	lfs      f5, 0x44(r28)
	lfs      f0, 0x48(r28)
	fmadds   f1, f4, f2, f1
	fmadds   f1, f6, f5, f1
	fsubs    f0, f1, f0
	fcmpo    cr0, f0, f28
	ble      lbl_80417280
	li       r3, 0
	b        lbl_804172AC

lbl_80417280:
	lfs      f0, 0x10(r28)
	li       r3, 1
	lfs      f2, 0xc(r28)
	fmuls    f1, f3, f0
	lfs      f3, 0x14(r28)
	lfs      f0, 0x18(r28)
	fmadds   f1, f4, f2, f1
	fmadds   f1, f6, f3, f1
	fsubs    f0, f1, f0
	fsubs    f0, f28, f0
	stfs     f0, 0(r31)

lbl_804172AC:
	psq_l    f31, 88(r1), 0, qr0
	lfd      f31, 0x50(r1)
	psq_l    f30, 72(r1), 0, qr0
	lfd      f30, 0x40(r1)
	psq_l    f29, 56(r1), 0, qr0
	lfd      f29, 0x30(r1)
	psq_l    f28, 40(r1), 0, qr0
	lfd      f28, 0x20(r1)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	lwz      r29, 0x14(r1)
	lwz      r0, 0x64(r1)
	lwz      r28, 0x10(r1)
	mtlr     r0
	addi     r1, r1, 0x60
	blr
	*/
}

/*
 * --INFO--
 * Address:	804172EC
 * Size:	0002AC
 */
bool Triangle::intersect(Sys::VertexTable&, Sys::Sphere&)
{
	/*
	stwu     r1, -0x40(r1)
	mflr     r0
	stw      r0, 0x44(r1)
	stw      r31, 0x3c(r1)
	mr       r31, r5
	stw      r30, 0x38(r1)
	mr       r30, r4
	stw      r29, 0x34(r1)
	mr       r29, r3
	lfs      f5, 4(r5)
	lfs      f0, 0x10(r3)
	lfs      f6, 0(r5)
	fmuls    f0, f5, f0
	lfs      f1, 0xc(r3)
	lfs      f7, 8(r5)
	lfs      f2, 0x14(r3)
	fmadds   f1, f6, f1, f0
	lfs      f0, 0x18(r3)
	lfs      f4, 0xc(r5)
	fmadds   f1, f7, f2, f1
	fsubs    f0, f1, f0
	fabs     f0, f0
	frsp     f0, f0
	fcmpo    cr0, f0, f4
	ble      lbl_80417358
	li       r3, 0
	b        lbl_8041757C

lbl_80417358:
	lfs      f0, 0x20(r29)
	lfs      f2, 0x1c(r29)
	fmuls    f1, f5, f0
	lfs      f3, 0x24(r29)
	lfs      f0, 0x28(r29)
	fmadds   f1, f6, f2, f1
	fmadds   f1, f7, f3, f1
	fsubs    f8, f1, f0
	fcmpo    cr0, f8, f4
	ble      lbl_80417388
	li       r3, 0
	b        lbl_8041757C

lbl_80417388:
	lfs      f0, 0x30(r29)
	lfs      f2, 0x2c(r29)
	fmuls    f1, f5, f0
	lfs      f3, 0x34(r29)
	lfs      f0, 0x38(r29)
	stfs     f8, 0xc(r1)
	fmadds   f1, f6, f2, f1
	fmadds   f1, f7, f3, f1
	fsubs    f8, f1, f0
	fcmpo    cr0, f8, f4
	ble      lbl_804173BC
	li       r3, 0
	b        lbl_8041757C

lbl_804173BC:
	lfs      f0, 0x40(r29)
	lfs      f2, 0x3c(r29)
	fmuls    f1, f5, f0
	lfs      f3, 0x44(r29)
	lfs      f0, 0x48(r29)
	stfs     f8, 0x10(r1)
	fmadds   f1, f6, f2, f1
	fmadds   f1, f7, f3, f1
	fsubs    f8, f1, f0
	fcmpo    cr0, f8, f4
	ble      lbl_804173F0
	li       r3, 0
	b        lbl_8041757C

lbl_804173F0:
	lwz      r0, 0(r29)
	mr       r3, r31
	lwz      r6, 4(r29)
	addi     r4, r1, 0x18
	mulli    r0, r0, 0xc
	lwz      r8, 0x24(r30)
	stfs     f8, 0x14(r1)
	addi     r5, r1, 8
	add      r7, r8, r0
	lfs      f0, 0(r7)
	mulli    r0, r6, 0xc
	stfs     f0, 0x18(r1)
	add      r6, r8, r0
	lfs      f0, 4(r7)
	stfs     f0, 0x1c(r1)
	lfs      f0, 8(r7)
	stfs     f0, 0x20(r1)
	lfs      f0, 0(r6)
	stfs     f0, 0x24(r1)
	lfs      f0, 4(r6)
	stfs     f0, 0x28(r1)
	lfs      f0, 8(r6)
	stfs     f0, 0x2c(r1)
	bl       intersect__Q23Sys6SphereFRQ23Sys4EdgeRf
	clrlwi.  r0, r3, 0x18
	beq      lbl_80417460
	li       r3, 1
	b        lbl_8041757C

lbl_80417460:
	lwz      r0, 4(r29)
	mr       r3, r31
	lwz      r6, 8(r29)
	addi     r4, r1, 0x18
	mulli    r0, r0, 0xc
	lwz      r8, 0x24(r30)
	addi     r5, r1, 8
	add      r7, r8, r0
	lfs      f0, 0(r7)
	mulli    r0, r6, 0xc
	stfs     f0, 0x18(r1)
	add      r6, r8, r0
	lfs      f0, 4(r7)
	stfs     f0, 0x1c(r1)
	lfs      f0, 8(r7)
	stfs     f0, 0x20(r1)
	lfs      f0, 0(r6)
	stfs     f0, 0x24(r1)
	lfs      f0, 4(r6)
	stfs     f0, 0x28(r1)
	lfs      f0, 8(r6)
	stfs     f0, 0x2c(r1)
	bl       intersect__Q23Sys6SphereFRQ23Sys4EdgeRf
	clrlwi.  r0, r3, 0x18
	beq      lbl_804174CC
	li       r3, 1
	b        lbl_8041757C

lbl_804174CC:
	lwz      r0, 8(r29)
	mr       r3, r31
	lwz      r6, 0(r29)
	addi     r4, r1, 0x18
	mulli    r0, r0, 0xc
	lwz      r8, 0x24(r30)
	addi     r5, r1, 8
	add      r7, r8, r0
	lfs      f0, 0(r7)
	mulli    r0, r6, 0xc
	stfs     f0, 0x18(r1)
	add      r6, r8, r0
	lfs      f0, 4(r7)
	stfs     f0, 0x1c(r1)
	lfs      f0, 8(r7)
	stfs     f0, 0x20(r1)
	lfs      f0, 0(r6)
	stfs     f0, 0x24(r1)
	lfs      f0, 4(r6)
	stfs     f0, 0x28(r1)
	lfs      f0, 8(r6)
	stfs     f0, 0x2c(r1)
	bl       intersect__Q23Sys6SphereFRQ23Sys4EdgeRf
	clrlwi.  r0, r3, 0x18
	beq      lbl_80417538
	li       r3, 1
	b        lbl_8041757C

lbl_80417538:
	lfs      f0, lbl_80520308@sda21(r2)
	lfs      f1, 0xc(r1)
	fcmpo    cr0, f1, f0
	ble      lbl_80417550
	li       r3, 0
	b        lbl_8041757C

lbl_80417550:
	lfs      f1, 0x10(r1)
	fcmpo    cr0, f1, f0
	ble      lbl_80417564
	li       r3, 0
	b        lbl_8041757C

lbl_80417564:
	lfs      f1, 0x14(r1)
	fcmpo    cr0, f1, f0
	ble      lbl_80417578
	li       r3, 0
	b        lbl_8041757C

lbl_80417578:
	li       r3, 1

lbl_8041757C:
	lwz      r0, 0x44(r1)
	lwz      r31, 0x3c(r1)
	lwz      r30, 0x38(r1)
	lwz      r29, 0x34(r1)
	mtlr     r0
	addi     r1, r1, 0x40
	blr
	*/
}

/*
 * --INFO--
 * Address:	80417598
 * Size:	0002F8
 */
bool Triangle::intersect(Sys::VertexTable&, Sys::Sphere&, Vector3f&)
{
	/*
	stwu     r1, -0x40(r1)
	mflr     r0
	stw      r0, 0x44(r1)
	stw      r31, 0x3c(r1)
	mr       r31, r6
	stw      r30, 0x38(r1)
	mr       r30, r5
	stw      r29, 0x34(r1)
	mr       r29, r4
	stw      r28, 0x30(r1)
	mr       r28, r3
	lfs      f8, 4(r5)
	lfs      f4, 0x10(r3)
	lfs      f10, 0(r5)
	fmuls    f3, f8, f4
	lfs      f9, 0xc(r3)
	lfs      f12, 8(r5)
	lfs      f11, 0x14(r3)
	fmadds   f2, f10, f9, f3
	lfs      f1, 0x18(r3)
	lfs      f0, 0xc(r5)
	fmadds   f2, f12, f11, f2
	fsubs    f1, f2, f1
	fabs     f1, f1
	frsp     f1, f1
	fcmpo    cr0, f1, f0
	ble      lbl_8041760C
	li       r3, 0
	b        lbl_80417870

lbl_8041760C:
	fmadds   f1, f9, f10, f3
	lwz      r0, 0(r28)
	lwz      r4, 4(r28)
	mr       r3, r30
	lfs      f0, 0x18(r28)
	mulli    r0, r0, 0xc
	fmadds   f1, f11, f12, f1
	lwz      r5, 0x24(r29)
	mulli    r4, r4, 0xc
	lfs      f5, 0x20(r28)
	add      r8, r5, r0
	lfs      f6, 0x1c(r28)
	fsubs    f2, f1, f0
	lfs      f7, 0x24(r28)
	lfs      f1, 0x28(r28)
	add      r7, r5, r4
	lfs      f0, 0(r8)
	addi     r4, r1, 0x18
	fmuls    f3, f4, f2
	addi     r5, r1, 8
	fmuls    f4, f9, f2
	fmuls    f2, f11, f2
	fsubs    f9, f8, f3
	fsubs    f8, f10, f4
	fsubs    f10, f12, f2
	fmuls    f4, f9, f5
	lfs      f5, 0x30(r28)
	fmadds   f3, f8, f6, f4
	lfs      f6, 0x2c(r28)
	fmuls    f4, f9, f5
	lfs      f5, 0x40(r28)
	fmadds   f2, f10, f7, f3
	lfs      f7, 0x34(r28)
	fmadds   f3, f8, f6, f4
	lfs      f6, 0x3c(r28)
	fmuls    f4, f9, f5
	fsubs    f5, f2, f1
	fmadds   f2, f10, f7, f3
	lfs      f1, 0x38(r28)
	lfs      f7, 0x44(r28)
	fmadds   f3, f8, f6, f4
	stfs     f5, 0xc(r1)
	fsubs    f5, f2, f1
	lfs      f1, 0x48(r28)
	fmadds   f2, f10, f7, f3
	stfs     f0, 0x18(r1)
	lfs      f0, 4(r8)
	stfs     f5, 0x10(r1)
	fsubs    f5, f2, f1
	stfs     f0, 0x1c(r1)
	lfs      f0, 8(r8)
	stfs     f5, 0x14(r1)
	stfs     f0, 0x20(r1)
	lfs      f0, 0(r7)
	stfs     f0, 0x24(r1)
	lfs      f0, 4(r7)
	stfs     f0, 0x28(r1)
	lfs      f0, 8(r7)
	stfs     f0, 0x2c(r1)
	bl       "intersect__Q23Sys6SphereFRQ23Sys4EdgeRfR10Vector3<f>"
	clrlwi.  r0, r3, 0x18
	beq      lbl_8041770C
	li       r3, 1
	b        lbl_80417870

lbl_8041770C:
	lwz      r0, 4(r28)
	mr       r3, r30
	lwz      r7, 8(r28)
	mr       r6, r31
	mulli    r0, r0, 0xc
	lwz      r9, 0x24(r29)
	addi     r4, r1, 0x18
	addi     r5, r1, 8
	add      r8, r9, r0
	lfs      f0, 0(r8)
	mulli    r0, r7, 0xc
	stfs     f0, 0x18(r1)
	add      r7, r9, r0
	lfs      f0, 4(r8)
	stfs     f0, 0x1c(r1)
	lfs      f0, 8(r8)
	stfs     f0, 0x20(r1)
	lfs      f0, 0(r7)
	stfs     f0, 0x24(r1)
	lfs      f0, 4(r7)
	stfs     f0, 0x28(r1)
	lfs      f0, 8(r7)
	stfs     f0, 0x2c(r1)
	bl       "intersect__Q23Sys6SphereFRQ23Sys4EdgeRfR10Vector3<f>"
	clrlwi.  r0, r3, 0x18
	beq      lbl_8041777C
	li       r3, 1
	b        lbl_80417870

lbl_8041777C:
	lwz      r0, 8(r28)
	mr       r3, r30
	lwz      r7, 0(r28)
	mr       r6, r31
	mulli    r0, r0, 0xc
	lwz      r9, 0x24(r29)
	addi     r4, r1, 0x18
	addi     r5, r1, 8
	add      r8, r9, r0
	lfs      f0, 0(r8)
	mulli    r0, r7, 0xc
	stfs     f0, 0x18(r1)
	add      r7, r9, r0
	lfs      f0, 4(r8)
	stfs     f0, 0x1c(r1)
	lfs      f0, 8(r8)
	stfs     f0, 0x20(r1)
	lfs      f0, 0(r7)
	stfs     f0, 0x24(r1)
	lfs      f0, 4(r7)
	stfs     f0, 0x28(r1)
	lfs      f0, 8(r7)
	stfs     f0, 0x2c(r1)
	bl       "intersect__Q23Sys6SphereFRQ23Sys4EdgeRfR10Vector3<f>"
	clrlwi.  r0, r3, 0x18
	beq      lbl_804177EC
	li       r3, 1
	b        lbl_80417870

lbl_804177EC:
	lfs      f0, lbl_80520308@sda21(r2)
	lfs      f1, 0xc(r1)
	fcmpo    cr0, f1, f0
	ble      lbl_80417804
	li       r3, 0
	b        lbl_80417870

lbl_80417804:
	lfs      f1, 0x10(r1)
	fcmpo    cr0, f1, f0
	ble      lbl_80417818
	li       r3, 0
	b        lbl_80417870

lbl_80417818:
	lfs      f1, 0x14(r1)
	fcmpo    cr0, f1, f0
	ble      lbl_8041782C
	li       r3, 0
	b        lbl_80417870

lbl_8041782C:
	lfs      f6, 0xc(r30)
	li       r3, 1
	lfs      f0, 0xc(r28)
	lfs      f2, 0x10(r28)
	fmuls    f0, f0, f6
	lfs      f1, 0(r30)
	lfs      f4, 0x14(r28)
	fmuls    f2, f2, f6
	lfs      f3, 4(r30)
	fsubs    f0, f1, f0
	lfs      f5, 8(r30)
	fmuls    f1, f4, f6
	fsubs    f2, f3, f2
	stfs     f0, 0(r31)
	fsubs    f0, f5, f1
	stfs     f2, 4(r31)
	stfs     f0, 8(r31)

lbl_80417870:
	lwz      r0, 0x44(r1)
	lwz      r31, 0x3c(r1)
	lwz      r30, 0x38(r1)
	lwz      r29, 0x34(r1)
	lwz      r28, 0x30(r1)
	mtlr     r0
	addi     r1, r1, 0x40
	blr
	*/
}

/*
 * --INFO--
 * Address:	80417890
 * Size:	0002F8
 */
bool Triangle::intersectHard(Sys::VertexTable&, Sys::Sphere&, Vector3f&)
{
	/*
	stwu     r1, -0x40(r1)
	mflr     r0
	stw      r0, 0x44(r1)
	stw      r31, 0x3c(r1)
	mr       r31, r6
	stw      r30, 0x38(r1)
	mr       r30, r5
	stw      r29, 0x34(r1)
	mr       r29, r4
	stw      r28, 0x30(r1)
	mr       r28, r3
	lfs      f5, 4(r5)
	lfs      f0, 0x10(r3)
	lfs      f6, 0(r5)
	fmuls    f0, f5, f0
	lfs      f1, 0xc(r3)
	lfs      f7, 8(r5)
	lfs      f2, 0x14(r3)
	fmadds   f1, f6, f1, f0
	lfs      f0, 0x18(r3)
	lfs      f4, 0xc(r5)
	fmadds   f1, f7, f2, f1
	fsubs    f0, f1, f0
	fcmpo    cr0, f0, f4
	ble      lbl_804178FC
	li       r3, 0
	b        lbl_80417B68

lbl_804178FC:
	lfs      f0, 0x20(r28)
	lfs      f2, 0x1c(r28)
	fmuls    f1, f5, f0
	lfs      f3, 0x24(r28)
	lfs      f0, 0x28(r28)
	fmadds   f1, f6, f2, f1
	fmadds   f1, f7, f3, f1
	fsubs    f8, f1, f0
	fcmpo    cr0, f8, f4
	ble      lbl_8041792C
	li       r3, 0
	b        lbl_80417B68

lbl_8041792C:
	lfs      f0, 0x30(r28)
	lfs      f2, 0x2c(r28)
	fmuls    f1, f5, f0
	lfs      f3, 0x34(r28)
	lfs      f0, 0x38(r28)
	stfs     f8, 0xc(r1)
	fmadds   f1, f6, f2, f1
	fmadds   f1, f7, f3, f1
	fsubs    f8, f1, f0
	fcmpo    cr0, f8, f4
	ble      lbl_80417960
	li       r3, 0
	b        lbl_80417B68

lbl_80417960:
	lfs      f0, 0x40(r28)
	lfs      f2, 0x3c(r28)
	fmuls    f1, f5, f0
	lfs      f3, 0x44(r28)
	lfs      f0, 0x48(r28)
	stfs     f8, 0x10(r1)
	fmadds   f1, f6, f2, f1
	fmadds   f1, f7, f3, f1
	fsubs    f8, f1, f0
	fcmpo    cr0, f8, f4
	ble      lbl_80417994
	li       r3, 0
	b        lbl_80417B68

lbl_80417994:
	lwz      r0, 0(r28)
	mr       r3, r30
	lwz      r7, 4(r28)
	addi     r4, r1, 0x18
	mulli    r0, r0, 0xc
	lwz      r9, 0x24(r29)
	stfs     f8, 0x14(r1)
	addi     r5, r1, 8
	add      r8, r9, r0
	lfs      f0, 0(r8)
	mulli    r0, r7, 0xc
	stfs     f0, 0x18(r1)
	add      r7, r9, r0
	lfs      f0, 4(r8)
	stfs     f0, 0x1c(r1)
	lfs      f0, 8(r8)
	stfs     f0, 0x20(r1)
	lfs      f0, 0(r7)
	stfs     f0, 0x24(r1)
	lfs      f0, 4(r7)
	stfs     f0, 0x28(r1)
	lfs      f0, 8(r7)
	stfs     f0, 0x2c(r1)
	bl       "intersect__Q23Sys6SphereFRQ23Sys4EdgeRfR10Vector3<f>"
	clrlwi.  r0, r3, 0x18
	beq      lbl_80417A04
	li       r3, 1
	b        lbl_80417B68

lbl_80417A04:
	lwz      r0, 4(r28)
	mr       r3, r30
	lwz      r7, 8(r28)
	mr       r6, r31
	mulli    r0, r0, 0xc
	lwz      r9, 0x24(r29)
	addi     r4, r1, 0x18
	addi     r5, r1, 8
	add      r8, r9, r0
	lfs      f0, 0(r8)
	mulli    r0, r7, 0xc
	stfs     f0, 0x18(r1)
	add      r7, r9, r0
	lfs      f0, 4(r8)
	stfs     f0, 0x1c(r1)
	lfs      f0, 8(r8)
	stfs     f0, 0x20(r1)
	lfs      f0, 0(r7)
	stfs     f0, 0x24(r1)
	lfs      f0, 4(r7)
	stfs     f0, 0x28(r1)
	lfs      f0, 8(r7)
	stfs     f0, 0x2c(r1)
	bl       "intersect__Q23Sys6SphereFRQ23Sys4EdgeRfR10Vector3<f>"
	clrlwi.  r0, r3, 0x18
	beq      lbl_80417A74
	li       r3, 1
	b        lbl_80417B68

lbl_80417A74:
	lwz      r0, 8(r28)
	mr       r3, r30
	lwz      r7, 0(r28)
	mr       r6, r31
	mulli    r0, r0, 0xc
	lwz      r9, 0x24(r29)
	addi     r4, r1, 0x18
	addi     r5, r1, 8
	add      r8, r9, r0
	lfs      f0, 0(r8)
	mulli    r0, r7, 0xc
	stfs     f0, 0x18(r1)
	add      r7, r9, r0
	lfs      f0, 4(r8)
	stfs     f0, 0x1c(r1)
	lfs      f0, 8(r8)
	stfs     f0, 0x20(r1)
	lfs      f0, 0(r7)
	stfs     f0, 0x24(r1)
	lfs      f0, 4(r7)
	stfs     f0, 0x28(r1)
	lfs      f0, 8(r7)
	stfs     f0, 0x2c(r1)
	bl       "intersect__Q23Sys6SphereFRQ23Sys4EdgeRfR10Vector3<f>"
	clrlwi.  r0, r3, 0x18
	beq      lbl_80417AE4
	li       r3, 1
	b        lbl_80417B68

lbl_80417AE4:
	lfs      f0, lbl_80520308@sda21(r2)
	lfs      f1, 0xc(r1)
	fcmpo    cr0, f1, f0
	ble      lbl_80417AFC
	li       r3, 0
	b        lbl_80417B68

lbl_80417AFC:
	lfs      f1, 0x10(r1)
	fcmpo    cr0, f1, f0
	ble      lbl_80417B10
	li       r3, 0
	b        lbl_80417B68

lbl_80417B10:
	lfs      f1, 0x14(r1)
	fcmpo    cr0, f1, f0
	ble      lbl_80417B24
	li       r3, 0
	b        lbl_80417B68

lbl_80417B24:
	lfs      f6, 0xc(r30)
	li       r3, 1
	lfs      f0, 0xc(r28)
	lfs      f2, 0x10(r28)
	fmuls    f0, f0, f6
	lfs      f1, 0(r30)
	lfs      f4, 0x14(r28)
	fmuls    f2, f2, f6
	lfs      f3, 4(r30)
	fsubs    f0, f1, f0
	lfs      f5, 8(r30)
	fmuls    f1, f4, f6
	fsubs    f2, f3, f2
	stfs     f0, 0(r31)
	fsubs    f0, f5, f1
	stfs     f2, 4(r31)
	stfs     f0, 8(r31)

lbl_80417B68:
	lwz      r0, 0x44(r1)
	lwz      r31, 0x3c(r1)
	lwz      r30, 0x38(r1)
	lwz      r29, 0x34(r1)
	lwz      r28, 0x30(r1)
	mtlr     r0
	addi     r1, r1, 0x40
	blr
	*/
}

// /*
// * --INFO--
// * Address:	........
// * Size:	00014C
// */
// bool Triangle::intersectOptimistic(Sys::Sphere&, Vector3f&)
// {
// // UNUSED FUNCTION
// }

/*
 * --INFO--
 * Address:	80417B88
 * Size:	0000EC
 */
bool Sys::Triangle::insideXZ(Vector3f& arg0)
{
	// work out if a given point 'arg0' is inside XZ of a given triangle

	// if y <= 0, can't be inside XZ since it's on the wrong side
	if (m_trianglePlane.b <= lbl_80520308) {
		return 0;
	}

	// adjust input vector's y component for some reason
	arg0.y = (m_trianglePlane.d - ((m_trianglePlane.a * arg0.x) + (m_trianglePlane.c * arg0.z))) / m_trianglePlane.b;

	// check each tangent plane against input vector - if "separation" > 0, not inside XZ
	for (int i = 0; i < 3; ++i) {
		if (((arg0.x * m_edgePlanes[i].a + arg0.y * m_edgePlanes[i].b + arg0.z * m_edgePlanes[i].c) - m_edgePlanes[i].d) > lbl_80520308) {
			return 0;
		}
	}

	// if separation from all tangent planes is <= 0, we're inside XZ
	return 1;
}

/*
 * --INFO--
 * Address:	80417C74
 * Size:	0004C8
 */
void Triangle::makePlanes(Sys::VertexTable&)
{
	/*
	stwu     r1, -0x140(r1)
	mflr     r0
	stw      r0, 0x144(r1)
	stfd     f31, 0x130(r1)
	psq_st   f31, 312(r1), 0, qr0
	stfd     f30, 0x120(r1)
	psq_st   f30, 296(r1), 0, qr0
	stfd     f29, 0x110(r1)
	psq_st   f29, 280(r1), 0, qr0
	stfd     f28, 0x100(r1)
	psq_st   f28, 264(r1), 0, qr0
	stfd     f27, 0xf0(r1)
	psq_st   f27, 248(r1), 0, qr0
	stfd     f26, 0xe0(r1)
	psq_st   f26, 232(r1), 0, qr0
	stfd     f25, 0xd0(r1)
	psq_st   f25, 216(r1), 0, qr0
	stfd     f24, 0xc0(r1)
	psq_st   f24, 200(r1), 0, qr0
	stfd     f23, 0xb0(r1)
	psq_st   f23, 184(r1), 0, qr0
	stfd     f22, 0xa0(r1)
	psq_st   f22, 168(r1), 0, qr0
	stfd     f21, 0x90(r1)
	psq_st   f21, 152(r1), 0, qr0
	stfd     f20, 0x80(r1)
	psq_st   f20, 136(r1), 0, qr0
	stfd     f19, 0x70(r1)
	psq_st   f19, 120(r1), 0, qr0
	stfd     f18, 0x60(r1)
	psq_st   f18, 104(r1), 0, qr0
	stw      r31, 0x5c(r1)
	mr       r31, r3
	lwz      r5, 0x24(r4)
	lwz      r4, 0(r3)
	lwz      r3, 4(r3)
	lwz      r0, 8(r31)
	mulli    r4, r4, 0xc
	add      r4, r5, r4
	mulli    r3, r3, 0xc
	lfs      f31, 0(r4)
	lfs      f30, 4(r4)
	lfs      f29, 8(r4)
	add      r3, r5, r3
	mulli    r0, r0, 0xc
	lfs      f27, 4(r3)
	lfs      f26, 8(r3)
	lfs      f28, 0(r3)
	fsubs    f4, f27, f30
	add      r3, r5, r0
	lfs      f25, 0(r3)
	fsubs    f5, f26, f29
	lfs      f23, 8(r3)
	fsubs    f3, f28, f31
	fsubs    f18, f25, f31
	lfs      f24, 4(r3)
	fsubs    f20, f23, f29
	fsubs    f19, f24, f30
	fmuls    f2, f18, f5
	stfs     f18, 0x44(r1)
	fmuls    f0, f20, f4
	fmuls    f1, f19, f3
	stfs     f19, 0x48(r1)
	fmsubs   f2, f20, f3, f2
	fmsubs   f3, f19, f5, f0
	stfs     f20, 0x4c(r1)
	fmsubs   f4, f18, f4, f1
	fmuls    f0, f2, f2
	stfs     f2, 0x48(r1)
	fmuls    f1, f3, f3
	fmuls    f2, f4, f4
	stfs     f3, 0x44(r1)
	fadds    f0, f1, f0
	stfs     f4, 0x4c(r1)
	fadds    f1, f2, f0
	bl       pikmin2_sqrtf__Ff
	lfs      f0, lbl_80520308@sda21(r2)
	fcmpo    cr0, f1, f0
	ble      lbl_80417DDC
	lfs      f0, lbl_8052030C@sda21(r2)
	lfs      f2, 0x44(r1)
	fdivs    f3, f0, f1
	lfs      f1, 0x48(r1)
	lfs      f0, 0x4c(r1)
	fmuls    f2, f2, f3
	fmuls    f1, f1, f3
	fmuls    f0, f0, f3
	stfs     f2, 0x44(r1)
	stfs     f1, 0x48(r1)
	stfs     f0, 0x4c(r1)

lbl_80417DDC:
	lwz      r0, 0x44(r1)
	fsubs    f3, f31, f28
	lwz      r3, 0x48(r1)
	fsubs    f5, f29, f26
	stw      r0, 0x2c(r1)
	fsubs    f6, f30, f27
	lwz      r0, 0x4c(r1)
	stw      r3, 0x30(r1)
	lfs      f0, 0x2c(r1)
	stw      r0, 0x34(r1)
	lfs      f2, 0x30(r1)
	stfs     f0, 0xc(r31)
	lfs      f21, 0x4c(r1)
	lfs      f22, 0x48(r1)
	lfs      f7, 0x44(r1)
	fmuls    f0, f3, f21
	fmuls    f1, f5, f22
	stfs     f2, 0x10(r31)
	lfs      f4, 0x34(r1)
	fmuls    f2, f6, f7
	fmsubs   f0, f5, f7, f0
	stfs     f4, 0x14(r31)
	fmsubs   f4, f6, f21, f1
	lfs      f7, 0x10(r31)
	fmsubs   f10, f3, f22, f2
	lfs      f8, 0xc(r31)
	fmuls    f1, f0, f0
	fmuls    f7, f7, f30
	fmuls    f2, f4, f4
	lfs      f9, 0x14(r31)
	stfs     f3, 0x38(r1)
	fmuls    f3, f10, f10
	fmadds   f7, f8, f31, f7
	fadds    f1, f2, f1
	stfs     f6, 0x3c(r1)
	fmadds   f2, f9, f29, f7
	stfs     f5, 0x40(r1)
	fadds    f1, f3, f1
	stfs     f2, 0x18(r31)
	stfs     f4, 0x38(r1)
	stfs     f0, 0x3c(r1)
	stfs     f10, 0x40(r1)
	bl       pikmin2_sqrtf__Ff
	lfs      f0, lbl_80520308@sda21(r2)
	fcmpo    cr0, f1, f0
	ble      lbl_80417EC0
	lfs      f0, lbl_8052030C@sda21(r2)
	lfs      f2, 0x38(r1)
	fdivs    f3, f0, f1
	lfs      f1, 0x3c(r1)
	lfs      f0, 0x40(r1)
	fmuls    f2, f2, f3
	fmuls    f1, f1, f3
	fmuls    f0, f0, f3
	stfs     f2, 0x38(r1)
	stfs     f1, 0x3c(r1)
	stfs     f0, 0x40(r1)

lbl_80417EC0:
	lwz      r0, 0x38(r1)
	fsubs    f6, f28, f25
	lwz      r3, 0x3c(r1)
	fsubs    f4, f26, f23
	stw      r0, 0x20(r1)
	fsubs    f5, f27, f24
	lwz      r0, 0x40(r1)
	stw      r3, 0x24(r1)
	fmuls    f0, f4, f22
	lfs      f7, 0x20(r1)
	fmuls    f2, f6, f21
	stw      r0, 0x28(r1)
	lfs      f1, 0x24(r1)
	fmsubs   f3, f5, f21, f0
	stfs     f7, 0x1c(r31)
	lfs      f0, 0x28(r1)
	stfs     f1, 0x20(r31)
	fmuls    f1, f3, f3
	lfs      f7, 0x44(r1)
	stfs     f0, 0x24(r31)
	fmsubs   f8, f4, f7, f2
	lfs      f2, 0x20(r31)
	fmuls    f0, f5, f7
	lfs      f7, 0x1c(r31)
	fmuls    f2, f2, f30
	stfs     f6, 0x38(r1)
	fmsubs   f9, f6, f22, f0
	lfs      f6, 0x24(r31)
	fmuls    f0, f8, f8
	stfs     f5, 0x3c(r1)
	fmadds   f5, f7, f31, f2
	stfs     f4, 0x40(r1)
	fmuls    f2, f9, f9
	fadds    f0, f1, f0
	stfs     f3, 0x38(r1)
	fmadds   f3, f6, f29, f5
	stfs     f8, 0x3c(r1)
	fadds    f1, f2, f0
	stfs     f3, 0x28(r31)
	stfs     f9, 0x40(r1)
	bl       pikmin2_sqrtf__Ff
	lfs      f0, lbl_80520308@sda21(r2)
	fcmpo    cr0, f1, f0
	ble      lbl_80417F9C
	lfs      f0, lbl_8052030C@sda21(r2)
	lfs      f2, 0x38(r1)
	fdivs    f3, f0, f1
	lfs      f1, 0x3c(r1)
	lfs      f0, 0x40(r1)
	fmuls    f2, f2, f3
	fmuls    f1, f1, f3
	fmuls    f0, f0, f3
	stfs     f2, 0x38(r1)
	stfs     f1, 0x3c(r1)
	stfs     f0, 0x40(r1)

lbl_80417F9C:
	lwz      r0, 0x38(r1)
	fmuls    f0, f20, f22
	lwz      r3, 0x3c(r1)
	fmuls    f2, f18, f21
	stw      r0, 0x14(r1)
	lwz      r0, 0x40(r1)
	fmsubs   f3, f19, f21, f0
	stw      r3, 0x18(r1)
	lfs      f0, 0x14(r1)
	stw      r0, 0x1c(r1)
	fmuls    f1, f3, f3
	lfs      f4, 0x18(r1)
	stfs     f0, 0x2c(r31)
	lfs      f0, 0x1c(r1)
	stfs     f4, 0x30(r31)
	lfs      f4, 0x44(r1)
	stfs     f0, 0x34(r31)
	fmsubs   f6, f20, f4, f2
	lfs      f2, 0x30(r31)
	fmuls    f0, f19, f4
	lfs      f4, 0x2c(r31)
	fmuls    f2, f2, f27
	stfs     f18, 0x38(r1)
	fmsubs   f7, f18, f22, f0
	lfs      f5, 0x34(r31)
	fmuls    f0, f6, f6
	stfs     f19, 0x3c(r1)
	fmadds   f4, f4, f28, f2
	stfs     f20, 0x40(r1)
	fmuls    f2, f7, f7
	fadds    f0, f1, f0
	stfs     f3, 0x38(r1)
	fmadds   f3, f5, f26, f4
	stfs     f6, 0x3c(r1)
	fadds    f1, f2, f0
	stfs     f3, 0x38(r31)
	stfs     f7, 0x40(r1)
	bl       pikmin2_sqrtf__Ff
	lfs      f0, lbl_80520308@sda21(r2)
	fcmpo    cr0, f1, f0
	ble      lbl_8041806C
	lfs      f0, lbl_8052030C@sda21(r2)
	lfs      f2, 0x38(r1)
	fdivs    f3, f0, f1
	lfs      f1, 0x3c(r1)
	lfs      f0, 0x40(r1)
	fmuls    f2, f2, f3
	fmuls    f1, f1, f3
	fmuls    f0, f0, f3
	stfs     f2, 0x38(r1)
	stfs     f1, 0x3c(r1)
	stfs     f0, 0x40(r1)

lbl_8041806C:
	lwz      r0, 0x38(r1)
	lwz      r3, 0x3c(r1)
	stw      r0, 8(r1)
	lwz      r0, 0x40(r1)
	stw      r3, 0xc(r1)
	lfs      f0, 8(r1)
	stw      r0, 0x10(r1)
	lfs      f1, 0xc(r1)
	stfs     f0, 0x3c(r31)
	lfs      f0, 0x10(r1)
	stfs     f1, 0x40(r31)
	stfs     f0, 0x44(r31)
	lfs      f0, 0x40(r31)
	lfs      f1, 0x3c(r31)
	fmuls    f0, f0, f24
	lfs      f2, 0x44(r31)
	fmadds   f0, f1, f25, f0
	fmadds   f0, f2, f23, f0
	stfs     f0, 0x48(r31)
	psq_l    f31, 312(r1), 0, qr0
	lfd      f31, 0x130(r1)
	psq_l    f30, 296(r1), 0, qr0
	lfd      f30, 0x120(r1)
	psq_l    f29, 280(r1), 0, qr0
	lfd      f29, 0x110(r1)
	psq_l    f28, 264(r1), 0, qr0
	lfd      f28, 0x100(r1)
	psq_l    f27, 248(r1), 0, qr0
	lfd      f27, 0xf0(r1)
	psq_l    f26, 232(r1), 0, qr0
	lfd      f26, 0xe0(r1)
	psq_l    f25, 216(r1), 0, qr0
	lfd      f25, 0xd0(r1)
	psq_l    f24, 200(r1), 0, qr0
	lfd      f24, 0xc0(r1)
	psq_l    f23, 184(r1), 0, qr0
	lfd      f23, 0xb0(r1)
	psq_l    f22, 168(r1), 0, qr0
	lfd      f22, 0xa0(r1)
	psq_l    f21, 152(r1), 0, qr0
	lfd      f21, 0x90(r1)
	psq_l    f20, 136(r1), 0, qr0
	lfd      f20, 0x80(r1)
	psq_l    f19, 120(r1), 0, qr0
	lfd      f19, 0x70(r1)
	psq_l    f18, 104(r1), 0, qr0
	lfd      f18, 0x60(r1)
	lwz      r0, 0x144(r1)
	lwz      r31, 0x5c(r1)
	mtlr     r0
	addi     r1, r1, 0x140
	blr
	*/
}

/*
 * --INFO--
 * Address:	8041813C
 * Size:	000040
 */
bool Sys::RayIntersectInfo::condition(Sys::Triangle& arg0)
{
	if (_1C != 0) {
		if ((arg0.m_trianglePlane.b < lbl_80520310) && (arg0.m_trianglePlane.b > lbl_80520324)) {
			return 1;
		}
		return 0;
	}
	return 1;
}

/*
 * --INFO--
 * Address:	8041817C
 * Size:	000428
 */
void GridDivider::createTriangles(Sys::CreateTriangleArg&)
{
	/*
	stwu     r1, -0x1440(r1)
	mflr     r0
	stw      r0, 0x1444(r1)
	li       r0, 0x1438
	stfd     f31, 0x1430(r1)
	psq_stx  f31, r1, r0, 0, qr0
	stmw     r26, 0x1418(r1)
	li       r0, 0
	mr       r31, r3
	stw      r0, 0x18(r4)
	mr       r28, r4
	lis      r4, "__ct__10Vector3<f>Fv"@ha
	addi     r3, r1, 0x208
	stw      r0, 0x1c(r28)
	addi     r4, r4, "__ct__10Vector3<f>Fv"@l
	li       r5, 0
	li       r6, 0xc
	li       r7, 0x180
	bl       __construct_array
	lfs      f2, 0(r28)
	li       r29, 0
	lfs      f1, 0x2c(r31)
	li       r3, 0
	lfs      f3, 8(r28)
	lfs      f0, 0x34(r31)
	fsubs    f2, f2, f1
	lfs      f1, 0x44(r31)
	fsubs    f3, f3, f0
	lfs      f0, 0x48(r31)
	fdivs    f1, f2, f1
	fdivs    f0, f3, f0
	fctiwz   f1, f1
	fctiwz   f0, f0
	stfd     f1, 0x1408(r1)
	lwz      r4, 0x140c(r1)
	stfd     f0, 0x1410(r1)
	cmpwi    r4, 0
	lwz      r9, 0x1414(r1)
	blt      lbl_8041823C
	cmpwi    r9, 0
	blt      lbl_8041823C
	lwz      r0, 0x20(r31)
	cmpw     r4, r0
	bge      lbl_8041823C
	lwz      r0, 0x24(r31)
	cmpw     r9, r0
	bge      lbl_8041823C
	li       r3, 1

lbl_8041823C:
	clrlwi.  r0, r3, 0x18
	beq      lbl_80418584
	lwz      r3, 0x24(r31)
	addi     r0, r1, 8
	addi     r30, r1, 0x208
	lwz      r8, 0x28(r31)
	mullw    r3, r4, r3
	mr       r5, r0
	mr       r6, r30
	li       r7, 0
	li       r4, 0
	add      r3, r9, r3
	mulli    r3, r3, 0x28
	add      r12, r8, r3
	b        lbl_804183A4

lbl_80418278:
	lwz      r9, 0x24(r12)
	mr       r3, r0
	lwz      r11, 0x1c(r31)
	li       r8, 0
	lwzx     r10, r9, r4
	lwz      r9, 0x18(r31)
	mulli    r10, r10, 0x60
	lwz      r11, 0x24(r11)
	lwz      r26, 0x24(r9)
	add      r27, r11, r10
	lwz      r11, 0(r27)
	lwz      r10, 4(r27)
	lwz      r9, 8(r27)
	mulli    r11, r11, 0xc
	add      r11, r26, r11
	mulli    r10, r10, 0xc
	lfs      f1, 0(r11)
	lfs      f3, 4(r11)
	lfs      f4, 8(r11)
	add      r10, r26, r10
	mulli    r9, r9, 0xc
	lfs      f5, 0(r10)
	lfs      f6, 4(r10)
	lfs      f7, 8(r10)
	add      r9, r26, r9
	lfs      f8, 0(r9)
	lfs      f9, 4(r9)
	lfs      f10, 8(r9)
	mtctr    r29
	cmpwi    r29, 0
	ble      lbl_8041830C

lbl_804182F4:
	lwz      r9, 0(r3)
	cmplw    r27, r9
	bne      lbl_80418304
	li       r8, 1

lbl_80418304:
	addi     r3, r3, 4
	bdnz     lbl_804182F4

lbl_8041830C:
	clrlwi.  r3, r8, 0x18
	bne      lbl_8041839C
	cmpwi    r29, 0x80
	bge      lbl_8041839C
	lfs      f11, 0x10(r27)
	lfs      f0, 0x14(r28)
	lfs      f2, 0xc(r27)
	fcmpo    cr0, f11, f0
	lfs      f0, 0x14(r27)
	ble      lbl_8041839C
	lfs      f31, 0x10(r28)
	addi     r29, r29, 1
	stw      r27, 0(r5)
	addi     r5, r5, 4
	fmuls    f13, f2, f31
	fmuls    f12, f11, f31
	fmuls    f11, f0, f31
	fadds    f2, f1, f13
	fadds    f1, f3, f12
	fadds    f0, f4, f11
	stfs     f2, 0(r6)
	fadds    f5, f5, f13
	fadds    f4, f6, f12
	stfs     f1, 4(r6)
	fadds    f3, f7, f11
	fadds    f2, f8, f13
	stfs     f0, 8(r6)
	fadds    f1, f9, f12
	fadds    f0, f10, f11
	stfs     f5, 0xc(r6)
	stfs     f4, 0x10(r6)
	stfs     f3, 0x14(r6)
	stfs     f2, 0x18(r6)
	stfs     f1, 0x1c(r6)
	stfs     f0, 0x20(r6)
	addi     r6, r6, 0x24

lbl_8041839C:
	addi     r4, r4, 4
	addi     r7, r7, 1

lbl_804183A4:
	lwz      r3, 0x1c(r12)
	cmpw     r7, r3
	blt      lbl_80418278
	mulli    r31, r29, 3
	mulli    r3, r31, 0xc
	addi     r3, r3, 0x10
	bl       __nwa__FUl
	lis      r4, "__ct__10Vector3<f>Fv"@ha
	mr       r7, r31
	addi     r4, r4, "__ct__10Vector3<f>Fv"@l
	li       r5, 0
	li       r6, 0xc
	bl       __construct_new_array
	cmpwi    r31, 0
	stw      r3, 0x18(r28)
	li       r3, 0
	ble      lbl_80418580
	cmpwi    r31, 8
	addi     r4, r31, -8
	ble      lbl_80418538
	addi     r0, r4, 7
	li       r5, 0
	srwi     r0, r0, 3
	mtctr    r0
	cmpwi    r4, 0
	ble      lbl_80418538

lbl_8041840C:
	lwz      r0, 0x18(r28)
	addi     r12, r5, 0xc
	lfs      f0, 0(r30)
	addi     r11, r5, 0x18
	add      r4, r0, r5
	addi     r10, r5, 0x24
	stfs     f0, 0(r4)
	addi     r9, r5, 0x30
	addi     r8, r5, 0x3c
	addi     r7, r5, 0x48
	lfs      f0, 4(r30)
	addi     r6, r5, 0x54
	addi     r5, r5, 0x60
	addi     r3, r3, 8
	stfs     f0, 4(r4)
	lfs      f0, 8(r30)
	stfs     f0, 8(r4)
	lwz      r0, 0x18(r28)
	lfs      f0, 0xc(r30)
	add      r12, r0, r12
	stfs     f0, 0(r12)
	lfs      f0, 0x10(r30)
	stfs     f0, 4(r12)
	lfs      f0, 0x14(r30)
	stfs     f0, 8(r12)
	lwz      r0, 0x18(r28)
	lfs      f0, 0x18(r30)
	add      r11, r0, r11
	stfs     f0, 0(r11)
	lfs      f0, 0x1c(r30)
	stfs     f0, 4(r11)
	lfs      f0, 0x20(r30)
	stfs     f0, 8(r11)
	lwz      r0, 0x18(r28)
	lfs      f0, 0x24(r30)
	add      r10, r0, r10
	stfs     f0, 0(r10)
	lfs      f0, 0x28(r30)
	stfs     f0, 4(r10)
	lfs      f0, 0x2c(r30)
	stfs     f0, 8(r10)
	lwz      r0, 0x18(r28)
	lfs      f0, 0x30(r30)
	add      r9, r0, r9
	stfs     f0, 0(r9)
	lfs      f0, 0x34(r30)
	stfs     f0, 4(r9)
	lfs      f0, 0x38(r30)
	stfs     f0, 8(r9)
	lwz      r0, 0x18(r28)
	lfs      f0, 0x3c(r30)
	add      r8, r0, r8
	stfs     f0, 0(r8)
	lfs      f0, 0x40(r30)
	stfs     f0, 4(r8)
	lfs      f0, 0x44(r30)
	stfs     f0, 8(r8)
	lwz      r0, 0x18(r28)
	lfs      f0, 0x48(r30)
	add      r7, r0, r7
	stfs     f0, 0(r7)
	lfs      f0, 0x4c(r30)
	stfs     f0, 4(r7)
	lfs      f0, 0x50(r30)
	stfs     f0, 8(r7)
	lwz      r0, 0x18(r28)
	lfs      f0, 0x54(r30)
	add      r6, r0, r6
	stfs     f0, 0(r6)
	lfs      f0, 0x58(r30)
	stfs     f0, 4(r6)
	lfs      f0, 0x5c(r30)
	addi     r30, r30, 0x60
	stfs     f0, 8(r6)
	bdnz     lbl_8041840C

lbl_80418538:
	mulli    r5, r3, 0xc
	addi     r4, r1, 0x208
	subf     r0, r3, r31
	add      r4, r4, r5
	mtctr    r0
	cmpw     r3, r31
	bge      lbl_80418580

lbl_80418554:
	lwz      r0, 0x18(r28)
	lfs      f0, 0(r4)
	add      r3, r0, r5
	addi     r5, r5, 0xc
	stfs     f0, 0(r3)
	lfs      f0, 4(r4)
	stfs     f0, 4(r3)
	lfs      f0, 8(r4)
	addi     r4, r4, 0xc
	stfs     f0, 8(r3)
	bdnz     lbl_80418554

lbl_80418580:
	stw      r29, 0x1c(r28)

lbl_80418584:
	li       r0, 0x1438
	psq_lx   f31, r1, r0, 0, qr0
	lfd      f31, 0x1430(r1)
	lmw      r26, 0x1418(r1)
	lwz      r0, 0x1444(r1)
	mtlr     r0
	addi     r1, r1, 0x1440
	blr
	*/
}

/*
 * --INFO--
 * Address:	804185A4
 * Size:	0001D8
 */
float GridDivider::getMinY(Vector3f&)
{
	/*
	stwu     r1, -0x20(r1)
	li       r5, 0
	lfs      f9, 0(r4)
	lfs      f1, 0x2c(r3)
	lfs      f10, 8(r4)
	fsubs    f2, f9, f1
	lfs      f0, 0x34(r3)
	lfs      f1, 0x44(r3)
	fsubs    f3, f10, f0
	lfs      f0, 0x48(r3)
	fdivs    f1, f2, f1
	fdivs    f0, f3, f0
	fctiwz   f1, f1
	fctiwz   f0, f0
	stfd     f1, 8(r1)
	lwz      r6, 0xc(r1)
	stfd     f0, 0x10(r1)
	cmpwi    r6, 0
	lwz      r8, 0x14(r1)
	blt      lbl_80418618
	cmpwi    r8, 0
	blt      lbl_80418618
	lwz      r0, 0x20(r3)
	cmpw     r6, r0
	bge      lbl_80418618
	lwz      r0, 0x24(r3)
	cmpw     r8, r0
	bge      lbl_80418618
	li       r5, 1

lbl_80418618:
	clrlwi.  r0, r5, 0x18
	bne      lbl_80418628
	lfs      f1, lbl_80520308@sda21(r2)
	b        lbl_80418774

lbl_80418628:
	lwz      r0, 0x24(r3)
	li       r9, 0
	lwz      r5, 0x28(r3)
	li       r7, 0
	mullw    r0, r6, r0
	lfs      f1, lbl_80520328@sda21(r2)
	lfs      f6, 4(r4)
	lfs      f8, lbl_80520308@sda21(r2)
	add      r0, r8, r0
	mulli    r0, r0, 0x28
	add      r6, r5, r0
	lwz      r0, 0x1c(r6)
	mtctr    r0
	cmpwi    r0, 0
	ble      lbl_80418764

lbl_80418664:
	lwz      r4, 0x24(r6)
	lwz      r5, 0x1c(r3)
	lwzx     r0, r4, r7
	lwz      r4, 0x24(r5)
	mulli    r0, r0, 0x60
	add      r4, r4, r0
	lfs      f11, 0x10(r4)
	fcmpo    cr0, f11, f8
	cror     2, 0, 2
	bne      lbl_80418694
	li       r0, 0
	b        lbl_80418744

lbl_80418694:
	lfs      f0, 0x14(r4)
	li       r0, 0
	lfs      f2, 0xc(r4)
	fmuls    f0, f0, f10
	lfs      f7, 0x18(r4)
	lfs      f3, 0x20(r4)
	lfs      f4, 0x1c(r4)
	fmadds   f6, f2, f9, f0
	lfs      f5, 0x24(r4)
	lfs      f2, 0x28(r4)
	lfs      f0, lbl_80520308@sda21(r2)
	fsubs    f6, f7, f6
	fdivs    f6, f6, f11
	fmuls    f3, f6, f3
	fmadds   f3, f9, f4, f3
	fmadds   f3, f10, f5, f3
	fsubs    f2, f3, f2
	fcmpo    cr0, f2, f0
	ble      lbl_804186E4
	b        lbl_80418744

lbl_804186E4:
	lfs      f3, 0x30(r4)
	lfs      f4, 0x2c(r4)
	fmuls    f3, f6, f3
	lfs      f5, 0x34(r4)
	lfs      f2, 0x38(r4)
	fmadds   f3, f9, f4, f3
	fmadds   f3, f10, f5, f3
	fsubs    f2, f3, f2
	fcmpo    cr0, f2, f0
	ble      lbl_80418710
	b        lbl_80418744

lbl_80418710:
	addi     r4, r4, 0x20
	lfs      f3, 0x20(r4)
	lfs      f4, 0x1c(r4)
	fmuls    f3, f6, f3
	lfs      f5, 0x24(r4)
	lfs      f2, 0x28(r4)
	fmadds   f3, f9, f4, f3
	fmadds   f3, f10, f5, f3
	fsubs    f2, f3, f2
	fcmpo    cr0, f2, f0
	ble      lbl_80418740
	b        lbl_80418744

lbl_80418740:
	li       r0, 1

lbl_80418744:
	clrlwi.  r0, r0, 0x18
	beq      lbl_8041875C
	fcmpo    cr0, f1, f6
	ble      lbl_8041875C
	fmr      f1, f6
	li       r9, 1

lbl_8041875C:
	addi     r7, r7, 4
	bdnz     lbl_80418664

lbl_80418764:
	clrlwi.  r0, r9, 0x18
	beq      lbl_80418770
	b        lbl_80418774

lbl_80418770:
	lfs      f1, lbl_80520308@sda21(r2)

lbl_80418774:
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	8041877C
 * Size:	000234
 */
void GridDivider::getCurrTri(Game::CurrTriInfo&)
{
	/*
	stwu     r1, -0x20(r1)
	li       r5, 0
	lfs      f0, 0(r4)
	lfs      f3, 0x2c(r3)
	lfs      f1, 8(r4)
	fsubs    f4, f0, f3
	lfs      f2, 0x34(r3)
	lfs      f3, 0x44(r3)
	fsubs    f5, f1, f2
	lfs      f2, 0x48(r3)
	fdivs    f3, f4, f3
	fdivs    f2, f5, f2
	fctiwz   f3, f3
	fctiwz   f2, f2
	stfd     f3, 8(r1)
	lwz      r6, 0xc(r1)
	stfd     f2, 0x10(r1)
	cmpwi    r6, 0
	lwz      r7, 0x14(r1)
	blt      lbl_804187F0
	cmpwi    r7, 0
	blt      lbl_804187F0
	lwz      r0, 0x20(r3)
	cmpw     r6, r0
	bge      lbl_804187F0
	lwz      r0, 0x24(r3)
	cmpw     r7, r0
	bge      lbl_804187F0
	li       r5, 1

lbl_804187F0:
	clrlwi.  r0, r5, 0x18
	beq      lbl_804189A8
	lwz      r0, 0x24(r3)
	li       r9, 0
	lwz      r5, 0x28(r3)
	li       r10, 0
	mullw    r0, r6, r0
	lfs      f11, lbl_80520328@sda21(r2)
	lfs      f12, lbl_8052032C@sda21(r2)
	li       r8, 0
	lfs      f7, 4(r4)
	lfs      f9, lbl_80520308@sda21(r2)
	add      r0, r7, r0
	mulli    r0, r0, 0x28
	add      r7, r5, r0
	b        lbl_8041898C

lbl_80418830:
	lwz      r5, 0x24(r7)
	lwz      r6, 0x1c(r3)
	lwzx     r0, r5, r8
	lwz      r5, 0x24(r6)
	mulli    r0, r0, 0x60
	add      r5, r5, r0
	lfs      f10, 0x10(r5)
	fcmpo    cr0, f10, f9
	cror     2, 0, 2
	bne      lbl_80418860
	li       r0, 0
	b        lbl_8041890C

lbl_80418860:
	lfs      f2, 0x14(r5)
	li       r0, 0
	lfs      f3, 0xc(r5)
	fmuls    f2, f2, f1
	lfs      f8, 0x18(r5)
	lfs      f4, 0x20(r5)
	lfs      f5, 0x1c(r5)
	fmadds   f7, f3, f0, f2
	lfs      f6, 0x24(r5)
	lfs      f3, 0x28(r5)
	lfs      f2, lbl_80520308@sda21(r2)
	fsubs    f7, f8, f7
	fdivs    f7, f7, f10
	fmuls    f4, f7, f4
	fmadds   f4, f0, f5, f4
	fmadds   f4, f1, f6, f4
	fsubs    f3, f4, f3
	fcmpo    cr0, f3, f2
	ble      lbl_804188B0
	b        lbl_8041890C

lbl_804188B0:
	lfs      f4, 0x30(r5)
	lfs      f5, 0x2c(r5)
	fmuls    f4, f7, f4
	lfs      f6, 0x34(r5)
	lfs      f3, 0x38(r5)
	fmadds   f4, f0, f5, f4
	fmadds   f4, f1, f6, f4
	fsubs    f3, f4, f3
	fcmpo    cr0, f3, f2
	ble      lbl_804188DC
	b        lbl_8041890C

lbl_804188DC:
	lfs      f4, 0x40(r5)
	lfs      f5, 0x3c(r5)
	fmuls    f4, f7, f4
	lfs      f6, 0x44(r5)
	lfs      f3, 0x48(r5)
	fmadds   f4, f0, f5, f4
	fmadds   f4, f1, f6, f4
	fsubs    f3, f4, f3
	fcmpo    cr0, f3, f2
	ble      lbl_80418908
	b        lbl_8041890C

lbl_80418908:
	li       r0, 1

lbl_8041890C:
	clrlwi.  r0, r0, 0x18
	beq      lbl_80418984
	fcmpo    cr0, f11, f7
	ble      lbl_8041894C
	lbz      r0, 0xc(r4)
	fmr      f11, f7
	cmplwi   r0, 0
	beq      lbl_8041894C
	lfs      f2, 0xc(r5)
	li       r9, 1
	stfs     f2, 0x20(r4)
	lfs      f2, 0x10(r5)
	stfs     f2, 0x24(r4)
	lfs      f2, 0x14(r5)
	stfs     f2, 0x28(r4)
	stw      r5, 0x14(r4)

lbl_8041894C:
	fcmpo    cr0, f7, f12
	ble      lbl_80418984
	lbz      r0, 0xc(r4)
	fmr      f12, f7
	cmplwi   r0, 0
	bne      lbl_80418984
	lfs      f2, 0xc(r5)
	li       r9, 1
	stfs     f2, 0x20(r4)
	lfs      f2, 0x10(r5)
	stfs     f2, 0x24(r4)
	lfs      f2, 0x14(r5)
	stfs     f2, 0x28(r4)
	stw      r5, 0x14(r4)

lbl_80418984:
	addi     r8, r8, 4
	addi     r10, r10, 1

lbl_8041898C:
	lwz      r0, 0x1c(r7)
	cmpw     r10, r0
	blt      lbl_80418830
	clrlwi.  r0, r9, 0x18
	beq      lbl_804189A8
	stfs     f11, 0x18(r4)
	stfs     f12, 0x1c(r4)

lbl_804189A8:
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	804189B0
 * Size:	000230
 */
TriIndexList* GridDivider::findTriLists(Sys::Sphere&)
{
	/*
	stwu     r1, -0x50(r1)
	mflr     r0
	stw      r0, 0x54(r1)
	stmw     r24, 0x30(r1)
	mr       r24, r3
	li       r28, 0
	lfs      f1, 0(r4)
	lfs      f4, 0xc(r4)
	lfs      f3, 8(r4)
	fsubs    f0, f1, f4
	lfs      f5, 0x2c(r3)
	fadds    f2, f1, f4
	lfs      f6, 0x44(r3)
	fsubs    f1, f3, f4
	lfs      f7, 0x34(r3)
	fsubs    f0, f0, f5
	lfs      f8, 0x48(r3)
	fadds    f4, f3, f4
	fsubs    f1, f1, f7
	fdivs    f3, f0, f6
	fsubs    f5, f2, f5
	fdivs    f2, f1, f8
	fsubs    f0, f4, f7
	fdivs    f1, f5, f6
	fdivs    f0, f0, f8
	fctiwz   f3, f3
	fctiwz   f2, f2
	fctiwz   f1, f1
	stfd     f3, 8(r1)
	fctiwz   f0, f0
	lwz      r0, 0xc(r1)
	stfd     f2, 0x10(r1)
	cmpwi    r0, 0
	stfd     f1, 0x18(r1)
	lwz      r4, 0x14(r1)
	stfd     f0, 0x20(r1)
	lwz      r5, 0x1c(r1)
	lwz      r6, 0x24(r1)
	bge      lbl_80418A54
	li       r0, 0
	b        lbl_80418A64

lbl_80418A54:
	lwz      r3, 0x20(r24)
	cmpw     r0, r3
	blt      lbl_80418A64
	addi     r0, r3, -1

lbl_80418A64:
	cmpwi    r4, 0
	bge      lbl_80418A74
	li       r31, 0
	b        lbl_80418A8C

lbl_80418A74:
	lwz      r3, 0x24(r24)
	cmpw     r4, r3
	blt      lbl_80418A88
	addi     r31, r3, -1
	b        lbl_80418A8C

lbl_80418A88:
	mr       r31, r4

lbl_80418A8C:
	cmpwi    r5, 0
	bge      lbl_80418A9C
	li       r30, 0
	b        lbl_80418AB4

lbl_80418A9C:
	lwz      r3, 0x20(r24)
	cmpw     r5, r3
	blt      lbl_80418AB0
	addi     r30, r3, -1
	b        lbl_80418AB4

lbl_80418AB0:
	mr       r30, r5

lbl_80418AB4:
	cmpwi    r6, 0
	bge      lbl_80418AC4
	li       r29, 0
	b        lbl_80418ADC

lbl_80418AC4:
	lwz      r3, 0x24(r24)
	cmpw     r6, r3
	blt      lbl_80418AD8
	addi     r29, r3, -1
	b        lbl_80418ADC

lbl_80418AD8:
	mr       r29, r6

lbl_80418ADC:
	mr       r26, r0
	li       r27, 0
	b        lbl_80418BB0

lbl_80418AE8:
	mr       r25, r31
	b        lbl_80418BA4

lbl_80418AF0:
	cmpwi    r26, 0
	li       r3, 0
	blt      lbl_80418B20
	cmpwi    r25, 0
	blt      lbl_80418B20
	lwz      r0, 0x20(r24)
	cmpw     r26, r0
	bge      lbl_80418B20
	lwz      r0, 0x24(r24)
	cmpw     r25, r0
	bge      lbl_80418B20
	li       r3, 1

lbl_80418B20:
	clrlwi.  r0, r3, 0x18
	beq      lbl_80418BA0
	cmplwi   r27, 0
	beq      lbl_80418B6C
	lwz      r4, 0x24(r24)
	li       r0, 0
	lwz      r5, 0x28(r24)
	mr       r3, r27
	mullw    r4, r26, r4
	add      r4, r25, r4
	mulli    r4, r4, 0x28
	add      r4, r5, r4
	stw      r0, 0x10(r4)
	stw      r0, 0xc(r4)
	stw      r0, 8(r4)
	stw      r0, 4(r4)
	bl       concat__5CNodeFP5CNode
	addi     r28, r28, 1
	b        lbl_80418BA0

lbl_80418B6C:
	lwz      r3, 0x24(r24)
	li       r0, 0
	lwz      r4, 0x28(r24)
	addi     r28, r28, 1
	mullw    r3, r26, r3
	add      r3, r25, r3
	mulli    r3, r3, 0x28
	add      r3, r4, r3
	stw      r0, 0x10(r3)
	mr       r27, r3
	stw      r0, 0xc(r3)
	stw      r0, 8(r3)
	stw      r0, 4(r3)

lbl_80418BA0:
	addi     r25, r25, 1

lbl_80418BA4:
	cmpw     r25, r29
	ble      lbl_80418AF0
	addi     r26, r26, 1

lbl_80418BB0:
	cmpw     r26, r30
	ble      lbl_80418AE8
	cmpwi    r28, 0x32
	ble      lbl_80418BC8
	mr       r3, r27
	bl       calcNextCount__5CNodeFv

lbl_80418BC8:
	mr       r3, r27
	lmw      r24, 0x30(r1)
	lwz      r0, 0x54(r1)
	mtlr     r0
	addi     r1, r1, 0x50
	blr
	*/
}

/*
 * --INFO--
 * Address:	80418BE0
 * Size:	00045C
 */
void GridDivider::create(BoundBox&, int, int, Sys::VertexTable*, Sys::TriangleTable*)
{
	/*
	.loc_0x0:
	  stwu      r1, -0x1080(r1)
	  mflr      r0
	  stw       r0, 0x1084(r1)
	  li        r0, 0x1078
	  stfd      f31, 0x1070(r1)
	  vpkuhum   v31, v1, v0
	  li        r0, 0x1068
	  stfd      f30, 0x1060(r1)
	  vpkuhum   v30, v1, v0
	  li        r0, 0x1058
	  stfd      f29, 0x1050(r1)
	  vpkuhum   v29, v1, v0
	  stmw      r21, 0x1024(r1)
	  mr        r25, r5
	  mr        r26, r6
	  mr        r24, r3
	  mr        r21, r4
	  mullw     r27, r25, r26
	  stw       r7, 0x18(r3)
	  stw       r8, 0x1C(r3)
	  stw       r25, 0x20(r3)
	  mulli     r3, r27, 0x28
	  stw       r26, 0x24(r24)
	  addi      r3, r3, 0x10
	  bl        -0x3F4C94
	  lis       r4, 0x8042
	  lis       r5, 0x8013
	  subi      r4, r4, 0x6FC4
	  mr        r7, r27
	  addi      r5, r5, 0x3E64
	  li        r6, 0x28
	  bl        -0x35726C
	  stw       r3, 0x28(r24)
	  lis       r30, 0x4330
	  xoris     r3, r25, 0x8000
	  xoris     r0, r26, 0x8000
	  lfs       f0, 0x0(r21)
	  li        r28, 0
	  stw       r3, 0x100C(r1)
	  lfd       f31, 0x1FD0(r2)
	  stfs      f0, 0x2C(r24)
	  lfs       f29, 0x1FB8(r2)
	  lfs       f0, 0x4(r21)
	  stw       r30, 0x1008(r1)
	  lfs       f30, 0x1FBC(r2)
	  stfs      f0, 0x30(r24)
	  lfd       f0, 0x1008(r1)
	  lfs       f2, 0x8(r21)
	  fsubs     f1, f0, f31
	  stw       r0, 0x1014(r1)
	  stfs      f2, 0x34(r24)
	  lfs       f0, 0xC(r21)
	  stw       r30, 0x1010(r1)
	  stfs      f0, 0x38(r24)
	  lfd       f0, 0x1010(r1)
	  lfs       f2, 0x10(r21)
	  fsubs     f0, f0, f31
	  stfs      f2, 0x3C(r24)
	  lfs       f2, 0x14(r21)
	  stfs      f2, 0x40(r24)
	  lfs       f3, 0xC(r21)
	  lfs       f2, 0x0(r21)
	  fsubs     f2, f3, f2
	  fabs      f2, f2
	  frsp      f2, f2
	  fdivs     f1, f2, f1
	  stfs      f1, 0x44(r24)
	  lfs       f2, 0x14(r21)
	  lfs       f1, 0x8(r21)
	  fsubs     f1, f2, f1
	  fabs      f1, f1
	  frsp      f1, f1
	  fdivs     f0, f1, f0
	  stfs      f0, 0x48(r24)
	  b         .loc_0x41C

	.loc_0x12C:
	  xoris     r31, r28, 0x8000
	  li        r27, 0
	  b         .loc_0x410

	.loc_0x138:
	  xoris     r0, r27, 0x8000
	  li        r5, 0
	  stw       r31, 0x1014(r1)
	  mr        r3, r5
	  lfs       f4, 0x44(r24)
	  li        r29, 0
	  stw       r30, 0x1010(r1)
	  li        r4, 0
	  lfs       f2, 0x2C(r24)
	  lfd       f0, 0x1010(r1)
	  stw       r0, 0x100C(r1)
	  fsubs     f3, f0, f31
	  lfs       f5, 0x48(r24)
	  stw       r30, 0x1008(r1)
	  lfs       f0, 0x34(r24)
	  lfd       f1, 0x1008(r1)
	  fmadds    f2, f3, f4, f2
	  fsubs     f1, f1, f31
	  fadds     f3, f2, f4
	  fmadds    f0, f1, f5, f0
	  fadds     f1, f0, f5
	  b         .loc_0x390

	.loc_0x190:
	  lwz       r0, 0x24(r6)
	  lwz       r6, 0x18(r24)
	  add       r7, r0, r3
	  lfs       f4, 0x1FB8(r2)
	  lwz       r0, 0x0(r7)
	  lfs       f6, 0x1FBC(r2)
	  fmr       f5, f4
	  mulli     r0, r0, 0xC
	  lwz       r8, 0x24(r6)
	  fmr       f7, f6
	  add       r6, r8, r0
	  lfs       f8, 0x0(r6)
	  fcmpo     cr0, f4, f8
	  ble-      .loc_0x1CC
	  fmr       f4, f8

	.loc_0x1CC:
	  lfs       f9, 0x8(r6)
	  fcmpo     cr0, f29, f9
	  ble-      .loc_0x1DC
	  fmr       f5, f9

	.loc_0x1DC:
	  fcmpo     cr0, f30, f8
	  bge-      .loc_0x1E8
	  fmr       f6, f8

	.loc_0x1E8:
	  fcmpo     cr0, f30, f9
	  bge-      .loc_0x1F4
	  fmr       f7, f9

	.loc_0x1F4:
	  lwz       r0, 0x4(r7)
	  mulli     r0, r0, 0xC
	  add       r6, r8, r0
	  lfs       f8, 0x0(r6)
	  fcmpo     cr0, f4, f8
	  ble-      .loc_0x210
	  fmr       f4, f8

	.loc_0x210:
	  lfs       f9, 0x8(r6)
	  fcmpo     cr0, f5, f9
	  ble-      .loc_0x220
	  fmr       f5, f9

	.loc_0x220:
	  fcmpo     cr0, f6, f8
	  bge-      .loc_0x22C
	  fmr       f6, f8

	.loc_0x22C:
	  fcmpo     cr0, f7, f9
	  bge-      .loc_0x238
	  fmr       f7, f9

	.loc_0x238:
	  lwz       r0, 0x8(r7)
	  mulli     r0, r0, 0xC
	  add       r6, r8, r0
	  lfs       f8, 0x0(r6)
	  fcmpo     cr0, f4, f8
	  ble-      .loc_0x254
	  fmr       f4, f8

	.loc_0x254:
	  lfs       f9, 0x8(r6)
	  fcmpo     cr0, f5, f9
	  ble-      .loc_0x264
	  fmr       f5, f9

	.loc_0x264:
	  fcmpo     cr0, f6, f8
	  bge-      .loc_0x270
	  fmr       f6, f8

	.loc_0x270:
	  fcmpo     cr0, f7, f9
	  bge-      .loc_0x27C
	  fmr       f7, f9

	.loc_0x27C:
	  fcmpo     cr0, f3, f4
	  bge-      .loc_0x28C
	  li        r0, 0
	  b         .loc_0x2E0

	.loc_0x28C:
	  fcmpo     cr0, f6, f2
	  bge-      .loc_0x29C
	  li        r0, 0
	  b         .loc_0x2E0

	.loc_0x29C:
	  fcmpo     cr0, f2, f4
	  cror      2, 0, 0x2
	  bne-      .loc_0x2BC
	  fcmpo     cr0, f4, f3
	  cror      2, 0, 0x2
	  bne-      .loc_0x2BC
	  li        r0, 0x1
	  b         .loc_0x2E0

	.loc_0x2BC:
	  fcmpo     cr0, f4, f2
	  cror      2, 0, 0x2
	  bne-      .loc_0x2DC
	  fcmpo     cr0, f2, f6
	  cror      2, 0, 0x2
	  bne-      .loc_0x2DC
	  li        r0, 0x1
	  b         .loc_0x2E0

	.loc_0x2DC:
	  li        r0, 0

	.loc_0x2E0:
	  rlwinm.   r0,r0,0,24,31
	  bne-      .loc_0x2F0
	  li        r0, 0
	  b         .loc_0x368

	.loc_0x2F0:
	  fcmpo     cr0, f1, f5
	  bge-      .loc_0x300
	  li        r0, 0
	  b         .loc_0x354

	.loc_0x300:
	  fcmpo     cr0, f7, f0
	  bge-      .loc_0x310
	  li        r0, 0
	  b         .loc_0x354

	.loc_0x310:
	  fcmpo     cr0, f0, f5
	  cror      2, 0, 0x2
	  bne-      .loc_0x330
	  fcmpo     cr0, f5, f1
	  cror      2, 0, 0x2
	  bne-      .loc_0x330
	  li        r0, 0x1
	  b         .loc_0x354

	.loc_0x330:
	  fcmpo     cr0, f5, f0
	  cror      2, 0, 0x2
	  bne-      .loc_0x350
	  fcmpo     cr0, f0, f7
	  cror      2, 0, 0x2
	  bne-      .loc_0x350
	  li        r0, 0x1
	  b         .loc_0x354

	.loc_0x350:
	  li        r0, 0

	.loc_0x354:
	  rlwinm.   r0,r0,0,24,31
	  bne-      .loc_0x364
	  li        r0, 0
	  b         .loc_0x368

	.loc_0x364:
	  li        r0, 0x1

	.loc_0x368:
	  rlwinm.   r0,r0,0,24,31
	  beq-      .loc_0x388
	  cmpwi     r29, 0x400
	  bge-      .loc_0x388
	  addi      r6, r1, 0x8
	  addi      r29, r29, 0x1
	  stwx      r4, r6, r5
	  addi      r5, r5, 0x4

	.loc_0x388:
	  addi      r3, r3, 0x60
	  addi      r4, r4, 0x1

	.loc_0x390:
	  lwz       r6, 0x1C(r24)
	  lwz       r0, 0x1C(r6)
	  cmpw      r4, r0
	  blt+      .loc_0x190
	  lwz       r0, 0x24(r24)
	  cmpwi     r29, 0
	  lwz       r3, 0x28(r24)
	  mullw     r0, r28, r0
	  add       r0, r27, r0
	  mulli     r0, r0, 0x28
	  add       r23, r3, r0
	  ble-      .loc_0x40C
	  mr        r3, r23
	  mr        r4, r29
	  lwz       r12, 0x0(r23)
	  lwz       r12, 0x3C(r12)
	  mtctr     r12
	  bctrl
	  addi      r22, r1, 0x8
	  li        r21, 0
	  b         .loc_0x404

	.loc_0x3E4:
	  mr        r3, r23
	  mr        r4, r22
	  lwz       r12, 0x0(r23)
	  lwz       r12, 0x40(r12)
	  mtctr     r12
	  bctrl
	  addi      r22, r22, 0x4
	  addi      r21, r21, 0x1

	.loc_0x404:
	  cmpw      r21, r29
	  blt+      .loc_0x3E4

	.loc_0x40C:
	  addi      r27, r27, 0x1

	.loc_0x410:
	  cmpw      r27, r26
	  blt+      .loc_0x138
	  addi      r28, r28, 0x1

	.loc_0x41C:
	  cmpw      r28, r25
	  blt+      .loc_0x12C
	  li        r0, 0x1078
	  vmrghb    v31, v1, v0
	  lfd       f31, 0x1070(r1)
	  li        r0, 0x1068
	  vmrghb    v30, v1, v0
	  lfd       f30, 0x1060(r1)
	  li        r0, 0x1058
	  vmrghb    v29, v1, v0
	  lfd       f29, 0x1050(r1)
	  lmw       r21, 0x1024(r1)
	  lwz       r0, 0x1084(r1)
	  mtlr      r0
	  addi      r1, r1, 0x1080
	  blr
	*/
}

/*
 * --INFO--
 * Address:	8041903C
 * Size:	000088
 */
TriIndexList::TriIndexList() { }

// /*
// * --INFO--
// * Address:	........
// * Size:	00006C
// */
// void GridDivider::write(Stream&)
// {
// // UNUSED FUNCTION
// }

/*
 * @generated{write__31ArrayContainer<Q23Sys8Triangle>FR6Stream}
 * --INFO--
 * Address:	804190C4
 * Size:	0000D4
 */
// void ArrayContainer<Sys::Triangle>::write(Stream&)
// {
// 	/*
// 	stwu     r1, -0x20(r1)
// 	mflr     r0
// 	stw      r0, 0x24(r1)
// 	stmw     r27, 0xc(r1)
// 	mr       r28, r4
// 	mr       r27, r3
// 	lwz      r4, 0x14(r3)
// 	mr       r3, r28
// 	bl       textBeginGroup__6StreamFPc
// 	lwz      r4, 0x414(r28)
// 	mr       r3, r28
// 	bl       textWriteTab__6StreamFi
// 	lwz      r4, 0x20(r27)
// 	mr       r3, r28
// 	bl       writeInt__6StreamFi
// 	mr       r3, r28
// 	addi     r4, r2, lbl_80520338@sda21
// 	crclr    6
// 	bl       textWriteText__6StreamFPce
// 	lis      r3, lbl_804997A8@ha
// 	li       r29, 0
// 	addi     r31, r3, lbl_804997A8@l
// 	li       r30, 0
// 	b        lbl_80419170

// lbl_80419124:
// 	lwz      r4, 0x414(r28)
// 	mr       r3, r28
// 	bl       textWriteTab__6StreamFi
// 	mr       r3, r27
// 	lwz      r0, 0x24(r27)
// 	lwz      r12, 0(r27)
// 	mr       r4, r28
// 	add      r5, r0, r30
// 	lwz      r12, 0x2c(r12)
// 	mtctr    r12
// 	bctrl
// 	lwz      r6, 0x20(r27)
// 	mr       r3, r28
// 	mr       r4, r31
// 	mr       r5, r29
// 	crclr    6
// 	bl       textWriteText__6StreamFPce
// 	addi     r30, r30, 0x60
// 	addi     r29, r29, 1

// lbl_80419170:
// 	lwz      r0, 0x20(r27)
// 	cmpw     r29, r0
// 	blt      lbl_80419124
// 	mr       r3, r28
// 	bl       textEndGroup__6StreamFv
// 	lmw      r27, 0xc(r1)
// 	lwz      r0, 0x24(r1)
// 	mtlr     r0
// 	addi     r1, r1, 0x20
// 	blr
// 	*/
// }

/*
 * @generated{writeObject__31ArrayContainer<Q23Sys8Triangle>FR6StreamRQ23Sys8Triangle}
 * --INFO--
 * Address:	80419198
 * Size:	000004
 */
// void ArrayContainer<Sys::Triangle>::writeObject(Stream&, Sys::Triangle&) { }

// /*
// * --INFO--
// * Address:	........
// * Size:	0000C0
// */
// void GridInfo::write(Stream&)
// {
// // UNUSED FUNCTION
// }

/*
 * --INFO--
 * Address:	8041919C
 * Size:	000248
 */
void GridDivider::read(Stream&)
{
	/*
	stwu     r1, -0x30(r1)
	mflr     r0
	stw      r0, 0x34(r1)
	stmw     r27, 0x1c(r1)
	mr       r30, r3
	mr       r31, r4
	li       r3, 0x50
	bl       __nw__FUl
	or.      r29, r3, r3
	beq      lbl_80419234
	bl       __ct__5CNodeFv
	lis      r4, __vt__16GenericContainer@ha
	lis      r3, "__vt__23Container<10Vector3<f>>"@ha
	addi     r0, r4, __vt__16GenericContainer@l
	lis      r4, "__vt__28ArrayContainer<10Vector3<f>>"@ha
	stw      r0, 0(r29)
	addi     r0, r3, "__vt__23Container<10Vector3<f>>"@l
	lis      r3, __vt__Q23Sys11VertexTable@ha
	li       r6, 0
	stw      r0, 0(r29)
	addi     r5, r4, "__vt__28ArrayContainer<10Vector3<f>>"@l
	li       r4, 1
	addi     r0, r3, __vt__Q23Sys11VertexTable@l
	stb      r6, 0x18(r29)
	lfs      f1, lbl_8052033C@sda21(r2)
	stw      r5, 0(r29)
	lfs      f0, lbl_80520340@sda21(r2)
	stb      r4, 0x18(r29)
	stw      r6, 0x20(r29)
	stw      r6, 0x1c(r29)
	stw      r6, 0x24(r29)
	stw      r0, 0(r29)
	stfs     f1, 0x28(r29)
	stfs     f1, 0x2c(r29)
	stfs     f1, 0x30(r29)
	stfs     f0, 0x34(r29)
	stfs     f0, 0x38(r29)
	stfs     f0, 0x3c(r29)

lbl_80419234:
	stw      r29, 0x18(r30)
	mr       r4, r31
	lwz      r3, 0x18(r30)
	lwz      r12, 0(r3)
	lwz      r12, 0x38(r12)
	mtctr    r12
	bctrl
	li       r3, 0x28
	bl       __nw__FUl
	or.      r0, r3, r3
	beq      lbl_80419268
	bl       __ct__Q23Sys13TriangleTableFv
	mr       r0, r3

lbl_80419268:
	stw      r0, 0x1c(r30)
	mr       r4, r31
	lwz      r3, 0x1c(r30)
	lwz      r12, 0(r3)
	lwz      r12, 0x38(r12)
	mtctr    r12
	bctrl
	mr       r4, r31
	addi     r3, r30, 0x2c
	bl       read__8BoundBoxFR6Stream
	mr       r3, r31
	bl       readInt__6StreamFv
	stw      r3, 0x20(r30)
	mr       r3, r31
	bl       readInt__6StreamFv
	stw      r3, 0x24(r30)
	mr       r3, r31
	bl       readFloat__6StreamFv
	stfs     f1, 0x44(r30)
	mr       r3, r31
	bl       readFloat__6StreamFv
	stfs     f1, 0x48(r30)
	lwz      r27, 0x24(r30)
	lwz      r28, 0x20(r30)
	mullw    r29, r28, r27
	mulli    r3, r29, 0x28
	addi     r3, r3, 0x10
	bl       __nwa__FUl
	lis      r4, __ct__Q23Sys12TriIndexListFv@ha
	lis      r5, __dt__Q23Sys12TriIndexListFv@ha
	addi     r4, r4, __ct__Q23Sys12TriIndexListFv@l
	mr       r7, r29
	addi     r5, r5, __dt__Q23Sys12TriIndexListFv@l
	li       r6, 0x28
	bl       __construct_new_array
	stw      r3, 0x28(r30)
	lis      r3, 0x4330
	xoris    r4, r28, 0x8000
	xoris    r0, r27, 0x8000
	lfs      f0, 0x2c(r30)
	li       r29, 0
	stw      r4, 0xc(r1)
	mr       r27, r29
	lfd      f2, lbl_80520330@sda21(r2)
	stfs     f0, 0x2c(r30)
	lfs      f0, 0x30(r30)
	stw      r3, 8(r1)
	stfs     f0, 0x30(r30)
	lfd      f0, 8(r1)
	lfs      f3, 0x34(r30)
	fsubs    f1, f0, f2
	stw      r0, 0x14(r1)
	stfs     f3, 0x34(r30)
	lfs      f0, 0x38(r30)
	stw      r3, 0x10(r1)
	stfs     f0, 0x38(r30)
	lfd      f0, 0x10(r1)
	lfs      f3, 0x38(r30)
	fsubs    f0, f0, f2
	lfs      f2, 0x2c(r30)
	fsubs    f2, f3, f2
	fabs     f2, f2
	frsp     f2, f2
	fdivs    f1, f2, f1
	stfs     f1, 0x44(r30)
	lfs      f2, 0x40(r30)
	lfs      f1, 0x34(r30)
	fsubs    f1, f2, f1
	fabs     f1, f1
	frsp     f1, f1
	fdivs    f0, f1, f0
	stfs     f0, 0x48(r30)
	b        lbl_804193B0

lbl_8041938C:
	lwz      r0, 0x28(r30)
	mr       r4, r31
	add      r3, r0, r27
	lwz      r12, 0(r3)
	lwz      r12, 0x38(r12)
	mtctr    r12
	bctrl
	addi     r27, r27, 0x28
	addi     r29, r29, 1

lbl_804193B0:
	lwz      r3, 0x20(r30)
	lwz      r0, 0x24(r30)
	mullw    r0, r3, r0
	cmpw     r29, r0
	blt      lbl_8041938C
	lwz      r3, 0x1c(r30)
	lwz      r4, 0x18(r30)
	bl       createTriangleSphere__Q23Sys13TriangleTableFRQ23Sys11VertexTable
	lmw      r27, 0x1c(r1)
	lwz      r0, 0x34(r1)
	mtlr     r0
	addi     r1, r1, 0x30
	blr
	*/
}

/*
 * @generated{read__31ArrayContainer<Q23Sys8Triangle>FR6Stream}
 * --INFO--
 * Address:	804193E4
 * Size:	0000B0
 */
// void ArrayContainer<Sys::Triangle>::read(Stream&)
// {
// 	/*
// 	stwu     r1, -0x20(r1)
// 	mflr     r0
// 	stw      r0, 0x24(r1)
// 	stw      r31, 0x1c(r1)
// 	stw      r30, 0x18(r1)
// 	stw      r29, 0x14(r1)
// 	mr       r29, r4
// 	stw      r28, 0x10(r1)
// 	mr       r28, r3
// 	mr       r3, r29
// 	bl       readInt__6StreamFv
// 	stw      r3, 0x20(r28)
// 	mr       r3, r28
// 	lwz      r12, 0(r28)
// 	lwz      r4, 0x20(r28)
// 	lwz      r12, 0x3c(r12)
// 	mtctr    r12
// 	bctrl
// 	lwz      r0, 0x20(r28)
// 	li       r30, 0
// 	li       r31, 0
// 	stw      r0, 0x1c(r28)
// 	b        lbl_80419468

// lbl_80419440:
// 	mr       r3, r28
// 	lwz      r0, 0x24(r28)
// 	lwz      r12, 0(r28)
// 	mr       r4, r29
// 	add      r5, r0, r31
// 	lwz      r12, 0x30(r12)
// 	mtctr    r12
// 	bctrl
// 	addi     r31, r31, 0x60
// 	addi     r30, r30, 1

// lbl_80419468:
// 	lwz      r0, 0x20(r28)
// 	cmpw     r30, r0
// 	blt      lbl_80419440
// 	lwz      r0, 0x24(r1)
// 	lwz      r31, 0x1c(r1)
// 	lwz      r30, 0x18(r1)
// 	lwz      r29, 0x14(r1)
// 	lwz      r28, 0x10(r1)
// 	mtlr     r0
// 	addi     r1, r1, 0x20
// 	blr
// 	*/
// }

/*
 * @generated{readObject__31ArrayContainer<Q23Sys8Triangle>FR6StreamRQ23Sys8Triangle}
 * --INFO--
 * Address:	80419494
 * Size:	000004
 */
// void ArrayContainer<Sys::Triangle>::readObject(Stream&, Sys::Triangle&) { }

/*
 * --INFO--
 * Address:	80419498
 * Size:	000074
 */
void TriangleTable::createTriangleSphere(Sys::VertexTable&)
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stw      r31, 0x1c(r1)
	li       r31, 0
	stw      r30, 0x18(r1)
	li       r30, 0
	stw      r29, 0x14(r1)
	mr       r29, r4
	stw      r28, 0x10(r1)
	mr       r28, r3
	b        lbl_804194E0

lbl_804194C8:
	lwz      r0, 0x24(r28)
	mr       r4, r29
	add      r3, r0, r31
	bl       createSphere__Q23Sys8TriangleFRQ23Sys11VertexTable
	addi     r31, r31, 0x60
	addi     r30, r30, 1

lbl_804194E0:
	lwz      r0, 0x20(r28)
	cmpw     r30, r0
	blt      lbl_804194C8
	lwz      r0, 0x24(r1)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	lwz      r29, 0x14(r1)
	lwz      r28, 0x10(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	8041950C
 * Size:	000088
 */
void TriIndexList::constructClone(Sys::TriangleTable&)
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stw      r31, 0x1c(r1)
	mr       r31, r4
	stw      r30, 0x18(r1)
	mr       r30, r3
	lwz      r12, 0(r3)
	lwz      r4, 0x1c(r4)
	lwz      r12, 0x3c(r12)
	mtctr    r12
	bctrl
	li       r0, 0
	stw      r0, 8(r1)
	b        lbl_8041956C

lbl_80419548:
	mr       r3, r30
	addi     r4, r1, 8
	lwz      r12, 0(r30)
	lwz      r12, 0x40(r12)
	mtctr    r12
	bctrl
	lwz      r3, 8(r1)
	addi     r0, r3, 1
	stw      r0, 8(r1)

lbl_8041956C:
	lwz      r3, 8(r1)
	lwz      r0, 0x1c(r31)
	cmpw     r3, r0
	blt      lbl_80419548
	lwz      r0, 0x24(r1)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	80419594
 * Size:	000150
 */
void TriIndexList::getMinMax(Sys::VertexTable&, Sys::TriangleTable&, Vector3f&, Vector3f&, float&, float&)
{
	/*
	.loc_0x0:
	  stwu      r1, -0x40(r1)
	  lfs       f1, 0x1FE4(r2)
	  stw       r31, 0x3C(r1)
	  lfs       f0, 0x1FE8(r2)
	  stw       r30, 0x38(r1)
	  stw       r29, 0x34(r1)
	  li        r29, 0
	  stw       r28, 0x30(r1)
	  li        r28, 0
	  stfs      f1, 0x0(r8)
	  stfs      f0, 0x0(r9)
	  b         .loc_0x12C

	.loc_0x30:
	  lwz       r10, 0x24(r3)
	  li        r0, 0x3
	  lwz       r11, 0x24(r5)
	  addi      r30, r1, 0x8
	  lwzx      r10, r10, r29
	  lwz       r31, 0x24(r4)
	  mulli     r10, r10, 0x60
	  add       r10, r11, r10
	  lwz       r12, 0x0(r10)
	  lwz       r11, 0x4(r10)
	  lwz       r10, 0x8(r10)
	  mulli     r12, r12, 0xC
	  add       r12, r31, r12
	  mulli     r11, r11, 0xC
	  lfs       f1, 0x0(r12)
	  lfs       f0, 0x4(r12)
	  lfs       f6, 0x8(r12)
	  add       r11, r31, r11
	  stfs      f1, 0x8(r1)
	  mulli     r10, r10, 0xC
	  lfs       f5, 0x0(r11)
	  lfs       f4, 0x4(r11)
	  lfs       f3, 0x8(r11)
	  add       r10, r31, r10
	  stfs      f0, 0xC(r1)
	  lfs       f2, 0x0(r10)
	  lfs       f1, 0x4(r10)
	  lfs       f0, 0x8(r10)
	  stfs      f6, 0x10(r1)
	  stfs      f5, 0x14(r1)
	  stfs      f4, 0x18(r1)
	  stfs      f3, 0x1C(r1)
	  stfs      f2, 0x20(r1)
	  stfs      f1, 0x24(r1)
	  stfs      f0, 0x28(r1)
	  mtctr     r0

	.loc_0xC0:
	  lfs       f1, 0x4(r30)
	  lfs       f0, 0x4(r7)
	  lfs       f3, 0x0(r30)
	  lfs       f2, 0x0(r7)
	  fsubs     f1, f1, f0
	  lfs       f0, 0x4(r6)
	  fsubs     f2, f3, f2
	  lfs       f4, 0x8(r30)
	  lfs       f3, 0x8(r7)
	  fmuls     f0, f1, f0
	  lfs       f1, 0x0(r6)
	  fsubs     f3, f4, f3
	  fmadds    f1, f2, f1, f0
	  lfs       f2, 0x8(r6)
	  lfs       f0, 0x0(r9)
	  fmadds    f1, f3, f2, f1
	  fcmpo     cr0, f1, f0
	  ble-      .loc_0x10C
	  stfs      f1, 0x0(r9)

	.loc_0x10C:
	  lfs       f0, 0x0(r8)
	  fcmpo     cr0, f1, f0
	  bge-      .loc_0x11C
	  stfs      f1, 0x0(r8)

	.loc_0x11C:
	  addi      r30, r30, 0xC
	  bdnz+     .loc_0xC0
	  addi      r29, r29, 0x4
	  addi      r28, r28, 0x1

	.loc_0x12C:
	  lwz       r0, 0x1C(r3)
	  cmpw      r28, r0
	  blt+      .loc_0x30
	  lwz       r31, 0x3C(r1)
	  lwz       r30, 0x38(r1)
	  lwz       r29, 0x34(r1)
	  lwz       r28, 0x30(r1)
	  addi      r1, r1, 0x40
	  blr
	*/
}

/*
 * --INFO--
 * Address:	804196E4
 * Size:	000294
 */
void TriIndexList::makeCovarianceMatrix(Sys::VertexTable&, Sys::TriangleTable&, Matrix3f&, Vector3f&)
{
	/*
	.loc_0x0:
	  stwu      r1, -0x70(r1)
	  lis       r0, 0x4330
	  lfd       f2, 0x1FD0(r2)
	  li        r11, 0
	  stmw      r18, 0x38(r1)
	  lfs       f0, 0x1FA8(r2)
	  stw       r0, 0x30(r1)
	  lfs       f3, 0x1FAC(r2)
	  lwz       r19, 0x1C(r3)
	  xoris     r0, r19, 0x8000
	  stfs      f0, 0x0(r7)
	  stw       r0, 0x34(r1)
	  lfd       f1, 0x30(r1)
	  stfs      f0, 0x4(r7)
	  fsubs     f1, f1, f2
	  lfs       f2, 0x1FEC(r2)
	  stfs      f0, 0x8(r7)
	  fmuls     f1, f2, f1
	  fdivs     f0, f3, f1
	  mtctr     r19
	  cmpwi     r19, 0
	  ble-      .loc_0xFC

	.loc_0x58:
	  lwz       r8, 0x24(r3)
	  lwz       r9, 0x24(r5)
	  lwzx      r0, r8, r11
	  addi      r11, r11, 0x4
	  lwz       r12, 0x24(r4)
	  mulli     r0, r0, 0x60
	  lfs       f3, 0x0(r7)
	  lfs       f6, 0x4(r7)
	  lfs       f9, 0x8(r7)
	  add       r10, r9, r0
	  lwz       r0, 0x0(r10)
	  lwz       r8, 0x4(r10)
	  mulli     r9, r0, 0xC
	  lwz       r0, 0x8(r10)
	  add       r9, r12, r9
	  mulli     r8, r8, 0xC
	  lfs       f2, 0x0(r9)
	  lfs       f5, 0x4(r9)
	  lfs       f8, 0x8(r9)
	  add       r8, r12, r8
	  lfs       f1, 0x0(r8)
	  mulli     r0, r0, 0xC
	  lfs       f4, 0x4(r8)
	  lfs       f7, 0x8(r8)
	  fadds     f2, f2, f1
	  add       r8, r12, r0
	  fadds     f5, f5, f4
	  lfs       f1, 0x0(r8)
	  fadds     f8, f8, f7
	  lfs       f4, 0x4(r8)
	  fadds     f1, f2, f1
	  lfs       f7, 0x8(r8)
	  fadds     f2, f5, f4
	  fadds     f4, f8, f7
	  fadds     f1, f3, f1
	  fadds     f2, f6, f2
	  fadds     f3, f9, f4
	  stfs      f1, 0x0(r7)
	  stfs      f2, 0x4(r7)
	  stfs      f3, 0x8(r7)
	  bdnz+     .loc_0x58

	.loc_0xFC:
	  lfs       f1, 0x0(r7)
	  addi      r18, r1, 0x14
	  lfs       f2, 0x4(r7)
	  addi      r0, r1, 0x20
	  fmuls     f1, f1, f0
	  lfs       f3, 0x8(r7)
	  addi      r27, r1, 0x8
	  fmuls     f2, f2, f0
	  fmuls     f3, f3, f0
	  mr        r31, r7
	  stfs      f1, 0x0(r7)
	  mr        r30, r18
	  mr        r29, r0
	  mr        r28, r27
	  stfs      f2, 0x4(r7)
	  li        r25, 0
	  stfs      f3, 0x8(r7)

	.loc_0x140:
	  mr        r8, r7
	  mr        r9, r18
	  mr        r10, r0
	  mr        r11, r27
	  mr        r12, r6
	  li        r24, 0

	.loc_0x158:
	  li        r26, 0
	  lfs       f11, 0x1FA8(r2)
	  mtctr     r19
	  cmpwi     r19, 0
	  ble-      .loc_0x240

	.loc_0x16C:
	  lwz       r20, 0x24(r3)
	  lwz       r21, 0x24(r5)
	  lwzx      r22, r20, r26
	  addi      r26, r26, 0x4
	  lwz       r20, 0x24(r4)
	  mulli     r22, r22, 0x60
	  lfs       f9, 0x0(r8)
	  lfs       f10, 0x0(r31)
	  add       r23, r21, r22
	  lwz       r22, 0x4(r23)
	  lwz       r21, 0x0(r23)
	  mulli     r22, r22, 0xC
	  lwz       r23, 0x8(r23)
	  add       r22, r20, r22
	  lfs       f3, 0x0(r22)
	  mulli     r21, r21, 0xC
	  lfs       f2, 0x4(r22)
	  lfs       f1, 0x8(r22)
	  stfs      f3, 0x14(r1)
	  add       r21, r20, r21
	  lfs       f8, 0x0(r21)
	  mulli     r22, r23, 0xC
	  lfs       f7, 0x4(r21)
	  lfs       f3, 0x8(r21)
	  stfs      f2, 0x18(r1)
	  add       r20, r20, r22
	  lfs       f6, 0x0(r20)
	  stfs      f1, 0x1C(r1)
	  lfs       f5, 0x4(r20)
	  lfs       f2, 0x0(r30)
	  lfs       f1, 0x0(r9)
	  lfs       f4, 0x8(r20)
	  fsubs     f2, f2, f10
	  fsubs     f1, f1, f9
	  stfs      f8, 0x20(r1)
	  stfs      f7, 0x24(r1)
	  fmuls     f1, f2, f1
	  stfs      f3, 0x28(r1)
	  lfs       f3, 0x0(r29)
	  lfs       f2, 0x0(r10)
	  fsubs     f3, f3, f10
	  stfs      f6, 0x8(r1)
	  fsubs     f2, f2, f9
	  stfs      f5, 0xC(r1)
	  stfs      f4, 0x10(r1)
	  fmadds    f1, f3, f2, f1
	  lfs       f3, 0x0(r28)
	  lfs       f2, 0x0(r11)
	  fsubs     f3, f3, f10
	  fsubs     f2, f2, f9
	  fmadds    f1, f3, f2, f1
	  fadds     f11, f11, f1
	  bdnz+     .loc_0x16C

	.loc_0x240:
	  fmuls     f11, f11, f0
	  addi      r24, r24, 0x1
	  cmpwi     r24, 0x3
	  addi      r11, r11, 0x4
	  addi      r8, r8, 0x4
	  addi      r9, r9, 0x4
	  stfs      f11, 0x0(r12)
	  addi      r12, r12, 0x4
	  addi      r10, r10, 0x4
	  blt+      .loc_0x158
	  addi      r25, r25, 0x1
	  addi      r31, r31, 0x4
	  cmpwi     r25, 0x3
	  addi      r30, r30, 0x4
	  addi      r29, r29, 0x4
	  addi      r28, r28, 0x4
	  addi      r6, r6, 0xC
	  blt+      .loc_0x140
	  lmw       r18, 0x38(r1)
	  addi      r1, r1, 0x70
	  blr
	*/
}

/*
 * --INFO--
 * Address:	80419978
 * Size:	000004
 */
void TriIndexList::draw(Graphics&, Sys::VertexTable&, Sys::TriangleTable&, bool) { }

/*
 * --INFO--
 * Address:	8041997C
 * Size:	00007C
 */
TriangleTable::TriangleTable(void)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r3
	bl       __ct__5CNodeFv
	lis      r4, __vt__16GenericContainer@ha
	lis      r3, "__vt__26Container<Q23Sys8Triangle>"@ha
	addi     r0, r4, __vt__16GenericContainer@l
	lis      r4, "__vt__31ArrayContainer<Q23Sys8Triangle>"@ha
	stw      r0, 0(r31)
	addi     r0, r3, "__vt__26Container<Q23Sys8Triangle>"@l
	lis      r3, __vt__Q23Sys13TriangleTable@ha
	li       r6, 0
	stw      r0, 0(r31)
	addi     r5, r4, "__vt__31ArrayContainer<Q23Sys8Triangle>"@l
	li       r4, 1
	addi     r0, r3, __vt__Q23Sys13TriangleTable@l
	stb      r6, 0x18(r31)
	mr       r3, r31
	stw      r5, 0(r31)
	stb      r4, 0x18(r31)
	stw      r6, 0x20(r31)
	stw      r6, 0x1c(r31)
	stw      r6, 0x24(r31)
	stw      r0, 0(r31)
	lwz      r31, 0xc(r1)
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * @generated{__dt__31ArrayContainer<Q23Sys8Triangle>Fv}
 * --INFO--
 * Address:	804199F8
 * Size:	000080
 */
// void ArrayContainer<Sys::Triangle>::~ArrayContainer()
// {
// 	/*
// 	stwu     r1, -0x10(r1)
// 	mflr     r0
// 	stw      r0, 0x14(r1)
// 	stw      r31, 0xc(r1)
// 	mr       r31, r4
// 	stw      r30, 8(r1)
// 	or.      r30, r3, r3
// 	beq      lbl_80419A5C
// 	lis      r4, "__vt__31ArrayContainer<Q23Sys8Triangle>"@ha
// 	addi     r0, r4, "__vt__31ArrayContainer<Q23Sys8Triangle>"@l
// 	stw      r0, 0(r30)
// 	beq      lbl_80419A4C
// 	lis      r4, "__vt__26Container<Q23Sys8Triangle>"@ha
// 	addi     r0, r4, "__vt__26Container<Q23Sys8Triangle>"@l
// 	stw      r0, 0(r30)
// 	beq      lbl_80419A4C
// 	lis      r5, __vt__16GenericContainer@ha
// 	li       r4, 0
// 	addi     r0, r5, __vt__16GenericContainer@l
// 	stw      r0, 0(r30)
// 	bl       __dt__5CNodeFv

// lbl_80419A4C:
// 	extsh.   r0, r31
// 	ble      lbl_80419A5C
// 	mr       r3, r30
// 	bl       __dl__FPv

// lbl_80419A5C:
// 	lwz      r0, 0x14(r1)
// 	mr       r3, r30
// 	lwz      r31, 0xc(r1)
// 	lwz      r30, 8(r1)
// 	mtlr     r0
// 	addi     r1, r1, 0x10
// 	blr
// 	*/
// }

/*
 * @generated{__dt__26Container<Q23Sys8Triangle>Fv}
 * --INFO--
 * Address:	80419A78
 * Size:	000070
 */
// void Container<Sys::Triangle>::~Container()
// {
// 	/*
// 	stwu     r1, -0x10(r1)
// 	mflr     r0
// 	stw      r0, 0x14(r1)
// 	stw      r31, 0xc(r1)
// 	mr       r31, r4
// 	stw      r30, 8(r1)
// 	or.      r30, r3, r3
// 	beq      lbl_80419ACC
// 	lis      r4, "__vt__26Container<Q23Sys8Triangle>"@ha
// 	addi     r0, r4, "__vt__26Container<Q23Sys8Triangle>"@l
// 	stw      r0, 0(r30)
// 	beq      lbl_80419ABC
// 	lis      r5, __vt__16GenericContainer@ha
// 	li       r4, 0
// 	addi     r0, r5, __vt__16GenericContainer@l
// 	stw      r0, 0(r30)
// 	bl       __dt__5CNodeFv

// lbl_80419ABC:
// 	extsh.   r0, r31
// 	ble      lbl_80419ACC
// 	mr       r3, r30
// 	bl       __dl__FPv

// lbl_80419ACC:
// 	lwz      r0, 0x14(r1)
// 	mr       r3, r30
// 	lwz      r31, 0xc(r1)
// 	lwz      r30, 8(r1)
// 	mtlr     r0
// 	addi     r1, r1, 0x10
// 	blr
// 	*/
// }

/*
 * --INFO--
 * Address:	........
 * Size:	000060
 */
void TriangleTable::findMaxVertexIndex(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	80419AE8
 * Size:	00013C
 */
void VertexTable::transform(Matrixf&)
{
	/*
	stwu     r1, -0x30(r1)
	mflr     r0
	stw      r0, 0x34(r1)
	stmw     r27, 0x1c(r1)
	mr       r27, r3
	mr       r28, r4
	li       r30, 0
	li       r31, 0
	b        lbl_80419B44

lbl_80419B0C:
	lwz      r0, 0x24(r27)
	mr       r3, r28
	addi     r5, r1, 8
	add      r29, r0, r31
	mr       r4, r29
	bl       PSMTXMultVec
	lfs      f1, 0xc(r1)
	addi     r31, r31, 0xc
	lfs      f2, 0x10(r1)
	addi     r30, r30, 1
	lfs      f0, 8(r1)
	stfs     f0, 0(r29)
	stfs     f1, 4(r29)
	stfs     f2, 8(r29)

lbl_80419B44:
	lwz      r0, 0x1c(r27)
	cmpw     r30, r0
	blt      lbl_80419B0C
	lfs      f1, lbl_8052033C@sda21(r2)
	li       r3, 0
	lfs      f0, lbl_80520340@sda21(r2)
	mr       r5, r3
	stfs     f1, 0x28(r27)
	stfs     f1, 0x2c(r27)
	stfs     f1, 0x30(r27)
	stfs     f0, 0x34(r27)
	stfs     f0, 0x38(r27)
	stfs     f0, 0x3c(r27)
	b        lbl_80419C04

lbl_80419B7C:
	lwz      r0, 0x24(r27)
	lfs      f0, 0x28(r27)
	add      r4, r0, r5
	lfs      f1, 0(r4)
	fcmpo    cr0, f1, f0
	bge      lbl_80419B98
	stfs     f1, 0x28(r27)

lbl_80419B98:
	lfs      f1, 4(r4)
	lfs      f0, 0x2c(r27)
	fcmpo    cr0, f1, f0
	bge      lbl_80419BAC
	stfs     f1, 0x2c(r27)

lbl_80419BAC:
	lfs      f1, 8(r4)
	lfs      f0, 0x30(r27)
	fcmpo    cr0, f1, f0
	bge      lbl_80419BC0
	stfs     f1, 0x30(r27)

lbl_80419BC0:
	lfs      f1, 0(r4)
	lfs      f0, 0x34(r27)
	fcmpo    cr0, f1, f0
	ble      lbl_80419BD4
	stfs     f1, 0x34(r27)

lbl_80419BD4:
	lfs      f1, 4(r4)
	lfs      f0, 0x38(r27)
	fcmpo    cr0, f1, f0
	ble      lbl_80419BE8
	stfs     f1, 0x38(r27)

lbl_80419BE8:
	lfs      f1, 8(r4)
	lfs      f0, 0x3c(r27)
	fcmpo    cr0, f1, f0
	ble      lbl_80419BFC
	stfs     f1, 0x3c(r27)

lbl_80419BFC:
	addi     r5, r5, 0xc
	addi     r3, r3, 1

lbl_80419C04:
	lwz      r0, 0x1c(r27)
	cmpw     r3, r0
	blt      lbl_80419B7C
	lmw      r27, 0x1c(r1)
	lwz      r0, 0x34(r1)
	mtlr     r0
	addi     r1, r1, 0x30
	blr
	*/
}

/*
 * --INFO--
 * Address:	80419C24
 * Size:	0000D4
 */
void VertexTable::write(Stream&)
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stmw     r27, 0xc(r1)
	mr       r28, r4
	mr       r27, r3
	lwz      r4, 0x14(r3)
	mr       r3, r28
	bl       textBeginGroup__6StreamFPc
	lwz      r4, 0x414(r28)
	mr       r3, r28
	bl       textWriteTab__6StreamFi
	lwz      r4, 0x20(r27)
	mr       r3, r28
	bl       writeInt__6StreamFi
	mr       r3, r28
	addi     r4, r2, lbl_80520338@sda21
	crclr    6
	bl       textWriteText__6StreamFPce
	lis      r3, lbl_804997A8@ha
	li       r29, 0
	addi     r31, r3, lbl_804997A8@l
	li       r30, 0
	b        lbl_80419CD0

lbl_80419C84:
	lwz      r4, 0x414(r28)
	mr       r3, r28
	bl       textWriteTab__6StreamFi
	mr       r3, r27
	lwz      r0, 0x24(r27)
	lwz      r12, 0(r27)
	mr       r4, r28
	add      r5, r0, r30
	lwz      r12, 0x2c(r12)
	mtctr    r12
	bctrl
	lwz      r6, 0x20(r27)
	mr       r3, r28
	mr       r4, r31
	mr       r5, r29
	crclr    6
	bl       textWriteText__6StreamFPce
	addi     r30, r30, 0xc
	addi     r29, r29, 1

lbl_80419CD0:
	lwz      r0, 0x20(r27)
	cmpw     r29, r0
	blt      lbl_80419C84
	mr       r3, r28
	bl       textEndGroup__6StreamFv
	lmw      r27, 0xc(r1)
	lwz      r0, 0x24(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	80419CF8
 * Size:	000024
 */
void VertexTable::writeObject(Stream&, Vector3f&)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	mr       r3, r5
	stw      r0, 0x14(r1)
	bl       "write__10Vector3<f>FR6Stream"
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	80419D1C
 * Size:	000090
 */
VertexTable::~VertexTable(void)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r4
	stw      r30, 8(r1)
	or.      r30, r3, r3
	beq      lbl_80419D90
	lis      r4, __vt__Q23Sys11VertexTable@ha
	addi     r0, r4, __vt__Q23Sys11VertexTable@l
	stw      r0, 0(r30)
	beq      lbl_80419D80
	lis      r4, "__vt__28ArrayContainer<10Vector3<f>>"@ha
	addi     r0, r4, "__vt__28ArrayContainer<10Vector3<f>>"@l
	stw      r0, 0(r30)
	beq      lbl_80419D80
	lis      r4, "__vt__23Container<10Vector3<f>>"@ha
	addi     r0, r4, "__vt__23Container<10Vector3<f>>"@l
	stw      r0, 0(r30)
	beq      lbl_80419D80
	lis      r5, __vt__16GenericContainer@ha
	li       r4, 0
	addi     r0, r5, __vt__16GenericContainer@l
	stw      r0, 0(r30)
	bl       __dt__5CNodeFv

lbl_80419D80:
	extsh.   r0, r31
	ble      lbl_80419D90
	mr       r3, r30
	bl       __dl__FPv

lbl_80419D90:
	lwz      r0, 0x14(r1)
	mr       r3, r30
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	80419DAC
 * Size:	000024
 */
void VertexTable::readObject(Stream&, Vector3f&)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	mr       r3, r5
	stw      r0, 0x14(r1)
	bl       "read__10Vector3<f>FR6Stream"
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	80419DD0
 * Size:	000090
 */
TriangleTable::~TriangleTable(void)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r4
	stw      r30, 8(r1)
	or.      r30, r3, r3
	beq      lbl_80419E44
	lis      r4, __vt__Q23Sys13TriangleTable@ha
	addi     r0, r4, __vt__Q23Sys13TriangleTable@l
	stw      r0, 0(r30)
	beq      lbl_80419E34
	lis      r4, "__vt__31ArrayContainer<Q23Sys8Triangle>"@ha
	addi     r0, r4, "__vt__31ArrayContainer<Q23Sys8Triangle>"@l
	stw      r0, 0(r30)
	beq      lbl_80419E34
	lis      r4, "__vt__26Container<Q23Sys8Triangle>"@ha
	addi     r0, r4, "__vt__26Container<Q23Sys8Triangle>"@l
	stw      r0, 0(r30)
	beq      lbl_80419E34
	lis      r5, __vt__16GenericContainer@ha
	li       r4, 0
	addi     r0, r5, __vt__16GenericContainer@l
	stw      r0, 0(r30)
	bl       __dt__5CNodeFv

lbl_80419E34:
	extsh.   r0, r31
	ble      lbl_80419E44
	mr       r3, r30
	bl       __dl__FPv

lbl_80419E44:
	lwz      r0, 0x14(r1)
	mr       r3, r30
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	80419E60
 * Size:	000088
 */
void TriangleTable::readObject(Stream&, Sys::Triangle&)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r5
	stw      r30, 8(r1)
	mr       r30, r4
	mr       r3, r30
	bl       readInt__6StreamFv
	stw      r3, 0(r31)
	mr       r3, r30
	bl       readInt__6StreamFv
	stw      r3, 4(r31)
	mr       r3, r30
	bl       readInt__6StreamFv
	stw      r3, 8(r31)
	mr       r4, r30
	addi     r3, r31, 0xc
	bl       read__5PlaneFR6Stream
	mr       r4, r30
	addi     r3, r31, 0x1c
	bl       read__5PlaneFR6Stream
	mr       r4, r30
	addi     r3, r31, 0x2c
	bl       read__5PlaneFR6Stream
	mr       r4, r30
	addi     r3, r31, 0x3c
	bl       read__5PlaneFR6Stream
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	80419EE8
 * Size:	000088
 */
void TriangleTable::writeObject(Stream&, Sys::Triangle&)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r5
	stw      r30, 8(r1)
	mr       r30, r4
	mr       r3, r30
	lwz      r4, 0(r5)
	bl       writeInt__6StreamFi
	lwz      r4, 4(r31)
	mr       r3, r30
	bl       writeInt__6StreamFi
	lwz      r4, 8(r31)
	mr       r3, r30
	bl       writeInt__6StreamFi
	mr       r4, r30
	addi     r3, r31, 0xc
	bl       write__5PlaneFR6Stream
	mr       r4, r30
	addi     r3, r31, 0x1c
	bl       write__5PlaneFR6Stream
	mr       r4, r30
	addi     r3, r31, 0x2c
	bl       write__5PlaneFR6Stream
	mr       r4, r30
	addi     r3, r31, 0x3c
	bl       write__5PlaneFR6Stream
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	80419F70
 * Size:	000034
 */
void GridDivider::getBoundBox(BoundBox&)
{
	/*
	lfs      f0, 0x2c(r3)
	stfs     f0, 0(r4)
	lfs      f0, 0x30(r3)
	stfs     f0, 4(r4)
	lfs      f0, 0x34(r3)
	stfs     f0, 8(r4)
	lfs      f0, 0x38(r3)
	stfs     f0, 0xc(r4)
	lfs      f0, 0x3c(r3)
	stfs     f0, 0x10(r4)
	lfs      f0, 0x40(r3)
	stfs     f0, 0x14(r4)
	blr
	*/
}

} // namespace Sys

/*
 * @generated{setArray__31ArrayContainer<Q23Sys8Triangle>FPQ23Sys8Trianglei}
 * --INFO--
 * Address:	80419FA4
 * Size:	000010
 */
// void ArrayContainer<Sys::Triangle>::setArray(Sys::Triangle*, int)
// {
// 	/*
// 	stw      r4, 0x24(r3)
// 	stw      r5, 0x20(r3)
// 	stw      r5, 0x1c(r3)
// 	blr
// 	*/
// }

/*
 * @generated{get__31ArrayContainer<Q23Sys8Triangle>FPv}
 * --INFO--
 * Address:	80419FB4
 * Size:	000010
 */
// void ArrayContainer<Sys::Triangle>::get(void*)
// {
// 	/*
// 	mulli    r0, r4, 0x60
// 	lwz      r3, 0x24(r3)
// 	add      r3, r3, r0
// 	blr
// 	*/
// }

/*
 * @generated{getNext__31ArrayContainer<Q23Sys8Triangle>FPv}
 * --INFO--
 * Address:	80419FC4
 * Size:	000008
 */
// void ArrayContainer<Sys::Triangle>::getNext(void*)
// {
// 	/*
// 	addi     r3, r4, 1
// 	blr
// 	*/
// }

/*
 * @generated{getStart__31ArrayContainer<Q23Sys8Triangle>Fv}
 * --INFO--
 * Address:	80419FCC
 * Size:	000008
 */
// u32 ArrayContainer<Sys::Triangle>::getStart() { return 0x0; }

/*
 * @generated{getEnd__31ArrayContainer<Q23Sys8Triangle>Fv}
 * --INFO--
 * Address:	80419FD4
 * Size:	000008
 */
// void ArrayContainer<Sys::Triangle>::getEnd()
// {
// 	/*
// 	lwz      r3, 0x1c(r3)
// 	blr
// 	*/
// }

/*
 * @generated{getAt__31ArrayContainer<Q23Sys8Triangle>Fi}
 * --INFO--
 * Address:	80419FDC
 * Size:	000010
 */
// void ArrayContainer<Sys::Triangle>::getAt(int)
// {
// 	/*
// 	mulli    r0, r4, 0x60
// 	lwz      r3, 0x24(r3)
// 	add      r3, r3, r0
// 	blr
// 	*/
// }

/*
 * @generated{getTo__31ArrayContainer<Q23Sys8Triangle>Fv}
 * @generated{getObject__26Container<Q23Sys8Triangle>FPv}
 * @generated{getAt__26Container<Q23Sys8Triangle>Fi}
 * @generated{getTo__26Container<Q23Sys8Triangle>Fv}
 * --INFO--
 * Address:	80419FEC
 * Size:	000008
 */
// void ArrayContainer<Sys::Triangle>::getTo()
// {
// 	/*
// 	lwz      r3, 0x20(r3)
// 	blr
// 	*/
// }

/*
 * @generated{getObject__26Container<Q23Sys8Triangle>FPv}
 * --INFO--
 * Address:	80419FF4
 * Size:	00002C
 */
// void Container<Sys::Triangle>::getObject(void*)
// {
// 	/*
// 	stwu     r1, -0x10(r1)
// 	mflr     r0
// 	stw      r0, 0x14(r1)
// 	lwz      r12, 0(r3)
// 	lwz      r12, 0x20(r12)
// 	mtctr    r12
// 	bctrl
// 	lwz      r0, 0x14(r1)
// 	mtlr     r0
// 	addi     r1, r1, 0x10
// 	blr
// 	*/
// }

/*
 * @generated{getAt__26Container<Q23Sys8Triangle>Fi}
 * --INFO--
 * Address:	8041A020
 * Size:	000008
 */
// u32 Container<Sys::Triangle>::getAt(int) { return 0x0; }

/*
 * @generated{getTo__26Container<Q23Sys8Triangle>Fv}
 * --INFO--
 * Address:	8041A028
 * Size:	000008
 */
// u32 Container<Sys::Triangle>::getTo() { return 0x0; }
