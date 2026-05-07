---
title: "Getting Started"
navigation:
  title: "01 Getting Started"
---

# Getting Started

Every tree in Dynamic Trees starts from a **seed item**. Seeds come from leaf drops, from the creative inventory, or from special tree products, and planting them creates a small dynamic sapling on rooty soil.

## Getting seeds

- **Leaf drops** — mature tree canopies drop their species' seed item over time. The base drop rate is controlled by `leavesSeedDropRate` (default `1.0`), and seasonal seed-drop scaling can lower or raise it when a season mod is installed.
- **Creative tab** — the mod's creative tab lists the currently registered seeds for planted species. Fruits and pods give more seeds: apple oak produces apples, and cocoa pods produce cocoa seeds.
- **Seed conversion** — a species' seed can also be crafted from its vanilla counterpart with a dirt bucket:

   <recipe id="dynamictrees:dirt_bucket"/>

   <recipe id="dynamictrees:seed_conversion"/>

   The seed conversion recipe consumes a dirt bucket together with a matching vanilla sapling (or the fruit/pod item where one is used) and returns the dynamic seed item. Recipe generation is configurable with `generateDirtBucketRecipes` (default `true`), and the Apple Oak deliberately disables its sapling-to-seed conversion because it uses apples instead.

## Planting a seed

1. Stand on dirt, grass, podzol, nylium — any block the species accepts as soil.
2. Right-click the ground with the seed in hand. The block underneath becomes the species' **rooty soil** variant and a small dynamic sapling grows on top.
3. The sapling grows by itself over time near the soil, depending on biome suitability, light and the configured growth rate.

A dynamic sapling can be bone-mealed: bone meal adds fertility to the soil and triggers at least one growth pulse (`boneMealGrowthPulses`, default `1`).

## Vanilla saplings

Placing a vanilla sapling keeps the vanilla sapling by default (`replaceVanillaSaplings` is `false`). When enabled, a matching dynamic sapling can take its place either at placement or when the vanilla sapling would grow. Breaking a dynamic sapling drops the seed item while `dynamicSaplingDrops` is enabled (default `true`).

## Seed behaviour

Seeds are living items as well as inventory items:

- A seed lying on the ground counts down its lifetime (default `seedTimeToLive` of 1200 ticks, about a minute). A configurable `lifespan` data component can override it per stack.
- Twenty ticks before its lifetime ends, the seed tries to plant itself voluntarily. Planting succeeds when the biome suitability at that spot is high enough (chance = suitability × `seedPlantRate`) and the sky is visible, unless the stack carries the `force_plant` component (which also disables the sky check). `seedOnlyForest` additionally requires the location to be in a forested biome.
- If planting fails, the seed simply despawns.
- A seed can also carry a JoCode component; once planted it generates that predefined structure instead of a plain tree (see [Woodland staff and JoCodes](09_woodland_staff_and_jocodes)).

## First tree tips

- Leave headroom: trees need space for their canopy. Leaves will not form where it is too dark or where they would be smothered.
- Keep an eye on the soil: growth consumes fertility. When the fertility bar hits 0, the tree stops growing until you fertilize it (see [Rooty soil and fertility](03_rooty_soil_and_fertility)).
- Decorative potted saplings are available through the `potted_sapling` block.

[Back to the Dynamic Trees index](index)