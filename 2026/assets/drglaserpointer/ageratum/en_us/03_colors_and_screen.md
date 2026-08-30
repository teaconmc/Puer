---
title: Colours and the Pointer Screen
navigation:
  title: Colours and the Pointer Screen
description: The four laser colours you can cycle through, and the four automatic screen colours on the pointer's display.
---

# Colours and the pointer screen

The Laser Pointer carries two byte data components, and they control two different things.

| Component | Meaning | Who sets it |
|:---|:---|:---|
| `drglaserpointer:laser_color` | The beam and mark colour | You, with `Shift` + mouse scroll |
| `drglaserpointer:screen_color` | The background colour of the pointer's little screen | The mod, automatically, from what you are aiming at |

Both default to `0`.

## Switching the laser colour

Hold the pointer in your **main hand**, hold **`Shift`** (the vanilla sneak key), and **scroll the mouse wheel**. Scrolling up steps the colour index forward, scrolling down steps it backward, and both wrap around `0 → 1 → 2 → 3 → 0`. While this is happening the scroll event is cancelled, so your hotbar selection does not change.

| Index | Colour | Beam / mark tint |
|:---|:---|:---|
| `0` | Blue *(default)* | `#78E0FF` |
| `1` | Red | `#FF7864` |
| `2` | Yellow | `#FFBC4C` |
| `3` | Green | `#78FF78` |

The colour is stored on the item stack, so each pointer keeps its own colour, and the value is also used for the marker's label texture — see [02 Marking targets](02_marking.md).

Two limits follow from the implementation:

- Only the **main-hand** stack is recycled. An off-hand pointer keeps whatever colour it already had.
- The switch is applied on the server to the stack in your main hand, so it works in multiplayer without any extra permission.

## The beam itself

The beam is a very thin double quad (about `0.005` blocks half-width) drawn from your hand to the aim point. It fades out along its length: the far end's alpha drops as the hit distance approaches the configured laser range, so a beam at maximum range is almost transparent at the tip. The mod registers its own render pipeline `drglaserpointer:laser` for this.

Beams from **other players** are drawn too, using the laser colour on their held stack and a distance value the server relays for them.

## The pointer screen

While the pointer is in your main or off hand, its model shows a small live screen with:

- The **distance** to the aim point, as `%1$s m` with one decimal. When nothing is hit at all this reads `??.? m`.
- The **target's name**, wrapped to at most three lines. Blocks additionally render two small copies of the block's item model next to the text.
- A **mark hint** line in yellow: `<key> to mark`, filled in with your current *Use Item* key.

The screen's background colour is chosen automatically each frame from your aim:

| Screen colour | Background | When |
|:---|:---|:---|
| `0` | Dark green `#2B4738` | Nothing hit, or an ordinary block |
| `1` | Green `#096111` | Any non-hostile entity, **or** a block in the `c:ores` tag |
| `2` | Red `#CB2B00` | A hostile mob (anything implementing the vanilla `Enemy` interface) |
| `3` | Yellow `#9A862D` | Exactly `minecraft:dirt` |

Because the ore check uses the common `c:ores` tag, ores added by other mods light the screen green as long as they are tagged correctly. The dirt check is a literal block comparison, so podzol, coarse dirt and rooted dirt do **not** turn the screen yellow.

Pointers that are **not** in a hand have their screen colour reset to `0` every tick, and their screen renders blank, so a pointer lying in your inventory never shows stale data.

[Back to index](index)
