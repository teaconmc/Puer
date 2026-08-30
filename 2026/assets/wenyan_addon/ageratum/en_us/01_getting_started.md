---
title: Getting Started
navigation:
  title: Getting Started
description: The dependency requirement, how to obtain the blocks, and how a device is reached from a script.
---

# Getting started

## Install Wenyan Programming first

`wenyan_programming` is a **required** dependency at version `[1.0.0,)`. This addon provides devices *for* that mod's scripting language; on its own it has nothing to run them.

`middle_key_ping` is optional and its absence changes nothing essential.

Because the mod targets **Java 25** and a single Minecraft version, it will not load on older Java or on other 26.x builds than the one it declares.

## There are no recipes for the device blocks

`data/wenyan_addon/` contains **only loot tables** — 17 of them, one per block. There is no recipe directory and no recipe data generator output for this namespace.

Consequently all 17 device blocks and the data disk are obtained by:

- picking them from the **吾有一術：新秩序** creative tab, or
- `/give`

They do drop themselves when mined, so once placed they are not lost.

The `pong` items are the exception — they have five real recipes. See [04 The Pong champagne module](04_pong_champagne).

## The creative tab

One tab is registered, titled **吾有一術：新秩序**, iconed with the projectile stone, and positioned **after the Combat tab and after Wenyan Programming's own tab**. It lists, in order: the example stone, the 16 functional device stones, the storage rune cabinet, the data disk, and then the five `pong` items.

So the champagne module has no separate tab — look for it at the end of this one.

## How a device is reached from a script

Each device exposes itself to Wenyan Programming as a **capability** carrying a **bracketed Chinese package name** such as `「移形」` or `「藥」`. A script addresses the device by that package name, not by the block id.

Two registration paths exist, and they matter:

- **Registered to the block** — works when the device is **placed in the world**.
- **Registered to the item** — works when the device is **carried as an item**.

Most devices are registered both ways, but not all. The exact table is in [02 Device blocks](02_device_blocks).

Every device is also listed in a tag that belongs to the **parent** mod, `#wenyan_programming:paper_module_item`, which is how the core mod recognizes all 18 of them as usable modules. See [03 Storage and data](03_storage_and_data).

## Reading the tooltips

Every block item and the data disk carry a tooltip line describing their function in one short Chinese phrase — for example 修改方塊狀態 ("modify block state") for the 天地土木石, or 施加藥水效果 ("apply potion effects") for the 藥水石. These tooltips are the fastest in-game reference, and they are the source this guide's descriptions are based on.

Be aware that these strings are Chinese in **both** shipped language files; see [05 Localization and limits](05_localization_and_limits).

## Next steps

- The full device catalogue: [02 Device blocks](02_device_blocks)
- Persisting data between scripts: [03 Storage and data](03_storage_and_data)
- The champagne side-module: [04 The Pong champagne module](04_pong_champagne)

[Back to index](index)
