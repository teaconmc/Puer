---
title: "Legacy of Horus Skills"
navigation:
  title: "Legacy of Horus Skills"
---

# Legacy of Horus Skills

Legacy of Horus (`olru:legacy_of_horus`) is the support-control gauntlet. Its tooltip calls it “Support control through healing, extraction, sedation, and team buffs.”

| Skill | Key | Resource | Default values |
|:---|:---|:---|:---|
| Biotic Round | Left-click | 6 charges, 60 ticks to refill all | 36 block range, heal 4 / damage 4 |
| Field Extraction | Right-click hold | 160 tick cooldown | 24 block / 70 degree lock, heal 6 |
| Sedative Dart | `Left Shift` | 120 tick cooldown | 28 block range, 70/20 tick sedation |
| Biotic Grenade | `V` | 360 tick cooldown | 4 block splash, heal 8 / damage 8 |
| Nano Surge | `X` | 2% per damage, 3% per ally healing | 16 block radius, buff 200 ticks |

## Friendly targeting

Horus effects use `GauntletHelper.isFriendly`, which returns true for:

- the player themself,
- every `Player` entity, including other players and teammates,
- any entity type in the `olru:player_allies` tag.

The current tag data only lists `minecraft:villager`. All other entities are treated as hostile by Biotic Round, Sedative Dart and Biotic Grenade.

## Biotic Round (normal attack)

Hitscan shot with 36 block reach. A friendly target is healed 4 health; a hostile target takes 4 `olru:legacy_of_horus_biotic_round` damage. The pool starts empty and refills all 6 charges after one 60-tick interval. Healing another friendly entity also adds Nano Surge charge equal to the actual healed amount times 3%.

## Field Extraction (skill one)

Hold right-click for up to 30 ticks. The server-side group is consumed as soon as the hold starts, so the 160-tick cooldown begins while charging.

While held, every friendly entity in the front cone (24 blocks, 70 degrees) is pulled toward the player at `1.8` blocks/tick scaled by `max(0.25, chargePercent)` and receives a short temporary Resistance + Absorption protection. Each tick also sends the beam effect to nearby clients.

On release:

- If at least one ally is locked, each ally is healed `6 * max(0.35, chargePercent)` and receives Resistance I plus Absorption I for 60 ticks.
- If no ally is locked, you dash forward instead: `1.4` blocks/tick over `7 * max(0.35, chargePercent)` blocks.

## Sedative Dart (skill two)

Press `Left Shift` to fire a 28-block hitscan dart with a CRIT trail. Friendly targets are ignored; hostile targets take 3 `olru:legacy_of_horus_sedative_dart` damage and are sedated.

Sedation behavior depends on max health:

- Normal mobs (`maxHealth < 100`): Slowness V, Weakness II and Mining Fatigue II for 70 ticks, plus AI suppression. The previous `NoAI` flag is restored when sedation ends.
- Boss-like targets (`maxHealth >= 100`): Slowness I, Weakness 0 and Mining Fatigue 0 for 20 ticks; AI is not disabled.
- Airborne sedated targets are dragged downward at `1.2` blocks/tick while sedated.

## Biotic Grenade (skill three)

Press `V` to throw the registered `olru:biotic_grenade` projectile, rendered as a thrown splash potion. Default throw speed is `1.25` blocks/tick with inaccuracy `1.0`. The grenade follows gravity and detonates on the first non-miss hit.

The blast is not a vanilla explosion: it collects living entities within a 4-block radius and applies per-entity effects:

- Friendly targets: immediate 8 heal, Regeneration for 100 ticks, heart/villager particles.
- Hostile targets: 8 `olru:legacy_of_horus_biotic_grenade` damage and sneeze/crit particles.
- Healing another friendly entity adds Nano Surge charge at 3% per actual heal point.

## Nano Surge (ultimate)

Nano Surge is a `ConditionalChargeState` ultimate. It gains:

- 2% charge for every point of damage you deal to a non-friendly entity while Legacy of Horus is in the main hand,
- 3% charge for every actual health point restored to another friendly entity.

When used, all friendly entities within 16 blocks plus the player receive:

- immediate 8 heal;
- 12 extra heal and Absorption I for 200 ticks if health is at or below 30% of max;
- Regeneration, Strength and Resistance for 200 ticks;
- a 1.35x incoming healing multiplier for 200 ticks;
- Nano Surge client effects and END_ROD burst particles.

**Note:** because Field Extraction consumes the skill on the server at the start of the hold, interrupted or otherwise invalid releases still spend the cooldown. Also, “friendly” includes every player, so Horus combat skills will not damage other players or teammates.

[Back to index](index)
