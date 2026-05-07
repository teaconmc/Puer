---
title: Writing Music
navigation:
  title: Writing Music
description: Compose in a book and quill using Note Block Studio key letters, then merge it onto a grid.
---

# Writing music

Punching 4096 beats by hand is not the only option. The mod can read music **out of an ordinary book and quill**, which is by far the fastest way to enter a long piece — and nothing in the game tells you it exists.

## One book page is one grid page

Write your music into a **writable book**. Each book page becomes one Note Grid page, up to the 64-page ceiling; extra book pages are ignored.

Within a page:

- **Beats are separated by a full stop `.`** — every dot advances one beat.
- **Each character inside a beat is one note.** Put several letters together and they sound as a chord.
- **Anything the mod does not recognise is silently skipped**, so bar lines, spaces and comments between dots do no harm.

## The letters are Note Block Studio keys

The character-to-pitch mapping is exactly Note Block Studio's piano-row layout, which means a transcription you already have can be typed in directly:

| Pitch | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 |
|:---|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| Key | `1` | `q` | `2` | `w` | `3` | `e` | `r` | `5` | `t` | `6` | `y` | `u` | `8` |

| Pitch | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 |
|:---|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| Key | `i` | `9` | `o` | `0` | `p` | `z` | `s` | `x` | `d` | `c` | `v` | `g` |

So `1.q.2.w` is four ascending single notes, and `1e t.` is one beat containing three notes at once.

## Merging a book onto a grid

The Music Box performs the merge. Hold a **writable book** — or another Note Grid — and use it on a Music Box that already contains a grid. The box combines the two and **ejects a brand-new Note Grid** carrying the result, with an anvil sound to confirm.

Two important constraints:

- **This is creative-mode only.** The merge path checks for instant-build ability, so on a survival server you cannot convert a book into a grid this way. Survival composition goes through the Perforation Table.
- **The Music Box must not be powered.** Merging is one of the several interactions gated on the box being idle.

Merging overlays notes rather than appending them: page 1 of the book merges into page 1 of the grid, page 2 into page 2, and so on for as many pages as both share. That makes the book an excellent way to **layer a harmony onto an existing melody** — write the counter-melody in the book, merge, and both parts now sound together.

## Which route to use

| Situation | Best route |
|:---|:---|
| Survival play | Perforation Table, PUNCH mode |
| Transcribing an existing song | book and quill, then merge in creative |
| Adding a second voice to a finished grid | book and quill, then merge |
| Reordering finished sections | CUT and CONNECT at the table |

## Next

- Making it play: [05 The Music Box](05_music_box)
- Punching by redstone instead: [07 Puncher Box and technical notes](07_puncher_box_and_technical)

[Back to index](index)
