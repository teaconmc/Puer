---
title: NetherLink
navigation:
  title: NetherLink
---

# NetherLink

NetherLink（命名空间 `netherlink`，v0.1.0-tc，作者 MUYU_Twilighter）是一个面向 Minecraft 26.1 的**多加载器**（Fabric + NeoForge）模组，提供**好友列表**与**端到端（P2P）服务器在线状态 / 加入** 集成。好友可以看到彼此的在线游戏，并在对方同意且拥有有效在线会话时，通过 NetherLink 直接**点对点（WebRTC）**加入对方托管的服务器——无需配置端口转发。

为 TeaCon，它还附带一套小型**介绍告示牌**：**介绍卡**（Intro Card）可书写**双面木告示牌**，**好友卡**（Friend Card）可向告示牌的主人发送好友请求。

它没有任何合成配方，也没有属于自己的世界内容。

## 阅读路线

- [01 概览](01_overview.md) —— NetherLink 是什么、后端与账户。
- [02 从服务器托管](02_server_hosting.md) —— 服务器上用于账户与在线状态的 `/nli` 命令。
- [03 好友与加入](03_friends_and_joining.md) —— 好友界面、状态与加入。
- [04 介绍卡与好友卡](04_intro_card_and_friend_card.md) —— 双面木告示牌与这两种卡片。

## 一览

| 关注点 | 详情 |
|:---|:---|
| 模组 ID / 名称 | `netherlink` / NetherLink，作者 MUYU_Twilighter，MIT with Additional Terms，v0.1.0-tc（beta） |
| 加载器 | Fabric + NeoForge，Minecraft 26.1.2 |
| 用途 | 好友列表 + P2P 服务器在线状态 / 加入（WebRTC） |
| 服务器命令 | `/netherlink`（别名 `/nli`） |
| 账户数据 | `netherlink/accounts/*.json`，每 1200 tick 刷新 |
| 配置 | `config/netherlink/config.json` → `activeService`、`instanceName` |
| TeaCon 物品/方块 | `intro_card`、`friend_card`、木质 `intro_card_*_sign` + 吊挂展示牌套装 |
| 配方 | 无 |
