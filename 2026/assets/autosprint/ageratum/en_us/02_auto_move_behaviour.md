---
title: "Auto-move behaviour"
navigation:
  title: "02 Auto-move behaviour"
---

# Auto-move behaviour

The mod runs one check every client tick. Understanding that loop explains every quirk of its behaviour.

## Entering auto-move

When you press the auto-move key while not already auto-moving, the mod decides whether to sprint by looking at what you were doing:

| Your state when you press the key | Resulting mode |
|:---|:---|
| Already moving | **Inherits your current state** — sprinting if you were sprinting, walking if you were walking |
| Standing still | Defaults to **sprinting** |

"Already moving" is judged from your actual horizontal velocity, not from whether a key is held. So starting auto-move while walking keeps you walking, and starting it from a standstill starts you sprinting.

## While auto-moving

Every tick the mod re-asserts two things: the forward key is held down, and your sprint flag matches the current mode. Because it is re-applied continuously, an external interruption generally corrects itself on the next tick.

## Switching walk and sprint mid-run

Pressing your **sprint** key while auto-moving toggles between walking and sprinting instead of doing its usual job. The new mode sticks until you toggle it again or leave auto-move.

This is a toggle on key-press, not a hold — you tap it, you do not keep it down.

## Exiting auto-move

The three exits differ in whether you keep moving:

| Trigger | Forward key afterwards | Sprint afterwards | Net effect |
|:---|:---|:---|:---|
| Auto-move key | Released | Off | You stop |
| **Forward (W)** | **Kept held** | **Current mode preserved** | Seamless manual takeover |
| **Back (S)** | Released | Off | You stop |

The forward-key handover is deliberate: the mod leaves the forward key down and keeps your walk/sprint mode, so pressing W feels like grabbing the wheel rather than braking.

All three exits show a random "off" hint message, including the W handover — so you will see an "auto-moving disabled" style message even though you are still moving.

## Interaction with the sprint config

If `autoSprint` is disabled in the config, the mod forces the sprint flag off every time it applies it. In that case auto-move always walks, and the sprint-key toggle still flips the internal mode but has no visible effect.

## What the mod does not do

- **No auto-jump.** An `autoJump` option exists in the source but is entirely commented out, together with its implementation. Auto-move will not step or jump over obstacles for you; use the vanilla auto-jump option in Controls if you want that.
- **No obstacle handling.** Nothing detects walls, ledges, or hazards. Auto-move will happily walk you into a wall, off a cliff, or into lava.
- **No pause on damage or GUI.** Taking damage or opening an inventory does not cancel auto-move.

Treat it as a held-down forward key, not as a pathfinder.

[Back to index](index)
