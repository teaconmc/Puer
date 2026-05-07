---
title: "Climbable Block Tags"
navigation:
  title: "05 Climbable Block Tags"
---

# Climbable Block Tags

The generated data files are:

- `data/parkour/tags/block/climbable.json`
- `data/parkour/tags/block/common_ignored_blocks.json`
- `data/parkour/tags/block/scaffolding_blocks.json`

## `#parkour:climbable`

The generated tag contains:

- Fences: `minecraft:oak_fence`, `minecraft:nether_brick_fence`, `minecraft:spruce_fence`, `minecraft:birch_fence`, `minecraft:jungle_fence`, `minecraft:acacia_fence`, `minecraft:cherry_fence`, `minecraft:dark_oak_fence`, `minecraft:pale_oak_fence`, `minecraft:mangrove_fence`, `minecraft:bamboo_fence`, `minecraft:crimson_fence`, `minecraft:warped_fence`, plus `#minecraft:fences`.
- Bars: `minecraft:iron_bars`, `minecraft:copper_bars` and the exposed, weathered, oxidized, waxed, waxed exposed, waxed weathered and waxed oxidized copper bar variants.
- Chains: `minecraft:iron_chain`, `minecraft:copper_chain` and the exposed, weathered, oxidized, waxed, waxed exposed, waxed weathered and waxed oxidized copper chain variants.
- Glass panes: `minecraft:glass_pane` and all 16 stained glass panes.
- `minecraft:end_rod`.

This tag is used by `LivingEntityMixin.onClimbable`. The extra climbable check is only active when `canClimbMoreBlocks` is true and when the player is not in the vanilla state. A single tagged block is not enough: the block at the player position must match a tagged block that is vertically stacked with the same block above or below. Pillar blocks must use the Y axis, end rods must face up or down, and other tagged blocks pass the orientation check without an axis requirement.

## `#parkour:common_ignored_blocks`

This tag contains `#parkour:climbable` and `#minecraft:climbable`. It is used as the ignored-block set for wall-run forward collision, head/feet wall sensors and wall-climb/wall-run footstep material queries.

## `#parkour:scaffolding_blocks`

This tag contains `minecraft:scaffolding`. It is used by the wall jump sensor to select an `UP` wall jump and by the armhang eye/top sensors for hang-point checks.

All three tags are data-driven: data packs can extend or override them.

[Back to index](index)
