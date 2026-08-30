---
title: "The milk chain"
navigation:
  title: "04 Milk chain"
items:
  - "ccw:milk_extractor"
  - "ccw:milk_packaging"
  - "ccw:carton_milk"
  - "ccw:milk_gelatin"
---

# The milk chain

## Milk extractor

`ccw:milk_extractor` is a reusable tool with 129 durability. Right-click a cow to extract one carton of milk; sneak while right-clicking to extract up to 16 cartons at once, limited by the remaining durability. Every carton extracted damages the extractor once and applies a cooldown of `2 × count` ticks, so large extraction batches pause your interactions afterward.

<recipe id="ccw:milk_extractor"/>

The tool has no dedicated recipe for restoring durability other than the special repair recipe, which takes the extractor plus `ccw:milk_packaging` or paper:

<recipe id="ccw:repair_extractor"/>

## Paper shell and carton milk

`ccw:milk_packaging` (Paper Shell) is folded from paper and is used to make carton milk. One milk bucket plus one paper shell produces 8 carton milks; three milk buckets plus one paper shell produce 24.

<recipe id="ccw:milk_packaging"/>

<recipe id="ccw:milk_carton_from_single_milk_bucket"/>

<recipe id="ccw:carton_milk"/>

`ccw:carton_milk` is a drink: consuming it takes 16 ticks and removes one random active status effect from you. Both carton milk and calcium-rich milk count as milk for candy formulas, and are included in the `c:foods/milk` and `c:drinks/milk` tags.

## Milk gelatin

`ccw:milk_gelatin` is the special ingredient for the Milky flavor. It is made from carton milk and a slime ball, or from a milk bucket with 8 slime balls.

<recipe id="ccw:milk_gelatin"/>

<recipe id="ccw:milk_gelatin_from_milk_bucket"/>

See [Gummies and formulas](02_gummies_and_formulas) for how milk gelatin changes gummy consumption.

[Back to the CCW index](index)
