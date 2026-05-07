---
title: "Mine the Spire"
navigation:
  title: "Mine the Spire"
---

# Mine the Spire

Mine the Spire (`minethespire`) ports the combat vocabulary of a deck-building roguelike into survival Minecraft: **relics** worn in dedicated Curios slots, orbiting **Orbs** that attack for you, a **Blocking Value** shield layer that sits under your hearts, and a server-tracked **Combat State** that decides when "entering combat" bonuses fire.

The mod is an early build (version `0.0.1`). A large part of the relic registry is deliberately registered but not yet implemented — this documentation marks exactly which relics do something and which are currently inert placeholders.

## At a glance

| Item | Value |
|:---|:---|
| Mod ID | `minethespire` |
| Mod name | Mine the Spire |
| Package | `forever.pajang.minethespire` |
| Version | 0.0.1 |
| License | GPL v3.0 |
| Minecraft | 26.1.2 |
| NeoForge | 26.1.2.71 |
| Registered items | 79 (67 of them relics) |
| Blocks | none — `ModBlocks` is an empty class |
| Entities | 6 (4 Orb types + 2 projectiles) |
| Mob effects | 11 |
| Potions | 12 |
| Damage types | 3 |
| Custom attributes | 9 |
| Curios slots | `spire_relic` (size 8), `orginal_spire_relic` (size 1) |
| Commands | `/mts combat`, `/mts clearMindBloom`, `/mts orb` |
| Crafting recipes | 1 (`minethespire:spirit`) |
| Optional integrations | Curios, Jade, JEI |

## Reading route

- [01 Getting started](01_getting_started) — what actually exists, and how to obtain it
- [02 Relics & Curios slots](02_relics_and_curios) — the two slots, the relic tables, and what each relic really does
- [03 Orbs](03_orbs) — channelling, the orb limit, and the four orb types
- [04 Mob effects](04_effects) — all 11 custom effects and their registry facts
- [05 Potions & brewing](05_potions_and_brewing) — the 12 potions and their real brewing ingredients
- [06 Damage types & combat](06_damage_and_combat) — the 3 damage types, Thorns, and Combat State
- [07 Blocking Value & HUD](07_hud_and_blocking) — the shield layer, its HUD row, and the Jade readout
- [08 Commands & configuration](08_commands_and_config) — command syntax, permissions, and every config key
- [09 Playing with other mods](09_compat_and_mixins) — Curios relic slots, Jade tooltips, and the 46 relics that are still inert

## Scope note

Everything below is taken from the current source checkout and its generated resources. Where the code contradicts a comment, a translation string, or an obvious intent, the documentation records the code's actual behaviour and flags the mismatch instead of silently correcting it.
