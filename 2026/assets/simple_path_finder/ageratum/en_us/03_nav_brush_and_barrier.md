---
title: "Navigation Brush and Barrier"
navigation:
  title: "03 Navigation Brush and Barrier"
items:
  - "simple_path_finder:nav_brush"
  - "simple_path_finder:navigation_barrier"
---

# Navigation Brush and Barrier

## Navigation Brush

`simple_path_finder:nav_brush` stores its settings in the `simple_path_finder:nav_brush` data component. Shift + Right-click in air opens the Navigation Brush Settings screen; right-clicking a block applies the brush server-side.

The brush only edits an existing navigation chunk that already has a layer near the clicked position. If there is no navigation data or layer, the server reports `no_nav_data` or `no_layer_at_pos` and does not modify anything.

| Mode | Behavior |
|:---|:---|
| All Edges | Applies the operation to all four horizontal edge slots stored at the clicked position. |
| Single Edge | Applies the operation only to the axis of the clicked face. |

| Operation | Distance stored on each targeted edge |
|:---|:---|
| Delete | `-1` (blocked) |
| Add | `1` (walkable, default cost) |
| Adjust Weight | The configured weight value |

The weight field is clamped to `-1..10000` in the GUI and defaults to `1`. Setting a weight to `-1` blocks that edge. The enum's helper methods suggest `1..16`, but the current GUI and packet path do not use that narrower clamp.

Brush operations are gated by `require_creative_mode`; the default allows them in any game mode. If enabled, non-creative players receive `simple_path_finder.nav_brush.creative_required`. Unlike the Navigation item, the brush has no destroy-speed override in the current build, so its left-click uses the default item behavior.

## Navigation Barrier

`simple_path_finder:navigation_barrier` is an invisible block. It does not occlude, suffocate or block the view, and fluids can replace it. It blocks navigation because `NavUtil` treats this block as collidable even though its render shape is invisible.

Its selection/collision shape is a full block only when the interacting context is holding the Navigation Barrier or Navigation item; otherwise the shape is empty. The local client spawns a `minecraft:block_marker` particle at each barrier while the main hand holds a Navigation Barrier item, making the barriers visible for editing.

The barrier itself has no GUI and no item settings. It is useful for closing gaps or paths that the automatic safe-cross check would otherwise accept.

[Back to index](index)
