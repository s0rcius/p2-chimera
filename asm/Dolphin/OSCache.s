.include "macros.inc"
.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global lbl_804A8B88
lbl_804A8B88:
	.asciz ">>> L2 INVALIDATE : SHOULD NEVER HAPPEN\n"
	.skip 3
	.asciz "Machine check received\n"
	.asciz "HID2 = 0x%x   SRR1 = 0x%x\n"
	.skip 1
	.asciz "Machine check was not DMA/locked cache related\n"
	.asciz "DMAErrorHandler(): An error occurred while processing DMA.\n"
	.asciz "The following errors have been detected and cleared :\n"
	.skip 1
	.asciz "\t- Requested a locked cache tag that was already in the cache\n"
	.skip 1
	.asciz "\t- DMA attempted to access normal cache\n"
	.skip 3
	.asciz "\t- DMA missed in data cache\n"
	.skip 3
	.asciz "\t- DMA queue overflowed\n"
	.skip 3
	.asciz "L1 i-caches initialized\n"
	.skip 3
	.asciz "L1 d-caches initialized\n"
	.skip 3
	.asciz "L2 cache initialized\n"
	.skip 2
	.asciz "Locked cache machine check handler installed\n"
	.skip 2

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global DCEnable
DCEnable:
/* 800EC6D8 000E9618  7C 00 04 AC */	sync 0
/* 800EC6DC 000E961C  7C 70 FA A6 */	mfspr r3, 0x3f0
/* 800EC6E0 000E9620  60 63 40 00 */	ori r3, r3, 0x4000
/* 800EC6E4 000E9624  7C 70 FB A6 */	mtspr 0x3f0, r3
/* 800EC6E8 000E9628  4E 80 00 20 */	blr 

.global DCInvalidateRange
DCInvalidateRange:
/* 800EC6EC 000E962C  28 04 00 00 */	cmplwi r4, 0
/* 800EC6F0 000E9630  4C 81 00 20 */	blelr 
/* 800EC6F4 000E9634  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 800EC6F8 000E9638  7C 84 2A 14 */	add r4, r4, r5
/* 800EC6FC 000E963C  38 84 00 1F */	addi r4, r4, 0x1f
/* 800EC700 000E9640  54 84 D9 7E */	srwi r4, r4, 5
/* 800EC704 000E9644  7C 89 03 A6 */	mtctr r4
lbl_800EC708:
/* 800EC708 000E9648  7C 00 1B AC */	dcbi 0, r3
/* 800EC70C 000E964C  38 63 00 20 */	addi r3, r3, 0x20
/* 800EC710 000E9650  42 00 FF F8 */	bdnz lbl_800EC708
/* 800EC714 000E9654  4E 80 00 20 */	blr 

.global DCFlushRange
DCFlushRange:
/* 800EC718 000E9658  28 04 00 00 */	cmplwi r4, 0
/* 800EC71C 000E965C  4C 81 00 20 */	blelr 
/* 800EC720 000E9660  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 800EC724 000E9664  7C 84 2A 14 */	add r4, r4, r5
/* 800EC728 000E9668  38 84 00 1F */	addi r4, r4, 0x1f
/* 800EC72C 000E966C  54 84 D9 7E */	srwi r4, r4, 5
/* 800EC730 000E9670  7C 89 03 A6 */	mtctr r4
lbl_800EC734:
/* 800EC734 000E9674  7C 00 18 AC */	dcbf 0, r3
/* 800EC738 000E9678  38 63 00 20 */	addi r3, r3, 0x20
/* 800EC73C 000E967C  42 00 FF F8 */	bdnz lbl_800EC734
/* 800EC740 000E9680  44 00 00 02 */	sc 
/* 800EC744 000E9684  4E 80 00 20 */	blr 

.global DCStoreRange
DCStoreRange:
/* 800EC748 000E9688  28 04 00 00 */	cmplwi r4, 0
/* 800EC74C 000E968C  4C 81 00 20 */	blelr 
/* 800EC750 000E9690  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 800EC754 000E9694  7C 84 2A 14 */	add r4, r4, r5
/* 800EC758 000E9698  38 84 00 1F */	addi r4, r4, 0x1f
/* 800EC75C 000E969C  54 84 D9 7E */	srwi r4, r4, 5
/* 800EC760 000E96A0  7C 89 03 A6 */	mtctr r4
lbl_800EC764:
/* 800EC764 000E96A4  7C 00 18 6C */	dcbst 0, r3
/* 800EC768 000E96A8  38 63 00 20 */	addi r3, r3, 0x20
/* 800EC76C 000E96AC  42 00 FF F8 */	bdnz lbl_800EC764
/* 800EC770 000E96B0  44 00 00 02 */	sc 
/* 800EC774 000E96B4  4E 80 00 20 */	blr 

