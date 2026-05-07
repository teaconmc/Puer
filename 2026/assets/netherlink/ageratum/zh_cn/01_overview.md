---
title: 概览
navigation:
  title: 概览
description: NetherLink 是什么、背后的后端与账户，以及它为 TeaCon 提供的内容。
---

# 概览

**NetherLink**（命名空间 `netherlink`，v0.1.0-tc，作者 MUYU_Twilighter）是一个面向 Minecraft 26.1 的**多加载器**（Fabric + NeoForge）模组，提供**好友列表**与**端到端服务器在线状态 / 加入**集成。它面向 Minecraft 26.1.2，运行于 Java 25。

## 它做什么

- **好友列表** —— 通过 NetherLink 自己的账户添加和管理好友。
- **服务器在线状态** —— 好友可以看到哪些好友当前在线并托管着世界。
- **P2P 加入** —— 在对方同意且拥有有效在线会话时，好友可以通过 NetherLink 基于 WebRTC 直接加入你托管的服务器，**无需配置端口转发**。

由于加入路径是点对点的，模组需要有效的在线会话且双方都在线；它并不会替代对未关联好友的常规服务器设置。

## 后端与账户

NetherLink 由后端驱动。活动后端通过配置选择，每个后端管理各自的账户记录：

- 账户按服务器存储在 `netherlink/accounts/*.json`，并每 **1200 tick** 刷新一次。
- 配置位于 `config/netherlink/config.json`，至少包含 `activeService` 与 `instanceName` 键。

实现横跨两种加载器共用的平台“桥梁（bridge）”类——同一核心同时驱动 Fabric 与 NeoForge。

## 它为 TeaCon 提供的内容

为 TeaCon，模组还注册了一套小型**介绍告示牌**：

- **介绍卡**（`intro_card`）—— 可书写**双面木告示牌**的物品。
- **好友卡**（`friend_card`）—— 可向告示牌的主人发送好友请求的物品。
- 每种木材对应 `intro_card_<wood>_sign` 物品，以及配套的站立 / 墙面 / 墙挂 / 顶挂告示牌方块。

它**没有任何合成配方**，也**没有属于自己的世界内容**。

## 阅读路线

- [01 概览](01_overview.md) —— 本页。
- [02 从服务器托管](02_server_hosting.md) —— 服务器上用于账户与在线状态的 `/nli` 命令。
- [03 好友与加入](03_friends_and_joining.md) —— 好友界面、状态与加入。
- [04 介绍卡与好友卡](04_intro_card_and_friend_card.md) —— 双面木告示牌与这两种卡片。

[返回首页](index)
