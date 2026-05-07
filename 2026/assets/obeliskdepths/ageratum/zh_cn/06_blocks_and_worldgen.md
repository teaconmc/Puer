---
title: "方块与世界生成"
navigation:
  title: "方块与世界生成"
---

# 方块与世界生成

除方尖碑与锻造台外，模组还提供主题建材，并在世界中驱动两种自定义结构类型。

## 建材

建材以三个地牢石家族为主，每种都包含基础方块及台阶、楼梯、墙：

- **地牢石（Dungeon Stone）**（`dungeon_stone`）
- **地牢砖（Dungeon Bricks）**（`dungeon_bricks`）
- **地牢瓷砖（Dungeon Tiles）**（`dungeon_tiles`）

以及裂纹变体（`dungeon_cracked_bricks`、`dungeon_cracked_tiles`）、不可破坏的**强化地牢石**（`reinforced_dungeon_stone`），和光源**地牢灯 / 点亮地牢灯**（`dungeon_lamp`、`lit_dungeon_lamp`）。

## 大沼泽生物群系方块

大沼泽添加了自然地形和近似红树的整棵树木——**大沼泽落羽杉（Great Swamp Taxodium）**：

- 地形：`great_swamp_grass_block`、`great_swamp_dirt`、`great_swamp_coarse_dirt`、`great_swamp_mud`。
- 落羽杉方块：原木、去皮原木、木、去皮木、木板、树叶、门、活板门、栅栏、栅栏门、台阶与楼梯，以及 `great_swamp_taxodium_root_tangle`、`great_swamp_taxodium_vine_bulb` 与 `great_swamp_vines` / `great_swamp_vines_plant`。
- `great_swamp_taxodium_logs` 标签将这些原木变体关联起来。

## 功能方块

- **方尖碑箱（Obelisk Chest）**（`obelisk_chest`）— 容器方块实体；无战利品表、不可破坏、不可被推动。
- **方尖碑锻造台（Obelisk Smithing Table）**（`obelisk_smithing_table`）— 用于淬炼。
- **方尖碑（Obelisk）**（`obelisk`）— 多方块传送门方块。

## 世界生成

模组注册并放置两种自定义结构类型：

- **Obelisk 地牢（Obelisk Dungeon）**（`obelisk_dungeon`）— **深渊站点（Depths Site）**（`obeliskdepths:depths_site`）使用的入口结构，作为地下结构放置。**Obelisk 地牢**结构集以随机分散方式布置此类站点（间距 16、间隔 8）。
- **大沼泽沙漏树（Great Swamp Hourglass Tree）**（`great_swamp_hourglass_tree`）— 通过**大沼泽沙漏树**结构集放置的树木结构。

生物群系标签（`has_structure/depths_site`、`has_structure/great_swamp_hourglass_tree`）决定哪些生物群系可承载对应结构。请注意，Obelisk Depths 维度本身是固定生物群系、主要手工塑造的地牢空间，而非开放的世界表面生成，因此这些结构类型主要服务于在其中放置内容。

[返回首页](index)
