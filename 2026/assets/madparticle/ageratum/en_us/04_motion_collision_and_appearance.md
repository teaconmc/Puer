---
title: "Motion, Collision, and Appearance"
navigation:
  title: "04 Motion, Collision, and Appearance"
---

# Motion, Collision, and Appearance

## Collision and bounce

`collision` enables block collision checks and `bounceTime` limits the number of handled collisions. `horizontalRelativeCollisionDiffuse` controls horizontal spread after impact, while `verticalRelativeCollisionBounce` controls vertical bounce.

Exhausting the collision count does not necessarily remove a particle. Use the `disappearOnCollision` meta key to remove it after a chosen number of impacts. Collision checks are expensive when enabled on large particle counts.

## Friction, gravity, and deflection

The command has `friction` and `afterCollisionFriction`, plus `gravity` and `afterCollisionGravity`. The particle switches to the second set after its first collision.

`xDeflection` and `zDeflection` apply continuous lateral forces, with separate post-collision forms. `rollSpeed` rotates the sprite; a nonzero value also randomizes its initial roll angle.

## Entity interaction

When `interactWithEntity` is enabled, particles respond to players. `horizontalInteractFactor` and `verticalInteractFactor` control horizontal and vertical disturbance. This is not a damage or status-effect system; it changes particle motion around players.

Entity interaction, block collision, and expressions can all be enabled together, but their costs accumulate. Validate a path with a small amount before increasing it.

## Appearance over lifetime

`r`, `g`, and `b` multiply texture color and may exceed `1`; the Designer warns that thumbnails may then differ from the in-world result. `bloomFactor` accepts values from `1` through `255` for extra brightness.

Alpha uses `beginAlpha`, `endAlpha`, and `alphaMode`, with values from `0` to `1`. Scale uses non-negative `beginScale`, `endScale`, and `scaleMode`. Modes include linear, exponential, and sine transitions; a chained child may also inherit its parent's mode.

## Render types

`takeOverType` currently has four values:

- `INSTANCED` uses the particle atlas with instanced rendering.
- `INSTANCED_TERRAIN` uses the block texture atlas.
- `INSTANCED_ITEM` uses the item texture atlas.
- `DEFAULT` does not force one of the types above.

The render type must match the atlas that owns the selected texture. A mismatch commonly appears as a missing, incorrect, or invisible texture.

## Inheritance in chains

A child segment may inherit sprite source, lifetime, position, velocity, booleans, colors, and several physics values from its parent. Numeric inheritance is encoded as `=`, while enums use `INHERIT`; the Designer emits the correct form. The first segment has no parent and must not rely on inherited values.

[Back to the MadParticle index](index)
