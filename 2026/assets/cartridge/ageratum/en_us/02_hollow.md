---
title: Hollow
navigation:
  title: Hollow
---

# Hollow

## Hollow entity

**`hollow`** is a mob (MISC category, 1×0.5 hitbox, 0.4 eye height, 20 max health) — a hollowed creature you can summon. `HollowEntityData` carries its configuration, and `HollowEntityEventListener` / `HollowPlayerEventListener` wire behaviour.

## Randomizer

**`hollow_randomizer`** randomises a hollow's appearance/data when used.

## Carried hollow

**`carried_hollow`** (0×0, fire-immune) is the in-hand variant: when a hollow is carried with **Carry On**, `CarriedHollowEntity` plus `CarriedHollowEventListener` and render layers (`HollowEarRenderLayer`, `HollowFaceRenderLayer`, `HollowSkinRenderLayer`) render the hollow that you're physically carrying, with `CarriedObjectRenderMixin` / `PickupHandlerMixin` / `PlacementHandlerMixin` adapting Carry On.

## Rendering & commands

`HollowModel`, `HollowRenderer`, `HollowEarRenderLayer` etc. handle visuals; the `/hollow` command (`HollowCommand`) is available for setting up hollows.

[Back to index](index)