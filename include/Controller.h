#ifndef _CONTROLLER_H
#define _CONTROLLER_H

#include "JSystem/JUT/JUTGamePad.h"

struct Controller : public JUTGamePad {
	u8 field_0x4;
	u8 field_0x5;
	u8 field_0x6;
	u8 field_0x7;
	u8 field_0x8;
	u8 field_0x9;
	u8 field_0xa;
	u8 field_0xb;
	u8 field_0xc;
	u8 field_0xd;
	u8 field_0xe;
	u8 field_0xf;
	u8 field_0x10;
	u8 field_0x11;
	u8 field_0x12;
	u8 field_0x13;
	u8 field_0x14;
	u8 field_0x15;
	u8 field_0x16;
	u8 field_0x17;
	s32 buttons;
	u32 press; /* Created by retype action */
	u32 input; /* Created by retype action */
	u8 field_0x24;
	u8 field_0x25;
	u8 field_0x26;
	u8 field_0x27;
	float Lanalog;
	u8 field_0x2c;
	u8 field_0x2d;
	u8 field_0x2e;
	u8 field_0x2f;
	u8 field_0x30;
	u8 field_0x31;
	u8 field_0x32;
	u8 field_0x33;
	u8 field_0x34;
	u8 field_0x35;
	u8 field_0x36;
	u8 field_0x37;
	u8 field_0x38;
	u8 field_0x39;
	u8 field_0x3a;
	u8 field_0x3b;
	u8 field_0x3c;
	u8 field_0x3d;
	u8 field_0x3e;
	u8 field_0x3f;
	u8 field_0x40;
	u8 field_0x41;
	u8 field_0x42;
	u8 field_0x43;
	u8 field_0x44;
	u8 field_0x45;
	u8 field_0x46;
	u8 field_0x47;
	float Xanalog;
	float Zanalog;
	float field_0x50;
	float field_0x54;
	float cstick_lr;
	float cstick_up;
	float cstickdeflection;

	Controller(JUTGamePad::EPadPort);

	virtual ~Controller(); // _00
};

#endif