.global DCFlushRangeNoSync
DCFlushRangeNoSync:
/* 800EC778 000E96B8  28 04 00 00 */	cmplwi r4, 0
/* 800EC77C 000E96BC  4C 81 00 20 */	blelr 
/* 800EC780 000E96C0  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 800EC784 000E96C4  7C 84 2A 14 */	add r4, r4, r5
/* 800EC788 000E96C8  38 84 00 1F */	addi r4, r4, 0x1f
/* 800EC78C 000E96CC  54 84 D9 7E */	srwi r4, r4, 5
/* 800EC790 000E96D0  7C 89 03 A6 */	mtctr r4
lbl_800EC794:
/* 800EC794 000E96D4  7C 00 18 AC */	dcbf 0, r3
/* 800EC798 000E96D8  38 63 00 20 */	addi r3, r3, 0x20
/* 800EC79C 000E96DC  42 00 FF F8 */	bdnz lbl_800EC794
/* 800EC7A0 000E96E0  4E 80 00 20 */	blr 

.global DCStoreRangeNoSync
DCStoreRangeNoSync:
/* 800EC7A4 000E96E4  28 04 00 00 */	cmplwi r4, 0
/* 800EC7A8 000E96E8  4C 81 00 20 */	blelr 
/* 800EC7AC 000E96EC  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 800EC7B0 000E96F0  7C 84 2A 14 */	add r4, r4, r5
/* 800EC7B4 000E96F4  38 84 00 1F */	addi r4, r4, 0x1f
/* 800EC7B8 000E96F8  54 84 D9 7E */	srwi r4, r4, 5
/* 800EC7BC 000E96FC  7C 89 03 A6 */	mtctr r4
lbl_800EC7C0:
/* 800EC7C0 000E9700  7C 00 18 6C */	dcbst 0, r3
/* 800EC7C4 000E9704  38 63 00 20 */	addi r3, r3, 0x20
/* 800EC7C8 000E9708  42 00 FF F8 */	bdnz lbl_800EC7C0
/* 800EC7CC 000E970C  4E 80 00 20 */	blr 

.global DCZeroRange
DCZeroRange:
/* 800EC7D0 000E9710  28 04 00 00 */	cmplwi r4, 0
/* 800EC7D4 000E9714  4C 81 00 20 */	blelr 
/* 800EC7D8 000E9718  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 800EC7DC 000E971C  7C 84 2A 14 */	add r4, r4, r5
/* 800EC7E0 000E9720  38 84 00 1F */	addi r4, r4, 0x1f
/* 800EC7E4 000E9724  54 84 D9 7E */	srwi r4, r4, 5
/* 800EC7E8 000E9728  7C 89 03 A6 */	mtctr r4
lbl_800EC7EC:
/* 800EC7EC 000E972C  7C 00 1F EC */	dcbz 0, r3
/* 800EC7F0 000E9730  38 63 00 20 */	addi r3, r3, 0x20
/* 800EC7F4 000E9734  42 00 FF F8 */	bdnz lbl_800EC7EC
/* 800EC7F8 000E9738  4E 80 00 20 */	blr 

.global ICInvalidateRange
ICInvalidateRange:
/* 800EC7FC 000E973C  28 04 00 00 */	cmplwi r4, 0
/* 800EC800 000E9740  4C 81 00 20 */	blelr 
/* 800EC804 000E9744  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 800EC808 000E9748  7C 84 2A 14 */	add r4, r4, r5
/* 800EC80C 000E974C  38 84 00 1F */	addi r4, r4, 0x1f
/* 800EC810 000E9750  54 84 D9 7E */	srwi r4, r4, 5
/* 800EC814 000E9754  7C 89 03 A6 */	mtctr r4
lbl_800EC818:
/* 800EC818 000E9758  7C 00 1F AC */	icbi 0, r3
/* 800EC81C 000E975C  38 63 00 20 */	addi r3, r3, 0x20
/* 800EC820 000E9760  42 00 FF F8 */	bdnz lbl_800EC818
/* 800EC824 000E9764  7C 00 04 AC */	sync 0
/* 800EC828 000E9768  4C 00 01 2C */	isync 
/* 800EC82C 000E976C  4E 80 00 20 */	blr 

.global ICFlashInvalidate
ICFlashInvalidate:
/* 800EC830 000E9770  7C 70 FA A6 */	mfspr r3, 0x3f0
/* 800EC834 000E9774  60 63 08 00 */	ori r3, r3, 0x800
/* 800EC838 000E9778  7C 70 FB A6 */	mtspr 0x3f0, r3
/* 800EC83C 000E977C  4E 80 00 20 */	blr 

.global ICEnable
ICEnable:
/* 800EC840 000E9780  4C 00 01 2C */	isync 
/* 800EC844 000E9784  7C 70 FA A6 */	mfspr r3, 0x3f0
/* 800EC848 000E9788  60 63 80 00 */	ori r3, r3, 0x8000
/* 800EC84C 000E978C  7C 70 FB A6 */	mtspr 0x3f0, r3
/* 800EC850 000E9790  4E 80 00 20 */	blr 

