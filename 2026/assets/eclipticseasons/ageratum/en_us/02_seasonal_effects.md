---
title: "Seasonal World Effects"
navigation:
  title: "02 Seasonal World Effects"
---

# Seasonal World Effects

The solar term drives an environment model with three main bands: **temperature**, **rainfall**, and **humidity**. The bands are biome-aware, and several subsystems consume them every tick.

## Temperature and heat stroke

The `Temperature` model maps the current term and biome into states from `FREEZING` / `UNDER_FREEZING` through `WARM` / `HOT` up to `OVER_HEAT`. The mod registers one status effect, `eclipticseasons:heat_stroke` (`中暑` / heat stroke). The `HeatStrokeTicker` applies the effect in hot environments; its icon and name are bundled with the mod, and other heat-protective equipment can be assigned through tags (`#eclipticseasons:heat_protective_helmets` and similar).

::: warning
`heat_stroke` is a real registered effect, but survival counterplay depends on pack configuration. Do not assume a specific damage curve from this guide — the effect has no fixed hunger or damage schedule in the registered item data.
:::

## Rainfall modes

Rainfall is represented by the `BiomeRain` registry and its `CustomRain` builders. The default world contains multiple biome rain modes:

- `eclipticseasons:rainy` — ordinary rain-prone biomes.
- `eclipticseasons:arid` / `droughty` — dry biomes with little rain.
- `eclipticseasons:monsoonal` — wet-season and dry-season cycles.
- `eclipticseasons:seasonal` — rain appears only in certain seasons.
- `eclipticseasons:soft` / `rainless` — reduced or no rain.

The weather manager (`WeatherManager`) applies these per biome, per term, and the client renders matching rain/snow textures from `assets/eclipticseasons/textures/environment/`.

## Humidity

Humidity is sampled as a floating level and classified into `ARID`, `DRY`, `AVERAGE`, `MOIST`, `HUMID` states. The level comes from biome climate settings plus nearby humidity modifiers; the crop growth handler consumes it separately from temperature.

## Plants and animals

The mod registers several block/item tags used by the seasonal handlers:

- `#eclipticseasons:natural_plants`, `#eclipticseasons:volatile_plants` — plants the seasonal random-tick system may act on.
- `#eclipticseasons:crops/*` — crop season/humidity preference tags.
- `#eclipticseasons:breed/*` entity-type tags — breeding seasons for animals.
- `#eclipticseasons:habitat/*` block tags — habitat hints for ambient creatures.

The seasonal model also replaces leaves, grass, and snowy appearances through client-side color/model definitions, and can add seasonal ambient sounds (`ambient.spring_forest`, `ambient.garden_wind`, `ambient.night_river`, `ambient.windy_leave`, `ambient.winter_forest`, `ambient.winter_cold`).

[Back to the Ecliptic Seasons index](index)
