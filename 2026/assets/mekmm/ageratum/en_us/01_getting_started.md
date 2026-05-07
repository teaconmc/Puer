---
title: "Getting started"
navigation:
  title: "Getting started"
---

# Getting started

## Requirements and install

- Minecraft `26.1.2` or newer on the 26.1 line and a matching NeoForge build (the build targets `26.1.2.64-beta`).
- Mekanism `10.8.0` or newer is a hard dependency and loads before this mod. The mod jar also embeds Mekanism, Mekanism: Additions, Mekanism: Generators and Mekanism: Tools through JarJar.
- Mekanism: Generators is optional; the Large Generator module only registers its blocks when the generators module is loaded.
- JEI is supported as a recipe viewer; EMI and CraftTweaker integration classes exist in the source tree but are not part of the current main build.

## Creative tab

All content ships through the "Mekanism: More Machine" creative tab, which also lists the Advanced Factory blocks, Large Machine blocks and, when the generators module is loaded, the Large Generator blocks.

## The silver resource line

Silver ore (`mekmm:silver_ore`) and deepslate silver ore (`mekmm:deepslate_silver_ore`) are registered blocks that require the correct mining tool (hardness 3 and 4.5 respectively). The mod uses a **mixin** to inject a SILVER entry into Mekanism's ore type registry with small and large vein configs; the vein shape comes from Mekanism config entries such as `mekanism.world.silver.generate` (small vein anchor -24 to 88, large vein anchor -32 to 64, trapezoid shape).

**Silver does generate naturally.** The mod ships a complete standalone world-gen set — two configured features, two placed features and a biome modifier keyed to `#mekanism:spawn_ores` — so you can mine for it rather than spawning it in. What the Mekanism config entries control is whether those features run at all, because both placed features open with `mekanism:disableable`. One caveat applies to existing worlds: `retro_gen` is `false`, so **already-generated chunks contain no silver** and you will need freshly generated terrain. Full detail is on the [index](index).

The silver chain covers raw silver, shards, crystals, dirty dust, dust, clumps, ingots, nuggets, enriched silver, silver storage blocks, raw silver storage blocks, and dirty/clean silver slurry for the chemical processing path. Common tags (`c:ores/silver`, `c:ingots/silver`, `c:dusts/silver`, ...) are registered for automation.

## Machine families

- Recycling: the Recycler (`mekmm:recycler`) is a single-input machine that destroys unwanted items when a recycling recipe exists.
- Planting: the Planting Station (`mekmm:planting_station`) grows crops from seeds with a chemical (gas) input and a secondary output slot; generated data includes planting recipes for crops, flowers and saplings.
- CNC line: CNC Stamper (two inputs), CNC Lathe and CNC Rolling Mill process item-to-item recipes.
- Pressing: the Presser (`mekmm:presser`) compresses three inputs into one output.
- Replication: the Replicator family (item/fluid/chemical replicators) reproduces resources from UU matter; recipes come from data maps registered by the mod plus the `general.item_replicator.recipes` / `fluid_replicator.recipes` / `chemical_replicator.recipes` config lists (entries written as `modid:name#amount`).
- Ambient collection: the Ambient Gas Collector (`mekmm:ambient_gas_collector`) extracts unstable dimensional gas from the atmosphere; do not place blocks above the machine.
- Wireless: the Wireless Charging Station (`mekmm:wireless_charging_station`) binds to a player and wirelessly charges their equipment, inventory and (when active) Curios slots; the Wireless Transmission Station (`mekmm:wireless_transmission_station`) links two stations with the Connector (`mekmm:connector`) and transfers energy, fluids, chemicals, items and heat. Connections are limited to the same dimension.

## Factories

The seven core machine types (recycling, planting, stamping, lathing, rolling mill, pressing, replicating) each have factory blocks named `<tier>_<type>_factory` for Basic, Advanced, Elite and Ultimate tiers, processing multiple inputs per tier. Factory versions of additional Mekanism chains come from the Advanced Factory and Large Machine modules.

## Crafting and recipe viewers

Every new machine has a generated crafting recipe under `data/mekmm/recipe/` (for example `mekmm:recycler` needs a crusher, an advanced circuit/alloy and osmium ingots), and factory/tank/large-machine recipes are generated as well. Open JEI in-game to inspect the exact ingredient sets; the mod also registers JEI categories for its custom processing recipes.

[Back to index](index)