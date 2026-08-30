---
title: "Route Map and Navigation"
navigation:
  title: "08 Route Map and Navigation"
---

# Route Map and Navigation

The full route map renders the synchronized route network as an interactive map. From the map you can inspect routes, find platforms and start navigation to any station.

## Opening the map

Two inputs open the same full route map:

- Press **P** (the mod's `full_route_map` keybinding) while no screen is open.
- Right-click the pipe transit guide.

<recipe id="superpipeslide:pipe_transit_guide"/>

## Map features

The map is a 3D world-space overlay with a search field, dimension menu and route controls:

- **Search** stations or routes by name.
- **Switch dimension** to view the Overworld, Nether or End route data.
- **Layout modes**: `physical`, `geographic`, `practical` and `schematic`. Practical is the default; schematic is the presentation-style metro map; physical shows the real pipe geometry.
- **Station cards** list platforms, lines, transfers and position.
- **Route cards** summarize stops, sections, dimension crossings and station loops, with diagnostics for broken or missing paths.
- **Route card view modes** show the same layout as physical, practical or schematic diagrams.
- **Deep cluster cards** group dense station clusters; click to open them.
- **Fold and portal boundaries** show where a layout crosses a space/dimension fold, and missing cross-dimension paths are marked so you can find the broken section.

The camera is controlled by middle-dragging to rotate and tilt; clicking the camera chip resets the view to top-down.

## Starting navigation

Open a destination card and press **Navigate**. The client searches the route network, builds a recommended itinerary and shows a route preview with boarding point, ride time, transfers and final walk. Cross-dimension routes require confirmation.

Once navigation starts, the HUD guides you through:

1. **Walk to boarding** platform.
2. **Board** the highlighted platform.
3. **Ride** the route until the next transfer or destination.
4. **Same-station transfer**, **out-of-station transfer**, or **cross-dimension transfer** when needed.
5. **Final walk** after dismounting near the destination.

The mod warns you if you board the wrong platform, leave the boarding range, or try to use a broken section. It also recalculates automatically when the route data revision changes.

## Slide HUD notices

While sliding, notices report station arrivals, passing stops, terminal arrival, blocked sections and transfer points. A passing station notice explains that a platform is not on the current line, so you continue without stopping.

[Back to the SuperPipeSlide index](index)
