---
title: "Getting started"
navigation:
  title: "01 Getting started"
items:
  - lights_up:spotlight_block
---

# Getting started

The mod adds one block, the spotlight (`lights_up:spotlight_block`). Getting hold of it takes a command, and recognising it in your inventory takes some knowledge.

## Obtaining it

There is **no creative tab entry**. The mod registers a block item but never adds it to any creative mode tab, so it does not appear anywhere in the creative inventory and cannot be found by searching.

The only way to obtain it is a give command targeting `lights_up:spotlight_block`.

There is also **no crafting recipe** and **no loot table**, which means:

- It cannot be crafted, smelted, or traded for.
- Breaking a placed spotlight **drops nothing** — the block is destroyed and nothing is returned.

Treat every spotlight you place as permanently spent.

## What it looks like in your inventory

Two absences make the item hard to identify:

- **No model or texture.** The mod ships no blockstate, block model, item model, or texture, so both the placed block and the held item render as the missing-model placeholder rather than as a lamp.
- **No language file.** The mod ships no translations at all, so the item's name displays as the raw translation key `block.lights_up.spotlight_block` instead of a readable name.

Neither is a crash — the block works. It simply has no art or naming yet.

## Placing it

Place the spotlight like any block. Its facing is set from where you are looking: the block faces **opposite** the nearest side of your view direction, the same convention that observers and pistons use. All six directions are valid, and the default state faces up.

The block itself is a small pedestal rather than a full cube — it occupies the middle 12 of 16 units horizontally and only 6 units tall, sitting on the lower part of its block space. It does not block your view, does not suffocate you, and does not occlude neighbouring faces.

Once placed, the beam appears immediately along the facing direction. See [02 The light beam](02_the_light_beam).

## What you cannot do

There is **no way to configure a placed spotlight**. The mod provides no GUI, no menu, no right-click interaction, no wrench-style item, no command, and no config file. Every spotlight therefore emits an identical beam.

The block entity does contain fields for colour, intensity, and cone angle, but nothing in the mod exposes them to players. See [02 The light beam](02_the_light_beam) for exactly what you get.

[Back to index](index)
