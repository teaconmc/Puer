---
title: 工作站与配方
navigation:
  title: 03 工作站与配方
---

# 工作站与配方

## 配方构成

全部 107 条配方按类型：

| 类型 | 数量 | 工作站 |
|:---|---:|:---|
| `minecraft:crafting_shaped` | **26** | 原版工作台 |
| `minecraft:crafting_shapeless` | **25** | 原版工作台 |
| `bakeries:oven` | 15 | 烤炉 |
| `bakeries:blender` | 14 | 搅拌机 |
| `bakeries:dough_crafting_table` | 8 | 面胚制作台 |
| `bakeries:drink` | 6 | 饮料站 |
| `bakeries:bread_knife` | 5 | 面包刀 |
| `bakeries:flour_sieve` | 4 | 面粉筛 |
| `minecraft:smelting` | 2 | 熔炉 |
| `minecraft:campfire_cooking` | 1 | 营火 |
| **`neoforge:mod_loaded`** | **1** | **条件配方 —— 见下** |

::: info
**107 条中有 51 条用原版类型。** 将近一半的模组内容在普通工作台上就能做出来，这让入门坡度远比六个自定义工作站所暗示的平缓。建造工作站是为了解锁深度，而不是为了起步。
:::

## 六个工作站

| 工作站 | 容器标题 | 作用 |
|:---|:---|:---|
| **烤炉** | 烤箱 | 控温烘焙 —— 见[完美火候](02_oven_and_perfect_temperature) |
| **搅拌机** | 搅拌机 | 14 条配方，烤炉之后最大的自定义类型 |
| **面胚制作台** | 面胚制作台 | 面粉变面胚 |
| **面粉筛** | 面粉筛 | 原料变面粉 |
| **面包刀** | 面包刀 | 切割成品 |
| **厨台** | 厨台 | 储物 |
| **饮料** | 饮料 | 饮品 |

注意**厨台**有容器界面但没有配方类型——它是储物而非加工。**面粉筛**与**面包刀**有配方类型但作为手持工具使用而非放置方块；[工具与它们的门道](04_tools_and_quirks)讲怎么用。

## 唯一那条条件配方是可选集成的范本

只有一条 `neoforge:mod_loaded` 配方，值得完整读一遍：

```json
{
  "neoforge:conditions": [
    { "type": "neoforge:mod_loaded", "modid": "anvilcraft" }
  ],
  "type": "anvilcraft:stamping",
  "ingredients": [ { "items": "bakeries:croissant" } ],
  "results": [ { "count": 1, "id": "bakeries:flat_croissant" } ]
}
```

读它：**若安装了 AnvilCraft**，你可以把可颂放到它的冲压机下，得到一个**压平的可颂**。

::: tip
**这是本批里最干净的可选集成形式。** 守卫在数据层而不是代码层：

- 条件是 `neoforge:mod_loaded`，在配方加载时求值。
- 没有 AnvilCraft 时，**这条配方直接不加载** —— 没有异常、没有「配方类型缺失」报错、也没有日志噪音。
- 因此 `bakeries` 完全不需要在 `mods.toml` 里声明 AnvilCraft，而它正确地没有声明。

对照本项目别处归纳的三种代码层情形——有 `ModList.isLoaded` 守卫、无守卫但真实引用、无守卫且未使用的构建残留。**当集成纯粹是一条配方时，数据包条件是第四种、也是更好的选择。**
:::

产物也是个好笑话：AnvilCraft 把东西压平，所以压过的可颂就是压平的可颂。

## 约定标签

**`c` 命名空间下 19 个标签**，那是跨模组约定命名空间。这正是本模组的面粉、面胚与烘焙成品能被其他食物模组使用、而双方互不知情的机制——与 `neoecoae` 用 48 个 `c` 标签同理。

另有 `minecraft` 命名空间 **12 个**标签与自有命名空间 2 个。

## 村民集成

**`bakeries` 命名空间 5 条村民交易，另加 1 条在 `minecraft` 里。** 后者意味着模组修改了某个既有村民职业的交易项——因此一个普通村庄会成为 Bakeries 内容的来源，玩家什么都不用建。

## 结构与世界生成

1 个结构文件与 3 个世界生成文件。规模不大，但意味着模组的一部分存在于世界中等待被发现，而不只存在于配方里。

[返回首页](index)
