---
title: MorSneak
navigation:
  title: MorSneak
items:
  - cc_ms:portable_radio
---

# MorSneak（撅电报）

MorSneak is a TeaCon 2026 entry by c20c01, mod id `cc_ms`, group `io.github.c20c01.cc_ms`, version `0.1.0` under the **GPL-3.0** license, targeting Minecraft 26.1.2.

It is a redstone-and-signalling mod built on one idea: **a lodestone's position is a radio frequency**. Tune a radio to a lodestone and you join a channel identified by that dimension and block position. Transmitters push redstone strength onto the channel, receivers turn it back into redstone, and a portable radio lets a player listen in and answer — by sneaking.

The mod's Chinese name, 撅电报, is a pun: you send by 撅 (sticking your rear out, i.e. sneaking).

## What is registered

| Registry | Entries |
|:---|:---|
| Blocks | `cc_ms:radio_receiver_block`, `cc_ms:radio_transmitter_block` |
| Block entities | one for each block |
| Items | the two block items plus `cc_ms:portable_radio` |
| Creative tab | `cc_ms:tab` |
| Sound events | `cc_ms:beep`, `cc_ms:fa` |
| Data components | `selected_frequency`, `frequencies`, `signal_code`, `sound_code` |
| Recipes | 3 shaped recipes |
| Loot tables | 2 (one per block) |
| Config | one `SERVER` option |
| Commands / entities / mixins | **none** |

There are no commands, no entities, no mixins and no access transformers. Everything is done with two blocks, one item and a lodestone.

## Reading path

1. [01 Getting started](01_getting_started) — the recipe chain, its real netherite cost, and your first working link.
2. [02 Channels](02_channels) — how a lodestone becomes a frequency, and why a channel only ever outputs one signal.
3. [03 Portable radio](03_portable_radio) — the four screen modes, the 16-channel limit, and sending by sneaking.
4. [04 Radio blocks](04_radio_blocks) — transmitter and receiver wiring, block states, and joining a channel.
5. [05 Sounds and direction](05_sounds_and_direction) — buzzer sounds, signal codes, and the 8-block directional offset.
6. [06 Configuration](06_configuration) — the `buzz_sounds` server option and its syntax.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id / name | `cc_ms` / MorSneak, v0.1.0, GPL-3.0 |
| Author / group | c20c01 / `io.github.c20c01.cc_ms` |
| Version target | Minecraft 26.1.2 |
| Frequency | the `GlobalPos` of a lodestone (dimension + position) |
| Channels per portable radio | 16 |
| Redstone range | 0 – 15, as usual |
| Directional hint | up to 8 blocks, horizontal only |
| Configurable sounds | up to 64, 16 shipped by default |
| Localization | English and Chinese, 23 keys each, fully paired |
