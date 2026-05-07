---
title: "Furniture and Grid Snapping"
navigation:
  title: "12 Furniture and Grid Snapping"
items:
  - "ashihara:meal_table"
  - "ashihara:bamboo_curtain"
  - "ashihara:curtain_table"
---

# Furniture and Grid Snapping

<block id="ashihara:meal_table"/>

Ashihara's tables, curtains, dishes, and other furniture mostly use the same fine-placement model as building components. Several small pieces can share one block space, so choosing a snap size before placing a group greatly reduces alignment errors.

Hold `Alt` and scroll the mouse wheel to cycle through `1` block, `1/2`, `1/4`, `1/8`, `1/16`, `1/32`, and free placement. Snapping currently affects only the `X/Z` plane. The `Y`-axis snapping code is commented out, so height still depends on aim position and viewing angle.

## Suggested precision

- Room axes and large tables or cabinets: `1` or `1/2`.
- Dishes, curtain rods, and small decoration: `1/8` or `1/16`.
- Reserve `1/32` or free placement for irregular details whose positions do not need easy repetition.

::: warning
Offhand furniture placement may fail while the main hand holds an item. If placement does nothing, empty the main hand and retry instead of clicking repeatedly and altering another component.
:::

[Back to the Ashihara index](index)
