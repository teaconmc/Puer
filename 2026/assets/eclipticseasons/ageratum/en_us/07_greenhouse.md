---
title: "Greenhouse Cores"
navigation:
  title: "07 Greenhouse Cores"
---

# Greenhouse Cores

The greenhouse system lets you create a room that protects crops from one season. It is built from four season cores, a reusable container, and season essences.

## Container and essences

`eclipticseasons:greenhouse_core_container` is the empty frame. The four essences are registered as `spring_greenhouse_essence`, `summer_greenhouse_essence`, `autumn_greenhouse_essence`, and `winter_greenhouse_essence`.

<recipe id="eclipticseasons:greenhouse_core_container"/>

- Tinted glass (`#c:glass_blocks/tinted`) and copper ingots → 1 Container of Greenhouse Core

Each core is a shapeless recipe of its essence plus the container:

<recipe id="eclipticseasons:spring_greenhouse_core"/>
<recipe id="eclipticseasons:summer_greenhouse_core"/>
<recipe id="eclipticseasons:autumn_greenhouse_core"/>
<recipe id="eclipticseasons:winter_greenhouse_core"/>

## Core behavior

A season core is a block entity that tracks its season (`Season.SPRING` / `SUMMER` / `AUTUMN` / `WINTER`), an `AGE` stage (0–3), and a redstone `SEASON_ON` power value.

- `getSignal` emits `SEASON_ON` only when the core is at max `AGE`; otherwise it emits 0.
- The block acts as the source for `CropGrowthHandler` room checks and can restore reduced crop growth in its room.
- At max stage, the core emits `eclipticseasons:greenhouse` particles inside the room. At lower stages, when the season signal matches its own season, it instead emits `eclipticseasons:flying_bloom` particles near the core.

Sneak and use a core at max `AGE` to remove the essence and convert the block back into a `greenhouse_core_container`, dropping the matching essence item.

## Getting essences

Essences are quest rewards and gift loot table entries. The generated loot tables are `eclipticseasons:gifts/spring_greenhouse_essence`, `eclipticseasons:gifts/summer_greenhouse_essence`, `eclipticseasons:gifts/autumn_greenhouse_essence`, and `eclipticseasons:gifts/winter_greenhouse_essence`. There is no normal world chest or recipe for the essences themselves; see [Season quests](11_season_quests).

[Back to the Ecliptic Seasons index](index)
