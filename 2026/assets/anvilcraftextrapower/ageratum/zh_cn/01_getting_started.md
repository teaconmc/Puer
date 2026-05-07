---
title: 快速上手
navigation:
  title: 快速上手
---

# 快速上手

铁砧工艺：额外电力是铁砧工艺（AnvilCraft）的附属模组，它的物品与方块与主模组并存。本模组注册的所有内容都出现在**铁砧工艺：额外电力**创造页（`anvilcraftextrapower:anvilcraftextrapower_tab`）中，页签图标为铁砧工艺的电容器。

## 新材料

本模组带来若干冶炼类材料。它们带有标准物品标签（`c:ingots/magnesium`、`c:nuggets/magnesium`、`c:sulfur`、`c:dust/coal`、`c:storage_blocks/magnesium`、`c:storage_blocks/sulfur`）。

| 物品 | 方块 | 说明 |
|:---|:---|:---|
| `magnesium_ingot` 镁锭 / `magnesium_nugget` 镁粒 | `magnesium_block` 镁块 | 镁的储存方块；镁锭可作信标支付物 |
| `sulfur` 硫磺 | `sulfur_block` 硫磺块 | 硫的储存方块 |
| `coal_powder` 煤粉 | — | 挂 `c:dust/coal` 标签 |
| `ashes` 灰烬 | `ashes_block` 灰烬 | 燃烧煤块烧尽后掉落；灰烬块掉落 3–5 个灰烬 |
| `magnesium_oxide` 苦土 | `magnesium_oxide_block` 氧化的镁块 | 燃烧镁块及其残渣掉落 |
| `sulfuric_acid` 硫酸 | — | 用于合成空铅酸电池 |

已确认的合成配方包括：

<recipe id="anvilcraftextrapower:magnesium_block"/>
<recipe id="anvilcraftextrapower:magnesium_ingot_from_block"/>
<recipe id="anvilcraftextrapower:magnesium_ingot_from_nuggets"/>
<recipe id="anvilcraftextrapower:magnesium_nugget"/>
<recipe id="anvilcraftextrapower:sulfur"/>
<recipe id="anvilcraftextrapower:sulfur_block"/>

## 电池与电容器

本模组新增储能物品，均挂 `anvilcraftextrapower:capacitor` 标签：

| 物品 | 说明 |
|:---|:---|
| `lead_acid_battery` 铅酸电池 / `lead_acid_battery_empty` 空铅酸电池 | 铅酸电池及其空形式 |
| `multiphase_capacitor` 多相电容器 / `multiphase_capacitor_empty` 空多相电容器 | 多相电容器及其空形式 |
| `potato_battery` 土豆电池 / `flashing_potato_battery` 闪电土豆电池 | 以史莱姆为基础的电池方块；也是可放置方块 |

已确认的合成配方：

<recipe id="anvilcraftextrapower:lead_acid_battery_empty"/>
<recipe id="anvilcraftextrapower:multiphase_capacitor_empty"/>
<recipe id="anvilcraftextrapower:multiphase_capacitor"/>
<recipe id="anvilcraftextrapower:potato_battery"/>

空铅酸电池使用铅锭、`sulfuric_acid` 硫酸与皇家钢锭；空多相电容器使用铅板与 `multiphase_matter` 多相物质（均为铁砧工艺材料）。

[返回首页](index)
