---
title: Benderson Phases
navigation:
  title: Benderson Phases
description: The phase-state machine that drives the boss, all twelve phase states and how transitions are chosen.
---

# Benderson Phases

Benderson is driven by a **phase-state transitioner**: a small state machine where each phase is an object that can start, tick, end, and report whether it may currently be used.

## How transitions work

- Each tick the current phase is ticked. When its tick returns "finished", the phase ends and the machine is marked to change phase.
- Candidate destinations are filtered to those whose phase reports it **can be used**.
- Among the candidates, only those with the **highest priority** survive; the rest are discarded.
- If several remain, one is chosen by **weight** using a forked random source.
- Phases that are not current still receive an "inactive tick" every tick.
- The current phase is persisted in save data under `Phase`, and each phase writes its own data under `PhaseData`.

Default priority is `1` and default weight is `1` unless stated otherwise below.

## Registered phase states

| Phase key | Role |
|:---|:---|
| `idle` | Fallback / resting phase. |
| `arena_entering` | Entrance phase used at summon. |
| `attack` | Normal attack phase and the main hub. |
| `lethal_attack` | High-damage telegraphed attack. |
| `circle_aoe_self` | Circular AoE centred on Benderson. |
| `circle_stack` | Circular **stackable** (shared-damage) attack. |
| `three-fourth_arena_aoe` | Partial-arena sweep. |
| `summon_anticalabrum` | Summons the Anticalabrum sword. |
| `elevate_to_extreme` | Escalation to the extreme state. |
| `knockback_from_center` | Knocks players away from the centre. |
| `summon_blocking_pile` | Summons blocking piles (pre-meteor). |
| `ecliptic_meteor` | The ecliptic meteor finisher. |

## Transition graph

| From | To | Priority |
|:---|:---|:---|
| `idle` | `idle` | 0 |
| `idle` | `summon_anticalabrum` | 1 |
| `idle` | `attack` | 1 |
| `arena_entering` | `attack` | 0 |
| `arena_entering` | `idle` | −1 |
| `attack` | `idle` | −1 |
| `attack` | `attack` | 0 |
| `attack` | `summon_anticalabrum` | **10** |
| `attack` | `lethal_attack` | 1 |
| `attack` | `circle_aoe_self` | 1 |
| `attack` | `circle_stack` | 1 |
| `attack` | `three-fourth_arena_aoe` | 1 |
| `attack` | `knockback_from_center` | 1 |
| `lethal_attack` | `idle` | 0 |
| `lethal_attack` | `attack` | 1 |
| `circle_aoe_self` | `idle` | 0 |
| `circle_aoe_self` | `attack` | 1 |
| `circle_stack` | `idle` | 0 |
| `circle_stack` | `attack` | 1 |
| `three-fourth_arena_aoe` | `idle` | 0 |
| `three-fourth_arena_aoe` | `attack` | 1 |
| `summon_anticalabrum` | `idle` | 0 |
| `summon_anticalabrum` | `attack` | 1 |
| `elevate_to_extreme` | `idle` | 1 |
| `knockback_from_center` | `summon_blocking_pile` | **10** |
| `knockback_from_center` | `idle` | −1 |
| `summon_blocking_pile` | `ecliptic_meteor` | **10** |
| `summon_blocking_pile` | `idle` | −1 |
| `ecliptic_meteor` | `attack` | 1 |
| `ecliptic_meteor` | `idle` | 0 |

Reading the priorities: from `attack`, if `summon_anticalabrum` is available it wins outright (priority 10) over every other option. The `knockback_from_center` → `summon_blocking_pile` → `ecliptic_meteor` chain is likewise forced at priority 10, so once the knockback lands the meteor sequence follows unless those phases refuse to run — in which case the machine drops to `idle` at priority −1.

## Telegraphs

Several attacks are announced by subtitled sounds:

- `subtitles.lanfasie_benderson.lethal_attack` — "Omen: lethal attack"
- `subtitles.lanfasie_benderson.stack_attack` — "Omen: stackable attack"
- `subtitles.lanfasie_benderson.enemy_sweep` — "Sweeping attack"

Delayed attacks are also shown in the world by the `delayed_attack_marker` and `target_marker` entities.

Damage scaling for each of these attacks is configurable — see [Server configuration](09_server_configuration.md).

[Back to index](index)
