.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
.global lbl_8048D1C0
lbl_8048D1C0:
	.asciz "weak_joint1"
.global lbl_8048D1CC
lbl_8048D1CC:
	.asciz "weak_joint2"

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global __vt__Q24Game24UmimushiSphereShadowNode
__vt__Q24Game24UmimushiSphereShadowNode:
	.4byte 0
	.4byte 0
	.4byte __dt__Q24Game24UmimushiSphereShadowNodeFv
	.4byte getChildCount__5CNodeFv
.global __vt__Q24Game22UmimushiTubeShadowNode
__vt__Q24Game22UmimushiTubeShadowNode:
	.4byte 0
	.4byte 0
	.4byte __dt__Q24Game22UmimushiTubeShadowNodeFv
	.4byte getChildCount__5CNodeFv

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.global lbl_8051D180
lbl_8051D180:
	.float 0.5
.global lbl_8051D184
lbl_8051D184:
	.4byte 0x00000000
.global lbl_8051D188
lbl_8051D188:
	.float 1.0
.global lbl_8051D18C
lbl_8051D18C:
	.4byte 0x41C80000
.global lbl_8051D190
lbl_8051D190:
	.4byte 0x40200000
.global lbl_8051D194
lbl_8051D194:
	.4byte 0xC1480000
.global lbl_8051D198
lbl_8051D198:
	.4byte 0x3FC00000
.global lbl_8051D19C
lbl_8051D19C:
	.4byte 0x41700000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global "makeShadowSRT__Q24Game22UmimushiTubeShadowNodeFRQ24Game15JointShadowParmP7MatrixfR10Vector3<f>R10Vector3<f>"
