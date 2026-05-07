---
title: Infinite Board Games
navigation:
  title: Infinite Board Games
---

# Infinite Board Games（无穷桌游）

Infinite Board Games is a TeaCon 2026 entry by MaxPixelStudios (XiaoPangxie732), group `cn.maxpixel.mods`, targeting Minecraft 26.1.2 on NeoForge 26.1.2.76. The checked-out source is version `0.1` under the MIT license and uses the mod id `infinite_board_games`.

## Current source state

This checkout is an **unmodified NeoForge MDK skeleton**: every registration call in the mod constructor is commented out. The sample fields and classes exist, but **nothing is registered when the mod loads**.

- `InfiniteBoardGamesMod` declares deferred registers for blocks, items and creative tabs.
- `EXAMPLE_BLOCK` (`infinite_board_games:example_block`), `EXAMPLE_BLOCK_ITEM` and `EXAMPLE_ITEM` (`infinite_board_games:example_item`, a food item with nutrition 1 and saturation modifier 2) are defined as fields.
- `EXAMPLE_TAB` (`infinite_board_games:example_tab`) is defined as a creative tab placed after the combat tab.
- `Config` defines `logDirtBlock`, `magicNumber`, `magicNumberIntroduction` and an `items` list, but the spec is never registered with a `ModConfig` type.

Because the constructor comments out `BLOCKS.register(...)`, `ITEMS.register(...)`, `CREATIVE_MODE_TABS.register(...)`, `NeoForge.EVENT_BUS.register(this)`, the creative-content listener and `modContainer.registerConfig(...)`, none of these take effect. The client class also comments out its config screen extension point and its client setup listener.

## What actually runs

Only the constructor executes. No blocks, items, creative tabs, entities, commands, recipes, key binds, configuration file or event handlers are contributed to the game. `commonSetup`, `addCreative` and `onServerStarting` are unreachable dead code because their listeners and annotations are commented out.

There are no data files at all — no recipes, tags, advancements or loot tables — and no `src/generated` output. There are no models, blockstates or textures either. The only shipped resource is a template `en_us.json`; there is **no `zh_cn.json`**.

## About the stated goal

`README.md` and the `description` field of `neoforge.mods.toml` both state that the mod "aims to provide a powerful data-driven API capable of implementing any board game you want", using world interactions instead of GUI interactions. That is **stated design intent only**. No board game, API, data format or interaction of any kind exists in the current checkout, so this guide does not describe any of it.

## Reading path

- [01 Development skeleton](01_development_skeleton.md) — the declared but unregistered sample content, the template language file, the inactive config keys, and why everything stays inactive.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id / name | `infinite_board_games` / Infinite Board Games, v0.1, MIT |
| Author / group | MaxPixelStudios (XiaoPangxie732) / `cn.maxpixel.mods` |
| Version target | Minecraft 26.1.2 / NeoForge `[26.1.2.75,)` |
| Registered items | **None** |
| Registered blocks | **None** |
| Registered creative tabs | **None** |
| Active configuration file | **None** |
| Commands / key binds / entities | None |
| Recipes / tags / advancements | None |
| Shipped languages | `en_us` only, template strings |

The short chapter list matches the source exactly; it is not hiding an undocumented mechanic. This directory should grow only after a later version genuinely registers board game content.
