---
title: 十二种木材
navigation:
  title: 十二种木材
description: 全部十二种木材、它们的原态与去皮形态，以及 ID 命名规则。
---

# 十二种木材

模组名中的「拾贰」指的就是这十二种木材。每一种都有**原态**与**去皮**两形，每形又各有三个损坏阶段——共 12 × 2 × 3 = **72 个方块**。

## 十二种

| # | 木材 | 原态基础 ID | 去皮基础 ID |
|:---|:---|:---|:---|
| 1 | 橡木 | `oak_log_anvil` | `stripped_oak_log_anvil` |
| 2 | 云杉 | `spruce_log_anvil` | `stripped_spruce_log_anvil` |
| 3 | 白桦 | `birch_log_anvil` | `stripped_birch_log_anvil` |
| 4 | 丛林木 | `jungle_log_anvil` | `stripped_jungle_log_anvil` |
| 5 | 金合欢 | `acacia_log_anvil` | `stripped_acacia_log_anvil` |
| 6 | 深色橡木 | `dark_oak_log_anvil` | `stripped_dark_oak_log_anvil` |
| 7 | 红树 | `mangrove_log_anvil` | `stripped_mangrove_log_anvil` |
| 8 | 樱花 | `cherry_log_anvil` | `stripped_cherry_log_anvil` |
| 9 | 苍白橡木 | `pale_oak_log_anvil` | `stripped_pale_oak_log_anvil` |
| 10 | 绯红 | `crimson_stem_anvil` | `stripped_crimson_stem_anvil` |
| 11 | 诡异 | `warped_stem_anvil` | `stripped_warped_stem_anvil` |
| 12 | 竹子 | `bamboo_anvil` | `stripped_bamboo_anvil` |

请注意这里遵循原版的命名分野：九种主世界树木用 `_log_`，两种下界木材用 `_stem_`，而竹子两者都不用。

## ID 规则

每个 ID 都按以下方式构造：

```
[stripped_] <木材基名> [_chipped | _damaged] _anvil
```

以橡木为例：

| 阶段 | 原态 | 去皮 |
|:---|:---|:---|
| 基础 | `oak_log_anvil` | `stripped_oak_log_anvil` |
| 缺角 | `oak_log_chipped_anvil` | `stripped_oak_log_chipped_anvil` |
| 破损 | `oak_log_damaged_anvil` | `stripped_oak_log_damaged_anvil` |

::: warning
损坏标记位于 `_anvil` **之前**，而不是跟在木材名后面。是 `oak_log_chipped_anvil`，不是 `chipped_oak_log_anvil`——与显示名的读法（「Chipped Oak Log Anvil」）正好相反。编写命令或数据包时请注意这一点。
:::

## 共享的方块属性

全部 72 个方块以完全相同的属性注册：

| 属性 | 值 |
|:---|:---|
| 地图色 | `MapColor.WOOD` |
| 强度 | `3.0F, 3.0F`（挖掘 / 爆炸抗性） |
| 音效类型 | `SoundType.WOOD` |

硬度、爆炸抗性与音效**没有任何逐木材差异**——竹子与深色橡木表现完全相同，只有模型与贴图不同。

作为对照，原版铁砧是 `5.0F, 1200.0F`，因此木砧不仅更快被挖掉，爆炸抗性更是**天差地别**。

## 显示名

每个方块都通过 `Component.translatable("block.woodenanvil.<id>")` 获得显式显示名，该名称既传入方块构造器，也用作铁砧界面标题。因此 GUI 顶部显示的是「Oak Log Anvil」而不是原版通用的「修复与命名」。

模组自带十种语言：`en_us`、`zh_cn`、`zh_tw`、`zh_hk`、`lzh`（文言）、`de_de`、`fr_fr`、`ja_jp`、`ko_kr`、`ru_ru`——每份 148 个键，覆盖全部 72 个方块、72 个物品与创造页。在本批模组中，这是异常完整的本地化覆盖。

[返回首页](index)