"makeShadowSRT__Q24Game22UmimushiTubeShadowNodeFRQ24Game15JointShadowParmP7MatrixfR10Vector3<f>R10Vector3<f>":
/* 802F27DC 002EF71C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F27E0 002EF720  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802F27E4 002EF724  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 802F27E8 002EF728  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 802F27EC 002EF72C  F3 C1 00 18 */	psq_st f30, 24(r1), 0, qr0
/* 802F27F0 002EF730  C0 65 00 00 */	lfs f3, 0(r5)
/* 802F27F4 002EF734  C0 A5 00 10 */	lfs f5, 0x10(r5)
/* 802F27F8 002EF738  C0 C5 00 20 */	lfs f6, 0x20(r5)
/* 802F27FC 002EF73C  C0 45 00 04 */	lfs f2, 4(r5)
/* 802F2800 002EF740  C0 E5 00 14 */	lfs f7, 0x14(r5)
/* 802F2804 002EF744  C1 05 00 24 */	lfs f8, 0x24(r5)
/* 802F2808 002EF748  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 802F280C 002EF74C  C0 82 EE 20 */	lfs f4, lbl_8051D180@sda21(r2)
/* 802F2810 002EF750  D0 07 00 00 */	stfs f0, 0(r7)
/* 802F2814 002EF754  C1 82 EE 24 */	lfs f12, lbl_8051D184@sda21(r2)
/* 802F2818 002EF758  C0 05 00 1C */	lfs f0, 0x1c(r5)
/* 802F281C 002EF75C  D0 07 00 04 */	stfs f0, 4(r7)
/* 802F2820 002EF760  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 802F2824 002EF764  D0 07 00 08 */	stfs f0, 8(r7)
/* 802F2828 002EF768  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 802F282C 002EF76C  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 802F2830 002EF770  EC 02 00 32 */	fmuls f0, f2, f0
/* 802F2834 002EF774  C0 47 00 00 */	lfs f2, 0(r7)
/* 802F2838 002EF778  EC 03 00 7A */	fmadds f0, f3, f1, f0
/* 802F283C 002EF77C  EC 02 00 2A */	fadds f0, f2, f0
/* 802F2840 002EF780  D0 07 00 00 */	stfs f0, 0(r7)
/* 802F2844 002EF784  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 802F2848 002EF788  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 802F284C 002EF78C  EC 07 00 32 */	fmuls f0, f7, f0
/* 802F2850 002EF790  C0 47 00 04 */	lfs f2, 4(r7)
/* 802F2854 002EF794  EC 05 00 7A */	fmadds f0, f5, f1, f0
/* 802F2858 002EF798  EC 02 00 2A */	fadds f0, f2, f0
/* 802F285C 002EF79C  D0 07 00 04 */	stfs f0, 4(r7)
/* 802F2860 002EF7A0  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 802F2864 002EF7A4  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 802F2868 002EF7A8  EC 08 00 32 */	fmuls f0, f8, f0
/* 802F286C 002EF7AC  C0 47 00 08 */	lfs f2, 8(r7)
/* 802F2870 002EF7B0  EC 06 00 7A */	fmadds f0, f6, f1, f0
/* 802F2874 002EF7B4  EC 02 00 2A */	fadds f0, f2, f0
/* 802F2878 002EF7B8  D0 07 00 08 */	stfs f0, 8(r7)
/* 802F287C 002EF7BC  C0 E7 00 00 */	lfs f7, 0(r7)
/* 802F2880 002EF7C0  C0 C6 00 00 */	lfs f6, 0(r6)
/* 802F2884 002EF7C4  C1 27 00 04 */	lfs f9, 4(r7)
/* 802F2888 002EF7C8  EC 07 30 28 */	fsubs f0, f7, f6
/* 802F288C 002EF7CC  C1 06 00 04 */	lfs f8, 4(r6)
/* 802F2890 002EF7D0  C1 67 00 08 */	lfs f11, 8(r7)
/* 802F2894 002EF7D4  C1 46 00 08 */	lfs f10, 8(r6)
/* 802F2898 002EF7D8  EC 29 40 28 */	fsubs f1, f9, f8
/* 802F289C 002EF7DC  EC 04 00 32 */	fmuls f0, f4, f0
/* 802F28A0 002EF7E0  EC 4B 50 28 */	fsubs f2, f11, f10
/* 802F28A4 002EF7E4  C3 C4 00 14 */	lfs f30, 0x14(r4)
/* 802F28A8 002EF7E8  EC 24 00 72 */	fmuls f1, f4, f1
/* 802F28AC 002EF7EC  C1 A4 00 0C */	lfs f13, 0xc(r4)
/* 802F28B0 002EF7F0  EC 60 07 B2 */	fmuls f3, f0, f30
/* 802F28B4 002EF7F4  EC 44 00 B2 */	fmuls f2, f4, f2
/* 802F28B8 002EF7F8  C3 E4 00 10 */	lfs f31, 0x10(r4)
/* 802F28BC 002EF7FC  EC A1 03 72 */	fmuls f5, f1, f13
/* 802F28C0 002EF800  EC 82 1B 78 */	fmsubs f4, f2, f13, f3
/* 802F28C4 002EF804  EC 62 07 F2 */	fmuls f3, f2, f31
/* 802F28C8 002EF808  EC A0 2F F8 */	fmsubs f5, f0, f31, f5
/* 802F28CC 002EF80C  ED A4 01 32 */	fmuls f13, f4, f4
/* 802F28D0 002EF810  EC 61 1F B8 */	fmsubs f3, f1, f30, f3
/* 802F28D4 002EF814  EF E5 01 72 */	fmuls f31, f5, f5
/* 802F28D8 002EF818  ED A3 68 FA */	fmadds f13, f3, f3, f13
/* 802F28DC 002EF81C  ED BF 68 2A */	fadds f13, f31, f13
/* 802F28E0 002EF820  FC 0D 60 40 */	fcmpo cr0, f13, f12
/* 802F28E4 002EF824  40 81 00 14 */	ble lbl_802F28F8
/* 802F28E8 002EF828  40 81 00 14 */	ble lbl_802F28FC
/* 802F28EC 002EF82C  FD 80 68 34 */	frsqrte f12, f13
/* 802F28F0 002EF830  ED AC 03 72 */	fmuls f13, f12, f13
/* 802F28F4 002EF834  48 00 00 08 */	b lbl_802F28FC
lbl_802F28F8:
/* 802F28F8 002EF838  FD A0 60 90 */	fmr f13, f12
lbl_802F28FC:
/* 802F28FC 002EF83C  C1 82 EE 24 */	lfs f12, lbl_8051D184@sda21(r2)
/* 802F2900 002EF840  FC 0D 60 40 */	fcmpo cr0, f13, f12
/* 802F2904 002EF844  40 81 00 18 */	ble lbl_802F291C
/* 802F2908 002EF848  C1 82 EE 28 */	lfs f12, lbl_8051D188@sda21(r2)
/* 802F290C 002EF84C  ED 8C 68 24 */	fdivs f12, f12, f13
/* 802F2910 002EF850  EC 63 03 32 */	fmuls f3, f3, f12
/* 802F2914 002EF854  EC 84 03 32 */	fmuls f4, f4, f12
/* 802F2918 002EF858  EC A5 03 32 */	fmuls f5, f5, f12
lbl_802F291C:
/* 802F291C 002EF85C  C3 C4 00 20 */	lfs f30, 0x20(r4)
/* 802F2920 002EF860  ED 89 40 2A */	fadds f12, f9, f8
/* 802F2924 002EF864  C1 24 00 24 */	lfs f9, 0x24(r4)
/* 802F2928 002EF868  EC E7 30 2A */	fadds f7, f7, f6
/* 802F292C 002EF86C  C1 A2 EE 20 */	lfs f13, lbl_8051D180@sda21(r2)
/* 802F2930 002EF870  EC CB 50 2A */	fadds f6, f11, f10
/* 802F2934 002EF874  C1 04 00 04 */	lfs f8, 4(r4)
/* 802F2938 002EF878  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 802F293C 002EF87C  ED 4D 4B 3A */	fmadds f10, f13, f12, f9
/* 802F2940 002EF880  C1 22 EE 2C */	lfs f9, lbl_8051D18C@sda21(r2)
/* 802F2944 002EF884  EC 63 07 B2 */	fmuls f3, f3, f30
/* 802F2948 002EF888  D0 04 00 00 */	stfs f0, 0(r4)
/* 802F294C 002EF88C  EC 84 07 B2 */	fmuls f4, f4, f30
/* 802F2950 002EF890  EC 0A 40 28 */	fsubs f0, f10, f8
/* 802F2954 002EF894  D0 24 00 10 */	stfs f1, 0x10(r4)
/* 802F2958 002EF898  EC A5 07 B2 */	fmuls f5, f5, f30
/* 802F295C 002EF89C  C1 02 EE 24 */	lfs f8, lbl_8051D184@sda21(r2)
/* 802F2960 002EF8A0  EC 2D 01 F2 */	fmuls f1, f13, f7
/* 802F2964 002EF8A4  D0 44 00 20 */	stfs f2, 0x20(r4)
/* 802F2968 002EF8A8  EC 49 00 2A */	fadds f2, f9, f0
/* 802F296C 002EF8AC  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 802F2970 002EF8B0  EC 0D 01 B2 */	fmuls f0, f13, f6
/* 802F2974 002EF8B4  D1 04 00 04 */	stfs f8, 4(r4)
/* 802F2978 002EF8B8  D0 44 00 14 */	stfs f2, 0x14(r4)
/* 802F297C 002EF8BC  D1 04 00 24 */	stfs f8, 0x24(r4)
/* 802F2980 002EF8C0  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 802F2984 002EF8C4  D0 64 00 08 */	stfs f3, 8(r4)
/* 802F2988 002EF8C8  D0 84 00 18 */	stfs f4, 0x18(r4)
/* 802F298C 002EF8CC  D0 A4 00 28 */	stfs f5, 0x28(r4)
/* 802F2990 002EF8D0  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 802F2994 002EF8D4  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 802F2998 002EF8D8  D1 43 00 1C */	stfs f10, 0x1c(r3)
/* 802F299C 002EF8DC  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802F29A0 002EF8E0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 802F29A4 002EF8E4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 802F29A8 002EF8E8  E3 C1 00 18 */	psq_l f30, 24(r1), 0, qr0
/* 802F29AC 002EF8EC  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 802F29B0 002EF8F0  38 21 00 30 */	addi r1, r1, 0x30
/* 802F29B4 002EF8F4  4E 80 00 20 */	blr 

