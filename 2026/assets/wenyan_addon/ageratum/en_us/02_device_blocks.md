---
title: Device Blocks
navigation:
  title: Device Blocks
description: All 17 blocks, their Chinese package names, and the block-versus-item asymmetry.
---

# Device blocks

## The catalogue

Sixteen functional device stones plus one reference example. The **package name** is what a Wenyan script uses to address the device.

| Block id | Name | Package | Purpose (from its tooltip) |
|:---|:---|:---|:---|
| `projectile_spawner_block` | 投射石 | `「投射」` | fire projectile entities |
| `elemental_block` | 元素石 | `「元素」` | invoke elements |
| `world_interaction_block` | 交感石 | `「交感」` | interact with the world |
| `entity_manipulation_block` | 移形石 | `「移形」` | move nearby entities |
| `note_block_function_block` | 音符石 | `「奏」` | control note-block sound |
| `read_write_block` | 符咒讀寫石 | `「讀寫」` | read and write the held item |
| `naming_block` | 命名石 | `「命名」` | name a target object |
| `particle_block` | 微塵石 | `「塵」` | spawn particle effects |
| `dye_block` | 染色石 | `「染」` | dye a target |
| `marker_block` | 標記石 | `「标」` | mark positional data |
| `entity_status_block` | 實體狀態石 | `「愈」` | modify entity status |
| `entity_spawn_block` | 實體召喚石 | `「召」` | summon a specified entity |
| `potion_block` | 藥水石 | `「藥」` | apply potion effects |
| `block_edit_block` | 天地土木石 | `「地」` | modify block state |
| `enchant_block` | 附靈石 | `「靈」` | enchant an object |
| `storage_rune_block` | 符咒收納櫃 | `「納」` | store rune data — see [03 Storage and data](03_storage_and_data) |
| `example_block` | 範例石 | `「example」` | reference sample only |

All sixteen functional blocks are plain simple blocks with **strength 2.0** and a themed sound type — stone for most, wood for the note and read/write stones, anvil for the naming stone, glass for the particle and potion stones. Map colours differ so they are distinguishable when placed: purple for entity manipulation, spawn and particles; red for dye and entity status; yellow for enchanting; cyan for potions; light grey for markers; wood for note and read/write; metal for naming.

Only the storage rune cabinet has a block entity. The other sixteen hold no state of their own.

## Block form and item form are not the same set

Devices are registered as capabilities twice over — once for the placed block, once for the carried item — and **the two lists do not match**.

| Package | As placed block | As carried item |
|:---|:--:|:--:|
| `「投射」` `「元素」` `「交感」` `「讀寫」` `「命名」` `「移形」` `「奏」` `「塵」` `「愈」` `「召」` `「藥」` `「地」` `「靈」` `「标」` | ✔ | ✔ |
| **`「納」`** (storage rune) | ✔ | **–** |
| **`「染」`** (dye) | ✔ | **–** |

So fourteen devices work either way, but the **storage rune cabinet and the dye stone are block-only**. Carrying them in your inventory does not expose their package to a script — they must be placed.

## The marker stone's package is spelled in Simplified Chinese

Every other package name uses Traditional forms consistent with the block names — `讀寫`, `靈`, `納`, `藥`, `實體`. The marker stone breaks the pattern: its block is named **標記石** with the Traditional 標, but its package is registered as **`「标」`** with the Simplified 标.

A script must use the Simplified form. This is an internal inconsistency, not a typo you can work around — write `「标」`.

## The example stone is a code sample, and it also attaches to bedrock

`example_block` exists to show addon authors how the capability registration works. Its handler package is literally `「example」`, and its single handler does nothing but write "example" to the log and return null. The source marks this block with a comment instructing readers never to modify it.

More surprising: that same example registration is attached to **two** blocks — `wenyan_addon:example_block` **and vanilla `minecraft:bedrock`**. Any bedrock in the world therefore also exposes the `「example」` package to Wenyan scripts.

This is almost certainly a demonstration of "you can attach a device capability to a block you do not own" rather than intended gameplay, but it is live behaviour: **bedrock is a Wenyan device in this addon**. Do not rely on it — it is exactly the kind of thing the README warns may change or vanish.

## Practical notes

- Placement has no orientation and no block states to manage; a device is simply present or not.
- Because most devices work as items too, a compact script setup can keep them in the inventory instead of building a machine room — except for the two block-only ones.
- Nothing here consumes durability, energy or fuel; there is no wear mechanic on any device.

[Back to index](index)
