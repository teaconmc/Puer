include(Resources.idRelative("models.js"));
include(Resources.idRelative("particles.js"));

function createTrain(ctx, state, train, trainExt) {
  state.particleRateLimit = new RateLimit(0.1);
}

function renderTrain(ctx, state, train, trainExt) {
  matrices = new Matrices();

  fwdRail = train.path.get(train.getIndex(0, train.spacing, true)).rail;
  bwdRail = train.path.get(train.getIndex(train.trainCars - 1, train.spacing, true)).rail;
  trainInAir = fwdRail.getModelKey() == "null" || bwdRail.getModelKey() == "null";
  modelBogieToUse = trainInAir ? modelBogieAir : modelBogie;

  if (state.particleRateLimit.shouldUpdate()) {
    renderTrainParticles(ctx, state, train, trainExt, trainInAir);
  }

  for (i = 0; i < train.trainCars; i++) {
    modelsToUse = null;
    matrices.pushPose();
    if (i == 0 && train.trainCars == 1) {
      modelsToUse = modelHead12;
      matrices.translate(0, 2.45, 0);
      ctx.drawCarModel(modelBogieToUse, i, matrices);
    } else if (i == 0) {
      modelsToUse = modelHead1;
      matrices.translate(0, 2.45, 3);
      ctx.drawCarModel(modelBogieToUse, i, matrices);
    } else if (i == train.trainCars - 1) {
      modelsToUse = modelHead2;
      matrices.translate(0, 2.45, -3);
      ctx.drawCarModel(modelBogieToUse, i, matrices);
    } else {
      modelsToUse = modelCenter;
    }
    matrices.popPose();
    ctx.drawCarModel(modelsToUse["body"], i, null);
    
    doorValueConv = easeOutCubic(Math.min(train.getDoorValue() * 2, 1));
    doorXP = trainExt.doorRightOpen[i] ? doorValueConv * 0.81 : 0;
    doorXN = trainExt.doorLeftOpen[i] ? doorValueConv * 0.81 : 0;
    matrices.pushPose();
    matrices.translate(0, 0, -doorXN);
    ctx.drawCarModel(modelsToUse["doorXNZN"], i, matrices);
    matrices.translate(0, 0, 2 * doorXN);
    ctx.drawCarModel(modelsToUse["doorXNZP"], i, matrices);
    matrices.popPose();
    matrices.pushPose();
    matrices.translate(0, 0, -doorXP);
    ctx.drawCarModel(modelsToUse["doorXPZN"], i, matrices);
    matrices.translate(0, 0, 2 * doorXP);
    ctx.drawCarModel(modelsToUse["doorXPZP"], i, matrices);
    matrices.popPose();
  }

  for (i = 0; i < train.trainCars - 1; i++) {
    matrices.pushPose();
    matrices.translate(0, 2.45, 0);
    ctx.drawConnModel(modelBogieToUse, i, matrices);
    matrices.popPose();
    ctx.drawConnStretchTexture(idTexConnector, i);
  }
}

function easeOutCubic(x) {
  return 1 - Math.pow(1 - x, 3);
}
