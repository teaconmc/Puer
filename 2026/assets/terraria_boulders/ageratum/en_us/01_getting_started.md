---
title: Getting started
navigation:
  title: Getting started
---

# Getting started

All boulder blocks and the tools are placed in the mod's creative tab. The main blocks are `terraria_boulders:boulder` and its variants; each block also has a matching `BlockItem` so you can place them in the world.

## Handles, gloves and giants

- **`terraria_boulders:boulder_glove`** (stacks to 1) is the tool for carrying and throwing boulders.
- **`terraria_boulders:camouflaged_boulder`** places a boulder that you can lock/unlock with the `is_locked` data component — a locked camouflage boulder looks like a normal block until interacted with.
- **`terraria_boulders:giant_boulder`** is a large boulder with dynamic sizing; its rendered size resets to the actual entity size.
- **`terraria_boulders:boulder_bread`** is both a block and a food item (a big, slow-eating snack).

## Boulder basics

Boulder blocks spawn rolling boulder entities when disturbed. Which entity spawns is tied to the block type (e.g. `bouncy_boulder` spawns a `BouncyBoulderEntity`). They deal contact damage on their bounce/roll path, and several variants produce area effects (explode, lava, rainbow).

[Back to index](index)