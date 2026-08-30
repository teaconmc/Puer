---
title: Wall Movement
navigation:
  title: Wall Movement
description: Wall climb, wall slide, wall run, wall hang, wall kick and the two vaults.
---

# Wall movement

Six wall states plus two vaults make up the bulk of Momentum's parkour kit. All of them read your wall-contact data from the movement context, and all of them obey the dual-gate switch rule from [07 Configuration](07_configuration.md).

## Wall slide

Enter it by touching a wall while airborne and continuing to move into it. Sliding down the wall face damps your descent, and landing after a wall slide reduces the fall damage you take.

Switch: `enableWallSlide`.

## Wall hang

While falling, if you pass a wall edge or a detected notch, you catch it and hang. During a hang you can still look left and right and shift sideways, but your body rotation is constrained.

Switch: `enableWallHang`.

> The English translation for this state reads "Not Wall Hang" and the Chinese reads 脱离挂墙 ("leaving the wall hang"). The naming is confusing but it is what the shipped language files contain.

## Wall climb

Touch a wall, push into it, and hold the jump key: you climb the wall face. Climb height scales with your jump strength, so jump-boost effects raise your reach. With the Jet Booster equipped a minimum upward speed is guaranteed, making the climb reliable rather than dependent on your entry speed.

Switch: `enableWallClimb`.

## Wall run

Move alongside a wall with enough horizontal speed and hold the direction key into it. You run across the wall face with your body angled toward it.

The speed gate compares your horizontal speed, converted to metres per second, against `minWallRunSpeed`. **The shipped default of that option is `4.0`, even though its own comment claims a default of `6.0`.** The value in the config file is what the game uses.

Without the booster a wall run loses height as you go. With the booster equipped, upward speed is applied to counteract gravity and the run holds its line.

Switch: `enableWallRun`.

## Wall kick

While airborne and close to a wall, with the kick cooldown expired, you push off it: the player is thrown a fixed horizontal distance away from the wall. The cooldown is `wallKickAccelerationCooldown` (default `20` ticks), which is what stops you from chain-kicking the same wall indefinitely.

Switch: `enableWallKick`.

## Vault up

While hanging on a wall edge, press the jump key to pull yourself up onto the platform.

Switch: `enableVaultUp`.

## Vault in

Used to enter a one-block-high opening in a wall:

- **From standing**: press the up direction together with **`C`**.
- **From a hang**: press **`C`** together with the jump key.

You slip through the gap in a swimming pose.

Switch: `enableVaultIn`.

## Chaining them

The state machine re-evaluates every tick and always enters the highest-priority matching state, which is what makes chains flow without any explicit combo input: run at a wall to wall-run, let it end into a wall-slide, catch the edge as a wall-hang, then vault up. Nothing needs to be timed to a window — you only need the entry conditions to hold.

[Back to index](index)
