---
title: "Commands"
navigation:
  title: "Commands"
---

# Commands

All commands live under the root `/vw50`.

## Sending

### `/vw50 hand <playerCount> [label]`

Send the item stack in your main hand as an envelope for up to `<playerCount>` players. `playerCount` is `1..256`. The optional `label` becomes the envelope's title (defaults to "Kung Hei Fat Choy" when blank). A non-Creative sender loses the packed hand stack.

## History

### `/vw50 history`

Show up to the 8 most recent envelopes (by creation time) with their id, title, status, and claimed count.

## Permission (requires Game Master level)

Configure a per-player send cooldown or block list. These are stored in the server save and applied to anyone below Game Master level.

- `/vw50 permission cooldown <player> <seconds>` — set that player's send cooldown (`0..3600` seconds).
- `/vw50 permission block <player>` — block a player from sending any envelope (sets cooldown to `0` with the blocked flag).
- `/vw50 permission unblock <player>` — remove the block.

## Repeat limit (requires Game Master level)

Throttle repeat chat messages (used to fight password-spam).

- `/vw50 repeatLimit <maxPerMinute> [minIntervalMs]`
  - `maxPerMinute` `0..120` — max identical repeated messages per minute (`0` disables).
  - `minIntervalMs` `0..60000` — minimum time between two identical messages.

[Back to index](index)
