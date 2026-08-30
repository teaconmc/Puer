---
title: Gem processing
navigation:
  title: Gem processing
---

# Gem processing

Every colour has three gem items, and the two conversion steps between them are **not** crafting recipes. They are hold-to-use interactions performed directly against a vanilla block.

## The chain

| Stage | Item | Next step | Required block | Result |
|:---|:---|:---|:---|:---|
| Raw | `raw_topaz` / `raw_ruby` / `raw_sapphire` | Cut | `minecraft:stonecutter` | The matching unpolished gem |
| Unpolished | `unpolished_topaz` / `unpolished_ruby` / `unpolished_sapphire` | Polish | `minecraft:grindstone` | The matching polished gem |
| Polished | `polished_topaz` / `polished_ruby` / `polished_sapphire` | — | — | Final crafting material |

Raw gems come from ore blocks; unpolished gems come from cluster blocks or from cutting raw gems; polished gems only come from polishing unpolished gems.

## How the interaction works

1. Hold the gem and **aim at** a stonecutter (raw gem) or a grindstone (unpolished gem).
2. **Hold** the use button. The item plays the bow-drawing animation.
3. The full use duration is **20 ticks (1 second)**.
4. While working, the mod spawns item particles of the *result* item at the hit face and plays a working sound. Raw gems use the stonecutter "take result" sound; unpolished gems use the grindstone sound.
5. When the timer completes, **one** item is consumed from the stack and one result item is produced, no matter how large the stack is.

Points worth remembering:

- **Right-clicking in the air never works.** The items only accept a block target, so the interaction always fails unless the crosshair is on the correct block.
- **Looking away cancels the work.** The hit position is recomputed every tick; as soon as the crosshair leaves a valid block, the use is released and nothing is produced.
- The block is never consumed or damaged, and the stonecutter / grindstone GUI is not opened.
- The result is created on the server side only, so the item cannot be duplicated by client-side prediction.

## JEI categories

If JEI is installed, the mod registers two lookup categories built from the same item data:

| Category ID | Title | Icon | Shown block | Shown time |
|:---|:---|:---|:---|:---|
| `colorful_crystals:cut_raw_gem` | Cut Raw Gem | Raw Ruby | Stonecutter | 20 ticks |
| `colorful_crystals:polish_gem` | Polish Gem | Unpolished Ruby | Grindstone | 20 ticks |

Their titles come from the language keys `jei.category.cut_raw_gem` and `jei.category.polish_gem`.

These pages are generated at runtime from the list of hold-to-transform items. They are **display only**: the mod defines an `item_block_interaction` recipe class in code, but its recipe type and serializer registries are empty and never attached to the mod event bus, and no recipe JSON of that type is shipped. You cannot add, remove or override these two conversions with a datapack.

## Practical tips

- Because only one gem is converted per second, converting a full stack takes a while. Keep the stonecutter and grindstone next to each other so you can chain both steps without walking.
- Ore blocks and cluster blocks are both affected by Fortune, so enchanting a pickaxe is the cheapest way to multiply gems — see [03 Blocks and colour variants](03_blocks_and_variants.md).
- Both gem stages already have their own building blocks, so you do not have to polish everything. Unpolished blocks are a legitimate final material, not just an intermediate.

[Back to index](index)
