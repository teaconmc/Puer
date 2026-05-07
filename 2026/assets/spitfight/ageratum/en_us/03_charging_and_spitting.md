---
title: "Charging and spitting"
navigation:
  title: "03 Charging and spitting"
---

# Charging and spitting

Charge length is the single number that drives both how much saliva you spend and how hard the spit hits.

## The charge cycle

1. **Press and hold** the Spit key. On the first tick the client tells the server you started charging.
2. **While held**, the client counts up one per client tick, and the server counts its own charge ticks.
3. **On release**, the client sends the accumulated count plus the point you are looking at, and the server launches the projectile.

The aim point is resolved by picking along your view up to **50 blocks**, so the spit is aimed wherever your crosshair lands within that distance, not merely straight ahead.

## Saliva spent

The amount consumed is:

> spent = min( max( `playerMinSpitCount`, charge ticks ), your current saliva )

In other words:

- A quick tap still costs the minimum (10 by default).
- A longer hold costs one saliva per tick held.
- You can never spend more than you actually have — a spit with low saliva simply uses what is left.

The value actually spent becomes the projectile's **strength**, which drives damage.

## Refusals

Before anything is launched, two checks can cancel the spit:

| Condition | Result |
|:---|:---|
| Saliva below `playerMinSpitCount` and not in Creative | *"You are too thirsty to do this."* — nothing is fired |
| Outside the available range | *"Not in usable range for this mod, unable to do this."* — nothing is fired |

Charging always stops when you release, whether or not the spit succeeded.

## Overcharging suffocates you

Holding the key is not free. Each server tick while charging, the charge counter rises; once it reaches or passes `playerMaxChargingTicks` (default 100 ticks = 5 seconds) you start taking **1 point of "in wall" (suffocation) damage per tick** for as long as you keep holding.

This is a hard cap on charge length: you can keep charging past 5 seconds for a stronger spit, but you pay in health, and the damage does not stop until you release.

Note that this suffocation check runs only while you are inside the available range.

## Trajectory

The projectile spawns at your eye level, slightly in front of your body, and is shot toward your aim point with a small upward correction proportional to horizontal distance — so longer shots arc rather than dropping short. It is launched with a base velocity of `1.5` and an inaccuracy spread of `5.0`, which means shots scatter noticeably and the spit is not pinpoint accurate at range.

[Back to index](index)
