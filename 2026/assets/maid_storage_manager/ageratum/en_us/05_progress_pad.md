---
title: The Progress Pad
navigation:
  title: The Progress Pad
description: Hang it in an item frame and it becomes a live dashboard — and rotating the frame changes what it shows.
---

# The Progress Pad

`progress_pad` is the addon's monitoring item, and its delivery mechanism is the most surprising thing in the mod: **you put it in an ordinary item frame.**

## How it works

The addon patches the tick of block-attached entities. Server-side, every tick, for each item frame:

- if the framed item is a **Progress Pad**,
- and the tick count is divisible by **5** — so it refreshes about four times a second,
- it reads the pad's stored metadata, which contains **a maid's UUID**,
- resolves that UUID to a live maid,
- and pushes an update packet to **every player tracking that frame**.

So the pad is bound to a specific maid, and the frame is a public display: anyone who can see the frame sees her progress, without opening anything.

## 🔑 Rotating the frame changes how many lines it shows

This is the part nobody would guess. The frame's **rotation** is read as a setting:

| Frame rotation | Entries displayed |
|:---|:---|
| 0 | **1** |
| 1 | **15** |
| 2 or 3 | **10** |

And the pad's own style multiplies it:

| Style | Multiplier |
|:---|:---|
| Normal | ×1 |
| **`SMALL`** | **×2** |

So a small-style pad in a frame at rotation 1 shows **30** entries, while the same pad at rotation 0 shows **2**. Rotating an item frame is a UI control here, and nothing in the game hints at it.

Practical reading of the table: **rotation 0 is a single-line ticker**, rotation 1 is the **maximum** detail, and rotations 2 and 3 are a middle setting. If your pad is showing one line and you expected a list, rotate the frame.

## It renders like a map, not like an item

Two client mixins change how the frame draws. For items that declare themselves map-like and are currently available, the addon:

- stores the stack into the frame's render state through its own interface, and
- **suppresses the default block-model submission** for that frame.

The effect is that the pad fills the frame as a flat readable surface — the way a map does — rather than appearing as a small item model floating in the frame. That is what makes a dashboard legible on a wall.

The same map-like rendering path serves the addon's other paper items, which is why the interface is generic rather than pad-specific.

## Reuse rather than re-craft

The Progress Pad has **three recipes**, more than any other item:

| Recipe | Type |
|:---|:---|
| `progress_pad` | altar |
| `progress_pad_filled_map` | altar — a variant path |
| `progress_pad_reuse` | **`list_clear`** |

The filled-map variant is a strong hint about the item's nature: it is built like a map because it is displayed like one.

The `list_clear` route means a pad bound to one maid can be **wiped and re-bound** to another rather than thrown away.

## Building a monitoring wall

1. Craft one pad per maid you want to watch.
2. Bind each to its maid.
3. Frame them in a row.
4. Set each frame's rotation for the amount of detail you want — rotation 1 for the maid you are debugging, rotation 0 for the ones you only need a heartbeat from.
5. Use `SMALL` style pads where you want double the lines in the same space.

Because updates are pushed to everyone tracking the frame, a wall like this works as shared infrastructure on a server rather than as a private readout.

[Back to index](index)
