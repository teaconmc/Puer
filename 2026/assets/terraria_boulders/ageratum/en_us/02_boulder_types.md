---
title: Boulder types
navigation:
  title: Boulder types
---

# Boulder types

Each boulder has a block and a matching entity that rolls and reacts on impact.

## Basic boulders

- **`boulder`** — the classic rolling boulder (`BoulderEntity`).
- **`oak_log_boulder`** — a full-collision log boulder (`FullCollisionBoulderBlock`).
- **`snow_boulder`** — a snowball-style boulder that grows as it rolls.

## Hazard boulders

- **`lava_boulder`** — leaves a lava trail as it rolls.
- **`explode_boulder`** — explodes (Terraria-style `TerraStyleExplosion`) on impact.
- **`rolling_cactus_boulder`** — rolling cactus that hurts players (19 HP) and mobs (1.5 HP) via cactus damage; also fires `rolling_cactus_spike` projectiles.
- **`spider_boulder`** — a spider-themed boulder.

## Special boulders

- **`bouncy_boulder`** — bounces off surfaces instead of stopping.
- **`ghoulder`** — a ghostly boulder that phases through certain blocks.
- **`rainbow_boulder`** — cycles colours as it rolls.
- **`follower_boulder`** — follows a target instead of just rolling downhill.
- **`camouflaged_boulder`** — looks like a normal block; lock/unlock with the `is_locked` data component.
- **`giant_boulder`** — a huge boulder with dynamic sizing (array-of-blocks render, `GiantBoulderBlockEntity`).
- **`boulder_bread`** — a boulder-shaped big snack block.

[Back to index](index)