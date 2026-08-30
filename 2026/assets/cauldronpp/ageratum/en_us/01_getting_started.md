---
title: "Getting started"
navigation:
  title: "01 Getting started"
---

# Getting started

Cauldron++ adds a single block — the **Cauldron (Legacy)** (`cauldronpp:cauldron`) — which replaces the brewing stand as your potion workshop. Everything else in the mod is either brewed inside it or produced by it.

## Crafting the cauldron

Two recipes are provided, both in the `cppcauldron` recipe group. Use whichever fits your resources.

Combine a vanilla cauldron with a brewing stand:

<recipe id="cauldronpp:cppcauldron"/>

Or build one from iron ingots around a brewing stand:

<recipe id="cauldronpp:cppcauldron2"/>

The block is mined with a pickaxe (it is in `minecraft:mineable/pickaxe`) and drops itself.

## Where to find the items

Cauldron++ does not register its own creative tab. Its contents are inserted into vanilla tabs instead:

| Vanilla tab | Contents |
|:---|:---|
| Food & Drinks | Water Bottle, plus sample normal / splash / lingering potions |
| Functional Blocks | Cauldron (Legacy) |
| Redstone Blocks | Cauldron (Legacy) |
| Combat | Sample tipped arrows |

The sample potions in the creative tabs use the fixed potion data values `32767`, `16123`, `16085` and `22809`, so they are showcase entries rather than a full catalog.

## Capacity and filling

The cauldron holds three levels, expressed as bottles:

| Amount | Meaning |
|:---|:---|
| 1 level | One bottle |
| 3 levels | One bucket (also the maximum) |

You can fill it in several ways:

- **Water bucket** — sets the content to the full 3 levels at once.
- **Water bottle** — adds 1 level per bottle.
- **Lava bucket** — fills 3 levels of lava and makes the block emit light level 15.
- **Powder snow bucket** — fills 3 levels of powder snow.
- **Rain** — a small random chance per precipitation tick adds 1 level of water.
- **Snowfall** — a small random chance per precipitation tick adds 1 level of powder snow.
- **Dripstone** — a water or lava stalactite above the cauldron fills it 1 level at a time.

An empty bucket takes the full bucket back out again, but only for lava, powder snow, and plain water — never for a brewed potion.

## The Water Bottle item

Cauldron++ registers its own **Water Bottle** (`cauldronpp:water_bottle`) and redirects the vanilla glass-bottle filling behaviour to it, so filling a bottle from water gives you this item. Beyond drinking, right-clicking a mud-convertible block with it turns that block into mud and leaves you a glass bottle; a dispenser loaded with Water Bottles does the same thing to the block it faces.

[Back to index](index)
