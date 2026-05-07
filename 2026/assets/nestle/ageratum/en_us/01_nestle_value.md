---
title: "Nestle Value and Compass"
navigation:
  title: "01 Nestle Value and Compass"
items:
  - "nestle:nestle_compass"
---

# Nestle Value and Compass

## Directional values

Each player separately stores their value toward every other player. About once per second, the server checks every online pair. When both are alive in the same dimension, it adds the distance-band value to each direction; when they are in different dimensions or either is dead, it uses the far-away increment.

The two records are not forced to remain equal. These active events change only one direction:

- Player A uses a Nestle item toward B: A's value toward B increases.
- Player B directly attacks A: A's value toward B decreases, meaning the victim's record toward the attacker.

A value cannot fall below `-999`. Distance statistics are stored with the values in a player attachment and are copied after death.

## Default distance growth

Close players gain value faster. The default adds `100` per second within `1` block, `50` within `2`, and `45` within `5`; beyond the farthest configured band it adds `1`. See [Server configuration](06_configuration) for every band and the edit format.

## Nestle Compass

<item id="nestle:nestle_compass"/>

A player receives one Nestle Compass the first time they log into the world. The received flag is saved with player data, so relogging or dying does not grant another.

Every client tick, the compass searches for the nearest living entity in a box extending `500` blocks from the player along X and Z and `256` blocks both above and below along Y. The target need not be a player; the holder and dying entities are excluded. With no target, the needle spins randomly.

A non-spectator can right-click the compass to open the Nestle list. It displays the local player's stored directional values. Selecting an entry shows accumulated seconds in distance bands, far away, and in different dimensions.

## Free-nestle key

The default key is `Z`. The crosshair must select another visible player inside the configured radius, and your value toward that player must meet `nestle_free_require`, which defaults to `720000`.

When valid, the key makes you rush toward the target for about `10` server ticks. It consumes no item and, unlike the normal Nestle item, adds no extra value. The key does nothing before the threshold is reached. If you have Nestle Resistance, the shared movement helper blocks the rush even when the target and threshold checks pass.

[Back to the Nestle index](index)
