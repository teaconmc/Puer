---
title: 获取开始
navigation:
  title: 获取开始
description: 创造页、六种岩石、四种表面处理，以及包含竖直台阶的完整方块系列。
---

# 获取开始

## 创造页

所有内容都在同一个页 `craton:core` 中，图标为片麻岩基础方块。其内容由代码遍历每种岩石、再遍历其中每种表面处理生成，依次输出该系列的基础方块、全部变体，最后是竖直台阶。

## 六种岩石

| 岩石 | 地图颜色 |
|:---|:---|
| `gneiss`（片麻岩） | 石头色 |
| `rhyolite`（流纹岩） | 红色 |
| `marble`（大理岩） | 石英色 |
| `limestone`（石灰岩） | 沙色 |
| `gabbro`（辉长岩） | 黑色 |
| `pegmatite`（伟晶岩） | 粉色 |

## 每种岩石四种表面处理

每种岩石都注册为**四个独立的方块系列**：

| 处理 | ID 形式 | 附加件 |
|:---|:---|:---|
| 原岩 | `<rock>` | 压力板**与**按钮 |
| 磨制 | `polished_<rock>` | — |
| 砖 | `<rock>_brick` | 仅压力板 |
| 苔石砖 | `mossy_<rock>_brick` | — |

请注意这里的不对称：只有**原岩**有按钮，只有原岩与砖有压力板。磨制与苔石砖是纯粹的表面处理。

## 每个系列包含什么

全部 24 个系列都注册同一组核心内容：

- 基础方块
- `_stairs`（楼梯）
- `_slab`（台阶）
- `_wall`（墙）
- `_vertical_slab`（竖直台阶）

因此单是石灰岩就会产出 `limestone`、`limestone_stairs`、`limestone_slab`、`limestone_wall`、`limestone_vertical_slab`、`limestone_pressure_plate`、`limestone_button`，然后 `polished_limestone`、`limestone_brick`（另加其压力板）与 `mossy_limestone_brick` 各自再来一套同样的形状集。

## 方块属性

所有基础岩石共享同一组行为：强度 **1.5 / 6.0**、`requiresCorrectToolForDrops`、石头音效类型，以及上表所列的地图颜色。

## 竖直台阶

`VerticalSlabBlock` 是 Craton 自己的方块类，每个系列都有一个。为它们存在两个标签：

- `craton:vertical_slabs`（方块标签）
- `craton:vertical_slabs`（物品标签）

这是本模组**唯一**的标签。

## 切石机配方

每个系列都以 `generateStonecutterRecipe()` 构建，因此标准的原版系列配方集——含切石——由数据生成器产出，而非手写 JSON。

由于这些配方来自原版 `BlockFamily` 流水线，而本文档集只引用经过逐个核实的配方 id，此处未嵌入配方组件。请在游戏内用配方书或配方查看器查看确切的切割与合成产物。

[返回首页](index)
