---
title: Getting Started
navigation:
  title: Getting Started
description: All eight recipes, and the unusually generous creative tab.
---

# Getting started

## The paper chain

A Note Grid is just two sheets of paper:

<recipe id="cc_mb:note_grid"/>

Paper Paste repairs damaged grids. The recipe yields **16** from one sheet of paper and a water bucket:

<recipe id="cc_mb:paper_paste"/>

There is also a second, bucket-free route: **use paper on a water cauldron**. It consumes one paper, lowers the cauldron by a level, and gives the same 16 paste with a slime-splat sound. Handy when you are working next to a cauldron rather than carrying buckets.

## The tools

The Awl punches notes and doubles as a tempo wrench. It has **1024 durability**:

<recipe id="cc_mb:awl"/>

The Sound Shard records sounds. It needs an **echo shard**, so plan an Ancient City trip:

<recipe id="cc_mb:sound_shard"/>

## The blocks

The Music Box is a note block wrapped in planks:

<recipe id="cc_mb:music_box_block"/>

The Puncher Box is the same shape with an **Awl** at the centre instead:

<recipe id="cc_mb:puncher_box_block"/>

The Perforation Table takes **two Note Grids** as its work surface:

<recipe id="cc_mb:perforation_table_block"/>

The Sound Box accepts **any block from the `#minecraft:noteblock_top_instruments` tag** at its centre, so whichever instrument block you have spare will do:

<recipe id="cc_mb:sound_box_block"/>

## What the creative tab hands you

The tab is titled with the Music Box's own name — there is no separate tab translation key, so no orphan can exist. Its contents are more useful than a plain item list:

- The four blocks and the four items.
- **Vanilla slime ball and shears.** These are not decoration: they are the tools that select two of the Perforation Table's modes. See [03 Perforation Table](03_perforation_table).
- **Pre-sized blank Note Grids** in 2, 4, 8, 16, 32 and 64 pages, each named `Note Grid(n)`. Crafted grids start at one page, so these save a lot of connecting.
- **One pre-punched song**, *Little Star*, named in gold — a six-page arrangement of Twinkle Twinkle Little Star you can drop straight into a Music Box to hear the machine work.
- **Every tunable instrument block, renamed to its instrument.** Cherry leaves appear as "Harp", sand as "Snare", gold block as "Bell", and so on through all twenty vanilla instruments including the three weathered trumpet variants. The tab doubles as an instrument reference chart, which is exactly what you need when choosing what to put under a Music Box.

That last list is generated, not hardcoded: the mod walks the instrument registry and, if it finds a tunable instrument its own table does not cover — for instance one added by another mod — it **scans the whole block registry** to find a block that provides it and adds that too, labelled with the instrument's internal name. Modded instruments therefore appear in the chart automatically.

## The shortest path to sound

1. Craft a **Note Grid** and an **Awl**.
2. Craft a **Perforation Table**, put the grid in, hold the Awl, and punch some notes.
3. Craft a **Music Box** and place an instrument block **underneath** it.
4. Put the grid in the box and give it a redstone signal.

[Back to index](index)
