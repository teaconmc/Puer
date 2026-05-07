---
title: Wings and flight
navigation:
  title: Wings and flight
---

# Wings and flight

## Feather & paper wings

- `feather_wings`, `colored_feather_wings`, `golden_feather_wings` — classic gliding wings from feathers.
- `paper_wings` — a cheap, entry-level glider.

## Magic wings

- `magic_wings` — powered by `magic_membrane` and the `philosopher_stone`.
- `flandre_magic_wings` — a special magic wing variant.

## Synapse wings (late game)

The `synapse_alloy` line gives six wings with distinct speed/behaviour modifiers under `WingsTypes.SYNAPSE_*`: `ikaros_wings`, `nymph_wings`, `astraea_wings`, `chaos_wings`, `hiyori_wings`, `melan_wings`. They use `synapse_wings_recharger` (recharge), `quantum_fuel` (fuel) and `synapse_repair_kit`, and consume flight energy from the `icarus_glider` data component.

## Flight support items

- **`wind_wand`** — a tool that provides wind/flight assistance.
- **Air jars** — `zephir_air_jar`, `nether_air_jar`, `void_air_jar` capture different airs used in crafting and flight.
- **`magical_anemone`** — a plant-based flight aid.

Wings render through the client `WingsLayer`/`WingsModel` and interact with `FlyingEventsHandler`; the `speed` and `throwing` data components drive glide velocity.

[Back to index](index)