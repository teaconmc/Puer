---
title: "Storage and menu flow"
navigation:
  title: "Storage and menu flow"
---

# Storage and menu flow

## Cupboards and incubators

Cupboard (`neo_mystias_izakaya:misc/cupboard`) and Incubator (`neo_mystias_izakaya:misc/incubator`) are 27-slot container block entities. Right-click them to open a three-row chest-style menu, unless the main hand holds a Canteen Config item (then the config binding action takes priority).

The normal use pattern is:

- Cupboards hold ingredients and beverages for the cooking and serving flow.
- Incubators hold finished cuisines for restocking tables.

## Creative storage

Creative Cupboard (`neo_mystias_izakaya:misc/creative_cupboard`) is an infinite source of every registered ingredient and beverage, plus eleven vanilla ingredients used by recipes: pufferfish, pumpkin, kelp, brown mushroom, potato, porkchop, beef, egg, ice, honey bottle and cocoa beans.

Creative Incubator (`neo_mystias_izakaya:misc/creative_incubator`) is an infinite source of every registered cuisine item.

## Hat-bound aggregate storage

The Kitchenware and Dish Serving screens read aggregate storage through Mystia's Hat (`neo_mystias_izakaya:misc/mystias_hat`) in the helmet slot. The hat must carry the canteen config synced from a selected controller.

Cupboard HUD behavior:

- If the player's cursor is empty, clicking an ingredient/beverage requests extraction from linked cupboards.
- If the player's cursor holds an item, clicking requests insertion into linked cupboards.

Incubator HUD behavior in the Dish Serving screen:

- Empty cursor extracts a cuisine from linked incubators to the hand.
- Held item inserts it into linked incubators.

The aggregate resource handlers are built from the controller's `cupboardList` and `incubatorList`, so only loaded blocks that still implement the expected interface participate.

## Current behavior notes

The Incubator block entity currently uses the Cupboard display-name translation key in generated language data, so its in-game container title may show "Cupboard" even though the item is named Incubator. The creative incubator also implements the same interface used by the aggregate cuisine HUD, while the normal incubator does the same for its 27-slot container.

[Back to index](index)
