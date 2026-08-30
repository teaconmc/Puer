---
title: Mino++
navigation:
  title: Mino++
---

# Mino++（米诺）

Mino++（模组 ID `minopp`，版本 1.4.0）在 Minecraft 中重现一款经典卡牌游戏，可在实体卡牌桌上游玩。由 Zbx1425 与 MalayP 开发（MIT 许可），目标环境为 Minecraft 26.1.2，支持 NeoForge（`26.1.2.66-beta`）与 Fabric。

## 游戏内容

- **卡牌桌** —— 在世界中放置 `minopp:mino_table`；它承载进行中的对局并为附近玩家提供座位（多格结构，含核心方块实体）。
- **手牌物品** —— `minopp:hand_cards`（及不启用 BEWLR 的 `minopp:hand_cards_nobewlr` 变体）在世界中显示你的手牌；每位玩家通过 `minopp:card_game_binding` / `minopp:client_hand_index` 数据组件绑定到其牌局位置。
- **喊「Mino」** —— 手牌只剩一张时，可在聊天输入 `mino`/`uno`/`minopp` 或用 `/minopp shout` 喊出；你也可以通过攻击他人来**质疑（怀疑）**其喊牌。
- **自动玩家** —— `minopp:mino_auto_player` 是一类生物实体，可坐在空位替缺席玩家出牌，通过自动玩家界面配置。
- **卡券** —— `minopp:coupon` 是卡牌风格代币物品，与卡牌桌配套使用。

## 注册内容

- **方块** —— `minopp:mino_table`（含方块实体）。
- **物品** —— `minopp:hand_cards`、`minopp:hand_cards_nobewlr`、`minopp:coupon`。
- **实体** —— `minopp:mino_auto_player`。
- **数据组件** —— `minopp:card_game_binding`、`minopp:client_hand_index`。

## 命令

- `/minopp shout` —— 在你手牌所在位置的对局中喊「Mino」。
- `/minopp set_table_award` —— 需要权限等级 2；站在 `mino_table` 上手持某物品时，将该物品设为这张桌子的胜利奖励。

## 阅读路线

- [获取开始](01_getting_started) —— 卡牌桌、手牌、卡券与开局。
- [对局玩法](02_gameplay) —— 回合、出牌、喊 Mino、质疑与自动玩家。
- [配置与兼容](03_configuration_and_compat) —— YACL 依赖与东方女仆集成。
