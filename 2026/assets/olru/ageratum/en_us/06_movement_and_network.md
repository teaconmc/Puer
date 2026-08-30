---
title: "Movement Tasks and Network"
navigation:
  title: "Movement Tasks and Network"
---

# Movement Tasks and Network

## Server-side movement manager

Movement-heavy skills do not run arbitrary player teleports on the client. The server assigns a `MovementTask` through `MovementManager`, one task per entity UUID:

- A new task can replace an existing one only when priority rules and replacement protection allow it.
- Death, leaving the level, server rejection and external cancellation stop the current task and send a correction.
- Player-active tasks protect themselves from external cancellation.
- A waiting task times out after 240 ticks (12 seconds).

## Client simulation flow

For Rocket Punch, Rising Uppercut self-push, Field Extraction self-dash, Seismic Slam and Meteor Strike fall, the server sends `olru:start_movement` with a task UUID, task type, velocity, max distance, optional collision damage and an end-velocity flag. The client runs the movement locally and sends `olru:movement_result` when it finishes:

- `taskId`: must match the current server task.
- `claimedPosition`: must be within `maxDistance + 8` blocks of the task start.
- `hitEntityIds`: each entity must be a living entity in the same level and within 16 blocks of the claimed collision position.
- `wallHit` and `facing`: used for impact type and cone direction; facing is normalized horizontally and falls back to the server player’s current look direction.
- `elapsedTicks`: used by Seismic Slam to compute airtime damage.

The server adds a 2.75-block splash radius around a reported hit when collecting nearby valid targets, then teleports the player to the accepted claimed position and completes the task. If the task is cancelled or times out, `olru:stop_movement` tells the client to stop and correct its position.

## Movement task types

| Client task | Source skill |
|:---|:---|
| `ROCKET_PUNCH` | Legacy Prime Rocket Punch |
| `ENTITY_PUSH` | Rising Uppercut self, Field Extraction self-dash, launched mobs |
| `SEISMIC_SLAM` | Legacy Prime Seismic Slam |
| `METEOR_HOVER` | Legacy Prime Meteor Strike aiming phase |
| `METEOR_FALL` | Legacy Prime Meteor Strike descent |

Meteor Strike hover is an exception to “client simulates”: the server keeps the player’s height, horizontal radius and collision state authoritative, and the client only moves within that envelope. A dedicated state payload marks the hover active so the client redirects left-click to `olru:movement_task_action` (`PRIMARY_ATTACK_PRESSED`) for an early fall.

## Skill payloads

The server registers seven payloads under the `"1"` network version:

| Direction | ID | Purpose |
|:---|:---|:---|
| Client to server | `olru:gauntlet_skill` | Normal attack, skill 2, skill 3, ultimate; skill 1 is not sent over this payload |
| Client to server | `olru:movement_result` | Simulated movement completion and hit claims |
| Client to server | `olru:movement_task_action` | Runtime action such as early Meteor Strike fall |
| Server to client | `olru:start_movement` | Begin a client-simulated movement task |
| Server to client | `olru:stop_movement` | Stop and correct a movement task |
| Server to client | `olru:movement_task_state` | Meteor Strike hover state |
| Server to client | `olru:gauntlet_effect` | Visual effects: rocket charge, meteor target, field extraction beam, sedation, nano surge |

Visual effect payloads are broadcast to players within 96 blocks of the effect origin; Meteor Strike target markers are also sent directly to the casting player.

## Authority boundaries

- Left-click, skill keys and the ultimate only request an action. The server handler checks that the main hand still holds an `AbstractGauntletItem` and the skill method rechecks its own state before consuming.
- Hitscan attacks, cones and grenade blasts are evaluated on the server; the client does not send target lists for those skills.
- Movement collisions are the only client-provided hit list, and every claimed entity is revalidated by distance and level before damage.
- Client-sent `elapsedTicks` is trusted within the position validation envelope and directly influences Seismic Slam damage scaling.
- Skill state synchronization uses the player attachment; the client mirror does not tick cooldowns or grant authority.

**Note:** Field Extraction consumes its cooldown on the server as soon as the right-click use begins, not when the release completes. A cancelled hold still spends the skill unless the initial readiness check failed.

[Back to index](index)