.global __LCEnable
__LCEnable:
/* 800EC854 000E9794  7C A0 00 A6 */	mfmsr r5
/* 800EC858 000E9798  60 A5 10 00 */	ori r5, r5, 0x1000
/* 800EC85C 000E979C  7C A0 01 24 */	mtmsr r5
/* 800EC860 000E97A0  3C 60 80 00 */	lis r3, 0x80000020@ha
/* 800EC864 000E97A4  38 80 04 00 */	li r4, 0x400
/* 800EC868 000E97A8  7C 89 03 A6 */	mtctr r4
lbl_800EC86C:
/* 800EC86C 000E97AC  7C 00 1A 2C */	dcbt 0, r3
/* 800EC870 000E97B0  7C 00 18 6C */	dcbst 0, r3
/* 800EC874 000E97B4  38 63 00 20 */	addi r3, r3, 0x80000020@l
/* 800EC878 000E97B8  42 00 FF F4 */	bdnz lbl_800EC86C
/* 800EC87C 000E97BC  7C 98 E2 A6 */	mfspr r4, 0x398
/* 800EC880 000E97C0  64 84 10 0F */	oris r4, r4, 0x100f
/* 800EC884 000E97C4  7C 98 E3 A6 */	mtspr 0x398, r4
/* 800EC888 000E97C8  60 00 00 00 */	nop 
/* 800EC88C 000E97CC  60 00 00 00 */	nop 
/* 800EC890 000E97D0  60 00 00 00 */	nop 
/* 800EC894 000E97D4  60 00 00 00 */	nop 
/* 800EC898 000E97D8  60 00 00 00 */	nop 
/* 800EC89C 000E97DC  60 00 00 00 */	nop 
/* 800EC8A0 000E97E0  60 00 00 00 */	nop 
/* 800EC8A4 000E97E4  60 00 00 00 */	nop 
/* 800EC8A8 000E97E8  60 00 00 00 */	nop 
/* 800EC8AC 000E97EC  60 00 00 00 */	nop 
/* 800EC8B0 000E97F0  60 00 00 00 */	nop 
/* 800EC8B4 000E97F4  60 00 00 00 */	nop 
/* 800EC8B8 000E97F8  3C 60 E0 00 */	lis r3, 0xE0000002@h
/* 800EC8BC 000E97FC  60 63 00 02 */	ori r3, r3, 0xE0000002@l
/* 800EC8C0 000E9800  7C 7F 83 A6 */	mtdbatl 3, r3
/* 800EC8C4 000E9804  60 63 01 FE */	ori r3, r3, 0x1fe
/* 800EC8C8 000E9808  7C 7E 83 A6 */	mtdbatu 3, r3
/* 800EC8CC 000E980C  4C 00 01 2C */	isync 
/* 800EC8D0 000E9810  3C 60 E0 00 */	lis r3, 0xE0000020@ha
/* 800EC8D4 000E9814  38 C0 02 00 */	li r6, 0x200
/* 800EC8D8 000E9818  7C C9 03 A6 */	mtctr r6
/* 800EC8DC 000E981C  38 C0 00 00 */	li r6, 0
lbl_800EC8E0:
/* 800EC8E0 000E9820  10 06 1F EC */	dcbz_l r6, r3
/* 800EC8E4 000E9824  38 63 00 20 */	addi r3, r3, 0xE0000020@l
/* 800EC8E8 000E9828  42 00 FF F8 */	bdnz lbl_800EC8E0
/* 800EC8EC 000E982C  60 00 00 00 */	nop 
/* 800EC8F0 000E9830  60 00 00 00 */	nop 
/* 800EC8F4 000E9834  60 00 00 00 */	nop 
/* 800EC8F8 000E9838  60 00 00 00 */	nop 
/* 800EC8FC 000E983C  60 00 00 00 */	nop 
/* 800EC900 000E9840  60 00 00 00 */	nop 
/* 800EC904 000E9844  60 00 00 00 */	nop 
/* 800EC908 000E9848  60 00 00 00 */	nop 
/* 800EC90C 000E984C  60 00 00 00 */	nop 
/* 800EC910 000E9850  60 00 00 00 */	nop 
/* 800EC914 000E9854  60 00 00 00 */	nop 
/* 800EC918 000E9858  60 00 00 00 */	nop 
/* 800EC91C 000E985C  4E 80 00 20 */	blr 

