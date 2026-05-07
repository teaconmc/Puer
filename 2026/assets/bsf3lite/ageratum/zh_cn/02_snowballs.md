---
title: "雪球"
navigation:
  title: "02 雪球"
---

# 雪球

模组注册了 17 种雪球物品，每种都有对应的投掷实体。它们分为**普通**系列（主要关乎命中）与**特殊**系列（改变战场）。

## 普通雪球

| 物品 | 游戏内名称 | 物品自述作用 |
|:---|:---|:---|
| `smooth_snowball` | 光滑雪球 | 由简单模具压制成形 |
| `compacted_snowball` | 紧实雪球 | 手工压制成形 |
| `compacted_snowball_set` | 紧实雪球组 | 一次投出三颗紧实雪球 |
| `stone_snowball` | 石雪球 | 嵌入了一块石头 |
| `iron_snowball` | 铁雪球 | 嵌入了一块铁锭 |
| `ice_snowball` | 冰雪球 | 嵌入了一块冰 |
| `obsidian_snowball` | 黑曜石雪球 | 嵌入了一块黑曜石 |
| `explosive_snowball` | 爆炸雪球 | 嵌入了一块 TNT |
| `cherry_blossom_snowball` | 樱花雪球 | 嵌入了几片樱花花瓣 |
| `duck_snowball` | 鸭子雪球 | 嘎！ |

「嵌入」这条线是一条干净的伤害阶梯 —— 石、铁、冰、黑曜石 —— 靠向雪球里加一种材料构成。石与冰两种变体各有两个配方，一个从光滑雪球出发、一个从原版雪球出发，两条路都能起步。

鸭子雪球是个玩笑弹体，带有自己的 `duck_sound` 音效事件。

## 特殊雪球

| 物品 | 游戏内名称 | 行为 |
|:---|:---|:---|
| `spectral_snowball` | 光灵雪球 | 为范围内生物标记发光描边 |
| `frozen_snowball` | 冰冻雪球 | 冻结周围生物与方块 |
| `critical_frozen_snowball` | 极冻雪球 | 强力冻结并留下暴击雪 |
| `powder_snowball` | 细雪雪球 | 扬起一片阻挡视线的雪花 |
| `expansion_snowball` | 膨胀雪球 | 生成一个短命的空心球 |
| `reconstruct_snowball` | 重构雪球 | 沿弹道升起短暂的雪墙 |
| `icicle_snowball` | 冰锥雪球 | 造出一根巨大冰刺 |
| `sculk_snowball` | （见下方说明） | 由幽匿雪球发射器发射，命中时发出声音 |

### 储雪型雪球

膨胀、重构与冰锥雪球属于**储雪**弹体。它们共用的提示文本写明：*投掷时会瞬间吸收周围的雪并储存在内部* —— 它们搭起的结构由发射瞬间铲到的雪构成，所以开阔雪原上的效果远大于光秃的石地。

其容量与存活时间可由服务端配置：

| 雪球 | 容量默认值 | 存活默认值 |
|:---|:---|:---|
| 重构 | `500`（上限 1100） | `80` 刻 |
| 冰锥 | `2147483647` | `80` 刻 |
| 膨胀 | — | `80` 刻 |

::: info
冰锥雪球的默认容量是 `2147483647`，即 32 位整数最大值。实际含义是「默认完全没有容量上限」；该选项存在只是为了让服务器可以加一个上限。
:::

### 细雪雪球

细雪雪球会生成一个 **Powder Diffuser**（`bsf3lite:powder_executor`）—— 一个不受火焰影响的小型场实体，负责产生阻挡视线的飞雪。它有自己的 `powder_snowball` 音效事件。

## 爆炸雪球与破坏

爆炸雪球携带真正的 TNT，并且默认**会破坏方块**。服务端配置项 `explosiveDestroy` 默认为 `true`。

::: warning
在任何你在意的存档上，发放爆炸雪球之前请先把 `explosiveDestroy` 设为 `false`。这是模组里破坏性最强的默认值，而内爆雪球大炮又正是以爆炸雪球作为弹药。
:::

## 配方

每种雪球都用原版配方类型可合成，因此会正常出现在配方书里。

<recipe id="bsf3lite:explosive_snowball_from_snowball"/>

<recipe id="bsf3lite:frozen_snowball_1"/>

<recipe id="bsf3lite:icicle_snowball_1"/>

[返回首页](index)
