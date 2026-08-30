---
title: MagicIO
navigation:
  title: MagicIO
items:
  - magic_io:zhen_bus
---

# MagicIO（枢革墟烬）

MagicIO is a TeaCon 2026 entry by yhzcake, mod id `magic_io`, group `cn.yhzcake.magicio`, version `1.0.0`, targeting Minecraft 26.1.2 on NeoForge 26.1.2.41-beta.

It is an **elemental automation framework**. Its central idea is the *zhen* (阵, a magic array): a block that consumes inputs, waits a processing time, and produces outputs — but built as a matrix of **37 functions across 6 tiers**, each bound to one of **16 elements** that themselves form a synthesis tree. On top of that sits a **Zhen Bus** that hosts per-face processors and exposes item, fluid and energy capabilities to neighbouring machinery.

The ambition is real and the framework underneath it is genuinely sophisticated. The **content on top of it is not finished**, and this guide says so plainly wherever that matters.

## Licensing

`mod_license` is **`All Rights Reserved`**. Redistribution in a modpack needs the author's permission.

## Three things to know before you start

**Nothing is craftable.** The mod ships 35 recipe files and **not one of them is a vanilla crafting recipe** — they are all machine recipes for the zhen blocks themselves. Every block and item comes from the creative tab or `/give`.

**No block drops anything.** There are three loot tables in the mod and **none of them is a block loot table**; there is no `loot_table/blocks/` directory at all. Breaking any of the ~140 blocks destroys it permanently, in survival and creative alike.

**The Grid Cell Panel's pattern system does not run.** The block, its block entity, its ticker and one pattern rule all exist, but the two registries they depend on are never attached to the mod event bus. Details in [06 Grid Cell Panel](06_grid_cell_panel).

## Scale

| Registry | Count |
|:---|--:|
| Zhen blocks | **138** (137 tiered + `grid_cell`) |
| Other blocks | 2 — `zhen_bus`, `grid_cell_panel` |
| Item definitions | **142** (140 block items + `coal_coke` + `example_item`) |
| Element types | **16** |
| Zhen functions | **37** |
| Zhen tiers | **6** |
| IO types | 3 — item, fluid, energy |
| Zhen recipes | 35 |
| Loot tables | 3 (content tables, not block drops) |
| Mixins | 2 |
| Commands | 1, client-side |
| Config options | 4, all inert |

## Reading path

1. [01 Getting started](01_getting_started) — how to obtain anything, and the one tool that assembles a bus.
2. [02 Elements](02_elements) — the 16 elements and how they combine.
3. [03 Zhen tiers and types](03_zhen_tiers_and_types) — the 37 × 6 matrix and what a tier actually changes.
4. [04 Zhen Bus and IO](04_zhen_bus_and_io) — per-face processors, capabilities, and installing a processor.
5. [05 Recipes](05_recipes) — the custom recipe format, its datapack constraints, and its gaps.
6. [06 Grid Cell Panel](06_grid_cell_panel) — what is built and what never runs.
7. [07 Good to know](07_technical_and_limits) — the config changes nothing, one untranslated screen, and `/magicio tags`.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id / name | `magic_io` / MagicIO, v1.0.0 |
| License | **All Rights Reserved** |
| Version target | Minecraft 26.1.2 (pinned), NeoForge 26.1.2.41-beta |
| Optional integrations | **JEI** `[29.5.0.0,)` and **Jade** `[26.1.0,)`, both properly declared |
| Localization | English 80 keys, Chinese 81 |
