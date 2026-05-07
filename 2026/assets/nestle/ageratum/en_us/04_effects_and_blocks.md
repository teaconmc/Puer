---
title: "Effects and Blocks"
navigation:
  title: "04 Effects and Blocks"
items:
  - "nestle:nestle_block"
  - "nestle:nestle_resistance_block"
---

# Effects and Blocks

## Four effects

| Effect | Behavior |
|:---|:---|
| Nestle | Rushes every tick toward the nearest visible living entity in range |
| Desire Nestle | Pulls every qualifying living entity in range toward the holder |
| Disgust Nestle | Pushes away nearby entities that lack Nestle Resistance |
| Nestle Resistance | Prevents the shared movement helper from moving the holder and stops sharing when the holder is the original victim |

At level I, Nestle uses `nestle_radius`, which defaults to `5` blocks. Desire Nestle and Disgust Nestle use `nestle_radius + 1.5`, or `6.5` blocks by default. Higher amplifiers multiply the search radius by amplifier plus one.

Nestle requires a visible target. Desire Nestle and Disgust Nestle ignore line of sight, so entities behind a wall may still be pulled or pushed. Spectators are not pushed by Disgust Nestle.

Nestle Resistance blocks more than Disgust Nestle. The same movement helper handles the Nestle effect, Desire Nestle's pull, normal and free Nestle rushes, and Nestle Lead pulling. A resistant entity is not moved by any of those paths. Attraction or repulsion emitted by a resistant holder still evaluates each target's own state.

## Nestle Block

<block id="nestle:nestle_block"/>

A living entity stepping on a Nestle Block receives a `20`-tick effect:

- Unpowered: Nestle.
- Redstone-powered: Desire Nestle.

Standing on the block continually refreshes the short effect. Power-on changes immediately; after power is removed, the block schedules an update after about `4` ticks.

## Nestle Resistance Block

<block id="nestle:nestle_resistance_block"/>

A living entity stepping on a Nestle Resistance Block receives:

- Unpowered: `100` ticks of Nestle Resistance.
- Redstone-powered: `20` ticks of Disgust Nestle.

It can therefore serve as a damage-sharing safety floor or, when powered, a device that repels nearby entities. The effects are applied only when an entity steps on the block; the block is not a remote aura.

[Back to the Nestle index](index)