.global "makeShadowSRT__Q24Game24UmimushiSphereShadowNodeFRQ24Game15JointShadowParmP7MatrixfR10Vector3<f>b"
"makeShadowSRT__Q24Game24UmimushiSphereShadowNodeFRQ24Game15JointShadowParmP7MatrixfR10Vector3<f>b":
/* 802F29B8 002EF8F8  54 E0 06 3F */	clrlwi. r0, r7, 0x18
/* 802F29BC 002EF8FC  41 82 00 44 */	beq lbl_802F2A00
/* 802F29C0 002EF900  C0 02 EE 30 */	lfs f0, lbl_8051D190@sda21(r2)
/* 802F29C4 002EF904  C0 24 00 20 */	lfs f1, 0x20(r4)
/* 802F29C8 002EF908  C0 A5 00 08 */	lfs f5, 8(r5)
/* 802F29CC 002EF90C  C0 C5 00 18 */	lfs f6, 0x18(r5)
/* 802F29D0 002EF910  EC 00 08 2A */	fadds f0, f0, f1
/* 802F29D4 002EF914  C1 65 00 00 */	lfs f11, 0(r5)
/* 802F29D8 002EF918  EC A5 00 72 */	fmuls f5, f5, f1
/* 802F29DC 002EF91C  C0 65 00 10 */	lfs f3, 0x10(r5)
/* 802F29E0 002EF920  EC C6 00 72 */	fmuls f6, f6, f1
/* 802F29E4 002EF924  C0 85 00 20 */	lfs f4, 0x20(r5)
/* 802F29E8 002EF928  C0 E5 00 28 */	lfs f7, 0x28(r5)
/* 802F29EC 002EF92C  ED 6B 00 32 */	fmuls f11, f11, f0
/* 802F29F0 002EF930  EC 63 00 32 */	fmuls f3, f3, f0
/* 802F29F4 002EF934  EC 84 00 32 */	fmuls f4, f4, f0
/* 802F29F8 002EF938  EC E7 00 72 */	fmuls f7, f7, f1
/* 802F29FC 002EF93C  48 00 00 1C */	b lbl_802F2A18
lbl_802F2A00:
/* 802F2A00 002EF940  C0 62 EE 24 */	lfs f3, lbl_8051D184@sda21(r2)
/* 802F2A04 002EF944  C1 64 00 20 */	lfs f11, 0x20(r4)
/* 802F2A08 002EF948  FC 80 18 90 */	fmr f4, f3
/* 802F2A0C 002EF94C  FC A0 18 90 */	fmr f5, f3
/* 802F2A10 002EF950  FC C0 18 90 */	fmr f6, f3
/* 802F2A14 002EF954  FC E0 58 90 */	fmr f7, f11
lbl_802F2A18:
/* 802F2A18 002EF958  C1 06 00 00 */	lfs f8, 0(r6)
/* 802F2A1C 002EF95C  C0 46 00 04 */	lfs f2, 4(r6)
/* 802F2A20 002EF960  C0 24 00 24 */	lfs f1, 0x24(r4)
/* 802F2A24 002EF964  C0 04 00 04 */	lfs f0, 4(r4)
/* 802F2A28 002EF968  C1 46 00 08 */	lfs f10, 8(r6)
/* 802F2A2C 002EF96C  ED 22 08 2A */	fadds f9, f2, f1
/* 802F2A30 002EF970  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 802F2A34 002EF974  EC 22 00 28 */	fsubs f1, f2, f0
/* 802F2A38 002EF978  C0 42 EE 2C */	lfs f2, lbl_8051D18C@sda21(r2)
/* 802F2A3C 002EF97C  D1 64 00 00 */	stfs f11, 0(r4)
/* 802F2A40 002EF980  C0 02 EE 24 */	lfs f0, lbl_8051D184@sda21(r2)
/* 802F2A44 002EF984  EC 22 08 2A */	fadds f1, f2, f1
/* 802F2A48 002EF988  D0 64 00 10 */	stfs f3, 0x10(r4)
/* 802F2A4C 002EF98C  D0 84 00 20 */	stfs f4, 0x20(r4)
/* 802F2A50 002EF990  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 802F2A54 002EF994  D0 04 00 04 */	stfs f0, 4(r4)
/* 802F2A58 002EF998  D0 24 00 14 */	stfs f1, 0x14(r4)
/* 802F2A5C 002EF99C  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 802F2A60 002EF9A0  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 802F2A64 002EF9A4  D0 A4 00 08 */	stfs f5, 8(r4)
/* 802F2A68 002EF9A8  D0 C4 00 18 */	stfs f6, 0x18(r4)
/* 802F2A6C 002EF9AC  D0 E4 00 28 */	stfs f7, 0x28(r4)
/* 802F2A70 002EF9B0  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 802F2A74 002EF9B4  D1 03 00 0C */	stfs f8, 0xc(r3)
/* 802F2A78 002EF9B8  D1 23 00 1C */	stfs f9, 0x1c(r3)
/* 802F2A7C 002EF9BC  D1 43 00 2C */	stfs f10, 0x2c(r3)
/* 802F2A80 002EF9C0  4E 80 00 20 */	blr 

