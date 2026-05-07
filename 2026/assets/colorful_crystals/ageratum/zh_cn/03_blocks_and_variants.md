---
title: 方块与颜色变体
navigation:
  title: 方块与颜色变体
---

# 方块与颜色变体

模组只使用三种颜色——黄玉（黄）、红宝石（红）与蓝宝石（蓝），并为每种颜色提供同样的八个方块，合计 24 个方块。除此之外没有别的注册内容：没有水晶灯，没有玻璃，没有墙也没有栅栏。

## 完整方块清单

| 方块 ID | 类别 | 注册的掉落物 |
|:---|:---|:---|
| `colorful_crystals:topaz_cluster` | 晶簇 | `colorful_crystals:unpolished_topaz` |
| `colorful_crystals:ruby_cluster` | 晶簇 | `colorful_crystals:unpolished_ruby` |
| `colorful_crystals:sapphire_cluster` | 晶簇 | `colorful_crystals:unpolished_sapphire` |
| `colorful_crystals:topaz_ore` | 矿石 | `colorful_crystals:raw_topaz` |
| `colorful_crystals:ruby_ore` | 矿石 | `colorful_crystals:raw_ruby` |
| `colorful_crystals:sapphire_ore` | 矿石 | `colorful_crystals:raw_sapphire` |
| `colorful_crystals:unpolished_topaz_block` | 储存方块 | 自身 |
| `colorful_crystals:unpolished_topaz_stair` | 楼梯 | 自身 |
| `colorful_crystals:unpolished_topaz_slab` | 台阶 | 自身（双层时 2 个） |
| `colorful_crystals:polished_topaz_block` | 储存方块 | 自身 |
| `colorful_crystals:polished_topaz_stair` | 楼梯 | 自身 |
| `colorful_crystals:polished_topaz_slab` | 台阶 | 自身（双层时 2 个） |
| `colorful_crystals:unpolished_ruby_block` | 储存方块 | 自身 |
| `colorful_crystals:unpolished_ruby_stair` | 楼梯 | 自身 |
| `colorful_crystals:unpolished_ruby_slab` | 台阶 | 自身（双层时 2 个） |
| `colorful_crystals:polished_ruby_block` | 储存方块 | 自身 |
| `colorful_crystals:polished_ruby_stair` | 楼梯 | 自身 |
| `colorful_crystals:polished_ruby_slab` | 台阶 | 自身（双层时 2 个） |
| `colorful_crystals:unpolished_sapphire_block` | 储存方块 | 自身 |
| `colorful_crystals:unpolished_sapphire_stair` | 楼梯 | 自身 |
| `colorful_crystals:unpolished_sapphire_slab` | 台阶 | 自身（双层时 2 个） |
| `colorful_crystals:polished_sapphire_block` | 储存方块 | 自身 |
| `colorful_crystals:polished_sapphire_stair` | 楼梯 | 自身 |
| `colorful_crystals:polished_sapphire_slab` | 台阶 | 自身（双层时 2 个） |

## 完整宝石物品清单

| 物品 ID | 阶段 |
|:---|:---|
| `colorful_crystals:raw_topaz` | 原石 |
| `colorful_crystals:unpolished_topaz` | 粗宝石 |
| `colorful_crystals:polished_topaz` | 抛光宝石 |
| `colorful_crystals:raw_ruby` | 原石 |
| `colorful_crystals:unpolished_ruby` | 粗宝石 |
| `colorful_crystals:polished_ruby` | 抛光宝石 |
| `colorful_crystals:raw_sapphire` | 原石 |
| `colorful_crystals:unpolished_sapphire` | 粗宝石 |
| `colorful_crystals:polished_sapphire` | 抛光宝石 |

每个方块都有同名的方块物品，因此完整的物品注册表就是这 9 个宝石加 24 个方块物品，共 33 个物品。

## 晶簇

三种晶簇继承原版紫水晶晶簇方块类，并完整复制 `minecraft:amethyst_cluster` 的属性，因此也继承了它的发光等级。模组自身从未声明光照等级。

它们是有朝向的：方块状态使用 `facing` 属性覆盖六个方向，每个方向再从四个等权重的随机旋转中挑一个，因此一整面晶簇墙不会显得重复。

三者之间唯一的差别是传给方块构造函数的高度 / 宽度参数：

| 晶簇 | 高度 / 宽度参数 |
|:---|:---|
| `topaz_cluster` | `8f`、`8f` |
| `ruby_cluster` | `6f`、`8f` |
| `sapphire_cluster` | `6f`、`8f` |

因此黄玉晶簇是较高的那一种，红宝石与蓝宝石晶簇共用较矮的轮廓。三者都使用手工制作的 Blockbench 模型，而非数据生成模型。

## 矿石方块

矿石方块完整复制 `minecraft:iron_ore` 的属性。它们的模型是自定义模板：一个石头立方体外面套着一个略大一点的宝石贴图立方体，因此宝石颜色看起来像包在石头外面的一层壳，而不是散布的斑点。

## 掉落行为

- **矿石与晶簇**使用原版矿物掉落模板：精准采集返回方块本身，否则掉落已注册的宝石，并应用时运矿物掉落加成与爆炸衰减。
- **储存方块与楼梯**直接掉落自身（带「能在爆炸中存留」条件）。
- **台阶**掉落 1 个，双层台阶掉落 2 个。

请注意晶簇在不计时运时只掉落**一个**粗宝石，而不是一把碎片。

## 渲染资源

24 个方块都有生成的方块状态文件，33 个物品都有 item definition，客户端侧没有缺漏。贴图按源码的写法共用：楼梯与台阶复用它们所属材质的储存方块贴图，因此粗宝石楼梯看起来和粗宝石方块完全一致。

[返回首页](index)
