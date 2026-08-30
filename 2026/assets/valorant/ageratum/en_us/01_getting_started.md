---
title: "Getting started"
navigation:
  title: "01 Getting started"
items:
  - valorant:sage_heal_item
---

# Getting started

## Where the abilities come from

There is only one source: the creative inventory. The mod ships **no recipes, no loot tables and no tags**, so there is no survival route to any ability item.

The tab sits just before the Combat tab. Look for it under a name you may not expect:

::: warning
**The English tab name is still the template placeholder.** It reads **"Example Mod Tab"** in English, because the translation value was never replaced. In Chinese it correctly reads 无畏契约.

The tab is also registered internally as `example_tab`, so its full id is `valorant:example_tab`. Both are cosmetic, but English players hunting for a tab called "Valorant" will not find one.
:::

## Abilities are consumables

This is the balance decision that shapes everything else: **using an ability consumes the item**.

Meddle, Pick-me-up, Updraft, Tailwind, Blade Storm and Ruse all remove one from the stack when used. Blade Storm skips the consumption in creative mode, and also has a genuine cooldown — see [04 Special mechanics](04_special_mechanics).

Combined with there being no recipes, this means **every ability is a finite resource you must grab more of from the creative menu**. Bring stacks.

## The keys you need

The mod registers its own keybind category, **VALORANT**, with six bindings:

| Key | Action |
|:---|:---|
| **G** | open the Skill Bar screen |
| **Z** | use skill slot 1 |
| **X** | use skill slot 2 |
| **V** | use skill slot 3 |
| **B** | use skill slot 4 |
| **C** | rotate the Sage Barrier direction |

Z / X / V / B mirror VALORANT's own ability layout, so the muscle memory carries over. All six are rebindable in Controls.

## First five minutes

1. Open creative and find the tab **before Combat** (named "Example Mod Tab" in English).
2. Take a few of one agent's four abilities — Sage or Jett are the gentlest starts.
3. Press **G** to open the Skill Bar and assign them to slots.
4. Press **Z / X / V / B** to use them.

Some abilities need a second action after the key — Sage's Barrier waits for a click to place, and Clove's Ruse opens a map. Those are covered in [04 Special mechanics](04_special_mechanics).

## What is not here

Being explicit, because the mod's name invites large expectations:

- **No guns, no shooting, no economy, no rounds.** This is abilities only.
- **No agent entities or models** — you do not become an agent; you carry their abilities as items.
- **No advancements, no commands, no permission gating.** Anyone with the items can use everything.

The ability set is genuinely deep — twenty of them with forty dedicated sounds — but it is a toolkit bolted onto normal Minecraft, not a game mode.

[Back to index](index)
