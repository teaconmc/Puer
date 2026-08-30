---
title: "Configuration"
navigation:
  title: "06 Configuration"
---

# Configuration

Spit Fight has a single COMMON config file, `spitfight-common.toml`, and registers an in-game config screen, so you can edit it from the mod list without leaving the game.

## Gameplay values

| Key | Default | Range | Meaning |
|:---|:---|:---|:---|
| `playerSpitCapacity` | 100 | 1 .. max int | Maximum saliva, and the length of the HUD bar |
| `playerSpitNaturalRegenerationSpeed` | 1 | 0 .. max int | Saliva regenerated per second while idle; `0` disables natural regeneration |
| `playerMaxChargingTicks` | 100 | 20 .. max int | How long you may charge before suffocation damage starts |
| `playerMinSpitCount` | 10 | 1 .. max int | Minimum saliva consumed by a single spit, and the threshold below which you cannot spit |
| `drinkRegenerationSpitCount` | 20 | 0 .. max int | Saliva restored per drink |

## Damage switches

| Key | Default | Meaning |
|:---|:---|:---|
| `friendlyFire` | `false` | Whether entities on the same team can hurt each other |
| `playerFriendlyFire` | `true` | Whether players can hurt each other with spit |

Remember that `playerFriendlyFire` defaults to **enabled**: player-versus-player spitting works out of the box. Set it to `false` on servers where you do not want that.

## Available range

These four keys live under an `availableRange` section split into `start` and `end`:

| Key | Default | Meaning |
|:---|:---|:---|
| `availableRange.start.x` | -100 | Start X of the working area |
| `availableRange.start.z` | -100 | Start Z of the working area |
| `availableRange.end.x` | 100 | End X of the working area |
| `availableRange.end.z` | 100 | End Z of the working area |

The bounds are **exclusive** on all four sides and there is no Y limit — only X and Z are checked. See [07 Available range](07_available_range) for the full behaviour.

## Notes on applying changes

- The config is COMMON, so on a dedicated server the server's file is authoritative for gameplay checks.
- The available range is pushed to each client when they log in. If you edit the range while players are online, they keep the range they received at login until they reconnect, so their HUD and client-side checks can disagree with the server.
- Because the mod resolves config values on each use rather than caching them, most numeric changes take effect immediately for server-side logic.

[Back to index](index)
