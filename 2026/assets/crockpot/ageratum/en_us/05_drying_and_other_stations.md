---
title: Drying, Birds and Bartering
navigation:
  title: Drying, Birds and Bartering
description: Four mechanics that have nothing to do with the pot — drying, parrots, explosions and piglins.
---

# Drying, birds and bartering

The crock pot is the headline, but the mod registers **four more recipe types of its own**, each a separate mechanic.

## Drying rack

| Recipe type | Count |
|:---|--:|
| `crockpot:drying` | **8** |

`drying_rack` is a placeable station with eight drying recipes. Dried foods get a **faster eating speed** — the mod's dried-food consumable is set to the `FAST` duration tier, one step quicker than vanilla — so drying is a genuine upgrade rather than only preservation.

Drying is a separate station and a separate recipe type; nothing about it goes through the pot's category matching.

## The birdcage and parrot feeding

| Recipe type | Count |
|:---|--:|
| `crockpot:parrot_feeding` | **13** |

`birdcage` holds a parrot, and **13 parrot-feeding recipes** define what you can give it and what you get back.

There is also a **JEI-only display category for parrots laying eggs** — a recipe type that exists to show information rather than to be crafted. So a caged, fed parrot produces something on a schedule, and the JEI tab is where the rates are documented.

The birdcage uses ordinary block logic rather than changing how vanilla parrots behave, so a parrot you put in one stays a perfectly normal parrot.

## Explosion crafting

| Recipe type | Count |
|:---|--:|
| `crockpot:explosion_crafting` | **1** |

Exactly one recipe. Something is made **by blowing it up** — a whole recipe type registered, with its own JEI category, for a single transformation.

That is worth knowing precisely because it is so easy to miss: one explosion recipe exists, and you will never find it by browsing a crafting table.

## Piglin bartering

| Recipe type | Count |
|:---|--:|
| `crockpot:piglin_bartering` | **1** |

Also exactly one recipe. Piglins genuinely recognise and admire the item, so the barter behaves like a real vanilla barter rather than a scripted swap.

Three patches for one barter entry means the mod genuinely extends how piglins evaluate and admire items rather than just appending to a loot list. If you have other mods that alter piglin bartering, this is the interaction point to watch.

## Vanilla recipe types are used too

Beyond its own four types, the mod adds recipes to five vanilla ones:

| Type | Count |
|:---|--:|
| `minecraft:crafting_shapeless` | 8 |
| `minecraft:smoking` | 6 |
| `minecraft:smelting` | 6 |
| `minecraft:campfire_cooking` | 6 |
| `minecraft:crafting_shaped` | 4 |
| **`minecraft:smithing_transform`** | **1** |

The single smithing transform is the **crock pot upgrade** — see [01 Getting started](01_getting_started).

Smoking, smelting and campfire cooking each carrying six recipes means the mod's raw ingredients have ordinary cooking routes as well as pot routes. You are not forced through the crock pot to use its crops.

## Seven JEI tabs in total

If you have JEI, the mod contributes seven categories:

| Tab | What it shows |
|:---|:---|
| Crock Pot Cooking | dishes and their requirement trees |
| **Food Values** | which items score in which category |
| Drying | the 8 drying recipes |
| Parrot Feeding | the 13 feeding recipes |
| **Parrot Laying Eggs** | display-only |
| Explosion Crafting | the 1 explosion recipe |
| Piglin Bartering | the 1 barter entry |

Two of those seven — Food Values and Parrot Laying Eggs — exist purely to **display information that has no crafting grid**. That is a deliberate documentation effort inside the mod itself.

[Back to index](index)
