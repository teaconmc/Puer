---
title: "The Board"
navigation:
  title: "02 The Board"
---

# The Board

The board is built from **22 kinds of square**, each a placeable block. Landing on one triggers its effect. This page is the reference you will want open during your first few games.

## Getting around

| Square | Name | What it does |
|:---|:---|:---|
| `platform_start` | **Check Point** | Lap marker — the anchor of the circuit |
| `platform_jump` | **Jump** | Moves you along without a normal step |
| `platform_move_again` | **Haste** | Another move — chains into whatever you land on next |
| `platform_teleport` | **Portal** | Sends you elsewhere on the board |
| `platform_teleport_point` | **Assault** | A destination-style square |

::: tip
**Haste is the square that makes big turns possible.** Because it grants another move, landing on it can chain into a second effect — and a lucky Haste into Windfall Hits or a Lottery is where a turn suddenly swings.
:::

## Gaining things

| Square | Name | What it does |
|:---|:---|:---|
| `platform_gold` | **Windfall Hits** | A payout |
| `platform_gift` | **Gift** | Gives you something |
| `platform_lottery` | **Lottery** | A draw |
| `platform_destiny` | **Fortune** | A fortune outcome |
| `platform_card` | **Card Bounce** | Card-related — feeds your hand |

## Spending things

| Square | Name | What it does |
|:---|:---|:---|
| `platform_shop` | **Shop** | General purchases |
| `platform_relic` | **Chip Shop** | Buys **chips** — your equipment, see [Chips and equipment](05_chips_and_equipment) |

## Getting hurt and getting better

| Square | Name | What it does |
|:---|:---|:---|
| `platform_damage` | **Sudden Calamity** | Damage |
| `platform_monster` | **Monster** | A fight — opens Battle Preparation |
| `platform_heal` | **Recover** | Heals you |
| `platform_hospital` | **Hospital** | Recovery-focused |
| `platform_fire` | **Cannon** | An attack square |

## Taking chances

| Square | Name | What it does |
|:---|:---|:---|
| `platform_gamble` | **Guessing** | A bet |
| `platform_divine` | **Divination** | A divination result |
| `platform_event` | **Event** | Triggers one of the board events |
| `platform_gimmick` | **Gimmick** | A trick square |
| `platform_candy_ghost` | **Quirky Candy Machine** | An oddity |

::: info
**The Chip Shop is the square worth planning routes around.** Chips are permanent stat increases and come in three quality tiers, so reaching a Chip Shop with money is usually a better turn than reaching a Shop. See [Chips and equipment](05_chips_and_equipment).
:::

## The board is a branching path, not a loop

Squares are linked as a graph — each one names which squares come next, and some name **more than one**. So the board is not a simple circle: you will hit forks and choose a direction.

That is why **Check Point** matters. It is the fixed reference the circuit returns to, regardless of which branch you took.

::: warning
**The board included with the mod is a small development loop, not a finished map.** Its own description calls it a minimal graph for testing and says production maps should be built from structure templates instead.

In practice you get a working demonstration of every mechanic on a short circuit — enough to learn the game, not enough for a long session. See [What is finished and what is not](06_current_state).
:::

[Back to index](index)
