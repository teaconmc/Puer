---
title: "Humidity Control Blocks"
navigation:
  title: "08 Humidity Control Blocks"
---

# Humidity Control Blocks

Humidity modifiers are registered as block entities (`eclipticseasons:humidity_modifier`) shared by the humidity tank and dehumidifier. They change the humidity level that crop growth and meter readings see around them.

## Humidity tank

`eclipticseasons:humidity_tank` provides a humidity modification of `0.75` over the configured `humidityTankRange` radius. It ticks on the server, and its random tick is reserved for farmland moistening; the block also emits a dripping-water particle animation.

<recipe id="eclipticseasons:humidity_tank"/>

- Planks, Water Bucket, Iron Ingot, Wooden Slabs → 1 Humidity Tank

## Greenhouse dehumidifier

`eclipticseasons:dehumidifier` is the opposite modifier: it lowers humidity over its range. Its recipe:

<recipe id="eclipticseasons:dehumidifier"/>

- Hay Block, Wooden Slabs, Planks, Iron Nuggets → 1 Greenhouse Dehumidifier

## Grate humidifiers

The copper-grate family converts vanilla copper/wooden grates into humidity-modifying blocks. Registered IDs:

- `block_in_copper_grate_block`, `block_in_exposed_copper_grate_block`, `block_in_weathered_copper_grate_block`, `block_in_oxidized_copper_grate_block`
- `waxed_block_in_copper_grate_block`, `waxed_block_in_exposed_copper_grate_block`, `waxed_block_in_weathered_copper_grate_block`, `waxed_block_in_oxidized_copper_grate_block`
- `block_in_wooden_grate_block`

The block entity (`block_in_copper_grate_block`) exposes an item handler; the block is intended to be converted by putting the correct grate item inside. The wooden variant has its own recipe:

<recipe id="eclipticseasons:block_in_wooden_grate_block"/>

- 4 Logs (any `#minecraft:logs`) → 4 Wooden Grate Humidifiers

::: note
Copper-grate conversion is data-map driven: `neoforge:data_maps/block/oxidizables.json` and `waxables.json` connect the vanilla weathering/waxing states to these blocks. Weathering follows the same copper oxidation path as vanilla.
:::

[Back to the Ecliptic Seasons index](index)
