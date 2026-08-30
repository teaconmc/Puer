---
title: "Cooking Devices"
navigation:
  title: "04 Cooking Devices"
items:
  - "delicacyworld:steamer"
  - "delicacyworld:boiling_pot"
  - "delicacyworld:wok"
  - "delicacyworld:drink_mixer"
  - "delicacyworld:sink"
---

# Cooking Devices

Cooking is device-based, not datapack-based: raw dish items are processed by the matching device and become cooked dish items with quality metadata. There is no `<recipe>` component for device cooking because Ageratum has no renderer for these code-driven conversions.

## Steamer and drink mixer

Right-click opens a two-slot Cooking Device menu: slot 0 is the raw ingredient and slot 1 is the cooked output. The output stays in the device until taken.

## Boiling pot and wok

Right-click while holding a matching raw item starts direct cooking when the device is empty and not already cooking. The result pops out as an item entity, and a floating countdown display appears while cooking.

## Device assignments

| Device | Dishes |
|:---|:---|
| `steamer` | `raw_mantou`, `raw_xiaolongbao`, `raw_rice_roll`, `raw_black_pepper_t_bone` |
| `boiling_pot` | `raw_luotiao`, `raw_guilin_rice_noodles`, `raw_fuding_pork_slices`, `raw_chaoshan_beef` |
| `wok` | `raw_egg_fried_rice`, `raw_fried_rice_noodles`, `raw_linyi_fried_chicken`, `raw_boiled_pork_slices` |
| `drink_mixer` | `raw_flower_tea`, `raw_watermelon_honey_juice`, `raw_cappuccino`, `raw_sparkling_watermelon_ice_cream` |

## Business stock

During an active business, a device inserted through its menu works against the restaurant's temporary business stock: it requires the matching raw item in stock and consumes one from stock on completion instead of consuming the device's input slot each time. Direct cooking with the boiling pot or wok uses the player's hand stack. Cooking outside business works when `allowCookingOutsideBusiness` is true (default).

## Sink

The Sink is a separate workstation with the same two-slot menu shape. It converts Bucket to Water Bucket in 100 ticks and Glass Bottle to Potion in 40 ticks.

## Config-driven cook time

Each dish's cook time is configurable under `dishCookTicks`; defaults are 400 (20 s) for Basic, 600 (30 s) for Normal, 1200 (60 s) for Rice Roll, Fuding Pork Slices, Linyi Fried Chicken and Cappuccino, and 2400 (120 s) for the remaining Advanced dishes.

[Back to index](index)
