---
title: Quick Switch to Hand
navigation:
  title: Quick Switch to Hand
description: The Z key that temporarily swaps a Laser Pointer out of your inventory and back again.
---

# Quick switch to hand

You do not have to keep the pointer on your hotbar. The mod adds one key mapping that pulls it into your hand while held, and puts everything back when you let go.

| Setting | Value |
|:---|:---|
| Translation key | `key.laserpointer.switch_to_laser_pointer` |
| Default key | `Z` |
| Category | `drglaserpointer:laserpointer` ("DRG Laser Pointer") |

## How it behaves

- **Press `Z`** — if neither your main hand nor your off hand already holds a pointer, the client scans your whole inventory from slot `0` upward for the first Laser Pointer and asks the server to swap that slot with your **currently selected hotbar slot**.
- **Release `Z`** — if a pointer is now in your main or off hand, the client asks the server to swap the same slot back, restoring your previous item.

The scan covers the entire container, so a pointer in your main inventory rows or in the off-hand slot can be found. Because the swap is a plain slot exchange, whatever was in your selected hotbar slot ends up in the pointer's old slot for the duration.

## Things to watch for

- The key is ignored while any screen (inventory, chat, a menu) is open.
- The remembered slot is a single client-side value. If you press `Z` when no pointer exists anywhere, nothing is sent and no slot is remembered.
- Releasing `Z` swaps back using that remembered slot. If your inventory was rearranged in between — by a container, another player, or a command — the swap-back will move whatever is in that slot now, not necessarily the item you started with.
- The server only checks that the requested slot number is inside the inventory. It does not verify that the slot actually contains a Laser Pointer, so the swap is a general slot exchange rather than a pointer-specific action.
- The taking-out and putting-away sounds (`laser_on` / `laser_off`) fire from the normal hand-change detection, so a quick tap of `Z` produces both.

[Back to index](index)
