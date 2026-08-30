---
title: Getting Started
navigation:
  title: Getting Started
description: Why nothing is craftable, and the two ways to actually get a drink.
---

# Getting started

## Nothing is craftable

The mod ships **no recipe directory whatsoever**. `data/sip_moment/` contains loot tables, advancements, a damage type and a jukebox song — but not a single recipe, and there is no recipe data generator output either.

So there are exactly two ways to obtain anything:

- **The creative tab.** `sip_moment:0_sip_moment_tab`, titled "Sip Moment" and iconed with the whisky. The leading `0_` in the id is deliberate: it sorts the tab to the front of the creative menu.
- **The wine list.** Place a bar table, right-click it, and buy drinks with emeralds. This is the intended survival route and is covered in [02 The wine list](02_the_wine_list).

The creative tab contains all 15 items. Note that the **beverage display block is not among them** — it has no item form at all; see [05 Bar furniture](05_bar_furniture).

## The intended loop

1. Get emeralds — villager trading, as usual.
2. Place a **bar table**.
3. Right-click it to open the **wine list** and buy a drink.
4. **Sip it.** Every drink takes several uses to finish rather than one; see [03 Drinks and sipping](03_drinks_and_sipping).
5. Set glassware down on the table. Drinks are placeable blocks and **stack visually** two or four high.
6. Place a **bar chair** and sit down.

## Two purchase shapes

Most wine list entries hand you a single ready-to-drink glass. Two of them are different: the **Kyoho wine** and the **Champagne** entries sell you a **bottle plus its matching empty glass**, and you then pour from the bottle into the glass yourself. That is the only multi-step preparation in the mod.

## Everything drinkable shares one profile

All ten drinks are registered with the same base properties:

- **`stacksTo(1)`** — one drink per slot, always.
- **`alwaysEdible()`** — you can drink at full hunger.
- **Drink animation with the vanilla drinking sound**, `1.6` seconds per sip for the plain drinks.
- **Consume particles disabled** — no crumb particles fly out, which is what makes them read as liquids.
- Item names come from the block name via `useBlockDescriptionPrefix()`, so an item and its placed block always share one display name.

## What is not here

No commands. No world generation. No villager professions or custom trades — the wine list is its own menu, not a merchant. And **no working config file**: the mod carries a config class, but it is the unmodified MDK template and it is never registered, so no TOML is created and none of those options do anything. Details in [Good to know](07_technical_and_limits).

[Back to index](index)
