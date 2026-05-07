---
title: "Salt and Other Crops"
navigation:
  title: "05 Salt and Other Crops"
items:
  - "ashihara:salt_field"
  - "ashihara:coarse_salt"
  - "ashihara:cucumber"
  - "ashihara:sweet_potato"
  - "ashihara:tomato"
  - "ashihara:soy_bean"
  - "ashihara:tea_seeds"
---

# Salt and Other Crops

<block id="ashihara:salt_field"/>

Use the Iron Wide Hoe on sand to establish a Salt Field. The field dries while it is not receiving water. Once it reaches a harvestable state, use a shovel to collect Coarse Salt. A Mortar can refine Coarse Salt into Salt for cooking and pickling.

<recipe id="ashihara:roasted_sweet_potato"/>

Ashihara also registers cucumber, sweet potato, tomato, soybean, tea, and related ingredients. Sweet Potato can be roasted in a furnace, smoker, or campfire. Other crops mainly feed cutting, Pot cooking, or fermentation recipes.

## Seed-source defect

The resources contain loot-modifier files intended to drop cucumber, sweet potato, tomato, soybean, and tea seeds from grass. However, `global_loot_modifiers.json` has an empty `entries` list, and no corresponding serializer registration was found. Those intended drops do not activate normally.

::: warning
With the mod alone, do not assume every crop is obtainable from grass. A modpack must add seeds through quests, loot, trades, or recipes or the associated food chains will lack ingredients.
:::

[Back to the Ashihara index](index)
