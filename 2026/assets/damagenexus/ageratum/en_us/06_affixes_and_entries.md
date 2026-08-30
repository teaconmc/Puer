---
title: Affixes and Entries
navigation:
  title: Affixes and Entries
description: The two item data components that carry combat behaviour on equipment.
---

# Affixes and entries

Beyond datapack rules, Damage Nexus can attach behaviour directly to an item stack through two **data components**. Both are persistent and network-synchronized, so they survive saving and are visible to the client for tooltips.

| Component | Contents |
|:---|:---|
| `damagenexus:damage_affixes` | a list of affix definitions |
| `damagenexus:damage_entries` | a list of entry definitions |

## Affixes

An affix is the richer of the two. It carries:

- a **rarity** — `common`, `uncommon`, `rare`, `epic`, `legendary`, `unique`
- a **slot** — `item`, `weapon`, `armor`, `projectile`, `entity`, `global`
- a **tier**
- **rolled values** produced from roll ranges, so the same affix can generate different numbers per item
- **display** information — name, tooltip lines and flavour text
- its own **stacking** mode and validator
- the rules it contributes

Because affixes roll their values, an affix definition is a blueprint plus a generation spec; the instance stored on the item holds the rolled result.

## Entries

An entry is the lighter form: the same six slot values, its own stacking mode and validator, display information, and the rules it contributes — but no rarity and no tier, and no roll ranges. Use entries for fixed, deterministic additions and affixes for generated, variable ones.

## Slots

Both share one slot vocabulary:

| Slot | Intent |
|:---|:---|
| `item` | any item context |
| `weapon` | the attacking weapon |
| `armor` | worn armor |
| `projectile` | the projectile |
| `entity` | the entity itself |
| `global` | unconditional |

## How they surface to the player

Affixes and entries are shown through the tooltip system, which is **off by default**. The tooltip debug level has four steps:

| Level | Shows |
|:---|:---|
| `OFF` | nothing |
| `AFFIX_SUMMARY` | affix tooltips only |
| `AFFIX_AND_RULES` | affix tooltips plus rule detail |
| `FULL` | everything, including the full trace |

Note that entry and affix names are displayed from translation keys, and the shipped `zh_cn.json` **omits every test entry and test affix name** that `en_us.json` provides — 22 such keys in total. Custom content you author yourself is unaffected; this gap only concerns the bundled test fixtures.

## Contribution attribution

When diagnostics are on, each change to a hit is attributed to a source kind so tooltips and logs can explain where a number came from:

`rule`, `entry`, `affix`, `vanilla_bridge`, `vanilla_enchantment`, `vanilla_mob_effect`, `vanilla_damage_type`, `java_api`, `unknown`

That is why a tooltip can distinguish "this +3 fire came from an affix" from "this +3 fire came from bridged vanilla Flame".

## Owner kinds

Internally a rule records whether its owner is a `rule`, an `affix` or an `entry`. Stacking is resolved with that ownership in mind, so an affix-supplied rule and a datapack rule of the same name do not silently collapse into one unless their stacking mode says they should.

[Back to index](index)