.global LCEnable
LCEnable:
/* 800EC920 000E9860  7C 08 02 A6 */	mflr r0
/* 800EC924 000E9864  90 01 00 04 */	stw r0, 4(r1)
/* 800EC928 000E9868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EC92C 000E986C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EC930 000E9870  48 00 23 09 */	bl OSDisableInterrupts
/* 800EC934 000E9874  7C 7F 1B 78 */	mr r31, r3
/* 800EC938 000E9878  4B FF FF 1D */	bl __LCEnable
/* 800EC93C 000E987C  7F E3 FB 78 */	mr r3, r31
/* 800EC940 000E9880  48 00 23 21 */	bl OSRestoreInterrupts
/* 800EC944 000E9884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EC948 000E9888  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EC94C 000E988C  38 21 00 10 */	addi r1, r1, 0x10
/* 800EC950 000E9890  7C 08 03 A6 */	mtlr r0
/* 800EC954 000E9894  4E 80 00 20 */	blr 

.global LCDisable
LCDisable:
/* 800EC958 000E9898  3C 60 E0 00 */	lis r3, 0xE0000020@ha
/* 800EC95C 000E989C  38 80 02 00 */	li r4, 0x200
/* 800EC960 000E98A0  7C 89 03 A6 */	mtctr r4
lbl_800EC964:
/* 800EC964 000E98A4  7C 00 1B AC */	dcbi 0, r3
/* 800EC968 000E98A8  38 63 00 20 */	addi r3, r3, 0xE0000020@l
/* 800EC96C 000E98AC  42 00 FF F8 */	bdnz lbl_800EC964
/* 800EC970 000E98B0  7C 98 E2 A6 */	mfspr r4, 0x398
/* 800EC974 000E98B4  54 84 01 04 */	rlwinm r4, r4, 0, 4, 2
/* 800EC978 000E98B8  7C 98 E3 A6 */	mtspr 0x398, r4
/* 800EC97C 000E98BC  4E 80 00 20 */	blr 

.global LCStoreBlocks
LCStoreBlocks:
/* 800EC980 000E98C0  54 A6 F6 FE */	rlwinm r6, r5, 0x1e, 0x1b, 0x1f
/* 800EC984 000E98C4  54 63 01 3E */	clrlwi r3, r3, 4
/* 800EC988 000E98C8  7C C6 1B 78 */	or r6, r6, r3
/* 800EC98C 000E98CC  7C DA E3 A6 */	mtspr 0x39a, r6
/* 800EC990 000E98D0  54 A6 17 3A */	rlwinm r6, r5, 2, 0x1c, 0x1d
/* 800EC994 000E98D4  7C C6 23 78 */	or r6, r6, r4
/* 800EC998 000E98D8  60 C6 00 02 */	ori r6, r6, 2
/* 800EC99C 000E98DC  7C DB E3 A6 */	mtspr 0x39b, r6
/* 800EC9A0 000E98E0  4E 80 00 20 */	blr 

.global LCStoreData
LCStoreData:
/* 800EC9A4 000E98E4  7C 08 02 A6 */	mflr r0
/* 800EC9A8 000E98E8  90 01 00 04 */	stw r0, 4(r1)
/* 800EC9AC 000E98EC  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 800EC9B0 000E98F0  93 E1 00 24 */	stw r31, 0x24(r1)
/* 800EC9B4 000E98F4  93 C1 00 20 */	stw r30, 0x20(r1)
/* 800EC9B8 000E98F8  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 800EC9BC 000E98FC  93 81 00 18 */	stw r28, 0x18(r1)
/* 800EC9C0 000E9900  7C 7C 1B 78 */	mr r28, r3
/* 800EC9C4 000E9904  7C 9D 23 78 */	mr r29, r4
/* 800EC9C8 000E9908  38 05 00 1F */	addi r0, r5, 0x1f
/* 800EC9CC 000E990C  54 03 D9 7E */	srwi r3, r0, 5
/* 800EC9D0 000E9910  38 03 00 7F */	addi r0, r3, 0x7f
/* 800EC9D4 000E9914  7C 7F 1B 78 */	mr r31, r3
/* 800EC9D8 000E9918  54 1E C9 FE */	srwi r30, r0, 7
/* 800EC9DC 000E991C  48 00 00 04 */	b lbl_800EC9E0
lbl_800EC9E0:
/* 800EC9E0 000E9920  48 00 00 04 */	b lbl_800EC9E4
lbl_800EC9E4:
/* 800EC9E4 000E9924  48 00 00 40 */	b lbl_800ECA24
lbl_800EC9E8:
/* 800EC9E8 000E9928  28 1F 00 80 */	cmplwi r31, 0x80
/* 800EC9EC 000E992C  40 80 00 1C */	bge lbl_800ECA08
/* 800EC9F0 000E9930  7F 83 E3 78 */	mr r3, r28
/* 800EC9F4 000E9934  7F A4 EB 78 */	mr r4, r29
/* 800EC9F8 000E9938  7F E5 FB 78 */	mr r5, r31
/* 800EC9FC 000E993C  4B FF FF 85 */	bl LCStoreBlocks
/* 800ECA00 000E9940  3B E0 00 00 */	li r31, 0
/* 800ECA04 000E9944  48 00 00 20 */	b lbl_800ECA24
lbl_800ECA08:
/* 800ECA08 000E9948  7F 83 E3 78 */	mr r3, r28
/* 800ECA0C 000E994C  7F A4 EB 78 */	mr r4, r29
/* 800ECA10 000E9950  38 A0 00 00 */	li r5, 0
/* 800ECA14 000E9954  4B FF FF 6D */	bl LCStoreBlocks
/* 800ECA18 000E9958  3B FF FF 80 */	addi r31, r31, -128
/* 800ECA1C 000E995C  3B 9C 10 00 */	addi r28, r28, 0x1000
/* 800ECA20 000E9960  3B BD 10 00 */	addi r29, r29, 0x1000
lbl_800ECA24:
/* 800ECA24 000E9964  28 1F 00 00 */	cmplwi r31, 0
/* 800ECA28 000E9968  40 82 FF C0 */	bne lbl_800EC9E8
/* 800ECA2C 000E996C  7F C3 F3 78 */	mr r3, r30
/* 800ECA30 000E9970  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800ECA34 000E9974  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 800ECA38 000E9978  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 800ECA3C 000E997C  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 800ECA40 000E9980  83 81 00 18 */	lwz r28, 0x18(r1)
/* 800ECA44 000E9984  38 21 00 28 */	addi r1, r1, 0x28
/* 800ECA48 000E9988  7C 08 03 A6 */	mtlr r0
/* 800ECA4C 000E998C  4E 80 00 20 */	blr 

