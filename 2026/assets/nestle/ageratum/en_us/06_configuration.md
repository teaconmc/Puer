---
title: "Server Configuration"
navigation:
  title: "06 Server Configuration"
---

# Server Configuration

Nestle registers a server config and reparses its distance bands and entity lists when that config is loaded or reloaded.

## Main settings

| Key | Default | Purpose |
|:---|:---|:---|
| `far_away_nestle_value` | `1` | Increment used across dimensions, when either player is dead, or beyond every distance band |
| `damage_apportion_require` | `360000` (effective) | Nearby-sharing threshold, attack loss, and normal Nestle-item gain |
| `bound_damage_value_scale` | `1.0` | Multiplier for value lost after a bound participant shares damage |
| `nestle_free_require` | `720000` | Directional-value threshold for free nestling with `Z` |
| `nestle_radius` | `5` | Base radius for item targeting, several effects, and nearby sharing |
| `entities_not_spread_damage_by_default` | `[]` | Entity types that require stronger effect conditions for default nearby sharing |
| `nestle_lead_avoid_entities` | `[]` | Intended list of entity types that cannot be linked by a Nestle Lead |

Entity lists accept only resolvable IDs such as `minecraft:cow`.

## Distance bands

`nestle_value_by_distance` uses `distance:value_per_second` strings and is sorted by distance when the config loads. Its defaults are:

| Maximum distance | Increment | Maximum distance | Increment |
|---:|---:|---:|---:|
| `1` | `100` | `129` | `25` |
| `2` | `50` | `513` | `20` |
| `5` | `45` | `1025` | `15` |
| `10` | `40` | `2049` | `10` |
| `17` | `35` | `4097` | `5` |
| `65` | `30` | Beyond | `far_away_nestle_value` |

The implementation compares actual squared distance with each band's squared boundary. A player exactly on a boundary still uses that band.

## Current source issues

::: warning
The source first defines the sharing threshold as `damage_apportion_require = 720000`, then defines the attack-loss / Nestle-item gain field at the same path as `360000`. The later definition replaces that path in the config specification, so a new config has an effective default of `360000`, and both `ConfigValue` objects read the same key. There is no distinct `damage_player_value_reduce` key in this snapshot, so these three uses cannot be configured independently.
:::

In addition, the `nestle_lead_avoid_entities` interaction checks the **type of the player using the lead**, not the clicked target. The empty default is unaffected, but adding `minecraft:cow` does not reliably stop cows from being linked until that code is fixed.

Back up the server config before editing it, then test thresholds and entity lists after a reload. Changing `damage_apportion_require` affects the sharing threshold, direct-attack loss, and normal Nestle-item gain together.

[Back to the Nestle index](index)
