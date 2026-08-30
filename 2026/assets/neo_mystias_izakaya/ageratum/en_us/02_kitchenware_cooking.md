---
title: "Kitchenware and cooking"
navigation:
  title: "Kitchenware and cooking"
---

# Kitchenware and cooking

## The five cookers

All kitchenware blocks share the same cooking logic but only accept recipes whose `kitchenware` tag matches their type.

| Block | Item ID | Kitchenware tag | Recipe count |
|:---|:---|:---|:---|
| Boiling Pot | `neo_mystias_izakaya:cooker/boiling_pot` | `#neo_mystias_izakaya:boiling_pot` | 38 |
| Cutting Board | `neo_mystias_izakaya:cooker/cutting_board` | `#neo_mystias_izakaya:cutting_board` | 36 |
| Frying Pan | `neo_mystias_izakaya:cooker/frying_pan` | `#neo_mystias_izakaya:frying_pan` | 36 |
| Grill | `neo_mystias_izakaya:cooker/grill` | `#neo_mystias_izakaya:grill` | 17 |
| Steamer | `neo_mystias_izakaya:cooker/steamer` | `#neo_mystias_izakaya:steamer` | 37 |

The generic block tag `#neo_mystias_izakaya:kitchenware` contains all five tags. One generic recipe, `neo_mystias_izakaya:cuisines/dark_matter`, targets `#neo_mystias_izakaya:kitchenware` and requires five `minecraft:barrier` ingredients with a `time` of 0.

## Slot layout and menu

A kitchenware block entity has six slots: five ingredient slots and one output slot. Right-click with an empty main hand to open its menu. Ingredient slots accept one item each, only while the block is not lit, and only items carrying `#neo_mystias_izakaya:ingredient`. The output slot is locked for player placement; shift-click it into your inventory to take the cooked dish.

The left recipe grid shows possible outputs computed from the current ingredients and the block's kitchenware tag. Clicking a recipe tile sends a cook request. The right panel lists dishes from the player's canteen menu that can be made on this cooker; clicking one asks the server to extract the required ingredients from linked cupboards and the player inventory. In the current source that menu click only fills ingredients, so cooking still starts when you click the matching recipe tile.

## Cooking flow

1. Put up to five ingredients with `#neo_mystias_izakaya:ingredient` into the slots.
2. Click the desired output in the possible-recipes grid.
3. The server revalidates the recipe, the block becomes lit, and the recipe timer counts down.
4. When the timer reaches zero the cooked item appears in the output slot.

Recipe JSON `time` values are in ticks and range from 0 to 24 in the generated data. A `time` of 7, for example, is about 0.35 seconds; the UI displays progress in seconds as `(total - remaining) / 20`.

## Current behavior notes

The cooking helper consumes one item from the first four ingredient slots only. A fifth ingredient's positive tags still affect the result, but the fifth stack is not consumed by the current implementation. If an extra ingredient's positive tag conflicts with the recipe's negative tags, the output becomes `neo_mystias_izakaya:cuisines/dark_matter` (see [Recipes and tags](03_recipes_and_tags)).

[Back to index](index)
