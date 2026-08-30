---
title: Air and Water
navigation:
  title: Air and Water
description: Airborne control, break falls, dodging, swimming and the swim dash.
---

# Air and water

## Airborne

The default state whenever you are off the ground and no wall or water state matches. Momentum applies its own air acceleration, drag and horizontal speed cap here, and records per-tick velocity for the animation system.

The most important number is `airFriction`, default `0.998` against vanilla's `0.91`. Horizontal momentum decays very slowly, so a well-built approach carries you a long way.

## Break fall ready

Hold **`C`** while falling faster than a threshold and you assume a pre-landing pose whose animation tracks your descent speed. On landing this becomes a break fall.

Switch: `enableBreakFallReady`.

## Break fall

Landing in a low-centre pose — from a slide, a prone crawl, or the ready state above — turns the impact into a roll. On exit, if your forward speed exceeds your downward speed you chain directly into a slide.

Fall damage is reduced in layers, all applied in the same fall event:

| Condition | Distance reduction | Multiplier |
|:---|:---|:---|
| Jet Booster equipped | −12 blocks | ×0.5 |
| Break-fall-ready charge available | −6 blocks | ×0.3 |
| No charge available | −3 blocks | ×0.6 |

The booster row stacks with whichever break-fall row applies. Final distance is clamped so it never goes below zero. A break fall is additionally triggered whenever the fall distance exceeds the smaller of 4 blocks and your safe-fall-distance attribute.

Switch: `enableBreakFall`.

## Dodge

A short, fast reposition. Three trigger styles exist and each has its own client option:

| Trigger | Option | Default |
|:---|:---|:---|
| Hold sprint, then double-tap a direction key — dashes along that direction | `enableDodgeDirDouble` | **on** |
| Hold a direction, then press sprint — dashes along your velocity | `enableDodgeSprintClick` | off |
| Hold a direction, then double-tap sprint — dashes along your velocity | `enableDodgeSprintDouble` | off |

Dodging **on the ground** works without the Jet Booster. Dodging **in mid-air** requires it.

Two properties matter in combat:

- **A dodge cancels all incoming damage.** While the dodge state is active the mod cancels the damage event outright and zeroes your accumulated fall distance. This is complete invulnerability for the duration, not a reduction.
- Charges are pooled. `airDodgeStorage` (default `2`) sets how many dodges you can bank, and `airDodgeCooldown` (default `40` ticks) sets how fast a single charge returns. The swim dash draws from the same pool.

> The project README describes a single stored charge; the shipped config default is `2`. Trust the config file.

Switch: `enableDodge`.

## Swim

Entered by sprinting underwater while holding the up direction, or at the surface by holding **`C`** with the up direction. Vanilla swimming, but running on the mod's adjusted water drag.

Water drag is dynamic: it scales with how much of your hitbox is actually submerged, so a body mostly out of the water is governed by something close to air drag rather than full water resistance.

## Swim dash

Underwater, press sprint while already swimming — or press the up direction with sprint when you are not yet swimming — to dash along your view direction for about 10 ticks of thrust. If the dash carries you out of the water it turns into a dolphin hop, keeping the swimming pose and body rotation in the air.

The swim dash shares the dodge cooldown and charge pool.

Switch: `enableWaterPush`.

## Water skating and other booster-only air abilities

Three further abilities exist and are switchable, but **all of them require the Jet Booster**:

| Ability | Switch |
|:---|:---|
| Water skating — staying on the surface above a minimum speed (`minWaterSwimSpeed`, default `10.0` m/s) | `enableWaterRun` |
| Slow falling | `enableFallSlow` |
| Air jump (a second jump in mid-air) | `enableAirJump` |

## A note on the swim dash's name

The swim dash state is registered with the translation key `state.momentum.swim_dash`, but **neither shipped language file defines that key**. When the state name is displayed — for example on the debug overlay — it renders as the raw key instead of a readable name. Every other state is translated in both English and Chinese.

[Back to index](index)
