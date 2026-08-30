---
title: "The maze"
navigation:
  title: "02 The maze"
items:
  - dungeon_infinity:mazestone
---

# The maze

The dungeon lives in its own dimension, `dungeon_infinity:maze`, with a custom chunk generator and a custom biome. Nothing about it behaves like the Overworld.

## The dimension's rules

Read these before you go in, because two of them will cost you.

| Rule | Value |
|:---|:---|
| **Beds** | **cannot set spawn, cannot be slept in, and explode** |
| Natural mob spawning | **none** — every spawner list is empty |
| Terrain features and carvers | **none** — the biome generates nothing |
| Precipitation | none |
| Ambient light | 0.5 |
| Raids | cannot start |
| Lava | flows fast, as in the Nether |
| Piglins | do not zombify, and portals do not spawn them |

**Beds explode.** Do not take one in expecting a checkpoint — the dimension type sets `explodes: true` alongside forbidding both sleeping and spawn-setting. Respawn anchors are the working mechanism here, and the Maze Map ties into them; see [04 Map and merchants](04_map_and_merchants).

**No mob spawns naturally.** Every entry in the biome's spawner table is empty, and the biome has no features or carvers at all. Everything you meet and everything you see was placed by the dungeon generator. That is why the dungeon can guarantee its own difficulty curve — nothing wanders in.

## Room types

The map legend names eight kinds of location:

| Room | Purpose |
|:---|:---|
| Battle | ordinary combat room |
| Elite | harder fight; clearing one **unlocks the full floor map** |
| Boss | clearing one **unlocks the next floor down** |
| Shop | merchants |
| Reward | loot |
| Rest | recovery between fights |
| Up stair / Down stair | movement between floors |

Progression on each floor is therefore gated twice: the **elite room** gives you information (the whole map), and the **boss room** gives you depth (the way down). You can descend without full knowledge, but not without beating the boss.

## Themes and tiers

The dungeon has **five built themes**, each with its own structure set:

| Theme | Structures |
|:---|:---|
| Copper | 13 |
| Stone | 13 |
| Mineshaft | 13 |
| Deepslate | 13 |
| Sculk | 13 |

Each set is **2 root pieces + 6 corridors + 5 rooms**. A sixth set named `test` exists with 5 pieces, which is development scaffolding rather than content.

But the difficulty configuration recognises **seven tiers**, not five:

| Tier | Has its own structures? |
|:---|:---|
| Early | **no** |
| Copper | yes |
| Stone | yes |
| Mineshaft | yes |
| Deepslate | yes |
| Sculk | yes |
| Deepest | **no** |

**Early and Deepest have full spawn, equipment and trial configuration but no maze structures of their own**, so they are reached by reusing another theme's geometry with their own enemy and loot tables. In practice that means the first and last stretches of a run look like a neighbouring theme but fight very differently.

## What the enemies are

Golems, from the parent mods. Each tier has its own tables:

| Config type | Files across the seven tiers |
|:---|:---|
| Spawn tables | 69 |
| Equipment tables | 85 |
| Trial definitions | 46 |

The equipment tables are detailed rather than token — they specify weighted item pools per armour slot, with per-entry enchantment levels and drop chances, and separate tables for humanoid, horse and wolf armour. A copper-tier chestplate pool, for example, mixes iron, gold and copper at equal weight with enchantment level 30 on the first two and 20 on the third.

**Drop chance is uniform at 0.085 across the equipment entries** — so roughly one in twelve pieces survives its wearer. Farming the dungeon for gear works, but slowly.

## Structure of a floor

Floors are laid out by a **column layout** configuration and assembled from the theme's corridors and rooms, gated by forcefield blocks. The map legend shows depth as a number, and up and down stairs connect floors.

The generator, the layout preset and the templates are all **data-driven** — five template files, one column preset, and the per-tier tables above. That is the mechanism a pack author would edit to change the dungeon.

[Back to index](index)
