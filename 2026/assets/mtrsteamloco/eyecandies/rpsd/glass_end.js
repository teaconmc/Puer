importPackage(java.awt);
importPackage(java.awt.geom);

include(Resources.idr("mtr_util.js"));

const OVERLAY = ModelManager.uploadVertArrays(ModelManager.loadRawModel(Resources.manager(), Resources.idr(`placement/${MODEL}`), null));

const map_scale = 7.6;

function create(ctx, state, blockEntity) {
    state.etaRateLimit = new RateLimit(1);
    state.closestPlatform = getPlatform(blockEntity);
    state.pass = 3;
}

function render(ctx, state, blockEntity) {
    if(state.etaRateLimit.shouldUpdate()) {
        if(state.closestPlatform != null && state.pass > 0) {
            state.pass--;
            Packages.net.minecraft.client.Minecraft.getInstance().execute(() => {
                let stripId = MTRClientData.DATA_CACHE.getColorStrip(state.closestPlatform.id).resourceLocation; 
                if(state.pass == 0) {
                    state.overlay = OVERLAY.copyForMaterialChanges();
                    state.overlay.replaceTexture("strip.png", stripId);
                }
            });
        }
    }
    
    if(state.overlay != null) ctx.drawModel(state.overlay, null);
}

function getPlatform(blockEntity) {
    return MTRUtil.getClosePlatform(blockEntity.getWorldPos(), 5, 4, 4);
}