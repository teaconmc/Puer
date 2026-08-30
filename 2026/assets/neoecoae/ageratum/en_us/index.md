---
title: Neo ECO AE Extension
navigation:
  title: Neo ECO AE Extension
items:
  - neoecoae:computation_system_l4
---

# Neo ECO AE Extension

An Applied Energistics 2 addon by DancingSnow and ZhuRuoLing, adding large-scale computation and crafting multiblocks.

Its own description is exact: *"Provides higher-performance components."* Where AE2 gives you a crafting CPU and co-processors, this addon gives you **multiblock systems with parallel cores, threading cores, and a coolant loop you have to manage** — plus a batch-crafting fast path that changes how requests are executed rather than just making them bigger.

## Two required dependencies

| Mod | Range |
|:---|:---|
| **AE2** | `[26.1.10-beta,)` |
| **LDLib2** | `[26.1.2.22,)` |

Both `side="BOTH"`. LDLib2 is not optional decoration — every GUI in this addon is built on it, and the addon ships an **LSS stylesheet** (`eco.lss`) to style them.

Its Minecraft range is **`[26.1.2,)`** — open-ended, with no upper bound.

## Three systems, three tiers each

Everything scales through tiers named **`l4`, `l6` and `l9`**:

| System | Tiered blocks |
|:---|:---|
| **Computation** | system, parallel core, threading core, cooling controller |
| **Crafting** | system, parallel core |
| **Storage** | system |
| Energy | energy cell |

Around them sit casings, interfaces, vents, a pattern bus, a worker, a transmitter, a drive, and fluid input/output hatches.

## What to know before you build

**There is a coolant loop.** The GUI textures include cold and hot coolant progress bars and an on/off cooling toggle, and the addon registers its own `neoecoae:cooling` recipe type plus a **Cryotheum Solution** fluid. Computation cores are not fire-and-forget.

**There is an overclock toggle.** The interface carries on/off overclock states alongside the cooling controls.

**19 of its 166 recipes need optional mods.** Mekanism, ExtendedAE and AdvancedAE each unlock processing routes that silently do not appear without them. Details in [Playing with other mods](07_technical_and_limits).

## Reading path

1. [01 Getting started](01_getting_started) — requirements, ores and the material line.
2. [02 The computation system](02_computation_system) — cores, cooling and overclocking.
3. [03 The crafting system](03_crafting_system) — pattern bus, workers, and the batch fast path.
4. [04 Storage and cells](04_storage_and_cells) — ECO cells, drives and energy cells.
5. [05 Crystals and materials](05_crystals_and_materials) — budding energized crystals, four metals, and the new press.
6. [06 Classic textures](06_classic_textures) — the built-in alternative texture pack.
7. [Playing with other mods](07_technical_and_limits) — which mods unlock extra recipes, and two things to know first.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id / version | `neoecoae` / `1.3.4` |
| Authors / licence | DancingSnow, ZhuRuoLing / **GPLv3** |
| Required | **AE2 `[26.1.10-beta,)`**, **LDLib2 `[26.1.2.22,)`** |
| Minecraft | **`[26.1.2,)`** — no upper bound |
| Blocks | 62 blockstates |
| Items | 121 definitions |
| Recipes | **166**, in 16 different types |
| Advancements | 103 |
| Loot tables | 61 |
| Mixins | 14 common + 1 client |
| Built-in resource pack | **`classic_pack`**, 548 files |
