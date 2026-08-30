---
title: "Wall Movement"
navigation:
  title: "03 Wall Movement"
---

# Wall Movement

## Wall run

Wall run requires `enableWallRun`, sprinting, not on the ground, not on a climbable block, no water or lava, the common behavior check, a side wall and no blocked block in the facing direction. From the default state it can start while the player holds jump within 15 ticks of the last jump, has forward input and is falling.

The state lasts less than `wallRunDuration` ticks (default 30, 1.5 seconds). Movement follows the recorded direction at `MOVEMENT_SPEED * 2.15` with a `0.1` wall adhesion force. Losing forward input or ending the jump-release grace period exits the state. The server plays material-based footstep sounds while active.

## Wall slide

Wall slide requires `enableWallSlide`, not on the ground, not on a climbable block, no water or lava, the behavior check and a valid nearby wall. It does not require sprinting and has no duration limit. Each tick horizontal velocity is multiplied by `0.8` and vertical velocity by `0.7`, with the same `0.1` adhesion force. The collision direction is re-detected every tick and broadcast to other clients when it changes.

## Wall climb

Wall climb requires `enableWallClimb`, sprinting, not on the ground, not on a climbable block, no water or lava, the behavior check and a valid climb point. Like wall run, the default-state entry window is 15 ticks after a jump, with forward input and no sneaking. The state lasts less than `wallClimbDuration` ticks (default 20, 1 second), moves up at `wallClimbSpeed` (default `0.2`), applies wall adhesion and resets fall distance. Holding Sneak transitions to armhang; releasing jump or stopping forward input returns to the default state. Exit zeroes velocity.

## Armhang

Armhang requires `enableArmhang`, no climbable block, no water or lava and the behavior check. It can start automatically after a jump while falling, when not sneaking, outside the armhang cooldown, with a valid hang point and either an unsafe fall or sufficient distance from the ground. The state zeroes velocity, applies adhesion, allows lateral movement at `armhangMoveSpeed` (default `0.15`) with A/D, and attempts inside/outside corner rotation. Sneak exits; jump triggers support wall jump. Exit sets a 5-tick cooldown. On the server, a lost hang point is tolerated for at most 4 ticks before the state becomes invalid.

## Wall jump

Wall jump is triggered by pressing the jump key near a wall. The client applies a 150 ms cooldown between jump presses. Eligibility depends on the current state: wall run, wall slide and armhang allow it directly; the default state allows it while falling in air or on a climbable block; wall climb allows it while not on the ground.

Jump type is resolved as `UP` when a scaffolding-tag block blocks the facing direction, `PARALLEL` when the player faces the wall within 110 degrees, otherwise `VIEW`. A same-wall guard prevents immediate repeats only when the player is against a single wall. The client executes the jump, sends its position and a `WallJumpC2SPayload`; the server re-runs the action and resets its connection position to avoid rollback.

## Support wall jump

While armhanging, holding Jump (without Sneak) executes support wall jump if `enableSupportWallJump` is true. It uses the armhang wall direction, resets fall distance and jump timing, and is also re-executed server-side from `SupportWallJumpC2SPayload`. There is no same-wall guard.

## Speed vault

Speed vault is triggered by a jump event while the player has movement input. The front obstacle must be higher than `1.1` blocks, no higher than `1.6` blocks, with space above it. The player must not be on a climbable block, sneaking, in water/lava or blocked by the behavior check; the player must be on the ground or falling slowly (vertical velocity not below `-0.1`). The state lasts at most 2 ticks, computes vertical velocity from obstacle height, moves horizontally at `0.1` times input, then exits with forward velocity `0.45` and Speed I for 40 ticks on the server. Sneak cancels early.

## Climbable blocks

The extra climbable behavior uses `#parkour:climbable`, but only when `canClimbMoreBlocks` is true and the vertical stacking check in [Climbable block tags](05_climbable_tags) passes.

## Sound boundary

`parkour:support_wall_jump` is registered as a sound event, but the current resources contain no `support_wall_jump` entry in `sounds.json` and no matching `.ogg` file, so support wall jump audio may not play in this checkout.

[Back to index](index)
