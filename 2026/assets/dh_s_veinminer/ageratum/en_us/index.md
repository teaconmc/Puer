---
title: Harry-hq's Vein Miner
navigation:
  title: Harry-hq's Vein Miner
---

# Harry-hq's Vein Miner

**Harry-hq's Vein Miner** (mod id `dh_s_veinminer`, version `1.0.9`, GPLv3) adds chain mining — break one block and the whole connected vein goes with it. It does this with **one enchantment and nine config options**, and nothing else: no items, no blocks, no entities, no recipes.

## Reading guide

- [01 Getting started](01_getting_started) — obtaining the enchantment and the three ways to trigger it.
- [02 Configuration](02_configuration) — all nine options, including the one whose default name is misleading.
- [03 Limiting where it works](03_limiting_where_it_works) — block filters and cuboid regions.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id | `dh_s_veinminer` |
| Version / license | `1.0.9` / **GPLv3** |
| Minecraft | 26.1.2 (range `[26.1.2]`) |
| **Dependencies** | **none beyond `neoforge` + `minecraft`** |
| Enchantments | **1** (`dh_s_veinminer:vein_miner`) |
| Items / blocks / entities | **none** |
| Recipes | **none** |
| Villager trades | **5** (librarian, one per level) |
| Config options | **9** |
| Languages | `en_us` + `zh_cn`, **17 keys each** |

## How it works, in one paragraph

Enchant a mining tool with **Vein Miner** (single level, mainhand only), then hold the trigger and break a block. Every connected block of the same kind within range breaks with it, up to a configurable ceiling. The enchantment is the gate — **without it nothing happens**, no matter how the config is set.

## The two things worth knowing before you start

::: warning
**`veinMinerMode` defaults to `DISABLED`, and that does not mean the mod is off.** It is the *block filter* mode: `DISABLED` means **no whitelist and no blacklist is applied**, so every mineable block can be chained. Setting it to `BLACKLIST` or `WHITELIST` is how you *restrict* it. See [Configuration](02_configuration).
:::

::: tip
**The enchantment is expensive by design.** `weight: 2` makes it rare in the enchanting table, and `min_cost: 20` / `max_cost: 60` puts it near the top of the cost curve. The reliable route is the **librarian trade** — and note the price *falls* as the villager levels up, from 49 emeralds down to 25. See [Getting started](01_getting_started).
:::
