---
title: Getting Started
navigation:
  title: Getting Started
description: Build a pot, throw food in, and understand what Wet Goop is telling you.
---

# Getting started

## Four stations

| Block | Purpose |
|:---|:---|
| **`crock_pot`** | the main cooking station |
| **`portable_crock_pot`** | a carryable version |
| **`drying_rack`** | drying, a separate mechanic — see [05](05_drying_and_other_stations) |
| **`birdcage`** | holds a parrot — see [05](05_drying_and_other_stations) |

Start with a `crock_pot`. Everything else is optional.

## The cooking loop

1. Put ingredients into the pot.
2. The pot totals up their **category values** — see [02 Food categories](02_food_categories).
3. It finds every dish whose **requirements** those totals satisfy.
4. Of those, it cooks the one with the highest **priority**.
5. After the dish's **cooking time**, you get the result.

Nothing here is a fixed shaped recipe. The same four items in a different mix can produce a different dish.

## Wet Goop means you made nothing

`wet_goop` is a real registered block, and it is what you get when your ingredients match **no** dish's requirements.

It is not a bug and not a warning — it is the system telling you that your combination satisfied nothing. If you get Wet Goop, look at what categories you were short on rather than at the item list.

## Pot levels

Every cooking recipe carries a **`potlevel`** field. Hot Chili is level `0`; higher-level dishes require a better pot.

The upgrade path is concrete: a **crock pot upgrade smithing template** is added to **nether fortress** loot by one of the mod's loot modifiers, and one vanilla `smithing_transform` recipe consumes it.

So the progression is: build a basic pot → find the template in a fortress → upgrade → higher-level dishes become cookable.

## Cooking times vary widely

`cookingtime` is per-dish and expressed in ticks. Hot Chili takes **200 ticks** — ten seconds. Expect elaborate dishes to take longer, and check JEI if you are planning around throughput.

## Every dish is also a block

This is the mod's most easily missed feature: **the ~58 dishes are placeable blocks, not just items.** Two block classes back them — a plain food block and a **stackable** food block — so some dishes stack visually when placed.

You can lay out a real table. See [04 The dishes](04_the_dishes).

## A first session

1. Craft a **`crock_pot`**.
2. Grow or gather a few of the mod's **crops** — see [06](06_crops_and_ingredients).
3. Cook meat + veggie in roughly equal measure and you will get **Hot Chili** (meat ≥ 1.5, veggie ≥ 1.5).
4. Place the dish on a table rather than eating it, if you want to see the block form.
5. Read [03 Requirements and priority](03_requirements_and_priority) before you try to aim for a specific dish.

## ⚠️ Two things to know before you eat

**Some foods damage you.** The mod registers five damage types, and a raw pepper genuinely hurts. See [07 Eating and hazards](07_eating_and_hazards).

**Eating speed varies per food.** Five tiers exist, from noticeably faster than vanilla to noticeably slower.

[Back to index](index)
