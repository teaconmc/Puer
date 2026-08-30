---
title: "Flowers and Resources"
navigation:
  title: "12 Flowers and Resources"
items:
  - "beecrasy:comb_foundation"
  - "beecrasy:empty_comb_block"
  - "beecrasy:honey_comb_block"
  - "beecrasy:asphodel"
  - "beecrasy:protea"
---

# Flowers and Resources

Beecrasy registers Beeswax, Honey Drops, Royal Jelly, Comb Foundations, Empty Comb Blocks, and Honey Comb Blocks among its production resources. A Comb Foundation is an ingredient for crafting a Hive, not a material consumed continuously by hive work. Comb blocks provide compact storage and can participate in press recycling.

<recipe id="beecrasy:crafting/comb_foundation"/>

<recipe id="beecrasy:crafting/empty_comb_block"/>

<recipe id="beecrasy:crafting/honey_comb_block"/>

## Flower set

The mod provides Asphodel, three Delphinium colors, two Foxtail Lily colors, three Hollyhock colors, and two Protea variants, for `11` flowers in total. Most convert to matching dyes through standard crafting recipes and can serve as nearby flower sources and decoration.

A working hive attempts to replace eligible grass or fern blocks within its flower radius with basic Beecrasy flowers, using a default attempt rate of `1`. That random pool contains `9` basic flowers, but not Fiery Foxtail Lily or Artisan Protea. Transformation still requires an obtained bee and an operating hive, so it does not repair the initial bee-entry problem. A pack that expects collection of all `11` flowers must provide another source for the two special variants.

::: tip
The default flower radius is `4`, and it controls grass or fern transformation rather than hive startup. If no new flowers appear, verify that the hive is operating and eligible blocks are in range. Placing an existing flower does not clear `INVALID_ENVIRONMENT`.
:::

[Back to the Beecrasy index](index)
