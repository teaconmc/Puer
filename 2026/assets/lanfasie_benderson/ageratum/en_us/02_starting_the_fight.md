---
title: Starting the Fight
navigation:
  title: Starting the Fight
description: Using the Ominous Orb on a Deep Latent Caller, the arena radius component and the five Unforgiven that spawn with the boss.
---

# Starting the Fight

The encounter is started by using **Ominous Orb** (`ominous_orb`) on a **Deep Latent Caller** (`deep_latent_caller`) block.

## Summon conditions

The orb only works when **all** of these hold:

- The clicked block is `deep_latent_caller`. Any other block fails.
- The block **directly above** the caller is empty.
- No `Benderson` entity exists inside a 48 x 18 x 48 box centred on that empty space.

If any check fails, the use is rejected and nothing is consumed.

## What the summon does

On a server, a successful use spawns, one block above the caller:

1. **Five Unforgiven adds** placed around the centre, each with **AI disabled** (`NoAi`) and facing the centre:
   - `unforgiven_indiscretion` at the centre
   - `unforgiven_spoiling` at (+2, +2)
   - `unforgiven_cowardice` at (−2, +2)
   - `unforgiven_ridicule` at (−2, −2)
   - `unforgiven_perfidy` at (+2, −2)
2. **Benderson** (`benderson`) itself, in body state `ENTRANCE` and phase state `arena_entering`.
3. An `ENTITY_PLACE` game event at the summon position.

Then **one orb is consumed** from the stack. The item also has a 5-tick use cooldown.

## Arena radius

The Ominous Orb carries the data component `lanfasie_benderson:arena_radius`, whose **default value is 24**. That value is read when the orb is used and passed to the Benderson constructor, defining the arena for the whole fight. If the component is missing for any reason the code falls back to 24 as well.

Because several of Benderson's attacks sweep the arena, the space inside that radius should be clear and reasonably flat before you start.

## Entrance

Benderson begins in the `arena_entering` phase. From there the state machine moves to `attack` (priority 0) or falls back to `idle` (priority −1). See [Benderson phases](03_benderson_phases.md).

[Back to index](index)
