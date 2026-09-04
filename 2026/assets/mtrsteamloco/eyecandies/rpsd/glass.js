importPackage(java.awt);
importPackage(java.awt.geom);

include(Resources.idr("mtr_util.js"));

// const OVERLAY = ModelManager.uploadVertArrays(ModelManager.loadRawModel(Resources.manager(), Resources.idr("placement/overlay_glass_3.csv"), null));

const OVERLAYS = {
    '1': ModelManager.uploadVertArrays(ModelManager.loadRawModel(Resources.manager(), Resources.idr("placement/overlay_glass_3_acw.csv"), null)),
    '2': ModelManager.uploadVertArrays(ModelManager.loadRawModel(Resources.manager(), Resources.idr("placement/overlay_glass_3_cw.csv"), null))
}

const MAP_SCALE = 7.6;

function create(ctx, state, blockEntity) {
    state.etaRateLimit = new RateLimit(1);
    state.pass = 3;
}

function render(ctx, state, blockEntity) {
    if(state.etaRateLimit.shouldUpdate() && state.pass > 0) {
        let closestPlatform = getPlatform(blockEntity);
        if(closestPlatform != null) {
            state.pass--;
            Packages.net.minecraft.client.Minecraft.getInstance().execute(() => {
                let stripId = MTRClientData.DATA_CACHE.getColorStrip(closestPlatform.id).resourceLocation; 
                // let id = MTRClientData.DATA_CACHE.getRouteMap(closestPlatform.id, false, FACE_RIGHT, MAP_SCALE, true).resourceLocation;
                let overlayToUse = OVERLAYS[`${closestPlatform.name}`];
                if(overlayToUse != null) {
                    state.overlay = overlayToUse.copyForMaterialChanges();
                    state.overlay.replaceTexture("strip.png", stripId);
                    // Teacon 26 use custom map
                    // state.overlay.replaceTexture("tex.png", id);
                }
            });
        }
    }
    
    if(state.overlay != null) ctx.drawModel(state.overlay, null);
}

function getPlatform(blockEntity) {
    return MTRUtil.getClosePlatform(blockEntity.getWorldPos(), 5, 4, 4);
}