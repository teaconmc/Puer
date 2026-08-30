---
title: "Wind Chimes and Pinwheels"
navigation:
  title: "10 Wind Chimes and Pinwheels"
---

# Wind Chimes and Pinwheels

The decorative season blocks are simple, but each one has a block entity and a registered ambient sound or spinning animation.

## Wind chimes

Three registered chime blocks share one block-entity type (`eclipticseasons:wind_chimes`):

- `bamboo_wind_chimes`
- `paper_wind_chimes`
- `wind_chimes`

The sounds registered for them are `eclipticseasons:block.wind_chimes`, `eclipticseasons:block.bamboo_wind_chimes`, and `eclipticseasons:block.paper_wind_chimes`. Recipes:

<recipe id="eclipticseasons:wind_chimes"/>
<recipe id="eclipticseasons:bamboo_wind_chimes"/>
<recipe id="eclipticseasons:paper_wind_chimes"/>

- `wind_chimes`: String + Bamboo.
- `bamboo_wind_chimes`: String + Bamboo Block + Paper.
- `paper_wind_chimes`: String + Paper + Blue and Yellow Dye.

## Pinwheels

The three registered pinwheel blocks share the `eclipticseasons:paper_wind_mill` block-entity type:

- `pinwheel_orange`
- `pinwheel_lime`
- `pinwheel_blue`

Each is a simple paper + matching dye + wooden rod recipe:

<recipe id="eclipticseasons:pinwheel_orange"/>
<recipe id="eclipticseasons:pinwheel_lime"/>
<recipe id="eclipticseasons:pinwheel_blue"/>

The block entity drives the visual rotation; no redstone output or interaction is registered on these blocks.

[Back to the Ecliptic Seasons index](index)
