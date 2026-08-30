---
title: Map Controls and Layers
navigation:
  title: Map Controls and Layers
---

# Map Controls and Layers

## Opening the Map

Press `M` by default to open the world map. The binding can be changed. It creates the map screen only after the player has joined a world and no other screen is open. On joining, the mod sends a chat hint containing the active binding.

The first view is centered on the player and uses the main camera's direction. The Locate button on the left can return the map center to the player at any time.

![The angled 3D world map with a waypoint and chunk-selection boundary](x3d_map:ageratum/x3d_map_world_map.png)

## Camera Controls

| Action | Input |
|:---|:---|
| Pan | Hold right mouse and drag |
| Keyboard pan | `W`, `A`, `S`, `D` |
| Free rotation | Hold middle mouse and drag |
| Horizontal rotation | `Q`, `E` |
| Zoom | Mouse wheel |
| Return to player | Select the Locate button on the left |

The wheel first changes field of view between `5` and `90` degrees. At the boundary it changes camera distance instead. Keyboard pan speed also scales with zoom distance, so movement is faster in distant views.

## Left-Side Layer Toggles

The left toolbar independently shows or hides:

- 3D terrain.
- The compass.
- The ground grid.
- Faces and names of visible online players.
- The camera-target marker.
- Near-camera chunk culling.
- Debug information.

Near-camera chunk culling skips terrain within roughly 64 blocks of the target. It can reveal areas hidden by nearby terrain, but it is not a cave cross-section tool.

## Top View Parameters

The first top row contains two Y modes: track terrain height with the camera target, or use a fixed height. The number box beside fixed mode accepts a Y value within the current dimension's build range.

The same row also provides:

- **LOD Distance**: the base distance where nearby block-level terrain starts changing to lower detail, defaulting to `512` blocks.
- **Load Distance**: the target distance used to retain and load map data for the view, defaulting to `1024` blocks in the UI.
- **Force Update**: submit chunks within the player's current client render distance to the local recompilation queue.

The second top row receives buttons from waypoint, minimap, chunk-selection, map-information, and other extensions. Every icon has a tooltip; read it before using deletion or server-request actions.

[Back to the x3d Map index](index)
