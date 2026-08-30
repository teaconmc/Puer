---
title: "Getting started"
navigation:
  title: "01 Getting started"
items:
  - link_portals:portal_activator
---

# Getting started

## What counts as frame material

Two blocks are accepted, and the mod treats them as completely interchangeable:

| Block | Where it comes from |
|:---|:---|
| `link_portals:portal_frame` | the mod — but see the warning below |
| `minecraft:crying_obsidian` | vanilla — piglin bartering, ruined portals |

::: warning
**In practice you will build with crying obsidian.**

The mod's own frame block has no recipe (there is no `data/` directory in this checkout) and it is not added to any creative tab, so it cannot be found in creative search. Getting it requires `/give link_portals:portal_frame`.

Worse, a placed frame block **drops nothing when you mine it**. It declares `requiresCorrectToolForDrops()`, but the loot table that declaration would consult does not exist, so there is nothing to drop. Treat any frame block you place as spent.

Crying obsidian has none of these problems and works identically.
:::

## Frame shape

Build a closed rectangular ring, exactly like a nether portal frame. The mod measures the **interior** — the empty hole, not counting the ring itself:

| Dimension | Minimum | Maximum |
|:---|---:|---:|
| Interior width | 2 | 21 |
| Interior height | 3 | 21 |

So the smallest portal has the same 2 x 3 opening as a nether portal, and the largest is 21 x 21.

Two more rules:

- **The interior must be clear.** Every interior block has to be air or a replaceable block such as tall grass. A single torch or slab inside makes the frame unusable until you clear it.
- **Corners are required.** The full ring is checked, including the four corner blocks. A nether-portal-style frame with the corners left out will not be accepted.

Portals are always **vertical**. The portal block only carries a horizontal axis, so there is no way to build a floor or ceiling portal.

## Lighting it

Hold the **Portal Activator** and right-click any block of the ring.

::: info
**Which face you click does not matter.** The detection routine takes the clicked face as an argument but never reads it — it searches all six directions from the block you hit for an empty space, then works outwards to find the ring. Clicking the outside of the frame works exactly as well as clicking into the hole.
:::

The activator is **not consumed**, has no durability and has no cooldown. One is enough forever.

::: warning
**A failed activation is silent.** If you right-click frame material and the mod cannot find a valid ring — wrong size, blocked interior, missing corner — the item still reports success to the game, so your arm swings and nothing else happens. There is no chat message and no sound to tell you why.

When nothing opens, re-check the three rules above: interior at least 2 x 3, interior completely clear, ring closed including corners.
:::

## The naming screen

A successful activation opens a screen with two text fields, both limited to 64 characters:

| Field | What it does |
|:---|:---|
| **Portal Name** | a label for this one portal, shown in destination lists |
| **Network Name** | the link — every portal with the same network name is connected |

Then **Done** lights the portal, or **Cancel** leaves the frame unlit.

::: info
**Leave the network name empty and it becomes `default`.** Both the screen and the server apply that fallback, so portals you never named still form one shared network.

The portal name may be left empty. Unnamed portals still appear in destination lists, just labelled by dimension and coordinates instead.
:::

## Which side is the front

The side you were standing on when you activated the portal becomes its **front**. The server works this out from your position relative to the centre of the frame at that moment.

This matters later: exit orientation at the destination depends on the **source portal's axis** as well as the destination's own stored facing. [02 Travelling between portals](02_travelling_between_portals) covers what is and is not asserted about that.

## First run through

1. Gather crying obsidian and build a closed ring with an interior of at least 2 x 3.
2. Clear the interior completely.
3. `/give` yourself a Portal Activator, or take one from the **Link Portals** creative tab.
4. Right-click the frame, type a network name — say `home` — and press **Done**.
5. Go somewhere far away, or into another dimension, and build a second ring.
6. Activate it with the **same** network name.
7. Walk into either one.

With exactly two portals in a network there is no menu at all: you step in and arrive.

[Back to index](index)