.global LCQueueWait
LCQueueWait:
/* 800ECA50 000E9990  7C 98 E2 A6 */	mfspr r4, 0x398
/* 800ECA54 000E9994  54 84 47 3E */	rlwinm r4, r4, 8, 0x1c, 0x1f
/* 800ECA58 000E9998  7C 04 18 00 */	cmpw r4, r3
/* 800ECA5C 000E999C  41 81 FF F4 */	bgt LCQueueWait
/* 800ECA60 000E99A0  4E 80 00 20 */	blr 

.global L2GlobalInvalidate
L2GlobalInvalidate:
/* 800ECA64 000E99A4  7C 08 02 A6 */	mflr r0
/* 800ECA68 000E99A8  90 01 00 04 */	stw r0, 4(r1)
/* 800ECA6C 000E99AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ECA70 000E99B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ECA74 000E99B4  7C 00 04 AC */	sync 0
/* 800ECA78 000E99B8  4B FE 7B 01 */	bl PPCMfl2cr
/* 800ECA7C 000E99BC  54 63 00 7E */	clrlwi r3, r3, 1
/* 800ECA80 000E99C0  4B FE 7B 01 */	bl PPCMtl2cr
/* 800ECA84 000E99C4  7C 00 04 AC */	sync 0
/* 800ECA88 000E99C8  4B FE 7A F1 */	bl PPCMfl2cr
/* 800ECA8C 000E99CC  64 63 00 20 */	oris r3, r3, 0x20
/* 800ECA90 000E99D0  4B FE 7A F1 */	bl PPCMtl2cr
/* 800ECA94 000E99D4  48 00 00 04 */	b lbl_800ECA98
lbl_800ECA98:
/* 800ECA98 000E99D8  48 00 00 04 */	b lbl_800ECA9C
lbl_800ECA9C:
/* 800ECA9C 000E99DC  4B FE 7A DD */	bl PPCMfl2cr
/* 800ECAA0 000E99E0  54 60 07 FE */	clrlwi r0, r3, 0x1f
/* 800ECAA4 000E99E4  28 00 00 00 */	cmplwi r0, 0
/* 800ECAA8 000E99E8  40 82 FF F4 */	bne lbl_800ECA9C
/* 800ECAAC 000E99EC  4B FE 7A CD */	bl PPCMfl2cr
/* 800ECAB0 000E99F0  54 63 02 D2 */	rlwinm r3, r3, 0, 0xb, 9
/* 800ECAB4 000E99F4  4B FE 7A CD */	bl PPCMtl2cr
/* 800ECAB8 000E99F8  48 00 00 04 */	b lbl_800ECABC
lbl_800ECABC:
/* 800ECABC 000E99FC  3C 60 80 4B */	lis r3, lbl_804A8B88@ha
/* 800ECAC0 000E9A00  3B E3 8B 88 */	addi r31, r3, lbl_804A8B88@l
/* 800ECAC4 000E9A04  48 00 00 04 */	b lbl_800ECAC8
lbl_800ECAC8:
/* 800ECAC8 000E9A08  48 00 00 10 */	b lbl_800ECAD8
lbl_800ECACC:
/* 800ECACC 000E9A0C  7F E3 FB 78 */	mr r3, r31
/* 800ECAD0 000E9A10  4C C6 31 82 */	crclr 6
/* 800ECAD4 000E9A14  4B FE E1 8D */	bl DBPrintf
lbl_800ECAD8:
/* 800ECAD8 000E9A18  4B FE 7A A1 */	bl PPCMfl2cr
/* 800ECADC 000E9A1C  54 60 07 FE */	clrlwi r0, r3, 0x1f
/* 800ECAE0 000E9A20  28 00 00 00 */	cmplwi r0, 0
/* 800ECAE4 000E9A24  40 82 FF E8 */	bne lbl_800ECACC
/* 800ECAE8 000E9A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ECAEC 000E9A2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ECAF0 000E9A30  38 21 00 10 */	addi r1, r1, 0x10
/* 800ECAF4 000E9A34  7C 08 03 A6 */	mtlr r0
/* 800ECAF8 000E9A38  4E 80 00 20 */	blr 

