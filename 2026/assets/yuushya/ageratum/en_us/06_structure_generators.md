---
title: "Structure generators"
navigation:
  title: "06 Structure generators"
items:
  - "yuushya:oak_tree"
  - "yuushya:maple_tree"
  - "yuushya:sakura_tree"
  - "yuushya:normal_truck"
  - "yuushya:villa_0"
  - "yuushya:octagon_pavilion"
  - "yuushya:grand_piano"
  - "yuushya:mori_cat_pet_store"
  - "yuushya:tavern"
---

# Structure generators

## Registered structures

`structure.json` registers Structure Creator items that place NBT structures:

- Trees: `oak_tree`, `maple_tree`, `sakura_tree`, the blooming oak variants (`white_blooming_oak_tree`, `yellow_blooming_oak_tree`, `pink_blooming_oak_tree`) and the size/pose variants `tiny`, `mini`, `small`, `middle`, `medium`, `straight`, `winding` and `lush`.
- Vehicles: `normal_truck`, `dining_truck`.
- Buildings: `villa_0`, `composite_building`, `octagon_pavilion`, `fancy_sakura_0` through `fancy_sakura_3`.
- Interiors and shops: `grand_piano`, `kitchen_template`, `mori_cat_pet_store`, `mori_grocery_store`, `tavern`.

## Tool modes

Structure Creator items keep a mode in the `yuushya:mode` data component. Right-click in the offhand cycles through four modes:

- **0 Normal Placement**: right-click a block to place the structure beside it.
- **1 Delete**: right-click air to clear the area occupied by the last placed structure.
- **2 Mirror**: cycle the mirror setting.
- **3 Rotate**: cycle the rotation setting.

Position, size, mirror and rotation are stored in the `yuushya:structure` data component so the item keeps the selection across uses.

::: note
The NBT files referenced by these items (for example `yuushya:oak_tree`) are staged from `1.16.5/common/src/main/resources/data/yuushya/structures/` into the 26.1 generated resources by the `gen-26.1` build task. The generated folder is not committed in the current checkout, so the structure must exist at runtime for placement to succeed.
:::

[Back to index](index)
