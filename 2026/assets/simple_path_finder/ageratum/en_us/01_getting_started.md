---
title: "Getting Started"
navigation:
  title: "01 Getting Started"
---

# Getting Started

## Creative Tab

The `simple_path_finder` creative tab adds, in order:

1. `simple_path_finder:navigation`
2. `simple_path_finder:nav_brush`
3. `simple_path_finder:locator`
4. `simple_path_finder:debug_nav`
5. `simple_path_finder:path_finder_block`
6. `simple_path_finder:navigation_barrier`

There are no crafting recipes for these items in the current data pack. The only generated recipe is the locator unbinding recipe `minecraft:unbind_locator`, which shapelessly returns a fresh `simple_path_finder:locator` from one bound locator. Note that the data generator stored it under the `minecraft` namespace, not `simple_path_finder`.

## Basic Workflow

1. Build a navigation layer in the area you care about with the Navigation item.
2. Repair or adjust edges with the Navigation Brush when terrain is not fully walkable.
3. Create links for shortcuts that are not directly adjacent.
4. Start navigation with the Locator, Path Finder Block, or a client command.
5. Follow the rendered path line. The mod never controls your movement.

## Controls

| Input | Behavior |
|:---|:---|
| Navigation item: Shift + Right-click | Open the Navigation Point Settings screen. |
| Navigation item: Shift + Scroll | Cycle through Default, Add Nav, Remove Nav and Add Link modes. Scrolling down moves to the next mode; scrolling up moves to the previous one. |
| Navigation Brush: Shift + Right-click in air | Open the Navigation Brush Settings screen. |
| Navigation Brush: Right-click a block | Apply the configured brush operation to that position. |
| Locator: Shift + Right-click in air while unbound | Bind the locator to the current player. |
| Locator: Right-click a block while unbound | Bind the locator to the position one block above the clicked face. |
| Locator: Right-click while bound | Start navigation toward the bound target. |
| Debug Navigation Stick: hold in the main hand | Show navigation graph boxes and link arrows; stack count controls the debug view. |

The mod registers no keybindings in Controls; all player-facing actions above are item interactions or mouse actions.

## Persistent Data

Navigation chunks are stored in the per-dimension `simple_path_finder:simple_path_finder_data` saved data. Player-specific block distance settings are stored in the `simple_path_finder:player_block_distance` attachment, and a Path Finder Block stores its destination in the `simple_path_finder:locator_data` attachment.

[Back to index](index)
