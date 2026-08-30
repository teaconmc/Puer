---
title: Wenyan Addon
navigation:
  title: Wenyan Addon
items:
  - wenyan_addon:data_disk
---

# 吾有一術：新秩序（Wenyan Addon）

Wenyan Addon is a TeaCon 2026 entry by WenyanTeam, mod id `wenyan_addon`, group `org.wenyan.wenyan_addon`, version `1.0.0` under the **MIT** license, targeting Minecraft 26.1.2 on NeoForge 26.1.2.71 with Java 25. Its in-game creative tab is named **吾有一術：新秩序**.

## It cannot run alone

This is an **addon, not a standalone mod**. Its metadata declares **`wenyan_programming` `[1.0.0,)` as a required dependency** — the Wenyan Programming mod (WenyanNature), which lets you script Minecraft in classical Chinese (文言). Without it the game will not load.

`middle_key_ping` is declared as an **optional** dependency.

## What it actually is

The project README is unusually candid about its own role, and the documentation follows it:

> This addon is a testing ground for new features and may contain unstable code. Features may later be incorporated into the core mod, or they may be removed or changed at any time.

It explicitly warns that **APIs, gameplay details, data formats and save compatibility may break between versions**. Treat everything here as experimental.

## Two content families in one mod

Despite having a single mod entry, this jar ships **two asset namespaces**:

| Namespace | Contents |
|:---|:---|
| `wenyan_addon` | 17 device blocks and the data disk — the actual Wenyan integration |
| `pong` | A self-contained champagne module: bottle, sabre, goblet, cork, rack, a fluid and a Drunk effect |

`pong` has no mod entry of its own — it is a second namespace registered by the same mod container, and its items appear inside the `wenyan_addon` creative tab.

## What is registered

| Registry | `wenyan_addon` | `pong` |
|:---|:---|:---|
| Blocks | 17 | 3 |
| Items | 17 block items + `data_disk` | 5 |
| Block entities | 1 (`storage_rune_block`) | 1 (`champagne_rack`) |
| Creative tabs | 1 (holds both families) | — |
| Mob effects | — | 1 (`drunk`) |
| Fluids / fluid types | — | 2 fluids + 1 type |
| Entities | — | 1 (`plug`) |
| Particles / sounds | — | 1 / 1 registered |
| Recipes | **none** | 5 |
| Loot tables | 17 | — |
| Commands / config / mixins | **none** | **none** |

Note the asymmetry: **the 17 device blocks and the data disk have no crafting recipes at all**, while every `pong` item does.

## Reading path

1. [01 Getting started](01_getting_started) — the dependency requirement, how to obtain the blocks, and how a device is used from a script.
2. [02 Device blocks](02_device_blocks) — all 17 blocks, their Chinese package names, and the block-versus-item asymmetry.
3. [03 Storage and data](03_storage_and_data) — the storage rune cabinet, the data disk, and the parent-mod tag.
4. [04 The Pong champagne module](04_pong_champagne) — the entire second namespace, with its five real recipes.
5. [05 Localization and limits](05_localization_and_limits) — the language situation, orphaned assets, and dead code.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id / name | `wenyan_addon` / Wenyan Addon, v1.0.0, MIT |
| Author / group | WenyanTeam / `org.wenyan.wenyan_addon` |
| Version target | Minecraft 26.1.2 / NeoForge 26.1.2.71 / Java 25 |
| Required dependency | **`wenyan_programming` `[1.0.0,)`** |
| Optional dependency | `middle_key_ping` |
| Stability | explicitly experimental; breaking changes expected |
| Survival obtainable | `pong` items only — device blocks are creative/give |
