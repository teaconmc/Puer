---
title: 快速开始
navigation:
  title: 快速开始
items:
  - trading_table:system_trading_table
---

# 快速开始

本页带你走一遍放置并使用第一张贸易台的完整流程。

## 放置两种贸易台

两种贸易台都在`trading_table`创造标签中：

- **贸易台**（`trading_table`）— 面向玩家自营商店的铜制台。强度 2、高爆炸抗性，初始化后会发出亮度 7 的光。
- **系统贸易台**（`system_trading_table`）— 面向全服商店的更坚固的铁制台（强度 5）。

## 首次使用：初始化

放置贸易台后右键点击它。由于尚未初始化，会打开**初始化**界面，并把放置者登记为该台的所有者。请在此选择货币配置。初始化完成后贸易台开始发光。

## 贸易与管理

- **右键贸易台** → 打开买家买卖用的**贸易**界面。
- **潜行 + 右键**（拥有管理权限时，例如所有者）→ 打开配置商店的**管理**界面。
- 若商店处于禁用状态（`enabled = false`）且玩家并非在管理，会提示`trade_disabled`交易已禁用。
- **破坏保护** — 已初始化的贸易台只允许拥有权限的玩家破坏，否则游戏会拒绝并提示`no_permission_break`无权限破坏。

## 货币与经济

货币由`currencyBackend`配置项决定：

- **ITEM**（默认）— 使用货币物品，默认`minecraft:emerald`绿宝石。贸易台被破坏时，其余额与库存会以物品堆掉落。
- **NEO_ESSENTIALS** — 使用玩家的 NeoEssentials 余额。
- **MYSTIAS_IZAKAYA** — 与新夜雀食堂（MystiasIzakaya）联动；玩家登录时模组会把离线待处理余额结算进账户，并通过贸易通知上报。

其他通用设置包括：作用于交易的`taxRate`税率（0–1，默认 0）、用于管理/破坏校验的`adminPermissionLevel`管理员等级（默认 2），以及是否在聊天栏播报交易结果的`tradeNotice`。

[返回首页](index)
