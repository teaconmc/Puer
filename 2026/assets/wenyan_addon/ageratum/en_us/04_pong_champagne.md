---
title: The Pong Champagne Module
navigation:
  title: Pong Champagne Module
description: The entire second namespace — bottle, sabre, goblet, cork, rack, fluid and the Drunk effect.
---

# The Pong champagne module

`pong` is a **self-contained champagne module bundled in the same jar**. It has no mod entry of its own, no dependency on Wenyan Programming's scripting, and no connection to the device blocks. The README calls it an "independently modular" experiment, and its items simply appear at the end of the shared creative tab.

Unlike the device blocks, **everything here is craftable**.

## The five recipes

The cork is the base component — three planks:

<recipe id="pong:plug"/>

The goblet is four glass panes:

<recipe id="pong:goblet"/>

The sabre is two iron ingots and a stick, laid diagonally:

<recipe id="pong:champagne_sabre"/>

The rack is six planks and two sticks:

<recipe id="pong:champagne_rack"/>

The bottle combines a cork, four glass panes, sugar and sweet berries:

<recipe id="pong:champagne_bottle"/>

All five share the recipe group `pong`, so they collapse into one entry in the recipe book.

## Opening a bottle

The bottle's own tooltip states the two methods:

- **Shake it by hand** to build up pressure, then let it pop.
- **Hold the sabre together with an unopened bottle** to sabre it open.

The sabre tooltip confirms the second route and adds the requirement plainly: the bottle must be **unopened**. The sabre has a separate broken model, so it can reach a damaged state.

Opening fires the cork as a real entity — `pong:plug`, category MISC, with a tiny hitbox of 0.125 × 0.0625 blocks — and plays the registered `pong:champagne_open` sound. Splash particles accompany it.

The bottle item has **seven models**: a base model, six numbered stages and an opened model. That progression is what visualises shaking and opening in the hand.

## Drinking

The goblet's tooltip is explicit about the order of operations: **pour from an already-opened bottle, then drink**. It has a separate filled model (`goblet_champagne`), so a full and an empty goblet look different.

Drinking is what applies **`pong:drunk`**, the module's own mob effect, named 酒醉身姿似百合.

## The rack

`pong:champagne_rack` holds and displays **up to four unopened bottles**, per its tooltip. It is a block with its own block entity and a dedicated renderer, which is how the individual bottles are drawn in place.

Note that it accepts **unopened** bottles only — it is a display and storage piece for intact stock, not a bar shelf for opened bottles.

## The champagne fluid

A full fluid is registered: a source, a flowing variant, a fluid type and a liquid block, with slope-find distance 2 and level decrease 2 per block.

Two things to know before building with it:

- **There is no bucket.** The fluid registers its bucket as absent, so champagne cannot be picked up, carried or placed with a bucket. Whatever places it in the world must come from the module's own interactions.
- **The flowing variant is registered under a mismatched id.** The source is `pong:champagne_fluid`, but the flowing fluid is `pong:champagne_water` — not `champagne_fluid_flowing` as the pairing would suggest. Anything that references the flowing fluid by id must use `champagne_water`.

## Registry summary

| Kind | Ids |
|:---|:---|
| Items | `champagne_bottle`, `champagne_sabre`, `goblet`, `plug`, `debug_rod` |
| Blocks | `champagne_bottle`, `champagne_rack`, `champagne_fluid_block` |
| Block entity | `champagne_rack` |
| Entity | `plug` |
| Mob effect | `drunk` |
| Fluids | `champagne_fluid` (source), `champagne_water` (flowing) |
| Fluid type | `champagne_fluid` |
| Particle | `splash_particles` |
| Sound event | `champagne_open` |

## The debug rod is shipped but hidden

`pong:debug_rod` is fully registered, and its own tooltip describes it as **a development tool for testing the champagne rack**. However it is **not added to the creative tab** and **has no recipe**, so the only way to obtain it is `/give`.

It is not a secret item to hunt for — it is a developer utility that was left in the build. Do not document it to players as content.

## Two things that do not work

- **`ChampagneTower` is dead code.** A class for a champagne tower exists in the source but nothing anywhere references or registers it. There is no champagne-tower block, item or mechanic in the loaded mod.
- **The `pong_1` sound is orphaned.** Its `.ogg` ships and `sounds.json` declares it, but no sound event is registered for it and no code plays it. Only `champagne_open` is reachable.

[Back to index](index)
