---
title: 拾穗的贸易台
navigation:
  title: 拾穗的贸易台
items:
  - trading_table:trading_table
---

# 拾穗的贸易台（Harvista's Trading Table）

为 Minecraft 26.1.2 的 NeoForge 模组，加入可放置的贸易台，让服务器上的玩家互相买卖物品。贸易台分两级：玩家自营的铜制 `trading_table` 贸易台，以及面向全服商店的铁制 `system_trading_table` 系统贸易台。

## 阅读路线

- [快速开始](01_getting_started) — 放置贸易台、完成初始化，并打开贸易与管理界面。

## 快速说明

| 类别 | 内容 |
|:---|:---|
| 模组 ID | `trading_table`（拾穗的贸易台） |
| 方块 | `trading_table`（铜制，玩家商店）· `system_trading_table`（铁制，服务器商店） |
| 菜单 | `trading_table_init` / `_trade` / `_manage`，`system_trading_table_init` / `_trade` / `_manage` |
| 创造标签 | `trading_table`（含两个贸易台） |
| 货币 | 物品货币（默认 `minecraft:emerald` 绿宝石）、NeoEssentials 余额，或新夜雀食堂（MystiasIzakaya）余额 |
| 配置 | `trading_table-common.toml` — `currencyBackend`、`CurrencyItem`、`CompatibilityMode`、`taxRate`、`adminPermissionLevel`、`tradeNotice` |

使用：右键未初始化的贸易台打开**初始化**界面（登记归属）；再次右键打开**贸易**界面；潜行+右键（有权限时）打开**管理**界面。贸易台初始化后才开始发光。破坏保护会阻止非所有者破坏已初始化的贸易台。
