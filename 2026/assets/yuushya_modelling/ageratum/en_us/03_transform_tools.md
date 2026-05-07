---
title: The Transform Tools
navigation:
  title: Transform Tools
description: How the shifter, rotator, scaler and slot tool combine, and the mainhand/offhand convention they all share.
---

# The Transform Tools

The tools are the actual content of this mod. They share one convention, and once you know it the whole set becomes predictable.

## The universal convention

Every transform tool follows the same two-hand pattern, spelled out in the tooltips:

| Hand | Action |
|:---|:---|
| **Mainhand** | Right-click a carrier block to **apply** the adjustment to the selected layer |
| **Offhand** | Right-click to **switch the tool's mode** |

`pos_trans_item`'s own tooltip states it directly: *"Mainhand: Rightclick a [Entity Block] to adjust the selected [Layer]'s offset"* and *"Offhand: Rightclick to switch the tool's modes (3 in total)"*.

The mode is shown in the action bar with colour coding — `pos_trans_item` cycles **§cMode:X Axis → §AMode:Y Axis → Mode:Z Axis**, so you always know which axis you are about to move.

::: tip
The tooltip also tells you to **use F3 to know which axis to adjust**. The debug overlay's axis readout is the fastest way to avoid nudging a piece the wrong direction three times in a row.
:::

## The set

| Tool | Registry id | What it adjusts |
|:---|:---|:---|
| Layer shifter | `yuushya:pos_trans_item` | Position, in normal steps |
| Micro shifter | `yuushya:micro_pos_trans_item` | Position, in fine steps |
| Rotator | `yuushya:rot_trans_item` | Rotation |
| Scaler | `yuushya:scale_trans_item` | Size |
| Slot tool | `yuushya:slot_trans_item` | Which **layer** you are editing |
| Transform mover | `yuushya:move_transformdata_item` | Copies transform data between carriers |

The split between `pos_trans_item` and `micro_pos_trans_item` is the difference between roughing a piece into place and finishing it. Use the coarse one first.

## Layers

A carrier holds several appearances at once, and `slot_trans_item` is how you choose which one the other tools act on. This is the mechanism behind every composite build: a table is a slab layer plus a leg layer in one block, and you switch between them with the slot tool rather than placing two blocks.

The layer set and its transforms live in the `TRANSFORM_DATA` data component, which is why they survive pick-block and can be copied wholesale with `move_transformdata_item`.

## Capturing appearances

| Tool | Use |
|:---|:---|
| `get_blockstate_item` | Copy a **blockstate** from the world onto your cursor, ready to apply |
| `get_showblock_item` | Grab an existing show block entity's whole configuration |
| `shape_item` | Work with the `SHAPE_DATA` component |

`get_blockstate_item` is the entry point for most work — point at any block in the world, and its exact state becomes something you can dress a carrier with.

## Undo and inspection

| Tool | Use |
|:---|:---|
| `history_item` | Opens the **history menu** — step back through changes |
| `gui_item` | Opens the carrier's editing screen directly |
| `debug_stick_item` | The mod's own blockstate debug stick |
| `destroy_item` | A removal tool with **384 durability** — the only durable item in the set |

The history menu is the one that saves builds. Freeform transformation means it is easy to overshoot, and `history_item` is the intended recovery path rather than rebuilding from scratch.

## Why the tools all stack to 1

Every tool is `stacksTo(1)`, because each one carries per-item state — its current mode, and in some cases captured data. Two copies of the same tool in your inventory are two independent tools with independent modes, which is genuinely useful: keep one shifter set to Y and another to X.

[Back to index](index)
