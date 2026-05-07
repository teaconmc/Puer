---
title: Configuration and Limits
navigation:
  title: 07 Configuration and Limits
---

# Configuration and Limits

## Common Configuration

| Key | Default | Range or purpose |
|:---|:---|:---|
| `launchHeight` | 96 | Ascent height, 10-256 blocks |
| `launchSpeed` | 1.5 | Ascent and initial glide speed, 0.1-10.0 |
| `waitTicks` | 200 | Waiting time, 20-1200 ticks |
| `maxPassengers` | 2 | Additional players, 0-100 |
| `kidnapRange` | 8.0 | Kidnap search radius, 1.0-32.0 blocks |
| `ascentSpeed` | 0.15 | Rise speed while entering hover, 0.01-2.0 |
| `stuckThreshold` | 40 | Ticks blocked before gliding, 5-200 |
| `hoverLift` | 2.0 | Waiting height, 0.5-10.0 blocks |
| `targetMaxRange` | 128.0 | Maximum lock range, 16.0-512.0 blocks |
| `targetLockTicks` | 30 | Time needed to lock, 1-100 ticks |
| `foodCost` | 6 | Initiator food cost, 1-20 |
| `maxKidnapEntities` | 6 | Mixed non-player target counter, 0-100 |
| `allowKidnapPlayers` | true | Whether other players can be kidnapped |

## Client Configuration

| Key | Default | Purpose |
|:---|:---|:---|
| `renderTargeting` | true | Show the gliding target display |
| `renderAdvancedTargeting` | true | Show beams, rings, names, and other advanced effects |
| `waypointRenderDistance` | 96 | World waypoint projection range, 16-4096 blocks |

Bindings can be changed in Controls. Normal Dive defaults to `V`, and Kidnap Dive defaults to `Shift` + `V`.

## Current Boundaries

- The mod has no blocks, custom entities, commands, or recipes.
- The `waitTicks` comment says 100 ticks means 10 seconds, but the actual configured default is 200 ticks.
- Kidnap limits mix players and creatures in one success counter.
- The built-in blacklist is empty and does not automatically exclude bosses.
- With starting points too close together, right-click joining can select another nearby session.
- The key category resource key may not match its language entry, so Controls can show an untranslated category.

[Back to the Skyward Dive index](index)
