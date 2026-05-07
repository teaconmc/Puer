---
title: Doll
navigation:
  title: Doll
---

# Doll（玩偶）

Doll is a TeaCon 2026 entry by MaxPixelStudios (XiaoPangxie732), mod id `mpsdoll`, group `cn.maxpixel.mods`, version `0.1` under the **MIT** license, targeting Minecraft 26.1.2. Its declared description is simply "A doll."

**The mod currently registers nothing.** The checked-out source is an unmodified NeoForge MDK template whose entire registration wiring is commented out. Installing it adds a mod entry to the mod list and nothing else: no items, no blocks, no creative tab, no config file, no commands, no textures and no gameplay.

This guide therefore documents the project's real state rather than inventing behaviour for it. If you are looking for playable content, there is none yet.

## What the source declares versus what the game sees

| Identifier | Declared in source | Actually registered |
|:---|:---:|:---:|
| `mpsdoll:example_block` | yes | **no** |
| `mpsdoll:example_block` (block item) | yes | **no** |
| `mpsdoll:example_item` | yes | **no** |
| `mpsdoll:example_tab` (creative tab) | yes | **no** |

All four are template placeholders inherited from the MDK, not designed content. Do not treat them as an early preview of the mod's plans.

| Registry | Entries |
|:---|:---|
| Items / blocks / entities / recipes / tags | **none** |
| Creative tabs | **none** |
| Config file | **none generated** |
| Commands | **none** |
| Mixins / access transformers | **none** |
| Textures / models / data | **none** |
| Language files | `en_us.json` only, 11 placeholder keys |

## Reading path

1. [01 Current state](01_development_skeleton) — there is nothing in game yet: no items, no blocks, no config.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id / name | `mpsdoll` / Doll, v0.1, MIT |
| Author / group | MaxPixelStudios (XiaoPangxie732) / `cn.maxpixel.mods` |
| Version target | Minecraft 26.1.2 |
| Source files | 3 Java classes |
| Registered content | none |
| Playable content | none |
