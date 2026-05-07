---
title: "Extracting and using"
navigation:
  title: "04 Extracting and using"
---

# Extracting and using

Brewing changes the liquid; extraction turns it into items. Every extraction costs one level from the cauldron.

## Bottling potions

Right-click the cauldron with a **glass bottle**:

- If the cauldron holds a potion, you get a potion item in the current potion type.
- If the cauldron holds plain water, you get a `cauldronpp:water_bottle`.

Either way the cauldron loses 1 level. Since the cauldron holds at most 3 levels, a full cauldron yields three bottles.

## Making tipped arrows

Right-click the cauldron with **arrows** while it holds a potion. This is a bulk operation with strict requirements:

| Requirement | Detail |
|:---|:---|
| Cauldron contents | Must be a potion (plain water will not work) |
| Arrows in hand | At least 16, unless you are in creative mode |
| Cauldron level | At least 1 level available |

The trade consumes 15 arrows from your stack and gives you a stack of **16 tipped arrows** carrying the cauldron's potion data, while draining 1 level. In creative mode no arrows are consumed.

Because arrows always produce the tipped-arrow form, you do not need — and cannot use — a type converter for them.

## Emptying without bottles

An **empty bucket** removes the full 3 levels at once and returns the matching filled bucket, but only when the cauldron holds water, lava, or powder snow. Brewed potions cannot be bucketed out; you must bottle them or discard them. Taking lava out with a bucket also clears the block's light emission.

Reducing the cauldron to 0 levels resets it completely: amount, potion type, potion data, and liquid type all return to empty.

## Effects from standing in the cauldron

Entities that touch the liquid surface are affected by what is inside:

| Contents | Effect on entities inside |
|:---|:---|
| Potion | Living entities receive every effect of the brew, at 1% of its normal duration |
| Water / coloured water | A burning entity is extinguished and the cauldron loses 1 level |
| Powder snow | Applies freezing; extinguishes a burning entity, costing 1 level and converting the contents to water |
| Lava | Ignites the entity |

The potion contact effect is continuous while the entity remains in the liquid and does not consume any levels, so a potion cauldron works as a persistent effect field.

The liquid surface height rises with the fill amount, so a fuller cauldron affects entities sooner.

[Back to index](index)
