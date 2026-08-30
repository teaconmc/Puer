---
title: Chips and recipes
navigation:
  title: Chips and recipes
---

# Chips and recipes

## Process chips

- **`process_chip`** — a data-driven item; `EtherProcessChipManager.foreach` registers chips that appear in the creative tab, and each is obtained via `ProcessChipItem.getStackFor(id)`.
- **`direct_input`** — a chip variant used for direct-input wiring into a recipe or machine.

## Recipe answer items

The 5×5, 7×7 and 9×9 recipe grids are answer items for the processing factory:

- `ether_process_recipe_answer_5x5`
- `ether_process_recipe_answer_7x7`
- `ether_process_recipe_answer_9x9`

## Custom recipes

Two recipe types are registered (`RecipeTypeRegistry` / `RecipeSerializerRegistry`):

- **`NodeProcessRecipe`** — node-level processing recipes.
- **`EtherProcessFactoryRecipe`** — factory recipes, using a `DelayedIngredient` wrapper that lazily resolves `SizedIngredient` or tag lookups.

Chips answer the shape of the grid; the factory matches inputs against the recipe and yields the answer.

[Back to index](index)