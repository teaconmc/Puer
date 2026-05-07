---
title: Getting started
navigation:
  title: Getting started
---

# Getting started

## The creative tab

Everything the mod registers is placed in one creative tab:

| Tab ID | Title | Icon |
|:---|:---|:---|
| `colorful_crystals:tab` | Colorful Crystals | Topaz Cluster (`colorful_crystals:topaz_cluster`) |

Both `CrystalBlocks` and `CrystalItems` set this tab as their default target, so no registered block or item is left out of it.

## Where do the blocks come from?

**There is currently no natural source for any block in this mod.** This is not a difficulty setting or a rare biome — the source tree simply has no world generation data:

- there is no `worldgen` directory in `src/main/resources` or in the generated resources;
- there is no biome modifier, configured feature or placed feature;
- there is no budding block. `CrystalTags` declares `c:buds` and `c:budding_blocks` tag keys, but no block is ever added to them, so **clusters never grow, spread or regenerate**.

That means ore blocks and cluster blocks will never appear while mining or exploring. The supported ways to obtain them are:

1. **Creative mode** — take them from the Colorful Crystals tab.
2. **Commands** — for example `/give @s colorful_crystals:ruby_ore` or `/setblock ~ ~ ~ colorful_crystals:ruby_cluster`.
3. **A datapack of your own** — you can add ore placement yourself; the blocks are ordinary registered blocks, and they already carry the `c:ores/*` and `c:clusters/*` tags that most world-generation helpers look for.

Once you have a single ore or cluster block, everything downstream is self-sustaining: mining an ore gives raw gems, and the whole crafting tree in [04 Recipes](04_recipes.md) is reversible, so gems can be packed into blocks and unpacked again.

## First steps

1. Place a `topaz_ore`, `ruby_ore` or `sapphire_ore` block and mine it — it drops the matching **raw** gem.
2. Place a `topaz_cluster`, `ruby_cluster` or `sapphire_cluster` and mine it — it drops the matching **unpolished** gem.
3. Take the raw gem to a **stonecutter** and hold right-click on the block to cut it into an unpolished gem.
4. Take the unpolished gem to a **grindstone** and hold right-click on the block to polish it.
5. Craft nine polished gems into a polished storage block, then cut that block into stairs and slabs.

Steps 3 and 4 are described in detail in [02 Gem processing](02_gem_processing.md).

## Mining requirements

All 24 blocks are listed in `minecraft:mineable/pickaxe`, so a pickaxe is always the right tool.

Each block group copies its full behaviour (hardness, blast resistance, sound, tool requirement and light emission) from a vanilla template block:

| Group | Vanilla template |
|:---|:---|
| Clusters | `minecraft:amethyst_cluster` |
| Ore blocks | `minecraft:iron_ore` |
| Storage blocks | `minecraft:amethyst_block` |
| Stairs and slabs | The storage block they were built from |

Because clusters copy the amethyst cluster template in full, they also inherit its light emission — the mod itself never declares a light level of its own.

[Back to index](index)
