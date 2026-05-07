---
title: "Server Configuration"
navigation:
  title: "Server Configuration"
---

# Server Configuration

OLRU registers one `ModConfig.Type.SERVER` spec, normally written by NeoForge as `config/olru-server.toml`. It has two top-level groups, `legacy_prime` and `legacy_of_horus`. Values below are defaults from the current source. All values are config-driven at runtime; skill states are rebound to current config when config changes and only runtime counters are preserved.

## Legacy Prime: Rocket Punch

| Key | Default | Range |
|:---|:---|:---|
| `legacy_prime.rocket_punch.cooldownTicks` | 80 | 1..2400 |
| `legacy_prime.rocket_punch.maxChargeTicks` | 40 | 5..200 |
| `legacy_prime.rocket_punch.maxLaunchDistance` | 45.0 | 1..100 |
| `legacy_prime.rocket_punch.maxLaunchSpeed` | 2.25 | 0.1..20 |
| `legacy_prime.rocket_punch.mobDamageMin` | 7.0 | 0..1000 |
| `legacy_prime.rocket_punch.mobDamageMax` | 18.0 | 0..1000 |
| `legacy_prime.rocket_punch.wallBonusDamage` | 1.5 | 0..1000 |
| `legacy_prime.rocket_punch.maxMobLaunchSpeed` | 3.0 | 0.1..20 |
| `legacy_prime.rocket_punch.raycastRange` | 24 | 1..64 |

## Legacy Prime: Rising Uppercut

| Key | Default | Range |
|:---|:---|:---|
| `legacy_prime.rising_uppercut.cooldownTicks` | 80 | 1..2400 |
| `legacy_prime.rising_uppercut.riseHeight` | 2.0 | 1..50 |
| `legacy_prime.rising_uppercut.riseSpeedPlayer` | 1.2 | 0.1..10 |
| `legacy_prime.rising_uppercut.riseSpeedMob` | 1.0 | 0.1..10 |
| `legacy_prime.rising_uppercut.mobDamage` | 10.0 | 0..1000 |
| `legacy_prime.rising_uppercut.frontConeRange` | 5.0 | 0.5..20 |
| `legacy_prime.rising_uppercut.frontConeAngleDegrees` | 60.0 | 10..180 |

## Legacy Prime: Seismic Slam

| Key | Default | Range |
|:---|:---|:---|
| `legacy_prime.seismic_slam.cooldownTicks` | 140 | 1..2400 |
| `legacy_prime.seismic_slam.leapForwardSpeed` | 0.6 | 0.1..10 |
| `legacy_prime.seismic_slam.leapUpSpeed` | 0.65 | 0.1..10 |
| `legacy_prime.seismic_slam.gravity` | 0.12 | 0.01..2 |
| `legacy_prime.seismic_slam.maxTravelTicks` | 60 | 5..200 |
| `legacy_prime.seismic_slam.impactRange` | 10.0 | 0.5..32 |
| `legacy_prime.seismic_slam.impactConeAngleDegrees` | 95.0 | 10..180 |
| `legacy_prime.seismic_slam.minDamage` | 4.0 | 0..1000 |
| `legacy_prime.seismic_slam.maxDamage` | 10.0 | 0..1000 |
| `legacy_prime.seismic_slam.fullDamageAirTicks` | 40 | 1..1200 |
| `legacy_prime.seismic_slam.slowTicks` | 80 | 1..1200 |
| `legacy_prime.seismic_slam.slowAmplifier` | 1 | 0..10 |

## Legacy Prime: Meteor Strike

| Key | Default | Range |
|:---|:---|:---|
| `legacy_prime.meteor_strike.teleportHeightOffset` | 5 | 1..100 |
| `legacy_prime.meteor_strike.hoverTicks` | 60 | 0..200 |
| `legacy_prime.meteor_strike.fallSpeed` | 4.0 | 0.5..20 |
| `legacy_prime.meteor_strike.innerRadius` | 4.0 | 0.5..20 |
| `legacy_prime.meteor_strike.outerRadius` | 10.0 | 1..40 |
| `legacy_prime.meteor_strike.outerDamageMax` | 40.0 | 0..1000 |
| `legacy_prime.meteor_strike.outerDamageMin` | 5.0 | 0..1000 |
| `legacy_prime.meteor_strike.innerDamageMultiplier` | 1.0 | 0..10 |
| `legacy_prime.meteor_strike.chargePercentPerDamage` | 1.0 | 0..100 |

## Legacy Prime: Hand Cannon

| Key | Default | Range |
|:---|:---|:---|
| `legacy_prime.hand_cannon.cooldownTicks` | 12 | 1..1200 |
| `legacy_prime.hand_cannon.maxCharges` | 4 | 1..20 |
| `legacy_prime.hand_cannon.damage` | 8.0 | 0..1000 |
| `legacy_prime.hand_cannon.range` | 20.0 | 1..64 |
| `legacy_prime.hand_cannon.particleCount` | 12 | 0..100 |

