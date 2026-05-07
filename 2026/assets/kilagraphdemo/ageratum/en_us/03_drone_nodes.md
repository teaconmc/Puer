---
title: "Drone nodes"
navigation:
  title: "03 Drone nodes"
---

# Drone nodes

A drone program is a KilaGraph node graph. The mod contributes twelve nodes, split into ones that **spend time** and ones that only **report information**.

## Action nodes — these cost ticks

Each of these advances the run clock. The exact tick cost is shown in each node's in-game tooltip.

| Node | What it does |
|:---|:---|
| Move | moves one cell in the chosen direction |
| Move To | flies straight to an absolute target cell (x, z) |
| Plant | plants a pumpkin seed on the current cell |
| Harvest | harvests a ripe pumpkin at the current cell, banking its score |
| Clear | clears whatever occupies the current cell — a crop or a rotten pumpkin |
| Wait | idles for a given number of ticks, letting pumpkins grow |

**Move To is priced by distance, not per use: 4 ticks per cell travelled.** That makes it the interesting one to optimise around. A short hop may be cheaper with Move; a long traverse is where Move To earns its keep. Because the cost scales, route planning matters more than instruction count.

**Harvest takes the whole merged block.** If ripe pumpkins have merged into a square, harvesting the cell banks the entire block's score at once. Growing and merging before harvesting is the core of a high score — see [04 Farm and scoring](04_farm_and_scoring).

**Clear is the only way to deal with rot.** A rotten pumpkin is worthless and occupies its cell until cleared, so a program that never checks for rot will slowly choke its own field.

## Information nodes — these are free

These report state without advancing the clock, so you can query as much as you like within one tick — subject only to the 10,000-step guard described in [02 The drone station](02_drone_station).

| Node | What it reports |
|:---|:---|
| Drone Position | the drone's current cell (x, z) |
| Scan Cell | a cell's state: plantable, ripe, rotten, and merge size |
| Score | the run's banked score so far |
| Tick Info | the current run tick |
| Print | appends a value to the run log |

## Scan Cell has two coordinate modes

This is the detail most likely to trip you up:

- **RELATIVE** takes a `dx`/`dz` **offset from the drone's current position**.
- **ABSOLUTE** takes `x`/`z` **field coordinates** — the same coordinate space Move To uses.

Mixing the two up produces a program that looks correct and scans the wrong cells. If you are pairing a scan with a Move To, use ABSOLUTE so both refer to the same space.

Scan reports **merge size** as well as stage, which is what lets a program decide whether a square is worth waiting on or already at its cap.

## Print and the Log Panel

Print appends to a rolling log displayed in the station's Log Panel. It is your only introspection tool, and it pairs naturally with Step: single-step a tick, read what the graph printed, repeat.

Remember the log keeps only the **most recent 200 lines**.

## Suggested first program

A minimal loop that produces a non-zero score:

1. **Scan Cell** the current position to check it is plantable.
2. **Plant** a seed.
3. **Wait** long enough for it to ripen.
4. **Harvest**.
5. **Move** to the next cell and repeat.

That works, but it ignores merging and rot — the two mechanics that separate a low score from a high one. Read [04 Farm and scoring](04_farm_and_scoring) before optimising.

[Back to index](index)
