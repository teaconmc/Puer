---
title: "Calypso's Candy Workshop (CCW)"
navigation:
  title: "Calypso's Candy Workshop (CCW)"
---

# Calypso's Candy Workshop (CCW)

Calypso's Candy Workshop (mod id `ccw`) turns honeycomb-like candy chemistry into a Minecraft workflow. Extract milk without hurting cows, refine milk, sugar, main ingredients and flavoring into flavored gummies, load them into a candy magazine or glazer, and upgrade the devices at a smithing table. Core content is driven by a data-driven formula system, so the same Candy Workshop machine can produce many sugar-and-flavor combinations.

## Reading order

1. [The Candy Workshop and drawer tables](01_candy_workshop): the refining machine, its eight slots, and the drawer table used for storage and refills.
2. [Gummies and formulas](02_gummies_and_formulas): how gummy candies are produced, what flavors do, and the core sugar-effect table.
3. [Sugar powders and ingredients](03_sugar_and_materials): nether/ender sugar powder, special foods and the crafting chain behind them.
4. [The milk chain](04_milk_chain): milk extractor, carton milk, milk gelatin, calcium-rich milk and repair recipes.
5. [Candy magazine and glazer](05_candy_devices): bulk-eating magazines and the effect-applying glazer.
6. [Smithing upgrades](06_upgrades): nether and ender tiers for both devices.
7. [Advancements and stats](07_advancements): the 13 progression entries and two custom stats.
8. [Compatibility content](08_compat): sugars, items and flavors added only when another mod is installed.

## At a glance

| Topic | Current implementation |
|:---|:---|
| Mod id | `ccw` |
| Blocks | `ccw:sugar_refinery`, `ccw:plain_drawer_table`, `ccw:drawer_table` |
| Core items | `ccw:gummy`, `ccw:milk_extractor`, `ccw:milk_packaging`, `ccw:carton_milk`, `ccw:milk_gelatin`, `ccw:nether_sugar`, `ccw:ender_sugar`, `ccw:gummy_magazine`, `ccw:gummy_glazer`, and material/food items |
| Data-driven registries | `ccw:sugar`, `ccw:flavor`, `ccw:formula` |
| Machine recipe type | `ccw:refining` (serializer `ccw:common_refining`) |
| Device tiers | PRIMARY, NETHER, ENDER |
| Key binding | `Switch Glazer Mode` (default D while hovering a glazer in a container) |
| Config | none |

::: note
Gummy production is not a fixed recipe list: matching uses the data-driven `ccw:formula` registry, and only `ccw:carametal` also exists as a JSON refining recipe. Do not treat formula combinations as ordinary crafting recipes.
:::
