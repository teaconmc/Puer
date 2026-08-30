---
title: Getting Started
navigation:
  title: Getting Started
items:
  - yuushya:pos_trans_item
description: The two creative tabs, what is craftable, and the one id rule that will trip you up.
---

# Getting Started

## The id rule, first

Everything in this mod registers under **`yuushya`**, while the mod itself is **`yuushya_modelling`**. Before you write any command, datapack or CraftTweaker script:

| You want | Write |
|:---|:---|
| Open this guide | `/ageratum yuushya_modelling` |
| Give yourself a tool | `/give @s yuushya:pos_trans_item` |
| Place a carrier block | `/setblock ~ ~ ~ yuushya:showblock` |
| Reload models | `/yuushya_reload_model reload all` |

Note the command name itself has no namespace prefix at all — it is literally `yuushya_reload_model`.

## Where things live

**`yuushya:modelling`** (icon: the layer shifter) holds the working set:

- The three carrier blocks — `showblock`, `itemblock`, `textblock`.
- The transform tools — see [The transform tools](03_transform_tools).
- The utility tools — `gui_item`, `history_item`, `color_picker_item`, `engrave_item`, `shape_item`, `destroy_item`, `debug_stick_item`, `get_lit_item`.

**`yuushya:primitive`** (icon: `chibi_0`) holds the palette:

- `primitive_1` through `primitive_32` — the raw shapes you dress your carriers with.
- The chibi items, which are `Rarity.RARE` decorative pieces stacking to 16.

## Craftability

**52 of the 58 items have recipes**, and the coverage is where it matters:

| Group | Craftable? |
|:---|:---|
| All 32 `primitive_*` shapes | **Yes** — the whole palette is survival-legal |
| The transform and utility tools | **Yes** (`pos_trans_item`, `rot_trans_item`, `scale_trans_item`, `slot_trans_item`, `micro_pos_trans_item`, `move_transformdata_item`, `get_blockstate_item`, `get_lit_item`, `gui_item`, `engrave_item`, `color_picker`, `hammer`, …) |
| `showblock`, `itemblock` | **Yes** |
| Materials (`the_encyclopedia`, `shimmering_pearl`, `everlasting_wood`, `sparking_flame`, `sprouting_dirt`, `floating_bloom`) | **Yes** |
| `textblock` | **No recipe** |

::: tip
The six material items — encyclopedia, shimmering pearl, everlasting wood, sparking flame, sprouting dirt, floating bloom — are all `Rarity.RARE` and stack to 16. They are the crafting currency the tools are built from, so make them first.
:::

## Block properties

All three carriers share the same profile:

| Property | Value |
|:---|:---|
| Strength | `4.0` |
| Occlusion | `noOcclusion()` + `forceSolidOn()` |
| Light | Driven by the `LIT` blockstate — see [Engraving and colour](04_engraving_and_colour) |

`noOcclusion` is what lets a carrier hold a partial shape without the game culling the faces behind it; `forceSolidOn` keeps it valid as a support surface anyway.

## First build, minimal path

1. Craft or grab a `yuushya:showblock` and place it.
2. Use `get_blockstate_item` on a block whose look you want to copy.
3. Apply it to the show block.
4. Use `pos_trans_item` / `rot_trans_item` / `scale_trans_item` to move that appearance into position.
5. Add another layer with `slot_trans_item` if the shape needs two parts.

Details of steps 2–5 are in [The transform tools](03_transform_tools).

[Back to index](index)
