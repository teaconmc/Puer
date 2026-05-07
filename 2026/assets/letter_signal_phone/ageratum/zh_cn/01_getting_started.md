---
title: 获取开始
navigation:
  title: 获取开始
description: 创造页、全部已注册方块与物品，以及九个合成配方。
---

# 获取开始

所有内容都集中在一个创造页中；与本资源包里许多模组不同，这个模组**确实有真实的合成配方**。

## 创造页

创造页为 `letter_signal_phone:items`，标题「书信、信号与电话」，以电话作为图标。其内容顺序：

电话 → 空白电话卡 → 电话卡 → 制卡器 → 电报机 → 电报纸 → 猫头鹰巢 → 猫头鹰蛋 → 猫头鹰刷怪蛋 → 邮箱 → 漂流瓶 → 可投掷漂流瓶 → 信件 → **全部邮票变体的五种稀有度** → **全部邮票补充包** → 邮票册 → 打包盒 → 包裹。

邮票条目是**根据当前加载的数据包动态生成**的，因此该创造页会随可用的邮票变体与补充包一起增减。参见[邮票](04_stamps.md)。

## 方块

| 方块 | 强度 | 说明 |
|:---|:---|:---|
| `card_writer` | 2.5 / 6.0 | 金属地图颜色；需要正确工具才掉落。 |
| `mailbox` | 2.0 / 3.0 | 木质地图颜色。 |
| `message_in_bottle` | 0.3 | 不遮挡、动态形状、XZ 偏移——像掉落的瓶子一样随意摆放。 |
| `telegraph_machine` | 2.5 / 6.0 | 金属地图颜色；需要正确工具才掉落。 |
| `owl_nest` | 2.0 / 3.0 | 木质地图颜色。 |

## 物品

| 物品 | 堆叠上限 | 作用 |
|:---|:---|:---|
| `phone` | 1 | 装载电话卡；用于通话。 |
| `blank_phone_card` | 16 | 原始卡片，在制卡器上注册。 |
| `phone_card` | 1 | 已注册并携带号码的卡片。 |
| `card_writer` | 64 | 方块物品。 |
| `mailbox` | 64 | 方块物品。 |
| `message_in_bottle` | 16 | 瓶子的方块物品形态。 |
| `throwable_message_in_bottle` | 16 | 投入水中使其漂走。 |
| `telegraph_machine` | 64 | 方块物品。 |
| `telegram_paper` | 1 | 记录收到的电报。 |
| `owl_nest` | 64 | 方块物品。 |
| `owl_egg` | 16 | 猫头鹰蛋。 |
| `owl_spawn_egg` | 64 | `owl` 的刷怪蛋。 |
| `letter` | 1 | 可书写、可封装的信件。 |
| `stamp` | 64 | 邮票；变体/稀有度存于物品数据。 |
| `stamp_pack` | 16 | 打开后获得随机邮票。 |
| `stamp_album` | 1 | 存放邮票收藏。 |
| `packing_box` | 16 | 打包后变为包裹。 |
| `package` | 1 | 装有物品的封装包裹。 |

## 实体

- `thrown_message_in_bottle` —— MISC，0.25 x 0.25，追踪距离 4，更新间隔 10。飞行中的瓶子。
- `owl` —— CREATURE，0.45 x 0.65，追踪距离 8，更新间隔 3。参见[猫头鹰](08_owls.md)。

## 配方

共有九个以真实数据文件存在的配方：

<recipe id="letter_signal_phone:phone"/>

<recipe id="letter_signal_phone:blank_phone_card"/>

<recipe id="letter_signal_phone:card_writer"/>

<recipe id="letter_signal_phone:telegraph_machine"/>

<recipe id="letter_signal_phone:mailbox"/>

<recipe id="letter_signal_phone:letter"/>

<recipe id="letter_signal_phone:stamp"/>

<recipe id="letter_signal_phone:stamp_album"/>

<recipe id="letter_signal_phone:packing_box"/>

**没有**配方的物品——`phone_card`（由注册空白卡产生）、`telegram_paper`、`owl_nest`、`owl_egg`、`owl_spawn_egg`、`message_in_bottle`、`throwable_message_in_bottle`、`stamp_pack` 与 `package`——必须通过各自的机制或创造页获得。

## 许可说明

`gradle.properties` 声明 `mod_license=All Rights Reserved`。二次分发请据此处理。

[返回首页](index)
