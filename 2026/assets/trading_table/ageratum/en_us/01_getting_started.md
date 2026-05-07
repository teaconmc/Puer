---
title: Getting Started
navigation:
  title: Getting Started
items:
  - trading_table:system_trading_table
---

# Getting Started

This page walks you through placing and using your first trading table.

## Placing the Two Tables

Both tables are in the `trading_table` creative tab:

- **Trading Table** (`trading_table`) — a copper table meant for a player-run shop. Strength 2, high blast resistance, and it emits light level 7 once initialized.
- **System Trading Table** (`system_trading_table`) — a tougher iron table (`strength 5`) for server-wide shops.

## First Use: Initialize

Place the table, then right-click it. Because it is not initialized yet, the **init** screen opens and the table records you as its owner. Pick your currency configuration here. Once initialized, the table starts glowing.

## Trading and Managing

- **Right-click the table** → opens the **trade** screen where customers buy or sell.
- **Sneak + right-click** (when you have manage permission, such as the owner) → opens the **manage** screen to configure the shop.
- If the shop is disabled (`enabled = false`) and the player is not managing, they are told `trade_disabled`.
- **Break protection** — an initialized table can only be broken by someone with permission; otherwise the game refuses and shows `no_permission_break`.

## Currency & Economy

The currency comes from the `currencyBackend` config option:

- **ITEM** (default) — uses a currency item, by default `minecraft:emerald`. When a table is destroyed, its balance and inventory drop as item stacks.
- **NEO_ESSENTIALS** — uses a player's NeoEssentials balance.
- **MYSTIAS_IZAKAYA** — integrates with 新夜雀食堂 (MystiasIzakaya); on login the mod settles any pending offline balance into the player's account and reports it through the trade notice.

Other common-settings include `taxRate` (0–1, default 0) applied to trades, `adminPermissionLevel` (default 2) used for manage/break checks, and `tradeNotice` (whether trade results are announced in chat).

[Back to index](index)
