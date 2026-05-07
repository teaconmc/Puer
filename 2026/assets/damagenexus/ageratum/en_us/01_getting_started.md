---
title: Getting Started
navigation:
  title: Getting Started
description: What changes the moment you install Damage Nexus, and how to confirm it is running.
---

# Getting started

## There is nothing to craft

Damage Nexus registers no items, blocks, entities or recipes. There is no creative tab, no guide item and no starting quest. Everything it does happens automatically inside combat, and everything you can change is done through configuration, datapacks, attribute modifiers or the Java API.

## What changes immediately

The moment the mod loads, every damage event that it manages is routed through its own pipeline instead of vanilla's reduction maths. With the shipped defaults that means:

- Vanilla **armor** reduction is suppressed and recomputed by Damage Nexus.
- Vanilla **offensive enchantment** scaling (Sharpness, Smite, Bane, Power, Density, and so on) is suppressed and rebuilt as bridge contributions.
- Vanilla **mob-effect** scaling (Strength, Weakness, Resistance) is suppressed and recomputed.
- Vanilla **innate resistance** is suppressed.

Damage is also **classified into channels** — physical, fire, cold, lightning, magic, wither, poison, kinetic — based on damage-type tags, and each channel has its own resistance attribute and its own armor behaviour.

Numbers in combat will therefore differ from vanilla even with no datapack installed. This is the mod working as designed, not a bug. If you want vanilla reduction to keep running alongside, switch the compatibility mode to `COOPERATIVE`; see [07 How it changes damage](07_vanilla_compatibility.md).

## What does *not* go through the pipeline

Two categories are excluded:

1. Any damage type in `#damagenexus:bypasses_damagenexus`. **This tag ships as a declared tag with no file of its own, so it is empty until you author one** — nothing bypasses through it out of the box.
2. Any damage type in `#minecraft:bypasses_invulnerability` — `/kill`-style and out-of-world damage. The source comment states this guard exists deliberately so that "hard vanilla special damage" stays outside the mod.

## How to confirm it is running

Because the mod is invisible by default, use one of these:

- **Item tooltips.** Set the tooltip debug level above `OFF` and items carrying Damage Nexus affixes or entries, plus bridged vanilla enchantments, gain `[DamageNexus]` / `[DN Debug]` tooltip blocks. Hold `Shift` to expand them.
- **Diagnostics logging.** Raise the diagnostic domain and the server log starts emitting per-hit calculation traces.
- **Commands.** Turn on either the developer test commands or debug mode, restart, and `/damagenexus` appears.

All three are covered in [08 Configuration and diagnostics](08_configuration_and_diagnostics.md).

## Where to go next

- To understand how a hit is classified: [02 Damage channels](02_damage_channels.md)
- To understand the order of operations: [03 Pipeline and phases](03_pipeline_and_phases.md)
- To give a player or mob new combat stats: [04 Attributes](04_attributes.md)
- To author your own behaviour: [05 Rules and datapacks](05_rules_and_datapacks.md)

[Back to index](index)
