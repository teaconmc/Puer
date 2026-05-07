---
title: "Registry and Compatibility"
navigation:
  title: "Registry and Compatibility"
---

# Registry and Compatibility

## Registered surfaces

| Registry | IDs |
|:---|:---|
| Items | `olru:legacy_prime`, `olru:legacy_of_horus` |
| Entity types | `olru:biotic_grenade` |
| Creative tabs | `olru:gauntlets_tab` |
| Damage types | 9 `olru:*` types listed below |
| Attachments | `olru:gauntlet_state` |
| Entity type tags | `olru:player_allies` |

The mod does **not** register blocks, block entities, recipes, advancements, sounds, commands, world generation, loot tables or structures. The empty mixin config declares no mixins and there is no access transformer.

## Damage types

All damage types use `scaling: when_caused_by_living_non_player` and `exhaustion: 0.1`. Their registry paths are:

| Damage type | Effect |
|:---|:---|
| `olru:legacy_prime_hand_cannon` | hurt |
| `olru:legacy_prime_rocket_punch` | hurt |
| `olru:legacy_prime_rocket_punch_wall_impact` | hurt |
| `olru:legacy_prime_rising_uppercut` | hurt |
| `olru:legacy_prime_seismic_slam` | hurt |
| `olru:legacy_prime_meteor_strike` | hurt |
| `olru:legacy_of_horus_biotic_round` | hurt |
| `olru:legacy_of_horus_sedative_dart` | poking |
| `olru:legacy_of_horus_biotic_grenade` | hurt |

Death messages are provided in both `en_us` and `zh_cn` language files.

## Friendly entity tag

`olru:player_allies` is a `#entity_type` tag. Its current data file contains only `minecraft:villager`. `GauntletHelper.isFriendly` uses it together with “self” and “any Player” when deciding which targets Legacy of Horus heals or ignores.

## Biotic Grenade entity

`olru:biotic_grenade` is registered in `MobCategory.MISC` with a 0.35 x 0.35 bounding box, 64-block client tracking range and 2-tick update interval. The client renders it with the vanilla thrown-item renderer using splash potion as its default item. It is only spawned by Legacy of Horus Skill 3; there is no spawn egg and it never appears naturally.

## Dependencies and metadata

- Minecraft: required `[26.1.2]`
- NeoForge: required `[26.1.2.36-beta,)`
- No optional, incompatible or cross-mod integration dependencies are declared.
- The development build adds `ToroHealth-Continued 1.5.1-beta` to the local runtime classpath only; it is not a mod dependency in `neoforge.mods.toml`.
- Metadata: author `MarbleGate`, license “See License files”, version `0.0.1-alpha`, Java 25 toolchain.

## Current-source caveats

- Legacy Prime has no friendly-fire filter: its hitscan, cone, slam and meteor damage can hit other players, and its Meteor Strike charge event does not exclude friendly targets.
- Legacy of Horus treats all players as friendly, so its direct combat tools will not damage players unless another mod changes entity behavior.
- Gauntlet input is main-hand-only even though state creation also scans the inventory; holding a gauntlet in the offhand does not give you skill controls.
- No survival acquisition path exists for either gauntlet in the current source; the creative tab is the only registered source.
- Field Extraction spends its skill cooldown when the right-click hold begins on the server.

[Back to index](index)
