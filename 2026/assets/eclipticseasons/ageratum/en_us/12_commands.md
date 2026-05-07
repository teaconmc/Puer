---
title: "Commands"
navigation:
  title: "12 Commands"
---

# Commands

The mod registers a single command root per mod id (`eclipticseasons`). Every subcommand except the ordinary solar readouts requires Game Master permission (`2`).

## `/eclipticseasons debug`

- `debug reset surface_biome_cache [pos]` — rebuild the biome surface cache, optionally for one loaded block position.
- `debug ...` is only available to Game Masters.

## `/eclipticseasons solar`

- `solar set <day>` — set the solar-term day and sync it to the level.
- `solar add <day>` — add to the current solar day.
- `solar get` — print the current solar day.
- `solar setTerm <term> [find_next]` — jump to a solar term by its English name; with `true`, jump to the next occurrence instead of from year 0.
- `solar getTerm` — print the current solar term.
- `solar getSeasonSignal` — print the season signal at the executing entity's position.
- `solar getSubSeason` — print the sub-season.
- `solar getMonth` — print the Gregorian month.
- `solar getSpecialDay` — print the current special-day registry key, if any.
- `solar setSnowTempChange <tempChange>` / `solar getSnowTempChange` — set or read the snow temperature adjustment in `[-0.25, 0.25]`.

## `/eclipticseasons weather <biome>`

- `weather <biome> rain [effect]` — force rain (or thunder, with `thunder`) for matching biomes; the optional `effect` is a `WEATHER_EFFECT` registry key.
- `weather <biome> clear` — clear forced rain.
- `weather <biome> snow_depth <0..100>` — set the biome snow depth.
- `weather <biome> effect clear|<effect>` — set or clear a weather effect.

## `/eclipticseasons export`

- `export biome_map <pos>` — export the biome/snow map at a loaded position.
- `export humid_charts <namespace>` — export humidity charts for every biome in a namespace to `eclipticseasons/humid/<namespace>`.

::: warning
`debug` and `weather` can inspect or mutate server-side seasonal state. They are permission-gated to Game Masters, but a permissions mod may still be needed on shared servers for finer control.
:::

[Back to the Ecliptic Seasons index](index)
