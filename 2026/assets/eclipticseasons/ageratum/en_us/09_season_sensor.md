---
title: "Season Sensor"
navigation:
  title: "09 Season Sensor"
---

# Season Sensor

`eclipticseasons:season_sensor` is a redstone block that emits a power value based on the current season. It has no block entity; all state is stored in block-state properties.

## Crafting

<recipe id="eclipticseasons:season_sensor"/>

- Copper Ingot, Glass, Clock, Redstone Dust, Planks → 1 Season Sensor

## Controls

- **Right-click** without sneaking cycles the manually selected season (`SEASON`) and shows the selected season in chat.
- **Sneak + right-click** cycles the mode among the four combinations of `AUTO` and `ON_SIGNAL` (manual or auto, natural or signal source).
- In `AUTO` mode, the sensor follows the world season automatically and ignores manual clicks.

## Signal behavior

The block has a `POWER` property (0–15) and is a redstone signal source.

- **Signal mode** (`ON_SIGNAL=true`): power is read from the nearest greenhouse core (`GreenHouseCoreBlockEntity.getCurrentSeason`). If the sensor's selected season matches the core season, it emits the core's power value; otherwise it emits 0.
- **Natural mode** (`ON_SIGNAL=false`): power is derived from the current solar term when the selected season matches the world season, otherwise 0.

The sensor updates on placement and on random ticks, so redstone circuits can track season changes without a constantly ticking clock.

[Back to the Ecliptic Seasons index](index)
