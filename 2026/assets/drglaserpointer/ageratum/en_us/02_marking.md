---
title: Marking Targets
navigation:
  title: Marking Targets
description: How marks are placed on blocks, mobs and dropped items, how long they live, and what the HUD label shows.
---

# Marking targets

Marking is the whole point of the mod. Aim the pointer and press the **use** key (right click by default — the pointer's screen prints the actual key it reads from your controls). The client resolves what you are looking at and asks the server to spawn a `drglaserpointer:laser_pointer_mark` entity there.

## What you can mark

The pointer's own ray trace is wider than the vanilla one: it accepts blocks, anything normally pickable, **dropped items**, and **projectiles**. Spectators are skipped.

| Target | Mark position | Mark colour | Extra effect |
|:---|:---|:---|:---|
| Block | The exact hit point on the block face | Your current laser colour | Fires `drglaserpointer:mark_block_trigger`; may play a voice line |
| Living entity | Follows the entity every tick | **Not set** — renders as the blank/white label | The target **glows** (outline) for you |
| Dropped item / projectile / other non-living entity | The hit point, fixed | Your current laser colour | — |

Two details worth remembering:

- Marks on **living** entities deliberately leave the colour unset, so they use the blank label texture rather than a coloured one. The colour information for a mob comes from the glow outline instead.
- Marks on living entities **track** the mob: the server moves the marker to the entity's position each tick, and discards it as soon as the entity is gone.

## Mark lifetime and replacement

- A mark lives for **200 ticks (10 seconds)**, counted on the server.
- A mark on an entity also disappears immediately if that entity is removed.
- Placing a new mark clears your old ones. On the **entity** path every mark owned by you is discarded, plus any mark already pointing at that same living entity. On the **block** path only the **first** mark found that belongs to you is discarded, then the search stops — so if several of your marks somehow coexist, block marking clears them one at a time.
- Ownership is tracked by the **player name string** (`OwnerName`), not by UUID.

## The marker in the world

The marker entity is tiny (`0.0625 x 0.0625`), fire-immune, cannot be damaged, and has a client tracking range of 8 chunks. It is rendered at full brightness (light level 15) with a small shadow, in one of two shapes:

- **Sphere** — the default.
- **Cube** — enabled with the client option `cubeMarkModel`; the cube model is drawn at 75 % scale.

The label texture follows the mark colour: blue, red, yellow, green, or blank.

## The HUD label

For every mark within the client's `markDisplayRange` (default 120 blocks), the mod draws a framed label on your HUD. It contains:

- **Top line** — the marker owner's name.
- **Middle** — an icon plus the target's name (up to two lines).
- **Bottom line** — the distance, formatted as `%1$s m` with one decimal.

The icon depends on the target:

- **Blocks and dropped items** render the actual item. A dropped item's name is shown as `<name> (Item)`.
- **Vanilla living entities** use a face icon from `textures/gui/face/<entity_path>_face.png`.
- **Players, armour stands, and any entity from a non-`minecraft` namespace** fall back to the shared `unknown.png` face.

When the marked point is off screen, a small arrow (up, down, left, or right) is drawn beside the label and the label itself is clamped to the edge of the screen, so it never leaves the viewport. Labels are hidden while the GUI is hidden (F1). At GUI scales above 3 the whole label layer is scaled back down to 3 so the labels do not become huge.

## Glowing mobs

Marks whose target is a living entity make that entity **glow** on your client. The mod collects those entity ids every client tick and forces the vanilla "should appear glowing" check to return true for them. This is client-side only — it does not use the vanilla glowing effect, and it disappears with the mark.

[Back to index](index)
