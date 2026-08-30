---
title: "葡萄与种植"
navigation:
  title: "01 葡萄与种植"
---

# 葡萄与种植

## 四种葡萄

作物线建立在葡萄上，共有四种不同的葡萄：

| 物品 | 说明 |
|:---|:---|
| `kaleidoscope_tavern:grape` | 基础种 |
| `kaleidoscope_tavern:ice_grape` | 有自己的作物与藤架方块 |
| `kaleidoscope_tavern:gold_grape` | 有自己的作物与藤架方块 |
| `kaleidoscope_tavern:green_grape` | |

四者全部被注册进 **`diet:fruits`** 标签，而 `grape` 还额外进入约定标签 **`c:fruits/grapes`** —— 因此其他食物模组能看到它们，而双方都不必为对方写代码。

## 作物与藤架是分开的方块

模组同时注册了 `*_grape_crop` 与 `*_grapevine_trellis` 两个方块系列。这个区分在下面的季节集成里很要紧，因为两半被分到了不同类别。

## 三处季节类模组集成，而它们的分类彼此不同

这是种植系统里最有意思的部分：**三个不同的模组给这些植物分类，而每个都得到了自己的标签文件**。

**SereneSeasons** —— 作物与藤架落在*不同*季节：

| 标签 | 内容 |
|:---|:---|
| `sereneseasons:tags/block/autumn_crops` | `grape_crop` |
| `sereneseasons:tags/block/spring_crops` | `grapevine_trellis` |

**节气**（本届比赛第 531 号作品）—— 用湿度分类而不是季节：

```
eclipticseasons:tags/block/crops/average_moist
  grapevine_trellis、ice_grapevine_trellis、gold_grapevine_trellis、
  grape_crop、ice_grape_crop、gold_grape_crop
```

全部六个生长类方块都被声明为**中等湿度作物**。

::: tip
**两件参赛作品互相集成值得留意。** 523 往 531 的命名空间里写了一个标签，因此若你同时运行两者，葡萄会正确参与节气的湿度系统。两个模组都没有声明对彼此的依赖，也都不需要——目标不存在时该标签是惰性的。
:::

::: info
**SereneSeasons 与节气被同时支持，且采用了各自不同的模型。** SereneSeasons 问的是「哪个季节？」，得到的答案是果实属秋、藤架属春；节气问的是「湿度多少？」，得到的答案是一律「中等」。模组按各自的术语分别作答，而不是强行统一成一种分类。
:::

## 野生生成

有一个名为 `grapevine/wild_generation` 的 Ponder 场景，因此葡萄除人工栽培外也自然出现。另一个场景 `grapevine/planting` 讲的是主动种植——Ponder 场景是什么、以及什么时候能看到它们，见[与其他模组一起玩](04_integrations_and_technical_notes)。

## 葡萄藤有两种副产用途

除果实之外，藤本身也有用，而这两种用途都是通过 **NeoForge 数据映射**而非配方声明的：

| 数据映射 | 条目 |
|:---|:---|
| `neoforge:data_maps/item/furnace_fuels` | `grapevine` → **燃烧时间 200** |
| `neoforge:data_maps/item/compostables` | `grapevine` → 0.25 概率 |

因此修剪下来的藤蔓能当木板级燃料烧，也能以较低概率堆肥。

## 堆肥概率

堆肥映射也覆盖了果实：

| 物品 | 堆肥概率 | 村民是否会堆肥 |
|:---|---:|:---|
| `grape` | 0.5 | 是 |
| `gold_grape` | 0.5 | 是 |
| `green_grape` | 0.5 | 是 |
| `grapevine` | 0.25 | — |

::: info
果实上的 `can_villager_compost: true` 意味着**村民会使用它们**，如果你在带堆肥桶的村庄附近种葡萄，这一点有影响。
:::

## 葡萄去哪里

葡萄供给两台加工机械——压榨桶与酒桶——酒就从那里来。见[发酵与压榨](02_fermenting_and_pressing)。

[返回首页](index)
