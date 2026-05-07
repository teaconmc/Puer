---
title: "Quality and Popularity"
navigation:
  title: "06 Quality and Popularity"
items:
  - "delicacyworld:wall_air_conditioner"
  - "delicacyworld:ceiling_air_conditioner"
  - "delicacyworld:standing_air_conditioner"
  - "delicacyworld:ceiling_fan"
  - "delicacyworld:ceiling_fan_wood"
---

# Quality and Popularity

## Cooked dish metadata

Cooked dish stacks store `RestaurantCraftQuality`, `RestaurantCraftPrice`, `RestaurantCraftPopularityBonus`, `RestaurantCraftBusinessFresh` and `RestaurantCraftApplianceSupport` in custom data. The tooltip shows quality, price and popularity bonus, and cooked dishes can be placed on a table, prep counter or fridge top.

## Quality tiers

The three tiers are Basic (10 popularity), Normal (20) and Advanced (30). A dish's final quality is resolved when cooking completes:

- Business cooking with a fresh output promotes one tier (`qualityBusinessFreshBoost`, default true).
- An active support appliance within `qualitySupportHorizontalRange` (default 6) and `qualitySupportVerticalRange` (default 3) promotes another tier for fresh business output (`qualityApplianceFreshBoost`, default true).
- Cooking outside business demotes (`qualityNonBusinessPenalty`, default true).
- Stacked output that is not fresh demotes (`qualityStackedOutputPenalty`, default true).
- Appliance support on a non-fresh output promotes back one tier (`qualityApplianceOffsetsStackPenalty`, default true).

Each quality rank changes the price by `qualityPriceStepPercent` (default 25%) and adjusts the popularity bonus, with a minimum price of 1.

## Support appliances

Wall, ceiling and standing air conditioners plus both ceiling fans implement `ToggleableBlock` and count as support when active. Use the Remote Control on them to toggle. The standing air conditioner only counts when its bottom part is active.

## Popularity during a session

- Failed orders: -10 (`failedOrderPopularityPenalty`).
- Mopping a customer: -10 (`mopPopularityPenalty`).
- Garbage spawn: -5 (`garbagePopularityPenalty`) while it remains.
- Cleaning garbage with a Mop: restores that penalty.
- Perfect business (no failed orders): +20 (`perfectBusinessPopularityBonus`), capped by level.
- Settlement subtracts 5 for each remaining garbage block.

The Business Result reports served counts by Basic/Normal/Advanced quality, business-fresh serves, and appliance-supported serves.

[Back to index](index)
