---
title: 翅膀与飞行
navigation:
  title: 翅膀与飞行
---

# 翅膀与飞行

## 羽毛与纸翅膀

- `feather_wings`、`colored_feather_wings`、`golden_feather_wings` —— 用羽毛制成的经典滑翔翅膀。
- `paper_wings` —— 廉价的新手滑翔翼。

## 魔法翅膀

- `magic_wings` —— 由 `magic_membrane` 与 `philosopher_stone` 供能。
- `flandre_magic_wings` —— 一种特殊魔法翅膀变体。

## Synapse 翅膀（后期）

`synapse_alloy` 系列提供六种速度/行为修饰各异的翅膀（`WingsTypes.SYNAPSE_*`）：`ikaros_wings`、`nymph_wings`、`astraea_wings`、`chaos_wings`、`hiyori_wings`、`melan_wings`。它们使用 `synapse_wings_recharger`（充能）、`quantum_fuel`（燃料）与 `synapse_repair_kit`，并从 `icarus_glider` 数据组件消耗飞行能量。

## 飞行辅助物品

- **`wind_wand`** —— 提供风/飞行辅助的工具。
- **空气罐** —— `zephir_air_jar`、`nether_air_jar`、`void_air_jar` 捕获不同空气，用于合成与飞行。
- **`magical_anemone`** —— 植物系飞行辅助。

翅膀通过客户端 `WingsLayer` / `WingsModel` 渲染，并与 `FlyingEventsHandler` 交互；`speed` 与 `throwing` 数据组件驱动滑翔速度。

[返回首页](index)