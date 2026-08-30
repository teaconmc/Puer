---
title: Attributes and Damage Types
navigation:
  title: Attributes and Damage Types
description: The three custom attributes, four damage types with their death messages, and the three entity tags.
---

# Attributes and Damage Types

## Custom attributes

| Attribute | Type | Default | Range |
|:---|:---|:---|:---|
| `enmity_multiplier` | Ranged | 1.0 | 0.1 – 100 |
| `damage_gate_percentage` | Percentage | 0.01 | 0.001 – 0.99 |
| `extreme` | Boolean | false | — |

- **Enmity Multiplier** drives the aggro model — see [Enmity and provoking](04_enmity_and_provoking.md).
- **Damage Gate Percentage** ("Damage Gate Percentage") caps how much of something can be taken in one blow, expressed as a fraction; its bounds mean the gate can never be 0% or 100%.
- **Extreme** ("Ultimate Mode") is a boolean attribute matching the `elevate_to_extreme` phase.

Note the translation keys are not fully consistent in the source: the extreme attribute is registered with the key `attributes.lanfasie_benderson.is_extreme`, while the language file supplies `attributes.lanfasie_benderson.extreme`. Similarly the damage gate uses the key `attributes.lanfasie_benderson.damage_gate`.

## Damage types

Four damage types are registered:

| Damage type | Message id | Scaling | Exhaustion |
|:---|:---|:---|:---|
| `lethal_attack` | `lethal_attack` | NEVER | 0.2 |
| `ecliptic_meteor` | `ecliptic_meteor` | NEVER | 0.0 |
| `boss_normal_attack` | `mob` | WHEN_CAUSED_BY_LIVING_NON_PLAYER | 0.0 |
| `boss_ability_attack` | `boss_ability_attack` | WHEN_CAUSED_BY_LIVING_NON_PLAYER | 0.05 |

`boss_normal_attack` deliberately reuses the vanilla `mob` message id, so its deaths read as ordinary mob kills. The other three have custom death messages, for example:

- lethal attack — "%1$s could not withstand %2$s's massive damage"
- ecliptic meteor — "%1$s ordered an ecliptic-meteor latte from %2$s and left a default five-star review"
- boss ability — "%1$s was one step away from safety while dodging %2$s's attack"

Each has `.item` and `.player` variants.

## Entity tags

| Tag | Name |
|:---|:---|
| `immune_benderson_wipe_arena` | Immune to Benderson's arena-wiping attack |
| `ignore_unforgiven_indiscretion_broadcast` | Ignore broadcast from The Unforgiven Indiscretion |
| `sin_bearer` | Sin Bearer |

## Loot and data generation

The mod ships data providers for block loot, custom loot tables, block tags, damage type tags, entity type tags, item tags, language, models and sound definitions. There is a scaling number provider driven by extra health, used for loot/damage scaling. **No recipe provider exists**, which is consistent with the mod having no recipes.

[Back to index](index)
