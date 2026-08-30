---
title: Display, Rotation, and Zoom
navigation:
  title: 02 Display, Rotation, and Zoom
---

# Display, Rotation, and Zoom

## Shape and Orientation

`mapShape` selects a square or circle. With `rotation` off, north stays at the top. When it is on, terrain rotates with the player's view so the top of the screen represents forward.

The player arrow and radar use the same rotation, so changing modes preserves relative target positions. The source also retains a manual-rotation state, but no current key, wheel action, or screen calls it.

## Five Zoom Levels

`zoom` accepts 1-5 and defaults to 2. The terrain sample step for each level is:

| Level | Blocks crossed by each base sample | Suitable use |
|:---|:---|:---|
| 1 | 1 | Nearby building and caves |
| 2 | 2 | Default exploration |
| 3 | 4 | Local routes |
| 4 | 6 | Wider area |
| 5 | 12 | Distant overview |

At a higher level, each map cell covers more world distance and small features are more likely to fall between samples.

## Size and Anchor

`minimapSize` offers Small at 76 pixels, Medium at 92, and Large at 124. `minimapAnchor` selects top left, top right, bottom left, or bottom right. Coordinates and environment text continue downward from the map's lower edge, so check for overlap with the hotbar or other HUDs when using a bottom corner.

## Changing the Display

The current version changes shape, rotation, zoom, size, and position only through the `M` configuration screen. Although the state class implements zoom increment and reset methods, no wheel action or hotkey calls them. Familiar scroll controls from other minimap mods do not apply here.

[Back to the Aleeve Atlas index](index)

