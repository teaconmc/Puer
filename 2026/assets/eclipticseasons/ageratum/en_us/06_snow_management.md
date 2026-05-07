---
title: "Snow Management"
navigation:
  title: "06 Snow Management"
---

# Snow Management

The seasonal snow system can make blocks look snowy without replacing their block ID. This page covers the three tools and the two cauldrons that manipulate that appearance.

## Broom

`eclipticseasons:broom` has 256 durability and uses the brush animation. When you sweep a block:

- It removes the snowy overlay (`SnowyMapChecker.removeSnowyStatus`) from the target block.
- If the block above is a Snow layer, it also breaks that snow block.
- It damages 1 durability per removal, except in Creative mode.

<recipe id="eclipticseasons:broom"/>

- 1 Hay Block, 1 wooden rod (`#c:rods/wooden`) → 1 Broom

::: note
The broom is hidden from the creative tab and its tooltip reports the feature inactive unless the `SnowInWorld` configuration is enabled.
:::

## Ice wand

`eclipticseasons:ice_wand` is a creative-oriented snow-status tool (Rarity.EPIC, stack size 1, no recipe). Left-click cycles modes; use on a block applies the selected mode.

- Modes: `block` with sizes `1x1`, `3x3`, `5x5`, and `chunk` with sizes `1x1`, `3x3`, `5x5`, `7x7`.
- Sneak while clicking cycles the snowy flag among the `SnowyRemover.SnowyFlag` values.
- The tool writes a `range` custom data component and a `mode` integer, then applies that to the clicked chunk positions or the local area.

## Salt wand

`eclipticseasons:salt_wand` (Rarity.RARE, 4096 durability) marks a rectangular region as a no-snow area. Use it once to select the first corner, then again to select the opposite corner. Sneak while applying removes the selection instead. Each block in the selection costs 1 durability outside Creative mode.

<recipe id="eclipticseasons:salt_wand"/>

- Quartz gem, gold ingot, stick → 1 Salt Wand

## Snow and ice cauldrons

`eclipticseasons:snow_cauldron` and `eclipticseasons:ice_cauldron` are registered cauldron blocks that hold snow or ice instead of water. Empty cauldrons accept Snow Block and Ice through the registered cauldron interaction; the filled cauldrons keep their own block state and can be used as a compact way to store or display seasonal blocks.

[Back to the Ecliptic Seasons index](index)
