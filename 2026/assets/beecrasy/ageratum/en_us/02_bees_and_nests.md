---
title: "Bees and Wild Nests"
navigation:
  title: "02 Bees and Wild Nests"
items:
  - "beecrasy:queen_bee"
  - "beecrasy:butterfly_net"
  - "beecrasy:natural_hive"
---

# Bees and Wild Nests

<block id="beecrasy:natural_hive"/>

Beecrasy represents queens, drones, and larvae as items carrying genome data rather than as vanilla bee entities. A queen drives breeding and hive work, drones contribute haploid genes, and larvae continue developing while their survival timer remains. Blank or invalid genome items are not suitable as normal starter stock.

<recipe id="beecrasy:crafting/butterfly_net"/>

The Butterfly Net is the mod's only tool in the `beecrasy:net` tag. Breaking a nascent, small, medium, or large wild nest with it invokes loot logic that generates a related bee family. A normal tool should not be expected to produce the same bees.

## Forming a Natural Hive

A Queen Bee item left on the ground for more than `200 ticks` can turn into a Natural Hive. This is a real formation route in the current code, but it still assumes that a queen has already been obtained and therefore does not solve the missing world-entry problem.

::: tip
After obtaining the first bees, store different genomes separately and establish a Skep quickly. Genetics live on the item stacks themselves, so careless storage or dropped-item cleanup can erase an entire breeding line.
:::

[Back to the Beecrasy index](index)
