---
title: "Pathfinding and Rendering"
navigation:
  title: "06 Pathfinding and Rendering"
items:
  - "simple_path_finder:debug_nav"
---

# Pathfinding and Rendering

## Server-Side Pathfinding

`server_side_pathfinding` defaults to `true`. In this mode:

- Navigation data is saved in the per-dimension `simple_path_finder:simple_path_finder_data` saved data on the server.
- Clients send `simple_path_finder:pathfinding_request`; the server runs the search and sends `simple_path_finder:pathfinding_result`.
- The server queue allows at most two executing requests and eight queued requests globally, with at most one queued request per player.
- The server shows progress in the action bar every few ticks and a completion message when the task finishes.
- Full navigation data is not synced by default. While a player holds the Navigation or Debug Navigation Stick, the server sends the chunks the player already received and new chunks as they become visible, plus the current chunk every eight ticks.

## Client-Side Pathfinding

When `server_side_pathfinding` is set to `false`:

- The server sends the full per-dimension nav data on login, sends full updates after graph edits, and sends incremental `simple_path_finder:sync_single_chunk` updates.
- The client runs the search asynchronously on Minecraft's background executor and allows only one client-side task at a time.
- The client keeps nav data by dimension in `ClientNavDataManager`; failure without data produces `simple_path_finder.nav.no_data`.

Both modes render the result on the client, so server-side pathfinding still requires the client mod for the path line.

## Search Behavior

The current `NavPathFinder` first runs a connectivity check, then an A* search with a `110%` heuristic weight. It builds edges from the stored walk layers and navigation links, accepts a target when Manhattan distance is at most one block, and adds extra costs for height changes and direction changes. Link types do not change the cost in the current implementation. Start and end positions are nudged by one block if they are not directly on a layer.

## Path Line

A successful result is stored on the client and rendered as a gradient line through the path points. With the client `smooth_path` option (default `true`), the line is generated with three Chaikin smoothing iterations; when disabled, straight segment lines are rendered instead.

The result is cleared when:

- The player reaches the target (Manhattan distance at most one block).
- `/spf nav clear` is run.
- The player disconnects or changes dimension.

The mod never moves the player. It only shows where the computed path is.

## Client Commands

| Command | Behavior |
|:---|:---|
| `/spf nav <x> <y> <z>` | Runs client-side pathfinding to the given block position. |
| `/spf nav clear` | Clears the current rendered path. |
| `/spf navserver <x> <y> <z>` | Sends a server-side pathfinding request. |
| `/nav ...` | Alias for `/spf nav ...`. |
| `/navserver ...` | Alias for `/spf navserver ...`. |

These are client commands, not admin commands. If the server-side queue is full or the player already has a queued request, the server returns `simple_path_finder.nav.already_pathfinding`.

## Debug Navigation Stick

Holding `simple_path_finder:debug_nav` in the main hand shows the local navigation graph when nav data is available. The same debug rendering is also active while holding the Navigation item. The stick's stack count controls the view:

| Count | Debug view |
|:---|:---|
| 1-2 | Radius 3 (the count is clamped upward). |
| 3-16 | Manhattan radius equal to the count. |
| 17-48 | Radius 16, only layer `count - 32`. |
| 49-63 | Radius 16, all layers. |
| 63 | Also reruns the current client-side navigation to the same target. |
| 64 | Disables debug rendering. |

The debug view draws colored layer boxes, white boxes for walkable edges (red for blocked edges), and yellow-to-blue arrows for nav links. Layer colors cycle green for positive layers and blue for negative layers.

[Back to index](index)
