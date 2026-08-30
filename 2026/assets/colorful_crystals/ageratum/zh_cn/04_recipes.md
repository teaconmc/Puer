---
title: 配方
navigation:
  title: 配方
---

# 配方

模组随包提供 **36 个配方 JSON 文件**，全部是原版配方类型：`minecraft:crafting_shaped`、`minecraft:crafting_shapeless` 与 `minecraft:stonecutting`。六种建筑材质（粗与抛光，各三种颜色）各有同样的六个配方。

**矿石方块与晶簇方块完全没有配方。** 它们不能合成、不能切割，也不能从宝石反向做出来。[02 宝石加工](02_gem_processing.md) 中的宝石转化步骤是硬编码交互，不是配方。

## 配方规律

| 配方 | 类型 | 输入 | 输出 |
|:---|:---|:---|:---|
| `<material>_block` | 3×3 有序合成 | 9 个宝石 | 1 个储存方块 |
| `<gem>_from_<material>_block` | 无序合成 | 1 个储存方块 | 9 个宝石 |
| `<material>_slab` | 有序合成，一横排 3 个 | 3 个储存方块 | 6 个台阶 |
| `<material>_slab_from_<material>_block_stonecutting` | 切石 | 1 个储存方块 | 2 个台阶 |
| `<material>_stair` | 有序合成，阶梯形 | 6 个储存方块 | 4 个楼梯 |
| `<material>_stair_from_<material>_block_stonecutting` | 切石 | 1 个储存方块 | 1 个楼梯 |

由于储存方块配方可逆，宝石与方块完全等价互换——放九个进去，还能拆出九个。楼梯与台阶是单向的：它们无法再合成回方块。请注意切石机把方块切成楼梯只得到**一个**楼梯，而合成用 6 个方块可得 4 个楼梯，因此楼梯走合成更划算，台阶走切石更便宜。

下面每个配方还会生成对应的配方解锁进度，位于 `recipes/building_blocks/` 之下。

## 黄玉

### 粗黄玉

<recipe id="colorful_crystals:unpolished_topaz_block"/>
<recipe id="colorful_crystals:unpolished_topaz_from_unpolished_topaz_block"/>
<recipe id="colorful_crystals:unpolished_topaz_slab"/>
<recipe id="colorful_crystals:unpolished_topaz_slab_from_unpolished_topaz_block_stonecutting"/>
<recipe id="colorful_crystals:unpolished_topaz_stair"/>
<recipe id="colorful_crystals:unpolished_topaz_stair_from_unpolished_topaz_block_stonecutting"/>

### 抛光黄玉

<recipe id="colorful_crystals:polished_topaz_block"/>
<recipe id="colorful_crystals:polished_topaz_from_polished_topaz_block"/>
<recipe id="colorful_crystals:polished_topaz_slab"/>
<recipe id="colorful_crystals:polished_topaz_slab_from_polished_topaz_block_stonecutting"/>
<recipe id="colorful_crystals:polished_topaz_stair"/>
<recipe id="colorful_crystals:polished_topaz_stair_from_polished_topaz_block_stonecutting"/>

## 红宝石

### 粗红宝石

<recipe id="colorful_crystals:unpolished_ruby_block"/>
<recipe id="colorful_crystals:unpolished_ruby_from_unpolished_ruby_block"/>
<recipe id="colorful_crystals:unpolished_ruby_slab"/>
<recipe id="colorful_crystals:unpolished_ruby_slab_from_unpolished_ruby_block_stonecutting"/>
<recipe id="colorful_crystals:unpolished_ruby_stair"/>
<recipe id="colorful_crystals:unpolished_ruby_stair_from_unpolished_ruby_block_stonecutting"/>

### 抛光红宝石

<recipe id="colorful_crystals:polished_ruby_block"/>
<recipe id="colorful_crystals:polished_ruby_from_polished_ruby_block"/>
<recipe id="colorful_crystals:polished_ruby_slab"/>
<recipe id="colorful_crystals:polished_ruby_slab_from_polished_ruby_block_stonecutting"/>
<recipe id="colorful_crystals:polished_ruby_stair"/>
<recipe id="colorful_crystals:polished_ruby_stair_from_polished_ruby_block_stonecutting"/>

## 蓝宝石

### 粗蓝宝石

<recipe id="colorful_crystals:unpolished_sapphire_block"/>
<recipe id="colorful_crystals:unpolished_sapphire_from_unpolished_sapphire_block"/>
<recipe id="colorful_crystals:unpolished_sapphire_slab"/>
<recipe id="colorful_crystals:unpolished_sapphire_slab_from_unpolished_sapphire_block_stonecutting"/>
<recipe id="colorful_crystals:unpolished_sapphire_stair"/>
<recipe id="colorful_crystals:unpolished_sapphire_stair_from_unpolished_sapphire_block_stonecutting"/>

### 抛光蓝宝石

<recipe id="colorful_crystals:polished_sapphire_block"/>
<recipe id="colorful_crystals:polished_sapphire_from_polished_sapphire_block"/>
<recipe id="colorful_crystals:polished_sapphire_slab"/>
<recipe id="colorful_crystals:polished_sapphire_slab_from_polished_sapphire_block_stonecutting"/>
<recipe id="colorful_crystals:polished_sapphire_stair"/>
<recipe id="colorful_crystals:polished_sapphire_stair_from_polished_sapphire_block_stonecutting"/>

[返回首页](index)
