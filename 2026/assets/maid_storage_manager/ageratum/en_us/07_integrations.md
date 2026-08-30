---
title: Playing With Other Mods
navigation:
  title: Playing With Other Mods
description: Which storage systems your maids can use, and the two numbers worth changing.
---

# Playing With Other Mods

Your maids can work with storage from several other mods, and **every integration is on by default** — you do not need to enable anything.

## Touhou Little Maid is required

This is an addon. Without **Touhou Little Maid** nothing here works. See [Getting started](01_getting_started).

## Storage systems your maids understand

| System | Works out of the box |
|:---|:---|
| **Applied Energistics 2** | **Yes** — a maid can take items from a terminal |
| **Refined Storage** | **Yes** |
| **Mekanism QIO** | **Yes** |
| **Create** storage | **Yes** — the deepest integration, see below |
| Vanilla chests and barrels | Yes |

::: tip
**All three of the big storage mods are supported and enabled by default.** If you run AE2, Refined Storage or Mekanism QIO, your maids can already draw from them — there is no compatibility module to install and no switch to flip.

If you specifically want to *stop* a maid using one of them, each has a config toggle you can turn off.
:::

## ⚠️ Create stock keeper: the horizontal range is only 7

A maid can act as a **stock keeper** around a Create stock ticker, and the two range numbers are very different:

| Range | Default | Adjustable to |
|:---|---:|---:|
| **Vertical** | **16** | 256 |
| **Horizontal** | **7** | 64 |

::: warning
**A stock keeper maid covers a tall narrow column, not a wide flat floor.**

Vertical reach is 16 blocks but horizontal reach is only **7** — so if your Create logistics are spread out sideways, that 7 is the number that will catch you out. A maid standing in the middle of a wide factory floor simply will not see the far ends.

**If your setup is horizontal, raise the horizontal range** (up to 64) rather than moving the maid around.
:::

## Maid addresses, and what to do about collisions

Each stock-keeper maid gets an address generated from a pattern. By default it combines her **type initial** with **four characters of her unique id**.

::: info
**If you run many maids of the same type and start seeing address collisions**, widen the id portion in the config — using eight characters instead of four makes clashes far less likely.

Five placeholders are available for the pattern, so you can also include the full type name or the full id if you prefer readable addresses over short ones.
:::

## ⚠️ One config comment is wrong — trust the key, not the comment

::: danger
**The option controlling Create's stock manager has a comment that reads "Enable tacz recipe support".**

TACZ is an unrelated gun mod, and this option has nothing to do with it. The comment is a copy-paste leftover.

**The option itself works exactly as its name says** — it controls Create stock manager support. So if you are reading through the config file and that comment confuses you, ignore the comment and go by the option name.
:::

## Recipe browsers

Both **JEI** and **EMI** are supported, and ingredient requests from either can be fed to your maids. Both are on by default.

JEI additionally supports transferring a recipe directly — see [The crafting engine](04_crafting_engine).

## Other optional mods

| Mod | What you gain |
|:---|:---|
| **Patchouli** | **40 pages of in-game guidebook** |
| **Cloth Config** | A settings screen instead of editing the file |
| KubeJS | Scripting support |

::: tip
**Patchouli is worth installing** — 40 pages of guidebook is a substantial amount of in-game reference for a mod with this many systems.
:::

## Summary

| If you use | Expect |
|:---|:---|
| **Touhou Little Maid** | **Required** — nothing works without it |
| AE2 / Refined Storage / Mekanism QIO | **Supported, on by default** |
| **Create** | Deeply supported — **check the horizontal range of 7** |
| JEI / EMI | Ingredient requests on by default |
| Patchouli | 40 guidebook pages |
| Cloth Config | In-game settings screen |

[Back to index](index)
