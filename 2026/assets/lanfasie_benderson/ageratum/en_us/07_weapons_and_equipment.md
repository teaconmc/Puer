---
title: Weapons and Equipment
navigation:
  title: Weapons and Equipment
description: Every registered weapon, the Shalloway shield, the Mundane Praiser set and the Dawnwaiter totem.
---

# Weapons and Equipment

None of these items has a crafting recipe; they come from the creative tab or the encounter.

## Swords

| Item | Material | Attack damage | Attack speed |
|:---|:---|:---|:---|
| `sword_of_dawnwaiter` | Diamond | 4.5 | −2.8 |
| `sword_of_dawnwaiter_tainted` | Diamond | 4.5 | −2.8 |
| `claymore_of_hei_power` | Netherite | 8.5 | −3.2 |
| `shalloway_sword` | Diamond | 4.5 | −2.0 |

"Sword of the Dawnwaiter", its rusted variant, the "Claymore of Hei Power" and the "Shalloway Sword". The tainted sword and the claymore are **not** listed in the creative tab.

## Shalloway Shield

`shalloway_shield` is a shield equipped **unswappably** in the offhand. Its blocking profile:

- block delay **0.25**, block scale **1.0**
- one damage reduction entry: **135.0 base**, factor **0.0**, ... **1.0**
- item damage function: threshold **3.0**, base **1.0**, factor **1.0**
- bypassed by the `#minecraft:bypasses_shield` damage type tag
- block sound: vanilla shield block; break sound: vanilla shield break

## Mundane Praiser set

| Item | Notes |
|:---|:---|
| `mundane_praiser_bow` | A bow with enchantability 1. |
| `mundane_praiser_cane` | Plain item ("Mundane Praiser Crozier"). |
| `mundane_praiser_mana_foci` | Plain item ("Mundane Praiser Mana Foci"). |
| `mundane_praiser_rapier` | The complex one — see below. |

The **Mundane Praiser Rapier** is a full weapon component build:

- enchantability **10**, durability **1326**
- piercing weapon (with spear attack / spear hit sounds)
- attack range component `(0.0, 3.5, 0.0, 4.5, 0.0625, 0.5)`
- minimum attack charge **1.0**
- swing animation **STAB**, 15 ticks
- use effects enabled
- weapon component value **1**

## Other items

- `dawnwaiter_totem` — "Dawnwaiter Totem", a plain registered item.
- `end_guardian_statue` — block item for the statue block, registered as a **double-high** block item using the block description prefix.
- `deep_latent_caller` — block item for the arena block used to start the fight.
- `ominous_orb` — see [Starting the fight](02_starting_the_fight.md).
- `provoking_stick` — see [Enmity and provoking](04_enmity_and_provoking.md).
- `aggro_up_icon` — the Aggro Up effect icon.
- Five Unforgiven spawn eggs — see [Adds and companions](06_adds_and_companions.md).

[Back to index](index)
