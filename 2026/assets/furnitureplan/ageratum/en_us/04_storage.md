---
title: "Storage Furniture"
navigation:
  title: "04 Storage Furniture"
items:
  - "furnitureplan:spruce_cupboard"
  - "furnitureplan:oak_disguised_cabinet"
---

# Storage Furniture

## Cabinets

Every material has `17` cabinets: one disguised cabinet and sixteen cabinets with colored frames. The current generated resources therefore contain `108 x 17 = 1836` cabinet item definitions.

Right-click the front to open a `9 x 4`, `36`-slot inventory. Color-framed versions render a visible door and opening animation. A disguised cabinet does not render that door layer, but it still has the same 36-slot container.

## Cupboards

Every material generates one cupboard. Its front is divided horizontally into three drawers:

- Two drawers contain `9` slots each.
- One larger drawer contains `12` slots.
- The drawers are independent, for `30` total slots.

Target the block's facing front and the corresponding drawer region. Clicking a side, the back, or outside the valid horizontal range does not select a drawer.

## Clearance to open

Cabinets and cupboards inspect the block directly in front. If the game considers that block a redstone conductor, the door or drawer cannot open. Whether glass and other non-conductors block access follows `isRedstoneConductor`, not simply the presence of a collision shape.

## Saving, drops, and multiple players

- A cabinet saves one 36-slot container; a cupboard saves three separate drawer containers.
- Closing a menu removes its user and updates the opening animation state.
- Breaking a cabinet drops all 36 slots; breaking a cupboard drops all three drawers.
- Server payloads synchronize the active open state to client renderers for multiple players.

## Item automation

The mod registers NeoForge block item capability for both storage types:

- A cabinet exposes its 36-slot container directly.
- A cupboard combines its three drawers into one resource handler.

Pipes and transfer devices compatible with NeoForge item capability can use those handlers. Directional extraction and filtering still depend on the external device.

[Back to index](index)
