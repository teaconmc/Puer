---
title: Install JEI, and Other Notes
navigation:
  title: Install JEI, and Other Notes
description: Why JEI is effectively required, what the mod contains, and one language gap.
---

# Install JEI, and Other Notes

## ⚠️ JEI is not optional in practice

::: danger
**Install JEI before you play this mod.**

The Crock Pot decides what you get from **requirement trees and fractional category values** — that is the entire game here. JEI is where those become readable: the mod ships **seven JEI categories**, including two that exist purely to show information (Food Values, and Parrot Laying Eggs).

**Without JEI, the mod's central system becomes invisible.** You would be guessing at category thresholds with no in-game reference at all.

The mod technically runs standalone, and nothing will crash — but it is not a realistic way to play. Treat JEI as required.
:::

## What the mod contains

| Recipe type | Count | What it covers |
|:---|--:|:---|
| **Food values** | **87** | How each ingredient is classified |
| **Crock pot cooking** | **60** | The dishes themselves |
| Parrot feeding | 13 | Feeding the parrot |
| Drying | 8 | The drying rack |
| Vanilla crafting / smoking / smelting | 20 | Ordinary recipes |
| Piglin bartering | 1 | A barter entry |
| Explosion crafting | 1 | One explosion recipe |

So **87 ingredient classifications support 60 dishes** — the classification layer is bigger than the dish list, which is why understanding categories matters more than memorising recipes.

## Food categories can be extended by datapack

The ten food categories are a proper datapack registry, and each entry holds only a colour. Combined with food values also being data, **the whole ingredient-classification layer is editable by datapack without any code**.

If you want to add your own ingredients or reclassify existing ones for a modpack, that is the supported way in. See [Food categories](02_food_categories).

## ⚠️ Traditional Chinese is incomplete

::: warning
**On a Traditional Chinese (`zh_tw`) client, roughly one string in six shows raw text** instead of a readable name.

English and Simplified Chinese are both complete and equal. Traditional Chinese is missing about 44 entries, so you will see unresolved keys scattered through item names and tooltips.

Everything still functions — it is a display gap only. If it bothers you, playing in Simplified Chinese or English avoids it entirely.
:::

No other languages are provided; anything else falls back to English.

## What the mod deliberately does not have

| Absent | Why that is fine |
|:---|:---|
| **Config file** | There is nothing a server owner needs to tune |
| **Commands** | The pot is the whole interface |
| **World generation** | Crops come from grass and ordinary farming |
| **Custom entities** | The birdcage holds a vanilla parrot |

::: info
The lack of a config file is worth noting positively: **this mod has no hidden knobs.** What you see in JEI is what the mod does, on every install.
:::

## Summary

| Check | Why |
|:---|:---|
| **Install JEI** | Requirement trees and category values are otherwise unreadable |
| Play in English or Simplified Chinese | Traditional Chinese has display gaps |
| Read [Food categories](02_food_categories) first | Categories matter more than recipes |

[Back to index](index)
