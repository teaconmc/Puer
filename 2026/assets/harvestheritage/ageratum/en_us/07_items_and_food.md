---
title: "Items and food"
navigation:
  title: "Items and food"
---

# Items and food

## Grape (`harvestheritage:grape`)

The Grape is the custom seed example shipped in the mod's datapack data. Its seed definition (`harvestheritage_seeds/grape.json`) gives it category `misc`, result `harvestheritage:grape`, and stage `3`.

It is not found by crafting. The full route is:

1. Use the Magnifying Glass on an Unknown Seed (`harvestheritage:find/grape`) to get a grape Known Seed.
2. Craft it into a Seed Packet with the `harvestheritage:seedpacket/grape` recipe.
3. Plant, grow, and harvest it like any other crop; the packet can then be bred for speed and output.

## Chrome Ball (`harvestheritage:zzzz`)

The Chrome Ball is a cosmetic item with a shifting colored name and a short odd tooltip. It drops when you use the Magnifying Glass on a **dropped Magnifying Glass** (`harvestheritage:find/zzzz`), which consumes the item on the ground.

It has one crafting use: it is the center ingredient of the Strange Activator (see [The Strange Activator](06_activator)).

## Fried Seed Sack (`harvestheritage:fried_seedsack`)

A fast, always-edible snack that restores **2 hunger** and **0.5 saturation** and consumes in only `0.1` seconds. It is cooked from any Seed Packet:

<recipe id="harvestheritage:fried_seedsack"/>

<recipe id="minecraft:fried_seedsack_from_campfire_cooking"/>

Eating it grants the **Snacking Spectator** advancement.

## Crazy Thursday (`harvestheritage:kfc`)

A stronger always-edible food that restores **15 hunger** and **2 saturation**. It is crafted from Paper and Cooked Chicken:

<recipe id="harvestheritage:kfc"/>

Eating it grants the **Crazy Crazy Thursday** advancement.

::: note
`harvestheritage:test_block` is also registered as a plain dev/test block. It has no survival gameplay and is not part of the crop loop.
:::

[Back to index](index)
