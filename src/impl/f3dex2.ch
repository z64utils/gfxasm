/* 
 * gfxasm 0.01 <z64.me>
 *
 */

/* private functions */
static void f3dex2_qs205(void *dest, uint32_t *argv) {
	uint32_t *d = dest;
	float f = *(float*)argv;
	*d = qs205(f);
}
static void f3dex2_qs1616(void *dest, uint32_t *argv) {
	uint32_t *d = dest;
	float f = *(float*)argv;
	*d = qs1616(f);
}
static void f3dex2_qs1516(void *dest, uint32_t *argv) {
	uint32_t *d = dest;
	float f = *(float*)argv;
	*d = qs1516(f);
}
static void f3dex2_qs142(void *dest, uint32_t *argv) {
	uint32_t *d = dest;
	float f = *(float*)argv;
	*d = qs142(f);
}
static void f3dex2_qs132(void *dest, uint32_t *argv) {
	uint32_t *d = dest;
	float f = *(float*)argv;
	*d = qs132(f);
}
static void f3dex2_qu105(void *dest, uint32_t *argv) {
	uint32_t *d = dest;
	float f = *(float*)argv;
	*d = qu105(f);
}
static void f3dex2_qs105(void *dest, uint32_t *argv) {
	uint32_t *d = dest;
	float f = *(float*)argv;
	*d = qs105(f);
}
static void f3dex2_qu102(void *dest, uint32_t *argv) {
	uint32_t *d = dest;
	float f = *(float*)argv;
	*d = qu102(f);
}
static void f3dex2_qs102(void *dest, uint32_t *argv) {
	uint32_t *d = dest;
	float f = *(float*)argv;
	*d = qs102(f);
}
static void f3dex2_qu510(void *dest, uint32_t *argv) {
	uint32_t *d = dest;
	float f = *(float*)argv;
	*d = qu510(f);
}
static void f3dex2_qs510(void *dest, uint32_t *argv) {
	uint32_t *d = dest;
	float f = *(float*)argv;
	*d = qs510(f);
}
static void f3dex2_qs48(void *dest, uint32_t *argv) {
	uint32_t *d = dest;
	float f = *(float*)argv;
	*d = qs48(f);
}
static void f3dex2_qu016(void *dest, uint32_t *argv) {
	uint32_t *d = dest;
	float f = *(float*)argv;
	*d = qu016(f);
}
static void f3dex2_qu08(void *dest, uint32_t *argv) {
	uint32_t *d = dest;
	float f = *(float*)argv;
	*d = qu08(f);
}
static void f3dex2_gsDPHalf2(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPHalf2(d->p++, argv[0]);
}
static void f3dex2_gsDPHalf1(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPHalf1(d->p++, argv[0]);
}
static void f3dex2_gsSPPerspNormalize(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPPerspNormalize(d->p++, argv[0]);
}
static void f3dex2_gsSPDmaWrite(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPDmaWrite(d->p++, argv[0], argv[1], argv[2]);
}
static void f3dex2_gsSPDmaRead(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPDmaRead(d->p++, argv[0], argv[1], argv[2]);
}
static void f3dex2_gsSPDma_io(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPDma_io(d->p++, argv[0], argv[1], argv[2], argv[3]);
}
static void f3dex2_gsSPSetOtherMode(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPSetOtherMode(d->p++, argv[0], argv[1], argv[2], argv[3]);
}
static void f3dex2_gsSPGeometryMode(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPGeometryMode(d->p++, argv[0], argv[1]);
}
static void f3dex2_gsSPViewport(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPViewport(d->p++, argv[0]);
}
static void f3dex2_gsSPVertex(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPVertex(d->p++, argv[0], argv[1], argv[2]);
}
static void f3dex2_gsSPTexture(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPTexture(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4]);
}
static void f3dex2_gsSPPopMatrixN(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPPopMatrixN(d->p++, argv[0], argv[1]);
}
static void f3dex2_gsSPPopMatrix(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPPopMatrix(d->p++, argv[0]);
}
static void f3dex2_gsSPMatrix(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPMatrix(d->p++, argv[0], argv[1]);
}
static void f3dex2_gsSPLookAtY(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPLookAtY(d->p++, argv[0]);
}
static void f3dex2_gsSPLookAtX(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPLookAtX(d->p++, argv[0]);
}
static void f3dex2_gsSPLoadGeometryMode(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPLoadGeometryMode(d->p++, argv[0]);
}
static void f3dex2_gsSPClearGeometryMode(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPClearGeometryMode(d->p++, argv[0]);
}
static void f3dex2_gsSPSetGeometryMode(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPSetGeometryMode(d->p++, argv[0]);
}
static void f3dex2_gsSPForceMatrix(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPForceMatrix(d->p++, argv[0]);
}
static void f3dex2_gsSP1Quadrangle(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSP1Quadrangle(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4]);
}
static void f3dex2_gsSPLoadUcodeEx(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPLoadUcodeEx(d->p++, argv[0], argv[1], argv[2]);
}
static void f3dex2_gsSPModifyVertex(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPModifyVertex(d->p++, argv[0], argv[1], argv[2]);
}
static void f3dex2_gsSPLoadUcode(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPLoadUcode(d->p++, argv[0], argv[1]);
}
static void f3dex2_gsSPLineW3D(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPLineW3D(d->p++, argv[0], argv[1], argv[2], argv[3]);
}
static void f3dex2_gsSPCullDisplayList(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPCullDisplayList(d->p++, argv[0], argv[1]);
}
static void f3dex2_gsSPBranchLessZrg(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPBranchLessZrg(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7]);
}
static void f3dex2_gsSPBranchLessZ(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPBranchLessZ(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5]);
}
static void f3dex2_gsSP2Triangles(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSP2Triangles(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7]);
}
static void f3dex2_gsSP1Triangle(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSP1Triangle(d->p++, argv[0], argv[1], argv[2], argv[3]);
}
static void f3dex2_gsSPNoOp(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPNoOp(d->p++);
}
static void f3dex2_gsDPSetOtherMode(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetOtherMode(d->p++, argv[0], argv[1]);
}
static void f3dex2_gsSPSetOtherModeHi(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPSetOtherModeHi(d->p++, argv[0], argv[1], argv[2]);
}
static void f3dex2_gsSPSetOtherModeLo(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPSetOtherModeLo(d->p++, argv[0], argv[1], argv[2]);
}
static void f3dex2_gsDPSetCombine(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetCombine(d->p++, argv[0]);
}
static void f3dex2_gsDPLoadTile(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPLoadTile(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4]);
}
static void f3dex2_gsDPLoadTLUT(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPLoadTLUT(d->p++, argv[0], argv[1], argv[2]);
}
static void f3dex2_gsDPLoadTLUTCmd(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPLoadTLUTCmd(d->p++, argv[0], argv[1]);
}
static void f3dex2_gsSPSelectBranchDL(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPSelectBranchDL(d->p++, argv[0], argv[1], argv[2], argv[3]);
}
static void f3dex2_gsSPSelectDL(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPSelectDL(d->p++, argv[0], argv[1], argv[2], argv[3]);
}
static void f3dex2_gsSPObjLoadTxSprite(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPObjLoadTxSprite(d->p++, argv[0]);
}
static void f3dex2_gsSPObjLoadTxRectR(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPObjLoadTxRectR(d->p++, argv[0]);
}
static void f3dex2_gsSPObjLoadTxRect(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPObjLoadTxRect(d->p++, argv[0]);
}
static void f3dex2_gsSPObjLoadTxtr(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPObjLoadTxtr(d->p++, argv[0]);
}
static void f3dex2_gsSPObjRenderMode(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPObjRenderMode(d->p++, argv[0]);
}
static void f3dex2_gsSPObjSubMatrix(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPObjSubMatrix(d->p++, argv[0]);
}
static void f3dex2_gsSPObjMatrix(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPObjMatrix(d->p++, argv[0]);
}
static void f3dex2_gsSPObjSprite(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPObjSprite(d->p++, argv[0]);
}
static void f3dex2_gsSPObjRectangleR(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPObjRectangleR(d->p++, argv[0]);
}
static void f3dex2_gsSPObjRectangle(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPObjRectangle(d->p++, argv[0]);
}
static void f3dex2_gsSPBgRect1Cyc(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPBgRect1Cyc(d->p++, argv[0]);
}
static void f3dex2_gsSPBgRectCopy(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPBgRectCopy(d->p++, argv[0]);
}
static void f3dex2_gsSPScisTextureRectangleFlip(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPScisTextureRectangleFlip(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8]);
}
static void f3dex2_gsSPTextureRectangleFlip(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPTextureRectangleFlip(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8]);
}
static void f3dex2_gsSPScisTextureRectangle(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPScisTextureRectangle(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8]);
}
static void f3dex2_gsSPTextureRectangle(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPTextureRectangle(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8]);
}
static void f3dex2_gsSPSetStatus(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPSetStatus(d->p++, argv[0], argv[1]);
}
static void f3dex2_gsSPSegment(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPSegment(d->p++, argv[0], argv[1]);
}
static void f3dex2_gsSPLookAt(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPLookAt(d->p++, argv[0]);
}
static void f3dex2_gsSPLine3D(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPLine3D(d->p++, argv[0], argv[1], argv[2]);
}
static void f3dex2_gsSPFogPosition(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPFogPosition(d->p++, argv[0], argv[1]);
}
static void f3dex2_gsSPEndDisplayList(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPEndDisplayList(d->p++);
}
static void f3dex2_gsSPDisplayList(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPDisplayList(d->p++, argv[0]);
}
static void f3dex2_gsSPClipRatio(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPClipRatio(d->p++, argv[0]);
}
static void f3dex2_gsSPBranchList(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gSPBranchList(d->p++, argv[0]);
}
static void f3dex2_gsDPSetTileSize(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetTileSize(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4]);
}
static void f3dex2_gsDPSetTile(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetTile(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], argv[10], argv[11]);
}
static void f3dex2_gsDPSetTexturePersp(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetTexturePersp(d->p++, argv[0]);
}
static void f3dex2_gsDPSetTextureLUT(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetTextureLUT(d->p++, argv[0]);
}
static void f3dex2_gsDPSetTextureLOD(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetTextureLOD(d->p++, argv[0]);
}
static void f3dex2_gsDPSetTextureFilter(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetTextureFilter(d->p++, argv[0]);
}
static void f3dex2_gsDPSetTextureDetail(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetTextureDetail(d->p++, argv[0]);
}
static void f3dex2_gsDPSetScissorFrac(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetScissorFrac(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4]);
}
static void f3dex2_gsDPSetScissor(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetScissor(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4]);
}
static void f3dex2_gsDPSetRenderMode(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetRenderMode(d->p++, argv[0], argv[1]);
}
static void f3dex2_gsDPSetPrimDepth(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetPrimDepth(d->p++, argv[0], argv[1]);
}
static void f3dex2_gsDPSetKeyR(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetKeyR(d->p++, argv[0], argv[1], argv[2]);
}
static void f3dex2_gsDPSetKeyGB(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetKeyGB(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5]);
}
static void f3dex2_gsDPSetCombineKey(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetCombineKey(d->p++, argv[0]);
}
static void f3dex2_gsDPSetDepthSource(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetDepthSource(d->p++, argv[0]);
}
static void f3dex2_gsDPSetCycleType(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetCycleType(d->p++, argv[0]);
}
static void f3dex2_gsDPSetTextureConvert(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetTextureConvert(d->p++, argv[0]);
}
static void f3dex2_gsDPSetConvert(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetConvert(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5]);
}
static void f3dex2_gsDPSetCombineLERP(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetCombineLERP(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], argv[10], argv[11], argv[12], argv[13], argv[14], argv[15]);
}
static void f3dex2_gsDPSetColorDither(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetColorDither(d->p++, argv[0]);
}
static void f3dex2_gsDPSetAlphaDither(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetAlphaDither(d->p++, argv[0]);
}
static void f3dex2_gsDPSetAlphaCompare(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetAlphaCompare(d->p++, argv[0]);
}
static void f3dex2_gsDPSetTextureImage(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetTextureImage(d->p++, argv[0], argv[1], argv[2], argv[3]);
}
static void f3dex2_gsDPSetDepthImage(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetDepthImage(d->p++, argv[0]);
}
static void f3dex2_gsDPSetColorImage(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetColorImage(d->p++, argv[0], argv[1], argv[2], argv[3]);
}
static void f3dex2_gsDPSetPrimColor(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetPrimColor(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5]);
}
static void f3dex2_gsDPSetFogColor(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetFogColor(d->p++, argv[0], argv[1], argv[2], argv[3]);
}
static void f3dex2_gsDPSetFillColor(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetFillColor(d->p++, argv[0]);
}
static void f3dex2_gsDPSetEnvColor(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetEnvColor(d->p++, argv[0], argv[1], argv[2], argv[3]);
}
static void f3dex2_gsDPSetBlendColor(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPSetBlendColor(d->p++, argv[0], argv[1], argv[2], argv[3]);
}
static void f3dex2_gsDPPipelineMode(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPPipelineMode(d->p++, argv[0]);
}
static void f3dex2_gsDPNoOpTag(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPNoOpTag(d->p++, argv[0]);
}
static void f3dex2_gsDPNoOp(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPNoOp(d->p++);
}
static void f3dex2_gsDPLoadBlock(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPLoadBlock(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4]);
}
static void f3dex2_gsDPLoadMultiTileYuv(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPLoadMultiTileYuv(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], argv[10], argv[11], argv[12], argv[13], argv[14], argv[15], argv[16], argv[17]);
}
static void f3dex2_gsDPLoadMultiTile_4b(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPLoadMultiTile_4b(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], argv[10], argv[11], argv[12], argv[13], argv[14], argv[15], argv[16]);
}
static void f3dex2_gsDPLoadMultiTile(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPLoadMultiTile(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], argv[10], argv[11], argv[12], argv[13], argv[14], argv[15], argv[16], argv[17]);
}
static void f3dex2_gsDPLoadTextureTileYuv(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPLoadTextureTileYuv(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], argv[10], argv[11], argv[12], argv[13], argv[14], argv[15]);
}
static void f3dex2_gsDPLoadTextureTile_4b(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPLoadTextureTile_4b(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], argv[10], argv[11], argv[12], argv[13], argv[14]);
}
static void f3dex2_gsDPLoadTextureTile(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPLoadTextureTile(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], argv[10], argv[11], argv[12], argv[13], argv[14], argv[15]);
}
static void f3dex2_gsDPLoadMultiBlockYuvS(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPLoadMultiBlockYuvS(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], argv[10], argv[11], argv[12], argv[13]);
}
static void f3dex2_gsDPLoadMultiBlockYuv(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPLoadMultiBlockYuv(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], argv[10], argv[11], argv[12], argv[13]);
}
static void f3dex2_gsDPLoadMultiBlock_4bS(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPLoadMultiBlock_4bS(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], argv[10], argv[11], argv[12]);
}
static void f3dex2_gsDPLoadMultiBlock_4b(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPLoadMultiBlock_4b(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], argv[10], argv[11], argv[12]);
}
static void f3dex2_gsDPLoadMultiBlockS(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPLoadMultiBlockS(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], argv[10], argv[11], argv[12], argv[13]);
}
static void f3dex2_gsDPLoadMultiBlock(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPLoadMultiBlock(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], argv[10], argv[11], argv[12], argv[13]);
}
static void f3dex2_gsDPLoadTextureBlockYuvS(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPLoadTextureBlockYuvS(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], argv[10], argv[11]);
}
static void f3dex2_gsDPLoadTextureBlockYuv(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPLoadTextureBlockYuv(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], argv[10], argv[11]);
}
static void f3dex2_gsDPLoadTextureBlock_4bS(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPLoadTextureBlock_4bS(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], argv[10]);
}
static void f3dex2_gsDPLoadTextureBlock_4b(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPLoadTextureBlock_4b(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], argv[10]);
}
static void f3dex2_gsDPLoadTextureBlockS(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPLoadTextureBlockS(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], argv[10], argv[11]);
}
static void f3dex2_gsDPLoadTextureBlock(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPLoadTextureBlock(d->p++, argv[0], argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], argv[10], argv[11]);
}
static void f3dex2_gsDPLoadTLUT_pal256(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPLoadTLUT_pal256(d->p++, argv[0]);
}
static void f3dex2_gsDPLoadTLUT_pal16(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPLoadTLUT_pal16(d->p++, argv[0], argv[1]);
}
static void f3dex2_gsDPPipeSync(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPPipeSync(d->p++);
}
static void f3dex2_gsDPTileSync(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPTileSync(d->p++);
}
static void f3dex2_gsDPLoadSync(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPLoadSync(d->p++);
}
static void f3dex2_gsDPFullSync(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPFullSync(d->p++);
}
static void f3dex2_gsDPScisFillRectangle(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPScisFillRectangle(d->p++, argv[0], argv[1], argv[2], argv[3]);
}
static void f3dex2_gsDPFillRectangle(void *dest, uint32_t *argv) {
	struct gfxasm_result *d = dest;
	gDPFillRectangle(d->p++, argv[0], argv[1], argv[2], argv[3]);
}
static void f3dex2_GPACK_ZDZ(void *dest, uint32_t *argv) {
	uint32_t *d = dest;
	*d = GPACK_ZDZ(argv[0], argv[1]);
}
static void f3dex2_GPACK_RGB24A8(void *dest, uint32_t *argv) {
	uint32_t *d = dest;
	*d = GPACK_RGB24A8(argv[0], argv[1]);
}
static void f3dex2_GPACK_RGBA8888(void *dest, uint32_t *argv) {
	uint32_t *d = dest;
	*d = GPACK_RGBA8888(argv[0], argv[1], argv[2], argv[3]);
}
static void f3dex2_GPACK_RGBA5551(void *dest, uint32_t *argv) {
	uint32_t *d = dest;
	*d = GPACK_RGBA5551(argv[0], argv[1], argv[2], argv[3]);
}
static void f3dex2_GBL_c2(void *dest, uint32_t *argv) {
	uint32_t *d = dest;
	*d = GBL_c2(argv[0], argv[1], argv[2], argv[3]);
}
static void f3dex2_GBL_c1(void *dest, uint32_t *argv) {
	uint32_t *d = dest;
	*d = GBL_c1(argv[0], argv[1], argv[2], argv[3]);
}
static const struct pool f3dex2_pool[] = {
	REGFUNC(qs205, 1, 1)
	, REGFUNC(qs1616, 1, 1)
	, REGFUNC(qs1516, 1, 1)
	, REGFUNC(qs142, 1, 1)
	, REGFUNC(qs132, 1, 1)
	, REGFUNC(qu105, 1, 1)
	, REGFUNC(qs105, 1, 1)
	, REGFUNC(qu102, 1, 1)
	, REGFUNC(qs102, 1, 1)
	, REGFUNC(qu510, 1, 1)
	, REGFUNC(qs510, 1, 1)
	, REGFUNC(qs48, 1, 1)
	, REGFUNC(qu016, 1, 1)
	, REGFUNC(qu08, 1, 1)
	, REGFUNC(gsDPHalf2, 1, 0)
	, REGFUNC(gsDPHalf1, 1, 0)
	, REGFUNC(gsSPPerspNormalize, 1, 0)
	, REGFUNC(gsSPDmaWrite, 3, 0)
	, REGFUNC(gsSPDmaRead, 3, 0)
	, REGFUNC(gsSPDma_io, 4, 0)
	, REGFUNC(gsSPSetOtherMode, 4, 0)
	, REGFUNC(gsSPGeometryMode, 2, 0)
	, REGFUNC(gsSPViewport, 1, 0)
	, REGFUNC(gsSPVertex, 3, 0)
	, REGFUNC(gsSPTexture, 5, 0)
	, REGFUNC(gsSPPopMatrixN, 2, 0)
	, REGFUNC(gsSPPopMatrix, 1, 0)
	, REGFUNC(gsSPMatrix, 2, 0)
	, REGFUNC(gsSPLookAtY, 1, 0)
	, REGFUNC(gsSPLookAtX, 1, 0)
	, REGFUNC(gsSPLoadGeometryMode, 1, 0)
	, REGFUNC(gsSPClearGeometryMode, 1, 0)
	, REGFUNC(gsSPSetGeometryMode, 1, 0)
	, REGFUNC(gsSPForceMatrix, 1, 0)
	, REGFUNC(gsSP1Quadrangle, 5, 0)
	, REGFUNC(gsSPLoadUcodeEx, 3, 0)
	, REGFUNC(gsSPModifyVertex, 3, 0)
	, REGFUNC(gsSPLoadUcode, 2, 0)
	, REGFUNC(gsSPLineW3D, 4, 0)
	, REGFUNC(gsSPCullDisplayList, 2, 0)
	, REGFUNC(gsSPBranchLessZrg, 8, 0)
	, REGFUNC(gsSPBranchLessZ, 6, 0)
	, REGFUNC(gsSP2Triangles, 8, 0)
	, REGFUNC(gsSP1Triangle, 4, 0)
	, REGFUNC(gsSPNoOp, 0, 0)
	, REGFUNC(gsDPSetOtherMode, 2, 0)
	, REGFUNC(gsSPSetOtherModeHi, 3, 0)
	, REGFUNC(gsSPSetOtherModeLo, 3, 0)
	, REGFUNC(gsDPSetCombine, 1, 0)
	, REGFUNC(gsDPLoadTile, 5, 0)
	, REGFUNC(gsDPLoadTLUT, 3, 0)
	, REGFUNC(gsDPLoadTLUTCmd, 2, 0)
	, REGFUNC(gsSPSelectBranchDL, 4, 0)
	, REGFUNC(gsSPSelectDL, 4, 0)
	, REGFUNC(gsSPObjLoadTxSprite, 1, 0)
	, REGFUNC(gsSPObjLoadTxRectR, 1, 0)
	, REGFUNC(gsSPObjLoadTxRect, 1, 0)
	, REGFUNC(gsSPObjLoadTxtr, 1, 0)
	, REGFUNC(gsSPObjRenderMode, 1, 0)
	, REGFUNC(gsSPObjSubMatrix, 1, 0)
	, REGFUNC(gsSPObjMatrix, 1, 0)
	, REGFUNC(gsSPObjSprite, 1, 0)
	, REGFUNC(gsSPObjRectangleR, 1, 0)
	, REGFUNC(gsSPObjRectangle, 1, 0)
	, REGFUNC(gsSPBgRect1Cyc, 1, 0)
	, REGFUNC(gsSPBgRectCopy, 1, 0)
	, REGFUNC(gsSPScisTextureRectangleFlip, 9, 0)
	, REGFUNC(gsSPTextureRectangleFlip, 9, 0)
	, REGFUNC(gsSPScisTextureRectangle, 9, 0)
	, REGFUNC(gsSPTextureRectangle, 9, 0)
	, REGFUNC(gsSPSetStatus, 2, 0)
	, REGFUNC(gsSPSegment, 2, 0)
	, REGFUNC(gsSPLookAt, 1, 0)
	, REGFUNC(gsSPLine3D, 3, 0)
	, REGFUNC(gsSPFogPosition, 2, 0)
	, REGFUNC(gsSPEndDisplayList, 0, 0)
	, REGFUNC(gsSPDisplayList, 1, 0)
	, REGFUNC(gsSPClipRatio, 1, 0)
	, REGFUNC(gsSPBranchList, 1, 0)
	, REGFUNC(gsDPSetTileSize, 5, 0)
	, REGFUNC(gsDPSetTile, 12, 0)
	, REGFUNC(gsDPSetTexturePersp, 1, 0)
	, REGFUNC(gsDPSetTextureLUT, 1, 0)
	, REGFUNC(gsDPSetTextureLOD, 1, 0)
	, REGFUNC(gsDPSetTextureFilter, 1, 0)
	, REGFUNC(gsDPSetTextureDetail, 1, 0)
	, REGFUNC(gsDPSetScissorFrac, 5, 0)
	, REGFUNC(gsDPSetScissor, 5, 0)
	, REGFUNC(gsDPSetRenderMode, 2, 0)
	, REGFUNC(gsDPSetPrimDepth, 2, 0)
	, REGFUNC(gsDPSetKeyR, 3, 0)
	, REGFUNC(gsDPSetKeyGB, 6, 0)
	, REGFUNC(gsDPSetCombineKey, 1, 0)
	, REGFUNC(gsDPSetDepthSource, 1, 0)
	, REGFUNC(gsDPSetCycleType, 1, 0)
	, REGFUNC(gsDPSetTextureConvert, 1, 0)
	, REGFUNC(gsDPSetConvert, 6, 0)
	, REGFUNC(gsDPSetCombineLERP, 16, 0)
	, REGEXPANSION("gsDPSetCombineMode", "gsDPSetCombineLERP")
	, REGFUNC(gsDPSetColorDither, 1, 0)
	, REGFUNC(gsDPSetAlphaDither, 1, 0)
	, REGFUNC(gsDPSetAlphaCompare, 1, 0)
	, REGFUNC(gsDPSetTextureImage, 4, 0)
	, REGFUNC(gsDPSetDepthImage, 1, 0)
	, REGFUNC(gsDPSetColorImage, 4, 0)
	, REGFUNC(gsDPSetPrimColor, 6, 0)
	, REGFUNC(gsDPSetFogColor, 4, 0)
	, REGFUNC(gsDPSetFillColor, 1, 0)
	, REGFUNC(gsDPSetEnvColor, 4, 0)
	, REGFUNC(gsDPSetBlendColor, 4, 0)
	, REGFUNC(gsDPPipelineMode, 1, 0)
	, REGFUNC(gsDPNoOpTag, 1, 0)
	, REGFUNC(gsDPNoOp, 0, 0)
	, REGFUNC(gsDPLoadBlock, 5, 0)
	, REGFUNC(gsDPLoadMultiTileYuv, 18, 0)
	, REGFUNC(gsDPLoadMultiTile_4b, 17, 0)
	, REGFUNC(gsDPLoadMultiTile, 18, 0)
	, REGFUNC(gsDPLoadTextureTileYuv, 16, 0)
	, REGFUNC(gsDPLoadTextureTile_4b, 15, 0)
	, REGFUNC(gsDPLoadTextureTile, 16, 0)
	, REGFUNC(gsDPLoadMultiBlockYuvS, 14, 0)
	, REGFUNC(gsDPLoadMultiBlockYuv, 14, 0)
	, REGFUNC(gsDPLoadMultiBlock_4bS, 13, 0)
	, REGFUNC(gsDPLoadMultiBlock_4b, 13, 0)
	, REGFUNC(gsDPLoadMultiBlockS, 14, 0)
	, REGFUNC(gsDPLoadMultiBlock, 14, 0)
	, REGFUNC(gsDPLoadTextureBlockYuvS, 12, 0)
	, REGFUNC(gsDPLoadTextureBlockYuv, 12, 0)
	, REGFUNC(gsDPLoadTextureBlock_4bS, 11, 0)
	, REGFUNC(gsDPLoadTextureBlock_4b, 11, 0)
	, REGFUNC(gsDPLoadTextureBlockS, 12, 0)
	, REGFUNC(gsDPLoadTextureBlock, 12, 0)
	, REGFUNC(gsDPLoadTLUT_pal256, 1, 0)
	, REGFUNC(gsDPLoadTLUT_pal16, 2, 0)
	, REGFUNC(gsDPPipeSync, 0, 0)
	, REGFUNC(gsDPTileSync, 0, 0)
	, REGFUNC(gsDPLoadSync, 0, 0)
	, REGFUNC(gsDPFullSync, 0, 0)
	, REGFUNC(gsDPScisFillRectangle, 4, 0)
	, REGFUNC(gsDPFillRectangle, 4, 0)
	, REGFUNC(GPACK_ZDZ, 2, 0)
	, REGFUNC(GPACK_RGB24A8, 2, 0)
	, REGFUNC(GPACK_RGBA8888, 4, 0)
	, REGFUNC(GPACK_RGBA5551, 4, 0)
	, REGVAL(G_MAXFBZ)
	, REGVAL(G_MAXZ)
	, REGVAL(G_OBJ_FLAG_FLIPT)
	, REGVAL(G_OBJ_FLAG_FLIPS)
	, REGVAL(G_OBJLT_TLUT)
	, REGVAL(G_OBJLT_TXTRTILE)
	, REGVAL(G_OBJLT_TXTRBLOCK)
	, REGVAL(G_BG_FLAG_FLIPT)
	, REGVAL(G_BG_FLAG_FLIPS)
	, REGVAL(G_BGLT_LOADTILE)
	, REGVAL(G_BGLT_LOADBLOCK)
	, REGVAL(NUMLIGHTS_7)
	, REGVAL(NUMLIGHTS_6)
	, REGVAL(NUMLIGHTS_5)
	, REGVAL(NUMLIGHTS_4)
	, REGVAL(NUMLIGHTS_3)
	, REGVAL(NUMLIGHTS_2)
	, REGVAL(NUMLIGHTS_1)
	, REGVAL(NUMLIGHTS_0)
	, REGVAL(FRUSTRATIO_6)
	, REGVAL(FRUSTRATIO_5)
	, REGVAL(FRUSTRATIO_4)
	, REGVAL(FRUSTRATIO_3)
	, REGVAL(FRUSTRATIO_2)
	, REGVAL(FRUSTRATIO_1)
	, REGVAL(G_MVO_L7)
	, REGVAL(G_MVO_L6)
	, REGVAL(G_MVO_L5)
	, REGVAL(G_MVO_L4)
	, REGVAL(G_MVO_L3)
	, REGVAL(G_MVO_L2)
	, REGVAL(G_MVO_L1)
	, REGVAL(G_MVO_L0)
	, REGVAL(G_MVO_LOOKATY)
	, REGVAL(G_MVO_LOOKATX)
	, REGVAL(G_MV_MATRIX)
	, REGVAL(G_MV_POINT)
	, REGVAL(G_MV_LIGHT)
	, REGVAL(G_MV_VIEWPORT)
	, REGVAL(G_MV_PMTX)
	, REGVAL(G_MV_MMTX)
	, REGVAL(G_MWO_bLIGHT_8)
	, REGVAL(G_MWO_aLIGHT_8)
	, REGVAL(G_MWO_bLIGHT_7)
	, REGVAL(G_MWO_aLIGHT_7)
	, REGVAL(G_MWO_bLIGHT_6)
	, REGVAL(G_MWO_aLIGHT_6)
	, REGVAL(G_MWO_bLIGHT_5)
	, REGVAL(G_MWO_aLIGHT_5)
	, REGVAL(G_MWO_bLIGHT_4)
	, REGVAL(G_MWO_aLIGHT_4)
	, REGVAL(G_MWO_bLIGHT_3)
	, REGVAL(G_MWO_aLIGHT_3)
	, REGVAL(G_MWO_bLIGHT_2)
	, REGVAL(G_MWO_aLIGHT_2)
	, REGVAL(G_MWO_POINT_ZSCREEN)
	, REGVAL(G_MWO_POINT_XYSCREEN)
	, REGVAL(G_MWO_POINT_ST)
	, REGVAL(G_MWO_POINT_RGBA)
	, REGVAL(G_MWO_MATRIX_WZ_WW_F)
	, REGVAL(G_MWO_MATRIX_WX_WY_F)
	, REGVAL(G_MWO_MATRIX_ZZ_ZW_F)
	, REGVAL(G_MWO_MATRIX_ZX_ZY_F)
	, REGVAL(G_MWO_MATRIX_YZ_YW_F)
	, REGVAL(G_MWO_MATRIX_YX_YY_F)
	, REGVAL(G_MWO_MATRIX_XZ_XW_F)
	, REGVAL(G_MWO_MATRIX_XX_XY_F)
	, REGVAL(G_MWO_MATRIX_WZ_WW_I)
	, REGVAL(G_MWO_MATRIX_WX_WY_I)
	, REGVAL(G_MWO_MATRIX_ZZ_ZW_I)
	, REGVAL(G_MWO_MATRIX_ZX_ZY_I)
	, REGVAL(G_MWO_MATRIX_YZ_YW_I)
	, REGVAL(G_MWO_MATRIX_YX_YY_I)
	, REGVAL(G_MWO_MATRIX_XZ_XW_I)
	, REGVAL(G_MWO_MATRIX_XX_XY_I)
	, REGVAL(G_MWO_bLIGHT_1)
	, REGVAL(G_MWO_aLIGHT_1)
	, REGVAL(G_MWO_FOG)
	, REGVAL(G_MWO_SEGMENT_F)
	, REGVAL(G_MWO_SEGMENT_E)
	, REGVAL(G_MWO_SEGMENT_D)
	, REGVAL(G_MWO_SEGMENT_C)
	, REGVAL(G_MWO_SEGMENT_B)
	, REGVAL(G_MWO_SEGMENT_A)
	, REGVAL(G_MWO_SEGMENT_9)
	, REGVAL(G_MWO_SEGMENT_8)
	, REGVAL(G_MWO_SEGMENT_7)
	, REGVAL(G_MWO_SEGMENT_6)
	, REGVAL(G_MWO_SEGMENT_5)
	, REGVAL(G_MWO_SEGMENT_4)
	, REGVAL(G_MWO_SEGMENT_3)
	, REGVAL(G_MWO_SEGMENT_2)
	, REGVAL(G_MWO_SEGMENT_1)
	, REGVAL(G_MWO_SEGMENT_0)
	, REGVAL(G_MWO_CLIP_RPY)
	, REGVAL(G_MWO_CLIP_RPX)
	, REGVAL(G_MWO_CLIP_RNY)
	, REGVAL(G_MWO_CLIP_RNX)
	, REGVAL(G_MWO_NUMLIGHT)
	, REGVAL(G_MW_FORCEMTX)
	, REGVAL(G_MW_PERSPNORM)
	, REGVAL(G_MW_LIGHTCOL)
	, REGVAL(G_MW_GENSTAT)
	, REGVAL(G_MW_FOG)
	, REGVAL(G_MW_SEGMENT)
	, REGVAL(G_MW_CLIP)
	, REGVAL(G_MW_NUMLIGHT)
	, REGVAL(G_MW_MATRIX)
	, REGVAL(G_MTX_PROJECTION)
	, REGVAL(G_MTX_MODELVIEW)
	, REGVAL(G_MTX_PUSH)
	, REGVAL(G_MTX_NOPUSH)
	, REGVAL(G_MTX_LOAD)
	, REGVAL(G_MTX_MUL)
	, REGVAL(G_BZ_ORTHO)
	, REGVAL(G_BZ_PERSP)
	, REGVAL(G_SC_ODD_INTERLACE)
	, REGVAL(G_SC_EVEN_INTERLACE)
	, REGVAL(G_SC_NON_INTERLACE)
	, REGEXPANSION("G_CC_PASS2", "0 , 0 , 0 , COMBINED , 0 , 0 , 0 , COMBINED")
	, REGEXPANSION("G_CC_YUV2RGB", "TEXEL1 , K4 , K5 , TEXEL1 , 0 , 0 , 0 , 0")
	, REGEXPANSION("G_CC_CHROMA_KEY2", "TEXEL0 , CENTER , SCALE , 0 , 0 , 0 , 0 , 0")
	, REGEXPANSION("G_CC_HILITERGBPASSA2", "ENVIRONMENT , COMBINED , TEXEL0 , COMBINED , 0 , 0 , 0 , COMBINED")
	, REGEXPANSION("G_CC_HILITERGBDECALA2", "ENVIRONMENT , COMBINED , TEXEL0 , COMBINED , 0 , 0 , 0 , TEXEL0")
	, REGEXPANSION("G_CC_HILITERGBA2", "ENVIRONMENT , COMBINED , TEXEL0 , COMBINED , ENVIRONMENT , COMBINED , TEXEL0 , COMBINED")
	, REGEXPANSION("G_CC_HILITERGB2", "ENVIRONMENT , COMBINED , TEXEL0 , COMBINED , 0 , 0 , 0 , SHADE")
	, REGEXPANSION("G_CC_BLENDIA2", "ENVIRONMENT , SHADE , COMBINED , SHADE , COMBINED , 0 , SHADE , 0")
	, REGEXPANSION("G_CC_BLENDI2", "ENVIRONMENT , SHADE , COMBINED , SHADE , 0 , 0 , 0 , SHADE")
	, REGEXPANSION("G_CC_DECALRGB2", "0 , 0 , 0 , COMBINED , 0 , 0 , 0 , SHADE")
	, REGEXPANSION("G_CC_MODULATERGBA_PRIM2", "G_CC_MODULATEIA_PRIM2")
	, REGEXPANSION("G_CC_MODULATERGB_PRIM2", "G_CC_MODULATEI_PRIM2")
	, REGEXPANSION("G_CC_MODULATEIA_PRIM2", "COMBINED , 0 , PRIMITIVE , 0 , COMBINED , 0 , PRIMITIVE , 0")
	, REGEXPANSION("G_CC_MODULATEI_PRIM2", "COMBINED , 0 , PRIMITIVE , 0 , 0 , 0 , 0 , PRIMITIVE")
	, REGEXPANSION("G_CC_MODULATERGBA2", "G_CC_MODULATEIA2")
	, REGEXPANSION("G_CC_MODULATERGB2", "G_CC_MODULATEI2")
	, REGEXPANSION("G_CC_MODULATEIA2", "COMBINED , 0 , SHADE , 0 , COMBINED , 0 , SHADE , 0")
	, REGEXPANSION("G_CC_MODULATEI2", "COMBINED , 0 , SHADE , 0 , 0 , 0 , 0 , SHADE")
	, REGEXPANSION("G_CC_INTERFERENCE", "TEXEL0 , 0 , TEXEL1 , 0 , TEXEL0 , 0 , TEXEL1 , 0")
	, REGEXPANSION("G_CC_TRILERP", "TEXEL1 , TEXEL0 , LOD_FRACTION , TEXEL0 , TEXEL1 , TEXEL0 , LOD_FRACTION , TEXEL0")
	, REGEXPANSION("G_CC_BLENDPEDECALA", "PRIMITIVE , ENVIRONMENT , TEXEL0 , ENVIRONMENT , 0 , 0 , 0 , TEXEL0")
	, REGEXPANSION("G_CC_BLENDPE", "PRIMITIVE , ENVIRONMENT , TEXEL0 , ENVIRONMENT , TEXEL0 , 0 , SHADE , 0")
	, REGEXPANSION("G_CC_SHADEDECALA", "0 , 0 , 0 , SHADE , 0 , 0 , 0 , TEXEL0")
	, REGEXPANSION("G_CC_ADDRGBDECALA", "1 , 0 , TEXEL0 , SHADE , 0 , 0 , 0 , TEXEL0")
	, REGEXPANSION("G_CC_ADDRGB", "1 , 0 , TEXEL0 , SHADE , 0 , 0 , 0 , SHADE")
	, REGEXPANSION("G_CC_SHADE", "0 , 0 , 0 , SHADE , 0 , 0 , 0 , SHADE")
	, REGEXPANSION("G_CC_PRIMITIVE", "0 , 0 , 0 , PRIMITIVE , 0 , 0 , 0 , PRIMITIVE")
	, REGEXPANSION("G_CC_1CYUV2RGB", "TEXEL0 , K4 , K5 , TEXEL0 , 0 , 0 , 0 , SHADE")
	, REGEXPANSION("G_CC_HILITERGBDECALA", "PRIMITIVE , SHADE , TEXEL0 , SHADE , 0 , 0 , 0 , TEXEL0")
	, REGEXPANSION("G_CC_HILITERGBA", "PRIMITIVE , SHADE , TEXEL0 , SHADE , PRIMITIVE , SHADE , TEXEL0 , SHADE")
	, REGEXPANSION("G_CC_HILITERGB", "PRIMITIVE , SHADE , TEXEL0 , SHADE , 0 , 0 , 0 , SHADE")
	, REGEXPANSION("G_CC_REFLECTRGBDECALA", "ENVIRONMENT , 0 , TEXEL0 , SHADE , 0 , 0 , 0 , TEXEL0")
	, REGEXPANSION("G_CC_REFLECTRGB", "ENVIRONMENT , 0 , TEXEL0 , SHADE , 0 , 0 , 0 , SHADE")
	, REGEXPANSION("G_CC_BLENDRGBDECALA", "TEXEL0 , SHADE , TEXEL0_ALPHA , SHADE , 0 , 0 , 0 , TEXEL0")
	, REGEXPANSION("G_CC_BLENDRGBA", "TEXEL0 , SHADE , TEXEL0_ALPHA , SHADE , 0 , 0 , 0 , SHADE")
	, REGEXPANSION("G_CC_BLENDIDECALA", "ENVIRONMENT , SHADE , TEXEL0 , SHADE , 0 , 0 , 0 , TEXEL0")
	, REGEXPANSION("G_CC_BLENDIA", "ENVIRONMENT , SHADE , TEXEL0 , SHADE , TEXEL0 , 0 , SHADE , 0")
	, REGEXPANSION("G_CC_BLENDI", "ENVIRONMENT , SHADE , TEXEL0 , SHADE , 0 , 0 , 0 , SHADE")
	, REGEXPANSION("G_CC_DECALRGBA", "0 , 0 , 0 , TEXEL0 , 0 , 0 , 0 , TEXEL0")
	, REGEXPANSION("G_CC_DECALRGB", "0 , 0 , 0 , TEXEL0 , 0 , 0 , 0 , SHADE")
	, REGEXPANSION("G_CC_MODULATERGBDECALA_PRIM", "G_CC_MODULATEIDECALA_PRIM")
	, REGEXPANSION("G_CC_MODULATERGBA_PRIM", "G_CC_MODULATEIA_PRIM")
	, REGEXPANSION("G_CC_MODULATERGB_PRIM", "G_CC_MODULATEI_PRIM")
	, REGEXPANSION("G_CC_MODULATEIDECALA_PRIM", "TEXEL0 , 0 , PRIMITIVE , 0 , 0 , 0 , 0 , TEXEL0")
	, REGEXPANSION("G_CC_MODULATEIA_PRIM", "TEXEL0 , 0 , PRIMITIVE , 0 , TEXEL0 , 0 , PRIMITIVE , 0")
	, REGEXPANSION("G_CC_MODULATEI_PRIM", "TEXEL0 , 0 , PRIMITIVE , 0 , 0 , 0 , 0 , PRIMITIVE")
	, REGEXPANSION("G_CC_MODULATERGBDECALA", "G_CC_MODULATEIDECALA")
	, REGEXPANSION("G_CC_MODULATERGBA", "G_CC_MODULATEIA")
	, REGEXPANSION("G_CC_MODULATERGB", "G_CC_MODULATEI")
	, REGEXPANSION("G_CC_MODULATEIDECALA", "TEXEL0 , 0 , SHADE , 0 , 0 , 0 , 0 , TEXEL0")
	, REGEXPANSION("G_CC_MODULATEIA", "TEXEL0 , 0 , SHADE , 0 , TEXEL0 , 0 , SHADE , 0")
	, REGEXPANSION("G_CC_MODULATEI", "TEXEL0 , 0 , SHADE , 0 , 0 , 0 , 0 , SHADE")
	, REGVAL(G_ACMUX_PRIM_LOD_FRAC)
	, REGVAL(G_ACMUX_LOD_FRACTION)
	, REGVAL(G_ACMUX_0)
	, REGVAL(G_ACMUX_1)
	, REGVAL(G_ACMUX_ENVIRONMENT)
	, REGVAL(G_ACMUX_SHADE)
	, REGVAL(G_ACMUX_PRIMITIVE)
	, REGVAL(G_ACMUX_TEXEL1)
	, REGVAL(G_ACMUX_TEXEL0)
	, REGVAL(G_ACMUX_COMBINED)
	, REGVAL(G_CCMUX_K5)
	, REGVAL(G_CCMUX_PRIM_LOD_FRAC)
	, REGVAL(G_CCMUX_LOD_FRACTION)
	, REGVAL(G_CCMUX_ENV_ALPHA)
	, REGVAL(G_CCMUX_SHADE_ALPHA)
	, REGVAL(G_CCMUX_PRIMITIVE_ALPHA)
	, REGVAL(G_CCMUX_TEXEL1_ALPHA)
	, REGVAL(G_CCMUX_TEXEL0_ALPHA)
	, REGVAL(G_CCMUX_COMBINED_ALPHA)
	, REGVAL(G_CCMUX_SCALE)
	, REGVAL(G_CCMUX_K4)
	, REGVAL(G_CCMUX_CENTER)
	, REGVAL(G_CCMUX_0)
	, REGVAL(G_CCMUX_NOISE)
	, REGVAL(G_CCMUX_1)
	, REGVAL(G_CCMUX_ENVIRONMENT)
	, REGVAL(G_CCMUX_SHADE)
	, REGVAL(G_CCMUX_PRIMITIVE)
	, REGVAL(G_CCMUX_TEXEL1)
	, REGVAL(G_CCMUX_TEXEL0)
	, REGVAL(G_CCMUX_COMBINED)
	, REGVAL(G_CV_K5)
	, REGVAL(G_CV_K4)
	, REGVAL(G_CV_K3)
	, REGVAL(G_CV_K2)
	, REGVAL(G_CV_K1)
	, REGVAL(G_CV_K0)
	, REGVAL(G_PM_1PRIMITIVE)
	, REGVAL(G_PM_NPRIMITIVE)
	, REGVAL(G_CYC_FILL)
	, REGVAL(G_CYC_COPY)
	, REGVAL(G_CYC_2CYCLE)
	, REGVAL(G_CYC_1CYCLE)
	, REGVAL(G_TP_PERSP)
	, REGVAL(G_TP_NONE)
	, REGVAL(G_TD_DETAIL)
	, REGVAL(G_TD_SHARPEN)
	, REGVAL(G_TD_CLAMP)
	, REGVAL(G_TL_LOD)
	, REGVAL(G_TL_TILE)
	, REGVAL(G_TT_IA16)
	, REGVAL(G_TT_RGBA16)
	, REGVAL(G_TT_NONE)
	, REGVAL(G_TF_AVERAGE)
	, REGVAL(G_TF_BILERP)
	, REGVAL(G_TF_POINT)
	, REGVAL(G_TC_FILT)
	, REGVAL(G_TC_FILTCONV)
	, REGVAL(G_TC_CONV)
	, REGVAL(G_CK_KEY)
	, REGVAL(G_CK_NONE)
	, REGVAL(G_CD_ENABLE)
	, REGVAL(G_CD_DISABLE)
	, REGVAL(G_CD_NOISE)
	, REGVAL(G_CD_BAYER)
	, REGVAL(G_CD_MAGICSQ)
	, REGVAL(G_AD_DISABLE)
	, REGVAL(G_AD_NOISE)
	, REGVAL(G_AD_NOTPATTERN)
	, REGVAL(G_AD_PATTERN)
	, REGVAL(G_MDSIZ_PIPELINE)
	, REGVAL(G_MDSIZ_CYCLETYPE)
	, REGVAL(G_MDSIZ_TEXTPERSP)
	, REGVAL(G_MDSIZ_TEXTDETAIL)
	, REGVAL(G_MDSIZ_TEXTLOD)
	, REGVAL(G_MDSIZ_TEXTLUT)
	, REGVAL(G_MDSIZ_TEXTFILT)
	, REGVAL(G_MDSIZ_TEXTCONV)
	, REGVAL(G_MDSIZ_COMBKEY)
	, REGVAL(G_MDSIZ_RGBDITHER)
	, REGVAL(G_MDSIZ_ALPHADITHER)
	, REGVAL(G_MDSFT_PIPELINE)
	, REGVAL(G_MDSFT_CYCLETYPE)
	, REGVAL(G_MDSFT_TEXTPERSP)
	, REGVAL(G_MDSFT_TEXTDETAIL)
	, REGVAL(G_MDSFT_TEXTLOD)
	, REGVAL(G_MDSFT_TEXTLUT)
	, REGVAL(G_MDSFT_TEXTFILT)
	, REGVAL(G_MDSFT_TEXTCONV)
	, REGVAL(G_MDSFT_COMBKEY)
	, REGVAL(G_MDSFT_RGBDITHER)
	, REGVAL(G_MDSFT_ALPHADITHER)
	, REGVAL(G_OBJRM_WIDEN)
	, REGVAL(G_OBJRM_SHRINKSIZE_2)
	, REGVAL(G_OBJRM_SHRINKSIZE_1)
	, REGVAL(G_OBJRM_BILERP)
	, REGVAL(G_OBJRM_ANTIALIAS)
	, REGVAL(G_OBJRM_XLU)
	, REGVAL(G_OBJRM_NOTXCLAMP)
	, REGEXPANSION("G_RM_AA_XLU_SPRITE2", "G_RM_AA_XLU_SURF2")
	, REGEXPANSION("G_RM_AA_XLU_SPRITE", "G_RM_AA_XLU_SURF")
	, REGEXPANSION("G_RM_XLU_SPRITE2", "G_RM_XLU_SURF2")
	, REGEXPANSION("G_RM_XLU_SPRITE", "G_RM_XLU_SURF")
	, REGEXPANSION("G_RM_AA_SPRITE2", "G_RM_AA_TEX_TERR2")
	, REGEXPANSION("G_RM_AA_SPRITE", "G_RM_AA_TEX_TERR")
	, REGEXPANSION("G_RM_RA_SPRITE2", "(AA_EN | CVG_DST_CLAMP | ZMODE_OPA | CVG_X_ALPHA | ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_RA_SPRITE", "(AA_EN | CVG_DST_CLAMP | ZMODE_OPA | CVG_X_ALPHA | ALPHA_CVG_SEL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_SPRITE2", "G_RM_OPA_SURF2")
	, REGEXPANSION("G_RM_SPRITE", "G_RM_OPA_SURF")
	, REGEXPANSION("G_RM_NOOP2", "GBL_c2(0 , 0 , 0 , 0)")
	, REGEXPANSION("G_RM_NOOP", "GBL_c1(0 , 0 , 0 , 0)")
	, REGEXPANSION("G_RM_OPA_CI2", "(CVG_DST_CLAMP | ZMODE_OPA | GBL_c2(G_BL_CLR_IN , G_BL_0 , G_BL_CLR_IN , G_BL_1))")
	, REGEXPANSION("G_RM_OPA_CI", "(CVG_DST_CLAMP | ZMODE_OPA | GBL_c1(G_BL_CLR_IN , G_BL_0 , G_BL_CLR_IN , G_BL_1))")
	, REGEXPANSION("G_RM_VISCVG2", "(IM_RD | FORCE_BL | GBL_c2(G_BL_CLR_IN , G_BL_0 , G_BL_CLR_BL , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_VISCVG", "(IM_RD | FORCE_BL | GBL_c1(G_BL_CLR_IN , G_BL_0 , G_BL_CLR_BL , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_PASS", "GBL_c1(G_BL_CLR_IN , G_BL_0 , G_BL_CLR_IN , G_BL_1)")
	, REGEXPANSION("G_RM_FOG_PRIM_A", "GBL_c1(G_BL_CLR_FOG , G_BL_A_FOG , G_BL_CLR_IN , G_BL_1MA)")
	, REGEXPANSION("G_RM_FOG_SHADE_A", "GBL_c1(G_BL_CLR_FOG , G_BL_A_SHADE , G_BL_CLR_IN , G_BL_1MA)")
	, REGEXPANSION("G_RM_ADD2", "(IM_RD | CVG_DST_SAVE | ZMODE_OPA | FORCE_BL | GBL_c2(G_BL_CLR_IN , G_BL_A_FOG , G_BL_CLR_MEM , G_BL_1))")
	, REGEXPANSION("G_RM_ADD", "(IM_RD | CVG_DST_SAVE | ZMODE_OPA | FORCE_BL | GBL_c1(G_BL_CLR_IN , G_BL_A_FOG , G_BL_CLR_MEM , G_BL_1))")
	, REGEXPANSION("G_RM_ZB_OVL_SURF2", "(Z_CMP | IM_RD | CVG_DST_SAVE | ZMODE_DEC | FORCE_BL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_ZB_OVL_SURF", "(Z_CMP | IM_RD | CVG_DST_SAVE | ZMODE_DEC | FORCE_BL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_ZB_CLD_SURF2", "(Z_CMP | IM_RD | CVG_DST_SAVE | ZMODE_XLU | FORCE_BL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_ZB_CLD_SURF", "(Z_CMP | IM_RD | CVG_DST_SAVE | ZMODE_XLU | FORCE_BL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_CLD_SURF2", "(IM_RD | CVG_DST_SAVE | ZMODE_OPA | FORCE_BL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_CLD_SURF", "(IM_RD | CVG_DST_SAVE | ZMODE_OPA | FORCE_BL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_ZB_SUB_TERR2", "(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_FULL | ZMODE_OPA | ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_ZB_SUB_TERR", "(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_FULL | ZMODE_OPA | ALPHA_CVG_SEL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_SUB_TERR2", "(AA_EN | IM_RD | CVG_DST_FULL | ZMODE_OPA | ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_SUB_TERR", "(AA_EN | IM_RD | CVG_DST_FULL | ZMODE_OPA | ALPHA_CVG_SEL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_ZB_TEX_TERR2", "(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | CVG_X_ALPHA | ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_ZB_TEX_TERR", "(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | CVG_X_ALPHA | ALPHA_CVG_SEL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_TEX_TERR2", "(AA_EN | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | CVG_X_ALPHA | ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_TEX_TERR", "(AA_EN | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | CVG_X_ALPHA | ALPHA_CVG_SEL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_ZB_OPA_TERR2", "(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_ZB_OPA_TERR", "(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | ALPHA_CVG_SEL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_OPA_TERR2", "(AA_EN | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_OPA_TERR", "(AA_EN | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | ALPHA_CVG_SEL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_ZB_PCL_SURF2", "(G_AC_DITHER | AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_ZB_PCL_SURF", "(G_AC_DITHER | AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_ZB_PCL_SURF2", "(G_AC_DITHER | Z_CMP | Z_UPD | CVG_DST_FULL | ZMODE_OPA | GBL_c2(G_BL_CLR_IN , G_BL_0 , G_BL_CLR_IN , G_BL_1))")
	, REGEXPANSION("G_RM_ZB_PCL_SURF", "(G_AC_DITHER | Z_CMP | Z_UPD | CVG_DST_FULL | ZMODE_OPA | GBL_c1(G_BL_CLR_IN , G_BL_0 , G_BL_CLR_IN , G_BL_1))")
	, REGEXPANSION("G_RM_AA_PCL_SURF2", "(G_AC_DITHER | AA_EN | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_PCL_SURF", "(G_AC_DITHER | AA_EN | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_PCL_SURF2", "(G_AC_DITHER | CVG_DST_FULL | ZMODE_OPA | FORCE_BL | GBL_c2(G_BL_CLR_IN , G_BL_0 , G_BL_CLR_IN , G_BL_1))")
	, REGEXPANSION("G_RM_PCL_SURF", "(G_AC_DITHER | CVG_DST_FULL | ZMODE_OPA | FORCE_BL | GBL_c1(G_BL_CLR_IN , G_BL_0 , G_BL_CLR_IN , G_BL_1))")
	, REGEXPANSION("G_RM_AA_ZB_SUB_SURF2", "(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_FULL | ZMODE_OPA | ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_AA_ZB_SUB_SURF", "(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_FULL | ZMODE_OPA | ALPHA_CVG_SEL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_AA_SUB_SURF2", "(AA_EN | IM_RD | CVG_DST_FULL | ZMODE_OPA | ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_AA_SUB_SURF", "(AA_EN | IM_RD | CVG_DST_FULL | ZMODE_OPA | ALPHA_CVG_SEL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_AA_ZB_TEX_INTER2", "(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_AA_ZB_TEX_INTER", "(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_AA_ZB_TEX_EDGE2", "(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | CVG_X_ALPHA | ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_AA_ZB_TEX_EDGE", "(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | CVG_X_ALPHA | ALPHA_CVG_SEL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_AA_TEX_EDGE2", "(AA_EN | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | CVG_X_ALPHA | ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_AA_TEX_EDGE", "(AA_EN | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | CVG_X_ALPHA | ALPHA_CVG_SEL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_TEX_EDGE2", "(AA_EN | CVG_DST_CLAMP | ZMODE_OPA | CVG_X_ALPHA | ALPHA_CVG_SEL | FORCE_BL | GBL_c2(G_BL_CLR_IN , G_BL_0 , G_BL_CLR_IN , G_BL_1))")
	, REGEXPANSION("G_RM_TEX_EDGE", "(AA_EN | CVG_DST_CLAMP | ZMODE_OPA | CVG_X_ALPHA | ALPHA_CVG_SEL | FORCE_BL | GBL_c1(G_BL_CLR_IN , G_BL_0 , G_BL_CLR_IN , G_BL_1))")
	, REGEXPANSION("G_RM_AA_ZB_DEC_LINE2", "(AA_EN | Z_CMP | IM_RD | CVG_DST_SAVE | ZMODE_DEC | CVG_X_ALPHA | ALPHA_CVG_SEL | FORCE_BL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_ZB_DEC_LINE", "(AA_EN | Z_CMP | IM_RD | CVG_DST_SAVE | ZMODE_DEC | CVG_X_ALPHA | ALPHA_CVG_SEL | FORCE_BL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_DEC_LINE2", "(AA_EN | IM_RD | CVG_DST_FULL | ZMODE_OPA | CVG_X_ALPHA | ALPHA_CVG_SEL | FORCE_BL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_DEC_LINE", "(AA_EN | IM_RD | CVG_DST_FULL | ZMODE_OPA | CVG_X_ALPHA | ALPHA_CVG_SEL | FORCE_BL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_ZB_XLU_LINE2", "(AA_EN | Z_CMP | IM_RD | CVG_DST_CLAMP | ZMODE_XLU | CVG_X_ALPHA | ALPHA_CVG_SEL | FORCE_BL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_ZB_XLU_LINE", "(AA_EN | Z_CMP | IM_RD | CVG_DST_CLAMP | ZMODE_XLU | CVG_X_ALPHA | ALPHA_CVG_SEL | FORCE_BL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_XLU_LINE2", "(AA_EN | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | CVG_X_ALPHA | ALPHA_CVG_SEL | FORCE_BL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_XLU_LINE", "(AA_EN | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | CVG_X_ALPHA | ALPHA_CVG_SEL | FORCE_BL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_ZB_XLU_INTER2", "(AA_EN | Z_CMP | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_INTER | FORCE_BL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_ZB_XLU_INTER", "(AA_EN | Z_CMP | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_INTER | FORCE_BL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_RA_ZB_OPA_INTER2", "(AA_EN | Z_CMP | Z_UPD | CVG_DST_CLAMP | ZMODE_INTER | ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_RA_ZB_OPA_INTER", "(AA_EN | Z_CMP | Z_UPD | CVG_DST_CLAMP | ZMODE_INTER | ALPHA_CVG_SEL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_AA_ZB_OPA_INTER2", "(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_AA_ZB_OPA_INTER", "(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | ALPHA_CVG_SEL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_AA_ZB_XLU_DECAL2", "(AA_EN | Z_CMP | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_DEC | FORCE_BL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_ZB_XLU_DECAL", "(AA_EN | Z_CMP | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_DEC | FORCE_BL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_ZB_XLU_DECAL2", "(Z_CMP | IM_RD | CVG_DST_FULL | ZMODE_DEC | FORCE_BL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_ZB_XLU_DECAL", "(Z_CMP | IM_RD | CVG_DST_FULL | ZMODE_DEC | FORCE_BL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_RA_ZB_OPA_DECAL2", "(AA_EN | Z_CMP | CVG_DST_WRAP | ZMODE_DEC | ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_RA_ZB_OPA_DECAL", "(AA_EN | Z_CMP | CVG_DST_WRAP | ZMODE_DEC | ALPHA_CVG_SEL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_AA_ZB_OPA_DECAL2", "(AA_EN | Z_CMP | IM_RD | CVG_DST_WRAP | ZMODE_DEC | ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_AA_ZB_OPA_DECAL", "(AA_EN | Z_CMP | IM_RD | CVG_DST_WRAP | ZMODE_DEC | ALPHA_CVG_SEL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_ZB_OPA_DECAL2", "(Z_CMP | CVG_DST_FULL | ZMODE_DEC | ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_ZB_OPA_DECAL", "(Z_CMP | CVG_DST_FULL | ZMODE_DEC | ALPHA_CVG_SEL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_AA_ZB_XLU_SURF2", "(AA_EN | Z_CMP | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_ZB_XLU_SURF", "(AA_EN | Z_CMP | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_ZB_XLU_SURF2", "(Z_CMP | IM_RD | CVG_DST_FULL | ZMODE_XLU | FORCE_BL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_ZB_XLU_SURF", "(Z_CMP | IM_RD | CVG_DST_FULL | ZMODE_XLU | FORCE_BL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_XLU_SURF2", "(AA_EN | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_OPA | FORCE_BL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_AA_XLU_SURF", "(AA_EN | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_OPA | FORCE_BL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_XLU_SURF2", "(IM_RD | CVG_DST_FULL | ZMODE_OPA | FORCE_BL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_XLU_SURF", "(IM_RD | CVG_DST_FULL | ZMODE_OPA | FORCE_BL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_1MA))")
	, REGEXPANSION("G_RM_RA_ZB_OPA_SURF2", "(AA_EN | Z_CMP | Z_UPD | CVG_DST_CLAMP | ZMODE_OPA | ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_RA_ZB_OPA_SURF", "(AA_EN | Z_CMP | Z_UPD | CVG_DST_CLAMP | ZMODE_OPA | ALPHA_CVG_SEL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_AA_ZB_OPA_SURF2", "(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_AA_ZB_OPA_SURF", "(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | ALPHA_CVG_SEL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_ZB_OPA_SURF2", "(Z_CMP | Z_UPD | CVG_DST_FULL | ZMODE_OPA | ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_ZB_OPA_SURF", "(Z_CMP | Z_UPD | CVG_DST_FULL | ZMODE_OPA | ALPHA_CVG_SEL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_RA_OPA_SURF2", "(AA_EN | CVG_DST_CLAMP | ZMODE_OPA | ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_RA_OPA_SURF", "(AA_EN | CVG_DST_CLAMP | ZMODE_OPA | ALPHA_CVG_SEL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_AA_OPA_SURF2", "(AA_EN | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_AA_OPA_SURF", "(AA_EN | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | ALPHA_CVG_SEL | GBL_c1(G_BL_CLR_IN , G_BL_A_IN , G_BL_CLR_MEM , G_BL_A_MEM))")
	, REGEXPANSION("G_RM_OPA_SURF2", "(CVG_DST_CLAMP | ZMODE_OPA | FORCE_BL | GBL_c2(G_BL_CLR_IN , G_BL_0 , G_BL_CLR_IN , G_BL_1))")
	, REGEXPANSION("G_RM_OPA_SURF", "(CVG_DST_CLAMP | ZMODE_OPA | FORCE_BL | GBL_c1(G_BL_CLR_IN , G_BL_0 , G_BL_CLR_IN , G_BL_1))")
	, REGFUNC(GBL_c2, 4, 0)
	, REGFUNC(GBL_c1, 4, 0)
	, REGVAL(G_BL_A_SHADE)
	, REGVAL(G_BL_A_MEM)
	, REGVAL(G_BL_A_FOG)
	, REGVAL(G_BL_A_IN)
	, REGVAL(G_BL_CLR_FOG)
	, REGVAL(G_BL_CLR_BL)
	, REGVAL(G_BL_CLR_MEM)
	, REGVAL(G_BL_CLR_IN)
	, REGVAL(G_BL_0)
	, REGVAL(G_BL_1)
	, REGVAL(G_BL_1MA)
	, REGVAL(FORCE_BL)
	, REGVAL(ALPHA_CVG_SEL)
	, REGVAL(CVG_X_ALPHA)
	, REGVAL(ZMODE_DEC)
	, REGVAL(ZMODE_XLU)
	, REGVAL(ZMODE_INTER)
	, REGVAL(ZMODE_OPA)
	, REGVAL(CVG_DST_SAVE)
	, REGVAL(CVG_DST_FULL)
	, REGVAL(CVG_DST_WRAP)
	, REGVAL(CVG_DST_CLAMP)
	, REGVAL(CLR_ON_CVG)
	, REGVAL(IM_RD)
	, REGVAL(Z_UPD)
	, REGVAL(Z_CMP)
	, REGVAL(AA_EN)
	, REGVAL(G_ZS_PRIM)
	, REGVAL(G_ZS_PIXEL)
	, REGVAL(G_AC_DITHER)
	, REGVAL(G_AC_THRESHOLD)
	, REGVAL(G_AC_NONE)
	, REGVAL(G_MDSIZ_RENDERMODE)
	, REGVAL(G_MDSIZ_ZSRCSEL)
	, REGVAL(G_MDSIZ_ALPHACOMPARE)
	, REGVAL(G_MDSFT_RENDERMODE)
	, REGVAL(G_MDSFT_ZSRCSEL)
	, REGVAL(G_MDSFT_ALPHACOMPARE)
	, REGVAL(G_SHADING_SMOOTH)
	, REGVAL(G_CULL_BACK)
	, REGVAL(G_CULL_FRONT)
	, REGVAL(G_TEXTURE_ENABLE)
	, REGVAL(G_CLIPPING)
	, REGVAL(G_LOD)
	, REGVAL(G_TEXTURE_GEN_LINEAR)
	, REGVAL(G_TEXTURE_GEN)
	, REGVAL(G_LIGHTING)
	, REGVAL(G_FOG)
	, REGVAL(G_CULL_BOTH)
	, REGVAL(G_SHADE)
	, REGVAL(G_ZBUFFER)
	, REGVAL(G_TX_RENDERTILE)
	, REGVAL(G_TX_LOADTILE)
	, REGVAL(G_ON)
	, REGVAL(G_OFF)
	, REGVAL(G_TX_NOLOD)
	, REGVAL(G_TX_NOMASK)
	, REGVAL(G_TX_CLAMP)
	, REGVAL(G_TX_WRAP)
	, REGVAL(G_TX_MIRROR)
	, REGVAL(G_TX_NOMIRROR)
	, REGVAL(G_IM_SIZ_32b)
	, REGVAL(G_IM_SIZ_16b)
	, REGVAL(G_IM_SIZ_8b)
	, REGVAL(G_IM_SIZ_4b)
	, REGVAL(G_IM_FMT_I)
	, REGVAL(G_IM_FMT_IA)
	, REGVAL(G_IM_FMT_CI)
	, REGVAL(G_IM_FMT_YUV)
	, REGVAL(G_IM_FMT_RGBA)
	, REGVAL(G_RDPHALF_0)
	, REGVAL(G_OBJ_MOVEMEM)
	, REGVAL(G_OBJ_RECTANGLE_R)
	, REGVAL(G_OBJ_RENDERMODE)
	, REGVAL(G_BG_COPY)
	, REGVAL(G_BG_1CYC)
	, REGVAL(G_OBJ_LDTX_RECT_R)
	, REGVAL(G_OBJ_LDTX_RECT)
	, REGVAL(G_OBJ_LDTX_SPRITE)
	, REGVAL(G_OBJ_LOADTXTR)
	, REGVAL(G_SELECT_DL)
	, REGVAL(G_OBJ_SPRITE)
	, REGVAL(G_OBJ_RECTANGLE)
	, REGVAL(G_SETCIMG)
	, REGVAL(G_SETZIMG)
	, REGVAL(G_SETTIMG)
	, REGVAL(G_SETCOMBINE)
	, REGVAL(G_SETENVCOLOR)
	, REGVAL(G_SETPRIMCOLOR)
	, REGVAL(G_SETBLENDCOLOR)
	, REGVAL(G_SETFOGCOLOR)
	, REGVAL(G_SETFILLCOLOR)
	, REGVAL(G_FILLRECT)
	, REGVAL(G_SETTILE)
	, REGVAL(G_LOADTILE)
	, REGVAL(G_LOADBLOCK)
	, REGVAL(G_SETTILESIZE)
	, REGVAL(G_LOADTLUT)
	, REGVAL(G_RDPSETOTHERMODE)
	, REGVAL(G_SETPRIMDEPTH)
	, REGVAL(G_SETSCISSOR)
	, REGVAL(G_SETCONVERT)
	, REGVAL(G_SETKEYR)
	, REGVAL(G_SETKEYGB)
	, REGVAL(G_RDPFULLSYNC)
	, REGVAL(G_RDPTILESYNC)
	, REGVAL(G_RDPPIPESYNC)
	, REGVAL(G_RDPLOADSYNC)
	, REGVAL(G_TEXRECTFLIP)
	, REGVAL(G_TEXRECT)
	, REGVAL(G_RDPHALF_2)
	, REGVAL(G_SETOTHERMODE_H)
	, REGVAL(G_SETOTHERMODE_L)
	, REGVAL(G_RDPHALF_1)
	, REGVAL(G_SPNOOP)
	, REGVAL(G_ENDDL)
	, REGVAL(G_DL)
	, REGVAL(G_LOAD_UCODE)
	, REGVAL(G_MOVEMEM)
	, REGVAL(G_MOVEWORD)
	, REGVAL(G_MTX)
	, REGVAL(G_GEOMETRYMODE)
	, REGVAL(G_POPMTX)
	, REGVAL(G_TEXTURE)
	, REGVAL(G_DMA_IO)
	, REGVAL(G_SPECIAL_1)
	, REGVAL(G_SPECIAL_2)
	, REGVAL(G_SPECIAL_3)
	, REGVAL(G_LINE3D)
	, REGVAL(G_QUAD)
	, REGVAL(G_TRI2)
	, REGVAL(G_TRI1)
	, REGVAL(G_BRANCH_Z)
	, REGVAL(G_CULLDL)
	, REGVAL(G_MODIFYVTX)
	, REGVAL(G_VTX)
	, REGVAL(G_NOOP)
	, {0}
};
