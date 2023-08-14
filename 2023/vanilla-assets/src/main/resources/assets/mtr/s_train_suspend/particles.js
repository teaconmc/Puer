
function renderTrainParticles(ctx, state, train, trainExt, trainInAir) {
  if (!foundMadParticle) return;

  for (i = 0; i < train.trainCars; i++) {
    zPos = 0;
    if (i == 0 && train.trainCars == 1) {
      zPos = 0;
    } else if (i == 0) {
      zPos = 3;
    } else if (i == train.trainCars - 1) {
      zPos = -3;
    } else {
      zPos = false;
    }

    if (zPos !== false && trainInAir) {
      addEngineParticles(trainExt.lastWorldPose[i], new Vector3f(3.8, 3.5, zPos));
      addEngineParticles(trainExt.lastWorldPose[i], new Vector3f(-3.8, 3.5, zPos));
    }
    if (i != train.trainCars - 1 && train.trainCars > 1 && trainInAir) {
      addEngineParticles(trainExt.lastWorldPose[i], new Vector3f(3.8, 3.5, -5));
      addEngineParticles(trainExt.lastWorldPose[i], new Vector3f(-3.8, 3.5, -5));
    }
  }
}

// int targetParticle, SpriteFrom spriteFrom, int lifeTime,
// InheritableBoolean alwaysRender, int amount,
// double px, double py, double pz, double xDiffuse, double yDiffuse, double zDiffuse,
// double vx, double vy, double vz, double vxDiffuse, double vyDiffuse, double vzDiffuse,
// float friction, float gravity, InheritableBoolean collision, int bounceTime,
// double horizontalRelativeCollisionDiffuse, double verticalRelativeCollisionBounce,
// float afterCollisionFriction, float afterCollisionGravity,
// InheritableBoolean interactWithEntity,
// double horizontalInteractFactor, double verticalInteractFactor,
// ParticleRenderTypes renderType, float r, float g, float b,
// float beginAlpha, float endAlpha, ChangeMode alphaMode,
// float beginScale, float endScale, ChangeMode scaleMode,
// boolean haveChild, MadParticleOption child,
// float rollSpeed,
// float xDeflection, float xDeflectionAfterCollision,
// float zDeflection, float zDeflectionAfterCollision,
// float bloomFactor,
// CompoundTag meta

function addEngineParticles(basePose, originOffset) {
  particleOrigin = basePose.transform(originOffset);
  particleDirection = new Vector3f(0, -0.8, 0);

  particleOption = new MadParticleOption(
    Resources.getParticleTypeId(Resources.identifier("minecraft:campfire_cosy_smoke")),
    SpriteFrom.RANDOM, 10,
    InheritableBoolean.TRUE, 16,
    particleOrigin.x(), particleOrigin.y(), particleOrigin.z(), 0.3, 0.5, 0.3,
    particleDirection.x(), particleDirection.y(), particleDirection.z(), 0.2, 0.2, 0.2,
    0.98, 0, InheritableBoolean.TRUE, 0,
    0, 0,
    0.98, 0,
    InheritableBoolean.FALSE,
    0, 0,
    ParticleRenderTypes.PARTICLE_SHEET_TRANSLUCENT, 1, 1, 1,
    1, 0.6, ChangeMode.LINEAR,
    6, 12, ChangeMode.LINEAR,
    false, null,
    0,
    0, 0,
    0, 0,
    0,
    new CompoundTag()
  );
  AddParticleHelper.addParticle(particleOption);

  particleDirection = new Vector3f(0, -0.4, 0);
  particleOption = new MadParticleOption(
    Resources.getParticleTypeId(Resources.identifier("minecraft:flame")),
    SpriteFrom.RANDOM, 5,
    InheritableBoolean.FALSE, 4,
    particleOrigin.x(), particleOrigin.y(), particleOrigin.z(), 0.5, 0.5, 0.5,
    particleDirection.x(), particleDirection.y(), particleDirection.z(), 0.6, 0.2, 0.6,
    0.98, 0, InheritableBoolean.TRUE, 0,
    0, 0,
    0.98, 0,
    InheritableBoolean.FALSE,
    0, 0,
    ParticleRenderTypes.PARTICLE_SHEET_TRANSLUCENT, 1, 1, 1,
    1, 1, ChangeMode.LINEAR,
    2, 0, ChangeMode.LINEAR,
    false, null,
    0,
    0, 0,
    0, 0,
    0,
    new CompoundTag()
  );
  AddParticleHelper.addParticle(particleOption);

  originOffset.add(0, 6, 0);
  particleOrigin = basePose.transform(originOffset);
  particleDirection = new Vector3f(0, -0.6, 0);
  particleOption = new MadParticleOption(
    Resources.getParticleTypeId(Resources.identifier("minecraft:smoke")),
    SpriteFrom.RANDOM, 5,
    InheritableBoolean.FALSE, 4,
    particleOrigin.x(), particleOrigin.y(), particleOrigin.z(), 0.5, 0.5, 0.5,
    particleDirection.x(), particleDirection.y(), particleDirection.z(), 0, 0.2, 0,
    0.98, 0, InheritableBoolean.TRUE, 0,
    0, 0,
    0.98, 0,
    InheritableBoolean.FALSE,
    0, 0,
    ParticleRenderTypes.PARTICLE_SHEET_TRANSLUCENT, 1, 1, 1,
    1, 1, ChangeMode.LINEAR,
    0.1, 2, ChangeMode.LINEAR,
    false, null,
    0,
    0, 0,
    0, 0,
    0,
    new CompoundTag()
  );
  AddParticleHelper.addParticle(particleOption);

}