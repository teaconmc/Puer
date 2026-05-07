---
title: Crock Pot
navigation:
  title: Crock Pot
items:
  - crockpot:crock_pot
---

# Crock Pot

A port of Don't Starve's crock pot cooking to Minecraft, by a five-person team — Si_hen, idyllicbean, Whyte_V, MalayP and SeraphJack.

It is not a recipe list. **You throw ingredients in and the pot works out what you have made** by scoring your ingredients against ten food categories and matching them to a requirement tree. Get it wrong and you get Wet Goop.

## It depends on nothing

Its metadata declares only **NeoForge** and **Minecraft**. No library mods, no optional integrations declared — you can drop it into any pack.

(It ships a full JEI integration with seven recipe tabs, and JEI is effectively required to read them. See [Install JEI, and other notes](08_technical_and_limits).)

## How cooking actually decides

Every ingredient carries **fractional values in ten categories** — meat, veggie, fruit, fish, egg, dairy, sweetener, frozen, monster and inedible. A dish declares **requirements** over those totals, and the pot picks the dish whose requirements you satisfied.

A real example, Hot Chili:

| Field | Value |
|:---|:---|
| requirements | meat **≥ 1.5** and veggie **≥ 1.5** |
| cooking time | 200 ticks |
| pot level | 0 |
| **priority** | **10** |

**Priority is the field that makes the system work.** Many dishes can match one set of ingredients at once; the highest priority wins. That is why adding one more of something can change what comes out — and nothing in game explains it.

## What is registered

| Registry | Entries |
|:---|:---|
| Blocks | **70 blockstates** — 4 stations, 8 crops, and **~58 dishes, all placeable** |
| Items | 106 definitions |
| **Food categories** | **10, as a datapack registry** — packs can add more |
| Recipes | 7 types, including 4 of the mod's own |
| Loot tables | 70 |
| Advancements | 42 |
| **Loot modifiers** | **7** — new drops from frogs, hoglins, grass and nether fortresses |
| **Damage types** | **5** — some foods hurt you |

## Reading path

1. [01 Getting started](01_getting_started) — the pot, the loop, and Wet Goop.
2. [02 Food categories](02_food_categories) — the ten categories and how items are scored.
3. [03 Requirements and priority](03_requirements_and_priority) — the requirement tree and the tiebreak.
4. [04 The dishes](04_the_dishes) — around sixty dishes, every one a placeable block.
5. [05 Drying, birds and bartering](05_drying_and_other_stations) — the four non-pot mechanics.
6. [06 Crops and ingredients](06_crops_and_ingredients) — eight crops and seven new drop sources.
7. [07 Eating and hazards](07_eating_and_hazards) — five damage types and five eating speeds.
8. [Install JEI, and other notes](08_technical_and_limits) — why JEI is effectively required, and one language gap.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id | `crockpot` |
| Authors | Si_hen, idyllicbean, Whyte_V, MalayP, SeraphJack |
| Licence | **MIT** |
| Minecraft | `26.1.2`, single pinned version |
| Dependencies | **none beyond NeoForge and Minecraft** |
| Localization | English **258**, Chinese **258**, Traditional Chinese **214** |
