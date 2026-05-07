---
title: "Bee City"
navigation:
  title: "11 Bee City"
items:
  - "beecrasy:bee_city_core"
  - "beecrasy:bee_city_comb"
  - "beecrasy:bee_city_queen"
---

# Bee City

<block id="beecrasy:bee_city_core"/>

<block id="beecrasy:bee_city_comb"/>

<block id="beecrasy:bee_city_queen"/>

A Bee City consists of Core, Comb, and Queen capability blocks. The current spread logic can discover and bind Bee City capability blocks that already exist, but it does not transform ordinary `beecity_spreadable` comb blocks into them. Building a mass of normal comb and waiting will not create a complete city.

None of the three Bee City blocks has a crafting recipe. Unless a modpack supplies them through quests, loot, or trading, they are available only in Creative mode or through commands. For a test structure, place a Core first and add Comb and Queen blocks manually. Put 1 Queen and at least 1 Drone into the Core, select automatic mode, and wait past a production interval before checking binding. Merely placing the blocks without running the Core does not trigger the scan.

::: warning
Once a Bee City Comb's lit state becomes true, the current logic never returns it to false. Its light means that it was active at some point, not that the network is still operating now.
:::

[Back to the Beecrasy index](index)
