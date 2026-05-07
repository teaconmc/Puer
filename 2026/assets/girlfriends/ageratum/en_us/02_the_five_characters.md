---
title: "The five characters"
navigation:
  title: "02 The five characters"
---

# The five characters

Each character has a theme that runs through everything about her: what she picks up, what she treasures as a gift, what blessing she grants, and how much voice work she has.

## At a glance

| Character | Theme | Voice lines | Blessing |
|:---|:---|---:|:---|
| **Momo** | garden, flowers, bees | **29** | Nature Peace |
| **Yuxi** | sea, fishing, lighthouse | 26 | Sailing and Fishing |
| **Meishu** | mining, ores | 26 | Mining Extra Drop |
| **Wanying** | Nether, combat | **11** | Melee and Defense |
| **Youruo** | End, study | **11** | Ender Pearl Conserve |

The blessings are shipped as five data files whose names map one-to-one onto the five themes.

**Note the voice-line gap.** Momo, Yuxi and Meishu have 26–29 lines each; Wanying and Youruo have 11. All five are fully playable, but the two later characters are noticeably less talkative — a content-completeness difference rather than a design choice, judging by how evenly everything else is distributed.

## What each one collects

Every character has an item tag listing what she picks up. This is the clearest expression of her theme and it is fully data-driven, so a datapack can extend any of them.

**Momo — the garden**

Flowers and leaves (whole tags), bone meal, glass bottles, and the full honey line: honeycomb, honeycomb block, honey bottle, honey block.

**Yuxi — the sea**

All fishes, fishing rod, nautilus shell, heart of the sea, kelp, seagrass, prismarine crystals and shards, water bucket, and the four fish buckets.

She is the only character with her own projectile: the mod registers a **girlfriend fishing hook** entity, so Yuxi genuinely casts a line rather than miming it.

**Meishu — the mine**

Every ore tag — coal, copper, diamond, emerald, gold, iron, lapis, redstone — plus raw iron, copper and gold, their ingots, diamonds, and both iron and stone pickaxes.

**Wanying — the Nether**

Blaze rod and powder, netherite scrap and ingot, ancient debris, golden, iron and diamond swords, bow, arrow, shield, fire charge, ghast tear, magma cream, nether brick.

Hers is the only list built around weapons rather than materials.

**Youruo — the End**

Ender pearl, ender eye, chorus fruit and popped chorus fruit, purpur block and pillar, end stone and end stone bricks, glass bottle, paper, book, writable book, observer, end crystal.

The paper-book-observer cluster is worth noticing: she collects **writing and measuring tools** alongside End material, which is what marks her as the scholarly one.

## Favourite gifts follow the theme

Favourites are recorded per character and per item, with three separate quotes each so the response varies. Two confirmed examples:

- **Momo** treasures **honeycomb** and the **bouquet**.
- **Yuxi** treasures the **nautilus shell**.

Given how closely the pick-up lists track each theme, expect favourites to sit inside those lists. The full set lives in the gift preference data files — five of them, one per character. See [03 Affection and gifts](03_affection_and_gifts).

## What they notice

The AI is built on vanilla's brain-and-sensor system, and the sensors the mod adds tell you what the characters are aware of:

| Sensor | Watches for |
|:---|:---|
| Flower | flowers nearby |
| Beehive | beehives |
| Shelter | somewhere to take cover |
| Block | relevant blocks generally |
| Hostile | hostile mobs |

So a character reacts to her surroundings rather than only to you — Momo notices flowers and hives, and every character notices shelter and danger.

## Physical presence

All five are the same size as a player, **0.6 by 1.8 blocks**, tracked out to 48 blocks and updated every three ticks. They are `MobCategory.MISC`, which is why they never spawn on their own — see [01 Getting started](01_getting_started).

Each has exactly one texture, so there are no skin variants within a character.

[Back to index](index)
