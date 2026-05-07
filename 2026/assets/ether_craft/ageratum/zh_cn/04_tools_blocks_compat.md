---
title: 工具、方块与兼容
navigation:
  title: 工具、方块与兼容
---

# 工具、方块与兼容

## 扳手

**`wrench`**（堆叠上限 1）是配置设备与物品流的常用工具。

## 方块

- **`ether_glass`** —— 建筑用玻璃类方块。
- **`ether_block`**、`ether_ore` / `deepslate_ether_ore` / `nether_ether_ore`、`inactivated_ether_block`、`smooth_inactivated_ether_block` —— 资源与储存方块（需正确工具）。
- **`cheese_block`** —— 柔软羊毛声效方块。

## 世界生成

`WorldGenData` 在相应维度/岩层放置三种以太矿石，因此在生存模式下可获得以太资源。

## 集成

- **GuideMe** —— 当 GuideMe 加载时，创造标签会加入一个指南物品（`GuideMeFunctions.getGuide()`）。
- **JEI** —— 为自定义配方类型提供配方集成（构建中声明了 `jei_version`）。
- **数据生成** —— 标签生成器（`TagGenBlock/Item/Entity`）、`LootTableGen`、`ModelDataGen`、`DataMapGen`、`WorldGenData` 与 `GenerateGatherEvent` 输出模组数据。

[返回首页](index)