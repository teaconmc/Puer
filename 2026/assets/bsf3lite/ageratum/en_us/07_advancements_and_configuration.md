---
title: "Advancements and Configuration"
navigation:
  title: "07 Advancements and Configuration"
---

# Advancements and Configuration

## Advancements

Thirteen advancement JSONs exist, rooted at `bsf3lite:root` ("Better Snowball Fight", icon `bsf3lite:smooth_snowball`). They form a real progression tree rather than a flat list — `shotgun_consume` hangs off `snowball_cannon`, and `vodka_drink` hangs off `popsicle_consume`.

| Advancement JSON | Title | Requirement |
|:---|:---|:---|
| `root` | Better Snowball Fight | Entry point |
| `snowball_clamp_use` | Efficiency Upgrade | Make a smooth snowball with a clamp |
| `explosive_snowball` | Fire in the Hole | Make some explosive snowballs |
| `glove_use` | Not Today, Thank You II | Catch a snowball with your glove |
| `powder_snow_bucket_combat` | Ice Bucket Challenge II | Attack a blaze with a powder snow bucket |
| `empty_basin_full` | Ice Basin Challenge | Snow in a basin |
| `popsicle_consume` | Cool Down | Eat a popsicle or milk popsicle |
| `vodka_drink` | Fearless of the Cold | Drink Vodka |
| `snowball_cannon` | Escalation of the Situation | Make a snowball cannon |
| `snowball_machine_gun` | Unauthorized Alteration | Make a snowball machine gun |
| `shotgun_consume` | pooon kaka | Get a shotgun |
| `unstable_core_craft` | I cracked | Split the unstable core |
| `repulsive_field_generator` | Trust me, Pilot | Use the Repulsive Field Generator |

::: info
Four of the JSON file names do not match their translation keys — `empty_basin_full` uses `advancements.bsf3lite.empty_basin.*`, `shotgun_consume` uses `...snowball_shotgun.*`, `unstable_core_craft` uses `...unstable_core.*` and `vodka_drink` uses `...vodka.*`. The advancements still display correctly, because an advancement JSON names its translation key explicitly rather than deriving it from the file name. Only search-and-replace work is affected.
:::

The mod also registers its own criterion trigger, `bsf3lite:snowball_damage_trigger`, so a datapack can build advancements around snowball damage — the language file even carries a "deal over 40 damage" title for it, though no JSON in this build uses it.

## Server Configuration

Seven options live in the SERVER config, under a `server` section:

| Option | Default | Range | Meaning |
|:---|:---|:---|:---|
| `explosiveDestroy` | `true` | on/off | Whether explosive snowballs break blocks |
| `shootingInertia` | `true` | on/off | Whether shooting carries inertia |
| `reconstructSnowballCapacity` | `500` | `0`–`1100` | Snow capacity of the Reconstruct Snowball |
| `icicleSnowballCapacity` | `2147483647` | `0`–`2147483647` | Snow capacity of the Icicle Snowball |
| `expansionSnowballDuration` | `80` | `0`–max | Expansion Snowball lifetime in ticks |
| `reconstructSnowballDuration` | `80` | `0`–max | Reconstruct Snowball lifetime in ticks |
| `icicleSnowballDuration` | `80` | `0`–max | Icicle Snowball lifetime in ticks |

::: warning
`explosiveDestroy` defaults to **true**, so an out-of-the-box server lets Explosive Snowballs break terrain. If you are running a snowball-fight arena you almost certainly want it off — the whole point is that the arena survives the match.
:::

Two of the seven options have a documented range that is much narrower than you might guess. `reconstructSnowballCapacity` is capped at **1100**, not at the integer maximum, so a server cannot push Reconstruct walls arbitrarily far. `icicleSnowballCapacity`, by contrast, defaults to the integer maximum, so its default is effectively "unlimited".

## Client Configuration

The CLIENT config has exactly one option:

| Option | Default | Range | Meaning |
|:---|:---|:---|:---|
| `screenshake_intensity` | `1.0` | `0.0`–`5.0` | Screen shake amplitude; `0.0` disables it |

Screen shake is driven from the server by the `bsf3lite:screenshake` payload, but the amplitude is entirely a local choice — set it to `0.0` if shake makes you motion sick, and it costs you no gameplay information.

::: info
There is no COMMON config file. Every gameplay value is server-side and every comfort value is client-side, which is the right split — but it also means a client cannot soften `explosiveDestroy` for itself.
:::

[Back to the index](index)
