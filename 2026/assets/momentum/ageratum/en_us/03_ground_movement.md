---
title: Ground Movement
navigation:
  title: Ground Movement
description: Walk, prone, slide and power jump.
---

# Ground movement

## Walk

The default grounded state whenever nothing with a higher priority matches. It is not a no-op: the mod's own ground physics run here, applying its acceleration, friction and speed-cap effects instead of the vanilla numbers.

## Prone

Hold **`C`** on the ground to drop into a prone crawl. Prone forces the swimming pose, so you fit through a **one-block-high** gap, and your body rotation follows your horizontal movement direction rather than your view. You also enter prone automatically when you are already in a swimming pose and there is not enough room to stand up.

Switch: `enableProne`.

## Slide

Hold **`C`** while moving fast enough on the ground and you slide instead of crawling. The entry test compares your horizontal speed against `minSlideSpeed` (default `4.0` m/s), and the requirement **doubles to 8.0 m/s when you are not sprinting** — sprinting into a slide is far easier than walking into one.

While sliding:

- Friction is greatly reduced, so you keep your speed.
- On a downhill slope you **accelerate along the detected slope direction**, which makes chained descents faster than running them.
- A cooldown, `slideAccelerationCooldown` (default `20` ticks), limits how often the slide acceleration can be re-triggered. Jumping inside a short window after entering a slide behaves differently from jumping later, so slide-jump timing matters.
- On exit, if your forward speed exceeds your downward speed you can chain straight into another slide.

Switch: `enableSlide`.

## Power jump

A charged jump state. It exists in the registry, has its own translation and its own switch, and is gated the same way as everything else.

Switch: `enablePowerJump`.

> The project README's action tables omit the power jump even though it is implemented and configurable. Treat the source and the config file as authoritative.

## Speed caps and friction on the ground

Momentum replaces several hard-coded vanilla constants while maneuver mode is on:

- **Air friction** is taken from `airFriction` (default `0.998`) instead of vanilla's `0.91`. This is the single most noticeable change: horizontal momentum persists far longer.
- **Ladder climbing** is multiplied by `climbBoostMultiplier` (default `3.0`) while the sprint key is held.
- Jump-boost scaling and step height are adjusted through the same effect system.

All of these are applied through Mixins into `Entity` and `LivingEntity`, so they affect the physics itself rather than being cosmetic.

## Automatic step-down

While grounded and moving horizontally toward a drop, the player steps down automatically instead of walking off the edge. The effective step-down height equals the vanilla auto-step-up threshold plus a component of horizontal speed, so the faster you move the larger the ledge you smoothly descend. It is disabled in liquids and while a step-up is already in progress.

[Back to index](index)
