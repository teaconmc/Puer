---
title: Getting Started
navigation:
  title: 01 Getting Started
---

# Getting Started

## The login message is the first instruction

When you join a world with Bakeries installed, the mod prints:

```
[Bakeries] Install Patchouli to obtain the mod tutorial book
```

Take it seriously. The mod ships **43 Patchouli book files** and its central mechanic is numeric — without the book you are guessing at temperature bands. The in-game item is **Baking Guide** (`bakeries:baking_guide`).

## Four creative tabs

The mod splits its content across four tabs rather than one, and the split tells you how to read the item list:

| Tab | Contents |
|:---|:---|
| Bakeries | The main content |
| Semi-manufactured product | **Intermediate items** — doughs, shells, raw forms |
| Compatibility items | Items that exist for cross-mod purposes |
| Bakery compat | A second compatibility grouping |

::: info
**The "semi-manufactured product" tab is the useful one to know about early.** Baking here is multi-stage — flour becomes dough, dough becomes a raw form, the raw form becomes the baked good — and every intermediate has its own item. That tab is where they all live, so it doubles as a map of the production chains.
:::

## Where ingredients come from

Three sources, all of which work in ordinary survival:

**Worldgen** — 3 worldgen files, so some inputs are found rather than crafted.

**Villager trades** — **5 trades in the mod's own namespace plus 1 added to `minecraft`**. That last one matters: the mod injects a trade into a vanilla villager profession, so a normal village can supply something from this mod without any Bakeries block being present.

**Crafting** — 26 shaped and 25 shapeless vanilla recipes, plus 2 smelting and 1 campfire recipe. **Roughly half of all 107 recipes use vanilla types**, so a large part of the mod is approachable before you build any station.

## The first chain to build

1. **Flour sieve** — turns raw material into flour (4 recipes). It is a held tool, not a block; see [Tools and their quirks](04_tools_and_quirks).
2. **Dough crafting table** — flour into dough (8 recipes).
3. **Oven** — dough into bread, at a temperature you choose (15 recipes). This is where [Perfect Temperature](02_oven_and_perfect_temperature) happens.

The blender (14 recipes) and drink station (6) branch off toward beverages; the bread knife (5) is for cutting finished goods.

## What the mod does not have

| Feature | Status |
|:---|:---|
| Config file | **none** — zero `ModConfigSpec` usage |
| Commands | **none** |
| Required dependencies | **none** beyond NeoForge and Minecraft |
| Fluids | no `fluid.bakeries.*` keys |
| Entities | no `entity.bakeries.*` keys |

So there is nothing to configure and nothing to install first. Everything is reachable through gameplay.

[Back to index](index)
