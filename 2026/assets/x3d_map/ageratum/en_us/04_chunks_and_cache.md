---
title: Chunks and Local Cache
navigation:
  title: Chunks and Local Cache
---

# Chunks and Local Cache

## Where Map Data Comes From

When the client receives a chunk, the mod places it in an update queue. Block changes also enqueue the affected chunk again. The compiler reads surface height, visible block faces, and colors to produce nearby block data and distant heightfields.

The cache is separated by save or server name and dimension under:

`<game directory>/x3dmap/<save or server>/<dimension namespace>/<dimension path>/`

Waypoint and minimap-setting extension files are kept in the same dimension directory.

## Update Queue and Saving

By default, up to `1000` queued chunks are processed every `20` ticks. Every `1200` ticks, or about 60 seconds, dirty regions and extension data for all loaded dimensions are saved. Leaving a world or unloading a dimension also performs a synchronous save.

Force Update only submits chunks within the player's current client render distance to the local recompilation queue. It does not ask the server for chunks the client has never received.

## Box-Selecting Chunks

1. Select the Selection Mode button on the top toolbar.
2. Hold left mouse and drag a rectangle across map terrain.
3. Release to add the covered chunks to the current selection set.
4. Choose one of the available actions.

| Action | Actual effect |
|:---|:---|
| Clear Selection | Clear only the current selection without changing cache |
| Client Re-render | Recompile selected chunks from data already held by the client |
| Server Resend | Ask the server to load and send selected chunks; button availability is configuration-controlled |
| Delete Chunks | Remove selected chunks from the local map cache |

The selection set exists only while the map is open and is cleared when the screen closes.

## Deleting the Entire Cache

The red Delete button on the first top row does not operate on the current selection. After confirmation, it iterates over and deletes every chunk in the current dimension's cache. The dialog explicitly marks the operation as irreversible.

Deletion does not modify the server world. Map content returns only after those chunks are received and compiled again, or through an allowed server-resend operation.

::: danger
The safest approach is to close the map and back up the relevant `x3dmap` directory first. Waypoints live in extension files, so deleting selected chunks and deleting the whole directory have different effects.
:::

[Back to the x3d Map index](index)
