---
title: Good to Know
navigation:
  title: Good to Know
description: Three things that affect play, and what you cannot configure.
---

# Good to Know

Three things in this mod will affect your game. Read them before you build a bar.

## ⚠️ Two blocks are destroyed permanently when broken

::: danger
**Breaking these two blocks gives you nothing back — in survival *and* in creative:**

| Block | What happens |
|:---|:---|
| **Orange Juice** | Placed juice is **gone forever** when broken |
| **Beverage Display Block** | Drops nothing (it is also not obtainable normally) |

Thirteen of the mod's fifteen blocks drop correctly. These two do not, and **creative mode does not save you** — this is not a difficulty setting.

**Before you place orange juice as decoration, be sure you want it there.** If you are laying out a bar and might rearrange later, place something else and swap it in last.
:::

## ⚠️ The Spear of Longinus does not pierce armour

::: danger
**The spear's armour-piercing never applies.** Its damage-type definitions are in a folder whose name is misspelled, so the game never loads them.

What this means in play: **the spear works as a weapon, but against armoured targets it behaves like an ordinary trident** rather than the armour-ignoring weapon it was designed to be.

This is the most significant gap in the mod. See [Spear of Longinus](06_spear_of_longinus) for what the spear does do.
:::

## There is nothing to configure

::: info
**No config file is generated for this mod, and that is expected.** If you go looking for `sip_moment-common.toml`, you will not find it.

The mod ships an unused configuration template, but none of it is active — there are no options controlling sipping, the wine list, or the spear. Everything behaves the same on every install.

So if a guide ever tells you to change a Sip Moment setting, there is no setting to change.
:::

## It runs on exactly one Minecraft version

The mod accepts **only 26.1.2** — not a range. Any other 26.x build will refuse to load it.

If you are assembling a pack, pin Minecraft to 26.1.2 rather than expecting a nearby version to work.

## The wine list menu title can be affected by other mods

The wine list screen takes its title from a name that belongs to **another mod's namespace** (`bakeries`).

::: warning
On its own, Sip Moment provides that name itself and the menu reads correctly. But **in a pack that also contains a mod owning that namespace, the menu title can end up different depending on load order.**

Only the title text is affected — the wine list itself works normally either way. Details in [The wine list](02_the_wine_list).
:::

## Language support

**English and Simplified Chinese are both complete and fully matched.** No other languages are provided; anything else falls back to English.

## If you redistribute it

The mod's assets are under a **NonCommercial, ShareAlike** licence.

- Shipping the mod unmodified in a **non-commercial** pack is fine.
- **Monetised packs are not permitted**, and derivative assets must carry the same terms.

Anything beyond an unmodified non-commercial pack needs the author's permission.

## Summary

| Thing | Status |
|:---|:---|
| Orange Juice & Beverage Display Block | ⚠️ **Break = gone forever** |
| Spear armour-piercing | ⚠️ **Does not work** |
| Config file | **None — nothing to tune** |
| Minecraft version | **26.1.2 exactly** |
| Wine list title | May differ in some packs |
| English / Chinese | Both complete |

[Back to index](index)
