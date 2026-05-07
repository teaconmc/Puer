---
title: Getting Started
navigation:
  title: Getting Started
description: What you need installed, the two ores, and how the material line begins.
---

# Getting started

## Requirements

| Mod | Type | Range |
|:---|:---|:---|
| **AE2** | **required** | `[26.1.10-beta,)` |
| **LDLib2** | **required** | `[26.1.2.22,)` |
| NeoForge | required | `[26.1.2.75,)` |

Note the AE2 minimum is a **beta** version. If your pack pins a stable AE2 release older than that, this addon will not load.

**LDLib2 is a hard requirement, not a convenience.** Every interface in the addon is built with it, and the addon ships `eco.lss` — an LDLib stylesheet — to skin them. Without LDLib2 there are no GUIs at all.

Nothing else is required. Several other mods unlock extra content anyway; see [Playing with other mods](07_technical_and_limits).

## Two new ores

| Block | Raw form | Raw block |
|:---|:---|:---|
| `aluminum_ore` | `raw_aluminum` | `raw_aluminum_block` |
| `tungsten_ore` | `raw_tungsten` | `raw_tungsten_block` |

Both smelt and blast — the addon ships 8 smelting and 8 blasting recipes — and both have crushing and enriching routes through **Mekanism**, if you have it.

## Four metals, two of them alloys

| Metal | Block | Casing |
|:---|:---|:---|
| Aluminum | `aluminum_block` | `aluminum_alloy_casing` |
| Tungsten | `tungsten_block` | — |
| **Aluminum Alloy** | `aluminum_alloy_block` | `aluminum_alloy_casing` |
| **Black Tungsten Alloy** | `black_tungsten_alloy_block` | `black_tungsten_alloy_casing` |

All four ingots are contributed to **AE2's own `metal_ingots` tag**, so AE2 machinery that accepts metal ingots accepts these. They are also fully described in the `c` convention tags — 48 tag files — so any mod that reads convention tags can see them.

The two **casings** are the structural blocks of the multiblocks: aluminum alloy for the lighter tiers, black tungsten alloy for the heavier ones.

## Where the addon plugs into AE2

Three integration points are worth knowing up front:

**A new inscriber press.** `superconducting_processor_press` is added to AE2's `inscriber_presses` tag, so AE2's own Inscriber accepts it. Ten `ae2:inscriber` recipes ship with the addon.

**Cell disassembly.** Six `ae2:storage_cell_disassembly` recipes let you break the addon's cells back down, matching AE2's own behaviour for its cells.

**Crystal transformation.** Six `ae2:transform` recipes participate in AE2's in-world transformation system.

## The Integrated Working Station

`integrated_working_station` is the addon's own machine, and it has its own recipe type — **20 `neoecoae:integrated_working_station` recipes** ship with it. It is the crafting station for most of the addon's components, so build it early.

## Recipe overview

166 recipes in **16 types**, which is unusually varied:

| Family | Count |
|:---|--:|
| Vanilla shaped / shapeless | 57 / 20 |
| **`neoecoae:integrated_working_station`** | **20** |
| Vanilla smithing transform | 10 |
| **`ae2:inscriber`** | **10** |
| Vanilla smelting / blasting | 8 / 8 |
| `ae2:storage_cell_disassembly` / `ae2:transform` | 6 / 6 |
| **`mekanism:crushing` / `mekanism:enriching`** | 6 / 6 |
| **`extendedae:*`** | 5 total |
| **`advanced_ae:reaction`** | 2 |
| **`neoecoae:cooling`** | 2 |

The foreign types matter: **Mekanism, ExtendedAE and AdvancedAE are optional**, so those 19 recipes only exist if you have those mods installed. See [Playing with other mods](07_technical_and_limits).

## A suggested order

1. Find and smelt **aluminum** and **tungsten**.
2. Make the two **alloys** and their **casings**.
3. Build an **Integrated Working Station**.
4. Grow **energized crystals** — see [05 Crystals and materials](05_crystals_and_materials).
5. Build a **storage system** first (it is the simplest multiblock), then **crafting**, then **computation**.

[Back to index](index)
