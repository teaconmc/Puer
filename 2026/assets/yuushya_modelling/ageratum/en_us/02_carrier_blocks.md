---
title: The Three Carrier Blocks
navigation:
  title: Carrier Blocks
description: Show block, item block and text block — what each one carries and how they differ.
---

# The Three Carrier Blocks

Everything you build sits on one of three blocks. They share identical physical properties (`strength(4.0)`, `noOcclusion`, `forceSolidOn`, `LIT`-driven light level) and differ only in **what they display**.

| Block | Registry id | Carries |
|:---|:---|:---|
| Show block | `yuushya:showblock` | Blockstates — any block's appearance |
| Item block | `yuushya:itemblock` | Item models |
| Text block | `yuushya:textblock` | Rendered text |

Each has its own block entity (`showblockentity`, `itemblockentity`, `textblockentity`), because each has to persist what it is currently displaying.

## Show block — the main one

The show block is what most builds are made of. It holds a **blockstate** captured with `get_blockstate_item`, then lets you transform that appearance freely. Multiple appearances can occupy one show block as separate **layers** (the mod calls them slots) — that is how a single block space becomes a chair, a lamp or a railing corner.

Because it stores a real `BlockState` (one of the five data components is literally `BLOCKSTATE`), it inherits that block's texture and model faithfully rather than approximating it.

## Item block — for item models

The item block displays **item** models instead of block models. This matters because many things you would want as decoration only exist as items — tools, food, plants with item-only renders. `ItemBlockScreen` is its editor, and it is the largest screen class in the mod.

## Text block — for lettering

The text block renders text you supply, with the same transform tools available for positioning. Its editing surface is `TextBlockScreen`, and text content travels over a dedicated `TextLinesPacket`.

::: warning
**The text block has no loot table.** The mod ships exactly two — `showblock.json` and `itemblock.json` — and no `textblock.json`. Breaking a placed text block therefore drops nothing, in survival and creative alike.

It also has **no recipe**, so a text block cannot be obtained legitimately in survival at all: `/give @s yuushya:textblock` or the creative tab are the only sources, and once you break it, it is gone. Back up your lettering by copying the block rather than breaking it — `getCloneItemStack` is implemented, so **pick-block (middle-click) works and preserves the content**.
:::

## The shared LIT state

All three respond to the `LIT` blockstate, and `get_lit_item` is the tool that toggles it. A carrier can therefore be made to glow, which is how you build lamps out of appearances that are not themselves light sources.

## Pick-block preserves your work

`getCloneItemStack` is overridden on the transform block base class, so middle-clicking a finished carrier gives you an item that **remembers its layers and transforms**. This is the intended way to duplicate a piece of furniture you have already tuned — build once, then copy.

Combined with the text block's missing loot table, the rule of thumb is: **copy, don't break.**

[Back to index](index)
