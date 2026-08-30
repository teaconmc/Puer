---
title: Food Categories
navigation:
  title: Food Categories
description: Ten categories, defined as a datapack registry, with fractional per-item values.
---

# Food categories

## The ten categories

Every ingredient is scored in ten categories:

| Category | Id |
|:---|:---|
| Meat | `crockpot:meat` |
| Veggie | `crockpot:veggie` |
| Fruit | `crockpot:fruit` |
| Fish | `crockpot:fish` |
| Egg | `crockpot:egg` |
| Dairy | `crockpot:dairy` |
| Sweetener | `crockpot:sweetener` |
| Frozen | `crockpot:frozen` |
| **Monster** | `crockpot:monster` |
| **Inedible** | `crockpot:inedible` |

The last two are the interesting ones. **Monster** marks ingredients from hostile sources, and several dishes require it — which is how the mod reproduces Don't Starve's monster-meat dishes. **Inedible** marks things that are not food at all, and dishes typically require it to be **below** a threshold rather than above.

## They are a datapack registry, and each carries only a colour

The categories live at `data/crockpot/crockpot/food_category/`, one JSON per category, and each file contains exactly one field:

```json
{ "color": 16755655 }
```

That is `meat`. The colour is for display — tooltips and JEI — and it is the **only** property a category has.

**Two consequences follow, and they matter:**

**Categories are a datapack registry.** A datapack can add a new category by dropping in a JSON with a colour. Nothing needs patching.

**Categories carry no rules.** All the logic lives in the requirements of individual dishes, not in the category. A category is just a labelled axis to score along.

## Items are scored by `food_values` recipes

Category membership is not a tag. It is a **recipe type** — `crockpot:food_values` — and it is by far the most numerous type in the mod: **87 of them** across the resource roots, more than the 60 actual cooking recipes.

So the mod spends more data describing **what ingredients are** than describing **what dishes exist**. That is the right proportion for a system where dishes are matched rather than listed.

Because it is a recipe type, **a datapack can reclassify any item** — add `food_values` for a modded ingredient and it immediately participates in crock pot cooking without touching the mod.

## Values are fractional

This is the detail that makes the system feel like Don't Starve rather than like Minecraft crafting. Hot Chili requires:

| Requirement | Threshold |
|:---|:---|
| meat | **≥ 1.5** |
| veggie | **≥ 1.5** |

Not "two meat" — **1.5 meat**. Individual items contribute fractional amounts, so half-value ingredients exist and two of them add up to one full unit.

Practical effect: **you cannot reason about the pot in whole items.** A single ingredient may count as 0.5 meat, so three of them clear a 1.5 threshold while two do not.

## Reading values in game

The mod ships a JEI category devoted to exactly this — a **Food Values** tab showing which items match which category. If you have JEI, that tab is the authoritative reference and this page is only the model behind it.

## For pack authors

| To do this | Do this |
|:---|:---|
| Add a new category | drop a JSON with a `color` into `crockpot/food_category` |
| Make a modded item cookable | add a `crockpot:food_values` recipe for it |
| Rebalance an ingredient | override its existing `food_values` recipe |
| Add a dish | add a `crockpot:crock_pot_cooking` recipe — see [03](03_requirements_and_priority) |

All four are datapack operations. The system was built to be extended.

[Back to index](index)
