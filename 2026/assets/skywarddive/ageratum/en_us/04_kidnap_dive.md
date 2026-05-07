---
title: Kidnap Dive
navigation:
  title: 04 Kidnap Dive
---

# Kidnap Dive

## Starting One

Press `Shift` + `V` by default to start a Kidnap Dive. The initiator still needs Titan Armor and immediately pays the same food cost and loses all saturation.

After creating the session, the mod gathers living entities inside a box around the initiator. `kidnapRange` defaults to 8 blocks.

## Players and Creatures

- `allowKidnapPlayers` controls whether players can be carried and defaults to true.
- Players are still limited by `maxPassengers`, which defaults to 2.
- Non-player creatures are limited by `maxKidnapEntities`, which defaults to 6.
- Entity types in the `skywarddive:kidnap_blacklist` tag are skipped.

The built-in blacklist is empty, so no entity type is excluded by default. Server administrators should add bosses and any other entities that must not be moved.

## Mixed Counting

The implementation uses one success counter for both players and non-player creatures. Kidnapped players consume room under `maxKidnapEntities`; for example, with the default of 6, collecting 2 players usually leaves room for at most 4 ordinary creatures. Players are also separately constrained by `maxPassengers`.

Non-player creatures have gravity disabled and follow the formation through waiting, ascent, and gliding until the initiator ends the session. They cannot sneak to detach like a player.

::: warning
Food has already been spent even when no eligible target is found, and a solo session still continues. The empty blacklist also means bosses have no automatic protection, so servers should populate the tag before enabling this activity.
:::

[Back to the Skyward Dive index](index)

