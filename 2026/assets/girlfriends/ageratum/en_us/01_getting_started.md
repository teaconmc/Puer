---
title: "Getting started"
navigation:
  title: "01 Getting started"
items:
  - girlfriends:bouquet
---

# Getting started

## Bringing a character into the world

::: warning
**Use `/summon`.** There is no spawn egg, no natural spawning and no structure that contains them.

```
/summon girlfriends:momo
/summon girlfriends:yuxi
/summon girlfriends:meishu
/summon girlfriends:wanying
/summon girlfriends:youruo
```

All five are registered under `MobCategory.MISC` — the category vanilla uses for things that never spawn on their own — and the mod adds no spawn placements or biome modifiers. This is a summon-only mod in its current state.
:::

## What you need installed

Nothing beyond NeoForge and Minecraft. The metadata declares exactly those two, and that is correct: the build file mentions one library but the source never uses it.

The Minecraft range is `[26.1, 26.2)` and the NeoForge range is a broad `[26,)`.

## The six items

| Item | Stack | Notes |
|:---|---:|:---|
| **Bouquet** | 1 | the mod's flagship gift |
| **Watering Can** | 1 | fillable — carries a water level |
| **White Ribbon** | 16 | |
| **Light Gray Ribbon** | 16 | |
| **Gray Ribbon** | 16 | |
| **Pink Ribbon** | 16 | |

Only **four ribbon colours** exist — white, light gray, gray and pink — rather than one per dye.

The Watering Can is unusual in two ways: it stores a **water level as an item component** starting at zero, and it is drawn from four block-style textures (top, side, bottom, nozzle) rather than a flat sprite, so it renders as a small three-dimensional object in your hand.

## Recipes

Five of the six items are craftable, and every recipe is **shapeless**:

<recipe id="girlfriends:bouquet"/>

The four ribbons follow the same pattern in their respective colours.

**The Watering Can has no recipe.** In the current build it comes only from the creative tab.

## The interaction screen

Right-click a character to open **Character Interaction**. It offers:

| Button | What it does |
|:---|:---|
| Give Gift | opens the gift screen |
| View Quest | opens quest details |
| Accept Quest / Deliver Quest | take on or hand in a quest |
| Confirm Relationship | the intimacy step |
| Invite Home | ask her to move in |
| Follow Mode: … | cycles how she follows you |
| Close | |

Quest details show an **Objectives** list, and accepting is a two-button choice — **Accept Quest** or **Think Again** — so nothing is committed by a stray click.

## A first session

1. `/summon girlfriends:momo` somewhere pleasant.
2. Craft a **Bouquet** and give it to her — it is a favourite for more than one character.
3. Watch her affection message; each gift reports the change.
4. Open the interaction screen and set a **Follow Mode**.
5. Once she trusts you enough, look at **View Quest** and **Invite Home**.

Note two limits before you plan around them: **gifts have a daily cap per character**, and **inviting her home requires your respawn point to be a double bed**. Both are covered in [03 Affection and gifts](03_affection_and_gifts) and [04 Quests, home and daily life](04_quests_home_and_daily_life).

[Back to index](index)
