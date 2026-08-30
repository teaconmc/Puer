---
title: "The Strange Activator"
navigation:
  title: "The Strange Activator"
---

# The Strange Activator

The Strange Activator (`harvestheritage:activaor_block` — the registry keeps this exact spelling) is an expensive redstone block that accelerates random-tick growth.

## Crafting

<recipe id="harvestheritage:activaor_block"/>

The recipe needs:

- 8 Crying Obsidian
- 1 Nether Star
- 1 End Crystal
- 1 Chrome Ball (`harvestheritage:zzzz`)
- 1 Waxed Oxidized Copper Bulb
- 1 Echo Shard

## How it works

The block is powered by a normal **redstone signal** from any neighbor. It has a lit/unlit state:

- When it receives power it lights up immediately.
- When power stops it waits **4 ticks** before turning off, so short signal changes do not flicker it constantly.

While lit, its block entity calls `randomTick` on **all six adjacent blocks every game tick**. That affects any random-tick block next to it, not only Crop Stands: plants, grass, and other random-tick mechanics all receive accelerated rolls. For a planted Crop Stand this effectively runs its growth roll every tick instead of only during vanilla random ticks.

## Practical use

Place the Activator directly beside a Crop Stand row. Because it accelerates all six neighbors, a single Activator can cover up to six stands (or four stands plus other random-tick blocks). It is also useful for speeding up vanilla crops, but its expensive recipe keeps it a late-game tool.

::: note
The Activator performs its neighbor rolls without checking the type of neighbor. In an unloaded or edge situation this is a normal server random-tick call; there is no range configuration — exactly the six directly adjacent blocks are accelerated.
:::

[Back to index](index)
