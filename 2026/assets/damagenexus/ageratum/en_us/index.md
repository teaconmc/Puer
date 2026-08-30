---
title: Damage Nexus
navigation:
  title: Damage Nexus
---

# Damage Nexus（伤害枢纽）

Damage Nexus is a TeaCon 2026 entry by NaimJeg, mod id `damagenexus`, group `io.github.naimjeg`, version `0.1.0` under the **MIT** license, targeting Minecraft 26.1.2 on NeoForge 26.1.2.75. Its declared description is "Intercept and replace vanilla damage".

This is a **framework mod, not a content mod**. It adds no items, no blocks, no entities and no recipes. Instead it inserts a complete damage pipeline between the attacker and the target: incoming damage is classified into channels, run through seven ordered phases, adjusted by rules and attributes, and only then written back to the game.

## The one thing to know before installing

The vanilla-compatibility mode defaults to **`FULL_REPLACEMENT`**. In that mode Damage Nexus **suppresses vanilla armor, vanilla enchantment scaling, vanilla mob-effect scaling and vanilla innate resistance**, and computes all of them itself. Installing this mod is therefore not additive — it takes over damage reduction on day one. See [07 How it changes damage](07_vanilla_compatibility.md) before adding it to an existing world.

## What is actually registered

| Registry | Entries |
|:---|:---|
| Items / blocks / entities / recipes | **none** |
| Attributes | **25** (crit, dodge, 9 channel bonuses, 9 resistances, thorns, healing) |
| Data components | 2: `damagenexus:damage_affixes`, `damagenexus:damage_entries` |
| Data attachments | 2: `damagenexus:pending_jump_crit`, `damagenexus:damage_transactions` |
| Damage channels (data-driven) | 8 JSON files, plus a built-in `untyped` |
| Damage-type tags | 19 files |
| Other tags | `damagenexus:bosses` (entity type), `damagenexus:spears` (item) |
| Mixins | 4 |
| Config | one `COMMON` file with 5 sections |
| Commands | `/damagenexus`, **only when a diagnostic or developer flag is on** |

## Reading path

1. [01 Getting started](01_getting_started.md) — what changes the moment you install it, and how to verify it is working.
2. [02 Damage channels](02_damage_channels.md) — the eight channels, their trigger tags, armor behaviour and priority.
3. [03 Pipeline and phases](03_pipeline_and_phases.md) — the seven phases and the nine application buckets.
4. [04 Attributes](04_attributes.md) — all 25 attributes with their real defaults and ranges.
5. [05 Rules and datapacks](05_rules_and_datapacks.md) — 24 conditions, 14 operations, rule providers and stacking.
6. [06 Affixes and entries](06_affixes_and_entries.md) — the two item data components.
7. [07 How it changes damage](07_vanilla_compatibility.md) — the default replaces vanilla reduction, and the per-system switches do nothing by default.
8. [08 Configuration and diagnostics](08_configuration_and_diagnostics.md) — every config section, the diagnostic domains, and command gating.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id / name | `damagenexus` / Damage Nexus, v0.1.0, MIT |
| Author / group | NaimJeg / `io.github.naimjeg` |
| Version target | Minecraft 26.1.2 / NeoForge `[26.1.2.75,)` |
| Default compatibility mode | `FULL_REPLACEMENT` — vanilla reduction fully replaced |
| Channels | 8 shipped + `untyped` |
| Pipeline phases | 7 |
| Application buckets | 9 |
| Content items | none — configure through datapacks, attributes and the Java API |
| Commands out of the box | none |
