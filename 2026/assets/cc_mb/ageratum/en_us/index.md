---
title: Music Box
navigation:
  title: Music Box
items:
  - cc_mb:note_grid
---

# Music Box（纸带八音盒）

Music Box is a TeaCon 2026 entry by c20c01 — the same author as MorSneak — mod id `cc_mb`, group `io.github.c20c01.cc_mb`, version `0.5.4` under **GPL-3.0**, targeting Minecraft 26.1.2.

It is a **punched-tape music machine**. You punch notes into a paper Note Grid with an Awl, feed the grid into a Music Box, and power it with redstone to play. Around that core sit a perforation workbench with five operating modes, a redstone-driven automatic puncher, and a Sound Shard that can **record any sound in the game** and turn it into an instrument.

## Why it stands out

Everything in this mod is craftable and everything drops itself. All eight registered items and blocks have a recipe, all four blocks have a loot table, and both language files are complete and identical in coverage. In a batch full of unobtainable content and orphaned keys, this one has none.

## What is registered

| Registry | Entries |
|:---|:---|
| Blocks | `music_box_block`, `puncher_box_block`, `perforation_table_block`, `sound_box_block` |
| Block entities | 3 — the perforation table has none |
| Items | `note_grid`, `awl`, `sound_shard`, `paper_paste` + 4 block items |
| Data components | `notes`, `tick_per_beat`, `sound_info` |
| Menu | `perforation_table_menu` |
| Creative tab | one, titled with the Music Box's own name key |
| Recipes | **8 — one for every item and block** |
| Loot tables | **4 — one for every block** |
| Advancements | 8, all recipe unlocks |
| Mixins | 2 (`MixinMob`, `MixinSoundEngine`) |
| Commands / config | **none** |

## Reading path

1. [01 Getting started](01_getting_started) — all eight recipes and what the creative tab gives you for free.
2. [02 The Note Grid](02_note_grid) — pages, beats and pitches, and the hard limits.
3. [03 Perforation Table](03_perforation_table) — the five modes and which tool selects each.
4. [04 Writing music](04_writing_music) — composing in a book and merging it onto a grid.
5. [05 The Music Box](05_music_box) — playback, tempo, octave and the instrument underneath.
6. [06 Sound Shards](06_sound_shard) — recording any sound in the game, and luring mobs with it.
7. [07 Puncher Box and technical notes](07_puncher_box_and_technical) — redstone punching, mixins and limits.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id / name | `cc_mb` / Music Box, v0.5.4, **GPL-3.0** |
| Author / group | c20c01 / `io.github.c20c01.cc_mb` |
| Version target | Minecraft 26.1.2 (pinned), NeoForge 26.1.2.36-beta |
| Grid capacity | **64 pages × 64 beats × up to 25 notes per beat** |
| Tempo | 1–20 ticks per beat, default 10 |
| Octave offset | −2 to +2 |
| Localization | English and Chinese, **42 keys each, zero difference** |
