---
title: "Fermenting and Pressing"
navigation:
  title: "02 Fermenting and Pressing"
---

# Fermenting and Pressing

## The recipe split

All 126 recipes, by type:

| Type | Count | Where |
|:---|---:|:---|
| `minecraft:crafting_shaped` | **60** | Vanilla crafting table |
| `minecraft:crafting_shapeless` | **36** | Vanilla crafting table |
| **`kaleidoscope_tavern:barrel`** | **24** | The Barrel — fermentation |
| **`kaleidoscope_tavern:pressing_tub`** | **6** | The Pressing Tub |

::: info
**96 of 126 recipes are vanilla crafting.** The tavern's furniture, glassware and fittings are ordinary crafting-table work; only the drinks themselves need the two custom machines. That is why the mod feels approachable despite having 125 blocks.
:::

## The Pressing Tub

Six recipes. This is the juice step — grapes in, liquid out — and it comes first in the chain. There is a Ponder scene, `pressing_tub/introduction`, dedicated to explaining it.

## The Barrel

**24 recipes, four times as many as the tub**, which makes fermentation the real depth of the production side. The block has a Ponder scene too (`barrel/introduction`).

The barrel's blockstate is unusually rich, which tells you something about how it is used:

| Property | Values | Meaning |
|:---|:---|:---|
| `LAYER` | an `AttachFace` | Which surface the barrel attaches to |
| `INDEX` | **integer 0–8** | Nine distinct states |

::: tip
**`INDEX` running 0 to 8 means barrels are meant to be stacked or arrayed, not placed singly.** Nine indexed states is how a mod renders a wall of barrels as one coherent structure rather than nine identical copies. If your barrels look wrong, check that they are attached the way the Ponder scene shows.
:::

## Barrels and sofas cannot be carried away

The mod writes a **Carry On blacklist**:

```
carryon:tags/block/block_blacklist
  grape_crop, whiskey, magenta_sofa, ice_grape_crop, red_sofa,
  black_sofa, grass_sandwich_board, dragon_breath_bottle,
  mondrian_painting, ...
```

::: info
**This is a deliberate design decision, not an oversight.** Carry On normally lets players pick up and relocate block entities wholesale. For a tavern mod that would let someone walk off with a fermenting barrel, a stocked bottle, or the furniture — so the mod opts its own blocks out.

If you use Carry On and cannot pick up a tavern block, this tag is why, and it is intended.
:::

## What the finished drinks do

Pressing and fermenting produce the drinks, and each drink has an entry in the `drink_effect` registry that decides what it does to you. That system is the subject of [Drinks and the cup-count system](03_drinks_and_cup_count).

## Configuration

There are **6 config entries** and **no commands**. The mod is small on knobs — most behaviour is data-driven through the recipe types and the `drink_effect` registry, both of which a datapack can extend without touching config.

[Back to index](index)
