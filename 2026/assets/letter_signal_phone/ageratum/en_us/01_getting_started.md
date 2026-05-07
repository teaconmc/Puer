---
title: Getting Started
navigation:
  title: Getting Started
description: The creative tab, every registered block and item, and the nine crafting recipes.
---

# Getting Started

Everything is gathered in one creative tab, and unlike many mods in this pack, this one **does have real crafting recipes**.

## Creative tab

The tab is `letter_signal_phone:items`, titled "Letter, Signal, Phone", with the phone as its icon. Its contents in order:

phone → blank phone card → phone card → card writer → telegraph machine → telegram paper → owl nest → owl egg → owl spawn egg → mailbox → message in bottle → throwable message in bottle → letter → **all stamp variants in five rarities each** → **all stamp packs** → stamp album → packing box → package.

The stamp entries are generated **dynamically from the currently loaded datapack**, so the tab grows or shrinks with the stamp variants and packs available. See [Stamps](04_stamps.md).

## Blocks

| Block | Strength | Notes |
|:---|:---|:---|
| `card_writer` | 2.5 / 6.0 | Metal map colour; requires the correct tool for drops. |
| `mailbox` | 2.0 / 3.0 | Wood map colour. |
| `message_in_bottle` | 0.3 | No occlusion, dynamic shape, XZ offset — it sits loosely like a dropped bottle. |
| `telegraph_machine` | 2.5 / 6.0 | Metal map colour; requires the correct tool for drops. |
| `owl_nest` | 2.0 / 3.0 | Wood map colour. |

## Items

| Item | Stack size | Role |
|:---|:---|:---|
| `phone` | 1 | Holds a phone card; used for calls. |
| `blank_phone_card` | 16 | Raw card, register it at the card writer. |
| `phone_card` | 1 | A registered card carrying a number. |
| `card_writer` | 64 | Block item. |
| `mailbox` | 64 | Block item. |
| `message_in_bottle` | 16 | Block item form of the bottle. |
| `throwable_message_in_bottle` | 16 | Thrown into water to drift away. |
| `telegraph_machine` | 64 | Block item. |
| `telegram_paper` | 1 | Records a received telegram. |
| `owl_nest` | 64 | Block item. |
| `owl_egg` | 16 | Owl egg. |
| `owl_spawn_egg` | 64 | Spawn egg for `owl`. |
| `letter` | 1 | Writable, sealable letter. |
| `stamp` | 64 | Stamp; variant/rarity live in item data. |
| `stamp_pack` | 16 | Opens into random stamps. |
| `stamp_album` | 1 | Storage for a stamp collection. |
| `packing_box` | 16 | Turns into a package once packed. |
| `package` | 1 | A sealed parcel holding items. |

## Entities

- `thrown_message_in_bottle` — MISC, 0.25 x 0.25, tracking range 4, update interval 10. The in-flight bottle.
- `owl` — CREATURE, 0.45 x 0.65, tracking range 8, update interval 3. See [Owls](08_owls.md).

## Recipes

Nine recipes exist as real data files:

<recipe id="letter_signal_phone:phone"/>

<recipe id="letter_signal_phone:blank_phone_card"/>

<recipe id="letter_signal_phone:card_writer"/>

<recipe id="letter_signal_phone:telegraph_machine"/>

<recipe id="letter_signal_phone:mailbox"/>

<recipe id="letter_signal_phone:letter"/>

<recipe id="letter_signal_phone:stamp"/>

<recipe id="letter_signal_phone:stamp_album"/>

<recipe id="letter_signal_phone:packing_box"/>

Items **without** a recipe — `phone_card` (produced by registering a blank card), `telegram_paper`, `owl_nest`, `owl_egg`, `owl_spawn_egg`, `message_in_bottle`, `throwable_message_in_bottle`, `stamp_pack` and `package` — must be obtained through their own mechanics or the creative tab.

## Licence note

`gradle.properties` declares `mod_license=All Rights Reserved`. Treat redistribution accordingly.

[Back to index](index)
