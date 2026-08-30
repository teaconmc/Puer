---
title: Pipeline and Phases
navigation:
  title: Pipeline and Phases
description: The seven ordered phases and the nine application buckets that decide what each bit of damage is exposed to.
---

# Pipeline and phases

## The seven phases

Every managed hit walks through the phases in this fixed order. Processors register into a phase, and within a phase they are ordered by priority.

| Order | Phase | Purpose |
|:--:|:---|:---|
| 1 | `BASE_MODIFICATION` | Establish and adjust base damage |
| 2 | `TYPE_SCALING` | Per-channel and per-type scaling |
| 3 | `CRITICAL_HIT` | Critical determination and critical damage |
| 4 | `CONDITIONAL_MULTI` | Conditional multipliers |
| 5 | `GLOBAL_ADJUSTMENT` | Global adjustments |
| 6 | `MITIGATION_SETUP` | Assemble armor, resistance and mitigation |
| 7 | `FINAL_OVERRIDE` | Final override, including cancellation |

Rules run inside this structure rather than beside it: each rule declares the phase it belongs to, so a datapack rule can slot into critical-hit handling or into mitigation setup as needed.

## The nine application buckets

Damage does not travel as one number. It is split into **buckets**, and each bucket carries its own flags describing what it is exposed to. This is what lets, say, enchantment damage eat the melee cooldown while true damage ignores armor.

| Bucket | Melee cooldown | Melee crit | Projectile crit | Application pre | Channel pre | Global pre | Post | Mitigation |
|:---|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
| `VANILLA_MELEE_BASE` | ✔ | ✔ | – | ✔ | ✔ | ✔ | ✔ | ✔ |
| `VANILLA_MELEE_ENCHANTMENT` | ✔ | ✔ | – | ✔ | ✔ | ✔ | ✔ | ✔ |
| `VANILLA_WEAPON_SPECIAL` | ✔ | ✔ | – | ✔ | ✔ | ✔ | ✔ | ✔ |
| `VANILLA_PROJECTILE_BASE` | – | – | – | ✔ | ✔ | ✔ | ✔ | ✔ |
| `VANILLA_PROJECTILE_ENCHANTMENT` | – | – | – | ✔ | ✔ | ✔ | ✔ | ✔ |
| `VANILLA_PROJECTILE_CRIT_BONUS` | – | – | – | **–** | ✔ | ✔ | ✔ | ✔ |
| `VANILLA_OTHER_BASE` | – | – | – | ✔ | ✔ | ✔ | ✔ | ✔ |
| `DN_RULE_BASE` | – | – | – | ✔ | ✔ | ✔ | ✔ | ✔ |
| `DN_TRUE_DAMAGE` | – | – | – | ✔ | **–** | **–** | **–** | **–** |

Reading the table:

- **`DN_TRUE_DAMAGE` is the only bucket that escapes mitigation.** It ignores channel pre-multipliers, global pre-multipliers, post-multipliers, armor and resistance — but it **still obeys application-scoped pre-multipliers**, because those are explicitly targeted rather than generic. True damage is therefore not entirely unscalable.
- **`VANILLA_PROJECTILE_CRIT_BONUS` is the only bucket immune to application pre-multipliers.** Projectile crit bonus deliberately sits outside that scaling layer.
- **No bucket is affected by projectile crit.** The `affectedByProjectileCrit` flag exists on every bucket and is `false` everywhere in the shipped table, including on the projectile buckets. Projectile criticals reach damage through the dedicated crit-bonus bucket instead.
- The three melee buckets are the only ones that eat the vanilla melee attack cooldown. Mace fall bonus and spear speed bonus live in `VANILLA_WEAPON_SPECIAL` and, per the source comment, "remain mitigated by default".

## Pre-multiplier scopes

There are three distinct pre-multiplier layers, and rules can target any of them:

- **Application-scoped** — narrowest; tied to a specific application bucket.
- **Channel-scoped** — applies to one damage channel.
- **Global** — applies to the whole hit.

Post-multipliers exist at channel and global scope. Mitigation likewise exists at channel and global scope. The distinction matters when writing rules, because a "+20% fire damage" written as a channel pre-multiplier and the same written as a channel post-multiplier land on different sides of armor and resistance.

## Formula constants

Three tuning constants live in the config and shape the curves:

| Constant | Default | Role |
|:---|---:|:---|
| `asymptoticKValue` | `15.0` | Asymptotic curve constant |
| `resistanceKValue` | `50.0` | Resistance curve constant |
| `ratingPerProtScore` | `3.5` | Conversion from vanilla protection score to resistance rating |

`ratingPerProtScore` is the bridge that turns vanilla Protection-style enchantment values into Damage Nexus resistance rating — it is why Feather Falling shows up in tooltips as a converted resistance figure rather than a vanilla EPF number.

## Transactions and diagnostics

Each hit can be recorded as a transaction on the target, stored in the `damagenexus:damage_transactions` attachment, and summarized into per-source contributions. That is the machinery behind the contribution tooltips and the post-damage diagnostics. Neither is on by default; both are gated by the diagnostic domain described in [08 Configuration and diagnostics](08_configuration_and_diagnostics.md).

The other attachment, `damagenexus:pending_jump_crit`, is a plain boolean flag used to carry jump-critical state; it defaults to `false` and is not persisted.

[Back to index](index)
