---
title: Crops and Ingredients
navigation:
  title: Crops and Ingredients
description: Eight crops, seven new drop sources, and where unknown seeds come from.
---

# Crops and ingredients

## Eight crops

| Crop block | Note |
|:---|:---|
| `asparaguses` | |
| `corns` | popcorn exists as a derived food |
| `eggplants` | both raw and cooked forms are consumables |
| `garlics` | |
| `onions` | |
| **`peppers`** | ⚠️ **eating a raw pepper hurts you** — see [07](07_eating_and_hazards) |
| `tomatoes` | |
| **`unknown_crops`** | the mystery crop |

Note the plural block names — `asparaguses`, `corns`, `tomatoes` — which is how the mod names its crop blocks. The items are singular.

## Unknown crops and unknown seeds

`unknown_crops` is the mod's mystery mechanic, and its seed source is a loot modifier rather than a recipe:

| Loot modifier | Source |
|:---|:---|
| `unknown_seeds_from_grass` | breaking grass |
| `unknown_seeds_from_tall_grass` | breaking tall grass |

So **unknown seeds come from ordinary grass**, exactly where vanilla wheat seeds come from. Plant them and you get `unknown_crops` — a crop whose identity is the point.

That also means unknown seeds are available from the very first minute of a world, with no progression gate at all.

## Seven loot modifiers, and what each adds

| Modifier | Effect |
|:---|:---|
| `frog_legs_from_frog` | frogs drop **frog legs** |
| `cooked_frog_legs_from_frog` | and cooked frog legs |
| `hoglin_nose_from_hoglin` | hoglins drop **hoglin nose** |
| `cooked_hoglin_nose_from_hoglin` | and cooked hoglin nose |
| `unknown_seeds_from_grass` | grass drops **unknown seeds** |
| `unknown_seeds_from_tall_grass` | tall grass too |
| **`crock_pot_upgrade_smithing_template_from_nether_bridge`** | **nether fortresses drop the pot upgrade template** |

The frog and hoglin pairs each ship in raw **and** cooked form, which is the standard vanilla pattern — a mob killed by fire drops the cooked variant directly.

**Frog legs** feed `froggle_bunwich`; **hoglin nose** is a nether meat ingredient. Both give existing vanilla mobs a reason to be hunted that they did not have.

## The nether fortress template is the mod's only progression gate

Of everything in this mod, exactly one thing is locked behind exploration: the **crock pot upgrade smithing template**, found in nether fortress loot.

That single item is what raises your pot level and unlocks higher-`potlevel` dishes — see [01 Getting started](01_getting_started) and [03 Requirements and priority](03_requirements_and_priority).

Everything else — crops from grass, dishes from ingredients, drying, the birdcage — is available without leaving the overworld.

## Ordinary cooking routes exist

The mod's ingredients are not pot-exclusive. It ships six `minecraft:smoking`, six `minecraft:smelting` and six `minecraft:campfire_cooking` recipes, so its crops and meats can be cooked the plain way.

That matters for early game: you can use the crops as food before you build a pot at all.

## ⚠️ Fence your fields

**The mod's crops can be eaten by mobs, exactly like vanilla carrots.** They are not immune just because they come from a mod — rabbits and other crop-eating mobs will help themselves.

::: tip
The crops behave consistently with vanilla ones in general: they grow the same way, respond to the same conditions, and are trampled the same way. That consistency is convenient, but it includes the downside — **so fence your fields the same as you would a vanilla farm.**
:::

[Back to index](index)