.global __ct__Q34Game8UmiMushi17UmimushiShadowMgrFPQ34Game8UmiMushi3Obj
__ct__Q34Game8UmiMushi17UmimushiShadowMgrFPQ34Game8UmiMushi3Obj:
/* 802F2A84 002EF9C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F2A88 002EF9C8  7C 08 02 A6 */	mflr r0
/* 802F2A8C 002EF9CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F2A90 002EF9D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F2A94 002EF9D4  7C 9F 23 78 */	mr r31, r4
/* 802F2A98 002EF9D8  93 C1 00 08 */	stw r30, 8(r1)
/* 802F2A9C 002EF9DC  7C 7E 1B 78 */	mr r30, r3
/* 802F2AA0 002EF9E0  93 E3 00 08 */	stw r31, 8(r3)
/* 802F2AA4 002EF9E4  38 60 00 20 */	li r3, 0x20
/* 802F2AA8 002EF9E8  4B D3 13 FD */	bl __nw__FUl
/* 802F2AAC 002EF9EC  7C 60 1B 79 */	or. r0, r3, r3
/* 802F2AB0 002EF9F0  41 82 00 10 */	beq lbl_802F2AC0
/* 802F2AB4 002EF9F4  7F E4 FB 78 */	mr r4, r31
/* 802F2AB8 002EF9F8  4B F4 E7 C5 */	bl __ct__Q24Game19JointShadowRootNodeFPQ24Game8Creature
/* 802F2ABC 002EF9FC  7C 60 1B 78 */	mr r0, r3
lbl_802F2AC0:
/* 802F2AC0 002EFA00  90 1E 00 0C */	stw r0, 0xc(r30)
/* 802F2AC4 002EFA04  38 60 00 24 */	li r3, 0x24
/* 802F2AC8 002EFA08  4B D3 13 DD */	bl __nw__FUl
/* 802F2ACC 002EFA0C  7C 7F 1B 79 */	or. r31, r3, r3
/* 802F2AD0 002EFA10  41 82 00 18 */	beq lbl_802F2AE8
/* 802F2AD4 002EFA14  38 80 00 02 */	li r4, 2
/* 802F2AD8 002EFA18  4B F4 E8 05 */	bl __ct__Q24Game15JointShadowNodeFi
/* 802F2ADC 002EFA1C  3C 60 80 4D */	lis r3, __vt__Q24Game22UmimushiTubeShadowNode@ha
/* 802F2AE0 002EFA20  38 03 52 B8 */	addi r0, r3, __vt__Q24Game22UmimushiTubeShadowNode@l
/* 802F2AE4 002EFA24  90 1F 00 00 */	stw r0, 0(r31)
lbl_802F2AE8:
/* 802F2AE8 002EFA28  93 FE 00 10 */	stw r31, 0x10(r30)
/* 802F2AEC 002EFA2C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802F2AF0 002EFA30  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 802F2AF4 002EFA34  48 11 E9 15 */	bl add__5CNodeFP5CNode
/* 802F2AF8 002EFA38  38 60 00 24 */	li r3, 0x24
/* 802F2AFC 002EFA3C  4B D3 13 A9 */	bl __nw__FUl
/* 802F2B00 002EFA40  7C 7F 1B 79 */	or. r31, r3, r3
/* 802F2B04 002EFA44  41 82 00 18 */	beq lbl_802F2B1C
/* 802F2B08 002EFA48  38 80 00 02 */	li r4, 2
/* 802F2B0C 002EFA4C  4B F4 E7 D1 */	bl __ct__Q24Game15JointShadowNodeFi
/* 802F2B10 002EFA50  3C 60 80 4D */	lis r3, __vt__Q24Game24UmimushiSphereShadowNode@ha
/* 802F2B14 002EFA54  38 03 52 A8 */	addi r0, r3, __vt__Q24Game24UmimushiSphereShadowNode@l
/* 802F2B18 002EFA58  90 1F 00 00 */	stw r0, 0(r31)
lbl_802F2B1C:
/* 802F2B1C 002EFA5C  93 FE 00 14 */	stw r31, 0x14(r30)
/* 802F2B20 002EFA60  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802F2B24 002EFA64  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 802F2B28 002EFA68  48 11 E8 E1 */	bl add__5CNodeFP5CNode
/* 802F2B2C 002EFA6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F2B30 002EFA70  7F C3 F3 78 */	mr r3, r30
/* 802F2B34 002EFA74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F2B38 002EFA78  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F2B3C 002EFA7C  7C 08 03 A6 */	mtlr r0
/* 802F2B40 002EFA80  38 21 00 10 */	addi r1, r1, 0x10
/* 802F2B44 002EFA84  4E 80 00 20 */	blr 

