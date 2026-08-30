---
title: "Return scroll"
navigation:
  title: "Return scroll"
---

# Return scroll

The **Return Scroll** (`obeliskdepths:return_scroll`) is the item you use to leave the Obelisk Depths and get back where you entered from. It stacks to 16.

## How it works

The scroll only works while you are inside the **Obelisk Depths** dimension. Using it anywhere else just shows that the scroll only answers from within the depths.

1. Right-click (or otherwise use) the scroll while in the depths to start using it.
2. The item must be held for **60 ticks** (3 seconds) before it takes effect.
3. On completion the mod returns you to the return point bound to your dungeon session — in practice the source obelisk area you came from.
4. On a successful return the scroll is consumed (one item is removed), unless you are in Creative mode.

A portal-travel sound plays when the return succeeds.

## Outcome messages

The server reports the result through a short message, for example:

- `The scroll only answers from within the Obelisk Depths.` — used outside the dimension.
- `No active dungeon return point is bound to you.` — no session-bound return point.
- `Returned from the Obelisk Depths.` — success.
- `The return failed.` — teleport failed.
- `Returned from the Obelisk Depths using an emergency destination.` — the normal destination was unavailable and an emergency fallback was used.

Note that not all scroll uses guarantee the exact entered-from point: missing or incomplete stored return data can fall back to a safe alternative destination.

[Back to index](index)
