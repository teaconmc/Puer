---
title: Minimap Basics
navigation:
  title: 01 Minimap Basics
---

# Minimap Basics

## Opening Settings

Press `M` by default to open the Aleeve Atlas client configuration. The binding can be changed in Controls. When `display` is off, the entire minimap HUD is hidden; `M` can still open settings so it can be enabled again.

The default presentation is:

- Top-right corner.
- Medium size at 92 pixels.
- Square map.
- North-up rather than rotating with the player's view.
- Zoom level 2.
- Coordinates, dynamic lighting, cave mode, and entity radar enabled.

## Map Data Sources

The client processes only chunks it has received. It does not request unseen regions from the server and cannot reveal terrain the client never received. There are two surface paths: the live fallback subtracts one from surface height, while the main chunk-cache path uses the `WORLD_SURFACE_WG` result directly. The latter can sample air above the terrain and store an incorrect height or color.

Surface data is written locally by single-player world or server address, then by dimension. The current region writer and reader disagree on integer encoding, so a populated `r.X.Z.atlas` file is normally treated as corrupt and deleted on its next load. Do not rely on reuse across sessions. Radar and cave sampling also continue to depend on entities and blocks in the current client world.

## HUD Composition

The terrain layer draws a top-down view from block map colors, and a center arrow represents the player and facing. Radar and any existing waypoints occupy the marker layer; coordinates and environment information appear below the map. Circle mode clips both terrain and markers, while square mode uses the complete frame.

The minimap is a navigation aid, not a world backup. Its cache stores simplified surface samples for drawing and cannot reconstruct complete chunks, block entities, or creatures.

[Back to the Aleeve Atlas index](index)
