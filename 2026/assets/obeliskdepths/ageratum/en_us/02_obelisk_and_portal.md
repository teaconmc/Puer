---
title: "Obelisk & the portal"
navigation:
  title: "Obelisk & the portal"
---

# Obelisk & the portal

The **Obelisk** (`obelisk`) is a multi-part block (bottom, middle, top) that opens a portal to the Obelisk Depths. Right-click the obelisk to open the portal menu.

## The tribute

The portal menu has a single **Tribute** slot. Only a few items are accepted, and the choice sets the dungeon tier:

| Tribute item | Tier |
|:---|:---|
| Iron Ingot | 1 |
| Diamond | 2 |
| Netherite Ingot | 3 |
| Echo Shard | 4 |

The number of items also matters: a larger stack raises an *amount intensity* (logarithmic, capped at 0.80), which in turn raises the reward-weight multiplier (`1 + intensity`). Empty or unrecognised stacks are treated as invalid tribute.

## Starting the portal

Press the **Start** button (the menu also exposes a **Solo** mode button, which controls entry mode for the resulting portal). The server then:

1. Scans for an unclaimed dungeon site near the obelisk.
2. Prepares the dungeon chunks and generates the entry structure in the Obelisk Depths dimension.
3. On success, spawns a **Dungeon Portal** entity (`obeliskdepths:dungeon_portal`) next to the obelisk.

The tribute is only consumed after the portal is actually created; if activation fails, the stack stays in the slot and is returned when the menu closes. While a job is running the menu shows preparation stages and progress (site scanning, chunk loading, start generation, committing).

## Entering the dungeon

Once the portal is ready, walk into the **Dungeon Portal** entity to be teleported into the Obelisk Depths. The portal can only be opened from outside the dungeon dimension — using an obelisk inside the Obelisk Depths is denied.

If you destroy the obelisk, any dungeon sessions bound to that source obelisk are closed.

[Back to index](index)
