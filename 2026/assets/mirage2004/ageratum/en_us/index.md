---
title: 2004
navigation:
  title: 2004
---

# 2004

**2004** (mod id `mirage2004`, version `0.1.0`, MIT, by littlebai) is a building-block set for one very specific thing: **the look of Chinese urban housing from the early 2000s**. The name is a year.

You can tell from the palette alone — dirty white, terrazzo, mosaic blue, sunlit mustard, dusty mauve brown — and from what it chose to model: **security grilles, concrete utility poles, overhead wires, prefab balcony windows, small-tile facades**. These are the parts of a street that most building mods skip.

## Reading guide

- [01 Getting started](01_getting_started) — the four creative tabs, and the one thing to know before you build.
- [02 The palette and material families](02_palette_and_families) — how 23 colours and 18 families produce 275 blocks.
- [03 Special shapes](03_special_shapes) — slopes, triangle walls, poles, wires and balconies.
- [04 Windows and grilles](04_windows_and_grilles) — the framed/prefab window systems and the grille connection rule.
- [05 Technical notes](05_technical_notes) — the code generator, and what is deliberately absent.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id | `mirage2004` |
| Version / license | `0.1.0` / MIT |
| Minecraft | 26.1.2 (range `[26.1.2]`) |
| NeoForge | 26.1.2.73 |
| **Dependencies** | **none beyond `neoforge` + `minecraft`** |
| Blocks | **275** |
| Loot tables | 275 — one per block |
| Recipes | **none** |
| Creative tabs | 4 |
| Config options | **none** |
| Commands | none |

## The one thing to know first

::: warning
**There are no recipes at all** — the mod ships no `recipe/` directory. All 275 blocks come from the creative tabs or `/give`. Every block does have a loot table, so **placed blocks break back into themselves** and building is non-destructive; you simply cannot craft the initial stack in survival.
:::

## What is actually in here

275 blocks is a lot, but they are not 275 unrelated things. The set is **generated from a small specification**: 23 palette colours × 18 material families, plus a handful of hand-authored special shapes. Understanding those two axes is enough to predict what exists — see [The palette and material families](02_palette_and_families).

The families cover both flat surfaces and the street furniture that makes a scene read as a real place:

| Group | Examples |
|:---|:---|
| Surfaces | small tile, horizontal / vertical tile, mosaic, terrazzo, painted cement, concrete and plaster, brick and tile, stone and aggregate |
| Shapes | solid, slab, stairs, wall, pane, cutout, cube, slope, triangle wall |
| Glazing | curtain glass, window glass panel, framed window 1/2/3, prefab window balcony |
| Street | security grille (panel / arch / box / cage / cap), concrete utility pole, power line, wire, cable system |

## Scope of this documentation

The block catalogue is 277 definitions long and mechanically regular. Rather than list every id, these pages explain **the two axes that generate them**, then document the parts that do *not* follow the pattern — the special collision shapes, the grille connection tag, and the custom model loaders. That is the information you cannot recover by looking at the creative tab.
