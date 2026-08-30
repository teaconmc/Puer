---
title: "The 24 Solar Terms"
navigation:
  title: "01 The 24 Solar Terms"
---

# The 24 Solar Terms

Ecliptic Seasons replaces the simple in-game day counter with a year made of **24 solar terms**. Each term lasts a fixed number of in-game days set by the `lastingDaysOfEachTerm` configuration, and the 24 terms roll into four seasons of six terms each.

## Term and season order

The terms follow the traditional calendar. Each term belongs to one season:

- **Spring** (春): Beginning of Spring, Rain Water, Insects Awakening, Spring Equinox, Fresh Green, Grain Rain.
- **Summer** (夏): Beginning of Summer, Lesser Fullness, Grain in Ear, Summer Solstice, Lesser Heat, Greater Heat.
- **Autumn** (秋): Beginning of Autumn, End of Heat, White Dew, Autumn Equinox, Cold Dew, First Frost.
- **Winter** (冬): Beginning of Winter, Light Snow, Heavy Snow, Winter Solstice, Lesser Cold, Greater Cold.

The mod exposes each term through its translation key (for example `info.eclipticseasons.environment.solar_term.beginning_of_spring`) and publishes a short poetic "alternation" line when the term turns over.

## How the year advances

A whole cycle is `24 × lastingDaysOfEachTerm` in-game days. The in-game day counter supplies the term: the current term is derived from the day index, so the world does not need a separate time-of-day offset. The session stores the solar day in world data, so the season survives restarts.

```text
solar day = 0            -> Beginning of Spring (start)
solar day = 1..23 * N    -> each later term
day = 239 * N            -> Greater Cold, just before the next year
```

## What the term drives

Nearly every other system reads the current term:

- **Temperature** and **humidity** bands are sampled from the term.
- **Rainfall** (`BiomeRain`) and weather effects change by term and biome.
- **Crop growth** uses the term to decide which `CropGrow` parameter applies.
- **Animal behavior** (breeding seasons) and ambient sounds follow the term too.

[Back to the Ecliptic Seasons index](index)
