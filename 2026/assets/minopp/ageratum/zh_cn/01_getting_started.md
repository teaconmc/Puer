---
title: 获取开始
navigation:
  title: 获取开始
---

# 获取开始

放置 `minopp:mino_table`（卡牌桌）作为游戏桌，并获取 `minopp:hand_cards`（手牌物品，显示你在世界中的手牌）与 `minopp:coupon`（卡券代币）。

## 卡牌桌

`mino_table` 是一个多格结构方块，含一个核心方块实体（`BlockEntityMinoTable`），承载进行中的对局并为附近玩家提供座位。坐在桌边、确认就坐后即可开始游戏；桌上的「奖励」可由管理员通过 `/minopp set_table_award` 设定为胜利奖品，交给 `CardGame` 在牌局结束时发放。

## 手牌物品

`minopp:hand_cards` 在手部以三维形式渲染你的手牌；它通过 `minopp:card_game_binding` 数据组件绑定到你所在的牌局位置，`minopp:client_hand_index` 记录客户端手牌索引（客户端与漫游无关）。另有一个不启用 BEWLR 的变体 `minopp:hand_cards_nobewlr`。

## 卡券

`minopp:coupon` 是卡牌风格的代币物品，与卡牌桌配套使用（作为奖励或计分代币）。

[返回首页](index)