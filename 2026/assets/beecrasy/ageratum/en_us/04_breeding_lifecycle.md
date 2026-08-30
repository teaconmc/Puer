---
title: "Breeding and Lifecycle"
navigation:
  title: "04 Breeding and Lifecycle"
items:
  - "beecrasy:drone"
  - "beecrasy:larva"
  - "beecrasy:product_comb"
---

# Breeding and Lifecycle

Queens carry diploid genomes and drones carry haploid genomes. A hive mates from the available drones, and offspring inherit and recombine parental information. The configured default of `0.075` is an upper bound on total mutation probability; the effective chance for one result can be lower. Keeping several drone lineages separate therefore gives much better control than mixing every bee in one hive.

## From larva to production

Larvae have a survival timer, set to `600` seconds by default. Do not leave them dropped in the world or forgotten in temporary storage. Once mature bees enter a hive, work is checked every `100 ticks` by default, with an average lifespan parameter of `12000`.

Hive work creates Product Combs and writes them into the relevant storage. The actual result depends on bee type, genes, and incense parameters; nearby flowers are not a production condition. Slot count alone does not determine yield; it only limits how much material can be held at once.

One Larva and one Royal Jelly can be combined shapelessly in any crafting grid to make a Queen, preserving the Larva's genome on the result. This dynamic operation comes from the custom `beecrasy:royal_jelly` serializer and should be checked in a recipe viewer. Ageratum has no renderer for that serializer, so this page does not embed a misleading standard recipe component.

## Stable breeding practice

1. Keep one untouched backup from every queen line.
2. Change only one drone source or environmental variable at a time.
3. Sequence offspring before breeding onward so unknown recessive traits do not spread through all stock.
4. Remove Product Combs regularly so a full output does not stall the hive.

[Back to the Beecrasy index](index)
