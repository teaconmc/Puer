---
title: Waypoints
navigation:
  title: Waypoints
---

# Waypoints

## Creating a Temporary Waypoint

There are two entry points:

1. Double left-click terrain on the map.
2. Select Add Waypoint on the top toolbar, then click the target location once.

Both methods first create a temporary waypoint and immediately open its detail window. The default name comes from the localized “Waypoint” text, and the default color is light blue `0xFF66CCFF`. A temporary waypoint uses a white map icon and does not automatically become permanent when the map closes.

## Editing and Saving

The detail window can change:

- Name.
- X, Y, and Z coordinates.
- Marker color.

Save creates a new permanent waypoint from a temporary one. Editing a permanent waypoint directly marks waypoint storage for saving, while Delete removes it from storage.

## Visibility and Management

The waypoint toggle on the left controls whether the full world map overlay displays waypoints. A waypoint's own Hidden state excludes it from that overlay, but it remains available in Waypoint Manager and can be shown again.

The manager lists names, positions, and actions, with controls for teleporting, showing or hiding, and editing. Each waypoint stores a unique UUID, name, block position, ARGB color, and hidden state.

## Sharing and Teleporting

Share directly sends a chat message containing the waypoint name and short coordinates. It does not send a clickable object or import that waypoint into another player's storage.

Teleport is enabled only when the client sees that the player has gamemaster command permission. It sends:

`/tp <x> <y + 1> <z>`

The destination Y is one block above the stored waypoint. The server's command permission and the destination ultimately determine whether teleportation succeeds.

::: warning
Waypoints are part of client-side map storage. Chat sharing is not a backup or synchronization mechanism. Back up the `x3dmap` data directory before deleting waypoints or their map cache if needed.
:::

[Back to the x3d Map index](index)