.global init__Q34Game8UmiMushi17UmimushiShadowMgrFv
init__Q34Game8UmiMushi17UmimushiShadowMgrFv:
/* 802F2B48 002EFA88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F2B4C 002EFA8C  7C 08 02 A6 */	mflr r0
/* 802F2B50 002EFA90  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F2B54 002EFA94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F2B58 002EFA98  93 C1 00 08 */	stw r30, 8(r1)
/* 802F2B5C 002EFA9C  7C 7E 1B 78 */	mr r30, r3
/* 802F2B60 002EFAA0  3C 60 80 49 */	lis r3, lbl_8048D1C0@ha
/* 802F2B64 002EFAA4  80 BE 00 08 */	lwz r5, 8(r30)
/* 802F2B68 002EFAA8  38 83 D1 C0 */	addi r4, r3, lbl_8048D1C0@l
/* 802F2B6C 002EFAAC  83 E5 01 74 */	lwz r31, 0x174(r5)
/* 802F2B70 002EFAB0  7F E3 FB 78 */	mr r3, r31
/* 802F2B74 002EFAB4  48 14 C4 71 */	bl getJoint__Q28SysShape5ModelFPc
/* 802F2B78 002EFAB8  48 13 6D 29 */	bl getWorldMatrix__Q28SysShape5JointFv
/* 802F2B7C 002EFABC  3C 80 80 49 */	lis r4, lbl_8048D1CC@ha
/* 802F2B80 002EFAC0  90 7E 00 00 */	stw r3, 0(r30)
/* 802F2B84 002EFAC4  38 84 D1 CC */	addi r4, r4, lbl_8048D1CC@l
/* 802F2B88 002EFAC8  7F E3 FB 78 */	mr r3, r31
/* 802F2B8C 002EFACC  48 14 C4 59 */	bl getJoint__Q28SysShape5ModelFPc
/* 802F2B90 002EFAD0  48 13 6D 11 */	bl getWorldMatrix__Q28SysShape5JointFv
/* 802F2B94 002EFAD4  90 7E 00 04 */	stw r3, 4(r30)
/* 802F2B98 002EFAD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F2B9C 002EFADC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F2BA0 002EFAE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F2BA4 002EFAE4  7C 08 03 A6 */	mtlr r0
/* 802F2BA8 002EFAE8  38 21 00 10 */	addi r1, r1, 0x10
/* 802F2BAC 002EFAEC  4E 80 00 20 */	blr 

