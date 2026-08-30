---
title: "DelicacyWorld"
navigation:
  title: "DelicacyWorld"
---

# DelicacyWorld

DelicacyWorld is a restaurant management simulation for NeoForge. A placed Cash Register becomes the restaurant controller; staff place doors, tables, chairs, a fridge and cooking devices, buy or find recipe items, and then open a timed business session. A customer mob (`delicacyworld:customer`) enters, sits, orders, and settles only when the right cooked dish is served.

## Reading order

1. [Setting up the restaurant](01_setting_up): place the controller, entrance and exit markers, fridge, seating, lockers and recipe slots.
2. [Restaurant area and popularity](02_restaurant_area): understand scanning, level limits and decor scoring.
3. [Business session](03_business_session): participants, preparation, customers, service, settlement and upgrades.
4. [Cooking devices](04_cooking_devices): steamer, boiling pot, wok, drink mixer and sink workflows.
5. [Dishes and recipes](05_dishes_and_recipes): all 16 dishes, recipe items and the real crafting recipes.
6. [Quality and popularity](06_quality_and_popularity): quality metadata, fresh and appliance bonuses, penalties and pricing.
7. [Service blocks](07_service_blocks): trays, ticket printer and blackboard, menu signs, fridge, lockers, garbage and tools.
8. [Commands](08_commands): the `/restaurantcraft` command family and its Game Master permission.

## At a glance

| Topic | Current implementation |
|:---|:---|
| Mod id | `delicacyworld` |
| Main block | `delicacyworld:restaurant_management_block` (Cash Register) |
| Entity | `delicacyworld:customer` |
| Dishes | 16, each with `<dish>_recipe`, `raw_<dish>` and `cooked_<dish>` items |
| Crafting recipes | 16 shapeless `raw_<dish>` recipes |
| Recipe chest loot modifiers | 9, for vanilla structure tiers |
| Cooking devices | `steamer`, `boiling_pot`, `wok`, `drink_mixer`, plus `sink` |
| Commands | `/restaurantcraft` (Game Master level) |

::: warning
The current checkout registers ten mod materials (`salt`, `white_pepper`, `pepper_powder`, `black_pepper_sauce`, `spicy_sauce`, `soy_sauce`, `chili`, `chrysanthemum`, `shiitake`, `milk_bottle`) with no crafting, world generation or loot source. They are used by raw-dish recipes, so a survival pack must supply its own entry route.
:::
