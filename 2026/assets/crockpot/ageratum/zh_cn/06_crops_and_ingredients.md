---
title: 作物与食材
navigation:
  title: 作物与食材
description: 八种作物、七处新掉落来源，以及未知种子从哪来。
---

# 作物与食材

## 八种作物

| 作物方块 | 说明 |
|:---|:---|
| `asparaguses` | 芦笋 |
| `corns` | 玉米，另有爆米花作为衍生食物 |
| `eggplants` | 茄子，生熟两种形态都是消耗品 |
| `garlics` | 大蒜 |
| `onions` | 洋葱 |
| **`peppers`** | 辣椒 —— ⚠️ **生吃会扣血**，见 [07](07_eating_and_hazards) |
| `tomatoes` | 番茄 |
| **`unknown_crops`** | 未知作物 |

请注意作物方块名用的是复数形式（`asparaguses`、`corns`、`tomatoes`），而物品名是单数。

## 未知作物与未知种子

`unknown_crops` 是模组的神秘机制，而它的种子来源是**战利品修改器**而非配方：

| 战利品修改器 | 来源 |
|:---|:---|
| `unknown_seeds_from_grass` | 破坏草 |
| `unknown_seeds_from_tall_grass` | 破坏高草 |

**所以未知种子来自普通的草**——正是原版小麦种子的来源。种下去就得到 `unknown_crops`，一种「身份本身就是重点」的作物。

这也意味着**未知种子从开局第一分钟就能拿到，完全没有进度门槛。**

## 七个战利品修改器分别加了什么

| 修改器 | 效果 |
|:---|:---|
| `frog_legs_from_frog` | 青蛙掉落**蛙腿** |
| `cooked_frog_legs_from_frog` | 以及熟蛙腿 |
| `hoglin_nose_from_hoglin` | 疣猪兽掉落**猪鼻** |
| `cooked_hoglin_nose_from_hoglin` | 以及熟猪鼻 |
| `unknown_seeds_from_grass` | 草掉落**未知种子** |
| `unknown_seeds_from_tall_grass` | 高草同样 |
| **`crock_pot_upgrade_smithing_template_from_nether_bridge`** | **下界要塞掉落锅升级模板** |

青蛙与疣猪兽各有生/熟两个版本，这是原版标准套路——**被火烧死的生物直接掉熟的那一种**。

**蛙腿**用于 `froggle_bunwich`；**猪鼻**是下界肉类食材。**两者都给已有的原版生物提供了一个它们本来没有的被猎杀理由。**

## 下界要塞模板是本模组唯一的进度门槛

在这个模组的一切内容中，**恰好只有一样东西被探索锁住**：**烹饪锅升级锻造模板**，位于下界要塞战利品中。

那一件物品就是抬升你锅等级、解锁更高 `potlevel` 菜品的东西——见 [01 入门](01_getting_started) 与 [03 需求与优先级](03_requirements_and_priority)。

**其余一切——草里的作物、食材做的菜、烘干、鸟笼——都不需要离开主世界。**

## 存在普通的烹饪路径

模组的食材并非只能下锅。它随包 6 条 `minecraft:smoking`、6 条 `minecraft:smelting` 与 6 条 `minecraft:campfire_cooking`，因此它的作物与肉类可以用普通方式烹熟。

**这对前期很重要：你在造锅之前就能把这些作物当食物用。**

## ⚠️ 请给你的田围上栅栏

**模组的作物会被生物啃食，与原版胡萝卜完全一样。** 它们不会因为出自模组就免疫——兔子和其他会吃作物的生物会自己动手。

::: tip
这些作物在各方面都与原版作物保持一致：生长方式相同、对相同条件作出反应、也会被同样地踩坏。这种一致性很方便，但它连缺点一起带来了——**所以请像对待原版农田那样给它围上栅栏。**
:::

[返回首页](index)
