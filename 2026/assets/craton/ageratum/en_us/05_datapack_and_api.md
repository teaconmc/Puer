---
title: Datapack and API
navigation:
  title: Datapack and API
description: The two custom datapack registries, how to add your own layer or profile, and the API surface for other mods.
---

# Datapack and API

Craton's geology is **entirely datapack-driven**. Both layers and profiles are custom registries with codecs, so a datapack can add, replace or remove strata without touching code.

## The two registries

| Registry | Contents |
|:---|:---|
| geology layer | one rock band with its thickness and noise |
| geology profile | a biome tag plus an ordered list of layers |

Both are registered through `CratonRegistries` and their built-in entries are produced by `DatapackRegistryGenerator`, meaning the shipped 14 layers and 13 profiles are themselves generated datapack files rather than hardcoded objects.

## Adding your own layer

A layer JSON needs only `block`; everything else falls back to its default:

```json
{
  "block": "minecraft:calcite",
  "thickness": 18.0,
  "amplitude": 10.0,
  "freq_x": 0.008,
  "freq_z": 0.009,
  "seed": 909
}
```

Defaults are thickness `24.0`, amplitude `12.0`, `freq_x` / `freq_z` `0.01` and seed `0`. Note that if you omit the seed it defaults to **0**, so two layers that both omit it will share the same noise offset and their boundaries will move in lockstep — give each layer a distinct seed.

The `block` field maps through the block registry's name codec and takes the block's **default state**, so a layer is always the plain form of a block.

## Adding your own profile

A profile pairs a biome holder set with an ordered layer list. Because the shipped profiles resolve their biomes from **NeoForge common biome tags** (`IS_PLAINS`, `IS_MOUNTAIN`, `IS_OCEAN`, …), following that convention makes your profile apply to modded biomes automatically.

Two natural uses:

- **Make marble generate.** `marble` is a fully registered layer that no shipped profile references. Add it to a profile and it appears underground.
- **Restore gravel.** Same situation — the `gravel` layer exists but is unused.

## Ordering matters

The layer list is top-to-bottom. Every shipped profile ends with `deepslate`, which is what gives the deep underground a consistent floor. If you write a profile that omits a deep basement layer, the bottom of the stack is whatever your last entry is.

## API package

`com.teamtea.craton.api.geology` is the public surface:

- `GeologyLayer` — the record plus its codec.
- `GeologyProfile` — the biome-to-layers binding.
- `ExtendBlockFamily` / `ExtendedBlockFamily` — the interface pair that carries the vertical slab on a vanilla `BlockFamily`. `MixinBlockFamily` is what makes vanilla families implement it.

If you want your own stone to get a vertical slab attached the same way, `ExtendedBlockFamily.getVerticalSlab(family)` is the accessor, and `StoneCollection` shows the intended four-finish grouping.

## No commands, no config

Craton has **no commands and no config file**. That means there is no in-game switch to restore the vanilla stone blobs described in [What it changes about vanilla](04_vanilla_worldgen_changes.md) — **keeping them requires a datapack** that overrides the mod's removal entry.

[Back to index](index)
