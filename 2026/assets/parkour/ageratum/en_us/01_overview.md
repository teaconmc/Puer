---
title: "Overview and Toggle"
navigation:
  title: "01 Overview and Toggle"
---

# Overview and Toggle

## Mod id and registries

The mod id is `parkour`. The current checkout registers no items, blocks, entities, menus, loot tables or recipes. Its registries are:

- `parkour:parkour_state`, a synced custom registry for parkour states; the fallback entry is `parkour:default`.
- `parkour:parkour_context`, a serialized and synced player attachment holding ground, wall, jump, swim, input and state data.
- `parkour:sensor_data_manager`, a memory-only player attachment for sensor data.
- `parkour:slide`, `parkour:landing_roll`, `parkour:wall_jump`, `parkour:armhang`, `parkour:support_wall_jump` and `parkour:speed_vault` sound events.

## Local enable switch

`client_settings.enableParkour` defaults to `true`. The source defines a `Toggle Parkour Mode` key mapping using `Ctrl + P`. Pressing it flips the client config, saves it, updates the local state, sends `SyncParkourEnabledC2SPayload` to the server and shows a Parkour Mode enabled/disabled overlay message. The same payload is sent when the local player joins a world.

Source boundary: the key registration event in `ClientParkourKeyBindings` registers only the Roll/Slide mapping. The `Toggle Parkour Mode` mapping object is created and consumed, but it is not passed to `RegisterKeyMappingsEvent` in the inspected source, so the key may not appear in the vanilla controls list.

## Keys

The Roll/Slide key mapping is `key.parkour.roll_slide`, shown as `Roll/Slide`, default `V`. It is the only custom action key actually registered. It drives the ground actions in [Ground movement](02_ground_movement) and the swimming boost in [Swimming movement](04_swimming_movement).

## Common movement restrictions

`ParkourChecks.canPerformAction` rejects spectator, passenger, sleeping, auto-spin attack, elytra fall-flying and creative flight. `canPerformBehavior` additionally rejects a non-forced swimming pose. Many actions also reject water, lava, climbable blocks or an unsafe fall distance above `safeFallHeight`.

## State machine

The custom registry holds these states: `parkour:default`, `parkour:vanilla`, `parkour:crawl`, `parkour:slide`, `parkour:backstep`, `parkour:landing_roll`, `parkour:wall_run`, `parkour:wall_slide`, `parkour:wall_climb`, `parkour:armhang` and `parkour:speed_vault`. Client input is predicted locally and then confirmed or corrected by the server — your moves work the same for everyone. See [Multiplayer and good to know](07_multiplayer_and_limits).

[Back to index](index)
