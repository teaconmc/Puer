---
title: The Music Box
navigation:
  title: The Music Box
description: Playback, tempo, octave, the instrument underneath, and comparator output.
---

# The Music Box

## Block states

| State | Meaning |
|:---|:---|
| `facing` | horizontal, set away from the placer |
| `has_note_grid` | a grid is loaded |
| `powered` | a redstone signal is present |

The block **only ticks while `powered` and `has_note_grid` are both true**. Redstone is the on switch: give it a signal and it plays, cut the signal and it stops where it is.

## The instrument comes from below

The Music Box reads its instrument from the **block directly underneath it**, exactly like a vanilla note block. It refreshes that reading when it is placed and whenever the block below changes, so swapping the instrument is as simple as replacing one block — no re-inserting the grid.

The creative tab lists every tunable instrument block renamed to its instrument, which makes it a ready-made reference for this. See [01 Getting started](01_getting_started).

Put a **Sound Box** underneath instead and the box plays a recorded sound rather than a vanilla instrument — see [06 Sound Shards](06_sound_shard).

## Loading and unloading a grid

| Action | Result |
|:---|:---|
| Use a Note Grid on an empty box | insert it |
| **Sneak** + use on a loaded box | take the grid back out |

## Tempo: the Awl is a wrench

Tempo is measured in **ticks per beat**, from **1 to 20**, defaulting to **10**. Lower is faster.

The value is carried **on the Awl itself** as a data component, and transferred to boxes:

1. **Use the Awl in the air** to cycle its stored value. A normal click steps up and wraps from 20 back to 1; a **sneak** click steps down and wraps from 1 to 20. The new value appears in gold on your action bar.
2. **Use the Awl on a Music Box** — without sneaking — to write that value into the box. You get a spyglass click and the new tempo in dark aqua.
3. **Use the Awl on a Music Box while sneaking** to simply *read* its current tempo, shown in dark green.

So one Awl can carry a tempo around and stamp it onto a whole wall of boxes, and you can always query a box without changing it.

The same Awl also reports a **Puncher Box**'s current state when used on one.

## Octave

The octave offset runs from **−2 to +2**, giving five ranges from the same punched pitches. To change it, **left-click the Music Box while holding the Awl in your main hand**. The box cycles its octave and — importantly — **the block is not broken**, in survival or creative.

That is the only way to change octave. There is no GUI for it.

## Stepping through by hand

While a loaded box is **not powered**, you can advance it one beat at a time:

- **Left-click** it (with anything other than an Awl), or
- **Use** it (with anything that is not an Awl, book or grid).

Each interaction plays exactly one beat. This is the tool for checking your work — you can walk a phrase note by note and hear precisely what is punched, without wiring up redstone. It also means a Music Box makes a serviceable hand-played instrument.

## Comparator output

The Music Box has an **analog output signal**, so a comparator reading it reports playback progress. That is what lets you chain boxes: run a comparator off one box to trigger the next, and a piece longer than 64 pages becomes possible across several boxes.

## Other properties

| Property | Value |
|:---|:---|
| Strength | 0.8 — very quick to break |
| Material / sound | wood |
| Note block instrument it provides | bass |
| Flammable | **yes**, ignited by lava |

Being wooden and flammable, a Music Box wall next to a lava feature is a genuine fire risk.

## Next

- Recording custom sounds to play through it: [06 Sound Shards](06_sound_shard)
- Automating grid production: [07 Puncher Box and technical notes](07_puncher_box_and_technical)

[Back to index](index)
