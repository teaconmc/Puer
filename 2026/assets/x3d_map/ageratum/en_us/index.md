---
title: x3d Map
navigation:
  title: x3d Map
---

# x3d Map

x3d Map provides a rotatable and zoomable 3D terrain map together with a minimap, waypoints, and client-side chunk-cache management. This documentation follows the current `1.0.3` source for `x3d_map`.

## Reading Path

- [Map Controls and Layers](01_controls): open the map, move its camera, and use both toolbars.
- [Minimap](02_minimap): understand HUD content, in-map settings, and client options.
- [Waypoints](03_waypoints): create, edit, hide, share, and teleport to waypoints.
- [Chunks and Local Cache](04_chunks_and_cache): learn where map data comes from and how selection, saving, and deletion work.
- [Performance and Compatibility Mode](05_performance_and_compatibility): tune LOD, VRAM use, update queues, and OpenGL support.
- [Server Options](06_server_options): review chunk resend, batch-processing risk, and sea-level override.

## How It Works

- The client compiles block-level terrain and distant heightfields from chunks it has received.
- Map data is saved by save or server name and dimension under the game directory's `x3dmap` folder.
- The world map and minimap reuse the same terrain cache while maintaining separate camera and display settings.
- The map has no cave view. Asking the server to resend chunks does not change that limitation.

::: warning
The map cache, waypoints, and minimap settings are client data, not an authoritative backup of the server world. Back up the `x3dmap` directory before deleting cached data if it matters to you.
:::
