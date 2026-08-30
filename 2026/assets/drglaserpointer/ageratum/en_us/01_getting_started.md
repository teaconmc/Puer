---
title: Getting Started
navigation:
  title: Getting Started
description: Craft the Laser Pointer, find it in the creative inventory, and learn what happens when you take it out.
---

# Getting started

The mod registers exactly one item: **Laser Pointer** (`drglaserpointer:laser_pointer`). It stacks to **1**, has no durability bar, and carries two default data components (`drglaserpointer:laser_color` = `0`, `drglaserpointer:screen_color` = `0`).

## Crafting

The Laser Pointer has a normal shaped crafting recipe.

<recipe id="drglaserpointer:laser_pointer"/>

Reading the pattern row by row:

| Row | Left | Middle | Right |
|:---|:---|:---|:---|
| Top | Spyglass | Redstone Lamp | Glass |
| Middle | Stone Button | Copper Ingot | *(empty)* |
| Bottom | *(empty)* | Iron Ingot | *(empty)* |

The recipe yields one Laser Pointer. All six ingredients are vanilla items, so nothing has to be unlocked first.

## In the creative inventory

The item is added to the **vanilla** *Tools and Utilities* creative tab. The mod does **not** register a creative tab of its own, so do not look for a "DRG Laser Pointer" group.

## Taking it out

The pointer is a client-driven device, and several things happen the moment it reaches your main hand or off hand:

- A `laser_on` sound plays at your position for everyone nearby. Putting it away plays `laser_off`.
- A thin laser beam is drawn from your hand to whatever you are aiming at. In **first person** the beam only appears once the item is fully raised (the in-hand animation finished and the item has been held for more than 6 ticks); in **third person** it is drawn immediately.
- The pointer's own little screen starts showing live information — see [03 Colours and the pointer screen](03_colors_and_screen.md).
- The item tooltip lists the two controls: `<Shift+Mouse Scroll> switch color` and `<Z> Switch to hand`.

Two vanilla behaviours are suppressed while the pointer is in your **main hand**:

- **Left click (attack) is cancelled.** You cannot punch or mine with it.
- The **swing animation** is cancelled, so your arm stays in the pointing pose instead of flailing.

Spectators do not render a beam at all.

## Off-hand use

The pointer works in the off hand too. If it is in the off hand and your main hand holds something else, right-clicking still places a mark. If the pointer is in **both** hands, only the main-hand one marks.

## Reading guide

- [01 Getting started](01_getting_started.md) — this page.
- [02 Marking targets](02_marking.md) — marking blocks, mobs and items, the mark entity, and the HUD label.
- [03 Colours and the pointer screen](03_colors_and_screen.md) — the four laser colours and the four screen colours.
- [04 Quick switch to hand](04_quick_switch.md) — the `Z` key that pulls the pointer out of your inventory.
- [05 Sounds and advancements](05_sounds_and_advancements.md) — the six sound events, the block tags, and the three advancements.
- [06 Configuration](06_configuration.md) — the common and client config files.
- [07 Networking and limits](07_networking_and_limits.md) — the payloads, multiplayer behaviour, and known rough edges.

[Back to index](index)
