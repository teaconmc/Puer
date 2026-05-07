---
title: Road Builder Prototype
navigation:
  title: 01 Road Builder Prototype
items:
  - "roads:road_builder"
---

# Road Builder Prototype

<block id="roads:road_builder"/>

## Obtaining and Placing

The Road Builder is available only in the Roads Creative tab. The mod provides no crafting recipe and no loot table for it; breaking one outside Creative does not make this mod return the item.

The block has a horizontal facing and faces toward the placing player. It uses a full cube model with the vanilla iron-block texture, and its properties copy an iron block. `noOcclusion` only disables adjacent-face occlusion checks; it does not make the model transparent or hollow. The orange curves are separate block entity geometry.

## Random Control Points

Each newly created block entity generates 10 random three-dimensional control points in the local range from `-8` to `8` around the block. These points are saved in block entity data and synchronized to the client, so an existing block normally keeps its curve after reloading.

There is no player-facing screen to inspect numeric coordinates, move points, or reroll them. The source contains another method for making four facing-based points, but construction and empty-data recovery currently call the random test method.

## Orange Curves

The client interprets every four parameters as a cubic Hermite curve's start point, start tangent, end point, and end tangent. The loop advances by two points each time, so 10 points produce 4 curves with overlapping parameters. Each curve is approximated by 16 straight sample segments.

The curves are visual only:

- They do not replace world blocks or create a road surface.
- They have no collision and cannot support entities.
- The server performs no pathfinding along them.
- Rotating the block does not recalculate its current random points.

[Back to the Roads index](index)
