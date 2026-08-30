---
title: Geology Profiles
navigation:
  title: Geology Profiles
description: The 13 registered profiles, the biome tag each one matches, and the exact layer stack you will dig through.
---

# Geology Profiles

A **geology profile** binds a biome tag to an ordered list of geology layers. When the surface system builds a column, the profile whose biome tag matches that column decides the strata.

Thirteen profiles ship with the mod. All of them are keyed on **NeoForge common biome tags**, not on individual biomes — so any modded biome that carries the right tag is covered automatically.

## Shared plains stack

Five profiles reuse one identical stack, referred to in the source as the *common* group:

**limestone → stone → tuff → andesite → gneiss → deepslate**

| Profile | Biome tag |
|:---|:---|
| `plains` | `IS_PLAINS` |
| `river` | `IS_RIVER` |
| `swamp` | `IS_SWAMP` |
| `beach` | `IS_BEACH` |
| `snowy_plains` | `IS_SNOWY_PLAINS` |

So digging under a river feels identical to digging under plains — that is intentional, not an oversight.

## Shared forest stack

Three profiles share a second stack:

**stone → limestone → andesite → gneiss → granite → deepslate**

| Profile | Biome tag |
|:---|:---|
| `forest` | `IS_FOREST` |
| `taiga` | `IS_TAIGA` |
| `jungle` | `IS_JUNGLE` |

## Individual stacks

| Profile | Biome tag | Layer stack (top to bottom) |
|:---|:---|:---|
| `hills` | `IS_HILL` | andesite → stone → granite → gneiss → gabbro → deepslate |
| `mountains` | `IS_MOUNTAIN` | gneiss → granite → **pegmatite** → gabbro → rhyolite → deepslate |
| `desert` | `IS_DESERT` | limestone → granite → stone → gabbro → gneiss → deepslate |
| `savanna` | `IS_SAVANNA` | granite → rhyolite → andesite → gabbro → basalt → deepslate |
| `ocean` | `IS_OCEAN` | basalt → tuff → gabbro → stone → andesite → deepslate |

## Practical consequences

- **Every profile ends in `deepslate`.** It is the universal basement.
- **`pegmatite` appears in exactly one profile — `mountains`.** If you want pegmatite, dig under mountains; nowhere else generates it naturally.
- **`marble` appears in NO profile at all.** The `marble` layer is registered with full numbers, but no shipped profile references it, so **marble does not generate naturally anywhere**. Get it from the creative tab, or add a profile via datapack — see [Datapack and API](05_datapack_and_api.md).
- **`gravel` likewise appears in no profile**, despite being registered as a layer.
- `basalt` only shows up in `savanna` and `ocean`; ocean floors lead with it.
- There is **no Nether or End profile** — this mod reshapes the Overworld only, and its single biome modifier is scoped to `IS_OVERWORLD`.

## Biomes with no matching profile

The profile set covers plains, river, swamp, beach, snowy plains, forest, taiga, jungle, hills, mountains, desert, savanna and ocean. Overworld biomes that carry none of those tags — mushroom fields, for instance, or the lush/dripstone cave biomes — have no profile of their own.

[Back to index](index)
