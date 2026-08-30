---
title: Workstations and Recipes
navigation:
  title: 03 Workstations and Recipes
---

# Workstations and Recipes

## The recipe split

All 107 recipes, by type:

| Type | Count | Station |
|:---|---:|:---|
| `minecraft:crafting_shaped` | **26** | Vanilla crafting table |
| `minecraft:crafting_shapeless` | **25** | Vanilla crafting table |
| `bakeries:oven` | 15 | Oven |
| `bakeries:blender` | 14 | Blender |
| `bakeries:dough_crafting_table` | 8 | Dough Crafting Table |
| `bakeries:drink` | 6 | Drink station |
| `bakeries:bread_knife` | 5 | Bread Knife |
| `bakeries:flour_sieve` | 4 | Flour Sieve |
| `minecraft:smelting` | 2 | Furnace |
| `minecraft:campfire_cooking` | 1 | Campfire |
| **`neoforge:mod_loaded`** | **1** | **Conditional — see below** |

::: info
**51 of 107 recipes use vanilla types.** Nearly half the mod is craftable at an ordinary crafting table, which makes the entry ramp much gentler than the six custom stations suggest. Build stations to unlock depth, not to get started.
:::

## The six stations

| Station | Container title | Role |
|:---|:---|:---|
| **Oven** | Oven | Temperature-controlled baking — see [Perfect Temperature](02_oven_and_perfect_temperature) |
| **Blender** | Blender | 14 recipes, the largest custom type after the oven |
| **Dough Crafting Table** | Dough Crafting Table | Flour into dough |
| **Flour Sieve** | Flour Sieve | Raw material into flour |
| **Bread Knife** | Bread Knife | Cutting finished goods |
| **Cupboard** | Cupboard | Storage |
| **Drink** | Drink | Beverages |

Note that **Cupboard** has a container screen but no recipe type — it is storage, not processing. The **Flour Sieve** and **Bread Knife** have recipe types but are used as held tools rather than placed blocks; [Tools and their quirks](04_tools_and_quirks) covers how.

## The one conditional recipe is a model of how to do optional integration

There is exactly one `neoforge:mod_loaded` recipe, and it is worth reading in full:

```json
{
  "neoforge:conditions": [
    { "type": "neoforge:mod_loaded", "modid": "anvilcraft" }
  ],
  "type": "anvilcraft:stamping",
  "ingredients": [ { "items": "bakeries:croissant" } ],
  "results": [ { "count": 1, "id": "bakeries:flat_croissant" } ]
}
```

Reading it: **if AnvilCraft is installed**, you may put a croissant under its stamping press and get a **Flat Croissant**.

::: tip
**This is the cleanest form of optional integration in this batch.** The guard is in the data layer, not the code layer:

- The condition is `neoforge:mod_loaded`, evaluated at recipe load time.
- Without AnvilCraft, **the recipe simply does not load** — no exception, no missing-type error, no log spam.
- `bakeries` therefore does not need to declare AnvilCraft in `mods.toml` at all, and correctly does not.

Compare the three code-level cases catalogued elsewhere in this project — a `ModList.isLoaded` guard, an unguarded real reference, an unguarded unused build entry. **A datapack condition is a fourth and better option when the integration is purely a recipe.**
:::

The product is also a good joke: AnvilCraft presses things flat, so a pressed croissant is a flat croissant.

## Convention tags

**19 tags in the `c` namespace**, which is the cross-mod convention namespace. That is how this mod's flour, doughs and baked goods become usable by other food mods without either side knowing about the other — the same mechanism `neoecoae` uses with its 48 `c` tags.

Plus **12 tags in `minecraft`** and 2 in its own namespace.

## Villager integration

**5 villager trades in `bakeries` plus 1 in `minecraft`.** The one in the vanilla namespace means the mod modifies an existing villager profession's offers — so a plain village becomes a source of Bakeries content without the player building anything.

## Structures and worldgen

One structure file and 3 worldgen files. Modest, but it means some of the mod exists in the world to be found rather than only in recipes.

[Back to index](index)
