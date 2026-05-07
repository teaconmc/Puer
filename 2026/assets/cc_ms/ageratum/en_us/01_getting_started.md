---
title: Getting Started
navigation:
  title: Getting Started
description: The recipe chain, its real netherite cost, and your first working radio link.
---

# Getting started

## Everything starts at a lodestone

A channel is identified by a lodestone's position, and the receiver recipe consumes a lodestone. Since a vanilla lodestone needs a **netherite ingot**, MorSneak is a late-game mod despite its small footprint. Plan on visiting the Nether first.

## The three recipes

The radio receiver is the base component — four redstone around one lodestone:

<recipe id="cc_ms:radio_receiver_block"/>

The transmitter is an **upgrade of the receiver**, not a parallel craft — four quartz around a finished receiver:

<recipe id="cc_ms:radio_transmitter_block"/>

The portable radio stacks a receiver above a compass above a transmitter:

<recipe id="cc_ms:portable_radio"/>

## What a portable radio really costs

Because the transmitter consumes a receiver, and the portable radio needs one receiver *and* one transmitter, a single portable radio consumes **two receivers** — and therefore **two lodestones, i.e. two netherite ingots**, plus 8 redstone, 4 quartz and 1 compass.

The two blocks are far cheaper individually. Build a fixed transmitter/receiver pair first and only craft the portable radio once you actually need a mobile endpoint.

## Both blocks are proper stone-tier blocks

| Property | Value |
|:---|:---|
| Strength | 3.0 |
| Correct tool required for drops | **yes** — mine with a pickaxe |
| Note block instrument | bass drum |
| Map colour | stone |

Each has a loot table, so both drop themselves when mined properly.

## Your first link in four steps

1. **Place a lodestone.** Its position is now a usable frequency. Note the coordinates.
2. **Place a radio transmitter** somewhere with redstone access, and a **radio receiver** somewhere else — any distance, any dimension.
3. **Bind both to the lodestone.** Point a lodestone compass locked to that lodestone at each block and use it. The block plays an enchanting-table sound and its `enabled` state turns on.
4. **Power the transmitter.** Any adjacent redstone signal is transmitted; the receiver outputs the same strength on the other end.

Use the same compass on a block a second time to make it **leave** the channel — you will hear a grindstone sound instead.

## Where the creative tab helps

The `cc_ms` creative tab contains the portable radio, both blocks, and — unusually — vanilla **lodestone** and **compass** as convenience entries, plus a **pre-bound demo lodestone compass** named `[0, 0, 0]` in gold that already targets the Overworld origin. That last item is a ready-made test frequency: bind two blocks to it and you have a working channel without placing any lodestone at all.

## A frequency outlives its lodestone

The lodestone is only needed at the moment you *capture* the frequency. Once the coordinates are stored on a compass, a radio block or a portable radio, the channel is just those coordinates — the mod never re-checks that a lodestone is still there. **Breaking the lodestone does not break the channel.** Treat the lodestone as an address label, not as antenna hardware.

## Next steps

- To understand what a channel does with several signals: [02 Channels](02_channels)
- To use the handheld endpoint: [03 Portable radio](03_portable_radio)
- To wire the blocks into redstone: [04 Radio blocks](04_radio_blocks)

[Back to index](index)