.global DMAErrorHandler
DMAErrorHandler:
/* 800ECAFC 000E9A3C  7C 08 02 A6 */	mflr r0
/* 800ECB00 000E9A40  90 01 00 04 */	stw r0, 4(r1)
/* 800ECB04 000E9A44  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 800ECB08 000E9A48  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 800ECB0C 000E9A4C  93 C1 00 78 */	stw r30, 0x78(r1)
/* 800ECB10 000E9A50  93 A1 00 74 */	stw r29, 0x74(r1)
/* 800ECB14 000E9A54  40 86 00 24 */	bne cr1, lbl_800ECB38
/* 800ECB18 000E9A58  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 800ECB1C 000E9A5C  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 800ECB20 000E9A60  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 800ECB24 000E9A64  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 800ECB28 000E9A68  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 800ECB2C 000E9A6C  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 800ECB30 000E9A70  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 800ECB34 000E9A74  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_800ECB38:
/* 800ECB38 000E9A78  90 61 00 08 */	stw r3, 8(r1)
/* 800ECB3C 000E9A7C  90 81 00 0C */	stw r4, 0xc(r1)
/* 800ECB40 000E9A80  90 A1 00 10 */	stw r5, 0x10(r1)
/* 800ECB44 000E9A84  90 C1 00 14 */	stw r6, 0x14(r1)
/* 800ECB48 000E9A88  90 E1 00 18 */	stw r7, 0x18(r1)
/* 800ECB4C 000E9A8C  91 01 00 1C */	stw r8, 0x1c(r1)
/* 800ECB50 000E9A90  91 21 00 20 */	stw r9, 0x20(r1)
/* 800ECB54 000E9A94  91 41 00 24 */	stw r10, 0x24(r1)
/* 800ECB58 000E9A98  7C 9D 23 78 */	mr r29, r4
/* 800ECB5C 000E9A9C  3C 60 80 4B */	lis r3, lbl_804A8B88@ha
/* 800ECB60 000E9AA0  3B E3 8B 88 */	addi r31, r3, lbl_804A8B88@l
/* 800ECB64 000E9AA4  4B FE 7A C1 */	bl PPCMfhid2
/* 800ECB68 000E9AA8  7C 7E 1B 78 */	mr r30, r3
/* 800ECB6C 000E9AAC  4C C6 31 82 */	crclr 6
/* 800ECB70 000E9AB0  38 7F 00 2C */	addi r3, r31, 0x2c
/* 800ECB74 000E9AB4  48 00 0B 79 */	bl OSReport
/* 800ECB78 000E9AB8  80 BD 01 9C */	lwz r5, 0x19c(r29)
/* 800ECB7C 000E9ABC  7F C4 F3 78 */	mr r4, r30
/* 800ECB80 000E9AC0  38 7F 00 44 */	addi r3, r31, 0x44
/* 800ECB84 000E9AC4  4C C6 31 82 */	crclr 6
/* 800ECB88 000E9AC8  48 00 0B 65 */	bl OSReport
/* 800ECB8C 000E9ACC  57 C0 02 16 */	rlwinm r0, r30, 0, 8, 0xb
/* 800ECB90 000E9AD0  28 00 00 00 */	cmplwi r0, 0
/* 800ECB94 000E9AD4  41 82 00 14 */	beq lbl_800ECBA8
/* 800ECB98 000E9AD8  80 1D 01 9C */	lwz r0, 0x19c(r29)
/* 800ECB9C 000E9ADC  54 00 02 94 */	rlwinm r0, r0, 0, 0xa, 0xa
/* 800ECBA0 000E9AE0  28 00 00 00 */	cmplwi r0, 0
/* 800ECBA4 000E9AE4  40 82 00 1C */	bne lbl_800ECBC0
lbl_800ECBA8:
/* 800ECBA8 000E9AE8  38 7F 00 60 */	addi r3, r31, 0x60
/* 800ECBAC 000E9AEC  4C C6 31 82 */	crclr 6
/* 800ECBB0 000E9AF0  48 00 0B 3D */	bl OSReport
/* 800ECBB4 000E9AF4  7F A3 EB 78 */	mr r3, r29
/* 800ECBB8 000E9AF8  48 00 06 95 */	bl OSDumpContext
/* 800ECBBC 000E9AFC  4B FE 79 DD */	bl PPCHalt
lbl_800ECBC0:
/* 800ECBC0 000E9B00  38 7F 00 90 */	addi r3, r31, 0x90
/* 800ECBC4 000E9B04  4C C6 31 82 */	crclr 6
/* 800ECBC8 000E9B08  48 00 0B 25 */	bl OSReport
/* 800ECBCC 000E9B0C  38 7F 00 CC */	addi r3, r31, 0xcc
/* 800ECBD0 000E9B10  4C C6 31 82 */	crclr 6
/* 800ECBD4 000E9B14  48 00 0B 19 */	bl OSReport
/* 800ECBD8 000E9B18  57 C0 02 10 */	rlwinm r0, r30, 0, 8, 8
/* 800ECBDC 000E9B1C  28 00 00 00 */	cmplwi r0, 0
/* 800ECBE0 000E9B20  41 82 00 10 */	beq lbl_800ECBF0
/* 800ECBE4 000E9B24  38 7F 01 04 */	addi r3, r31, 0x104
/* 800ECBE8 000E9B28  4C C6 31 82 */	crclr 6
/* 800ECBEC 000E9B2C  48 00 0B 01 */	bl OSReport
lbl_800ECBF0:
/* 800ECBF0 000E9B30  57 C0 02 52 */	rlwinm r0, r30, 0, 9, 9
/* 800ECBF4 000E9B34  28 00 00 00 */	cmplwi r0, 0
/* 800ECBF8 000E9B38  41 82 00 10 */	beq lbl_800ECC08
/* 800ECBFC 000E9B3C  38 7F 01 44 */	addi r3, r31, 0x144
/* 800ECC00 000E9B40  4C C6 31 82 */	crclr 6
/* 800ECC04 000E9B44  48 00 0A E9 */	bl OSReport
lbl_800ECC08:
/* 800ECC08 000E9B48  57 C0 02 94 */	rlwinm r0, r30, 0, 0xa, 0xa
/* 800ECC0C 000E9B4C  28 00 00 00 */	cmplwi r0, 0
/* 800ECC10 000E9B50  41 82 00 10 */	beq lbl_800ECC20
/* 800ECC14 000E9B54  38 7F 01 70 */	addi r3, r31, 0x170
/* 800ECC18 000E9B58  4C C6 31 82 */	crclr 6
/* 800ECC1C 000E9B5C  48 00 0A D1 */	bl OSReport
lbl_800ECC20:
/* 800ECC20 000E9B60  57 C0 02 D6 */	rlwinm r0, r30, 0, 0xb, 0xb
/* 800ECC24 000E9B64  28 00 00 00 */	cmplwi r0, 0
/* 800ECC28 000E9B68  41 82 00 10 */	beq lbl_800ECC38
/* 800ECC2C 000E9B6C  38 7F 01 90 */	addi r3, r31, 0x190
/* 800ECC30 000E9B70  4C C6 31 82 */	crclr 6
/* 800ECC34 000E9B74  48 00 0A B9 */	bl OSReport
lbl_800ECC38:
/* 800ECC38 000E9B78  7F C3 F3 78 */	mr r3, r30
/* 800ECC3C 000E9B7C  4B FE 79 F1 */	bl PPCMthid2
/* 800ECC40 000E9B80  80 01 00 84 */	lwz r0, 0x84(r1)
/* 800ECC44 000E9B84  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 800ECC48 000E9B88  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 800ECC4C 000E9B8C  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 800ECC50 000E9B90  38 21 00 80 */	addi r1, r1, 0x80
/* 800ECC54 000E9B94  7C 08 03 A6 */	mtlr r0
/* 800ECC58 000E9B98  4E 80 00 20 */	blr 

