---
title: "The Candy Workshop and drawer tables"
navigation:
  title: "01 Candy Workshop"
items:
  - "ccw:sugar_refinery"
  - "ccw:plain_drawer_table"
  - "ccw:drawer_table"
---

# The Candy Workshop and drawer tables

## The Candy Workshop block

`ccw:sugar_refinery` is the central machine. Right-click it to open an 8-slot menu:

| Slot | Role |
|:---|:---|
| 0 | Milk: one normal milk bucket, or 8 carton/calcium-rich milks |
| 1 | Sugar: vanilla sugar, `ccw:nether_sugar` or `ccw:ender_sugar` |
| 2 | Main ingredient |
| 3 | Extra/flavor ingredient |
| 4 | Output |
| 5–7 | Remainder slots |

The machine works in 160 ticks (8 seconds). It first checks the data-driven `ccw:formula` registry by matching the sugar and main ingredient, then falls back to `ccw:refining` recipes such as `ccw:carametal`. A recipe is only selected while the output slot can accept the same item and components without exceeding the stack limit; otherwise refining pauses.

When a batch finishes, inputs are consumed and the result is placed in the output slot. Remainders and overflow are pushed into a `ccw:drawer_table` directly below the machine when one exists, then into slots 5–7, and finally dropped as items on the ground.

<recipe id="ccw:sugar_refinery"/>

Right-clicking the machine also increases the `ccw:interact_with_sugar_refinery` statistic. The machine exposes an item container capability on all sides, so hoppers and automation can supply or remove items.

## Drawer tables

There are two drawer table blocks: the plain `ccw:plain_drawer_table` and the pink-carpet `ccw:drawer_table`. Both open the same 54-slot drawer menu, output a redstone comparator signal, and expose an item container capability. Placing a `ccw:sugar_refinery` directly on top is deliberately allowed, which makes the drawer table useful as a buffer for finished gummies and remainder items.

<recipe id="ccw:plain_drawer_table"/>

<recipe id="ccw:drawer_table"/>

Opening either drawer table increases the `ccw:open_drawer_table` statistic.

[Back to the CCW index](index)
