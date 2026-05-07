---
title: Equipment and Good to Know
navigation:
  title: 04 Equipment and Good to Know
---

# Equipment and Good to Know

## The machines

| Block | What it does |
|:---|:---|
| **Aeolipile** | A steam device that sits above a Caupona hearth |
| **Earthen Basin** | Evaporation and concentration |
| **Lead Basin** | The upgraded basin |
| **Beverage Vending Machine** | Serves drinks from its own screen |

There is also a Clay Basin as the unfired form. **18 blocks and 70 items** in total.

### The aeolipile and Caupona's chimneys

An aeolipile is a Greco-Roman steam device — a sphere that spins when heated. It is designed to sit in the airspace above a Caupona hearth.

::: tip
**Caupona tracks what is above its hearths, and the aeolipile is registered as something to ignore.** That means you can place one over a working hearth without Caupona treating it as a blocked chimney.

If you have ever had a hearth complain about obstruction, this is the one block that is explicitly exempt.
:::

### The basins

Two tiers, Earthen and Lead, driving the **Evaporation & Concentration** category in JEI. Concentration is how you raise a liquid's strength before it becomes a drink.

## ⚠️ Six things are unnamed on a Chinese client

::: danger
**On a Chinese client, six items and the taste readout show raw text instead of readable names.**

The five empty vessels are affected — bottle, bowl, cup, jug and mug. The *filled* versions read correctly, so you will see a proper name once a drink is inside; only the empty item is unnamed.

**More importantly, the compact taste line on the tooltip is affected.** The five abbreviations — Sw, As, Pu, Th, Ro — are exactly the information you need to decide whether a drink needs whisking, and they do not resolve.

Note the oddity: the long form (`Sweetness 3`) works, while the compact tooltip form (`3Sw`) does not. So you are not without information — just without the quick readout.
:::

## Fluids have no names of their own

The mod's fluids — berry must, berry juice and the relish fluids — are identified through their bucket items rather than through fluid names.

If you use a mod that inspects fluids in tanks, you may see raw identifiers there. That is expected and does not affect brewing.

## The two misspelled names you must copy exactly

If you write a datapack for this mod, two identifiers are misspelled in the mod itself and **must be spelled the same wrong way to work**:

| Written as | Should have been |
|:---|:---|
| `convivium:convertion` | conversion |
| `vairants` | variants |

::: warning
**Do not "correct" these in a datapack** — a corrected spelling simply will not match anything. This is the same situation as `beecrasy`'s `hiveFloringRadius` config key.
:::

## Fluid amounts are in millibuckets

A conversion typically moves 250 mB — a quarter of a bucket. So a full bucket of must is worth four conversions.

## What the mod adds to Caupona

Beyond its own content, this mod contributes **88 bowl dishes** to Caupona's existing bowl system. That is its single largest addition by count — more than any of its own machines.

So if you already play Caupona, installing this mod expands your existing bowl menu substantially, before you even build a basin.

[Back to index](index)
