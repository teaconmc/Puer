---
title: "Tempering"
navigation:
  title: "Tempering"
---

# Tempering

**Tempering** is the mod's weapon-upgrade system, done at the **Obelisk Smithing Table** (`obelisk_smithing_table`). It lets you roll a tempering affix onto a suitable weapon using a **Tempering Upgrade** template (`tempering_smithing_template`) and spare material.

## The menu

Opening the Obelisk Smithing Table shows the **Obelisk Tempering** menu with:

- A **weapon** slot (accepts weapons from the `temperable_weapons` tag; stack size 1).
- A **template** slot (accepts a Tempering Upgrade template).
- An **ingredient** slot (spare material).
- A **result** slot with a live preview of the chosen affix.

As soon as a valid combination is present the result slot previews the outcome; take it to perform the transaction, which consumes the appropriate inputs.

## Templates carry tier and weight

Each Tempering Upgrade template carries a **tier** and a **weight** (shown on its tooltip as *Tempering Tier* and *Tempering Weight*). This data is stored as an item data component (`tempering_template_data`). A component-less template is treated as tier 1, weight 0.00. Tier and weight steer which affixes a template can roll and how strongly.

## Directions

Tempering recipes are data-driven: pools and directions load from data at server reload (`obelisk_tempering_pools` / `obelisk_tempering_directions` listeners), so the affixes available can be adjusted without recompiling. The menu lets you pick a **direction**, which focuses the random result onto one family of affixes. The shipped directions include:

- **Arcane** — magic damage and spellblade-style gains.
- **Balance** — steady, general weapon tempering.
- **Echo** — favours unusual resonance affixes.
- **Edge** — physical offence, armour pressure, finishing power.
- **Flame** — fire damage and burning-target pressure.
- **Frost** — cold damage and physical-to-cold conversion.
- **Guard** — favours defensive affixes.
- **Hunt** — boss hunting and weakened-target execution.
- **Precision** — critical hits and opening-strike pressure.
- **Storm** — lightning and kinetic damage for forceful strikes.
- **Venom** — poison, wither and toxic conversion.

## Example affixes

The tempering pools define a broad affix catalog. Representative affixes include:

| Affix | Effect (tooltip) |
|:---|:---|
| Brutal | +10% global damage |
| Tempered | +3 physical damage |
| Flaming | +3 fire damage |
| Frostbound | +3 cold damage |
| Venomous | +3 poison damage |
| Withering | +2 wither damage |
| Stormcharged | +3 lightning damage |
| Piercing | +1.5 physical true damage |
| Critical Edge | +20% physical damage on critical hits |
| Executioner's | +20% physical damage below 35% target health |
| Giant Slayer's | +20% global damage against bosses |
| Spellblade | Gain 15% physical damage as magic |
| Flameforged | Converts 20% physical damage to fire |
| Frostforged | Converts 20% physical damage to cold |
| Stormforged | Converts 18% physical damage to lightning |

[Back to index](index)
