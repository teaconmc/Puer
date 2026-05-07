---
title: Attributes
navigation:
  title: Attributes
description: All 25 registered attributes with their real defaults and ranges.
---

# Attributes

Damage Nexus registers **25 attributes**, all syncable to the client. They are the main way to give a player, a mob or a piece of equipment new combat behaviour without writing a rule.

## Critical and evasion

| Attribute | Default | Range |
|:---|---:|:---|
| `damagenexus:crit_chance` | `0.0` | 0.0 – 1.0 |
| `damagenexus:crit_damage_additive` | `0.0` | 0.0 – 100.0 |
| `damagenexus:dodge_chance` | `0.0` | 0.0 – 1.0 |

Both chance attributes are fractions, so `1.0` means certainty.

## Damage bonuses

| Attribute | Default | Range |
|:---|---:|:---|
| `damagenexus:vulnerable_damage_additive` | **`0.20`** | 0.0 – 100.0 |
| `damagenexus:fire_damage_additive` | `0.0` | 0.0 – 100.0 |
| `damagenexus:cold_damage_additive` | `0.0` | 0.0 – 100.0 |
| `damagenexus:lightning_damage_additive` | `0.0` | 0.0 – 100.0 |
| `damagenexus:magic_damage_additive` | `0.0` | 0.0 – 100.0 |
| `damagenexus:wither_damage_additive` | `0.0` | 0.0 – 100.0 |
| `damagenexus:poison_damage_additive` | `0.0` | 0.0 – 100.0 |
| `damagenexus:melee_damage_additive` | `0.0` | 0.0 – 100.0 |
| `damagenexus:projectile_damage_additive` | `0.0` | 0.0 – 100.0 |
| `damagenexus:kinetic_damage_additive` | `0.0` | 0.0 – 100.0 |

**`vulnerable_damage_additive` is the one attribute in this group with a non-zero default: `0.20`.** Every other additive starts at zero, so a bare entity already carries a +0.20 vulnerable bonus before anything is equipped. Keep that baseline in mind when balancing — the "no modifiers" state is not a clean zero.

## Resistances

Nine resistances, all defaulting to `0.0` with the range **−10240.0 – 10240.0**:

`resistance_physical`, `resistance_fire`, `resistance_cold`, `resistance_lightning`, `resistance_magic`, `resistance_wither`, `resistance_poison`, `resistance_melee`, `resistance_projectile`, `resistance_kinetic`

The range is symmetric, so a **negative resistance amplifies** that channel instead of reducing it — useful for elemental weaknesses. Resistance is a rating fed through the curve controlled by `resistanceKValue`, not a straight percentage.

Note that `resistance_physical` is registered but **is not referenced by the shipped `physical` channel**; see [02 Damage channels](02_damage_channels.md).

## Reflection and healing

| Attribute | Default | Range |
|:---|---:|:---|
| `damagenexus:thorns` | `0.0` | 0.0 – 2048.0 |
| `damagenexus:healing_received` | **`1.0`** | 0.0 – 10.0 |

`healing_received` is a multiplier whose neutral value is `1.0`, not `0.0` — setting it to `0.0` makes the entity unhealable, and `2.0` doubles incoming healing.

## Names show as raw keys

Every attribute registers a translation key of the form `attribute.name.damagenexus.<id>`, but the shipped language files provide **only one of them**: `attribute.name.damagenexus.thorns`, and that entry exists **in `en_us.json` only**.

The practical result:

- On an English client, `thorns` displays a proper name and the other **24 attributes display their raw translation keys**.
- On a Chinese client, **all 25 display raw keys**, because `zh_cn.json` lacks even the thorns entry.

This is a display-only defect — the attributes function normally. It is also the widest of the language gaps described in [08 Configuration and diagnostics](08_configuration_and_diagnostics.md).

[Back to index](index)
