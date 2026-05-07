---
title: "Rooty Soil and Fertility"
navigation:
  title: "03 Rooty Soil and Fertility"
---

# Rooty Soil and Fertility

Planting a dynamic seed converts the ground block below it into that species' **rooty soil** variant. The soil stores the tree's identity, its **fertility**, and optionally a block entity (tile entity) for species that need one.

## Fertility

Fertility is a number from `0` to `15` stored on the rooty soil block:

- Growth consumes fertility over time. At `0` the tree stops growing and, if `diseaseChance` is above `0`, can get sick.
- The soil block outputs a redstone comparator signal equal to its fertility, so you can read the soil state with redstone.
- Rooty soil reverts to its primitive soil (dirt, podzol, nylium and so on) when it no longer supports a tree. Breaking the root block while a tree is alive destroys the tree and drops its wood as if harvested.

## Fertilizing

- **Bone meal** — right-click the tree or its soil with bone meal (or any item in the `fertilizer` tag, which includes `c:fertilizer`): it adds `2` fertility and triggers a number of growth pulses equal to `boneMealGrowthPulses` (default `1`).
- **Enhanced fertilizer** — items in the enhanced-fertilizer tag (for example Create's `tree_fertilizer`) apply the **Growth substance**: it refills fertility to `15` and, in the intended design, would keep pulsing growth every 24 ticks until the soil is depleted again. See the current-state note on [Dendro potions](08_dendro_potions).

## Soil types

Each family and species defines which primitive soil it accepts. The base mod ships soil variants for dirt-based soils, podzol/rooted-dirt forests, sand, mud/water-adjacent soil (mangrove, swamp oak), and netherrack/nylium (crimson and warped fungi only grow on their matching nylium or rooty nylium). Soil blocks are intentionally hard: `rootyBlockHardnessMultiplier` (default `40.0`) makes rooty soil much tougher to break than the underlying dirt so trees are not accidentally destroyed.

## Dirt bucket

The `dirt_bucket` item carries a block of dirt: right-clicking the ground places dirt while `dirtBucketPlacesDirt` is enabled (default `true`). It is also the reusable container item for seed conversions — see [Getting started](01_getting_started).

[Back to the Dynamic Trees index](index)