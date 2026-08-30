---
title: The Dishes
navigation:
  title: The Dishes
description: Around sixty dishes, and every single one is a placeable block.
---

# The dishes

## Sixty cooking recipes, fifty-eight placeable dishes

The mod ships **60 `crockpot:crock_pot_cooking` recipes**, and the dishes they produce are registered as **blocks** as well as items — around 58 of the 70 blockstates are food.

Two block classes back them:

| Class | Behaviour |
|:---|:---|
| food block | a single placed dish |
| **stackable food block** | dishes that visibly stack when placed together |

So a banquet table is a build, not a mod feature you have to fake with item frames.

## The roster

Grouped roughly by what they are:

**Soups and stews** — asparagus soup, bone soup, bone stew, bunny stew, gazpacho, hot chili, seafood gumbo, snake bone soup, tropical bouillabaisse, moqueca, ratatouille, netherosia

**Meat dishes** — bacon eggs, breakfast skillet, honey ham, honey nuggets, kabobs, meat balls, monster lasagna, monster tartare, steamed ham sandwich, surf n turf, turkey dinner, pepper popper

**Fish** — california roll, ceviche, fish sticks, fish tacos, salmon sushi, steamed sticks

**Eggs** — plain omelette, scotch egg

**Vegetables and salads** — flower salad, mashed potatoes, potato souffle, potato tornado, stuffed eggplant, veg stinger, perogies, salsa

**Sweets and desserts** — candy, glow berry mousse, gummy cake, ice cream, jammy preserves, mushy cake, pumpkin cookie, taffy, watermelon icle, fruit medley

**Drinks** — avaj, hot cocoa, iced tea, tea

**Special** — **pow cake**, **volt goat jelly**, **wet goop**

## Three dishes that are not ordinary food

**`wet_goop`** is the failure result. It is what the pot produces when your ingredients satisfy no dish's requirements — see [01 Getting started](01_getting_started).

**`pow_cake`** has **its own damage type**. In Don't Starve, Pow Cake is famously near-useless as food; here it is registered as something that can hurt you. See [07 Eating and hazards](07_eating_and_hazards).

**`candy`** and **`taffy`** likewise each have their own damage type. Sweets are not free.

## Monster dishes require the monster category

`monster_lasagna` and `monster_tartare` are the two dishes built around the `crockpot:monster` category — the axis that scores ingredients from hostile sources. They exist precisely so that monster ingredients have a use, and **`monster_food` is one of the five damage types**, so eating them is a trade rather than a win.

## Placing rather than eating

Because dishes are blocks, three things are possible that would not be otherwise:

- **Decorating.** A kitchen or feast hall built from actual food.
- **Storing on display.** A placed dish is a visible inventory.
- **Stacking.** Dishes backed by the stackable block form piles.

Nothing in the item tooltip tells you a dish can be placed. It is worth trying with any dish you cook.

## Where to see the full list with requirements

If you have JEI, the **Crock Pot Cooking** tab lists every dish with its rendered requirement tree — see [03 Requirements and priority](03_requirements_and_priority). That is the authoritative list; this page is an orientation to it.

JEI is where these requirement trees are actually readable — see [Install JEI, and other notes](08_technical_and_limits).

[Back to index](index)
