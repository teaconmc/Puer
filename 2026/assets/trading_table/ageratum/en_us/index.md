---
title: Harvista's Trading Table
navigation:
  title: Harvista's Trading Table
items:
  - trading_table:trading_table
---

# Harvista's Trading Table

**拾穗的贸易台** — a NeoForge mod for Minecraft 26.1.2 that adds placeable trading tables so players on a server can buy and sell items with each other. Tables come in two tiers: a player-owned copper `trading_table` and an iron `system_trading_table` for server-wide shops.

## Reading Guide

- [Getting Started](01_getting_started) — place a table, initialize it, and open its trade and manage screens.

## Quick Reference

| Category | Content |
|:---|:---|
| Mod id | `trading_table` |
| Blocks | `trading_table` (copper, player shops) · `system_trading_table` (iron, server shops) |
| Menus | `trading_table_init` / `_trade` / `_manage`, `system_trading_table_init` / `_trade` / `_manage` |
| Creative tab | `trading_table` (contains both tables) |
| Currency | Item currency (default `minecraft:emerald`), NeoEssentials balance, or 新夜雀食堂 (MystiasIzakaya) balance |
| Config | `trading_table-common.toml` — `currencyBackend`, `CurrencyItem`, `CompatibilityMode`, `taxRate`, `adminPermissionLevel`, `tradeNotice` |

Use: right-click an uninitialized table to open the **init** screen (claims ownership); right-click again to **trade**; sneak + right-click (with permission) to **manage**. Tables only begin emitting light once initialized. Break protection blocks non-owners from breaking an initialized table.
