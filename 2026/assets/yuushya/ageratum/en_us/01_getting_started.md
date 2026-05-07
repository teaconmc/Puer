---
title: "Getting started: blueprints and creative tabs"
navigation:
  title: "01 Getting started"
items:
  - "yuushya:block_blueprint"
  - "yuushya:wood_blueprint"
  - "yuushya:stone_blueprint"
  - "yuushya:extra_shapes_blueprint"
  - "yuushya:window_blueprint"
  - "yuushya:furniture_blueprint"
  - "yuushya:fabric_blueprint"
  - "yuushya:lighting_blueprint"
  - "yuushya:facility_blueprint"
  - "yuushya:traffic_blueprint"
  - "yuushya:living_being_blueprint"
  - "yuushya:sign_blueprint"
  - "yuushya:catering_blueprint"
  - "yuushya:store_blueprint"
---

# Getting started: blueprints and creative tabs

## Creative tabs

The mod registers sixteen content tabs (plus the `item` tab for tools, blueprints and hats). Each content tab is configured with an icon and a blueprint item in `data/yuushya/register/item_group.json`:

| Tab | Blueprint item |
|:---|:---|
| `extra_blocks` | `yuushya:block_blueprint` |
| `wood` | `yuushya:wood_blueprint` |
| `stone` | `yuushya:stone_blueprint` |
| `extra_shapes` | `yuushya:extra_shapes_blueprint` |
| `window` | `yuushya:window_blueprint` |
| `furniture` | `yuushya:furniture_blueprint` |
| `fabric` | `yuushya:fabric_blueprint` |
| `lighting` | `yuushya:lighting_blueprint` |
| `electrical_appliance` | `yuushya:lighting_blueprint` |
| `living_being` | `yuushya:living_being_blueprint` |
| `signs` | `yuushya:sign_blueprint` |
| `catering` | `yuushya:catering_blueprint` |
| `store` | `yuushya:store_blueprint` |
| `infrastructure` | `yuushya:facility_blueprint` |
| `traffic` | `yuushya:traffic_blueprint` |
| `structure` | `yuushya:extra_shapes_blueprint` |

## Blueprint items

Every blueprint is a normal stackable item. Using one consumes the whole stack from your hand (including in Creative mode) and opens a stonecutter-style menu with the blueprint already placed in the input slot. The menu's output list is generated from the stonecutter recipes produced by the mod's data generator for that tab.

::: note
The current source tree does not contain static `data/yuushya/recipes` files. The stonecutter recipes are generated at build time from the `auto_generated.recipe` fields in the register data, so they are described here as a workflow rather than referenced as fixed recipe IDs.
:::

[Back to index](index)
