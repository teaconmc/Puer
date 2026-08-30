---
title: "Technical details"
navigation:
  title: "08 Technical details"
---

# Technical details

Reference material for server operators, pack authors, and anyone integrating with the mod.

## Registries

| Kind | ID | Notes |
|:---|:---|:---|
| Entity type | `spitfight:spit` | Extends the vanilla llama spit; `MISC` category, 0.3 × 0.3 hitbox, fire immune |
| Data attachment | `spitfight:player_spit_data` | Serializable and synced to the owning client |
| Key mapping | `key.spitfight.spit` | Default `Z`, Gameplay category |
| GUI layer | `spitfight:spit_bar` | Registered above the vanilla experience-level layer |
| GUI layer | `spitfight:to_face_effect` | Registered below the vanilla chat layer |

There are **no** items, blocks, block entities, menus, recipes, loot tables, advancements, commands, creative tabs, sounds, or particles of the mod's own. The spit reuses the vanilla llama-spit renderer.

## Data pack contribution

The mod ships exactly one data file: it adds `spitfight:spit` to the vanilla `minecraft:redirectable_projectile` entity type tag (with `replace: false`).

## Network payloads

| Direction | ID | Purpose |
|:---|:---|:---|
| Client → server | `spitfight:c2s/player_charge` | Player began charging |
| Client → server | `spitfight:c2s/spit` | Release: carries charge count and the 50-block aim point |
| Client → server | `spitfight:c2s/drink` | Player drank from a water block |
| Server → client | `spitfight:s2c/to_face` | A face hit landed; carries strength for the overlay |
| Server → client | `spitfight:s2c/range` | Pushes the four available-range bounds; sent on login |

All five are registered under protocol version `"1"`.

## Client / server split

Saliva is server-authoritative: the server owns the value, runs regeneration, applies the chat cost, and decides whether a spit is allowed. The client keeps a synced copy purely to draw the HUD.

Two behaviours are client-driven and therefore worth knowing:

- **The chat block is client-side.** Cancelling the outgoing chat happens in a client event. The server still charges 1 saliva for any message it does receive.
- **Drinking and charging are client-initiated.** The client detects the input and the water target, then asks the server to act.

## Persistence

Only `spitCount` is written to the player's data. Charge state is transient and resets naturally. The projectile saves its carried effects list and strength, so a spit that is loaded from disk keeps its payload.

## Implementation notes

- **The mixin config is empty.** `spitfight.mixins.json` is declared in the mod metadata and marked required, with compatibility level `JAVA_25`, but its `mixins` list contains no entries — the mod currently patches nothing.
- **The face-hit angle test is unusual.** It compares the absolute sum of the two head yaws against each individual yaw before deciding which comparison to apply, so the 140-degree threshold is not evaluated symmetrically for all facing combinations. Treat face hits as approximate rather than a precise geometric rule.
- **Client and server track charge separately.** The client counts input ticks (used for spit strength), while the server counts its own charge ticks (used for the suffocation timer). These are independent counters, so heavy lag can make the strength you spend and the suffocation you take diverge.
- **Charging suppresses regeneration** because the tick method takes the charging branch and never reaches the regeneration branch.
- **A commented-out standing-humanoid check** remains in the hit code, indicating an unfinished pose-based branch. It has no runtime effect.
- **The spit is fire immune** and, being a `MISC` entity, is not affected by mob-cap or spawning rules.

## Metadata

| Field | Value |
|:---|:---|
| Author | redColmula55 |
| License | GPL-3.0 |
| Dependencies | `neoforge` and `minecraft` only, both required, both sides |

The mod declares no optional or incompatible dependencies and requires no companion mods.

[Back to index](index)