.global __OSCacheInit
__OSCacheInit:
/* 800ECC5C 000E9B9C  7C 08 02 A6 */	mflr r0
/* 800ECC60 000E9BA0  90 01 00 04 */	stw r0, 4(r1)
/* 800ECC64 000E9BA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ECC68 000E9BA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ECC6C 000E9BAC  93 C1 00 08 */	stw r30, 8(r1)
/* 800ECC70 000E9BB0  3C 60 80 4B */	lis r3, lbl_804A8B88@ha
/* 800ECC74 000E9BB4  3B E3 8B 88 */	addi r31, r3, lbl_804A8B88@l
/* 800ECC78 000E9BB8  4B FE 78 F1 */	bl PPCMfhid0
/* 800ECC7C 000E9BBC  54 60 04 20 */	rlwinm r0, r3, 0, 0x10, 0x10
/* 800ECC80 000E9BC0  28 00 00 00 */	cmplwi r0, 0
/* 800ECC84 000E9BC4  40 82 00 14 */	bne lbl_800ECC98
/* 800ECC88 000E9BC8  4B FF FB B9 */	bl ICEnable
/* 800ECC8C 000E9BCC  38 7F 01 AC */	addi r3, r31, 0x1ac
/* 800ECC90 000E9BD0  4C C6 31 82 */	crclr 6
/* 800ECC94 000E9BD4  4B FE DF CD */	bl DBPrintf
lbl_800ECC98:
/* 800ECC98 000E9BD8  4B FE 78 D1 */	bl PPCMfhid0
/* 800ECC9C 000E9BDC  54 60 04 62 */	rlwinm r0, r3, 0, 0x11, 0x11
/* 800ECCA0 000E9BE0  28 00 00 00 */	cmplwi r0, 0
/* 800ECCA4 000E9BE4  40 82 00 14 */	bne lbl_800ECCB8
/* 800ECCA8 000E9BE8  4B FF FA 31 */	bl DCEnable
/* 800ECCAC 000E9BEC  38 7F 01 C8 */	addi r3, r31, 0x1c8
/* 800ECCB0 000E9BF0  4C C6 31 82 */	crclr 6
/* 800ECCB4 000E9BF4  4B FE DF AD */	bl DBPrintf
lbl_800ECCB8:
/* 800ECCB8 000E9BF8  4B FE 78 C1 */	bl PPCMfl2cr
/* 800ECCBC 000E9BFC  54 60 00 00 */	rlwinm r0, r3, 0, 0, 0
/* 800ECCC0 000E9C00  28 00 00 00 */	cmplwi r0, 0
/* 800ECCC4 000E9C04  40 82 00 58 */	bne lbl_800ECD1C
/* 800ECCC8 000E9C08  4B FE 78 91 */	bl PPCMfmsr
/* 800ECCCC 000E9C0C  7C 7E 1B 78 */	mr r30, r3
/* 800ECCD0 000E9C10  7C 00 04 AC */	sync 0
/* 800ECCD4 000E9C14  38 60 00 30 */	li r3, 0x30
/* 800ECCD8 000E9C18  4B FE 78 89 */	bl PPCMtmsr
/* 800ECCDC 000E9C1C  7C 00 04 AC */	sync 0
/* 800ECCE0 000E9C20  7C 00 04 AC */	sync 0
/* 800ECCE4 000E9C24  4B FE 78 95 */	bl PPCMfl2cr
/* 800ECCE8 000E9C28  54 63 00 7E */	clrlwi r3, r3, 1
/* 800ECCEC 000E9C2C  4B FE 78 95 */	bl PPCMtl2cr
/* 800ECCF0 000E9C30  7C 00 04 AC */	sync 0
/* 800ECCF4 000E9C34  4B FF FD 71 */	bl L2GlobalInvalidate
/* 800ECCF8 000E9C38  7F C3 F3 78 */	mr r3, r30
/* 800ECCFC 000E9C3C  4B FE 78 65 */	bl PPCMtmsr
/* 800ECD00 000E9C40  4B FE 78 79 */	bl PPCMfl2cr
/* 800ECD04 000E9C44  64 60 80 00 */	oris r0, r3, 0x8000
/* 800ECD08 000E9C48  54 03 02 D2 */	rlwinm r3, r0, 0, 0xb, 9
/* 800ECD0C 000E9C4C  4B FE 78 75 */	bl PPCMtl2cr
/* 800ECD10 000E9C50  38 7F 01 E4 */	addi r3, r31, 0x1e4
/* 800ECD14 000E9C54  4C C6 31 82 */	crclr 6
/* 800ECD18 000E9C58  4B FE DF 49 */	bl DBPrintf
lbl_800ECD1C:
/* 800ECD1C 000E9C5C  3C 60 80 0F */	lis r3, DMAErrorHandler@ha
/* 800ECD20 000E9C60  38 83 CA FC */	addi r4, r3, DMAErrorHandler@l
/* 800ECD24 000E9C64  38 60 00 01 */	li r3, 1
/* 800ECD28 000E9C68  48 00 0B 71 */	bl OSSetErrorHandler
/* 800ECD2C 000E9C6C  38 7F 01 FC */	addi r3, r31, 0x1fc
/* 800ECD30 000E9C70  4C C6 31 82 */	crclr 6
/* 800ECD34 000E9C74  4B FE DF 2D */	bl DBPrintf
/* 800ECD38 000E9C78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ECD3C 000E9C7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ECD40 000E9C80  83 C1 00 08 */	lwz r30, 8(r1)
/* 800ECD44 000E9C84  38 21 00 10 */	addi r1, r1, 0x10
/* 800ECD48 000E9C88  7C 08 03 A6 */	mtlr r0
/* 800ECD4C 000E9C8C  4E 80 00 20 */	blr 
