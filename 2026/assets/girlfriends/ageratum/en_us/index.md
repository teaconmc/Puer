---
title: "Girlfriends"
navigation:
  title: "Girlfriends"
---

# Girlfriends

Girlfriends adds **five companion characters**, each with her own theme, daily schedule, voice lines, gift tastes and relationship track. You raise affection by giving gifts, take on her quests, set how she follows you, and eventually invite her to live in your home.

Behind the surface it is a brain-and-sensor AI mod: each character notices different things in the world — flowers, beehives, ores, shelter, hostiles — and behaves accordingly at different times of day.

## Read this first

::: warning
**There is no spawn egg and the characters do not spawn naturally.** All six entity types are registered under `MobCategory.MISC`, and the mod ships no spawn eggs, no spawn placements and no biome modifiers.

In the current build the only way to bring a character into a world is **`/summon`**, for example `/summon girlfriends:momo`. If you install the mod and go looking for them in the world, you will not find any.
:::

**Good news on dependencies:** the metadata declares only NeoForge and Minecraft, and that is **accurate**. The build file lists one library (`tetrachordlib`) but the source never references it, so nothing extra is needed at runtime.

## At a glance

| Item | Value |
|:---|:---|
| Mod ID | `girlfriends` |
| Version | `0.1.0+mc26.1.2` |
| License | **MIT** |
| Author | Liu Dongyu |
| External dependencies | **none** |
| Characters | 5 |
| Items | 6 |
| Voice lines | 103 |
| Affection tiers | 6 |
| Config options | 3, all on by default |
| Minecraft | `[26.1, 26.2)` |

## The five

| Character | Theme |
|:---|:---|
| **Momo** | a garden — flowers, bees, honey |
| **Yuxi** | the sea — fishing, lighthouses, shells |
| **Meishu** | mining — ores and pickaxes |
| **Wanying** | the Nether — combat and blaze |
| **Youruo** | the End — pearls, books, observers |

Each has her own voice set, her own list of items she picks up, and her own blessing.

## Reading route

- [01 Getting started](01_getting_started) — summoning, the six items, and the interaction screen
- [02 The five characters](02_the_five_characters) — themes, pick-up lists and blessings
- [03 Affection and gifts](03_affection_and_gifts) — the six tiers and how gifting works
- [04 Quests, home and daily life](04_quests_home_and_daily_life) — quests, moving in, follow modes and schedules
- [05 Good to know](05_technical_notes) — the three switches, daily schedules, and why voices are Chinese-only
