---
title: Colorful Crystals
navigation:
  title: Colorful Crystals
---

# Colorful Crystals

Colorful Crystals (namespace `colorful_crystals`) adds three coloured gemstone families — **topaz**, **ruby** and **sapphire**. Each family has an ore block, a crystal cluster, three gem items and a full pair of building block sets.

Every gem follows the same three-stage chain. A **raw** gem is cut on a vanilla stonecutter into an **unpolished** gem, and the unpolished gem is ground on a vanilla grindstone into a **polished** gem. Both the unpolished and the polished form get their own storage block, stair and slab, so each colour ends up with two complete building materials.

The mod registers **24 blocks** and **33 items** (24 block items plus 9 gem items). They all appear in a single creative tab, **Colorful Crystals** (`colorful_crystals:tab`), whose icon is the Topaz Cluster.

> **Important:** the current source tree contains **no world generation at all** — no biome modifier, no configured or placed feature, and no budding block. Ore and cluster blocks have **no natural source in survival**. Do not go caving expecting to find them.

## Reading order

- [01 Getting started](01_getting_started.md) — the creative tab, and the honest answer to "where do these blocks come from".
- [02 Gem processing](02_gem_processing.md) — the raw → unpolished → polished chain, the hold-to-transform interaction, and the two JEI categories.
- [03 Blocks and colour variants](03_blocks_and_variants.md) — the complete block/item ID tables, block properties and drops.
- [04 Recipes](04_recipes.md) — all 36 confirmed crafting and stonecutting recipes.
- [05 Tags and building](05_tags_and_building.md) — the `c:` tag layout, mining tags, decorative use and known quirks.

## At a glance

| Area | Content | Notes |
|:---|:---|:---|
| Gem items | `raw_topaz`, `unpolished_topaz`, `polished_topaz` (and the ruby / sapphire equivalents) | 9 items, three stages per colour |
| Ore blocks | `topaz_ore`, `ruby_ore`, `sapphire_ore` | Drop the matching **raw** gem, affected by Fortune |
| Cluster blocks | `topaz_cluster`, `ruby_cluster`, `sapphire_cluster` | Drop the matching **unpolished** gem, affected by Fortune |
| Unpolished building set | `unpolished_<gem>_block`, `unpolished_<gem>_stair`, `unpolished_<gem>_slab` | 9 blocks |
| Polished building set | `polished_<gem>_block`, `polished_<gem>_stair`, `polished_<gem>_slab` | 9 blocks |
| Creative tab | `colorful_crystals:tab` — "Colorful Crystals" | The only tab; icon is the Topaz Cluster |
| World generation | **None** | No biome modifier, no feature, no budding block |
| Loot tables | 24 block loot tables | Ores and clusters use the ore-drop template; everything else self-drops |
| Recipes | 36 recipe JSON files | Crafting + stonecutting; ores and clusters have **no** recipe |

## Compatibility

The mod ships an optional JEI plugin that shows the two processing steps as recipe categories. Without JEI the mechanics are unchanged — only the in-game lookup pages disappear.
