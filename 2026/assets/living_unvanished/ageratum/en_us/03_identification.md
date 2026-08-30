---
title: Identification
navigation:
  title: Identification
description: The manual's screen, the four identification tables, and why luck matters.
---

# Identification

## The manual is an item, not a station

The **Identification Manual** opens its own screen when you use it in hand. It is not tied to the Restoration Table or to any block — you can identify finds anywhere, including in the field.

This is worth stating plainly because the mod also ships a Restoration Table that looks like it should be the identification station and [does nothing](01_getting_started).

## The screen

| Element | Detail |
|:---|:---|
| **Input** | one slot, restricted to the `#living_unvanished:identifiable` item tag |
| **Output** | **six slots**, arranged 2 columns × 3 rows |
| **Identify button** | labelled "Identify" |
| Player inventory | full 27 + 9, as normal |

The input slot's restriction is enforced by the slot itself, so you cannot put an ineligible item in at all — there is no "wrong item" error state to run into.

The Identify button's availability is driven by a synced data value that tracks **whether the current input has a matching identification table**. If a tagged item somehow has no table, the button simply stays unavailable rather than consuming the item for nothing.

## What happens when you identify

Pressing Identify runs four checks before doing anything:

1. the input is not empty,
2. the input is in the identifiable tag,
3. the output slots are **not full**,
4. an identification loot table exists for that item.

If all four pass, **one input item is consumed** and the matching loot table is rolled. Results go into the output slots; anything that does not fit is **returned to the player** rather than being lost.

That last detail matters: a full output grid blocks identification outright, and a partially full one cannot silently swallow results.

## Luck affects the outcome

The loot roll is built with **`withLuck(player.getLuck())`**.

So your Luck attribute is fed into identification. A **Luck potion**, or anything else that raises the attribute, genuinely improves what you get out of a strange find. Nothing in the interface says so.

This is the single most useful undocumented fact about the system: **drink Luck before identifying a batch.**

## The four identification tables

Identification is data-driven. Four loot tables exist, one per unidentified item:

| Input | Loot table |
|:---|:---|
| Strange Skull | `identify/living_unvanished_strange_skull` |
| Strange Feather | `identify/living_unvanished_strange_feather` |
| Strange Bones | `identify/living_unvanished_strange_bones` |
| Strange Leather | `identify/living_unvanished_strange_leather` |

Because these are ordinary loot tables in a datapack-visible location, a pack can **retune identification odds, or add results, without touching the mod** — and because the input is gated by a tag rather than a hardcoded list, a pack can also make new items identifiable by adding them to `#living_unvanished:identifiable` and supplying a table with the matching name.

That is a genuinely open design, and it is the mod's main extension point.

## What comes out

| From | Possible results |
|:---|:---|
| Strange Skull | **Avian Skull** (bird), **Beast Skull** (marsupial) |
| Strange Feather | **Blue Contour Feather**, **Orange Contour Feather** |
| Strange Bones | **Keel**, **Ribs**, **Femur** |
| Strange Leather | **Striped Leather** |

A keel is a bird's breastbone ridge, so it points to the pigeon; striped leather points to the thylacine. Sorting your finds by species is the intended reading of the collection.

[Back to index](index)
