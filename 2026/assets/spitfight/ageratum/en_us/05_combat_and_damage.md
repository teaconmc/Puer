---
title: "Combat and damage"
navigation:
  title: "05 Combat and damage"
---

# Combat and damage

## Damage formula

Spit damage scales with both your charge and your melee power:

> damage = clamp( strength × 0.1 × your Attack Damage attribute, 1, 15 )

where *strength* is the saliva actually spent (see [03 Charging and spitting](03_charging_and_spitting)).

| Property | Value |
|:---|:---|
| Minimum damage | 1 |
| Maximum damage | 15 |
| Damage type | mob projectile, attributed to you |

Two things follow from the formula:

- **Your weapon matters even though you throw nothing.** The Attack Damage attribute is a multiplier, so a stronger melee build spits harder.
- **The cap is reachable.** With a bare hand (1 attack damage) you stay at the 1 damage floor no matter how long you charge; damage only scales once your attack damage is high enough for `strength × 0.1 × attack` to exceed 1.

Hitting a target also registers you as having last hurt it, so normal aggro and retaliation follow.

## Face hits

If the spit lands near the target's eye height **and** you and the target are facing each other closely enough (a head-yaw difference greater than 140 degrees), the hit counts as a face hit. When the victim is a player, they get a full-screen overlay for a short duration scaled from the spit strength, clamped to between 20 and 100 frames.

The face-hit overlay is purely a client-side visual; it does not add damage or blindness. Face detection is a bonus humiliation effect, not a damage bonus.

## Friendly fire

Two independent config switches gate whether a spit can hurt someone:

| Config | Default | Effect when the check blocks the hit |
|:---|:---|:---|
| `friendlyFire` | `false` | Members of the **same scoreboard team** cannot damage each other |
| `playerFriendlyFire` | `true` | Players **can** damage other players by default |

Read the defaults carefully: **player-versus-player spitting is enabled out of the box**, while same-team protection is on. So teammates are safe from each other, but any two players not on the same team can freely spit each other down.

The team check only applies when the shooter actually has a team; a teamless shooter is never blocked by it.

## What a blocked hit still does

When friendly fire blocks the damage, the spit skips damage **and** effect transfer for that target — but the face-hit detection still runs, so a blocked spit can still splash a teammate's screen. The projectile is discarded either way.

## Non-living targets

Only living entities take damage and receive effects. A spit that hits a non-living entity is simply discarded, though face-hit geometry is still evaluated first.

## The spit can be deflected

`spitfight:spit` is added to the vanilla `minecraft:redirectable_projectile` entity type tag, which means it behaves like other redirectable projectiles — it can be deflected rather than always reaching its target. Plan for incoming spit to be turned back.

[Back to index](index)
