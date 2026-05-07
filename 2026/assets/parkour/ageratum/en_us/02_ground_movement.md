---
title: "Ground Movement"
navigation:
  title: "02 Ground Movement"
---

# Ground Movement

## Roll/Slide key routing

Pressing the Roll/Slide key routes through these source conditions:

- Crawl: when the player is not moving.
- Slide: when the player is moving and forward impulse is zero or positive.
- Backstep: when the player is moving backward and standing on the ground.

Slide and backstep share the `slideCooldown` timer.

## Slide

Slide requires `enableSlide`, a non-unsafe fall, no water or lava, the common behavior check and a cooldown of zero. Entering sets `slideCooldown` to the configured value. The state lasts at most 10 ticks, uses a `0.6 x 0.6` hitbox with a `0.4` eye height, applies the configured boost in the input direction, plays the slide sound and sends the local position to the server. Sliding disables jump input client-side and does not count as slow movement.

## Crawl

Crawl requires `enableCrawl`, not swimming, the behavior check and a non-unsafe fall. It uses the swimming pose as a prone visual, has no duration limit, and pressing the Roll/Slide key again returns to the default state. A player mixin prevents other forced poses from replacing crawl.

## Backstep

Backstep requires `enableSlide`, the behavior check, no water or lava and a non-unsafe fall. It lasts 3 ticks. Entering sets the shared slide cooldown, applies backward velocity on the client and plays a sound. While the state is active, the server cancels incoming damage through `BackstepInvincibleHandler`.

## Landing roll

When the player is in the air with a fall distance above `safeFallHeight`, pressing the Roll/Slide key starts a landing roll window of `landingRollWindow` ticks (default 6). If the player lands while the window is still positive, the state machine enters `parkour:landing_roll`, cancels the vanilla fall damage, clears the window and keeps the roll active for 8 ticks. The roll uses the same crouched hitbox and gives Speed I for 40 ticks (2 seconds) on the server.

## Ground modifiers

- Omnidirectional sprint: when enabled, sideways or backward input at or above `0.8` input strength can start sprinting; underwater sprinting still uses forward input.
- Move speed: when enabled, `walkSpeedMultiplier` and `sprintSpeedMultiplier` (both default `1.3`) are applied as base multipliers.
- Step height: when enabled, `walkStepHeight` (default `0.6`) and `sprintStepHeight` (source default `1.1`) are applied.
- Safe fall height: when enabled, fall damage distance is reduced by `safeFallHeight - 3.0`; default `safeFallHeight` is `6.0`.
- Jump strength: the mod always adds `+0.01` to jump strength while loaded. This bonus has no configuration key.

## Confirmed timings

| Value | Source value |
|:---|:---|
| Slide duration | 10 ticks |
| Slide/backstep cooldown | `slideCooldown`, default 12 ticks |
| Backstep duration | 3 ticks |
| Landing roll window | `landingRollWindow`, default 6 ticks |
| Landing roll duration | 8 ticks |
| Landing roll speed effect | Speed I, 40 ticks |

[Back to index](index)
