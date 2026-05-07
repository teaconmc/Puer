---
title: 味道与风味
navigation:
  title: 02 味道与风味
---

# 味道与风味

两套系统垫在一切之下：**五个味道轴**用数值描述一杯饮品，**六种风味**描述它的性格。配方按风味匹配；味道则是你读取并调整的东西。

## 五种味道

每杯饮品都带五个数值，提示文本以紧凑缩写显示它们：

| 味道 | 完整键 | 提示显示 |
|:---|:---|:---|
| 甜味 Sweetness | `taste.convivium.sweetness` | `%sSw` |
| 涩味 Astringency | `taste.convivium.astringency` | `%sAs` |
| 辛味 Pungency | `taste.convivium.pungency` | `%sPu` |
| 浓稠 Thickness | `taste.convivium.thickness` | `%sTh` |
| 舒缓 Soothingness | `taste.convivium.soothingness` | **`%sRo`** |

::: info
**注意最后那个缩写。** 五者中有四个取单词前两个字母——Sw、As、Pu、Th——但 soothingness 渲染为 **`Ro`** 而不是 `So`。语言文件里就是这么写的，因此提示文本上你看到的就是它。请把它当作这个味道既定的缩写，而不要在阅读时假定是笔误。
:::

味道正是模组需要**搅拌器**的原因：字符串 `gui.convivium.whisk.requires_taste` 的内容是「Adjustment required:」（需要调整：），因此搅拌器是把一杯饮品的味道数值推向配方所要求方向的工具。

## 六种风味

风味是饮品上的性格标签。共六种加一个 `none` 状态，而**内部 ID 与显示名完全不同**——ID 是功能性英文，显示名是罗马神祇：

| 内部 ID | 显示名 | 该神祇的领域 |
|:---|:---|:---|
| `wine` | **Liber**（利柏尔） | 酒与自由 |
| `bath` | **Minerva**（密涅瓦） | 智慧与技艺 |
| `cereal` | **Ceres**（刻瑞斯） | 谷物与丰收 |
| `hearth` | **Vesta**（维斯塔） | 灶火 |
| `seasons` | **Vertumnus**（威耳廷努斯） | 季节与变化 |
| `fire` | **Vulcanus**（伏尔甘） | 火与锻炉 |
| `none` | None | — |

::: warning
**你会同时遇到这两层命名，而它们从不一起出现。** 游戏里提示文本与界面显示神名——*Active Relish: [Liber]*。而在配方文件、数据包与 JEI 内部用的是 ID：`wine`、`bath`、`cereal`、`hearth`、`seasons`、`fire`。

因此一条要求 `hearth` 与 `seasons` 的配方，在屏幕上是一杯**维斯塔与威耳廷努斯**的饮品。读本模组配方或写数据包时用 ID；告诉另一名玩家该酿什么时用神名。
:::

## 一次最多两种风味

提示文本有两种形式，这告诉了你上限：

```
tooltip.convivium.major_relish_1 = Active Relish: [%s]
tooltip.convivium.major_relish_2 = Active Relishes: [%s, %s]
```

有单数形式和双槽复数形式——**不存在三风味的字符串**。因此一杯饮品最多携带**两种**活跃风味，这正是风味组合成为有意义的设计空间而非勾选清单的原因。

## 风味从哪来

两种配方类型产出它们：

| 类型 | 数量 | 作用 |
|:---|---:|:---|
| `convivium:relish` | 7 | 产出一种风味 |
| `convivium:relish_fluid` | 10 | 产出一种带风味的流体 |

七条风味配方对应六种风味，接近一对一——这是一个小而刻意的集合，不是庞大的合成树。

## 为什么这些要在酿造前搞清

饮品配方不会要求你在槽位里放一串材料。它询问的是**哪些风味存在**，用一棵条件树——然后才产出一杯你可能还需要调整味道的饮品。

这是[饮品与配方](03_beverages_and_recipes)的主题。

[返回首页](index)
