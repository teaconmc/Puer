---
title: Sip Moment
navigation:
  title: Sip Moment
items:
  - sip_moment:whisky
---

# Sip Moment

Sip Moment is a TeaCon 2026 entry by renyigesai, mod id `sip_moment`, group `com.renyigesai.sip_moment`, version `1.0.0`, targeting Minecraft 26.1.2 on NeoForge 26.1.2.75.

It is a **bar mod**: ten drinks you sip rather than gulp, glassware you can set down and stack, a bar table that opens a priced wine list, and a chair you can actually sit on. Around that core sit two pop-culture layers — a Cyberpunk: Edgerunners strand (the David Martinez cocktail, Black Star coffee, the Edgerunners and Furious effects, the *Dust To Dust* record) and an Evangelion strand (the Spear of Longinus and a death message about melting into LCL).

## Licensing — read this before packaging

The mod declares a **dual license: `BSD-3-Clause + CC BY-NC-SA 4.0`**. The Creative Commons half is **NonCommercial and ShareAlike**, which is stricter than most of this batch. If you are assembling a pack that is monetised in any way, this mod's assets are the ones to check first.

## What is registered

| Registry | Count | Notes |
|:---|--:|:---|
| Blocks | **15** | 10 drink blocks, 2 cups, bar table, bar chair, beverage display |
| Items | **15** | 14 block-linked plus the music disc |
| Block entities | 1 | beverage display |
| Mob effects | **4** | drunk, edgerunners, furious, sincerely_for_you |
| Entities | 2 | pouring wine, thrown Spear of Longinus |
| Particles | 2 | drunk, wine liquid |
| Menus | 1 | the wine list |
| Data components / attachments | yes | drink state and wine-list page |
| Blocks that drop themselves | **13 of 15** | two are lost when broken — see [Good to know](07_technical_and_limits) |
| Damage type | 1 | `at_field` |
| Jukebox song | 1 | *Dust To Dust* |
| Advancements | 6 | |
| **Recipes** | **0** | there is no recipe directory at all |
| Commands | none | |
| Config file | **never generated** | the spec is the MDK template and is never registered |

## Reading path

1. [01 Getting started](01_getting_started) — why nothing is craftable, and the two ways to actually get a drink.
2. [02 The wine list](02_the_wine_list) — the bar table menu, all nine entries and their emerald prices.
3. [03 Drinks and sipping](03_drinks_and_sipping) — the ten drinks, how many sips each takes, and pouring bottles into glasses.
4. [04 Effects](04_effects) — the four mob effects and which drink grants which.
5. [05 Bar furniture](05_bar_furniture) — table, chair, glassware and the block you cannot obtain.
6. [06 Spear of Longinus](06_spear_of_longinus) — the thrown weapon, its damage type, and its hidden prerequisite.
7. [Good to know](07_technical_and_limits) — two blocks that vanish, the spear's missing armour-piercing, and what you cannot configure.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id / name | `sip_moment` / Sip Moment, v1.0.0 |
| License | **BSD-3-Clause + CC BY-NC-SA 4.0** (NonCommercial) |
| Version target | Minecraft 26.1.2 (pinned), NeoForge 26.1.2.75 |
| Creative tab | `sip_moment:0_sip_moment_tab`, titled "Sip Moment", icon whisky |
| Drinks | 10, each taking 4 or 6 sips |
| Wine list | 9 entries, priced in emeralds |
| Localization | English and Chinese, **47 keys each** |
