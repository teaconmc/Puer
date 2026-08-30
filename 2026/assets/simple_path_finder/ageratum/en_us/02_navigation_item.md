---
title: "Navigation Item"
navigation:
  title: "02 Navigation Item"
items:
  - "simple_path_finder:navigation"
---

# Navigation Item

`simple_path_finder:navigation` is a single-stack tool. It overrides destroy speed to zero and cannot destroy blocks. Right-clicking a block acts on the position one block above the clicked face, which is the intended walking layer.

## Modes

| Mode | Behavior |
|:---|:---|
| Default | Performs no server-side edit and leaves the current navigation result to be displayed. |
| Add Nav | Parses the clicked chunk and creates a walkable layer. Uses the player's current `player_block_distance` data, marks the saved data dirty, and syncs the chunk. |
| Remove Nav | Removes the first layer in the clicked chunk whose walk Y is within 3 blocks of the clicked position. |
| Add Link | Starts or completes a navigation link; see [Navigation Links](04_navigation_links). |

The item tooltip shows the current mode and layer. In Add Link mode, the item gets the enchantment glint after the first point is selected.

## Layers

Layer values are bytes, so the settings screen clamps them to `-128..127`. The default is layer `0`; the source comment recommends `0..9` for practical use. Each chunk allows up to `max_layers` layers, default `37`. The Add Nav handler reports `max_layers - 1` as the upper bound in its limit message even though a layer number is not itself bounded to that value.

## Settings Screen

Shift + Right-click opens the Navigation Point Settings screen:

- Mode buttons: Default, Add Nav, Remove Nav, Add Link.
- Layer field: numeric layer value.
- Link type buttons in Add Link mode: Normal, Teleport, Vehicle.
- Save: writes the mode and layer to the `simple_path_finder:navigation_mode` component and sends `simple_path_finder:update_item_properties`.
- Block Distance Config: opens the per-player distance editor.

Shift + Scroll while holding the item cycles modes without opening the screen. Changing item settings is not itself creative-gated; the creative requirement is checked when a server-side graph operation runs.

## Permission

When `require_creative_mode` is `false` (the default), Add Nav, Remove Nav and Add Link operations are allowed in any game mode. When set to `true`, those operations require creative mode and the server sends `simple_path_finder.nav.creative_required` otherwise. Opening the settings screen and saving item components is still allowed.

[Back to index](index)
