---
title: "Seating and Tables"
navigation:
  title: "02 Seating and Tables"
items:
  - "furnitureplan:oak_chair"
  - "furnitureplan:oak_table"
---

# Seating and Tables

## Chairs

Right-click any chair with an empty hand to sit. The server creates an invisible rideable entity at the chair and forces the player to become its passenger. Use the normal dismount control to leave.

Each chair accepts only one passenger at a time. After someone sits, its block entity waits about `11` server ticks before cleanup checks begin. The internal counter is not reset after reaching `10`, so it checks every tick afterward. Once the passenger leaves, the next check removes the empty rideable entity and makes the seat available again.

## Benches

Benches use the same empty-hand interaction as chairs. Although the model is wider, the current implementation still creates one seat per bench block, so only one player can occupy each block at a time.

If the seating block entity is missing, interaction fails instead of creating an orphaned seat. When seating is broken, its invisible entity also detects the missing block entity and removes itself.

## Automatic table connections

Whenever a neighbor changes, a table checks north, east, south, and west and selects among `full`, `side`, `single`, and `pane` shapes.

The connection test only asks whether the neighboring block is a `TableBlock`; it does not require the same material. An oak table beside a stone table therefore forms one continuous surface. Leave a gap or place a non-table block between groups to keep complete outer edges.

## Materials and placement

Every material family generates one chair, one bench, and one table, for `108` of each. Wooden families generally carry the axe-mineable tag, while stone and metal families generally carry the pickaxe-mineable tag. Block properties are copied from the corresponding vanilla base material.

Tables and seating support waterlogged states. A table connection changes only its model and collision shape; it does not merge inventories or add storage.

::: tip
Build a surface in one material first, then replace selected blocks to preview cross-material connections immediately. Benches do not merge horizontally like tables.
:::

[Back to index](index)
