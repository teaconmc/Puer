---
title: "Fruits and Pods"
navigation:
  title: "06 Fruits and Pods"
---

# Fruits and Pods

Dynamic trees can grow **fruits** (blocks that hang from the canopy) and **pods** (blocks that grow on trunks). Both are resources defined per species, so a tree pack can attach its own fruit or pod block to any species.

## Fruits

Fruit blocks are placed on leaf cells and mature through several growth stages (default maximum age `3`, i.e. four visible stages). Each random tick gives a fruit a `growthChance` (default `0.2`) to advance; the fruit drops its item when it reaches maturity or when the tree is harvested.

The base mod ships one fruit species:

- **Apple Oak** — its fruit block grows in the canopy and drops apples. Apples are the species' seed-crafting ingredient: with a dirt bucket in the seed-conversion recipe you turn apples into `apple_oak` seeds, and the sapling-to-seed conversion for vanilla apple saplings is disabled on purpose.

`canBoneMealFruit` (default `false`) controls whether fruits can be accelerated with bone meal; a species can override it per fruit.

## Pods

Pod blocks grow on branch sides and mature the same way:

- **Cocoa** — cocoa pods grow on jungle trunks. A mature pod drops the `cocoa_seed` item, which is the seed used to plant new cocoa trees. Because `drop_seeds` is `false` for the cocoa species, pod harvest is the normal way to obtain more seeds. One cocoa seed converts into three vanilla cocoa beans:

   <recipe id="dynamictrees:cocoa_beans"/>

`canBoneMealPods` (default `true`) allows bone meal to accelerate pod growth.

## Seasonal output

When a season provider is active, fruit and pod output can be scaled seasonally (`useSeasonalFruitFactor` and `useSeasonalSeedDropFactor` are enabled by default), so harvests vary across the year.

[Back to the Dynamic Trees index](index)