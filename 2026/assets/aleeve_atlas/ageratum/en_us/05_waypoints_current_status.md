---
title: Current Waypoint Status
navigation:
  title: 05 Current Waypoint Status
---

# Current Waypoint Status

## Behavior in Release Builds

The source defines `B` for a waypoint manager and `N` for quick creation, but both are registered and handled only in non-production development environments. In a normal released mod JAR, these keys do not appear in Controls and cannot open their screens.

The release therefore has no supported in-game flow to create, edit, delete, or select an active waypoint.

::: warning
Do not infer availability from language entries such as "Waypoint Manager" or "Quick Waypoint." A production-environment switch explicitly disables those keys.
:::

## Underlying Code That Remains

At startup the mod still reads or creates `config/aleeve_atlas-waypoints.json`. The data layer supports a name, dimension, XYZ, RGB color, enabled state, and one active waypoint. Renderers can display same-dimension points on the minimap and draw a world marker for the active point.

These classes show a feature under development, not a stable manual-editing format. Direct JSON changes have no screen validation, and incorrect fields or a future format change can lose data or prevent it from loading.

## Features Not Currently Available

- Clicking a fullscreen map to create a marker.
- Automatic death points.
- Waypoint teleportation.
- Sharing, import/export, groups, or multiplayer synchronization.
- Release-build batch management and quick navigation.

A modpack would need to alter and rebuild the mod to expose the existing development screens. A resource pack cannot enable key bindings disabled by Java's production switch.

[Back to the Aleeve Atlas index](index)

