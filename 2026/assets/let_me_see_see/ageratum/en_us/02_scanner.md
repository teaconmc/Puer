---
title: The Scanner
navigation:
  title: The Scanner
description: Point at a block or a mob and find out which classes are behind it.
---

# The Scanner

The scanner answers one question: *what code is responsible for the thing I am looking at?*

## Usage

| Target | Action |
|:---|:---|
| A block in the world | Right-click it |
| A living entity | Right-click it |

Both paths feed the result into the class-scanning view, so you land in the same place as the [Class Explorer](03_class_explorer) but pre-filtered to the classes that matter for that target.

## What it collects

For a **block**, the analysis starts from the `Block` instance behind the clicked `BlockState`. For a **mob**, it starts from the entity instance. From there `RelateClassFinder` walks outward to related types — this is why the mod's own comment notes the block path *must* run on the client: it reaches renderer classes, which only exist client-side.

::: warning
**Both interactions are client-only.** `ScannerItem` guards every branch with `level.isClientSide()`, and returns `InteractionResult.SUCCESS` either way. On a dedicated server the item does nothing at all — it is not that the packet is rejected, it is that no code runs. This is a client-side inspection tool that happens to be shaped like an item.
:::

::: danger
**If class inspection is unavailable, the scanner fails with no feedback whatsoever.** You right-click, and there is no message, no error and no file. Check the log for "Cannot export class, instrumentation not available", and see [Troubleshooting](06_technical_notes) — it will not retry until you restart the game.
:::

## Why this is the right entry point

The Class Explorer can list every loaded class, which in a large modpack is tens of thousands of entries. Starting from "this block, right here" collapses that to a handful of directly relevant types, which is almost always what you wanted when you asked "how did they do that?".

Practical loop:

1. Right-click the block or mob you are curious about.
2. Read the collected class names.
3. Export the interesting ones so they persist (see [Class Explorer](03_class_explorer)).
4. If Fernflower is configured, read the decompiled source inline; otherwise jump out to your IDE.

## Appearance

The scanner has a hand-built Blockbench model (credited to XeKr in the model JSON) with an animated overlay layer — `scanner_fx.png` carries an `.mcmeta`, so the effect texture is animated rather than static. The same two-layer treatment applies to the other two items.

[Back to index](index)
