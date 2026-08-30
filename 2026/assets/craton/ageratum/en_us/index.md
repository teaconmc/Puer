---
title: Craton
navigation:
  title: Craton
---

# Craton

**Craton** (namespace `craton`, version `0.1`, MIT) replaces the Overworld's underground with **layered geology**. Instead of a homogeneous mass of stone with scattered ore-style blobs of granite and andesite, each biome gets an ordered stack of rock layers whose boundaries undulate with their own noise.

Six new rock types come with it, each in four finishes and full building-block families — including a **vertical slab** variant that vanilla does not have.

## Reading guide

- [01 Getting started](01_getting_started.md) — the creative tab, the six rock types and the block families.
- [02 Geology layers](02_geology_layers.md) — what a layer is and every registered layer's numbers.
- [03 Geology profiles](03_geology_profiles.md) — which layer stack each biome group gets.
- [04 What it changes about vanilla](04_vanilla_worldgen_changes.md) — what disappears underground, what stays, and what happens to an existing world.
- [05 Datapack and API](05_datapack_and_api.md) — the two custom registries and how to add your own rock.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id / namespace | `craton` |
| Version / license | `0.1` / MIT |
| Minecraft / NeoForge | 26.1.2 / 26.1.2.71 (`[26.1.2.71,)`) |
| Creative tab | `craton:core` |
| New rock types | 6 |
| Registered geology layers | 14 |
| Registered geology profiles | 13 |
| Biome modifiers | 1 (`craton:remove_stone`) |
| Custom registries | 2 (datapack-driven) |
| Commands / config | **none** |

## What changes when you install it

Two things happen to a freshly generated world:

1. **Underground stone becomes stratified.** A surface-system mixin rebuilds each block column using the geology profile that matches the column's biome.
2. **Vanilla's stone-variant blobs are gone.** Granite, diorite, andesite, tuff, gravel and dirt blobs no longer generate in any Overworld biome — those materials appear as *layers* instead of *patches*, and **underground gravel disappears entirely**. Ores are unaffected. See [What it changes about vanilla](04_vanilla_worldgen_changes.md).
