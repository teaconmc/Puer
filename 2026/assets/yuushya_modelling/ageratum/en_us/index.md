---
title: Yuushya Modelling
navigation:
  title: Yuushya Modelling
---

# Yuushya Modelling

**Yuushya Modelling** (mod id `yuushya_modelling`, version `2.4.2`, MIT) is a **freeform building toolkit**. Instead of shipping decorative blocks, it gives you three carrier blocks that can wear *any* block's appearance, plus a set of tools to shift, rotate, scale and stack those appearances until the result looks like whatever you wanted to build.

It is the modelling half of the Yuushya (悠世) project, credited to a team of eight.

::: warning
**Registry ids use `yuushya`, not `yuushya_modelling`.** The mod id and the registry namespace deliberately differ:

```java
MOD_ID      = "yuushya"             // every block, item, tab and component
MOD_ID_USED = "yuushya_modelling"   // @Mod annotation, network packets, lang files
```

So the command is `/ageratum yuushya_modelling`, but the items are `yuushya:pos_trans_item`, `yuushya:showblock` and so on. Writing `yuushya_modelling:` in a command or datapack will not resolve.
:::

## Reading guide

- [01 Getting started](01_getting_started) — the two creative tabs, and where the 58 items live.
- [02 The three carrier blocks](02_carrier_blocks) — show block, item block, text block.
- [03 The transform tools](03_transform_tools) — moving, rotating, scaling and layering.
- [04 Engraving and colour](04_engraving_and_colour) — the two menus and the picker.
- [05 Technical notes](05_technical_notes) — namespaces, the reload command, and known gaps.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id | `yuushya_modelling` |
| **Registry namespace** | **`yuushya`** |
| Version / license | `2.4.2` / MIT |
| Minecraft | 26.1.2 (gradle range `[26.1.2]`) |
| Blocks | **3** |
| Block entities | 3 |
| Items | **58** |
| Recipes | **52** |
| Loot tables | **2** — see [Technical notes](05_technical_notes) |
| Data components | 5 |
| Menus | 2 (`engrave`, `history`) |
| Creative tabs | 2 (`yuushya:modelling`, `yuushya:primitive`) |
| Commands | 1 (`/yuushya_reload_model`) |

## The idea in one paragraph

A vanilla decoration mod gives you a chair. This mod gives you a **show block** that can look like any blockstate in the game, plus tools to nudge that appearance a few sixteenths in any direction, rotate it, scale it, and stack several appearances into one block space. A chair is then something you *build* out of a plank slab shifted up and a fence post rotated sideways — and because it is all one block, it costs one block of space.

That is why the tool list is long and the content list is short: the mod's content is the **capability**, not the catalogue.

## The two tabs

| Tab | Icon | What is in it |
|:---|:---|:---|
| `yuushya:modelling` | `pos_trans_item` | The carrier blocks and the whole tool set |
| `yuushya:primitive` | `chibi_0` | 32 `primitive_*` shapes plus the chibi decorative items |

The `primitive` tab is where the raw building blocks live — all 32 of them have recipes, so the palette is fully craftable in survival.
