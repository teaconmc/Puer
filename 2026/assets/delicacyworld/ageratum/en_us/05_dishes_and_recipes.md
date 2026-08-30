---
title: "Dishes and Recipes"
navigation:
  title: "05 Dishes and Recipes"
items:
  - "delicacyworld:mantou_recipe"
  - "delicacyworld:raw_mantou"
  - "delicacyworld:cooked_mantou"
---

# Dishes and Recipes

There are 16 registered dishes. Each has three items: `<dish>_recipe` (Recipe), `raw_<dish>` (Raw) and `cooked_<dish>` (Cooked). Cooked dishes are BlockItems that can be placed on a table, prep counter or fridge top as a food model.

## Dish table

| Dish | Tier | Device | Default price | Default cook |
|:---|:---|:---|:---:|:---:|
| `mantou` | Basic | `steamer` | 500 | 20 s |
| `luotiao` | Basic | `boiling_pot` | 500 | 20 s |
| `egg_fried_rice` | Basic | `wok` | 500 | 20 s |
| `flower_tea` | Basic | `drink_mixer` | 500 | 20 s |
| `xiaolongbao` | Normal | `steamer` | 1500 | 30 s |
| `guilin_rice_noodles` | Normal | `boiling_pot` | 1500 | 30 s |
| `fried_rice_noodles` | Normal | `wok` | 1500 | 30 s |
| `watermelon_honey_juice` | Normal | `drink_mixer` | 1500 | 30 s |
| `rice_roll` | Advanced | `steamer` | 5000 | 60 s |
| `fuding_pork_slices` | Advanced | `boiling_pot` | 5000 | 60 s |
| `linyi_fried_chicken` | Advanced | `wok` | 5000 | 60 s |
| `cappuccino` | Advanced | `drink_mixer` | 5000 | 60 s |
| `black_pepper_t_bone` | Advanced | `steamer` | 5000 | 120 s |
| `chaoshan_beef` | Advanced | `boiling_pot` | 5000 | 120 s |
| `boiled_pork_slices` | Advanced | `wok` | 5000 | 120 s |
| `sparkling_watermelon_ice_cream` | Advanced | `drink_mixer` | 5000 | 120 s |

## Raw dish crafting recipes

The data generator emits 16 shapeless recipes, one per dish, all named `raw_<dish>`.

::: danger
**None of those 16 recipes actually load.** They are written to `data/delicacyworld/recipes/` — the **plural** directory name used by Minecraft 1.20.x and earlier. Minecraft renamed that datapack directory to the **singular `recipe/`** in 1.21.2, and this mod targets **26.1.2** (its own `pack.mcmeta` declares `pack_format: 88`). The game never scans the plural folder, so **every dish is uncraftable in survival** even though the recipe files exist on disk. Same-batch mods on the same version (`cc_mb`, `better_rod`) correctly use the singular form. Renaming the directory to `recipe` is the entire fix.
:::

The full recipe ingredients are:

| Recipe id | Ingredients |
|:---|:---|
| `raw_mantou` | Wheat, Water Bucket |
| `raw_luotiao` | Wheat, Water Bucket, Salt |
| `raw_egg_fried_rice` | Wheat, Egg, Soy Sauce |
| `raw_flower_tea` | Water Bucket, Chrysanthemum, Sugar |
| `raw_xiaolongbao` | Wheat, Porkchop, Shiitake, Water Bucket |
| `raw_guilin_rice_noodles` | Wheat, Porkchop, Soy Sauce, Salt |
| `raw_fried_rice_noodles` | Wheat, Egg, Soy Sauce, Chili |
| `raw_watermelon_honey_juice` | Watermelon Slice, Honey Bottle, Water Bucket |
| `raw_rice_roll` | Wheat, Water Bucket, Soy Sauce, Shiitake |
| `raw_fuding_pork_slices` | Porkchop, Chili, White Pepper, Soy Sauce |
| `raw_linyi_fried_chicken` | Chicken, Pepper Powder, Spicy Sauce, Wheat |
| `raw_cappuccino` | Milk Bottle, Sugar, Cocoa Beans, Water Bucket |
| `raw_black_pepper_t_bone` | Beef, Black Pepper Sauce, White Pepper, Salt |
| `raw_chaoshan_beef` | Beef, Chili, White Pepper, Soy Sauce |
| `raw_boiled_pork_slices` | Porkchop, Chili, Spicy Sauce, Soy Sauce |
| `raw_sparkling_watermelon_ice_cream` | Watermelon Slice, Milk Bottle, Sugar, Honey Bottle |

## Recipe item acquisition

Recipe items carry a source tooltip. The current implementation has three routes:

- Basic recipes: Librarian villagers receive 2 random offers costing 5 Gold Ingots each.
- Normal recipes: Wandering Traders receive 2 random offers costing 1 Emerald each, and vanilla chest loot can add one (`abandoned_mineshaft` 36%, `simple_dungeon` 34%, `stronghold_corridor` 40%, `stronghold_crossing` 38%).
- Advanced recipes: vanilla chest loot can add one (`end_city_treasure` 45%, `ancient_city` 45%, `trial_chambers/reward` 42%, `trial_chambers/reward_ominous` 50%, `woodland_mansion` 42%), and Ender Dragon or Warden always roll one while a charged Creeper has a 25% chance.

There are no cooking recipes in the recipe JSON directory; the device mappings in [Cooking devices](04_cooking_devices) are the only cooking path.

[Back to index](index)
