---
title: "Swimming Movement"
navigation:
  title: "04 Swimming Movement"
---

# Swimming Movement

## Shallow swimming

When `enableShallowSwimming` is true, a local player in water with sprint intent, enough food for exhaustive manoeuvres and forward input is switched to sprinting and swimming. The server mirrors swimming state from sprinting. The mechanic is skipped in the vanilla state.

## Swimming boost

Swimming boost is triggered with the Roll/Slide key while swimming. It requires `enableSwimmingBoost`, a cooldown of zero, the common action check and the swimming pose. The boost direction is the current motion direction, or the look direction when motion is negligible. The added velocity is `swimmingBoostSpeedMultiplier` (default `0.4`) times that direction. Entering sets `swimmingBoostCooldown` (default 12 ticks). The client and the server both execute the action, and the server plays the boost sound and resets its connection position.

## Swimming jump

Swimming jump runs each client tick while the jump key is held. It requires the freestyle check from [Freestyle](#freestyle), so the player must be swimming, not underwater, not falling and otherwise able to act. The action keeps horizontal velocity and sets vertical velocity to `0.42`. The client sends its position and `UseSwimmingJumpC2SPayload`; the server re-runs the same action.

## Freestyle

When `enableFreestyle` is true, a swimming player who is not underwater, has vertical velocity zero or upward and passes the common action check has the Y component of velocity set to `0`. This keeps the player skimming across the water surface. A player falling downward does not qualify.

## Stop swimming when idle

When `enableStopSwimmingWhenIdle` is true, the local client clears sprinting and swimming as soon as there is no forward input. This is client-only.

## Confirmed values

| Value | Source value |
|:---|:---|
| Swimming boost cooldown | `swimmingBoostCooldown`, default 12 ticks |
| Swimming boost multiplier | `swimmingBoostSpeedMultiplier`, default 0.4 |
| Swimming jump vertical speed | 0.42 |
| Freestyle Y speed | 0 |
| Shallow swim trigger | sprint intent plus forward input in water |

[Back to index](index)
