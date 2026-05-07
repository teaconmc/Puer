---
title: "Reference and compat"
navigation:
  title: "Reference and compat"
---

# Reference and compat

## Keybind and screens

- `K` is the client keybind "Show canteen info". It opens the Dish Serving menu using table positions stored on the equipped Mystia's Hat.
- The Canteen HUD shows linked kitchenware and dining tables while the canteen is open.
- The Dish Serving screen shows all linked dining table cuisine/beverage slots, plus cupboard and incubator HUDs.
- The Kitchenware screen also embeds the cupboard HUD for ingredient and beverage transfer.

## Chrome Ball

Chrome Ball (`neo_mystias_izakaya:misc/chrome_ball`, "土球" in Chinese) is a throwable item with a snowball-style throw sound. Using it consumes one item and creates the `neo_mystias_izakaya:chrome_ball` projectile. On impact it shows item particles; the current implementation adds no custom damage or effect.

## Compatible mods

- JEI and REI: optional client dependencies. The mod registers recipe category views for the custom cuisine recipes.
- Touhou Little Maid: optional dependency on both sides. Maids can use dining tables through the maid seating task, and evaluation messages can appear in a maid chat bubble.
- Kaguya: optional client dependency. The Store, Recipe and item-list widgets use Kaguya drawing helpers for their custom GUI.

## Data and registry reference

- Custom recipe listener: `data/<pack-namespace>/neo_mystias_izakaya/recipe/**`.
- Tag listener: `item_positive_tags` and `item_negative_tags` under the same `neo_mystias_izakaya/` subfolder.
- Customer files: `common_customer/customer/**` and `rare_customer/customer/**`; generated data has 47 common and 59 rare customer files.
- Economy defaults: `economy/default.json`.
- Data components: `item_tag_list`, `price`, `canteen_config`, `recorded_recipe`.
- Player attachments: `balance`, `menu`, `order`, `transaction`, `combo`.

## Current behavior notes

The current source ships no vanilla crafting or advancement files for the mod's blocks, tools and items. Debug commands do not perform permission checks. Canteen-related current behavior, cooking consumption and payment caveats are documented in [Canteen setup](04_canteen_setup), [Kitchenware and cooking](02_kitchenware_cooking) and [Orders and service](05_orders_and_service).

[Back to index](index)
