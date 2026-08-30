---
title: "药水与酿造"
navigation:
  title: "药水与酿造"
---

# 药水与酿造

模组注册了 12 种药水。它们都是携带自定义 `minecraft:potion_contents` 效果列表的原版药水物品，因此堆叠、酿造与投掷方式与原版药水完全一致。

## 酿造表

`brewStart` 表示该药水由**粗制的药水**加上所列材料酿成；`brewFrom` 表示它由另一种我的尖塔药水酿成。

| 药水 ID | 授予效果 | 持续时间 | 等级 | 酿造来源 | 材料 |
|:---|:---|:---|:---|:---|:---|
| `minethespire:bottled_fairy` | 精灵庇护 | 3600 t（3 分钟） | 0 | — | **无法酿造** |
| `minethespire:long_bottled_fairy` | 精灵庇护 | 9600 t（8 分钟） | 0 | — | **无法酿造** |
| `minethespire:blocking` | 快速格挡 | 5 t | 19 | 粗制的药水 | 铜锭 |
| `minethespire:barricade` | 壁垒 | 9600 t（8 分钟） | 0 | 粗制的药水 | 盾牌 |
| `minethespire:deadly_poison` | 蛇毒 | 100 t | 6 | 粗制的药水 | 毒马铃薯 |
| `minethespire:strong_deadly_poison` | 蛇毒 | 100 t | 9 | 致命毒药 | 荧石粉 |
| `minethespire:focus` | 集中提升 | 3600 t（3 分钟） | 0 | 粗制的药水 | 铜块 |
| `minethespire:long_focus` | 集中提升 | 9600 t（8 分钟） | 0 | 集中药水 | 红石 |
| `minethespire:strong_focus` | 集中提升 | 3600 t（3 分钟） | 1 | 集中药水 | 荧石粉 |
| `minethespire:vulnerable` | 易伤 | 3600 t（3 分钟） | 1 | 粗制的药水 | 腐肉 |
| `minethespire:long_vulnerable` | 易伤 | 9600 t（8 分钟） | 1 | 易伤药水 | 红石 |
| `minethespire:strong_vulnerable` | 易伤 | 3600 t（3 分钟） | 2 | 易伤药水 | 荧石粉 |

酿造配方通过 `RegisterBrewingRecipesEvent` 注册，而非 JSON 文件，因此它们不会出现在数据包清单中。

## 创造标签页变体

某种药水以普通瓶、喷溅瓶还是滞留瓶出现在创造标签页，是与酿造配方**独立**声明的，而且选择并不统一：

| 药水 | 普通 | 喷溅 | 滞留 |
|:---|:---|:---|:---|
| 瓶装精灵 / 长效瓶装精灵 | 有（自定义模型） | 无 | 无 |
| 格挡药水 | 有 | 无 | 无 |
| 壁垒药水 | 有 | 无 | 无 |
| 致命毒药 / 强化致命毒药 | **无** | 有 | 无 |
| 集中药水（全部三种） | 有 | 无 | 无 |
| 易伤药水（全部三种） | **无** | 有 | 有 |

因此致命毒药与易伤药水拥有可正常工作的酿造配方、产出*普通*瓶装，但这个普通瓶装从未出现在创造标签页里。无论如何，每种药水的三种形态翻译键都会生成，所以即使标签页里没有条目，普通瓶装的名称依然存在。

## 命名怪癖

英文名由注册时的 `en(...)` 调用生成，而长效／强化变体刻意复用了基础名称：

| 药水 ID | 英文名 |
|:---|:---|
| `bottled_fairy`、`long_bottled_fairy` | Bottled Fairy |
| `deadly_poison`、`strong_deadly_poison` | Deadly Poison |
| `focus`、`long_focus`、`strong_focus` | Potion of Focus |
| `vulnerable`、`long_vulnerable`、`strong_vulnerable` | Potion of Vulnerable |

所以持续时间为 3 分钟和 8 分钟的两种瓶装精灵在名称上完全无法区分，只有提示文本中的持续时间不同。等级 6 与等级 9 的致命毒药同理。

## 扩展的强度名称

`ModPotions` 额外注册了 `potion.potency.6` 到 `potion.potency.20` 的翻译键，映射为罗马数字 `VII` 到 `XXI`。原版只提供到等级 6 的名称，这些条目纯粹是为了让蛇毒 VII、快速格挡 XX 这类高等级效果能显示正常的等级数字，而不是原始字符串。

## 瓶装精灵的模型

瓶装精灵的物品堆由一个自定义工厂构建，它把 `minecraft:enchantment_glint_override` 设为 `true`，并把 `minecraft:item_model` 指向 `minethespire:fairy_potion`。该模型单独注册为纹理 `minethespire:item/fairy_potion` 上的平面物品模型。它只是一个模型条目：并没有名为 `fairy_potion` 的物品被注册。

## 实用提示

- 格挡药水 5 tick 的持续时间是有意为之：快速格挡是瞬时效果，其真正作用是在这 5 tick 内以等级 19 进行一次格挡值回复爆发，即每 tick `+20.5`。
- 瓶装精灵完全无法通过酿造获得。不作弊、不用创造标签页时，没有任何途径获得精灵庇护。
- 强化型集中药水与普通集中药水在机制上完全相同，因为集中提升忽略其等级（见 [04 状态效果](04_effects)）。

[返回首页](index)
