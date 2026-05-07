---
title: 上手与获取
navigation:
  title: 上手与获取
---

# 上手与获取

## 创造页

模组注册的一切都放在同一个创造页里：

| 创造页 ID | 标题 | 图标 |
|:---|:---|:---|
| `colorful_crystals:tab` | 多彩水晶 | 黄玉晶簇（`colorful_crystals:topaz_cluster`） |

`CrystalBlocks` 与 `CrystalItems` 都把这个页设为默认归属，因此没有任何已注册的方块或物品被漏在创造页之外。

## 这些方块从哪来？

**当前没有自然生成来源。** 这不是难度设定，也不是稀有生物群系的问题——源码里根本没有世界生成数据：

- `src/main/resources` 与生成资源中都没有 `worldgen` 目录；
- 没有生物群系修改器、configured feature 或 placed feature；
- 没有可生长的母岩方块。`CrystalTags` 里声明了 `c:buds` 与 `c:budding_blocks` 两个标签键，但没有任何方块被加入其中，因此**晶簇不会生长、扩散或再生**。

也就是说，挖矿或探险时永远不会遇到矿石方块与晶簇方块。目前受支持的获取方式是：

1. **创造模式** —— 从「多彩水晶」创造页中取用。
2. **命令** —— 例如 `/give @s colorful_crystals:ruby_ore` 或 `/setblock ~ ~ ~ colorful_crystals:ruby_cluster`。
3. **自制数据包** —— 你可以自行补上矿石生成。这些都是普通的已注册方块，而且已经带有多数世界生成辅助工具会读取的 `c:ores/*` 与 `c:clusters/*` 标签。

只要拿到一个矿石或晶簇方块，后续链条就可以自我维持：挖矿石得到原石，而 [04 配方](04_recipes.md) 中的整棵合成树是可逆的，宝石可以压成方块，也能再拆回宝石。

## 第一步该做什么

1. 放下 `topaz_ore`、`ruby_ore` 或 `sapphire_ore` 并挖掉它——会掉落对应的**原石**。
2. 放下 `topaz_cluster`、`ruby_cluster` 或 `sapphire_cluster` 并挖掉它——会掉落对应的**粗**宝石。
3. 拿着原石对准**切石机**方块并长按使用键，把它切割成粗宝石。
4. 拿着粗宝石对准**砂轮**方块并长按使用键，把它抛光。
5. 用九个抛光宝石合成抛光储存方块，再把方块切成楼梯与台阶。

第 3、4 步的细节见 [02 宝石加工](02_gem_processing.md)。

## 挖掘要求

24 个方块全部登记在 `minecraft:mineable/pickaxe` 中，因此镐永远是正确的工具。

每一组方块都从一个原版模板方块完整复制行为（硬度、爆炸抗性、音效、工具要求与发光等级）：

| 分组 | 原版模板 |
|:---|:---|
| 晶簇 | `minecraft:amethyst_cluster` |
| 矿石方块 | `minecraft:iron_ore` |
| 储存方块 | `minecraft:amethyst_block` |
| 楼梯与台阶 | 各自对应的储存方块 |

由于晶簇完整复制了紫水晶晶簇的属性模板，它也继承了后者的发光等级；模组自身从未声明任何光照等级。

[返回首页](index)
