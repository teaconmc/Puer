---
title: Time Capsule
navigation:
  title: Time Capsule
---

# Time Capsule

**Time Capsule** (mod id `time_capsule`, version `1.0.0-indev`, MIT, by mrqx0195) lets you seal items and a written message behind a timestamp. Until that moment arrives, the capsule refuses to open — and it says so, in one of five different ways.

It is a small mod done carefully: **eight blocks forming a complete copper-style weathering chain**, a 25-slot container, two independent time modes, and no configuration at all.

## Reading guide

- [01 Sealing a capsule](01_sealing_a_capsule) — obtaining one, the sealing screen, and what the tooltip tells you.
- [02 Game time versus real time](02_game_time_vs_real_time) — the two modes and why the choice matters more than it looks.
- [03 Weathering, waxing and technical notes](03_weathering_and_technical_notes) — the eight blocks, the data maps behind them, and one risk worth knowing before you mine a sealed capsule.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id | `time_capsule` |
| Version / license | `1.0.0-indev` / **MIT** |
| Minecraft | `[26.1.2]` — a single exact version |
| **Dependencies** | **none beyond `neoforge` + `minecraft`** |
| Blocks | **8** — four weathering stages × waxed / unwaxed |
| Items | 1 (`time_capsule`) plus the block items |
| Block entities | 1 |
| Menus | 1 |
| Data components | **1** — `time_capsule:time_capsule_data` |
| Container size | **25 slots** |
| Recipes | 2 |
| Loot tables | 8 (one per block) |
| Advancements | 2 |
| Config / commands / mixins | **none of any** |
| Languages | `en_us` + `zh_cn`, **29 keys each, fully equivalent** |

## What it actually does

Put items in the capsule, type a message, pick a moment, and seal it. From then on the capsule shows **Sealed** in its tooltip along with a live countdown — `Remaining: %s d %s h %s m %s s`. Try to open it early and you get one of five refusals at random:

> This memory is not yet ready to be unsealed…
> You feel it is not yet time.
> Perhaps… wait a little longer?
> You think it over, and put it back.
> **But it refused.**

When the moment passes, the tooltip switches to **Ready to open**.

::: tip
That last refusal is a deliberate nod to the vanilla Totem of Undying message. The five variants are picked at random, so repeatedly poking a sealed capsule reads as the capsule getting mildly exasperated with you.
:::

::: warning
**Before you mine a sealed capsule, read the loot-table note in [Weathering, waxing and technical notes](03_weathering_and_technical_notes).** The block's loot table copies four vanilla components but **does not list this mod's own `time_capsule_data` component**, and that is where the message, the mode and the unlock time live.
:::
