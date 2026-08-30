---
title: "Mekanism: More Machine"
navigation:
  title: "Mekanism: More Machine"
---

# Mekanism: More Machine

Mekanism: More Machine (mod id `mekmm`, version 2.0.0) is a NeoForge addon for Mekanism that adds more machines and factories on top of the base mod. It requires Mekanism 10.8.0 or newer and registers its content through Mekanism's module and registration APIs.

## What the mod adds

- New single machines: Recycler, Planting Station, CNC Stamper, CNC Lathe, CNC Rolling Mill, Presser, Replicator, Fluid Replicator, Chemical Replicator, Ambient Gas Collector, Wireless Charging Station and Wireless Transmission Station.
- Factory versions of these machine types in Basic, Advanced, Elite and Ultimate tiers, with extra Evolved Mekanism tiers when that addon is loaded.
- An Advanced Factory module that adds factory versions of many existing Mekanism processing chains, such as oxidizing, dissolving, washing, crystallizing, pressurised reacting, centrifuging, liquifying, pigment extracting and painting.
- A Large Machine module with large rotary condensentrator, chemical infuser, electrolytic separator, solar neutron activator, antiprotonic nucleosynthesizer and pigment mixer, plus chemical tank variants (mid and max in Basic to Ultimate tiers).
- A Large Generator module (registered only when Mekanism: Generators is installed) with large heat, gas-burning and wind generators, plus a solar heat generator.
- A silver resource line: silver/deepslate silver ores, raw silver, shards, crystals, dirty dust, dust, clumps, ingots, nuggets, enriched silver, storage blocks and dirty/clean silver slurry.
- Items and chemicals: scrap, scrap box, empty crystal, UU matter, connector, advanced electrolysis core, reflector, decoration dolls, and the chemicals nutritional paste, nutrient solution, UU matter and unstable dimensional gas.

## Reading guide

- [Getting started](01_getting_started) - requirements, creative tab, the silver resource line, machine families and recipe viewers.

## Reference snapshot

| Field | Value |
|:---|:---|
| Mod ID | `mekmm` |
| Display name | Mekanism: More Machine |
| Version | `2.0.0` |
| License | MIT |
| Target | Minecraft `[26.1.2, 26.2)`, NeoForge `26.1.2.64-beta` |
| Required dependency | Mekanism `[10.8.0,)`, loads after Mekanism |
| Optional integration | Mekanism: Generators (large generators), Curios (charging), JEI recipe viewer |
| Source notes | EMI and CraftTweaker integration classes exist in the source tree but are excluded from the main build source set |
| Config files | `machine-storage` and `machine-usage` configs, plus the injected `mekanism.world.silver.*` world-gen entries |

## Silver world generation

Silver ore **does** get its own world generation. `data/mekmm/worldgen/` ships two configured features — `ore_silver_large` (index 1) and `ore_silver_small` (index 0), both of `type: mekanism:ore`, targeting **both** `mekmm:silver_ore` and `mekmm:deepslate_silver_ore` through separate stone and deepslate replaceable tags — plus two matching placed features and `data/mekmm/neoforge/biome_modifier/silver.json`.

That modifier is a `neoforge:add_features` entry at the `underground_ores` step, and its biome selector is **`#mekanism:spawn_ores`** — Mekanism's own biome tag, not `#minecraft:is_overworld`. **So where silver appears follows whatever that Mekanism tag says**: a pack that edits the tag moves silver with it.

What Mekanism's config controls is whether the features run at all. Both placed features open with the **`mekanism:disableable`** placement modifier keyed on `ore_type: {type: silver, index: N}`, so the `mekanism.world.silver.*` entries can switch them off.

::: warning
Both placed features also set **`retro_gen: false`**. **Already-generated chunks will not receive silver retroactively** — on an existing save you will only find it in newly generated terrain, so add this mod before exploring, or plan to travel outward.
:::

See [Getting started](01_getting_started).
