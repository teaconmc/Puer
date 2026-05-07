---
title: "Configuration"
navigation:
  title: "06 Configuration"
---

# Configuration

The mod registers a NeoForge server config and a client config. The server categories are `online_settings`, `locomotion_settings`, `swimming_settings` and `wall_movement_settings`.

## Online settings

| Key | Default | Notes |
|:---|:---|:---|
| `removeSpeedLimits` | `false` | Disables most server movement speed limits/rollbacks; intended for multiplayer tuning and described in source as making cheating easier |

## Locomotion settings

| Key | Default | Notes |
|:---|:---|:---|
| `enableOmniSprint` | `true` | Allows sprint from sideways/backward input |
| `enableCrawl` | `true` | Enables crawl with the Roll/Slide key |
| `enableSlide` | `true` | Enables slide and backstep |
| `slideCooldown` | `12` | Slide/backstep cooldown in ticks |
| `slideBoostSpeed` | `0.7` | Slide boost speed |
| `enableTapStrafing` | `true` | Turns the player toward movement while sliding in air |
| `enableLandingRoll` | `true` | Enables landing roll |
| `landingRollWindow` | `6` | Landing roll input window in ticks |
| `enableMoveSpeedIncrease` | `true` | Enables movement speed modifiers |
| `walkSpeedMultiplier` | `1.3` | Walking speed multiplier |
| `sprintSpeedMultiplier` | `1.3` | Sprinting speed multiplier |
| `enableStepHeightIncrease` | `true` | Enables step height modifiers |
| `walkStepHeight` | `0.6` | Walking step height in blocks |
| `sprintStepHeight` | `1.1` | Source default is `1.1`, although the current English tooltip text says `1.0` |
| `enableSafeFallHeightIncrease` | `true` | Extends the safe fall distance |
| `safeFallHeight` | `6.0` | Fall distance treated as safe |

## Swimming settings

| Key | Default | Notes |
|:---|:---|:---|
| `enableShallowSwimming` | `true` | Sprinting through water enters swimming |
| `enableSwimmingBoost` | `true` | Enables swimming boost |
| `swimmingBoostSpeedMultiplier` | `0.4` | Boost speed multiplier |
| `swimmingBoostCooldown` | `12` | Boost cooldown in ticks |
| `enableFreestyle` | `true` | Keeps the player on the water surface |
| `enableStopSwimmingWhenIdle` | `true` | Stops swimming when forward input is absent |

## Wall movement settings

| Key | Default | Notes |
|:---|:---|:---|
| `canClimbMoreBlocks` | `true` | Enables `#parkour:climbable` climbing |
| `enableUpClimbSpeedIncrease` | `true` | Multiplies upward climb speed |
| `upClimbSpeedMultiplier` | `1.25` | Upward climb speed multiplier |
| `enableClimbDownSpeedIncrease` | `true` | Increases downward speed while looking down |
| `downClimbSpeedMultiplier` | `2.0` | Downward climb speed multiplier |
| `enableClimbAccelerationOverTime` | `true` | Ramps climb speed over time |
| `upClimbAccelerationMultiplier` | `2.0` | Upward ramp target over 60 ticks |
| `downClimbAccelerationMultiplier` | `1.5` | Downward ramp target over 60 ticks |
| `climbableBlockNotSlowDown` | `true` | Climbable blocks do not slow horizontal movement on the ground or while jumping |
| `enableWallRun` | `true` | Enables wall run |
| `wallRunDuration` | `30` | Wall run duration in ticks |
| `enableWallSlide` | `true` | Enables wall slide |
| `enableWallJump` | `true` | Enables wall jump |
| `enableArmhang` | `true` | Enables armhang |
| `armhangMoveSpeed` | `0.15` | Lateral armhang movement speed |
| `armhangResetWallClimb` | `true` | Armhang resets wall climb state |
| `enableSupportWallJump` | `true` | Enables support wall jump from armhang |
| `enableSpeedVault` | `true` | Enables speed vault |
| `enableWallClimb` | `true` | Enables wall climb |
| `wallClimbDuration` | `20` | Wall climb duration in ticks |
| `wallClimbSpeed` | `0.2` | Wall climb upward speed |

## Client settings

| Key | Default | Notes |
|:---|:---|:---|
| `enableParkour` | `true` | Local parkour mode preference, toggled and saved by the client |

## Source notes

The config key `swimmingBoostCooldown` is spelled correctly in the generated config tree even though the internal Java field uses `SWMMING_BOOST_COOLDOWN`. Jump strength `+0.01` is always applied and has no configuration key. Static config caches refresh from the `ModConfigEvent` load/reload flow.

[Back to index](index)
