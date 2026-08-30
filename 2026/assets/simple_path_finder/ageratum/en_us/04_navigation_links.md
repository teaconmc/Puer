---
title: "Navigation Links"
navigation:
  title: "04 Navigation Links"
---

# Navigation Links

Navigation links connect a stored source position to a destination that does not need to be adjacent. They are useful for shortcuts such as portal paths, vehicle routes, or custom traversal helpers.

## Creating Links

1. Set the Navigation item to Add Link mode with Shift + Scroll or the settings screen.
2. Right-click the first position. The mod stores the position one block above the clicked face in the `simple_path_finder:link_creation` component and reports the start position.
3. Right-click the target position. The mod appends a `simple_path_finder:nav_link` to the source chunk's position entry, clears the pending start data, marks the saved data dirty and syncs the source chunk.

The item shows the enchantment glint after the first point is selected. If the source chunk has no navigation chunk when the second click arrives, the server reports `simple_path_finder.nav.link.no_start_nav` and clears the pending start data.

## Link Types

The settings screen offers three types stored in `simple_path_finder:link_type`:

| Type | Current Implementation |
|:---|:---|
| Normal | A general walking/shortcut link. |
| Teleport | A link labeled for teleport-style travel, such as a portal. |
| Vehicle | A link labeled for vehicle travel, such as a boat, minecart or mount. |

These types are stored path labels. The current pathfinder adds nav-link edges with zero distance and does not assign different costs or movement behaviors by type. The mod does not teleport the player or spawn a vehicle when following a link.

## Removing Links

In Add Link mode, left-clicking a block invokes the server-side removal handler for the position one block above the attacked block. The handler removes all nav links stored at that position in the current chunk, marks the data dirty and syncs that chunk. The item still returns `false` from its destroy check, so the block is not broken.

## Same-Dimension Constraint

`NavLink` is created from a `GlobalPos`, but its current stream codec serializes only the destination `BlockPos` and type. The dimension is not preserved through save or network sync, and the pathfinder looks up the destination in the current level's nav data. Links should therefore be treated as same-dimension links. A link whose destination chunk has no navigation data is ignored during pathfinding.

## Interaction with the Brush

The Navigation Brush only edits chunk edge distances. Despite the brush enum comments mentioning nav links, the current `NavBrushItem` application code does not add or remove navigation links. Use the Navigation item for link editing.

[Back to index](index)
