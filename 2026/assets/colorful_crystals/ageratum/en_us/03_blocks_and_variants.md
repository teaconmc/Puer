---
title: Blocks and colour variants
navigation:
  title: Blocks and colour variants
---

# Blocks and colour variants

The mod uses exactly three colours — topaz (yellow), ruby (red) and sapphire (blue) — and gives each of them the same eight blocks, for 24 blocks in total. Nothing else is registered: there are no crystal lamps, no glass, no walls and no fences.

## Complete block list

| Block ID | Kind | Registered drop |
|:---|:---|:---|
| `colorful_crystals:topaz_cluster` | Cluster | `colorful_crystals:unpolished_topaz` |
| `colorful_crystals:ruby_cluster` | Cluster | `colorful_crystals:unpolished_ruby` |
| `colorful_crystals:sapphire_cluster` | Cluster | `colorful_crystals:unpolished_sapphire` |
| `colorful_crystals:topaz_ore` | Ore | `colorful_crystals:raw_topaz` |
| `colorful_crystals:ruby_ore` | Ore | `colorful_crystals:raw_ruby` |
| `colorful_crystals:sapphire_ore` | Ore | `colorful_crystals:raw_sapphire` |
| `colorful_crystals:unpolished_topaz_block` | Storage block | Itself |
| `colorful_crystals:unpolished_topaz_stair` | Stair | Itself |
| `colorful_crystals:unpolished_topaz_slab` | Slab | Itself (2 when double) |
| `colorful_crystals:polished_topaz_block` | Storage block | Itself |
| `colorful_crystals:polished_topaz_stair` | Stair | Itself |
| `colorful_crystals:polished_topaz_slab` | Slab | Itself (2 when double) |
| `colorful_crystals:unpolished_ruby_block` | Storage block | Itself |
| `colorful_crystals:unpolished_ruby_stair` | Stair | Itself |
| `colorful_crystals:unpolished_ruby_slab` | Slab | Itself (2 when double) |
| `colorful_crystals:polished_ruby_block` | Storage block | Itself |
| `colorful_crystals:polished_ruby_stair` | Stair | Itself |
| `colorful_crystals:polished_ruby_slab` | Slab | Itself (2 when double) |
| `colorful_crystals:unpolished_sapphire_block` | Storage block | Itself |
| `colorful_crystals:unpolished_sapphire_stair` | Stair | Itself |
| `colorful_crystals:unpolished_sapphire_slab` | Slab | Itself (2 when double) |
| `colorful_crystals:polished_sapphire_block` | Storage block | Itself |
| `colorful_crystals:polished_sapphire_stair` | Stair | Itself |
| `colorful_crystals:polished_sapphire_slab` | Slab | Itself (2 when double) |

## Complete gem item list

| Item ID | Stage |
|:---|:---|
| `colorful_crystals:raw_topaz` | Raw |
| `colorful_crystals:unpolished_topaz` | Unpolished |
| `colorful_crystals:polished_topaz` | Polished |
| `colorful_crystals:raw_ruby` | Raw |
| `colorful_crystals:unpolished_ruby` | Unpolished |
| `colorful_crystals:polished_ruby` | Polished |
| `colorful_crystals:raw_sapphire` | Raw |
| `colorful_crystals:unpolished_sapphire` | Unpolished |
| `colorful_crystals:polished_sapphire` | Polished |

Every block also has a block item with the same ID, so the full item registry is these 9 gems plus 24 block items — 33 items.

## Clusters

The three clusters extend the vanilla amethyst cluster block class and copy the vanilla `minecraft:amethyst_cluster` properties in full, which means they also inherit its light emission. The mod never declares a light level itself.

They are directional: the blockstate uses the `facing` property with all six directions, and each direction picks one of four equally weighted random rotations, so a wall of clusters does not look repetitive.

The only difference between the three is the collision/model size passed to the block constructor:

| Cluster | Height / width parameters |
|:---|:---|
| `topaz_cluster` | `8f`, `8f` |
| `ruby_cluster` | `6f`, `8f` |
| `sapphire_cluster` | `6f`, `8f` |

So the topaz cluster is the tall one; ruby and sapphire share a shorter profile. All three use a hand-authored Blockbench model rather than a generated one.

## Ore blocks

Ore blocks copy `minecraft:iron_ore` properties in full. Their model is a custom template: a stone cube with a very slightly larger gem-textured cube wrapped around it, so the gem colour reads as a shell over stone rather than as scattered specks.

## Loot behaviour

- **Ores and clusters** use the vanilla ore-drop template: Silk Touch returns the block itself, otherwise it drops the registered gem with the Fortune ore-drops bonus and explosion decay applied.
- **Storage blocks and stairs** simply drop themselves (with the survives-explosion condition).
- **Slabs** drop one item, or two when the block is a double slab.

Note that clusters drop **one** unpolished gem before Fortune, not a handful of shards.

## Rendering assets

All 24 blocks have a generated blockstate file and all 33 items have an item definition, so nothing is missing from the client side. Textures are shared where the source does so: stairs and slabs reuse the storage block texture of the material they were cut from, which is why an unpolished stair looks exactly like the unpolished block.

[Back to index](index)
