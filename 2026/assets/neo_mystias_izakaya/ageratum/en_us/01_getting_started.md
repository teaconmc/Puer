---
title: "Getting started"
navigation:
  title: "Getting started"
---

# Getting started

## No vanilla crafting routes

In the current source the mod registers no crafting, smelting, smithing or loot/acquisition recipes for its blocks or tools. The generated data only contains the custom cuisine recipe format used by kitchenware. If you are testing a new world, take the blocks and items from the Creative inventory tabs or use a custom datapack; dedicated servers can also use vanilla `/give`.

## Main item IDs

The item namespace is `neo_mystias_izakaya:`. Most block items intentionally use a `misc/` item ID instead of the block ID.

| Item ID | In-game name |
|:---|:---|
| `neo_mystias_izakaya:misc/canteen` | Canteen |
| `neo_mystias_izakaya:misc/dining_table` | Dining Table |
| `neo_mystias_izakaya:misc/store` | Store |
| `neo_mystias_izakaya:misc/cupboard` | Cupboard |
| `neo_mystias_izakaya:misc/creative_cupboard` | Creative Cupboard |
| `neo_mystias_izakaya:misc/incubator` | Incubator |
| `neo_mystias_izakaya:misc/creative_incubator` | Creative Incubator |
| `neo_mystias_izakaya:misc/mystias_hat` | Mystia's Hat |
| `neo_mystias_izakaya:misc/canteen_config` | Canteen Config |
| `neo_mystias_izakaya:misc/recipe_book` | Recipe Book |
| `neo_mystias_izakaya:misc/chrome_ball` | Chrome Ball |

## Kitchenware and item families

Kitchenware items are registered under `neo_mystias_izakaya:cooker/...` and blocks under plain IDs such as `neo_mystias_izakaya:boiling_pot`:

- `neo_mystias_izakaya:cooker/boiling_pot`
- `neo_mystias_izakaya:cooker/cutting_board`
- `neo_mystias_izakaya:cooker/frying_pan`
- `neo_mystias_izakaya:cooker/grill`
- `neo_mystias_izakaya:cooker/steamer`

Ingredients use `neo_mystias_izakaya:ingredient/...`, beverages use `neo_mystias_izakaya:beverages/...`, and cooked dishes use `neo_mystias_izakaya:cuisines/...`. The ingredient tag `#neo_mystias_izakaya:ingredient` also includes eleven vanilla items: pufferfish, pumpkin, kelp, brown mushroom, potato, porkchop, beef, egg, ice, honey bottle and cocoa beans.

## Required and optional dependencies

- Required: `minecraft`, `neoforge`.
- Optional client: `jei`, `rei`, `kaguya`.
- Optional both sides: `touhou_little_maid`.

The optional JEI/REI modules add recipe category views for the custom cuisine recipes. Touhou Little Maid enables maid seating behavior at dining tables. Kaguya is a client-side helper used by the mod's custom GUI rendering.

[Back to index](index)
