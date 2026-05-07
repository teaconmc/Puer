---
title: "Season Quests"
navigation:
  title: "11 Season Quests"
---

# Season Quests

The season-quest system combines registered quest signs, a datapack quest registry, advancements, special festival days, and a music-disc reward.

## Quest signs

`eclipticseasons:season_quest_ceiling_hanging_sign` and `eclipticseasons:season_quest_wall_hanging_sign` are hanging sign blocks with the `season_quest_hanging_sign` block entity. They display a quest defined in the `eclipticseasons:season_quest` datapack registry.

`eclipticseasons:seasonal_prayer_scroll` is registered as the intended way to interact with those signs, but its `tryApplyToSign` implementation is currently commented out in the checked-out source. The item has a recipe and a tooltip hint only; it cannot change a sign's quest yet.

<recipe id="eclipticseasons:seasonal_prayer_scroll"/>

- Any seeds (`#c:seeds`) + Paper → 1 Seasonal Prayer Scroll

## Quest registry content

The generated registry contains four core quests (`spring_core`, `summer_core`, `autumn_core`, `winter_core`). Each quest has a start term, an end term, a requested item and count, and an award. For example, `spring_core` runs from Spring Equinox to Beginning of Summer, requests **192 Wheat**, and awards `spring_greenhouse_essence`. The other cores award `summer_greenhouse_essence`, `autumn_greenhouse_essence`, and `winter_greenhouse_essence`.

## Advancements

The advancement tree is generated under `eclipticseasons:main`:

- `main/base` — always granted on tick (hidden toast).
- `main/root` — obtained by the `eclipticseasons:solar_terms` custom trigger; rewards `eclipticseasons:gifts/snowless_hometown`.
- `main/quest` — links the season-quest branch.
- `main/greenhouse_core`, `main/seasonal_prayer_scroll`, `main/seasonal_ritual`, `main/humidity_tank`, `main/dehumidifier`, `main/green_house`, and `main/heat_stroke` — item/use-based milestones.

Each season also generates a quest branch under `eclipticseasons:quests` with start, seed, harvest, and themed-task advancements (bread, hay, pumpkin pie, glistering melon, campfire, cake, milk, carpet, and similar).

## Special days

The `eclipticseasons:special_days` datapack registry marks festivals on the calendar: `spring_festival`, `new_year`, `flower_festival`, `spring_outing`, `chinese_valentines_day`, `mid_autumn`, `easter`, and `christmas`. Each entry points at a solar term and an end offset.

## Music disc

`eclipticseasons:snowless_hometown` is a registered jukebox-playable music disc (`eclipticseasons:jukebox_song/snowless_hometown`), with a gift loot table `eclipticseasons:gifts/snowless_hometown` used by the root advancement.

[Back to the Ecliptic Seasons index](index)
