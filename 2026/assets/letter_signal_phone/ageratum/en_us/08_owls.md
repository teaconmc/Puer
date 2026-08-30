---
title: Owls
navigation:
  title: Owls
description: The owl entity, its nest block, owl eggs and the behaviours that drive it.
---

# Owls

Owls are the mod's living flavour: a small nocturnal creature with a nest block of its own.

## The entity

`owl` is a `CREATURE`, 0.45 x 0.65 blocks, with a client tracking range of 8 and an update interval of 3 — a fast update rate for smooth flight.

It uses a flying move control, so it genuinely flies rather than walking.

## Behaviour

Two custom goals drive it:

- **Follow meat** — owls are attracted to meat, which is the practical way to lead one where you want it.
- **Return to nest** — an owl remembers its nest and goes back to it.

The pairing means an owl is not a free-roaming decoration: give it a nest and it has a home to return to, and hold meat to draw it off that route.

## Nest, eggs and spawning

| Item / block | Notes |
|:---|:---|
| `owl_nest` | Wood-coloured block, strength 2.0 / 3.0, with its own block entity. |
| `owl_egg` | Stacks to 16. |
| `owl_spawn_egg` | Standard spawn egg bound to the `owl` entity type. |

A dedicated nest spawner handles owls appearing at nests, and the nest block entity keeps the nest's own state.

None of the three has a crafting recipe — they come from the creative tab or from the nest mechanic itself.

## Animation

The owl has its own animation set and render state, including a separate baby model, so adults and babies are visually distinct.

[Back to index](index)
