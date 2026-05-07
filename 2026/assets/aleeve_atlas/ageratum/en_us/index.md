---
title: Aleeve Atlas
navigation:
  title: Aleeve Atlas
---

# Aleeve Atlas

Aleeve Atlas is a client minimap with surface and cave views, direction and environment text, entity radar, and a local map cache. This guide follows the current source of `aleeve_atlas` 0.0.1.

## Reading Order

- [Minimap Basics](01_minimap_basics): opening settings, default presentation, and map data sources.
- [Display, Rotation, and Zoom](02_display_and_zoom): shape, orientation, size, position, and five zoom levels.
- [Entity Radar](03_radar): marker categories, colors, scan range, and count limit.
- [Environment and Caves](04_environment_and_caves): dynamic lighting, underground switching, and text information.
- [Current Waypoint Status](05_waypoints_current_status): keys disabled in production and the underlying code that remains.
- [Commands and Troubleshooting](06_commands_and_troubleshooting): the cache command, disk data, and feature boundaries.

## Current Role

Once installed on the client, the minimap overlays the normal game HUD. It adds no items, blocks, entities, recipes, or server gameplay, and it has no fullscreen world map.

::: warning
Although the language file contains waypoint-screen text, production builds do not register the `B` and `N` waypoint keys. Do not treat screens available in a development environment as released functionality.
:::

