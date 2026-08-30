---
title: "Riding players"
navigation:
  title: "Riding players"
---

# Riding players

Riding another player is the core of ManAbove. The mod makes players valid vehicles through a mixin that bypasses the vanilla `EntityType.canSerialize` check for player mounts, and it keeps the ride state in entity attachments so both sides stay synchronized.

## How to ride

1. Point your camera at another player so the crosshair highlights them.
2. Press `R` (default key, category *Man Above*).
3. The game sends a `manabove:ride_player` payload to the server; the server validates the target, starts the ride, and stores the carried player's UUID in the `manabove:vehicle` attachment.
4. Your camera switches to third-person-back automatically while the ride request is sent.

## Choosing a pose

While riding, press `Ctrl+1`–`Ctrl+4` to change where you sit. The chosen pose is stored in the `manabove:ride_pos` attachment (default `1`) and is synced to the server.

| Key | Pose | Rendering |
|:---|:---|:---|
| `Ctrl+1` | Default pose (on the head) | Scaled to 50 %, rotates with the head | 
| `Ctrl+2` | Left shoulder | Scaled to 25 %, offset to the left |
| `Ctrl+3` | Right shoulder | Scaled to 25 %, offset to the right |
| `Ctrl+4` | In front (ride a horse) | Slightly smaller, positioned in front of the carrier |

The rider's hitbox shrinks while riding (the Y offset depends on the pose), and the first-person camera is repositioned to the head or shoulder of the carrier so the view matches the pose.

## What is registered

- `manabove:vehicle` — UUID of the player being ridden, synced, serialized, copied on death.
- `manabove:ride_pos` — current pose number, synced, serialized, copied on death.
- `manabove:pretentious` — plays when a ride starts (two sound variants).
- Network payloads: `manabove:ride_player`, `manabove:fly_player_up`, `manabove:ride_pos` (client → server) and `manabove:sound_data` (server → client).

## Boundaries

- There are no items, blocks, entities, menus, recipes, commands, or world generation in this mod.
- The target must be a real player; riding non-player entities is not part of this mod.
- Actions are server-authoritative: the client only sends requests carrying the target's UUID, and the server performs the ride or launch.

[Back to index](index)