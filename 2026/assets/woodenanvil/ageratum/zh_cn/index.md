---
title: 拾贰木砧
navigation:
  title: 拾贰木砧
---

# 拾贰木砧

**拾贰木砧**（命名空间 `woodenanvil`，版本 `1.0.1`，MIT）添加木制铁砧。十二种木材，每种有原态与去皮两形，每形又有三个损坏阶段——**共 72 个方块**。

木砧是**功能完整的铁砧**：打开原版铁砧界面，铁砧能做的它都能做。不同之处在于如何获得、如何磨损，以及残骸还能怎么用。

## 阅读路线

- [01 获取开始](01_getting_started.md) —— 创造页与全部 24 个合成配方。
- [02 十二种木材](02_the_twelve_woods.md) —— 每种木材及其两种形态。
- [03 损坏阶段](03_damage_stages.md) —— 木砧如何劣化，以及这意味着什么。
- [04 去皮](04_stripping.md) —— 把已放置的木砧转为去皮形态。
- [05 标签、工具与燃料](05_tags_tools_and_fuel.md) —— 两个标签、挖掘工具与燃料值。

## 一览

| 关注点 | 详情 |
|:---|:---|
| 模组 ID / 命名空间 | `woodenanvil` |
| 版本 / 许可 | `1.0.1` / MIT |
| Minecraft | 26.1.2（`[26.1.2]`） |
| NeoForge | 26.1.2.75 |
| 创造页 | `woodenanvil:wooden_anvils` |
| 方块 / 方块物品 | 72 / 72 |
| 配方 | 24（仅基础阶段） |
| 自带语言 | 10 种 |
| 命令 / 配置项 | **均无** |

## 一段话说清它是什么

每个砧都注册为 `WoodenAnvilBlock`，它**继承原版 `AnvilBlock`**。强度为 `3.0 / 3.0`，地图色 `MapColor.WOOD`，木头音效——比铁砧脆弱得多。由于类继承自原版铁砧，界面、下落行为与铁砧损坏钩子全部来自原版；本模组只是改写了**损坏那一步产出哪个方块**。

## 首先要知道的一件事

**配方用的不是原木。** 尽管 ID 形如 `woodenanvil:oak_log_anvil`，合成材料却是**木头**（六面树皮）变体——`minecraft:oak_wood`、`minecraft:crimson_hyphae`、`minecraft:bamboo_block`——而不是原木。逐木材的精确对照见[获取开始](01_getting_started.md)。
