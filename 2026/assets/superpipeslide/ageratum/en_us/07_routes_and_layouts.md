---
title: "Routes and Layouts"
navigation:
  title: "07 Routes and Layouts"
---

# Routes and Layouts

Routes turn raw pipe platforms into scheduled transport lines. A **route line** owns one or more **layouts**, and each layout is an ordered list of platform stops.

## Route editor

Craft and use the route editor to open the editor screen:

<recipe id="superpipeslide:route_editor"/>

The editor starts with an empty "Create a route to start" state. From there you can:

- Create, update and delete route lines.
- Set a route name, one translated name and up to three theme colors.
- Add one or more layouts to a line.
- Set the station order for a layout from the list of available claimed platforms.
- Toggle whether the layout is bidirectional or a loop.
- Split a bidirectional layout into two one-way layouts.
- Delete a layout or an individual platform stop.

A layout can hold up to 512 platform stops in one saved station order.

## Route sections

The server computes route sections between consecutive ordered platforms. A section needs valid pipe connections in the correct direction; the editor reports one of these statuses:

| Status | Meaning |
|:---|:---|
| Valid | The section path is usable. |
| Disabled | The section is intentionally disabled. |
| Stale | Needs recompute after network or attribute changes. |
| Incomplete | The pathfinder stopped before finding a full path. |
| Broken | No usable route exists. |
| Ambiguous | The path solver found more than one conflicting route. |

Changing a pipe attribute or direction limit marks dependent sections stale, and the server queues a route-data update so clients refresh their route caches.

## Section solver limits

Pathfinding for one route section is bounded by `routePathfinderMaxVisitedNodes` (default `16384` visited nodes). A section that exceeds the budget is marked incomplete rather than blocking the whole network.

## Saving and versioning

Every route edit includes the route revision the client last saw. If another player changed the route data in the meantime, the server rejects the stale edit and asks the client to refresh, preventing lost updates.

[Back to the SuperPipeSlide index](index)
