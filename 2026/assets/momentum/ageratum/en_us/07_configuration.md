---
title: Configuration
navigation:
  title: Configuration
description: The server and client config files, and the dual-gate rule that governs every action.
---

# Configuration

Momentum registers **two** config specs: a `SERVER` spec and a `CLIENT` spec. A config screen is available from the mod list.

## The dual-gate rule

The seventeen action switches are defined **twice** — identically named, under a `function_switches` section, in both the server file and the client file. Every state tests them with a logical AND:

> An action runs only if **both** the server switch **and** the client switch are enabled.

The intent is a clean split of authority:

- The **server** copy is a hard ban. Turning it off removes the action for every player on the server.
- The **client** copy is personal preference. A player may switch off individual actions locally without affecting anyone else.

The practical consequence is the first thing to check when something seems broken: an action that does nothing is usually disabled on the side you did not look at. Both files ship with all seventeen switches set to `true`.

The seventeen switches are: `enableProne`, `enableSlide`, `enableBreakFallReady`, `enableBreakFall`, `enableDodge`, `enableWallClimb`, `enableWallSlide`, `enableWallRun`, `enableWallHang`, `enablePowerJump`, `enableWallKick`, `enableVaultUp`, `enableVaultIn`, `enableWaterRun`, `enableWaterPush`, `enableFallSlow`, `enableAirJump`.

## Server config

Section `function_settings`:

| Key | Type | Default | Range | Notes |
|:---|:---|:---|:---|:---|
| `allowManeuverWithoutThruster` | boolean | `true` | — | When false, nothing works without the Jet Booster |
| `maneuverConsumeHunger` | boolean | `false` | — | Whether maneuvering costs extra hunger |
| `defaultEnableManeuver` | boolean | `true` | — | Initial maneuver state for a brand-new player |
| `maneuverConsumeHungerAmount` | double | `0.01` | 0.0 – 1.0 | Exhaustion per maneuvering tick |
| `boosterStaminaReduction` | double | `1.0` | 0.0 – 1.0 | Stamina discount while the booster is worn; 1.0 is a full waiver |
| `minSlideSpeed` | double | `4.0` | 1.0 – 100.0 | m/s to start a slide; **doubled when not sprinting** |
| `minWallRunSpeed` | double | `4.0` | 1.0 – 100.0 | m/s to start a wall run — the comment claims `6.0` |
| `minWaterSwimSpeed` | double | `10.0` | 1.0 – 100.0 | m/s to keep water skating |
| `slideAccelerationCooldown` | int | `20` | 0 – 200 | ticks |
| `airDodgeCooldown` | int | `40` | 0 – 200 | ticks per dodge charge |
| `airDodgeStorage` | int | `2` | 0 – 10 | bankable dodge charges |
| `airFriction` | double | `0.998` | 0.0 – 1.0 | replaces vanilla's `0.91` |
| `climbBoostMultiplier` | double | `3.0` | 0.0 – 10.0 | ladder speed while sprinting |
| `wallKickAccelerationCooldown` | int | `20` | 0 – 200 | ticks |

Section `function_switches`: the seventeen booleans above, all `true`.

## Client config

Top level:

| Key | Default | Meaning |
|:---|:---|:---|
| `enableCameraOffset` | `true` | Camera tilt and FOV shift |
| `enableDodgeDirDouble` | `true` | Dodge style 1: hold sprint + double-tap direction |
| `enableDodgeSprintClick` | `false` | Dodge style 2: hold direction + press sprint |
| `enableDodgeSprintDouble` | `false` | Dodge style 3: hold direction + double-tap sprint |

Section `key_hints`: the eight overlay options documented in [06 Controls and HUD](06_controls_and_hud.md).

Section `function_switches`: the same seventeen booleans, all `true`.

## Comment-versus-default mismatches

Two options ship with a default that contradicts their own comment. The registered value wins; the comment is stale.

| Key | Comment claims | Actually registered |
|:---|:---|:---|
| `minWallRunSpeed` | `6.0` | **`4.0`** |
| `fadeInSpeed` | `0.08` | **`0.01`** |

If you are tuning wall running, note that the effective bar is lower than the documentation in the file suggests — wall runs start more easily than expected.

## Which side owns which value

Only the switches are duplicated. Every **numeric** tuning value lives in the server file alone, including the ones that feel client-side such as `airFriction` and the dodge cooldown. Clients cannot loosen them locally; the physics numbers are the server's to set.

The client file exclusively owns the camera offset, the three dodge trigger styles, and the hint overlay.

[Back to index](index)
