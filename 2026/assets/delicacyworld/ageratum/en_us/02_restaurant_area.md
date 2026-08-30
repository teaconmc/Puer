---
title: "Restaurant Area and Popularity"
navigation:
  title: "02 Restaurant Area and Popularity"
items:
  - "delicacyworld:birch_table"
  - "delicacyworld:birch_chair"
  - "delicacyworld:redwood_table"
  - "delicacyworld:redwood_chair"
  - "delicacyworld:small_potted_plant_1"
  - "delicacyworld:large_potted_plant_1"
  - "delicacyworld:electric_appliance_1"
  - "delicacyworld:instrument_1"
---

# Restaurant Area and Popularity

## Detection

The management screen's **Detect** button runs `detectArea`: it scans around the Cash Register, caches the entrance, exit and fridge positions, and records table, chair and decor counts. The same scan is re-run when a business opens.

The scan box uses `maxHorizontalScanRange` (default 32 blocks) and `maxVerticalScanRange` (default 4 blocks) in every direction from the Cash Register.

## Popularity formula

On open, popularity is recalculated as:

- `baseRestaurantPopularity` (default 10)
- plus the sum of valid dish popularity bonuses: 10/20/30 by Basic/Normal/Advanced tier
- plus decor popularity
- clamped to the current level cap: 100/200/300 at 1/2/3 stars.

## Decor values

The defaults are: standard table 5, Redwood table 10, Redwood chair 5, small decor 5, small potted plant 5, large potted plant 10, electric appliance 20, instrument 30. Lights count as electric appliance decor; Bell, Menu Sign, QR Order Stand and Tissue and Chopsticks count as small decor. Each decor type contributes at most `maxDecorCountPerType` blocks (default 10).

## Star level limits

| Level | Tables | Chairs | Recipe slots | Popularity cap |
|:---|:---:|:---:|:---:|:---:|
| 1 star | 2 | 4 | 3 | 100 |
| 2 stars | 4 | 16 | 6 | 200 |
| 3 stars | 8 | 64 | 9 | 300 |

## Protected blocks

While a business is open, entrance, exit, fridge, storage locker, tables, chairs, cooking devices, sink, trays, ticket printer and blackboard cannot be broken by players inside the restaurant area.

[Back to index](index)
