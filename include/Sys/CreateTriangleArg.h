#ifndef _SYS_CREATETRIANGLEARG_H
#define _SYS_CREATETRIANGLEARG_H

#include "Vector3.h"

namespace Sys {
struct CreateTriangleArg {
	Vector3f _00;            // _00
	float _0C;               // _0C
	float _10;               // _10
	float _14;               // _14
	Vector3f* m_vertices[3]; // _18
};
} // namespace Sys

#endif
