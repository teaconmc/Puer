---
title: The Two Species
navigation:
  title: The Two Species
description: The Blue Pigeon, the Thylacine, and the illagers that hunt one of them.
---

# The two species

Both animals are **GeckoLib-animated** with their own models, animation controllers and renderers, and both are registered as ordinary creatures with a client tracking range of 8 and an update interval of 3.

Both are also registered with **`noLootTable()`** — **killing either drops nothing.** You cannot harvest an extinct animal. Everything you obtain from them comes from living with them, not from killing them.

## Mauritius Blue Pigeon

| Property | Value |
|:---|:---|
| Id | `living_unvanished:mauritius_blue_pigeon` |
| Size | 0.6 × 0.6, eye height 0.35 |
| Spawn egg | **yes** |
| Drops on death | **none** |

Its AI is brain-based rather than goal-based, with five dedicated behaviours:

| Behaviour | What it does |
|:---|:---|
| **Avoid water** | actively keeps away from water |
| **Beg for food** | reacts to players holding food it wants |
| **Dig** | excavates tagged blocks — see below |
| **Follow owner** | it can be tamed |
| **Sit** | it can be told to stay |

So the pigeon is a **tameable companion**, not just an ambient animal.

### It flies and it walks

The pigeon uses a combined move control and path navigation that handles **both flying and ground movement**. That is unusual and deliberate: the Mauritius blue pigeon was a large, weak-flying, largely ground-feeding bird, and the movement code reflects an animal that walks to forage and flies to escape.

### It digs for you

Two block tags define what the pigeon will excavate:

| Tag | Meaning |
|:---|:---|
| `#…mauritius_blue_pigeon_seed_diggables` | blocks it digs seeds from |
| `#…mauritius_blue_pigeon_suspicious_diggables` | **suspicious blocks** it will dig |

The second tag is the interesting one. A tamed pigeon can work **suspicious blocks** — the same blocks you brush by hand for remains. The bird that you saved from extinction helps you excavate the next one, and the seed-digging half echoes the real animal's role as a seed disperser, which Leftover Page II mentions being noticed and pocketed as a curiosity.

Feeding is tag-driven too, via `#living_unvanished:mauritius_blue_pigeon_food`, so a datapack can change its diet without touching code.

### Illagers hunt it

A mixin injects an **attack-the-blue-pigeon goal into every `Raider`** at construction, at target priority 5. That covers pillagers, vindicators, evokers, witches and ravagers — the entire raid roster.

This is not an arbitrary hostility. Leftover Page I places the bird's first recorded carcass **at an illager settlement**, and the mod makes that history mechanical: illagers actively hunt blue pigeons on sight. Keep your birds away from outposts, and expect losses during a raid.

### The egg block

`mauritius_blue_pigeon_egg` is a placeable block with a block entity — the nest. Remember from [02 Excavation](02_excavation) that it **only drops with Silk Touch**.

## Thylacine

| Property | Value |
|:---|:---|
| Id | `living_unvanished:thylacine` |
| Size | 0.9 × 0.85, eye height 0.65 |
| Spawn egg | **none** |
| Drops on death | **none** |

The thylacine is fully implemented — model, animation controller, renderer, its own AI, and an **armour render layer**, which means it is designed to be equippable. That render layer is a strong hint that it is meant to be a tameable working animal rather than passive scenery.

But **no spawn egg is registered for it**. The Blue Pigeon has one; the Thylacine does not. In the shipped build there is no item that places one, which leaves `/summon` as the practical route. Whether a natural spawn or a restoration path was intended is not something the current code answers — and the Restoration Table that might have provided it [does nothing](01_getting_started).

If you are building a pack around this mod, supplying a way to obtain a thylacine is the first gap to fill.

## What the two have in common

- Neither drops anything when killed.
- Both are GeckoLib-animated and tracked at a short range, so they are meant to be lived with up close rather than watched from a distance.
- Neither has natural world generation in the shipped build; both arrive by player action.

That is thematically consistent: these animals do not exist in the world until you put them there.

[Back to index](index)
