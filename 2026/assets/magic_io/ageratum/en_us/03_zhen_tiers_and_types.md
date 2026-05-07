---
title: Zhen Tiers and Types
navigation:
  title: Zhen Tiers and Types
description: The 37 × 6 matrix, how tiers gate it, and what a higher tier actually changes.
---

# Zhen tiers and types

## The matrix

The zhen catalogue is generated, not hand-listed. **37 zhen functions** each declare the tier at which they are *introduced*, and registration then creates one block for that function at **every tier from its introduction upward**.

| Tier | Prefix | Functions available | Blocks at this tier |
|:---|:---|--:|--:|
| 0 | `unstable_` | 4 | **4** |
| 10 | `stable_` | 12 | **12** |
| 20 | `sturdy_` | 20 | **20** |
| 30 | `abundant_` | 28 | **28** |
| 40 | `archaic_` | 36 | **36** |
| 50 | `primeval_` | 37 | **37** |

Total: **137 tiered blocks**, plus the separately registered `grid_cell` zhen, giving **138** zhen blocks. Ids follow the pattern `<prefix><function>_zhen` — for example `abundant_conflux_zhen` or `unstable_sieve_zhen`.

## What each tier changes

A tier is a record carrying two multipliers:

| Tier | Speed factor | Output factor |
|:---|--:|--:|
| Unstable | 1.00 | 1.0 |
| Stable | 0.75 | 1.0 |
| Sturdy | 0.75 | 1.1 |
| Abundant | 0.75 | 1.1 |
| Archaic | 0.75 | 1.2 |
| Primeval | 0.75 | 1.2 |

The speed factor is **cumulative across tier steps**. Moving up one tier multiplies processing time by 0.75; moving from Unstable all the way to Primeval multiplies it by 0.75 five times, which is roughly **0.24× the original time — about four times faster**.

The output factor is **not** cumulative in the same way; it is a per-tier value, stepping 1.0 → 1.0 → 1.1 → 1.1 → 1.2 → 1.2. So output bonuses arrive at Sturdy and again at Archaic, while every tier above Unstable contributes a speed gain.

The practical reading: **tiering up is primarily about speed**, with two modest yield bumps along the way.

## The 37 functions by introduction tier

| Introduced at | Functions |
|:---|:---|
| **0** | Cinder, Sieve, Dew, Zephyr |
| **10** | Forge, Compact, Potion, Carve, Sprout, Grind, Frost, Voltaic |
| **20** | Blaze, Gem, Spring, Whirl, Ferment, Mold, Shift, Thunder |
| **30** | Engrave, Quake, Symbiosis, Conflux, Synthesis, Distill, Gate, Divine |
| **40** | Weave, Fate, Void, Haste, Transmute, Foresight, Summon, **Portal** |
| **50** | Creative |

Each function is also bound to one element — Cinder to Fire, Sieve to Earth, Dew to Water, Zephyr to Wind, and so on up to Creative bound to the Creative element. The element-to-tier correspondence is laid out in [02 Elements](02_elements).

## Two functions are not ordinary processors

**Dew** is registered as a *fluid* function with a **1000-unit tank**, rather than an item-only processor. It is the only function that declares fluid capacity at registration.

**Portal** is registered as **tick-only**: it has no item recipe path at all and instead runs a dedicated portal tick each tick. It is the one function in the catalogue that is a continuous effect rather than a recipe machine.

The remaining 35 are simple item processors.

## Display names

Zhen block names are assembled from two translation keys — a tier prefix and a function name — combined by the pattern `%s%s Zhen`. So `archaic_conflux_zhen` reads as "Archaic Conflux Zhen". A second pattern, `%s Zhen`, exists for naming a function category without a tier.

All 6 tier names and all 37 function names are translated in both shipped languages, so the generated names read correctly throughout.

## The catalogue is much larger than the recipe set

There are **138 zhen blocks and 35 recipes**. Most zhen types therefore have **no recipe to run** in the shipped build — they register, place, render and accept items, but nothing will process. See [05 Recipes](05_recipes) for the tier distribution of what does exist.

This is the single most important expectation to set: the matrix is complete, the content filling it is a sample.

[Back to index](index)
