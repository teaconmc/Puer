---
title: The Note Grid
navigation:
  title: The Note Grid
description: Pages, beats and pitches — the data model and its hard limits.
---

# The Note Grid

The Note Grid is the mod's medium. It stacks to 1, because each grid is an individual roll of punched paper with its own contents.

## Three nested limits

| Level | Limit | Meaning |
|:---|--:|:---|
| Notes per beat | **25** | pitches 0–24, played simultaneously as a chord |
| Beats per page | **64** | a page is always exactly 64 beats long |
| Pages per grid | **64** | a grid holds 1 to 64 pages |

So one full grid is 64 × 64 = **4096 beats**, each of which can carry up to 25 simultaneous notes.

Two details follow from how a beat is stored:

- **A beat is a set, not a list.** Punching a pitch that is already present does nothing — you cannot stack the same note twice in one beat.
- **Pages are fixed-length.** A newly created page is 64 empty beats; there is no such thing as a short page. Trailing silence is free, because empty beats are stored as a run length rather than individually.

## Reading a grid without a table

Hover over a Note Grid and its tooltip shows **`Page size: n`** — how many pages it holds. That is the fastest way to tell a one-page scrap from a 64-page roll in your inventory.

Crafted grids always start at **one page**. To get longer ones you either take a pre-sized blank from the creative tab or **connect** grids together at the Perforation Table.

## Where the notes actually live

The punched pattern is stored on the item as the data component `cc_mb:notes`. It is persistent, network-synchronized and cached, which means a grid keeps its music through inventories, chests, hoppers, item frames and death drops like any other component data.

Internally the encoding is compact and deliberately so: each note is one byte, a page break is a zero, and runs of empty beats are stored as a single negative byte. A very sparse 64-page grid therefore costs far less than a dense one. The format is strict about its terminator — a malformed code is rejected with a log error and treated as empty rather than partially loaded.

## Pitch and the instrument are separate

A grid stores **only pitches**. It has no instrument, no tempo and no octave baked in. Those three live elsewhere:

| Property | Where it is stored |
|:---|:---|
| Pitch pattern | on the **Note Grid** (`cc_mb:notes`) |
| Instrument | the block **underneath the Music Box** |
| Tempo | on the **Music Box** (set from an Awl) |
| Octave offset | on the **Music Box** |

This separation is the mod's main compositional lever: the same grid played on a different instrument, at a different tempo, or shifted an octave, is a different piece of music. You never need to re-punch a grid to re-arrange it.

## Damage and repair

Grids can be damaged, and **Paper Paste** repairs them at the Perforation Table in `FIX` mode. See [03 Perforation Table](03_perforation_table).

## Next

- Punching, cutting, connecting and repairing: [03 Perforation Table](03_perforation_table)
- Composing without punching a single hole: [04 Writing music](04_writing_music)

[Back to index](index)
