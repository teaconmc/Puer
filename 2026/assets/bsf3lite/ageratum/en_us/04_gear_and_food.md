---
title: "Gear and Food"
navigation:
  title: "04 Gear and Food"
---

# Gear and Food

Beyond throwing things, the mod adds defensive gear, mobility items, crafting cores and a few consumables.

## Catching Snowballs

| Item | Behaviour |
|:---|:---|
| `glove` | Catch the incoming snowball |
| `jedi_glove` | Catch the snowball flying towards you **without touching it** |
| `repulsive_field_generator` | Generate a capture field that stops and rebounds snowballs |

The two gloves are the direct counter to every launcher on the previous page: a defender with a glove converts an incoming projectile into ammunition. The Jedi Glove upgrades that to a ranged catch.

The Repulsive Field Generator is area denial rather than a personal catch. It has four dedicated sound events — `field_start`, `field_push`, `field_snowball_stop` and the shared push cue — plus its own `generator_fix` and `generator_push` particles, so the field's state is audible and visible to everyone nearby.

## Mobility

| Item | Behaviour |
|:---|:---|
| `ice_skates` | Move faster on ice, hindered on non-ice surfaces |
| `snow_fall_boots` | Eliminate fall damage when landing on snow |
| `cold_compression_jet_engine` | Provide continuous thrust; standing on snow automatically recharges it |

The Ice Skates are a genuine trade-off, not a pure upgrade: the speed bonus on ice comes with a movement penalty everywhere else.

The Snow Fall Boots have an enchantment interaction — their tooltip reads *"Enchanting: [Kinetic Energy Storage] Gain acceleration based on falling height"*, so with that enchantment a long drop onto snow converts into forward speed instead of damage.

The jet engine has five startup sounds (`cold_compression_jet_engine_startup1`–`startup5`) and a moving-sound instance, and its item model has a dedicated `cold_compression_jet_engine_sc` sub-model directory for its charge state.

## Snow Handling Tools

| Item | Behaviour |
|:---|:---|
| `basin` | Holds snow and throws it forward; the thrown snow **clogs the target's weapon** |
| `snow_block_blender` | Stirs snow chunks into powder snow |
| `snow_trap_setter` | Press and hold to place traps on snow |
| `smart_snow_block` | Summons and configures Advanced Snow Golems |

The Basin is the mod's disable tool. Its thrown snow applies the **Weapon Jam** effect, so the target cannot use a weapon for a short time — the counter-play to a well-supplied gunner. It carries a `basin_snow_type` component and has three states in the language file: Empty Basin, Basin of Snow and Basin of Powder Snow. The modifier key toggles between shovelling snow and throwing it.

## Cores

Five cores are registered, four of them plain Uncommon items used purely as crafting ingredients:

| Item | Role |
|:---|:---|
| `super_power_core` | Weapon upgrade ingredient (Uncommon) |
| `super_frozen_core` | Weapon upgrade ingredient (Uncommon) |
| `repulsion_core` | Uncommon crafting ingredient |
| `gravity_core` | Uncommon crafting ingredient |
| `unstable_core` | **Can split on a lodestone** |

The Unstable Core is the only one with behaviour of its own. Splitting it on a lodestone has its own `unstable_core_break` sound and its own advancement. Both the Power and Frozen cores have two recipes each (`super_power_core` / `super_power_core_2`), so there are two routes to each.

::: info
`repulsion_core` and `gravity_core` are registered and craftable, but nothing in this build consumes them — the items they fed in the full mod (the gravity and repulsion snowballs) are not registered here. See [Scope, Localization and Networking](08_scope_localization_and_networking).
:::

## Food and Drink

| Item | Behaviour |
|:---|:---|
| `popsicle` | Extinguishes the flames on your body |
| `milk_popsicle` | Extinguishes flames **and** removes potion effects |
| `vodka` | Grants Cold Resistance |

The Milk Popsicle is the milk bucket's job in dessert form; the plain Popsicle only handles fire. Vodka is the intended source of the mod's own `cold_resistance` effect, which matters because so many of the snowballs freeze things.

## Recipes

<recipe id="bsf3lite:glove"/>

<recipe id="bsf3lite:jedi_glove_1"/>

<recipe id="bsf3lite:repulsive_field_generator"/>

<recipe id="bsf3lite:empty_basin"/>

<recipe id="bsf3lite:snow_block_blender"/>

<recipe id="bsf3lite:ice_skates"/>

<recipe id="bsf3lite:snow_fall_boots"/>

<recipe id="bsf3lite:unstable_core"/>

<recipe id="bsf3lite:popsicle"/>

<recipe id="bsf3lite:vodka"/>

[Back to the index](index)
