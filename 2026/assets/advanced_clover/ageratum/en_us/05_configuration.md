---
title: "Configuration"
navigation:
  title: "05 Configuration"
---

# Configuration

Configuration is available from the mod-list config button and is written to `config/advanced_clover-common.toml`. The actual current default working mode is `whitelist`, even though one stale source comment still describes blacklist as the default.

## Working Mode

| Option | Default | Purpose |
|:---|:---|:---|
| `Working Mode` | `whitelist` | Switch between `whitelist` and `blacklist` |
| `whitelist_items` | TeaCon-focused preset list | Keep only matching items |
| `blacklist_items` | Dangerous and special-item list | Remove matching items |
| `mobSpawnChance` | `10` | Global entity chance from `0` to `1000` |

List entries are compiled as Java regular expressions and checked against the **entire** `namespace:path`. They are not ordinary globs:

- `minecraft:diamond` matches only Diamond.
- `minecraft:.*_ingot` matches vanilla items ending in `_ingot`.
- A lone `*` is not a valid regex; use `.*` to match any characters.

An invalid regex can prevent the item pool from refreshing, so inspect the log after editing.

## Entity Chance

`mobSpawnChance` uses parts per thousand: `0` disables global entity results, `10` is `1%`, `300` is `30%`, and `1000` always attempts an entity. A stack's `entity_list.chance` overrides this value.

## Applying Changes

The random item pool is cached in memory and the source has no config-reload listener. When changing working mode or list entries while the game is running, restarting the client or server after saving is the reliable way to rebuild the pool.

::: tip
After changing lists, test a few Magic Clovers made with inexpensive ingredients. If the source namespace has no valid candidates, use fails and refunds ordinary Four-leaf Clover.
:::

[Back to the Advanced Clover index](index)
