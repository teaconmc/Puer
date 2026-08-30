---
title: Adds and Companions
navigation:
  title: Adds and Companions
description: The five Unforgiven, the three Mundane Praisers, Lanfasie, Dawn and the marker entities.
---

# Adds and Companions

Besides the boss, fourteen entity types are registered. All of them have **no loot table**.

## The Unforgiven (sin bearers)

Five hostile `MONSTER` adds, each with a spawn egg in the creative tab. They are spawned with AI disabled at summon time (see [Starting the fight](02_starting_the_fight.md)) and are collectively covered by the `sin_bearer` entity tag ("Sin Bearer").

| Entity | Name | Size (w x h) | Eye height |
|:---|:---|:---|:---|
| `unforgiven_spoiling` | The Unforgiven Spoiling | 0.8 x 1.5 | 1.2 |
| `unforgiven_ridicule` | The Unforgiven Ridicule | 0.6 x 1.8 | 0.6 |
| `unforgiven_perfidy` | The Unforgiven Perfidy | 0.5 x 1.6 | 1.45 |
| `unforgiven_cowardice` | The Unforgiven Cowardice | 0.65 x 0.625 | default |
| `unforgiven_indiscretion` | The Unforgiven Indiscretion | 0.6 x 2.8 | 2.5 |

`unforgiven_indiscretion` broadcasts to nearby entities; the tag `ignore_unforgiven_indiscretion_broadcast` ("Ignore broadcast from The Unforgiven Indiscretion") exempts entity types from that broadcast.

## The Mundane Praisers

Three `CREATURE` companions, all fire-immune, 0.6 x 2.125, immune to wither roses, tracking range 8:

- `mundane_praiser_bard` — Mundane Praiser Bard
- `mundane_praiser_white_mage` — Mundane Praiser White Mage
- `mundane_praiser_red_mage` — Mundane Praiser Red Mage

They match the Mundane Praiser weapon set in [Weapons and equipment](07_weapons_and_equipment.md), and the Bard is the source of the **Mundane Trio** song effects:

| Effect id | Name | Category |
|:---|:---|:---|
| `mundane_trio` | Mundane Trio | Neutral |
| `opening_minuet` | The Opening Minuet (Mundane Trio) | Beneficial, plays its own sound when applied |
| `twin_ballad` | The Twin Ballad (Mundane Trio) | Beneficial, plays its own sound when applied |
| `beloved_paean` | The Beloved One's Paean (Mundane Trio) | Beneficial, plays its own sound when applied |

`summer_septet` ("Summer Septet") is a further neutral effect in the same family.

## Lanfasie and Dawn

- `lanfasie_phantom` — "Phantom Lanfasie". `CREATURE`, fire-immune, 0.6 x 1.8, can spawn far from players, tracking range 12.
- `dawn` — "Dawn". `CREATURE`, fire-immune, 0.6 x 2.375, immune to wither roses, tracking range 8. Paired with `sword_of_dawnwaiter` and `dawnwaiter_totem`.

## Benderson and its projection

- `benderson` — "Benderson the Dawnwaiter of the Fallen Abyss". `MONSTER`, fire-immune, 0.6 x 2.375, immune to wither roses, tracking range 12. It has three alternate display names: "Group Soul of the Deep Latent Airspace" (`deep_latent`), "Forgiven Group Soul" (`forgiven`) and "Unforgiven Group Soul" (`unforgiven`).
- `projected_benderson` — "Benderson the Dawnwaiter of the Fallen Abyss (Projection)". `MISC`, **not saved**, **not summonable**, used by the ProjectMe integration; its name gains the suffix `«Projection»`. See [Compatibility](10_compatibility.md).

## Markers

- `target_marker` — "Target Marker". Size 0 x 0, tracking range 16.
- `delayed_attack_marker` — "Delayed Attack Marker". Size 0 x 0, tracking range 12.

Both are invisible-sized helper entities used to render telegraphs on the ground.

## Arena-wipe immunity

The tag `immune_benderson_wipe_arena` ("Immune to Benderson's arena-wiping attack") exempts entity types from the arena-clearing attack.

[Back to index](index)
