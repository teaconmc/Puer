---
title: 对局玩法
navigation:
  title: 对局玩法
---

# 对局玩法

对局运行在 `mino_table` 核心方块实体（`BlockEntityMinoTable`）内，由服务端的 `CardGame` 状态机协调。桌边玩家依次从自己的 `hand_cards` 打出匹配的 `Card`。

## 出牌与回合

轮到你时，你出一张与弃牌堆顶端匹配的牌（经典的颜色匹配/数值匹配规则，由服务端 `CardGame` 实现）。出牌发送 `C2SPlayCardPacket`，结果以 `S2CActionEphemeralPacket` 广播到桌上并应用到牌局状态。

## 喊「Mino」

当你只剩一张牌时，可以喊「Mino」。在聊天输入 `mino`、`uno` 或 `minopp`（由 `Mino.onServerChatMessage` 处理），或执行 `/minopp shout`。若你的手牌没有绑定任何对局，命令会以「no game」失败。

## 质疑（怀疑）

若你怀疑他人非法喊牌（实际仍持有多于一张却喊了 Mino），**攻击该玩家**即可发起质疑——这会发送 `C2SPlayCardPacket` 的质疑请求（`C2SPlayCardPacket.Client.sendDoubtMinoC2S`），由服务端核实被质疑的喊牌是否成立。

## 自动玩家

`minopp:mino_auto_player` 是一类生物实体，可占据一个座位替缺席玩家出牌，通过自动玩家界面（`AutoPlayerScreen`，由 `S2CAutoPlayerScreenPacket` / `C2SAutoPlayerConfigPacket` 驱动）配置；座位控制界面（`SeatControlScreen`）管理入座。

## 奖励

管理员可站在 `mino_table` 上手持某物品，用 `/minopp set_table_award`（权限等级 2）为这张桌设定胜利奖品。牌局结束时（`CardGame` 结束）奖品交给胜者；对局的音效、发光与烟花等效果由效果队列（`EffectQueue` / `EffectEvents`）派发并施加到相关玩家。

## 效果

`EffectQueue` / `EffectEvents` 让对局更具表现力——声音、玩家发光与烟花被派发为 `EffectEvent` 并施加到匹配的玩家身上。

[返回首页](index)