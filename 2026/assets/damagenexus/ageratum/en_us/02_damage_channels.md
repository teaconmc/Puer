---
title: Damage Channels
navigation:
  title: Damage Channels
description: The eight shipped channels, their trigger tags, armor behaviour, priority and resistance attributes.
---

# Damage channels

Every managed hit is sorted into one or more **channels**. Channels are fully data-driven: each one is a JSON file under `data/damagenexus/damagenexus_channels/`, so a datapack can retune or add them.

## The shipped channels

| Channel | Trigger tag(s) | Armor applies | Priority | Resistance attribute |
|:---|:---|:---:|---:|:---|
| `physical` | `is_physical` | **yes** | 0 | **none** |
| `kinetic` | `is_kinetic` | **yes** | 60 | `resistance_kinetic` |
| `magic` | `is_magic`, `is_spell` | no | 80 | `resistance_magic` |
| `poison` | `is_poison` | no | 90 | `resistance_poison` |
| `wither` | `is_wither` | no | 90 | `resistance_wither` |
| `cold` | `is_cold` | no | 100 | `resistance_cold` |
| `fire` | `is_fire` | no | 100 | `resistance_fire` |
| `lightning` | `is_lightning` | no | 100 | `resistance_lightning` |

All trigger tags are in the `damagenexus` namespace. Higher priority wins when a hit matches more than one channel.

There is also a built-in **`untyped`** channel used as the fallback classification. It has an id constant and a translation, but **no JSON file** — it is not datapack-tunable the way the eight above are.

## Two facts that will surprise you

**The `physical` channel declares no resistance attribute.** The attribute `damagenexus:resistance_physical` *is* registered and has the same range as every other resistance, but the shipped `physical.json` simply does not reference it. Physical hits are mitigated by armor, not by that attribute. If you want physical resistance to matter, override `physical.json` in a datapack and add `"resistance_attribute": "damagenexus:resistance_physical"`.

**Spear and mace damage is both physical and kinetic.** `is_physical` includes `#damagenexus:is_spear_attack` and `#damagenexus:is_mace_smash`; `is_kinetic` includes `#damagenexus:is_spear_attack` and `#minecraft:mace_smash`. Because `kinetic` has priority 60 and `physical` has priority 0, those hits resolve as **kinetic**. Both channels apply armor, so the visible difference is which resistance attribute is consulted.

## The damage-type tag tree

`is_physical` is the broad umbrella. It pulls in:

- `#damagenexus:is_melee` — which itself includes `#minecraft:is_player_attack` plus optional `player_attack`, `mob_attack`, `mob_attack_no_aggro`, `spear`
- `#damagenexus:is_projectile`
- `#damagenexus:is_explosion`
- `#damagenexus:is_mace_smash` — a thin wrapper over `#minecraft:mace_smash`
- `#damagenexus:is_spear_attack` — which includes `#damagenexus:is_spear_charge` and `is_spear_stab`
- `#minecraft:is_fall`
- optional entries: `falling_block`, `falling_anvil`, `falling_stalactite`, `stalagmite`, `thorns`, `generic`

Every optional entry is marked `"required": false`, so a missing damage type is skipped silently rather than failing datapack load.

## Two loose ends in the shipped tags

- **`damagenexus:spear_charge` is an empty tag file.** `data/damagenexus/tags/damage_type/spear_charge.json` contains `"values": []` and nothing anywhere references `#damagenexus:spear_charge`. Separately, `is_spear_charge.json` lists a *damage type* called `damagenexus:spear_charge` — but the mod ships no `data/damagenexus/damage_type/` directory at all, so that entry never resolves. It is marked optional, so it is silently ignored; the effective content of `is_spear_charge` is just the optional `minecraft:spear`.
- **`is_mace_smash` has no translation and no API constant.** It exists only as a data file consumed by `is_physical`. Every other `damagenexus:is_*` damage-type tag has both a lang entry and a `TagKey` constant in the API.

## Non-damage-type tags

| Tag | Contents |
|:---|:---|
| `damagenexus:bosses` (entity type) | `minecraft:ender_dragon`, `minecraft:wither` — only these two |
| `damagenexus:spears` (item) | optional `minecraft:spear`, optional `minecraft:trident` |
| `damagenexus:bypasses_damagenexus` (damage type) | **no file ships** — empty until you author one |

The `bosses` tag is what the `target_is_boss` / `attacker_is_boss` rule conditions read, so on a fresh install "boss" means exactly the dragon and the wither. Add your modpack's bosses to that tag for those conditions to be useful.

[Back to index](index)
