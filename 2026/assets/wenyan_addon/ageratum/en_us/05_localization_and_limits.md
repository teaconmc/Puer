---
title: Localization and Limits
navigation:
  title: Localization and Limits
description: The language situation, orphaned assets, dead code, and what the experimental status means for you.
---

# Localization and limits

## Both language files are Chinese

Each namespace ships `en_us.json` and `zh_cn.json`, and each pair is **perfectly matched on keys** — `wenyan_addon` has 57 keys in both, `pong` has 17 in both, with no key present in only one file. By that measure the localization is complete.

But the **values are identical too**: all 57 and all 17 strings are byte-for-byte the same in the English and Chinese files, and all of them are **Chinese text**.

The practical result:

- **An English client sees Chinese names and tooltips**, not English ones.
- Because `en_us` is the fallback locale, **every other language also falls back to Chinese**.
- There is effectively **no English localization**, even though an `en_us.json` exists.

## The two namespaces use different Chinese scripts

- **`wenyan_addon` uses Traditional Chinese** — 範例石, 附靈石, 實體召喚石, 藥水石, 符咒讀寫石, 微塵石. This suits the classical-Chinese theme of the parent mod.
- **`pong` uses Simplified Chinese** — 香槟瓶, 香槟刀, 香槟杯, 调试棒.

So a single tab mixes Traditional device stones with Simplified champagne items. Within `wenyan_addon` itself there is also the marker-stone inconsistency covered in [02 Device blocks](02_device_blocks): the block is named 標記石 but its script package is `「标」`.

## Orphaned and dead assets

| Item | Status |
|:---|:---|
| 3 × `wenyan_addon.configuration.*` keys | **orphaned** — no config class, no `registerConfig`, so no config file and no config screen ever exist |
| `pong_1.ogg` + its `sounds.json` entry | **orphaned** — no sound event registered, nothing plays it |
| `ChampagneTower` class | **dead code** — never referenced or registered |
| `pong:debug_rod` | **registered but hidden** — no tab entry, no recipe, `/give` only; self-described development tool |
| `example_block` | **intentional sample** — registered, tagged and tab-listed, but its only handler logs a word and returns null |

None of these break the game. They matter because they look like features from the outside: a config screen that is named but does not exist, a second sound that never plays, and a tower class that suggests a mechanic that was never wired up.

## The bedrock side effect

As documented in [02 Device blocks](02_device_blocks), the example capability is attached to `minecraft:bedrock` as well as to the example stone, making bedrock expose the `「example」` package. Harmless in itself, but a reminder that this addon demonstrates techniques as much as it ships content.

## What the experimental status means in practice

The README does not hedge, and neither should this page:

- **Version-to-version breakage is expected.** Saves, configuration, scripts or code may need manual adjustment after an update.
- **Features can be removed.** Anything documented here may be promoted into `wenyan_programming` proper, changed, or dropped.
- **The device set is the volatile part.** Package names such as `「移形」` and `「藥」` are the contract your scripts depend on; they are also exactly what a promotion into the core mod would relocate.

Concretely, before updating this addon on a world you care about:

1. Note the package names your scripts use.
2. Remember that **`「納」` and `「染」` only work as placed blocks**, so a script that stopped working may simply have had its device picked up.
3. Expect data-disk contents to be the least portable thing you own.

## Version and licensing facts

| Concern | Value |
|:---|:---|
| Version | `1.0.0` |
| License | **MIT** — redistribution in a modpack is permitted |
| Minecraft | `26.1.2`, single version, no range |
| NeoForge | `26.1.2.71` |
| Java | 25 |
| Required | `wenyan_programming` `[1.0.0,)` |
| Optional | `middle_key_ping` |

[Back to index](index)
