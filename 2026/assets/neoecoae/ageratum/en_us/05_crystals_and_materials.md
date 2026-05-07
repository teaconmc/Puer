---
title: Crystals and Materials
navigation:
  title: Crystals and Materials
description: A full AE2-style budding crystal line for energized crystals, plus four metals and a new press.
---

# Crystals and materials

## Energized crystals grow like AE2's own

The addon ships a **complete budding-crystal line**, built exactly on AE2's pattern:

| Stage | Blocks |
|:---|:---|
| **Budding block** | `flawless` → `flawed` → `chipped` → `damaged` budding energized crystal |
| **Buds** | `small` → `medium` → `large` energized crystal bud |
| **Cluster** | `energized_crystal_cluster` |

If you have grown AE2's quartz, you already know this loop: a budding block spawns buds in water, buds grow through three sizes, and a mature bud becomes a cluster you harvest. The budding block degrades through four quality steps as it works, so a flawless block is a long-term asset and a damaged one is nearly spent.

Six **`ae2:transform`** recipes participate in AE2's in-world transformation system, which is how crystals convert in water.

## Crystal blocks

Three storage blocks exist for the crystal line:

| Block | Note |
|:---|:---|
| `energized_crystal_block` | plain energized crystal |
| `energized_fluix_crystal_block` | the fluix-equivalent |
| **`energized_superconductive_block`** | the top of the line |

The superconductive block's name lines up with the addon's new inscriber press — see below.

## Four metals

| Metal | Ore | Raw | Ingot | Block |
|:---|:---|:---|:---|:---|
| Aluminum | `aluminum_ore` | `raw_aluminum` | ✔ | `aluminum_block` |
| Tungsten | `tungsten_ore` | `raw_tungsten` | ✔ | `tungsten_block` |
| Aluminum Alloy | — | — | ✔ | `aluminum_alloy_block` |
| Black Tungsten Alloy | — | — | ✔ | `black_tungsten_alloy_block` |

The two alloys have no ore — they are made from the base metals, and they are what the higher-tier casings are built from.

### They are properly tagged

All four ingots are added to **AE2's `metal_ingots` tag**, and the addon ships **48 convention-tag files** under `c` covering ores, raw materials, ingots, nuggets, dusts and storage blocks. Two consequences:

- AE2 machinery that accepts metal ingots accepts these without any patching.
- **Any mod that reads convention tags can use this material line** — the addon is a good citizen here, and this is worth noting because plenty of addons are not.

## The superconducting processor press

`superconducting_processor_press` is added to **AE2's own `inscriber_presses` tag**, which means AE2's Inscriber accepts it directly — no separate machine, no patching of AE2's recipe system.

Ten **`ae2:inscriber`** recipes ship with the addon, so the press has a real production line behind it.

This is the cleanest possible way to extend AE2's processor tiers: put the press in the tag AE2 already reads.

## Cryotheum Solution

Registered as a fluid, a block and a bucket, and consumed by the cooling loops of the [computation](02_computation_system) and [crafting](03_crafting_system) systems. The addon ships **two `neoecoae:cooling` recipes** — its own recipe type — for handling it.

⚠️ **Cryotheum Solution has no Chinese translation.** Its three keys — block, fluid and bucket — exist only in the datagen-produced English file, so a Chinese client shows raw text for all three. See [Playing with other mods](07_technical_and_limits).

## Optional processing routes

If you have **Mekanism**, twelve extra recipes become available — six `mekanism:crushing` and six `mekanism:enriching` — giving the ores and metals machine-processing routes.

If you have **ExtendedAE**, five more appear: three crystal-fixer, one crystal-assembler and one circuit-cutter recipe.

If you have **AdvancedAE**, two `advanced_ae:reaction` recipes appear.

**All three of those mods are optional.** Without them those recipes simply do not appear, and the vanilla and AE2 routes remain. See [Playing with other mods](07_technical_and_limits).

[Back to index](index)
