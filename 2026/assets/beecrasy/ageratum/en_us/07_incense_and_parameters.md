---
title: "Incense and Parameters"
navigation:
  title: "07 Incense and Parameters"
items:
  - "beecrasy:pheromone"
  - "beecrasy:incense_aridity_tolerance"
  - "beecrasy:incense_humidity_tolerance"
  - "beecrasy:incense_cold_tolerance"
  - "beecrasy:incense_heat_tolerance"
  - "beecrasy:incense_longer_lifespan"
  - "beecrasy:incense_shorter_lifespan"
---

# Incense and Parameters

Incense in dedicated hive slots provides parameter modifiers for the next work cycle. Aridity, humidity, cold, and heat incense change environmental tolerance, while longer- and shorter-lifespan incense alter lifecycle behavior. A Skep holds `2` incense items and a Hive holds `3`. When a hive successfully starts a cycle, it consumes one item from each participating incense slot and snapshots the modifiers for that cycle. A failed environment check that never starts work consumes nothing.

<recipe id="beecrasy:crafting/incense_aridity_tolerance"/>

<recipe id="beecrasy:crafting/incense_humidity_tolerance"/>

<recipe id="beecrasy:crafting/incense_cold_tolerance"/>

<recipe id="beecrasy:crafting/incense_heat_tolerance"/>

<recipe id="beecrasy:crafting/incense_longer_lifespan"/>

<recipe id="beecrasy:crafting/incense_shorter_lifespan"/>

## Base Pheromone

Base `beecrasy:pheromone` has no recipe, loot, or production source. The custom crafting behavior only combines an already existing Pheromone with any other item, records that item type as a mutation director, and returns the reference item. It does not create the first Pheromone. A modpack must provide the base item before directed mutation is usable.

## Usage strategy

Incense is useful for letting a locally unsuitable lineage complete a work cycle or for introducing one controlled breeding variable. It is consumed per cycle and does not permanently rewrite genes; inheritable traits still require breeding and sequencing. When diagnosing a stall, remove all incense, verify the baseline environment, then add each modifier back separately with enough stock.

::: note
The mod also registers higher-yield incense, but the current resources contain no crafting-table recipe for it. Normal survival can use it only when a modpack provides another source.
:::

[Back to the Beecrasy index](index)
