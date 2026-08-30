---
title: "Advanced Snow Golems"
navigation:
  title: "05 Advanced Snow Golems"
---

# Advanced Snow Golems

The Advanced Snow Golem is a buildable, equippable, mode-switchable ally. It is the deepest system in the mod, and all of it is driven by items rather than a GUI.

## Summoning

Place a **Smart Snow Block** on top of two stacked snow blocks. That spawns an **Advanced Snow Golem** (`bsf3lite:bsf_snow_golem`) — the same shape as building a vanilla snow golem, with the mod's block as the head.

| Entity | Max health | Follow range | Speed |
|:---|:---|:---|:---|
| `bsf_snow_golem` | 15 | 60 | 0.3 |
| `hostile_snow_golem` | 15 | **100** | 0.3 |
| `bsf_dummy` | `Float.MAX_VALUE` | 60 | **0** |

All three are 0.7 × 1.9 blocks. The two golems are immune to Powder Snow.

The hostile variant is not just a re-skin: its follow range is 100 against the friendly golem's 60, so a hostile golem notices and engages you from far outside the range at which your own golem would react.

## Equipping

Right-click the golem with the item you want it to carry:

| Right-click with | Effect |
|:---|:---|
| Weapon or snowball tank | Equip it |
| Empty hand | Remove the tank |
| Sneak + empty hand | Remove the weapon |
| Vanilla snowball | Switch the golem's skin |

::: warning
An Advanced Snow Golem can only use the **Snowball Cannon or the Snowball Shotgun**, and it can only fire from a **tank**. Handing it a rifle or the machine gun, or giving it loose snowballs instead of a filled tank, leaves it unable to shoot. This is stated on the Smart Snow Block's own tooltip and is the most common reason a freshly built golem stands there doing nothing.
:::

Equipping plays the mod's `snow_golem_equip` particle, so a successful hand-off is visible.

## Behaviour Modes

The **Snow Golem Mode Tweaker** configures golems. It holds two independent modes in data components and cycles each with the modifier key plus mouse scroll:

**Behaviour** (5 values, `tweaker_status_mode`):

| Mode | Meaning |
|:---|:---|
| Standby | Hold position, do not act |
| Follow | Follow the owner |
| Escort | Follow **and** attack |
| Patrol | Attack without following |
| Turret | Stay put and shoot |

**Target** (2 values, `tweaker_target_mode`), combined with an aim selector that the HUD reports as Target / Aim:

| Selector | Meaning |
|:---|:---|
| None | No target |
| Monster | Hostile mobs |
| Designate | A specific marked target |
| Rival | The opposing team |
| All | Every creature |

Right-clicking a golem with the tweaker applies the settings, and the HUD confirms with "Mode imported successfully". Each cycle plays the vanilla dispenser click so you can count steps without looking.

## Healing

Golems are maintained by feeding them, not by repairing an item:

| Feed | Effect |
|:---|:---|
| Smooth snowball, snow block, powder snow | Restore health |
| Ice | Grant a regeneration effect |

The regeneration grant has a **cooldown period for the buff**, reported in the HUD as "Cooldown period for buffs", so you cannot chain-feed ice for permanent regeneration.

## Transport and Creative Tools

| Item | Role |
|:---|:---|
| `snow_golem_container` | Store and release an Advanced Snow Golem |
| `creative_snow_golem_tool` | Toggle Enhanced Mode, and copy/paste a golem |

The container carries the golem in a `snow_golem_data` component — a whole entity in an item, so a configured golem survives being carried across the world.

The Creative Snow Golem Tool's **Enhanced Mode** makes a golem regenerate every tick, raises its resistance, cuts core cooldowns, and stops it consuming ammunition or weapon durability. It can also copy a golem's full configuration and re-spawn that duplicate by right-clicking a block — the intended way to field a matched squad.

::: info
Enhanced Mode is explicitly a creative/testing convenience. A golem in Enhanced Mode never runs out of ammunition, so it is not a fair benchmark for how a survival golem performs.
:::

## The Dummy

`bsf_dummy` is a training target: `Float.MAX_VALUE` health, `Double.MAX_VALUE` knockback resistance, and movement speed 0. It cannot be killed, cannot be pushed, and does not move — exactly what you want for testing snowball damage and the `snowball_damage_trigger` criterion.

## Recipes

<recipe id="bsf3lite:smart_snow_block"/>

<recipe id="bsf3lite:snow_golem_mode_tweaker"/>

<recipe id="bsf3lite:snow_golem_container"/>

[Back to the index](index)