.global update__Q34Game8UmiMushi17UmimushiShadowMgrFv
update__Q34Game8UmiMushi17UmimushiShadowMgrFv:
/* 802F2BB0 002EFAF0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802F2BB4 002EFAF4  7C 08 02 A6 */	mflr r0
/* 802F2BB8 002EFAF8  90 01 00 64 */	stw r0, 0x64(r1)
/* 802F2BBC 002EFAFC  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 802F2BC0 002EFB00  7C 7F 1B 78 */	mr r31, r3
/* 802F2BC4 002EFB04  38 61 00 08 */	addi r3, r1, 8
/* 802F2BC8 002EFB08  80 9F 00 08 */	lwz r4, 8(r31)
/* 802F2BCC 002EFB0C  81 84 00 00 */	lwz r12, 0(r4)
/* 802F2BD0 002EFB10  81 8C 00 08 */	lwz r12, 8(r12)
/* 802F2BD4 002EFB14  7D 89 03 A6 */	mtctr r12
/* 802F2BD8 002EFB18  4E 80 04 21 */	bctrl 
/* 802F2BDC 002EFB1C  C0 62 EE 24 */	lfs f3, lbl_8051D184@sda21(r2)
/* 802F2BE0 002EFB20  38 81 00 2C */	addi r4, r1, 0x2c
/* 802F2BE4 002EFB24  C0 21 00 08 */	lfs f1, 8(r1)
/* 802F2BE8 002EFB28  38 C1 00 20 */	addi r6, r1, 0x20
/* 802F2BEC 002EFB2C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 802F2BF0 002EFB30  38 E1 00 14 */	addi r7, r1, 0x14
/* 802F2BF4 002EFB34  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 802F2BF8 002EFB38  C0 42 EE 28 */	lfs f2, lbl_8051D188@sda21(r2)
/* 802F2BFC 002EFB3C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 802F2C00 002EFB40  C0 22 EE 34 */	lfs f1, lbl_8051D194@sda21(r2)
/* 802F2C04 002EFB44  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 802F2C08 002EFB48  C0 02 EE 38 */	lfs f0, lbl_8051D198@sda21(r2)
/* 802F2C0C 002EFB4C  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 802F2C10 002EFB50  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 802F2C14 002EFB54  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 802F2C18 002EFB58  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 802F2C1C 002EFB5C  80 7F 00 00 */	lwz r3, 0(r31)
/* 802F2C20 002EFB60  C0 A3 00 2C */	lfs f5, 0x2c(r3)
/* 802F2C24 002EFB64  C0 83 00 1C */	lfs f4, 0x1c(r3)
/* 802F2C28 002EFB68  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 802F2C2C 002EFB6C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 802F2C30 002EFB70  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 802F2C34 002EFB74  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 802F2C38 002EFB78  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 802F2C3C 002EFB7C  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 802F2C40 002EFB80  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 802F2C44 002EFB84  D0 61 00 50 */	stfs f3, 0x50(r1)
/* 802F2C48 002EFB88  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 802F2C4C 002EFB8C  80 BF 00 04 */	lwz r5, 4(r31)
/* 802F2C50 002EFB90  4B FF FB 8D */	bl "makeShadowSRT__Q24Game22UmimushiTubeShadowNodeFRQ24Game15JointShadowParmP7MatrixfR10Vector3<f>R10Vector3<f>"
/* 802F2C54 002EFB94  C0 42 EE 24 */	lfs f2, lbl_8051D184@sda21(r2)
/* 802F2C58 002EFB98  C0 22 EE 3C */	lfs f1, lbl_8051D19C@sda21(r2)
/* 802F2C5C 002EFB9C  C0 02 EE 34 */	lfs f0, lbl_8051D194@sda21(r2)
/* 802F2C60 002EFBA0  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 802F2C64 002EFBA4  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 802F2C68 002EFBA8  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 802F2C6C 002EFBAC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 802F2C70 002EFBB0  80 7F 00 08 */	lwz r3, 8(r31)
/* 802F2C74 002EFBB4  81 83 00 00 */	lwz r12, 0(r3)
/* 802F2C78 002EFBB8  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 802F2C7C 002EFBBC  7D 89 03 A6 */	mtctr r12
/* 802F2C80 002EFBC0  4E 80 04 21 */	bctrl 
/* 802F2C84 002EFBC4  7C 67 1B 78 */	mr r7, r3
/* 802F2C88 002EFBC8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 802F2C8C 002EFBCC  80 BF 00 04 */	lwz r5, 4(r31)
/* 802F2C90 002EFBD0  38 81 00 2C */	addi r4, r1, 0x2c
/* 802F2C94 002EFBD4  38 C1 00 14 */	addi r6, r1, 0x14
/* 802F2C98 002EFBD8  4B FF FD 21 */	bl "makeShadowSRT__Q24Game24UmimushiSphereShadowNodeFRQ24Game15JointShadowParmP7MatrixfR10Vector3<f>b"
/* 802F2C9C 002EFBDC  80 7F 00 08 */	lwz r3, 8(r31)
/* 802F2CA0 002EFBE0  80 63 01 7C */	lwz r3, 0x17c(r3)
/* 802F2CA4 002EFBE4  80 63 00 04 */	lwz r3, 4(r3)
/* 802F2CA8 002EFBE8  28 03 00 00 */	cmplwi r3, 0
/* 802F2CAC 002EFBEC  41 82 00 34 */	beq lbl_802F2CE0
/* 802F2CB0 002EFBF0  81 83 00 00 */	lwz r12, 0(r3)
/* 802F2CB4 002EFBF4  81 8C 02 04 */	lwz r12, 0x204(r12)
/* 802F2CB8 002EFBF8  7D 89 03 A6 */	mtctr r12
/* 802F2CBC 002EFBFC  4E 80 04 21 */	bctrl 
/* 802F2CC0 002EFC00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F2CC4 002EFC04  41 82 00 1C */	beq lbl_802F2CE0
/* 802F2CC8 002EFC08  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 802F2CCC 002EFC0C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802F2CD0 002EFC10  28 00 00 00 */	cmplwi r0, 0
/* 802F2CD4 002EFC14  41 82 00 24 */	beq lbl_802F2CF8
/* 802F2CD8 002EFC18  48 11 E8 F9 */	bl del__5CNodeFv
/* 802F2CDC 002EFC1C  48 00 00 1C */	b lbl_802F2CF8
lbl_802F2CE0:
/* 802F2CE0 002EFC20  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 802F2CE4 002EFC24  80 04 00 0C */	lwz r0, 0xc(r4)
/* 802F2CE8 002EFC28  28 00 00 00 */	cmplwi r0, 0
/* 802F2CEC 002EFC2C  40 82 00 0C */	bne lbl_802F2CF8
/* 802F2CF0 002EFC30  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802F2CF4 002EFC34  48 11 E6 CD */	bl addHead__5CNodeFP5CNode
lbl_802F2CF8:
/* 802F2CF8 002EFC38  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802F2CFC 002EFC3C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 802F2D00 002EFC40  7C 08 03 A6 */	mtlr r0
/* 802F2D04 002EFC44  38 21 00 60 */	addi r1, r1, 0x60
/* 802F2D08 002EFC48  4E 80 00 20 */	blr 

