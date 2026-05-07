---
title: Getting Started
navigation:
  title: Getting Started
description: Where everything comes from, and which creative tabs to look in.
---

# Getting started

## There are no recipes

Neither the source resources nor the generated resources contain a `recipe` directory. Nothing in this mod is crafted, smelted, brewed or worked at a table.

Everything reaches you through one of three routes:

| Route | What it gives |
|:---|:---|
| **Brushing suspicious blocks** | the "strange" remains — the actual gameplay loop |
| **The Identification Manual** | identified remains rolled from a loot table |
| **Creative tabs** | everything, directly |

## Where things are in the creative menu

The mod registers its own tab, `living_unvanished`, which lists **every** registered item — it is generated from the item registry rather than hand-listed, so nothing can be accidentally omitted from it.

It also injects items into **five vanilla tabs**, which is how you find things if you are not using the mod's own tab:

| Vanilla tab | Contents |
|:---|:---|
| **Natural Blocks** | pigeon egg, suspicious mud, suspicious red sand, suspicious rotten wood |
| **Functional Blocks** | restoration table |
| **Tools & Utilities** | mud slurry bucket, identification manual, memoir |
| **Ingredients** | pigeon egg, all 13 remains items, all 6 leftover pages |
| **Spawn Eggs** | Mauritius Blue Pigeon spawn egg |

Note the pigeon egg appears in **both** Natural Blocks and Ingredients.

## The remains, unidentified and identified

Thirteen items form the excavation chain. Four are unidentified finds; the rest are what they can become:

| Unidentified | Identifies into |
|:---|:---|
| **Strange Skull** | Avian Skull, Beast Skull |
| **Strange Feather** | Blue Contour Feather, Orange Contour Feather |
| **Strange Bones** | Keel, Ribs, Femur |
| **Strange Leather** | Striped Leather |

The naming tells you the story: avian versus beast, blue versus orange plumage, a **keel** (the breastbone ridge of a bird) versus **femur** and **ribs**, and **striped** leather for the thylacine. Working out which species a find belongs to is the puzzle.

Identification is covered in [03 Identification](03_identification).

## The Restoration Table is not functional

`restoration_table` is registered as a block with wood properties, strength 2.5 and lava flammability. Its class body contains **nothing but a constructor** — no block entity, no use handler, no menu, no ticker.

Combined with the absence of recipes and the fact that the only registered menu belongs to the **Identification Manual item**, the conclusion is unavoidable: **the Restoration Table currently has no function.** It places and it looks like a workstation, but interacting with it does nothing.

It also has **no loot table**, so breaking one destroys it.

Treat it, for now, as set dressing for a workshop.

## Obtaining the animals

- **Mauritius Blue Pigeon** — has a spawn egg, and lays an egg block that hatches. See [05 The two species](05_the_two_species).
- **Thylacine** — has **no spawn egg**. It is fully implemented as an entity with attributes, model, animations, AI and an armour render layer, but the shipped build gives you no item to place one. In practice that means `/summon`.

Both entities are registered with **`noLootTable()`**, so neither drops anything when killed. That is a deliberate and thematically pointed choice: you cannot farm an extinct animal for parts.

## A first session

1. Find suspicious mud, red sand or rotten wood — see [02 Excavation](02_excavation).
2. Brush it with a vanilla brush and collect the strange remains.
3. Use the **Identification Manual** in hand to open its screen, insert a strange item, and press Identify.
4. Collect leftover pages as you dig, and read them.

[Back to index](index)
