---
title: "Getting started"
navigation:
  title: "01 Getting started"
items:
  - thestreetism:spray_can
---

# Getting started

## Install requirement

TheStreetism declares its mod loader as **`kotlinforforge`**, so **Kotlin for Forge must be installed** alongside NeoForge. Without it the mod will not load at all.

## The creative tab

One tab, **TheStreetism**, placed just before the Spawn Eggs tab, with the Street Banner as its icon. It contains exactly seven entries, in this order:

Spray Can, Paint Scraper, Pigment Bag, Street Banner, Stitching Tool, Flag Pole, Flag Cloth.

## The four recipes

Only the graffiti and banner side of the mod is craftable.

**Spray Can** — eight dyes of any colour ringing one iron ingot:

<recipe id="thestreetism:spray_can"/>

**Pigment Bag** — the same ring of eight dyes, around a sheet of paper:

<recipe id="thestreetism:pigment_bag"/>

**Paint Scraper** — three iron ingots over a stick:

<recipe id="thestreetism:paint_scraper"/>

**Street Banner** — six wool of any colour over a stick:

<recipe id="thestreetism:banner"/>

Both dye recipes accept the whole dye tag, so any colours work and they can be mixed freely — colour does not affect the result.

## What has no recipe

Three of the seven entries **cannot be crafted at all**:

| Entry | Status |
|:---|:---|
| Stitching Tool | no recipe |
| Flag Pole | no recipe |
| Flag Cloth | no recipe |

These three are exactly the pieces the flag system needs, so **the entire flag half of the mod is creative-only** in the current build. On a survival server you will need to hand them out with a give command. See [05 Flags](05_flags).

## Durability at a glance

Every item is single-stack. Four of them wear out:

| Item | Uses |
|:---|:---|
| Spray Can | 100 |
| Street Banner | 100 |
| Stitching Tool | 50 |
| Pigment Bag | 5 |
| Paint Scraper | **unlimited** |

The Paint Scraper is the odd one out — it has no durability at all. See [03 Removing and repairing](03_removing_and_repairing).

[Back to index](index)
