---
title: "Kaleidoscope Tavern"
navigation:
  title: "Kaleidoscope Tavern"
---

# Kaleidoscope Tavern

**Kaleidoscope Tavern** (mod id `kaleidoscope_tavern`, by ysbbbbbb and tartaric_acid) builds a working tavern: grapes you grow, wine you ferment and press, and **drinks whose effects change with how many cups you have had**.

It is a large, polished content mod — 125 blocks, 126 recipes, 96 advancements, 99 loot tables — and it integrates with **five other mods entirely through data**, including another entry in this same competition.

## Reading guide

- [01 Grapes and growing](01_grapes_and_growing) — the crop line, trellises, and the seasonal-mod integrations.
- [02 Fermenting and pressing](02_fermenting_and_pressing) — the barrel and the pressing tub, and how the recipe split works.
- [03 Drinks and the cup-count system](03_drinks_and_cup_count) — the core mechanic, and why the third cup is different from the sixth.
- [04 Playing with other mods](04_integrations_and_technical_notes) — seasonal mods, Diet, Carry On, and the four Ponder tutorials.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id | `kaleidoscope_tavern` |
| Version | `1.1.2-neoforge+mc26.1.2` |
| License | **BSD-3-Clause + CC BY-NC-SA 4.0** (code + assets) |
| Authors | ysbbbbbb, tartaric_acid |
| Minecraft | `[26.1.2, 26.2)` |
| **Required dependencies** | **none** beyond `neoforge` + `minecraft` |
| Blockstates / item models | **125 / 125** |
| Models / textures | **459 / 212** |
| Recipes | **126** across 4 types |
| Loot tables | **99** |
| Advancements | **96** |
| Custom registry | **`drink_effect` — 24 entries** |
| Config entries | 6 |
| Commands | **none** |
| Mixins | config present but **all arrays empty** |
| Ponder scenes | **4** (`.nbt`) |
| Languages | `en_us` **205** / `zh_cn` **205** / `ru_ru` 169 / `ja_jp` 135 |

## What makes it distinctive

**Drinks track how much you have drunk.** A custom datapack registry, `drink_effect`, keys its effect lists on **cup number 1 through 6** — so the first sip and the sixth are genuinely different events, not the same potion applied repeatedly. See [Drinks and the cup-count system](03_drinks_and_cup_count).

**Five other mods are supported, and none of them is required.** Seasonal mods place the grapes in their calendars, Diet counts them as fruit, Carry On is told to leave tavern blocks alone, and Ponder adds four animated tutorials. See [Playing with other mods](04_integrations_and_technical_notes).

**The vanilla-recipe share is high.** 96 of 126 recipes are ordinary shaped or shapeless crafting, so most of the tavern's furniture and glassware is buildable before you understand any custom machine.

::: info
`en_us` and `zh_cn` have **identical key sets at 205 keys each** — a fully equivalent pair. Russian (169) and Japanese (135) are partial; those two languages will fall back to English for the remainder.
:::
