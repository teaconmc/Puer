---
title: How It Changes Damage
navigation:
  title: "07 How It Changes Damage"
description: The default replaces vanilla damage reduction — read this before adding it to a world.
---

# How It Changes Damage

::: danger
**By default, this mod replaces how armor works.**

Out of the box, vanilla **armor points, enchantments (like Protection), mob effects and innate resistance are all switched off** and recalculated by this mod's own system.

Adding it to an existing world **silently changes combat balance everywhere**. Read the modes below before you start.
:::

## The three modes

| Mode | Effect |
|:---|:---|
| **Full replacement** *(default)* | All four vanilla reductions are off; this mod computes everything |
| Cooperative | Vanilla keeps running normally; this mod adds on top |
| Configurable | You pick which of the four to switch off, one by one |

## ⚠️ Editing the four switches does nothing by default

::: warning
**The four individual on/off switches are ignored unless you also set the mode to "Configurable".**

In the default mode everything is suppressed no matter what those switches say; in cooperative mode nothing is.

**This is the classic trap**: flipping a switch, seeing nothing change, and concluding the mod is broken. If you want per-system control, **change the mode first**, then the switches.
:::

## Your armor and enchantments still work

Because the mod takes over reduction, it rebuilds vanilla behaviour itself — including armor effectiveness, Protection-type enchantments, resistance effects and projectile handling.

You will see the results as clear breakdowns in tooltips: enchantments show what they convert into under this system (Feather Falling shows both its normal figure and its converted rating).

::: info
**If some damage number you expected has vanished entirely**, it usually means that mechanic is one the mod did not rebuild — while suppression is on, anything without a rebuilt equivalent simply stops applying.
:::

## `/kill` still kills

Two kinds of damage pass through untouched:

- **`/kill` and falling out of the world** — deliberately excluded, so administrative commands keep working.
- **Anything a datapack adds to the mod's bypass list.** That list ships empty; a datapack can add damage types (for example from another mod) so they ignore this system.

Everything else — falls, mob attacks, environmental damage — goes through the mod's pipeline.

## Thorns becomes an attribute

While the mod is in charge, reflected thorns damage is computed as an attribute value rather than by vanilla enchantment maths, and counts as physical damage.

## Conflicts to watch

The mod reads vanilla's numbers at a few specific points (arrows, enchantment calculations, mace smashes). Another mod that rewrites those same paths is the likely source of trouble if damage values look wrong in a pack.

## Summary

| Thing | Status |
|:---|:---|
| Default behaviour | ⚠️ **Replaces all vanilla damage reduction** |
| The four per-system switches | ⚠️ **Ignored unless mode = Configurable** |
| Armor & enchants | Rebuilt by the mod — they still apply, differently |
| `/kill` | Unaffected, always works |
| Modpack licence | MIT — redistribution permitted |

[Back to index](index)
