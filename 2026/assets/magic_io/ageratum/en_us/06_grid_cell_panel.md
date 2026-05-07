---
title: Grid Cell Panel
navigation:
  title: Grid Cell Panel
description: A complete pattern-recognition system whose registries are never attached.
---

# Grid Cell Panel

## What the block is

`magic_io:grid_cell_panel` is a **thin floor panel** — one sixteenth of a block tall, occupying the full horizontal footprint. It is non-occluding, and its entity-inside collision shape is empty, so you can stand and walk on it without it obstructing anything.

It has a block entity with a ticker, overrides both empty-hand and item interactions, and hooks block destruction. All the scaffolding for an interactive, tickable pattern surface is present.

It is in the creative tab, has no recipe, and — like every block in this mod — **has no loot table, so breaking it destroys it**.

## The intended design

The pattern system is built from three pieces:

| Piece | Role |
|:---|:---|
| **Cell actions** | what you place into individual cells of the panel — for example an Earth action |
| **Grid patterns** | shapes with a match type and tagged cell requirements |
| **Grid parse rules** | a pattern plus the zhen type it resolves to, plus a callback |

One rule is written: **`unstable_sift_zhen`**. It declares a **2 × 2 grid of Earth cell actions** with a sharp match type, resolves to the unstable sieve zhen type, and on a match logs that it matched at a position.

Read together, the intent is clear and rather elegant: **draw an elemental pattern on panels, and the pattern becomes a zhen** — a spell-diagram alternative to placing a machine block.

## Why it does not run

Both registries this system depends on are **never attached to the mod event bus**.

The mod's constructor attaches every other registry it uses — data components, element types, IO types, zhen types, recipe manager, blocks, items, block entities, creative tabs — and it does call `modEventBus.register(CellAction.class)`, which sets up the *registry itself*. But the two `DeferredRegister` holders that contain the actual **entries** are never registered:

- the cell action entries, and
- the grid parse rule entries.

A `DeferredRegister` only submits its contents when it has been attached to the mod event bus. Neither of these is, anywhere in the mod. The consequence chain:

1. **No cell actions exist**, so there is nothing to place into a panel cell.
2. **No grid parse rules exist**, so even a correctly drawn pattern has nothing to match against.
3. The `unstable_sift_zhen` rule — the only rule written — **can never fire**, and its log line will never appear.

The panel therefore places, renders, ticks and can be interacted with, but **the feature it exists for produces no result**.

## What this means in practice

- Do not expect to build zhen by drawing patterns. Place zhen blocks instead.
- The panel is currently usable only as a **decorative thin floor tile**, which it does perfectly well — it is flush, walkable and non-obstructive.
- Nothing here is dangerous or broken in a crash sense. It is unfinished wiring, not a defect that damages a world.

## For anyone reading the source

This is the classic "declared but never submitted" pattern: the classes, the registry keys, the pattern builder, the tag mapping and the callback are all written and correct-looking. The single missing piece is two `register(eventBus)` calls in the mod constructor. That is worth knowing before concluding the feature is unimplemented — it is implemented, just not connected.

The mod also ships roughly 165 KB of design documents describing this and other systems in far more detail than the current build implements. Those documents are **plans**, and this guide deliberately describes only what the shipped code does.

[Back to index](index)
