---
title: The Palette and Material Families
navigation:
  title: Palette and Families
description: How 23 colours and 18 families generate 275 blocks, and why the colour names matter.
---

# The Palette and Material Families

The whole block set comes from two lists. Learn them and the catalogue stops being 275 separate things.

## The palette: 23 colours, and they are period-specific

Each colour carries a Chinese name, an English name and a sort key. The sort keys are **grouped by hue** (10s white, 20s yellow, 30s red, 40s blue/green, 50s brown, 60s gray, 70s black), which is why the creative tab reads in a sensible order rather than alphabetically.

| Id | Chinese | English | Key |
|:---|:---|:---|---:|
| `white` | 白 | White | 10 |
| `dirty_white` | **脏白** | Dirty White | 11 |
| `cream` | 米黄 | Cream | 20 |
| `pale_cream` | 浅米黄 | Pale Cream | 21 |
| `sunlit_mustard` | **日晒芥黄** | Sunlit Mustard | 22 |
| `orange` | 橙 | Orange | 23 |
| `red` | 红 | Red | 30 |
| `pale_peach` | 浅桃 | Pale Peach | 31 |
| `dusty_rose` | 灰玫红 | Dusty Rose | 32 |
| `blue` | 蓝 | Blue | 40 |
| `light_ceramic_blue` | 浅瓷蓝 | Light Ceramic Blue | 41 |
| `clear` | 透明 | Clear | 42 |
| `mosaic_blue` | **马赛克蓝** | Mosaic Blue | 43 |
| `blue_reverse` | **蓝底白点** | Blue Base White Dot | 44 |
| `green` | 绿 | Green | 45 |
| `emerald_dot` | 翡翠绿 | Emerald Green | 46 |
| `emerald_dot_reverse` | 翡翠绿底白点 | Emerald Base White Dot | 47 |
| `brown` | 褐 | Brown | 50 |
| `dusty_mauve_brown` | 灰紫褐 | Dusty Mauve Brown | 51 |
| `dusty_mauve_brown_reverse` | 灰紫褐底白点 | Dusty Mauve Brown Base White Dot | 52 |
| `plain` | 素 | Plain | 59 |
| `gray` | 灰 | Gray | 60 |
| `black` | 黑 | Black | 70 |

::: tip
**The names are the design document.** "Dirty white" and "sunlit mustard" are not colour-picker labels — they describe **weathered render on a real building**. If you want the mod to look right, prefer these over the clean primaries: a facade in `dirty_white` and `pale_cream` reads as twenty years old, the same facade in `white` reads as new.
:::

**The three `_reverse` colours are mosaic inversions**: `blue_reverse` is 蓝底白点 — a blue field with white dots, i.e. the same mosaic tile with figure and ground swapped. Pairing a colour with its `_reverse` on adjacent surfaces is how real mosaic facades were banded.

## The families: 18 of them, each with its own shape and colour list

A family declares more than a texture. Reading one entry from the generated spec:

```
"small_tile", "solid_material", "小方砖", "Small Tile",
group   = "brick_and_tile"
base    = "solid"
shapes  = cube, slab, stairs, wall, slope, triangle_wall
colours = white, dirty_white, pale_cream, sunlit_mustard, pale_peach,
          dusty_rose, light_ceramic_blue, dusty_mauve_brown,
          mosaic_blue, emerald_dot
props   = stone, hardness 1.5, blast 6.0, STONE sound
```

Three things follow from this that matter when you build:

**1. The colour list is per-family, not global.** `small_tile` offers 10 of the 23 colours. So **not every family exists in every colour** — the block count is the sum over families of (its colours × its shapes), not 23 × 18. Asking for `terrazzo` in `black` may simply not exist.

**2. Every surface family gets the same six shapes**: `cube`, `slab`, `stairs`, `wall`, `slope`, `triangle_wall`. The last two are the mod's own additions and need custom models — see [Special shapes](03_special_shapes).

**3. Properties are declared, not inherited.** Surface families are `stone` material at hardness 1.5 / blast 6.0 with the `STONE` sound — softer than vanilla stone (1.5/6.0 vs stone's 1.5/6.0 is comparable, but note these are *declared* per family, so glazing and infrastructure differ).

## The families, grouped

| Group | Families |
|:---|:---|
| `brick_and_tile` | small tile 小方砖, vertical tile 竖条砖, horizontal tile 横条砖 |
| `concrete_and_plaster` | painted cement 水泥, terrazzo, mosaic |
| Glazing | curtain glass, window glass panel, framed window 1 / 2 / 3, framed window slope, prefab window balcony |
| Infrastructure | security grille, concrete utility pole, power line, cable system |

## The two content collections

The generator groups families into two named collections, and their names state the intent outright:

| Collection | Families |
|:---|:---|
| **`qianxi_core`** (千禧 — *millennium*) | small tile, vertical tile, horizontal tile, painted cement, terrazzo, mosaic, curtain glass |
| `window_and_infra` | window glass panel, security grille, concrete utility pole, power line, framed window 1/2/3, framed window slope, prefab window balcony |

**`qianxi_core` is the mod's thesis**: seven surface families that, combined, produce the turn-of-the-millennium facade. Everything in `window_and_infra` is what you attach to it.

[Back to index](index)