## Legacy of Horus: Biotic Round

| Key | Default | Range |
|:---|:---|:---|
| `legacy_of_horus.biotic_round.cooldownTicks` | 60 | 1..1200 |
| `legacy_of_horus.biotic_round.maxCharges` | 6 | 1..20 |
| `legacy_of_horus.biotic_round.effectiveRange` | 36.0 | 1..96 |
| `legacy_of_horus.biotic_round.healAmount` | 4.0 | 0..100 |
| `legacy_of_horus.biotic_round.damage` | 4.0 | 0..100 |
| `legacy_of_horus.biotic_round.particleCount` | 8 | 0..100 |

## Legacy of Horus: Field Extraction

| Key | Default | Range |
|:---|:---|:---|
| `legacy_of_horus.field_extraction.cooldownTicks` | 160 | 1..2400 |
| `legacy_of_horus.field_extraction.maxChargeTicks` | 30 | 5..200 |
| `legacy_of_horus.field_extraction.allyLockRange` | 24.0 | 1..64 |
| `legacy_of_horus.field_extraction.allyConeAngleDegrees` | 70.0 | 5..180 |
| `legacy_of_horus.field_extraction.pullSpeed` | 1.8 | 0.1..10 |
| `legacy_of_horus.field_extraction.selfDashDistance` | 7.0 | 1..32 |
| `legacy_of_horus.field_extraction.selfDashSpeed` | 1.4 | 0.1..10 |
| `legacy_of_horus.field_extraction.healAmount` | 6.0 | 0..100 |
| `legacy_of_horus.field_extraction.protectionTicks` | 60 | 1..600 |

## Legacy of Horus: Sedative Dart

| Key | Default | Range |
|:---|:---|:---|
| `legacy_of_horus.sedative_dart.cooldownTicks` | 120 | 1..2400 |
| `legacy_of_horus.sedative_dart.range` | 28.0 | 1..80 |
| `legacy_of_horus.sedative_dart.damage` | 3.0 | 0..100 |
| `legacy_of_horus.sedative_dart.sleepTicks` | 70 | 1..600 |
| `legacy_of_horus.sedative_dart.bossSleepTicks` | 20 | 0..200 |
| `legacy_of_horus.sedative_dart.flyingDropSpeed` | 1.2 | 0..10 |
| `legacy_of_horus.sedative_dart.particleCount` | 8 | 0..100 |

## Legacy of Horus: Biotic Grenade

| Key | Default | Range |
|:---|:---|:---|
| `legacy_of_horus.biotic_grenade.cooldownTicks` | 360 | 1..2400 |
| `legacy_of_horus.biotic_grenade.throwSpeed` | 1.25 | 0.1..6 |
| `legacy_of_horus.biotic_grenade.throwInaccuracy` | 1.0 | 0..10 |
| `legacy_of_horus.biotic_grenade.explosionRadius` | 4.0 | 0.5..24 |
| `legacy_of_horus.biotic_grenade.healAmount` | 8.0 | 0..1000 |
| `legacy_of_horus.biotic_grenade.regenerationTicks` | 100 | 1..2400 |
| `legacy_of_horus.biotic_grenade.regenerationAmplifier` | 0 | 0..10 |
| `legacy_of_horus.biotic_grenade.damage` | 8.0 | 0..1000 |

## Legacy of Horus: Nano Surge

| Key | Default | Range |
|:---|:---|:---|
| `legacy_of_horus.nano_surge.range` | 16.0 | 1..64 |
| `legacy_of_horus.nano_surge.healAmount` | 8.0 | 0..1000 |
| `legacy_of_horus.nano_surge.emergencyHealAmount` | 12.0 | 0..1000 |
| `legacy_of_horus.nano_surge.emergencyHealthFraction` | 0.3 | 0..1 |
| `legacy_of_horus.nano_surge.buffTicks` | 200 | 1..2400 |
| `legacy_of_horus.nano_surge.healingMultiplier` | 1.35 | 1..10 |
| `legacy_of_horus.nano_surge.regenerationAmplifier` | 0 | 0..10 |
| `legacy_of_horus.nano_surge.damageAmplifier` | 0 | 0..10 |
| `legacy_of_horus.nano_surge.resistanceAmplifier` | 0 | 0..10 |
| `legacy_of_horus.nano_surge.absorptionAmplifier` | 1 | 0..10 |
| `legacy_of_horus.nano_surge.chargePercentPerDamage` | 2.0 | 0..100 |
| `legacy_of_horus.nano_surge.chargePercentPerHealing` | 3.0 | 0..100 |

**Note:** `hand_cannon.cooldownTicks` and `biotic_round.cooldownTicks` use different resource models: Hand Cannon refills one charge per interval, while Biotic Round refills its entire six-round pool once per interval.

[Back to index](index)
