---
title: Good to Know
navigation:
  title: "07 Good to Know"
---

# Good to Know

## Two real quirks in how bait and lines behave

::: warning
**Bait attraction always succeeds.** The three baits list attraction *rates*, but due to a bug the game actually uses their *range* values for the roll — so **every fish in range is always attracted**, no matter which bait you use.

Practically: bait choice affects *how far* the pull reaches, never how likely it is to work.
:::

::: danger
**Hooking a player disables vine lines completely.** With default settings, if your hook catches a player, the taut-line effect on Twisting and Weeping Vines stops working on *everything* — not just sparing that player.

On a PvP server this is very visible: one hooked player and vine-line tricks stop working entirely.
:::

## Three server settings, all on by default

| Setting | Controls | Turn it off when |
|:---|:---|:---|
| `lavaFishing` | Lava fishing entirely — including its Nether mob pulls and Silmon | You do not want lava fishing at all |
| `chumming` | Baits creating fish where none exist | Small artificial ponds keep overflowing with fish |
| `bypassPlayer` | The hook ignores players | You run PvP and want hooks to catch players |

::: warning
**Turning off `lavaFishing` removes a whole system**, including the only source of one of its fish. Think before toggling.
:::

## Hook damage ignores difficulty

A spiked hook hits for exactly the same value regardless of world difficulty. Hooked mobs are also not knocked back.

## Extending it with a datapack

Bait lists live under the **`minecraft:`** namespace, not `better_rod:` — so a datapack adding new baits targets `minecraft:fish_bait`.

The Auto Filler's bucket recipe is a custom recipe type (`better_rod:auto_bucket`), so datapacks can add more conversions of the same kind.

## It needs exactly Minecraft 26.1.2

Any other 26.x build refuses to load the mod.

## Redistribution

The mod is **All Rights Reserved** — modpack use needs the author's permission.

## Summary

| Thing | Status |
|:---|:---|
| Bait attraction rates | ⚠️ **Non-functional — range is what matters** |
| Vine lines + hooked player | ⚠️ **Vine lines shut off completely** |
| Hook damage vs difficulty | Identical on all difficulties |
| Lava fishing | On by default; removing it removes a whole system |
| Minecraft version | 26.1.2 exactly |
| Modpack use | Needs permission |

[Back to index](index)