.global __dt__Q24Game24UmimushiSphereShadowNodeFv
__dt__Q24Game24UmimushiSphereShadowNodeFv:
/* 802F2D0C 002EFC4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F2D10 002EFC50  7C 08 02 A6 */	mflr r0
/* 802F2D14 002EFC54  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F2D18 002EFC58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F2D1C 002EFC5C  7C 9F 23 78 */	mr r31, r4
/* 802F2D20 002EFC60  93 C1 00 08 */	stw r30, 8(r1)
/* 802F2D24 002EFC64  7C 7E 1B 79 */	or. r30, r3, r3
/* 802F2D28 002EFC68  41 82 00 38 */	beq lbl_802F2D60
/* 802F2D2C 002EFC6C  3C 80 80 4D */	lis r4, __vt__Q24Game24UmimushiSphereShadowNode@ha
/* 802F2D30 002EFC70  38 04 52 A8 */	addi r0, r4, __vt__Q24Game24UmimushiSphereShadowNode@l
/* 802F2D34 002EFC74  90 1E 00 00 */	stw r0, 0(r30)
/* 802F2D38 002EFC78  41 82 00 18 */	beq lbl_802F2D50
/* 802F2D3C 002EFC7C  3C A0 80 4C */	lis r5, __vt__Q24Game15JointShadowNode@ha
/* 802F2D40 002EFC80  38 80 00 00 */	li r4, 0
/* 802F2D44 002EFC84  38 05 1A 34 */	addi r0, r5, __vt__Q24Game15JointShadowNode@l
/* 802F2D48 002EFC88  90 1E 00 00 */	stw r0, 0(r30)
/* 802F2D4C 002EFC8C  48 11 E8 3D */	bl __dt__5CNodeFv
lbl_802F2D50:
/* 802F2D50 002EFC90  7F E0 07 35 */	extsh. r0, r31
/* 802F2D54 002EFC94  40 81 00 0C */	ble lbl_802F2D60
/* 802F2D58 002EFC98  7F C3 F3 78 */	mr r3, r30
/* 802F2D5C 002EFC9C  4B D3 13 59 */	bl __dl__FPv
lbl_802F2D60:
/* 802F2D60 002EFCA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F2D64 002EFCA4  7F C3 F3 78 */	mr r3, r30
/* 802F2D68 002EFCA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F2D6C 002EFCAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F2D70 002EFCB0  7C 08 03 A6 */	mtlr r0
/* 802F2D74 002EFCB4  38 21 00 10 */	addi r1, r1, 0x10
/* 802F2D78 002EFCB8  4E 80 00 20 */	blr 

