---
title: "Shooting and Resin Pools"
navigation:
  title: "02 Shooting and Resin Pools"
---

# Shooting and Resin Pools

## Firing a Resin Bullet

A loaded Resin Gun in the main hand enters an aiming state. Hold use for at least one game tick, then release it to fire; the gun becomes unloaded afterward. The current trigger does not fire a gun held only in the offhand.

The projectile uses a bright resin model and particle trail. When it stops flying, the impact is handled in this order:

1. First look for a nearby supported mob.
2. If no mob was hit, look for a nearby small resin pool and try to upgrade it.
3. If neither applies and the block below can support it, create a small resin pool.

## Sticky Effect

A valid mob struck by the projectile becomes resin-stuck: movement, jumping, and flying speed are each reduced by about `80%`, while knockback resistance is greatly increased. Water, lava, and settling on solid ground can clear the effect and may leave a resin pool beneath the mob.

Special mobs outside the capture classes can be included in a sticky-only set; they never become amber.

## Two Pool Sizes

| Type | Formation | Main Use | Drop When Broken |
|:---|:---|:---|:---|
| Small resin pool | A projectile lands on a solid block | Helps capture medium mobs | 1 Resin Clump |
| Large resin pool | Another shot lands near a small pool | Helps capture large mobs | 2 Resin Clumps |

Resin pools are interactive display structures, not ordinary registered blocks. Left-click one to dismantle it and recover resin clumps.

::: warning
The current large pool uses inconsistent internal tag spellings. It still participates in large-mob capture, but its intended wider slowing area is unreliable; see [Limits and Troubleshooting](05_limits_and_troubleshooting).
:::

[Back to the Resin Gun index](index)
