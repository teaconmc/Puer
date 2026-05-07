---
title: Playing With Other Mods
navigation:
  title: Playing With Other Mods
description: Which mods unlock extra recipes, and two things to know before you start.
---

# Playing With Other Mods

This addon requires **AE2** and **LDLib2**, and it quietly does more when a few other mods are present. This page tells you what you gain by adding them.

## Three optional mods unlock 19 extra recipes

Nineteen of the addon's 166 recipes only work if you have the mod that provides them:

| Add this mod | And you gain | Recipes |
|:---|:---|--:|
| **Mekanism** | Crushing and enriching routes for the material line | **12** |
| **ExtendedAE** | Crystal fixing, crystal assembly and circuit cutting routes | **5** |
| **AdvancedAE** | A reaction route | **2** |

::: warning
**Without those mods, those recipes simply do not appear** — and nothing tells you they were ever there. No error, no message in the mod list, no gap you would notice.

So if you have read about a processing route for this addon and cannot find it in JEI, **the missing piece is probably one of these three mods rather than anything you did wrong.**
:::

::: tip
**Mekanism is the one that matters most** — it accounts for 12 of the 19. If you only add one, add that.
:::

## If interfaces look wrong, check LDLib2

Every screen in this addon is built on **LDLib2**, which is why it is a required dependency rather than an optional one.

**If you see unstyled, blank or broken interfaces**, an outdated LDLib2 is the first thing to check. The addon needs at least version `26.1.2.22`.

## ⚠️ The coolant shows raw text on Chinese clients

::: danger
**Cryotheum Solution — the coolant both multiblocks depend on — is not translated into Chinese.**

On a Chinese client its block, its fluid and its bucket all display unresolved text instead of a readable name.

This matters more than a typical missing translation because **the coolant is central to running the computation and crafting multiblocks** — it is exactly the substance you need to identify while building. The items work normally; only their names are affected.
:::

## Chemical cells are not in this version

The language files mention **chemical cell housings and three chemical storage cell tiers (16M, 64M, 256M)**, plus aluminium alloy and black tungsten alloy upgrades.

**None of those are in this build.** They are names left over from content that is not switched on, so do not go looking for them in JEI or the creative tabs.

## The built-in resource pack

The addon ships an optional built-in texture pack called **`classic_pack`**. Enable it from the normal Resource Packs screen if you prefer its look.

::: info
If it shows as incompatible, that is because of how its format version is declared rather than a damaged install — **it will still work if you enable it anyway.**
:::

## A checklist before you play

| Check | Why it matters |
|:---|:---|
| **AE2 installed and recent** | Required — the addon builds on it |
| **LDLib2 installed and recent** | Required — no interfaces without it |
| **Decide on Mekanism** | 12 recipes depend on it |
| **Decide on ExtendedAE / AdvancedAE** | 7 more recipes between them |
| **Chinese players: expect the coolant to show raw text** | Cosmetic, but on a key item |

[Back to index](index)
