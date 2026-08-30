---
title: Minimap
navigation:
  title: Minimap
---

# Minimap

## HUD Content

The minimap appears in the top-right corner by default. It is a square 3D view rendered into a separate off-screen texture and draws:

- Terrain from the current map cache.
- Compass marks.
- A centered player-direction marker.
- The player's X, Y, and Z coordinates below the minimap.

The minimap is not rendered while the whole HUD is hidden, another screen is open, or `minimapEnabled` is off. Changing dimension resets its frame state and switches it to that dimension's map storage.

![The top-right minimap showing terrain, direction, and coordinates](x3d_map:ageratum/x3d_map_minimap.png)

## In-Map Settings Window

Open the world map and select the minimap icon on the top toolbar:

| Setting | Default | Range or effect |
|:---|:---:|:---|
| Enable Minimap | On | Immediately show or hide the HUD |
| High Detail Range | `8` chunks | Slider range from `0` to `64` |
| Rotate Map | Off | Keep the player's facing direction at the top when enabled |

High-detail range and rotation mode are written to map-extension storage. The enable toggle also updates client configuration.

## Client Configuration

| Configuration key | Default | Range |
|:---|:---:|:---:|
| `minimapEnabled` | `true` | On / off |
| `minimapSize` | `25` | `1%` to `50%` of screen height |
| `minimapPadding` | `5` | `0%` to `25%` of screen height |
| `minimapRenderInterval` | `10` | `1` to `200` frames |

Both size and padding are based on screen height. Increasing `minimapRenderInterval` reduces off-screen terrain redraws. Between redraws, the renderer still offsets the cached texture for player movement, so the picture is not completely frozen on every skipped frame.

## Difference from the World Map

The current minimap renderer explicitly draws terrain, compass marks, the player marker, and coordinates. Waypoint icons are handled by the full world map's overlay and are not drawn separately by the minimap HUD. Do not assume world-map waypoint visibility is a minimap feature.

::: tip
If the minimap lowers frame rate, first reduce High Detail Range or raise the render interval above `10`. If it only occupies too much space, adjust size without reducing terrain quality.
:::

[Back to the x3d Map index](index)
