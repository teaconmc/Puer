---
title: "Graffiti"
navigation:
  title: "02 Graffiti"
---

# Graffiti

## Spraying

Hold the Spray Can and right-click a block face. A flat graffiti entity appears on that face.

The target must satisfy every one of these, or nothing happens:

- The block has a **full collision shape** — you cannot spray onto stairs, slabs, fences, glass panes or any partial block.
- The position is inside the world border and in a loaded chunk.
- You are within normal block interaction range.
- The new graffiti does not overlap a block or the world border, and has support behind it.

Each successful spray costs **1 durability** (100 sprays per can) and plays the dye sound.

## The 50 built-in patterns

The mod declares **50 built-in patterns**, `graffiti_01` through `graffiti_50`, each expected at `textures/graffiti/graffiti_NN.png` and each 1×1 by default.

**None of those 50 textures ship with the mod.** The only images present in that folder are `error.png`, `prev.png` and `prevcent.png`. There is a dedicated error texture, which strongly suggests the renderer falls back to it when a pattern file is missing.

So in the current build `/thestreetism spraylist` will happily list fifty names, but spraying any of them gives you the fallback image rather than fifty distinct designs. This is a missing-asset problem, not a broken mechanic — the entity, sizing, placement and removal all work.

## Choosing a pattern

There is no in-game selection screen. Patterns are chosen with commands while holding the can **in your main hand**:

| Command | Effect |
|:---|:---|
| `/thestreetism spraylist` | Lists all 50 built-in pattern names |
| `/thestreetism spraycan <name>` | Selects a built-in pattern (same as `local`) |
| `/thestreetism spraycan local <name>` | Selects a built-in pattern explicitly |
| `/thestreetism spraycan remote <url>` | Selects a remote image by URL |
| `/thestreetism spraysize <length> <width>` | Sets the size of future sprays |

The selection is stored on the can itself as custom item data, so different cans can hold different patterns and sizes, and the setting survives being put in a chest.

## Sizes

`spraysize` takes a length and a width, each with a **minimum of 0.1** and — worth knowing — **no maximum**. A player can set a very large size and produce a graffiti spanning many blocks. Values that are not finite or not positive fall back to 1.0.

## The remote source

`remote` accepts a free-form URL. Two consequences worth understanding:

- **Only the texture key follows the remote source.** The geometry definition falls back to the default built-in when the source is not `local`, so a remote image is drawn using the default pattern's definition with your chosen size applied.
- **Server operators should be aware this exists.** The command has no permission requirement, so any player can point a spray can at any URL. Treat it the way you would treat any feature that fetches arbitrary images.

## Ownership

Every graffiti records the UUID of the player who sprayed it. Note that recording an owner is not the same as enforcing one — see [03 Removing and repairing](03_removing_and_repairing) for who can actually remove your work.

## Command language

The command replies are **hardcoded Chinese strings**, not translation keys. An English client will still see messages such as 「请先把喷漆罐拿在主手。」 when it asks you to hold the can. Everything else in the mod is properly translated, so this is an oversight limited to the four command responses.

[Back to index](index)
