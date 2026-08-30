---
title: Targeting and Waypoints
navigation:
  title: 06 Targeting and Waypoints
---

# Targeting and Waypoints

## Target Lock

While gliding, the client scans for other living entities inside a 60-degree half-angle view cone, unobstructed, and within the configured range. Each candidate accumulates progress independently. The default maximum distance is 128 blocks, and remaining in the cone for 30 ticks completes the lock and plays a cue; several targets can lock at once.

The basic display draws brackets. The advanced display adds a ring, beam, corner marks, and a name. Colors distinguish bosses, neutral mobs, hostiles, players, and other targets.

::: warning
Lock-on is entirely a client visual. It sends no attack request and does not deal damage, guide a projectile, or change flight direction.
:::

## Glide Waypoints

The mod automatically records the player's latest death position and current respawn point. During gliding, a top compass bar shows the direction and distance of same-dimension waypoints. Markers are also projected onto the screen within the configured client render distance.

- The death point uses a red star marker.
- The respawn point uses a green house marker.
- World projection defaults to 96 blocks and can be configured from 16 to 4096.
- Waypoints from other dimensions are not shown on the current HUD.

These waypoints are maintained automatically. There is no interface to create, rename, or share custom points. Changing spawn updates the spawn marker, and dying replaces the previous death marker.

## Client Toggles

`renderTargeting` controls the entire lock-on display; the advanced option does nothing when it is off. `renderAdvancedTargeting` hides only the advanced decoration and retains the basic lock. `waypointRenderDistance` limits world projection, while the top compass can still indicate a farther direction.

[Back to the Skyward Dive index](index)
