---
title: 调色板与材料族
navigation:
  title: 调色板与材料族
description: 23 种颜色与 18 个材料族如何生成 275 个方块，以及颜色名为何重要。
---

# 调色板与材料族

整套方块出自两张列表。掌握它们，目录就不再是 275 件互不相干的东西。

## 调色板：23 种颜色，而且带有时代特征

每种颜色都带中文名、英文名与排序键。排序键**按色系分组**（10 段白、20 段黄、30 段红、40 段蓝绿、50 段褐、60 段灰、70 段黑），这正是创造分页读起来顺畅而非按字母乱排的原因。

| ID | 中文 | 英文 | 键 |
|:---|:---|:---|---:|
| `white` | 白 | White | 10 |
| `dirty_white` | **脏白** | Dirty White | 11 |
| `cream` | 米黄 | Cream | 20 |
| `pale_cream` | 浅米黄 | Pale Cream | 21 |
| `sunlit_mustard` | **日晒芥黄** | Sunlit Mustard | 22 |
| `orange` | 橙 | Orange | 23 |
| `red` | 红 | Red | 30 |
| `pale_peach` | 浅桃 | Pale Peach | 31 |
| `dusty_rose` | 灰玫红 | Dusty Rose | 32 |
| `blue` | 蓝 | Blue | 40 |
| `light_ceramic_blue` | 浅瓷蓝 | Light Ceramic Blue | 41 |
| `clear` | 透明 | Clear | 42 |
| `mosaic_blue` | **马赛克蓝** | Mosaic Blue | 43 |
| `blue_reverse` | **蓝底白点** | Blue Base White Dot | 44 |
| `green` | 绿 | Green | 45 |
| `emerald_dot` | 翡翠绿 | Emerald Green | 46 |
| `emerald_dot_reverse` | 翡翠绿底白点 | Emerald Base White Dot | 47 |
| `brown` | 褐 | Brown | 50 |
| `dusty_mauve_brown` | 灰紫褐 | Dusty Mauve Brown | 51 |
| `dusty_mauve_brown_reverse` | 灰紫褐底白点 | Dusty Mauve Brown Base White Dot | 52 |
| `plain` | 素 | Plain | 59 |
| `gray` | 灰 | Gray | 60 |
| `black` | 黑 | Black | 70 |

::: tip
**这些名字本身就是设计说明。** 「脏白」与「日晒芥黄」不是取色器标签，它们描述的是**真实建筑上已经风化的外墙涂料**。想让模组看对味，就优先用这些而不是干净的纯色：`dirty_white` 加 `pale_cream` 的立面读起来有二十年历史，同一个立面用 `white` 读起来则是新的。
:::

**三个 `_reverse` 颜色是马赛克反相**：`blue_reverse` 即「蓝底白点」——同一种马赛克瓷砖把图与底调换。把某个颜色与它的 `_reverse` 用在相邻面上，正是真实马赛克立面分带的做法。

## 材料族：18 个，各自有自己的形状与颜色清单

材料族声明的不只是贴图。读一条生成规格里的条目：

```
"small_tile", "solid_material", "小方砖", "Small Tile",
分组   = "brick_and_tile"
基础   = "solid"
形状   = cube, slab, stairs, wall, slope, triangle_wall
颜色   = white, dirty_white, pale_cream, sunlit_mustard, pale_peach,
        dusty_rose, light_ceramic_blue, dusty_mauve_brown,
        mosaic_blue, emerald_dot
属性   = stone, 硬度 1.5, 爆炸抗性 6.0, STONE 音效
```

由此得出三件对建造有实际影响的事：

**1. 颜色清单是逐族而非全局的。** `small_tile` 只提供 23 种中的 10 种。所以**不是每个材料族都存在于每种颜色**——方块总数是各族「颜色数 × 形状数」之和，而不是 23 × 18。想找黑色的 `terrazzo` 可能根本不存在。

**2. 每个表面材料族都得到同样六种形状**：`cube`、`slab`、`stairs`、`wall`、`slope`、`triangle_wall`。后两种是模组自己加的，需要自定义模型——见[特殊形状](03_special_shapes)。

**3. 属性是声明的而非继承的。** 表面材料族为 `stone` 材质、硬度 1.5、爆炸抗性 6.0、`STONE` 音效；由于是**逐族声明**，玻璃与街道构件的属性各不相同。

## 材料族分组

| 分组 | 材料族 |
|:---|:---|
| `brick_and_tile` | 小方砖、竖条砖、横条砖 |
| `concrete_and_plaster` | 水泥、水磨石、马赛克 |
| 玻璃 | 幕墙玻璃、窗玻璃板、框窗 1/2/3、框窗斜坡、预制阳台窗 |
| 街道构件 | 防盗网、水泥电线杆、电线、线缆系统 |

## 两个内容集合

生成器把材料族归入两个命名集合，而它们的名字直接道出了意图：

| 集合 | 材料族 |
|:---|:---|
| **`qianxi_core`**（**千禧**核心） | 小方砖、竖条砖、横条砖、水泥、水磨石、马赛克、幕墙玻璃 |
| `window_and_infra` | 窗玻璃板、防盗网、水泥电线杆、电线、框窗 1/2/3、框窗斜坡、预制阳台窗 |

**`qianxi_core` 是这个模组的论点**：七个表面材料族，组合起来就产出世纪之交的立面。`window_and_infra` 里的一切都是往上附加的东西。

[返回首页](index)
