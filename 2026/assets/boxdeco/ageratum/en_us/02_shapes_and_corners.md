---
title: "Shapes and corners"
navigation:
  title: "02 Shapes and corners"
---

# Shapes and corners

The railing's whole trick is that it borrows the **vanilla stairs shape system**. That is why corners appear on their own.

## The two blockstate properties

| Property | Values | Meaning |
|:---|:---|:---|
| `facing` | north, south, east, west | Which way the railing panel faces |
| `shape` | straight, inner_left, inner_right, outer_left, outer_right | Straight run or one of four corner forms |

Four facings × five shapes = **20 blockstate variants**, rendered from three models: straight, inner, and outer.

This is literally the vanilla stairs shape property, reused for a railing. If you already know how stairs snap into corners, the railing behaves the same way.

## How a corner is chosen

When placed, and again whenever a horizontal neighbour changes, the railing inspects the two blocks along its own facing axis:

1. **The block it faces.** If that is a railing whose facing is on the *other* axis, this railing becomes an **outer** corner — `outer_left` if the neighbour turns counter-clockwise, otherwise `outer_right`.
2. **The block behind it.** If that is a railing on the other axis, this railing becomes an **inner** corner — `inner_left` or `inner_right` by the same rule.
3. **Otherwise** it stays `straight`.

There is also a guard: a corner is only taken if the neighbour on the relevant side is not another railing sharing this railing's exact facing. That prevents a long parallel run from breaking into spurious corners.

Because the shape is recomputed on neighbour updates, extending or removing a run reshapes the adjacent pieces automatically. You never place a dedicated corner piece.

Note that only **horizontal** neighbour changes trigger the recalculation. Changes directly above or below fall through to the default behaviour and do not reshape the railing.

## The collision box is 1.5 blocks tall

This is the most surprising property in practice. The railing's shape is **24 units tall**, where a full block is 16 — so it occupies a full block plus half of the space above it.

| Shape | Footprint |
|:---|:---|
| Straight | full width, 3 units deep, **24 units tall** |
| Outer | 3 × 3 units, **24 units tall** |
| Inner | two straight sections combined at right angles, **24 units tall** |

Consequences worth knowing:

- **You cannot jump over it.** A 1.5-block barrier exceeds a normal jump onto a flat top, so the railing genuinely fences players in — which is presumably the point for balconies.
- **The space above the railing block is not free.** Anything you try to place or walk through directly above a railing meets its collision box.
- **The panel is thin.** Only 3 of 16 units deep, and it starts 0.01 units in from the block face rather than flush with it.

The same shape is used for the outline you see when aiming and for collision, so what you highlight is what you bump into.

## Mobs will not path through it

The block reports itself as not pathfindable, so mob navigation treats it as an obstacle and will not attempt to route through the railing. Combined with the 1.5-block height this makes it an effective mob barrier along walkway edges.

## Rotation and mirroring

Rotation and mirroring are both implemented, and mirroring correctly swaps left and right corner shapes. Structure blocks and other tools that rotate or mirror a saved build will therefore reproduce railing corners correctly rather than mangling them.

[Back to index](index)
