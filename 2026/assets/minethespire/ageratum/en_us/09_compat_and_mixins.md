---
title: "Playing With Other Mods"
navigation:
  title: "Playing With Other Mods"
---

# Playing With Other Mods

Nothing is required beyond NeoForge and Minecraft. Two mods make a real difference if you add them.

## Curios: two dedicated relic slots

**Curios is the one worth installing.** With it you get:

| Feature | With Curios | Without |
|:---|:---|:---|
| Dedicated relic slots | **Two** | — |
| Right-click to equip a relic | **Yes** | — |
| Slot-specific tooltip headers | **Yes** | — |
| Relics still function | Yes | **Yes** |

::: tip
**Relics work either way.** Without Curios the mod looks for your relics in the normal equipment slots instead, so nothing breaks and no relic becomes useless.

What you lose is convenience: the two purpose-built slots and the right-click-to-equip flow. If you play with relics at all, Curios makes it noticeably smoother.
:::

If Curios is absent, the server log notes it once on startup — that message is informational, not an error.

## Jade: Blocking Value on the tooltip

With **Jade** installed, looking at an entity adds a **Blocking Value** line to its tooltip. It is enabled by default, so there is nothing to configure.

See [Blocking Value & HUD](07_hud_and_blocking) for what the number means.

## JEI: works, but adds nothing special

The mod registers a JEI plugin, but it contributes **no custom categories and no info pages**.

::: info
The mod's single crafting recipe does appear in JEI — but only because it is an ordinary shaped recipe that JEI picks up on its own. **Do not expect a JEI page explaining orbs, skills or relics**; that information is in these documents and in game, not in JEI.
:::

## ⚠️ The 46 relics do not do anything yet

::: danger
**The mod contains 46 relic items that are currently inert.** They exist, you can obtain and hold them, and they have names and textures — but their effects are not implemented.

The source marks them explicitly as pending. So if you collect a relic and notice nothing happens, **that is the current state of the mod rather than a bug in your setup.**

The relic *system* — including the Curios slots above — is built and working. It is the individual relic effects that are still to come.
:::

## What the mod deliberately does not add

| Thing | State |
|:---|:---|
| Blocks | **none** — this mod adds no blocks |
| Enchantments | **none** |
| Loot table changes | **none** — it does not alter vanilla drops |

::: info
**Orbs never break blocks.** Lightning and Dark Orbs contain unused code that would have destroyed soft blocks on impact, but it is switched off — you can fire orbs indoors without damaging your build.
:::

## A card-keyword system that is not in this version

Names like Ethereal, Innate, Exhaust and Retain may appear if you dig into the files, but **none of that system is active**. It is groundwork for a future version.

## Summary

| Mod | Add it? |
|:---|:---|
| **Curios** | **Recommended** — two relic slots and right-click equipping |
| **Jade** | Nice to have — Blocking Value on entity tooltips |
| JEI | Optional — no custom content from this mod |

[Back to index](index)
