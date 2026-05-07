---
title: "Crop Growth Control"
navigation:
  title: "05 Crop Growth Control"
---

# Crop Growth Control

The crop system makes plant growth depend on the current solar term and the local humidity level, rather than always advancing at the vanilla rate.

## Crop data

The mod registers a datapack registry `eclipticseasons:crop` through `CropGrowControlBuilder`. Generated data provides season and humidity preference entries for many vanilla crops, grouped by tags:

- Season tags: `#eclipticseasons:crops/spring`, `#eclipticseasons:crops/summer`, `#eclipticseasons:crops/autumn`, `#eclipticseasons:crops/winter`, plus combined tags such as `spring_summer` and `all_seasons`.
- Humidity tags: `arid`, `dry`, `average`, `moist`, `humid`, and combined names such as `arid_average`.
- `unaffected_by_season` and `not_killed_by_season` tags define plants that ignore or survive hostile seasons.

The handler also knows biome agro-climatic zones (`cold`, `temperate`, `hot`, `nether`, `end`) from `eclipticseasons:agro_climatic_zone`.

## How chance is computed

For each random tick, `CropGrowthHandler` multiplies a season grow chance and a humidity grow chance:

- The season chance comes from the `GrowParameter` selected for the current solar term.
- The humidity chance clamps the environment humidity into the crop's preference curve.
- Rain at the plant can add one humidity step.
- A valid greenhouse room can stop the season failure and let the humidity gate pass (`simpleGreenHouse` mode), or add the room's humidity modification to the environment before the crop's humidity check (non-simple mode).

## What you can observe

Use the [Growth Detector](04_measurement_tools) on a supported crop to see which of the above factors is hurting growth. The message includes the climate zone, greenhouse-room status, preferred seasons, preferred humidity, and an estimated grow chance.

::: note
The datapack entries are the source of truth. If a modpack overrides `eclipticseasons:crop/*`, the same handler applies the new preferences; this guide documents the built-in behavior only.
:::

[Back to the Ecliptic Seasons index](index)
