---
title: "方块模板"
navigation:
  title: "02 方块模板"
items:
  - "yuushya:stairs"
  - "yuushya:slab"
  - "yuushya:half_slab"
  - "yuushya:side_slab"
  - "yuushya:column"
  - "yuushya:post"
  - "yuushya:fence"
  - "yuushya:new_fence"
  - "yuushya:ladder"
  - "yuushya:hanging_light"
  - "yuushya:ring_light"
  - "yuushya:board"
  - "yuushya:snow_layer"
---

# 方块模板

## 模板是什么

`data/yuushya/register/template.json` 中的模板条目定义一个形状与一组纹理槽位，然后按兼容材质逐个生成方块（以及方块物品）。生成 ID 遵循 `template_material` 的命名模式，例如 `stairs` 模板会为每个兼容材质条目生成变体。

模板列表包括 `stairs`、`hollow_stairs`、`slab`、`side_slab`、`half_slab`、`half_side_slab`、`ridge`、`column`、`post`、`pole`、`stick`、`horizontal_column`、`horizontal_post`、`horizontal_pole`、`horizontal_stick`、`snow_layer`、`platform`、`fence`、`fence_corner`、`new_fence`、`handrail_left`、`handrail_middle`、`handrail_right`、`frame_top`、`frame_bottom`、`frame_left`、`frame_right`、`ladder`、`leaning_ladder`、`foldable_ladder`、`board`、`clock`、`round_clock`、桌面（`average_table`、`medium_table`、`big_table`）、长凳与货架（`bench`、`park_bench`、`shelf`、`bookshelf`、`uncovered_shelf`、`decorative_shelf`、`decoration_bookshelf`）、坐具（`chair`、`office_chair`、`bar_stool`、`seat`、`park_stool`、`cushion_armchair`、`couch`）、礼品盒、`bucket`、`basket`、`backpack`、`phone`、`piano`、`skateboard`、`leaned_skateboard`、`cart`、`bicycle`、`venetian_blinds`、`rain_shed`、`lengthened_rain_shed`、`mounted_fern_pot`、`bottle_container`、`ring_light`、`hanging_light`、`warning_slab`、`audio`、`audio_large` 与 `slippers`。

## 材质与纹理库

兼容材质来自两个来源：

- `texture.json` 注册 Yuushya 方块与纹理类型（`misc`、`wool`、`decorative_wool`、`raw_wood`、`concrete`、`acrylic`，以及各模板单独使用的其他类型）。
- `texture_remain.json` 把原版方块导入为「remain」纹理条目（例如 `minecraft:stone`、`minecraft:cobblestone` 与 `minecraft:bricks`）。

每个模板声明自己接受的纹理类别，因此并非每种材质都会出现在每个模板中。

## 使用模板

副手为空时右键模板物品（或对空气右键）会打开切石机式菜单，消耗一个模板物品作为输入。

副手持有兼容方块时，在方块上右键会直接放置对应的模板生成方块，而不打开菜单。例如手持 `stairs` 模板并副手持兼容 Yuushya 方块，即可用该材质放置楼梯变体。

部分模板带有玩法标签：`ladder`、`leaning_ladder`、`foldable_ladder` 为 `climbable`，而 `ring_light`、`hanging_light` 提供 15 级光照。

[返回首页](index)
