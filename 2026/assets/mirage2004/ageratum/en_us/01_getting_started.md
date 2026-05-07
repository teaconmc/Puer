---
title: Getting Started
navigation:
  title: Getting Started
description: The four creative tabs, why nothing is craftable, and how to read a block id.
---

# Getting Started

## Obtaining blocks

The mod has **no recipes** — no `recipe/` directory exists anywhere in it. Everything comes from:

- the four creative tabs, or
- `/give @s mirage2004:<block_id>`.

Every one of the 275 blocks **does** have a loot table, so once placed, a block breaks back into itself. Building is non-destructive; only the initial acquisition is creative-only.

## The four creative tabs

| Tab | Icon | Holds |
|:---|:---|:---|
| `materials` | `small_tile_white` | Surface materials in all their shapes |
| `windows` | `curtain_glass_blue` | Glazing, framed windows, prefab balconies |
| `infrastructure` | — | Poles, wires, cable systems, grilles |
| (fourth) | — | Remaining groups |

The split matters more than it looks: **`infrastructure` is where the street furniture lives**, and that is the half of the mod most easily missed if you only browse for wall textures.

## How to read a block id

Ids are composed from the same two axes that generate them:

```
mirage2004:<family>_<colour>_<shape>
```

Examples straight from the catalogue:

| Id | Family | Colour | Shape |
|:---|:---|:---|:---|
| `small_tile_white` | small tile | white | (solid) |
| `curtain_glass_blue` | curtain glass | blue | (solid) |
| `concrete_utility_pole_gray_pole` | concrete utility pole | gray | pole |
| `power_line_black_wire` | power line | black | wire |
| `framed_window_2_white_clear_pane` | framed window 2 | white + clear | pane |
| `prefab_window_balcony_black_blue_balcony_left` | prefab window balcony | black + blue | balcony (left) |

Once you know the family and the colour you want, **you can usually guess the id** rather than scrolling the tab. Note the glazing families carry **two** colour terms — frame colour then glass colour (`white_clear`, `black_blue`, `white_green`).

## A realistic first build

The mod is designed around a facade, so build one:

1. **Wall surface** — pick a tile or plaster family in a period colour (`dirty_white`, `pale_cream`, `sunlit_mustard`).
2. **Windows** — a `framed_window_*` pane set into the wall; these are 2/16 thick and sit centred, not flush.
3. **Balcony** — `prefab_window_balcony_*_balcony_left` and `_right` as a pair. They are mirrored halves, not one block.
4. **Grille** — a `security_grille_*` over the window. Watch the connection rule in [Windows and grilles](04_windows_and_grilles).
5. **Street** — a `concrete_utility_pole_gray_pole` at the kerb, `power_line_*_wire` running between poles.

Steps 3–5 are what make it read as 2004 rather than as a generic apartment block.

## No configuration, no commands

There is no config file and no commands. The `Config` class exists but declares **zero options and is never registered**, so nothing is generated in `config/`. Everything the mod does is in the blocks themselves.

[Back to index](index)
