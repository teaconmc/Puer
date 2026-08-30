---
title: Getting Started
navigation:
  title: Getting Started
description: How to obtain the Vein Miner enchantment and the three ways to trigger it.
---

# Getting Started

## The enchantment is the only gate

Everything this mod does runs through one enchantment:

| Property | Value |
|:---|:---|
| Id | `dh_s_veinminer:vein_miner` |
| Max level | **1** — there are no higher levels |
| Applies to | `#minecraft:enchantable/mining` (pickaxes, shovels, axes, hoes) |
| Slot | **mainhand only** |
| Table weight | **2** — rare |
| Enchanting cost | `min 20` / `max 60`, flat (no per-level scaling) |
| Anvil cost | 4 |

Without this enchantment on the tool in your main hand, **nothing chains** regardless of configuration.

## Two ways to get it

**Enchanting table.** Possible but unreliable: `weight: 2` makes it one of the rarer outcomes, and the 20–60 cost band puts it at the expensive end.

**Librarian trade — the dependable route.** The mod ships five trades, one per villager level, all from librarians. All five give an enchanted book with `vein_miner` level 1, all have `max_uses: 12`:

| Villager level | Emeralds | XP granted |
|:---|---:|---:|
| 1 Novice | **49** | 10 |
| 2 Apprentice | 42 | 15 |
| 3 Journeyman | 38 | 20 |
| 4 Expert | 30 | 30 |
| 5 Master | **25** | 40 |

::: tip
**The price goes down as the librarian levels up** — 49 emeralds at Novice, 25 at Master. If a librarian offers it at 49, trading it up is worth roughly half the price for later copies. Since `max_uses` is 12 per trade, a single Master librarian can supply a whole server.
:::

## The three trigger modes

`veinMinerTriggerAction` decides *when* an enchanted tool chains. It is a string with three accepted values:

| Value | Behaviour |
|:---|:---|
| **`KEYBIND`** (default) | Chains only while the mod's key is held — **default `V`** |
| `SNEAK` | Chains only while sneaking |
| `ALWAYS` | Chains on every break with an enchanted tool |

The keybind appears under its own category, **"Harry-hq's Vein Miner"**, and is rebindable like any other.

::: warning
`ALWAYS` means exactly that: every block you break with the enchanted tool chains. On a tool you also use for ordinary digging, that gets destructive fast — and `veinMinerExtraDurability` is `true` by default, so it also eats the tool. `KEYBIND` exists so one tool can do both jobs.
:::

## What happens when it fires

The connected vein breaks and you get a chat message:

```
Vein mining complete! Mined %d blocks
连锁挖矿完成！共挖掘了 %d 个方块
```

The count is real, so it doubles as feedback on whether your ceiling (`veinMinerMaxBlocks`, default 64) is being hit.

## Durability

`veinMinerExtraDurability` defaults to **`true`**: **each extra block costs additional durability**. Chaining 64 blocks therefore costs roughly 64 durability, not 1. Set it to `false` for a more generous game — see [Configuration](02_configuration).

[Back to index](index)
