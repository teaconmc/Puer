---
title: Anticalabrum Curses
navigation:
  title: Anticalabrum Curses
description: The Anticalabrum summon and its five named curses.
---

# Anticalabrum Curses

**Anticalabrum** (`anticalabrum`, "Sword of the Covenant-Breaking King") is a summoned entity: a floating sword, 0.25 x 2 blocks, in the `MISC` category, with no loot table and a client tracking range of 8.

Benderson summons it in the `summon_anticalabrum` phase — a transition that takes **priority 10** out of the `attack` phase, so it happens as soon as the phase allows.

## The five curses

Each curse is a harmful mob effect named after the sword: "Sword of the Covenant-Breaking King: X".

| Effect id | Name | Notes |
|:---|:---|:---|
| `curse_hydro_dreamer` | Hydro Dreamer | Harmful. |
| `curse_black_cat` | Invisible Cat | Harmful. Paired with the cat-smash attack. |
| `curse_end_guardian` | End Guardian | Harmful. Thematically tied to `end_guardian_statue`. |
| `curse_nether_dog` | Nether Watchdog | Harmful. |
| `curse_void_hare` | Void Hare | Harmful; also applies a **gravity** modifier of **−0.5 (ADD_MULTIPLIED_TOTAL)** via modifier id `lanfasie_benderson:effect.void_hare`, i.e. it halves your gravity. |

Only Void Hare carries an attribute modifier in the registry; the other four implement their behaviour in their own effect classes.

## Cat smashing

The black-cat curse ties into a smashing attack whose damage multiplier is configurable as `benderson_cat_smashing_attack_damage_multiplier` (**default 20.0**). See [Server configuration](09_server_configuration.md).

## Saturation interaction

Some effects in this mod implement a saturation-breaking interface, and the mod mixes into vanilla food data. Curses can therefore interfere with food/saturation restoration rather than only dealing damage.

[Back to index](index)
