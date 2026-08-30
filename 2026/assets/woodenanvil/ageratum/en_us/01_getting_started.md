---
title: Getting Started
navigation:
  title: Getting Started
items:
  - woodenanvil:oak_log_anvil
description: The creative tab, the shared crafting pattern, and all 24 recipes with their exact ingredients.
---

# Getting Started

## Creative tab

All 72 blocks live in one tab, `woodenanvil:wooden_anvils` ("Twelve Wooden Anvils"), whose icon is the oak log anvil. The tab lists every block in registration order — so all twelve normal anvils first, then all twelve stripped, then the same again for chipped and damaged stages.

## The shared pattern

Every one of the 24 recipes uses the same shaped layout:

```
# # #
  P
P P P
```

- `#` = the **wood** (all-bark) block of that tree
- `P` = the **planks** of that tree

This mirrors the vanilla iron anvil (three blocks on top, one ingot in the middle, three ingots at the bottom), with wood substituted throughout.

::: warning
The ingredient is the **wood / hyphae / bamboo block**, not the log or stem. `woodenanvil:oak_log_anvil` is crafted from `minecraft:oak_wood`, even though its id says `log`. Craft `oak_wood` from four oak logs first if you only have logs.
:::

## Recipes — normal forms

| Result | `#` ingredient | `P` ingredient |
|:---|:---|:---|
| `oak_log_anvil` | `minecraft:oak_wood` | `minecraft:oak_planks` |
| `spruce_log_anvil` | `minecraft:spruce_wood` | `minecraft:spruce_planks` |
| `birch_log_anvil` | `minecraft:birch_wood` | `minecraft:birch_planks` |
| `jungle_log_anvil` | `minecraft:jungle_wood` | `minecraft:jungle_planks` |
| `acacia_log_anvil` | `minecraft:acacia_wood` | `minecraft:acacia_planks` |
| `dark_oak_log_anvil` | `minecraft:dark_oak_wood` | `minecraft:dark_oak_planks` |
| `mangrove_log_anvil` | `minecraft:mangrove_wood` | `minecraft:mangrove_planks` |
| `cherry_log_anvil` | `minecraft:cherry_wood` | `minecraft:cherry_planks` |
| `pale_oak_log_anvil` | `minecraft:pale_oak_wood` | `minecraft:pale_oak_planks` |
| `crimson_stem_anvil` | `minecraft:crimson_hyphae` | `minecraft:crimson_planks` |
| `warped_stem_anvil` | `minecraft:warped_hyphae` | `minecraft:warped_planks` |
| `bamboo_anvil` | `minecraft:bamboo_block` | `minecraft:bamboo_planks` |

<recipe id="woodenanvil:oak_log_anvil"/>
<recipe id="woodenanvil:spruce_log_anvil"/>
<recipe id="woodenanvil:birch_log_anvil"/>
<recipe id="woodenanvil:jungle_log_anvil"/>
<recipe id="woodenanvil:acacia_log_anvil"/>
<recipe id="woodenanvil:dark_oak_log_anvil"/>
<recipe id="woodenanvil:mangrove_log_anvil"/>
<recipe id="woodenanvil:cherry_log_anvil"/>
<recipe id="woodenanvil:pale_oak_log_anvil"/>
<recipe id="woodenanvil:crimson_stem_anvil"/>
<recipe id="woodenanvil:warped_stem_anvil"/>
<recipe id="woodenanvil:bamboo_anvil"/>

## Recipes — stripped forms

Stripped anvils use the **stripped wood** block but the **same planks** (there are no stripped planks in Minecraft):

| Result | `#` ingredient | `P` ingredient |
|:---|:---|:---|
| `stripped_oak_log_anvil` | `minecraft:stripped_oak_wood` | `minecraft:oak_planks` |
| `stripped_spruce_log_anvil` | `minecraft:stripped_spruce_wood` | `minecraft:spruce_planks` |
| `stripped_birch_log_anvil` | `minecraft:stripped_birch_wood` | `minecraft:birch_planks` |
| `stripped_jungle_log_anvil` | `minecraft:stripped_jungle_wood` | `minecraft:jungle_planks` |
| `stripped_acacia_log_anvil` | `minecraft:stripped_acacia_wood` | `minecraft:acacia_planks` |
| `stripped_dark_oak_log_anvil` | `minecraft:stripped_dark_oak_wood` | `minecraft:dark_oak_planks` |
| `stripped_mangrove_log_anvil` | `minecraft:stripped_mangrove_wood` | `minecraft:mangrove_planks` |
| `stripped_cherry_log_anvil` | `minecraft:stripped_cherry_wood` | `minecraft:cherry_planks` |
| `stripped_pale_oak_log_anvil` | `minecraft:stripped_pale_oak_wood` | `minecraft:pale_oak_planks` |
| `stripped_crimson_stem_anvil` | `minecraft:stripped_crimson_hyphae` | `minecraft:crimson_planks` |
| `stripped_warped_stem_anvil` | `minecraft:stripped_warped_hyphae` | `minecraft:warped_planks` |
| `stripped_bamboo_anvil` | `minecraft:stripped_bamboo_block` | `minecraft:bamboo_planks` |

<recipe id="woodenanvil:stripped_oak_log_anvil"/>
<recipe id="woodenanvil:stripped_spruce_log_anvil"/>
<recipe id="woodenanvil:stripped_birch_log_anvil"/>
<recipe id="woodenanvil:stripped_jungle_log_anvil"/>
<recipe id="woodenanvil:stripped_acacia_log_anvil"/>
<recipe id="woodenanvil:stripped_dark_oak_log_anvil"/>
<recipe id="woodenanvil:stripped_mangrove_log_anvil"/>
<recipe id="woodenanvil:stripped_cherry_log_anvil"/>
<recipe id="woodenanvil:stripped_pale_oak_log_anvil"/>
<recipe id="woodenanvil:stripped_crimson_stem_anvil"/>
<recipe id="woodenanvil:stripped_warped_stem_anvil"/>
<recipe id="woodenanvil:stripped_bamboo_anvil"/>

## Only the base stage is craftable

There are **24 recipes total** — one per wood per form. The chipped and damaged stages have **no recipes at all**: they only ever appear through wear, and they cannot be crafted or repaired back. See [Damage stages](03_damage_stages.md).

[Back to index](index)