.global __dt__Q24Game22UmimushiTubeShadowNodeFv
__dt__Q24Game22UmimushiTubeShadowNodeFv:
/* 802F2D7C 002EFCBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F2D80 002EFCC0  7C 08 02 A6 */	mflr r0
/* 802F2D84 002EFCC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F2D88 002EFCC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F2D8C 002EFCCC  7C 9F 23 78 */	mr r31, r4
/* 802F2D90 002EFCD0  93 C1 00 08 */	stw r30, 8(r1)
/* 802F2D94 002EFCD4  7C 7E 1B 79 */	or. r30, r3, r3
/* 802F2D98 002EFCD8  41 82 00 38 */	beq lbl_802F2DD0
/* 802F2D9C 002EFCDC  3C 80 80 4D */	lis r4, __vt__Q24Game22UmimushiTubeShadowNode@ha
/* 802F2DA0 002EFCE0  38 04 52 B8 */	addi r0, r4, __vt__Q24Game22UmimushiTubeShadowNode@l
/* 802F2DA4 002EFCE4  90 1E 00 00 */	stw r0, 0(r30)
/* 802F2DA8 002EFCE8  41 82 00 18 */	beq lbl_802F2DC0
/* 802F2DAC 002EFCEC  3C A0 80 4C */	lis r5, __vt__Q24Game15JointShadowNode@ha
/* 802F2DB0 002EFCF0  38 80 00 00 */	li r4, 0
/* 802F2DB4 002EFCF4  38 05 1A 34 */	addi r0, r5, __vt__Q24Game15JointShadowNode@l
/* 802F2DB8 002EFCF8  90 1E 00 00 */	stw r0, 0(r30)
/* 802F2DBC 002EFCFC  48 11 E7 CD */	bl __dt__5CNodeFv
lbl_802F2DC0:
/* 802F2DC0 002EFD00  7F E0 07 35 */	extsh. r0, r31
/* 802F2DC4 002EFD04  40 81 00 0C */	ble lbl_802F2DD0
/* 802F2DC8 002EFD08  7F C3 F3 78 */	mr r3, r30
/* 802F2DCC 002EFD0C  4B D3 12 E9 */	bl __dl__FPv
lbl_802F2DD0:
/* 802F2DD0 002EFD10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F2DD4 002EFD14  7F C3 F3 78 */	mr r3, r30
/* 802F2DD8 002EFD18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F2DDC 002EFD1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F2DE0 002EFD20  7C 08 03 A6 */	mtlr r0
/* 802F2DE4 002EFD24  38 21 00 10 */	addi r1, r1, 0x10
/* 802F2DE8 002EFD28  4E 80 00 20 */	blr 
