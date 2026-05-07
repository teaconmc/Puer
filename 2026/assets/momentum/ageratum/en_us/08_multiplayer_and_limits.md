---
title: Multiplayer and Good to Know
navigation:
  title: Multiplayer and Good to Know
description: What you need installed, what carries over, and the rough edges.
---

# Multiplayer and Good to Know

## ⚠️ PlayerAnimationLib must be installed

::: danger
**Momentum needs PlayerAnimationLib, but it will not warn you if it is missing.**

Because the dependency is not declared in the usual way, a missing PlayerAnimationLib does **not** produce the friendly "you are missing a dependency" screen. You get an unexplained failure instead.

**If Momentum crashes or refuses to work and the error makes no sense, check that PlayerAnimationLib is installed first.** It is the most likely cause.

MochaFloats is also required, but it comes along with PlayerAnimationLib.
:::

**Curios is genuinely optional** and handled properly — the mod checks for it before use, so its absence is completely safe.

## ⚠️ It can conflict with other movement mods

Momentum changes how the player moves at a deep level — step heights, slope handling, air and water movement, jump strength, ladder acceleration, camera tilt and field of view.

::: warning
**Any other mod that alters player movement is a potential conflict.** Parkour mods, flight mods, climbing mods and sprint modifiers all touch the same behaviour.

**Test the combination before committing a modpack to it.** Momentum working alone tells you nothing about whether it works alongside another movement mod.
:::

## What carries over and what does not

| Thing | On relog | On death |
|:---|:---|:---|
| **Maneuver mode on/off** | **Remembered** | **Remembered** |
| Your current movement state | **Reset** | Reset |

So your preference sticks, but you always come back on the ground in a neutral state rather than mid-wallrun. That is intentional and not a bug.

## For server owners

::: warning
**The movement system is not an anti-cheat boundary.** The server accepts the movement state the client reports rather than re-verifying that the player really is beside a wall or moving fast enough.

The server-side function switches are still the meaningful control surface — they determine what a normal client will attempt — but **do not treat them as protection against a modified client.**
:::

## Other players see your moves

Your state is broadcast to everyone in the world, so other players see your wallruns and dashes with the proper animations. This also means **Replay Mod recordings capture the transitions correctly**, including for the person doing the recording.

## Known rough edges

**The swim dash state shows a raw translation key** instead of a readable name. Cosmetic only — the move itself works.

**Two config comments contradict their actual defaults** (`minWallRunSpeed` and `fadeInSpeed`).

::: warning
**Trust the value, not the comment.** If a comment says one number and the setting shows another, the setting is what the game uses. See [Configuration](07_configuration.md).
:::

**The project's README is out of date.** It reports an older version number, counts seventeen movement states where there are eighteen, omits the power jump from its action tables, and describes one stored dodge charge where the default is two.

::: tip
**Use these pages rather than the README** — the README describes an earlier build.
:::

## No commands

Momentum has no commands at all. Everything is done through its **three key bindings** and its two config files.

## Redistribution

The mod is **All Rights Reserved**. Including it in a modpack needs the author's permission.

## Summary

| Thing | Status |
|:---|:---|
| **PlayerAnimationLib** | ⚠️ **Required, with no friendly error if missing** |
| Curios | Optional, safely handled |
| Other movement mods | ⚠️ **Test for conflicts** |
| Maneuver mode preference | Survives relog and death |
| Movement state | Resets on relog |
| Anti-cheat | ⚠️ **Not one** |
| Commands | **None** — keys and config only |
| Modpack use | Needs permission |

[Back to index](index)
