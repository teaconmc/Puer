---
title: "One Last Rising Uppercut"
navigation:
  title: "One Last Rising Uppercut (465)"
---

# One Last Rising Uppercut

One Last Rising Uppercut (mod id `olru`, Chinese title 最后的上勾拳) is a NeoForge combat mod built around two unstackable gauntlet items: Legacy Prime (`olru:legacy_prime`) and Legacy of Horus (`olru:legacy_of_horus`). Each gauntlet has five skill slots: a left-click attack, a right-click held skill, two key-bound skills, and a conditional ultimate. Skill state is stored on the player and synced to the client; movement-heavy skills are simulated on the client and revalidated by the server.

The current build is `0.0.1-alpha` for Minecraft 26.1.2 and NeoForge 26.1.2.36-beta.

## Reading order

1. [Gauntlets and skill resources](01_gauntlets_and_resources): the two items, creative access, and how charges, cooldowns and ultimates work.
2. [Legacy Prime skills](02_legacy_prime): Hand Cannon, Rocket Punch, Rising Uppercut, Seismic Slam and Meteor Strike.
3. [Legacy of Horus skills](03_legacy_of_horus): Biotic Round, Field Extraction, Sedative Dart, Biotic Grenade and Nano Surge.
4. [Controls and HUD](04_controls_and_hud): default bindings, the in-game skill HUD and tooltips.
5. [Server configuration](05_configuration): every config key, default value and range.
6. [Movement tasks and network](06_movement_and_network): how movement is simulated and validated over the network.
7. [Registry and compatibility](07_registry_and_compat): registered IDs, damage types and dependency boundaries.

## At a glance

| Topic | Current implementation |
|:---|:---|
| Mod id | `olru` |
| Version | `0.0.1-alpha` |
| Author | MarbleGate |
| Items | `olru:legacy_prime`, `olru:legacy_of_horus` |
| Entities | `olru:biotic_grenade` |
| Creative tab | `olru:gauntlets_tab` |
| Damage types | 9 registered `olru:*` damage types |
| Player attachment | `olru:gauntlet_state` |
| Entity tag | `olru:player_allies` (default: `minecraft:villager`) |
| Config type | server config (`olru-server.toml`) |
| Recipes / commands / blocks / sounds | none registered |

**Note:** neither gauntlet has a crafting recipe, loot entry or other survival acquisition path in the current source. They are available through the `OLRU: Gauntlets` creative tab.
