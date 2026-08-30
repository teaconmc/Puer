---
title: Burning blocks and decor
navigation:
  title: Burning blocks and decor
---

# Burning blocks and decor

This mod adds two "burning" block types that serve as AnvilCraft heat sources and eventually leave behind residue blocks, plus a set of decorative/display signage.

## Burning coal block

`burning_coal_block` (燃烧的煤炭块) is a lit coal-based heat source that glows (light 10) and is tagged `anvilcraftextrapower:redhot_blocks`. Standing on it without sneaking deals 4 damage (hot floor). It burns for roughly 9600 ticks and then turns into `ashes_block` (灰烬). The ashes block drops 3–5 `ashes`. If it is hit by an explosion, it is re-placed with its `toboom` flag set and detonates with a radius of 3.5.

Its crafting recipe smelts a coal block:

<recipe id="anvilcraftextrapower:burning_coal_block"/>

## Burning magnesium block

`burning_magnesium_block` (燃烧的镁块) is a brighter heat source (light 15) tagged `anvilcraftextrapower:incandescent_blocks`. Standing on it with an empty hand deals 10 damage. It burns for roughly 9600 ticks and then turns into `magnesium_oxide_block` (氧化的镁块), which drops 3–5 `magnesium_oxide` (苦土). In addition:

- If a burning magnesium block is placed next to water, it drains the water and detonates with a radius of 3.0.
- If it has an `overheated` block above it, it becomes overheated (a stronger heat source).
- Being caught in an explosion sets its explosion flag, detonating with a radius of 4.5.

## Chemistry materials

The magnesium/sulfur family shares an AnvilCraft-style material chain:

| Material | Block | Notes |
|:---|:---|:---|
| `magnesium_ingot` / `magnesium_nugget` | `magnesium_block` | Store/recover magnesium; the ingot is a beacon payment item |
| `sulfur` | `sulfur_block` | Store/recover sulfur |
| `coal_powder` | — | Coal dust (tagged `c:dust/coal`) |
| `magnesium_oxide` | `magnesium_oxide_block` | Residue of burning magnesium |
| `ashes` | `ashes_block` | Residue of burning coal |
| `sulfuric_acid` | — | Used to craft the empty lead-acid battery |

## Decorative and display blocks

| Block | Notes |
|:---|:---|
| `light` | Unbreakable, non-solid, light 15; placed next to burning blocks |
| `earth` | Solid display block, light 15, indestructible |
| `display_mushroomcloud` | Display-only mushroom-cloud block |
| `sign_base`, `sign_anvil_fall`, `sign_construction`, `sign_do_not_operate`, `sign_highspeed_anvil`, `sign_laser_hazard`, `sign_radiation`, `sign_time_hazard`, `sign_strong_gravity`, `sign_magnetic_field` | Decorative warning signposts |

[Back to index](index)
