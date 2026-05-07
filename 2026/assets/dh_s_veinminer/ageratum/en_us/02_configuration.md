---
title: Configuration
navigation:
  title: Configuration
description: All nine options, their real defaults, and the one whose name misleads.
---

# Configuration

Nine options in one COMMON config file. Every comment in the source is written **bilingually** (Chinese then English), and all nine have translation keys, so the in-game config screen is fully labelled in both languages.

## The nine options

| Key | Default | Range / values | What it does |
|:---|:---|:---|:---|
| `veinMinerEnabled` | `true` | boolean | Master switch |
| `veinMinerMaxBlocks` | **64** | 1 – 16384 | Ceiling on blocks per chain |
| `veinMinerMaxDistance` | **32** | 1 – 64 | Search radius from the first block |
| `veinMinerTriggerAction` | **`KEYBIND`** | `KEYBIND` / `SNEAK` / `ALWAYS` | When it fires — see [Getting started](01_getting_started) |
| `veinMinerExtraDurability` | **`true`** | boolean | Each extra block costs extra durability |
| `veinMinerMode` | **`DISABLED`** | `BLACKLIST` / `WHITELIST` / `DISABLED` | **Block-filter mode — see the warning below** |
| `veinMinerWhitelist` | `""` | comma-separated ids | Only used when mode is `WHITELIST` |
| `veinMinerBlacklist` | `""` | comma-separated ids | Only used when mode is `BLACKLIST` |
| `veinMinerRegions` | `[]` | JSON array | Cuboid range whitelist — see [Limiting where it works](03_limiting_where_it_works) |

## The one that misleads

::: danger
**`veinMinerMode = DISABLED` does not disable vein mining.** It disables *block filtering*.

- `DISABLED` (default) → **no filter at all**; every mineable block can be chained
- `BLACKLIST` → chain everything **except** the listed blocks
- `WHITELIST` → chain **only** the listed blocks

If you want vein mining off, use **`veinMinerEnabled = false`**. If you came here to stop players chaining a particular block, you must first switch the mode away from `DISABLED` — otherwise your list is read but never applied.
:::

## Two ceilings, and they interact

`veinMinerMaxBlocks` (64) and `veinMinerMaxDistance` (32) are separate limits and **whichever is reached first stops the chain**:

- A long thin vein can hit the **distance** limit with far fewer than 64 blocks mined.
- A dense cluster can hit the **block** limit while still well inside 32 blocks.

Raising one without the other often does nothing. `maxBlocks` accepts up to **16384** while `maxDistance` caps at **64** — so on very large ceilings, distance is usually the real constraint.

## A field that exists but never varies

The config screen shows a **"Scale with Level"** label (`veinMinerScaleWithLevel`), and the code has a matching `scaleWithLevel` field — but it is **hard-assigned `false` on every config refresh** and there is no option defining it. That is consistent: the enchantment has only one level, so there is nothing to scale with. **Treat the label as vestigial.**

## Reload behaviour

The mod subscribes to `ModConfigEvent` and re-reads every value on reload, including re-parsing the whitelist, blacklist and region JSON. **Editing the config does not require a restart** — but see the parsing note in [Limiting where it works](03_limiting_where_it_works) for what happens when the JSON is malformed.

## Client and server are separate

There is a second, client-side config class alongside the common one, and a **`ConfigSyncPayload`** network packet — so the server's settings reach the client rather than each side guessing. On a server, the common file is authoritative for the mining rules; the keybind is naturally client-side.

[Back to index](index)
