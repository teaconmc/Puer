---
title: "Neo Mystia's Izakaya"
navigation:
  title: "Neo Mystia's Izakaya"
---

# Neo Mystia's Izakaya

Neo Mystia's Izakaya is a NeoForge restaurant-management mod for Minecraft 26.1.2. It adds five kitchenware blocks, a large ingredient and beverage catalog, 165 cooked cuisines, a linked canteen network, dining tables, storage blocks and a store economy measured in EN (円).

## What the mod implements

- Five kitchenware blocks with a shared cooking menu and custom recipe list.
- 49 ingredient items, 46 beverage items and 165 cuisine items, plus main, misc and block items.
- A two-part Canteen controller, dining tables, cupboards, incubators and their creative variants.
- A Canteen Config item for binding and scanning the canteen network, a Recipe Book, and a client Store screen.
- 47 common customer and 59 rare customer data files with tag-based preferences.
- Optional JEI/REI recipe browsing and optional Touhou Little Maid seating integration.

## Reading guide

- [Getting started](01_getting_started) - registry overview, main items and how to obtain them.
- [Kitchenware and cooking](02_kitchenware_cooking) - the five cookers, slot layout, cooking UI and timers.
- [Recipes and tags](03_recipes_and_tags) - custom recipe loading, the Recipe Book, tags and Dark Matter.
- [Canteen setup](04_canteen_setup) - controller placement, config binding, scanning, menu and open/close.
- [Orders and service](05_orders_and_service) - dining tables, customer orders, evaluations, EN payment and combo.
- [Storage and menu flow](06_storage_and_menu_flow) - cupboards, incubators and aggregate storage HUDs.
- [Store and EN](07_store_and_en) - currency, store screen, purchases and debug commands.
- [Reference and compat](08_reference_and_compat) - registries, keybind, commands, dependencies and current behavior notes.

## Reference snapshot

| Field | Value |
|:---|:---|
| Mod ID | `neo_mystias_izakaya` |
| Target | Minecraft `26.1.2`, NeoForge `26.1.2.71` |
| Mod version | `26.1.4` |
| License | GPL-3.0-or-later |
| Blocks | 12: `boiling_pot`, `grill`, `frying_pan`, `steamer`, `cutting_board`, `canteen`, `dining_table`, `store`, `cupboard`, `creative_cupboard`, `incubator`, `creative_incubator` |
| Registered items | 276 total: 49 ingredients, 46 beverages, 165 cuisines and 16 additional item definitions |
| Entities | 1: `chrome_ball` |
| Menu types | 2: `kitchenware`, `dish_serving` |
| Data components | 4: `item_tag_list`, `price`, `canteen_config`, `recorded_recipe` |
| Player attachments | 5: `balance`, `menu`, `order`, `transaction`, `combo` |
| Custom cuisine recipes | 165 JSON files under `data/neo_mystias_izakaya/neo_mystias_izakaya/recipe/` |

The current source ships no vanilla crafting, smelting, smithing or advancement files for the mod's blocks and tools. The only mod recipe system is the custom cuisine recipe format described in [Recipes and tags](03_recipes_and_tags).
