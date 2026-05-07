---
title: 获取开始
navigation:
  title: 获取开始
items:
  - woodenanvil:oak_log_anvil
description: 创造页、共用的合成形状，以及全部 24 个配方及其精确材料。
---

# 获取开始

## 创造页

全部 72 个方块都在同一个页 `woodenanvil:wooden_anvils`（「Twelve Wooden Anvils」）中，图标为橡木原木砧。该页按注册顺序列出每个方块——先是十二种原态砧，然后十二种去皮砧，随后缺角与破损阶段各重复一遍。

## 共用的合成形状

全部 24 个配方使用同一个有序形状：

```
# # #
  P
P P P
```

- `#` = 该树的**木头**（六面树皮）方块
- `P` = 该树的**木板**

这与原版铁砧（顶部三个铁块、中间一个铁锭、底部三个铁锭）完全对应，只是全部换成木材。

::: warning
材料是**木头 / 菌核 / 竹块**，不是原木或菌柄。`woodenanvil:oak_log_anvil` 由 `minecraft:oak_wood` 合成，尽管它的 ID 里写着 `log`。如果你手上只有原木，请先用四个橡木原木合成 `oak_wood`。
:::

## 配方 —— 原态

| 产物 | `#` 材料 | `P` 材料 |
|:---|:---|:---|
| `oak_log_anvil` | `minecraft:oak_wood` | `minecraft:oak_planks` |
| `spruce_log_anvil` | `minecraft:spruce_wood` | `minecraft:spruce_planks` |
| `birch_log_anvil` | `minecraft:birch_wood` | `minecraft:birch_planks` |
| `jungle_log_anvil` | `minecraft:jungle_wood` | `minecraft:jungle_planks` |
| `acacia_log_anvil` | `minecraft:acacia_wood` | `minecraft:acacia_planks` |
| `dark_oak_log_anvil` | `minecraft:dark_oak_wood` | `minecraft:dark_oak_planks` |
| `mangrove_log_anvil` | `minecraft:mangrove_wood` | `minecraft:mangrove_planks` |
| `cherry_log_anvil` | `minecraft:cherry_wood` | `minecraft:cherry_planks` |
| `pale_oak_log_anvil` | `minecraft:pale_oak_wood` | `minecraft:pale_oak_planks` |
| `crimson_stem_anvil` | `minecraft:crimson_hyphae` | `minecraft:crimson_planks` |
| `warped_stem_anvil` | `minecraft:warped_hyphae` | `minecraft:warped_planks` |
| `bamboo_anvil` | `minecraft:bamboo_block` | `minecraft:bamboo_planks` |

<recipe id="woodenanvil:oak_log_anvil"/>
<recipe id="woodenanvil:spruce_log_anvil"/>
<recipe id="woodenanvil:birch_log_anvil"/>
<recipe id="woodenanvil:jungle_log_anvil"/>
<recipe id="woodenanvil:acacia_log_anvil"/>
<recipe id="woodenanvil:dark_oak_log_anvil"/>
<recipe id="woodenanvil:mangrove_log_anvil"/>
<recipe id="woodenanvil:cherry_log_anvil"/>
<recipe id="woodenanvil:pale_oak_log_anvil"/>
<recipe id="woodenanvil:crimson_stem_anvil"/>
<recipe id="woodenanvil:warped_stem_anvil"/>
<recipe id="woodenanvil:bamboo_anvil"/>

## 配方 —— 去皮态

去皮砧使用**去皮木头**方块，但木板**与原态相同**（Minecraft 中没有去皮木板）：

| 产物 | `#` 材料 | `P` 材料 |
|:---|:---|:---|
| `stripped_oak_log_anvil` | `minecraft:stripped_oak_wood` | `minecraft:oak_planks` |
| `stripped_spruce_log_anvil` | `minecraft:stripped_spruce_wood` | `minecraft:spruce_planks` |
| `stripped_birch_log_anvil` | `minecraft:stripped_birch_wood` | `minecraft:birch_planks` |
| `stripped_jungle_log_anvil` | `minecraft:stripped_jungle_wood` | `minecraft:jungle_planks` |
| `stripped_acacia_log_anvil` | `minecraft:stripped_acacia_wood` | `minecraft:acacia_planks` |
| `stripped_dark_oak_log_anvil` | `minecraft:stripped_dark_oak_wood` | `minecraft:dark_oak_planks` |
| `stripped_mangrove_log_anvil` | `minecraft:stripped_mangrove_wood` | `minecraft:mangrove_planks` |
| `stripped_cherry_log_anvil` | `minecraft:stripped_cherry_wood` | `minecraft:cherry_planks` |
| `stripped_pale_oak_log_anvil` | `minecraft:stripped_pale_oak_wood` | `minecraft:pale_oak_planks` |
| `stripped_crimson_stem_anvil` | `minecraft:stripped_crimson_hyphae` | `minecraft:crimson_planks` |
| `stripped_warped_stem_anvil` | `minecraft:stripped_warped_hyphae` | `minecraft:warped_planks` |
| `stripped_bamboo_anvil` | `minecraft:stripped_bamboo_block` | `minecraft:bamboo_planks` |

<recipe id="woodenanvil:stripped_oak_log_anvil"/>
<recipe id="woodenanvil:stripped_spruce_log_anvil"/>
<recipe id="woodenanvil:stripped_birch_log_anvil"/>
<recipe id="woodenanvil:stripped_jungle_log_anvil"/>
<recipe id="woodenanvil:stripped_acacia_log_anvil"/>
<recipe id="woodenanvil:stripped_dark_oak_log_anvil"/>
<recipe id="woodenanvil:stripped_mangrove_log_anvil"/>
<recipe id="woodenanvil:stripped_cherry_log_anvil"/>
<recipe id="woodenanvil:stripped_pale_oak_log_anvil"/>
<recipe id="woodenanvil:stripped_crimson_stem_anvil"/>
<recipe id="woodenanvil:stripped_warped_stem_anvil"/>
<recipe id="woodenanvil:stripped_bamboo_anvil"/>

## 只有基础阶段可合成

**共 24 个配方**——每种木材每种形态一个。缺角与破损阶段**完全没有配方**：它们只会因磨损而出现，且无法合成、也无法修回。参见[损坏阶段](03_damage_stages.md)。

[返回首页](index)
