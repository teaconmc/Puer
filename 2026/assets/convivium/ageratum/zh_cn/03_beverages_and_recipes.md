---
title: 饮品与配方
navigation:
  title: 03 饮品与配方
---

# 饮品与配方

## 七种配方类型

158 条配方分属七种类型，而它们的分布说明了很多：

| 类型 | 数量 | 作用 |
|:---|---:|:---|
| **`caupona:bowl`** | **88** | **Caupona 自己的类型** —— 本模组添加的碗菜 |
| `convivium:beverage` | 28 | 酿造一杯饮品 |
| `convivium:grinding` | 16 | 研磨与压榨 |
| `convivium:relish_fluid` | 10 | 带风味的流体 |
| `convivium:relish` | 7 | 风味 |
| **`convivium:convertion`** | 6 | 流体转化 —— **注意拼写** |
| `convivium:basin` | 3 | 蒸发与浓缩 |

::: info
**最大的一组并不属于本模组自己的类型。** 158 条中有 88 条是 `caupona:bowl` —— 会饮按数量计最大的贡献是为 Caupona 既有的碗菜系统添加新菜，而不是新机械。饮品系统是这个模组的身份，碗菜是它的体量。
:::

::: warning
**`convivium:convertion` 在源码里就是这么拼的。** 正确的英文单词是 *conversion*，但注册的配方类型 ID 是 `convertion`。**数据包以及任何对它的引用都必须用这个拼错的形式**，因为那才是真实的标识符。不要在数据包里「修正」它——那样根本匹配不上。
:::

## 一条饮品配方如何被匹配

饮品配方是基于条件而非基于网格的。下面是一条真实的 `ade.json`，完整结构：

```json
{
  "type": "convivium:beverage",
  "allowedRelish": ["seasons", "hearth"],
  "relish": [
    { "type": "and",
      "cond1": { "type": "contains", "relish": "seasons" },
      "cond2": { "type": "contains", "relish": "hearth" } }
  ],
  "required": [],
  "optional": ["#convivium:fruits", "#convivium:sweeteners"],
  "density": 0.0,
  "priority": 100,
  "time": 200,
  "removeNBT": false,
  "output": "convivium:ade"
}
```

逐字段读：

| 字段 | 含义 |
|:---|:---|
| `allowedRelish` | 这条配方**允许**出现哪些风味 |
| **`relish`** | **一棵条件树** —— 此处是 `and(contains seasons, contains hearth)` |
| `required` | 必须存在的材料（此处为空） |
| `optional` | 可参与的材料 —— 是**标签**，不是固定物品 |
| `density` | 结果的一个数值属性 |
| **`priority`** | **多条配方同时满足时哪条胜出** |
| `time` | 完成所需刻数（200 = 10 秒） |
| `removeNBT` | 是否剥离组件数据 |

## 决定你结果的那两个字段

::: danger
**`relish` 是一棵可嵌套的条件树，而 `priority` 打破平局。**

`relish` 字段是一个条件数组，且条件可组合：`and` 接受 `cond1` 与 `cond2`，而其中任一个本身又可以是另一个条件。因此一条配方能表达「含维斯塔**且**含威耳廷努斯」——通过嵌套，还能表达远比这复杂的东西。

由于多条配方可能匹配同一次酿造，**`priority` 决定你实际得到哪一条**。一条理论上可满足的配方，可能因为另一条更高优先级的配方也匹配同一风味组合而永远不出现。

实际后果与条件树所暗示的相同：**收窄风味组合才是操纵结果的方式，而「移除一种风味」往往比「多加一样材料」更有效。**
:::

::: info
如果这个结构让你觉得熟悉，它与 577 `crockpot` 的需求系统同型——都是「打分 + 匹配 + 优先级决胜」的模型，而不是查表。两个模组都奖励理解匹配器而非背配方。
:::

## 流体转化

`convivium:convertion` 把一种流体变成另一种，并可要求加热：

```json
{
  "type": "convivium:convertion",
  "fluidIn":  { "amount": 250, "ingredient": "convivium:berry_must" },
  "fluidOut": { "amount": 250, "id": "convivium:berry_juice" },
  "heated": true,
  "time": 200,
  "vairants": {}
}
```

两点值得注意：

- **`heated: true`** 表示这次转化需要热源——这正是 Caupona 的灶火设施派上用场的地方。
- **`vairants` 拼错了**（应为 *variants*）。与 `convertion` 一样，它是真实的字段名，因此数据包必须照样拼错。

::: warning
**本模组有两个拼错但真实的标识符**：配方类型 `convivium:convertion` 与字段 `vairants`。两者都是承重的。用正确拼写来记录它们，等于记录了不存在的东西——这与 `beecrasy` 的 `hiveFloringRadius` 配置键是同一种情况。
:::

## 数量单位是毫桶

例子里的 `250` 是 250 mB，即四分之一桶。模组中的流体配方都在这个粒度上工作，因此一整桶 must 够做四次转化。

[返回首页](index)
