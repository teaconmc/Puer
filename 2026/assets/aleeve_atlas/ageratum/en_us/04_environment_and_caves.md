---
title: Environment and Caves
navigation:
  title: 04 Environment and Caves
---

# Environment and Caves

## Surface and Dynamic Lighting

When no chunk-cache sample is available, the live fallback uses the vanilla map color of the highest surface block and selects a biome-temperature fallback when needed. The map then adds shading from north-south height differences.

`dynamicLighting` defaults to on. The live fallback darkens colors using sky and block light, but a chunk-cache hit returns its stored color directly and bypasses both dynamic lighting and the biome fallback. The toggle can therefore affect only uncached surface cells and cave samples.

## Automatic Cave Mode

`caveMapping` defaults to on, but does not force an underground view at all times. The map switches from surface to cave sampling only when the block above the player cannot see the sky and its sky light is below 8.

For each sample column, it searches from 8 blocks above the player down to 24 blocks below for a non-air block with air above it, then displays a darkened version. It does not check collision or solidity, so fluids and plants can also qualify. If no suitable cave surface is found, it falls back to a further-darkened surface color.

The cave view is a top-down approximation of a height band near the player, not a complete cave cross-section, and it cannot show chunks the client has not loaded.

## Coordinates and Environment Text

`showCoordinates` defaults to on and prints integer X, Y, and Z below the map. `showEnvironment` defaults to off; enabling it also prints:

- Player direction and zoom level.
- The biome resource ID.
- Dimension resource ID, world time, and maximum local light.
- Map shape, rotation mode, radar status, and whether sampling is in surface or cave mode.

This diagnostic text currently uses fixed English abbreviations and resource IDs, so it is not fully localized with the selected game language.

[Back to the Aleeve Atlas index](index)
