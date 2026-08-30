---
title: 风化、涂蜡与技术说明
navigation:
  title: 03 风化与技术说明
---

# 风化、涂蜡与技术说明

## 八个方块，一条铜链

模组注册的是一整套**完整的铜式风化组**，而不是单个方块：

| 阶段 | 未涂蜡 | 涂蜡 |
|:---|:---|:---|
| 崭新 | `time_capsule_block` | `waxed_time_capsule_block` |
| 斑驳 | `exposed_time_capsule_block` | `waxed_exposed_time_capsule_block` |
| 锈蚀 | `weathered_time_capsule_block` | `waxed_weathered_time_capsule_block` |
| 氧化 | `oxidized_time_capsule_block` | `waxed_oxidized_time_capsule_block` |

八个方块在两种语言里都有各自的翻译键、各自的 blockstate 与各自的战利品表——因此每个阶段都掉落自身。

## 这条链是数据驱动的，不是硬编码

风化与涂蜡通过 **NeoForge 数据映射**接线，正是原版铜所用的那套机制：

**`neoforge/data_maps/block/oxidizables.json`** —— 三条，构成整条链：

```
time_capsule_block           → exposed_time_capsule_block
exposed_time_capsule_block   → weathered_time_capsule_block
weathered_time_capsule_block → oxidized_time_capsule_block
```

**`neoforge/data_maps/block/waxables.json`** —— 四条，每阶段一条，各自映射到对应的涂蜡版本。

::: info
注意这处不对称：**`oxidizables` 有三条而 `waxables` 有四条。** 这是正确的而非遗漏——氧化是最终阶段，没有下一阶段可声明，但它仍然可以被涂蜡。四个阶段的链恰好需要三次转换。
:::

由于这是数据映射，数据包可以在不触碰代码的情况下改指或移除这些转换。

## ⚠️ 唯一的风险：挖掘已封存的胶囊

每个方块的战利品表使用 `minecraft:copy_components`、`source: block_entity`，其 `include` 列表为：

```
minecraft:custom_name
minecraft:container
minecraft:lock
minecraft:container_loot
```

**这四个全是原版组件。本模组自己的 `time_capsule:time_capsule_data` 不在该列表中**——而**留言、时间模式与解锁时间**正是存放在那个组件里。

::: danger
**如果你在意胶囊里的东西，就不要挖掘已封存的胶囊。**

被复制的那四个组件都是原版组件；而承载留言、模式与解锁时刻的本模组组件**并未列在其中**。因此「破坏再放置」这一轮之后究竟有什么能存活下来，不是本页能够承诺的，而稳妥的解读是：**不应假定封存状态能在被挖掘后存活**。

请把已封存的胶囊当作家具：放在它能一直待着的地方，等提示文本显示**等待启封**时就地打开。如果确实需要搬动，请在封存**之前**搬。
:::

## 数据组件

`time_capsule:time_capsule_data` 是一个含四个字段的 record：

| 字段 | 类型 | 说明 |
|:---|:---|:---|
| `items` | 物品堆列表 | **25 格**（`SIZE = 25`） |
| `message` | 文本组件 | 完整组件，因此格式会被保留 |
| `timeMode` | 枚举 | `GAME_TICK` 或 `REAL_TIME` |
| `unlockTime` | long | 按存储的模式来解释 |

它同时有 `Codec`（用于保存）与 `StreamCodec`（用于网络同步），对一个必须到达客户端才能渲染提示文本的组件而言，这是正确的搭配。

## 网络通信

一个载荷 `TimeCapsuleSealPayload`，把封存动作从客户端送到服务端。界面收集字段，载荷提交它们——真正写入组件的是服务端。

## 模组没有的东西

| 功能 | 状态 |
|:---|:---|
| 配置文件 | **无** —— 零处 `ModConfigSpec` |
| 命令 | **无** —— 零处 `RegisterCommandsEvent` |
| Mixin | **无** —— 完全没有 mixin 配置 |
| 实体 | 无 |
| 世界生成 | 无 |
| 外部依赖 | 除 NeoForge 与 Minecraft 外无 |

这是一个确实很小的接触面，也意味着**关于倒计时的任何东西都无法被重新配置或覆盖**。五条拒绝消息与两种模式就是全部行为。

## 本地化

`en_us` 与 `zh_cn` **各 29 键且完全对等**——8 个方块名、1 个物品名、1 个容器标题、11 条界面字符串、5 条拒绝消息与 3 条提示文本。两侧均无孤儿键。

## 版本说明

`mod_version` 是 **`1.0.0-indev`**，而 `minecraft_version_range` 被钉死在精确的 `[26.1.2]`。`-indev` 后缀是作者自己的标记；请把行为视为可能变动，若某个较新构建的表现与本页不符，请重新查阅源码。

[返回首页](index)
