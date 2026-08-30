---
title: Compatibility
navigation:
  title: Compatibility
description: GeckoLib animation, Iris shader handling, the ProjectMe projection layer and the mod's mixins.
---

# Compatibility

The mod ships three optional integration layers plus its own mixin set.

## GeckoLib

Benderson and its companions are GeckoLib-animated (model, renderer, data tickets, a weapon geo layer and an item-in-hand geo layer). A compatibility mixin adjusts actor bone animation keyframes so the mod's animations behave correctly.

## Iris (shaders)

There is a dedicated Iris compatibility package. It exists so the mod's custom rendering — most notably the **Hei Tide skybox renderer** and the mod's own global render pipelines — keeps working when Iris shaders are active. It touches the render pipeline, GL device/command encoder and render-pass internals through accessors and mixins.

If you play with shaders and see the boss arena sky rendering incorrectly, this is the layer responsible.

## ProjectMe

The ProjectMe layer synchronises the boss across instances. It provides:

- `projected_benderson` — a non-saving, non-summonable projection entity whose display name gains the `«Projection»` suffix,
- a synchroniser abstraction with a **dummy** implementation and a **Redis** implementation,
- Redis messages for entity sync, entity removal and phase-state changes,
- reflective config accessors.

This means a Benderson fight can be mirrored to other servers/instances, with the projection reflecting the real boss's phase state.

## Mixins

The mod's own mixins cover: attributes, network channel handling, the vanilla effect commands, ender pearls (including the random-teleport consume effect), food data, item/model render state, the level renderer, living entities, particles, the sky renderer, the sound engine and the sound manager.

Two consequences worth knowing:

- Ender-pearl behaviour is modified, so pearl-based escapes in the arena may not work as they do in vanilla.
- Food/saturation handling is modified, matching the saturation-breaking curses in [Anticalabrum curses](05_anticalabrum_curses.md).

## Boss music

Boss music is handled by dedicated sound-instance, track-player and theme-manager classes, with a level special-performance handler and a sound-position visitor. Boss music is therefore mod-driven rather than a plain looping record, which is also why the sound engine and manager are mixed into.

[Back to index](index)
