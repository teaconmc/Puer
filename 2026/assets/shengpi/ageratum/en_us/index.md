---
title: "Shengpi (圣脾)"
navigation:
  title: "Shengpi (圣脾)"
---

# Shengpi (圣脾)

Shengpi is a honeycomb divination mod. Hold **two or more honeycombs** and right-click to toss a pair of honeycombs into the air; when they land, their facing decides one of three fortune results — Sheng (圣脉), Xiao (笑脉) or Nu (怒脉). Land the right combination to grow a personal streak, then show off your best streak on a floating leaderboard block.

## Reading order

1. [Honeycomb divination](01_divination): how to throw, what the outcomes mean, and how they are decided.
2. [Streaks](02_streaks): how a run is built up, broken, and preserved across death.
3. [The streak leaderboard](03_leaderboard): the leaderboard block and the floating top-10 it displays.

## At a glance

| Topic | Current implementation |
|:---|:---|
| Mod id | `shengpi` |
| Blocks | `shengpi:leaderboard` |
| Custom items | none (uses vanilla `minecraft:honeycomb`) |
| Recipes | none |
| Fortune results | SHENG, XIAO, NU |
| Consumed per throw | 2 honeycombs |
| Blocks your throw | Config disabled, swimming, underwater, riding, spectator, sleeping |
| Config | `enabled` (default `true`) |

::: note
The divination uses the vanilla **honeycomb** (`minecraft:honeycomb`), not a custom item. The mod registers no custom items and no recipes — get honeycombs from bees as usual.
:::
