---
title: "Client configuration"
navigation:
  title: "03 Client configuration"
---

# Client configuration

Middle Key Ping registers a **client-side config** through the config screen. All values below are defaults from the current source.

## Colors

Colors are parsed as `#RRGGBBAA` (alpha optional, defaults to `FF`). Invalid strings fall back to white/gray defaults.

| Field | Default |
|:---|:---|
| `genericColor` | `#999999FF` |
| `genericTextColor` | `#DDDDDDFF` |
| `warningColor` | `#FFFF00FF` |
| `warningTextColor` | `#0000FFFF` |
| `gotoColor` | `#00FF00FF` |
| `gotoTextColor` | `#FF00FFFF` |
| `enemyColor` | `#FF0000FF` |
| `enemyTextColor` | `#00FFFFFF` |

`genericColor` is the marker icon color and also the text background alpha-blend; `genericTextColor` is the distance label text color. The same pattern applies to Warning, Goto and Enemy.

## Distance and count

| Field | Default | Bounds |
|:---|:---|:---|
| `maxPingDistance` | 200 | 16 to 1024 |
| `maxPingCount` | 6 | 1 to 64 |

`maxPingDistance` is the maximum range used by the targeting ray. `maxPingCount` limits simultaneous client markers; the oldest marker is dropped when full.

## Toggles

| Field | Default | Meaning |
|:---|:---|:---|
| `allowPingEmpty` | `true` | When enabled, you can still mark a point when the ray hits nothing or hits beyond the configured distance. When disabled, empty/out-of-range pings are suppressed. |
| `allowPingPicked` | `true` | When enabled, pings can override the current block/entity pick. When disabled, pinging is suppressed while the crosshair is picking a block or entity. |

[Back to the Middle Key Ping index](index)
