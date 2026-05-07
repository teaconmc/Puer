---
title: "Genetics and Sequencing"
navigation:
  title: "05 Genetics and Sequencing"
items:
  - "beecrasy:handheld_sequencer"
  - "beecrasy:sequencer"
---

# Genetics and Sequencing

The Handheld Sequencer reveals the genes carried by one bee. Place the bee in its interface and supply one `beecrasy:honey_drop`. It does not accept arbitrary substitutes from a honey tag, and sequencing is a consuming operation rather than a free inspection.

The Handheld Sequencer has diamond and Apite recipes. The diamond route is reachable from vanilla materials, while Apite currently has no output source.

<recipe id="beecrasy:crafting/handheld_sequencer_from_diamond"/>

<recipe id="beecrasy:crafting/handheld_sequencer_from_apite"/>

<block id="beecrasy:sequencer"/>

<recipe id="beecrasy:crafting/sequencer"/>

The block Sequencer is intended for a fixed processing setup. By default each operation consumes `25 mB` of honey and `5000 FE`, while energy input is capped at `640 FE/t`. Connect power and honey, then insert a bee carrying genome data. Completion marks the item in its original slot, so no separate output space is needed.

::: note
The block Sequencer and its handheld-upgrade recipe both require `beecrasy:apite`, which currently has no source. Unless a pack supplies it, the diamond Handheld Sequencer is the only craftable entry.
:::

## Reading the result

Sequencing separates visible performance from hidden inherited traits and helps trace environment, lifespan, or yield problems to individual stock. Sequence queens first, then sample drones. When resources are limited, preserve stable lines with broad environmental tolerance.

::: warning
The block Sequencer's client constructor currently references the handheld menu type, which may produce an incorrect interface. If its screen behaves abnormally, use the Handheld Sequencer and avoid repeatedly inserting valuable bees.
:::

[Back to the Beecrasy index](index)
