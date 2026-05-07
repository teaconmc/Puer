---
title: Server Configuration
navigation:
  title: Server Configuration
description: The eight server-side damage multipliers for Benderson's attacks, their defaults and their world-restart requirement.
---

# Server Configuration

All tuning lives in the **server** config. The common config file is present but currently defines **no options at all**, so there is nothing client-side to change.

Every option below:

- is a **double**,
- has a **minimum of 1.0** and no practical maximum,
- requires a **world restart** to take effect.

| Option | Default | Applies to |
|:---|:---|:---|
| `benderson_normal_attack_damage_multiplier` | 1.0 | Normal attack |
| `benderson_circular_stackable_aoe_damage_multiplier` | 20.0 | Circular stackable (shared) AoE |
| `benderson_self_circular_aoe_damage_multiplier` | 22.0 | Self-surrounding circular AoE |
| `benderson_center_knockbacking_damage_multiplier` | 2.0 | Centre knockback |
| `benderson_partial_sweep_arena_damage_multiplier` | 22.0 | Partial arena sweep |
| `benderson_pre_ecliptic_pile_damage_multiplier` | 10.0 | Falling piles before the ecliptic meteor |
| `benderson_cat_smashing_attack_damage_multiplier` | 20.0 | Summoned cat smash |
| `benderson_fireball_meteor_attack_damage_multiplier` | 15.0 | Summoned fireball meteor |

## Reading the defaults

The multipliers are **not** all 1.0 by design: the shared/stackable AoE (20), the self AoE (22) and the partial sweep (22) are the attacks meant to be lethal unless handled correctly, while the plain normal attack sits at 1.0 and the centre knockback at 2.0 is mostly a repositioning tool.

Because the minimum is 1.0, these values can only be raised, never reduced below the base damage. To make the fight easier you must change the fight setup (arena size, party size, gear) rather than lowering multipliers.

## Field-name mismatch to be aware of

Several config field constants in the source do not match the option strings exactly — for example the constant for the sweep is named for `SWEEP_PARTIAL_ARENA` while the written option key is `benderson_partial_sweep_arena_damage_multiplier`. **Always use the option key from the table above** when editing the TOML by hand.

Translation keys for these options are provided under `config.lanfasie_benderson.*`.

[Back to index](index)
