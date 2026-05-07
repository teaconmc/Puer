---
title: "Recipes and tags"
navigation:
  title: "Recipes and tags"
---

# Recipes and tags

## Custom cuisine recipes

Cuisine recipes are not vanilla Minecraft recipe JSONs. They are loaded by a dedicated NMI reload listener from `data/<pack-namespace>/neo_mystias_izakaya/recipe/**/*.json`. The generated data uses `data/neo_mystias_izakaya/neo_mystias_izakaya/recipe/` and recipe IDs such as `neo_mystias_izakaya:cuisines/against_the_world`.

Each recipe contains:

- `input`: one or more vanilla or mod ingredient entries.
- `kitchenware`: the block tag that must match the cooker, for example `neo_mystias_izakaya:boiling_pot`.
- `output`: an item stack template, usually `neo_mystias_izakaya:cuisines/...`.
- `time`: cooking duration in ticks.

There are 165 generated cuisine recipes, including 38 boiling-pot, 36 cutting-board, 36 frying-pan, 17 grill, 37 steamer and one generic kitchenware recipe.

## Recipe Book

The Recipe Book (`neo_mystias_izakaya:misc/recipe_book`) records one recipe at a time. In air, right-click it to open the recipe browser, filter through cuisines, beverages and customer data, and use the record action while holding the book in either hand. The book's `recorded_recipe` data component stores the selected recipe ID.

Right-click a kitchenware block while holding a recorded Recipe Book:

- If the book's kitchenware tag matches and the block is idle, ingredients are extracted from the player's inventory.
- A normal right-click places ingredients without cooking.
- Sneak and right-click also starts cooking immediately.

## Item tags and tooltips

Tag data is loaded from `data/neo_mystias_izakaya/neo_mystias_izakaya/item_positive_tags/**` and `item_negative_tags/**`. The generated data defines 43 positive cuisine tags, 23 negative cuisine tags and 21 positive beverage tags.

Representative positive cuisine tags include `premium`, `spicy`, `vegetarian`, `grilled`, `soup`, `sea_delicacy`, `signature` and `sweet`. Beverage tags include `beer`, `sake`, `cocktail`, `no_alcohol`, `high_alcohol` and `soda`. Tooltips render positive tags with `+`, negative tags with `-`, and show the EN price where available.

## Extra ingredients and Dark Matter

Extra ingredients are the items placed in the cooker that are not part of the selected recipe. Their positive tags are added to the output, and the cooker's kitchenware tag is also added automatically.

If any extra ingredient's positive tag appears in the cuisine's negative tag list, the conflict is detected and the result becomes `neo_mystias_izakaya:cuisines/dark_matter`. `dark_matter` is also registered as a real generic recipe with five barrier inputs, so it can be cooked directly in a Creative test setup.

[Back to index](index)
