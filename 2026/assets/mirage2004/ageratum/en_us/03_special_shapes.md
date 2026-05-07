---
title: Special Shapes
navigation:
  title: Special Shapes
description: Slopes, triangle walls, poles, wires and balconies — the blocks that needed custom models and collision.
---

# Special Shapes

Most of the 275 blocks are cubes, slabs, stairs and walls. A minority needed work beyond that, and those are the ones worth knowing about.

## Slopes and triangle walls

Two shapes are the mod's own, available on **every surface family**:

| Shape | What it is |
|:---|:---|
| `slope` | A diagonal ramp |
| `triangle_wall` | A triangular gable / infill panel |

Neither exists in vanilla, so each needs a **custom model loader**. The mod ships two complete loader stacks — `SlopeGeometry` / `SlopeModelLoader` / `SlopeUnbakedModel` and the matching `TriangleWall*` trio — which is why these shapes render correctly at every rotation instead of being approximated with stairs.

Practically: a `slope` in the same family as your wall gives you a **pitched roof or a chamfered corner in the same material**, which is the usual reason a facade built from cubes alone looks wrong.

## Blocks with hand-authored collision

Fifteen blocks have collision shapes declared in a box DSL and rotated to all four horizontal facings. The source comment describes it as *"Data-driven collision shapes from the `collision` box-string DSL, keyed by block id; each value is the NORTH-authored shape rotated to all four horizontal facings."*

| Block | Collision box (in sixteenths) | Reads as |
|:---|:---|:---|
| `concrete_utility_pole_gray_pole` | `6,0,6 → 10,16,10` | A 4×4 post, full height, centred |
| `power_line_gray_wire` / `power_line_black_wire` | `6,6,0 → 10,10,16` | A 4×4 bar running through the block horizontally |
| `framed_window_1/2/3_white_clear_pane` and `_black_clear_pane` | `0,0,7 → 16,16,9` | A 2/16 pane, **centred** in the block |
| `prefab_window_balcony_*_balcony_left` | `1,0,1 → 16,16,3` | A shallow balcony, offset to one side |
| `prefab_window_balcony_*_balcony_right` | `0,0,1 → 15,16,3` | Mirror of the above |

Three consequences for building:

**Framed window panes are centred, not flush.** At `z = 7..9` the pane sits in the middle of the block, so a window in a one-block-thick wall has a recess on both faces. That is correct for a real window in a masonry opening — but if you expected it flush with one face, that is why it looks inset.

**Balconies come in left/right pairs.** `_balcony_left` occupies `x = 1..16` and `_balcony_right` occupies `x = 0..15`. **They are mirrored halves meant to be placed side by side**; a single one leaves a 1/16 gap at one edge. Place both.

**Wires only run one way per block.** `power_line_*_wire` is a bar along one horizontal axis; the shape is rotated by facing, so a corner in a wire run needs the two blocks facing differently rather than a dedicated corner piece.

## Poles are 4×4 and full height

`concrete_utility_pole_gray_pole` is a `6,0,6 → 10,16,10` post — thinner than a fence, full block height, centred. Stacked, it makes a continuous pole; the `pole_arm` and `pole_base` families in the spec provide the crossarm and footing pieces that complete it.

## Facing matters on every special block

All of the above are keyed by `Direction` and authored facing **north**, then rotated. The blocks extend `AbstractHorizontalShapeBlock` / `FacingSpecialBlock`, so **they take their facing from how you place them** — and the collision follows the visual. If a balcony or wire seems to have collision in the wrong place, check the facing before assuming a bug.

[Back to index](index)
