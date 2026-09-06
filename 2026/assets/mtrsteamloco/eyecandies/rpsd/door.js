importPackage(java.awt);
importPackage(java.awt.geom);

include(Resources.idr("mtr_util.js"));

const MAP_SCALE = 4.4;

const model_l = ModelManager.uploadVertArrays(ModelManager.loadRawModel(Resources.manager(), Resources.idr("placement/door_left.csv"), null));

const model_r = ModelManager.uploadVertArrays(ModelManager.loadRawModel(Resources.manager(), Resources.idr("placement/door_right.csv"), null));

const light_off = ModelManager.uploadVertArrays(ModelManager.loadRawModel(Resources.manager(), Resources.idr("placement/door_light_off.csv"), null));

const light_on = ModelManager.uploadVertArrays(ModelManager.loadRawModel(Resources.manager(), Resources.idr("placement/door_light_on.csv"), null));

const OVERLAY = ModelManager.uploadVertArrays(ModelManager.loadRawModel(Resources.manager(), Resources.idr("placement/overlay_door.csv"), null));

function create(ctx, state, blockEntity) {
    state.etaRateLimit = new RateLimit(1);
    state.closestPlatform = getPlatform(blockEntity);
    state.pass = 3;
}

function render(ctx, state, blockEntity) {
    if(state.etaRateLimit.shouldUpdate()) {
        state.closestPlatform = getPlatform(blockEntity);
        if(state.pass > 0) {
            state.pass--;
            if(state.closestPlatform != null) {
                Packages.net.minecraft.client.Minecraft.getInstance().execute(() => {
                    let stripId = MTRClientData.DATA_CACHE.getColorStrip(state.closestPlatform.id).resourceLocation; 
                    let id = MTRClientData.DATA_CACHE.getDirectionArrow(state.closestPlatform.id, !FACE_RIGHT, FACE_RIGHT, Packages.mtr.data.IGui.HorizontalAlignment.CENTER, true, 0.25, MAP_SCALE, 0xFFFFFF, 0, 0).resourceLocation;
                    state.overlay = OVERLAY.copyForMaterialChanges();
                    state.overlay.replaceTexture("strip.png", stripId);
                    state.overlay.replaceTexture("tex.png", id);
                });
            }
        }
    }
    
    let mat = new Matrices();
    
    let doorOpenValue = blockEntity.doorOpen;

    mat.pushPose();
    mat.translate(-doorOpenValue, 0, 0);
    ctx.drawModel(model_l, mat);
    mat.popPose();
    
    
    mat.pushPose();
    mat.translate(1, 0, 0);
    mat.translate(doorOpenValue, 0, 0);
    ctx.drawModel(model_r, mat);
    mat.popPose();

    ctx.drawModel(doorOpenValue == 0 ? light_off : light_on, null);
    if(state.overlay != null) ctx.drawModel(state.overlay, null);
}

function getPlatform(blockEntity) {
    return MTRUtil.getClosePlatform(blockEntity.getWorldPos(), 5, 4, 4);
}