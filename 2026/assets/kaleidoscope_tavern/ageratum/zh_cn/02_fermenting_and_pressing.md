---
title: "发酵与压榨"
navigation:
  title: "02 发酵与压榨"
---

# 发酵与压榨

## 配方构成

全部 126 条配方按类型：

| 类型 | 数量 | 位置 |
|:---|---:|:---|
| `minecraft:crafting_shaped` | **60** | 原版工作台 |
| `minecraft:crafting_shapeless` | **36** | 原版工作台 |
| **`kaleidoscope_tavern:barrel`** | **24** | 酒桶 —— 发酵 |
| **`kaleidoscope_tavern:pressing_tub`** | **6** | 压榨桶 |

::: info
**126 条中有 96 条是原版合成。** 酒馆的家具、玻璃器皿与配件都是普通工作台的活；只有饮品本身需要那两台自定义机械。这正是这个模组明明有 125 个方块却仍显得容易上手的原因。
:::

## 压榨桶

6 条配方。这是取汁步骤——葡萄进、液体出——在链条中位于最前。有一个专门的 Ponder 场景 `pressing_tub/introduction` 讲解它。

## 酒桶

**24 条配方，是压榨桶的四倍**，这让发酵成为生产侧真正的深度所在。这个方块也有自己的 Ponder 场景（`barrel/introduction`）。

酒桶的 blockstate 异常丰富，这本身就说明了它的用法：

| 属性 | 取值 | 含义 |
|:---|:---|:---|
| `LAYER` | 一个 `AttachFace` | 酒桶附着在哪个面上 |
| `INDEX` | **整数 0–8** | 九种不同状态 |

::: tip
**`INDEX` 从 0 到 8 意味着酒桶是设计来堆叠或成排摆放的，不是单个放置。** 九个索引状态是一个模组把「一整墙酒桶」渲染成一个连贯结构而不是九个一模一样副本的做法。如果你的酒桶看起来不对，请检查它们的附着方式是否与 Ponder 场景所示一致。
:::

## 酒桶与沙发无法被搬走

模组写入了一份 **Carry On 黑名单**：

```
carryon:tags/block/block_blacklist
  grape_crop、whiskey、magenta_sofa、ice_grape_crop、red_sofa、
  black_sofa、grass_sandwich_board、dragon_breath_bottle、
  mondrian_painting、……
```

::: info
**这是刻意的设计决定，不是疏漏。** Carry On 通常允许玩家整体拾起并搬走方块实体。对一个酒馆模组来说，那会让人把正在发酵的酒桶、装好的酒瓶或家具直接搬走——所以模组把自己的方块排除在外。

如果你在用 Carry On 而拿不起某个酒馆方块，原因就是这个标签，而且这是有意为之。
:::

## 成品饮品的作用

压榨与发酵产出饮品，而每种饮品在 `drink_effect` 注册表里都有一个条目，决定它对你做什么。那套系统是[饮品与杯数系统](03_drinks_and_cup_count)的主题。

## 配置

共 **6 个配置项**，**没有命令**。模组的旋钮很少——多数行为通过配方类型与 `drink_effect` 注册表数据驱动，而这两者都能被数据包扩展、无需触碰配置。

[返回首页](index)
