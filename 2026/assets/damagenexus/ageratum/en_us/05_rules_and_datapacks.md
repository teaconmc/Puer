---
title: Rules and Datapacks
navigation:
  title: Rules and Datapacks
description: The 24 conditions, 14 operations, rule providers, roles and stacking modes.
---

# Rules and datapacks

A **rule** is the unit of custom combat behaviour: a set of conditions plus a set of operations, bound to a phase, a role and a stacking mode. Rules are serialized with codecs, so they can come from a datapack, from an item, or from the Java API.

## Where rules come from

Three providers are registered at startup, in this order:

1. **Item provider** — rules carried by the item stack involved in the hit.
2. **Projectile provider** — rules carried by the projectile or its source item.
3. **Datapack provider** — rules loaded from datapack files and refreshed on resource reload.

Third-party mods can add providers through the public register method. Note that the public path only rejects a provider if the *same instance* is already present, whereas the built-in path deduplicates by *class* — registering two separate instances of one provider class from outside will therefore add both.

## Roles

| Role | Meaning |
|:---|:---|
| `offensive` | Runs when the owner is attacking |
| `defensive` | Runs when the owner is being hit |
| `any` | Runs in both directions |

A rule declared `any` matches whichever role the runtime is currently evaluating.

## Stacking modes

When several sources supply the same rule, the stacking mode decides the outcome:

| Mode | Behaviour |
|:---|:---|
| `stack` | All instances add together |
| `highest_value` | Only the largest applies |
| `lowest_value` | Only the smallest applies |
| `replace` | A later instance replaces the earlier one |
| `unique_source` | Only one instance per source counts |

Rules can also declare a stacking group so that several differently-named rules contend as one.

## Conditions

24 conditions ship. They compose with `all_of`, `any_of` and `not`.

**Always:** `always`

**Combinators:** `all_of`, `any_of`, `not`

**Hit state:** `is_critical`, `damage_channel_is`, `damage_type_is`, `damage_type_tag`, `damage_source_tag`

**Target:** `target_on_fire`, `target_health_below`, `target_health_above`, `target_has_effect`, `target_entity_type_is`, `target_entity_type_tag`, `target_is_boss`, `target_mob_category_is`

**Attacker:** `attacker_health_below`, `attacker_health_above`, `attacker_has_effect`, `attacker_entity_type_is`, `attacker_entity_type_tag`, `attacker_is_boss`, `attacker_mob_category_is`

The health conditions are expressed as **percentages**, and the two `*_is_boss` conditions read the `damagenexus:bosses` entity-type tag — which ships containing only the ender dragon and the wither.

## Operations

14 operations ship.

**Add flat damage:** `add_base_damage`, `add_true_damage`

**Multiply before mitigation:** `add_channel_pre_multiplier`, `add_global_pre_multiplier`

**Multiply after mitigation:** `add_channel_post_multiplier`, `add_global_post_multiplier`

**Reduce:** `add_channel_mitigation`, `add_global_mitigation`, `add_temporary_resistance`, `multiply_armor_effectiveness`

**Reshape:** `convert_damage`, `gain_extra_damage`

**Terminate:** `override_final_damage`, `cancel_damage`

Two pairs are easy to confuse:

- **`convert_damage` vs `gain_extra_damage`.** Converting moves damage from one channel to another — the total does not grow. Gaining extra *adds* a proportional amount in the new channel while leaving the original intact, so the total does grow.
- **`add_temporary_resistance` vs `add_channel_mitigation`.** Temporary resistance adds resistance *rating*, which then runs through the resistance curve. Channel mitigation adds reduction directly. The same nominal number produces different results.

`add_true_damage` writes into the `DN_TRUE_DAMAGE` bucket, which bypasses mitigation and both generic multiplier layers — see [03 Pipeline and phases](03_pipeline_and_phases.md).

## Strict error handling

Two developer switches control what happens when a rule or a processor is malformed:

- `strictRuleErrors` — default `false`
- `strictProcessorErrors` — default `false`

With both off, bad rules are tolerated and reported rather than aborting. Turn them on while authoring a datapack so mistakes surface immediately instead of silently doing nothing.

## Reload behaviour

Datapack rules are reloaded through a resource-reload listener, so `/reload` picks up edits without restarting. Config changes, by contrast, are baked at load and reload of the config file — and command availability is decided once at command registration, so it does not follow a `/reload` of datapacks.

[Back to index](index)
