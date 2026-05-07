---
title: Zhen Bus and IO
navigation:
  title: Zhen Bus and IO
description: Per-face processors, the three IO types, and how neighbouring machinery connects.
---

# Zhen Bus and IO

## What the bus is for

A plain zhen block is a machine with faces. The **Zhen Bus** is a block that hosts **one processor per face**, so a single block position can run up to six independent processes and expose six independent IO surfaces.

Everything on the bus is per-face: the processor, the slot access map, and the capabilities offered to whatever is adjacent.

## Installing a processor

The only in-game route is the example item, described in [01 Getting started](01_getting_started):

1. Right-click air with `example_item` to select a face.
2. Right-click the bus to install an **unstable sieve** on that face.

Installation invalidates the block's capabilities so neighbours re-query immediately, and the block entity is marked for a client update — so pipes and hoppers notice the new face without needing a replacement.

There is a wrinkle worth recording. The item asks for the zhen type `magic_io:unstable_sieve`, but the id that is actually registered is **`magic_io:unstable_sieve_zhen`** — the requested id does not exist. It works anyway, because the type lookup **falls back** to the unstable sieve when a lookup misses, and the fallback is written to look for the correct `unstable_sieve_zhen`. The outcome is the intended one; it simply arrives via the fallback path rather than a successful lookup.

## Three IO types

| IO type | Display | Notes |
|:---|:---|:---|
| `item` | Item | slot-based, per-face insert and extract sets |
| `fluid` | Fluid | tank-based, capacity declared by the zhen type |
| `energy` | **FE** | handler-based, not slot-based |

Energy is the odd one out and deliberately so: item and fluid access is filtered by which slots a face exposes, whereas energy access **skips the slot check entirely** and simply hands over the energy handler if the processor has one. So an energy connection does not need a configured face slot map.

## What a neighbour actually sees

Both the plain zhen block and the Zhen Bus expose vanilla-style capabilities, so ordinary pipes, hoppers and cables from other mods can interact with them.

For a **plain zhen block**, per face:

- **Items** — a handler is offered only if that face has at least one insert or extract slot. The handler is bound to the intersection of the face's slots with the block's input and output sets, so a face can be input-only, output-only, or both.
- **Fluids** — offered only if the zhen type declares a tank capacity and the face has fluid slots.
- **Energy** — offered whenever the block has an energy component, with no face restriction.

For the **Zhen Bus**, the same three, but resolved through the **face's processor** first: no processor on that face means no capability at all on that face.

In every case, a capability request with a null direction returns nothing. These blocks have **no side-agnostic access** — you must connect to a specific face.

## Slot zones

Faces do not reference raw slot numbers in configuration; they reference **named zones** such as item-input-all, item-output-all, fluid-input-all and fluid-output-all. The default access map grants **all six faces** both the item zones and the fluid zones, and the default item layout is a single input slot and a single output slot.

That default matters when reading recipes: a recipe's `inputs` and `outputs` are keyed by these same zone names rather than by slot index. See [05 Recipes](05_recipes).

## Change notification

Every handler installs a change callback that notifies its IO component and marks the block entity dirty. This is why external automation stays in sync — an insert by a hopper propagates to the machine's own bookkeeping rather than needing a poll.

## What is not here

- **No GUI.** No menu type is registered for either the zhen block or the bus, so there is no screen to open, no slot layout to click and no in-game configuration of face access. Everything is done from the outside with the example item, hoppers and pipes.
- **No wrench or configuration tool** beyond the example item, and it only installs unstable sieves.
- **No network packets for IO** — only a recipe sync payload exists; see [05 Recipes](05_recipes).

With Jade installed you can at least *read* a bus's item and fluid contents by looking at it, which is the closest thing to an inspection UI the mod currently offers.

[Back to index](index)
