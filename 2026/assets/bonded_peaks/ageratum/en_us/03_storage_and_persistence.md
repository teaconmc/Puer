---
title: "Storage and persistence"
navigation:
  title: "03 Storage and persistence"
---

# Storage and persistence

## File layout

All persistent state lives under the world's `serverconfig` folder:

| Path | Content |
|:---|:---|
| `<world>/serverconfig/bonded_peaks/players.json` | Known player UUID-to-name cache used when a player is offline. |
| `<world>/serverconfig/bonded_peaks/teams/*.json` | One JSON file per team. |

A team file name is derived from the lower-cased team name with non-safe characters replaced by `_`, truncated to 32 characters, then suffixed with an 8-character hash. Stored team data contains the display name, owner UUID, member UUID list and creation timestamp. Saving also deletes stale team files that no longer correspond to a live team.

Team and player data is loaded when the manager is created and saved after mutating commands or on server stop. Corrupt JSON or invalid UUIDs are logged and skipped; duplicate normalized team names are ignored with a warning.

## Invitations and pending disbands are memory-only

Two parts of the team flow are not persisted:

- Sent but unaccepted invitations are kept only in memory. `invite` does not save them, so a server restart discards them.
- A pending disband confirmation is also memory-only. Logging out clears the owner's pending disband, so an offline owner cannot confirm after reconnecting.

## Invite expiry mismatch

The invitation message says the invitation expires after 60 seconds, and `TeamInvite.EXPIRE_AFTER_MILLIS` is indeed 60000. However, command handlers pass the overworld game tick as the timestamp, while player login cleanup passes real system milliseconds. As a result:

- the normal command flow compares tick differences, not real wall-clock seconds;
- on login, tick-based invitations are normally treated as already expired and removed.

Do not rely on the 60-second countdown as wall-clock expiry in the current version.

## Creation time bug

`create` stores the overworld game tick as `createTime`, but `info` formats it with `Instant.ofEpochMilli`. Since a world tick is a small integer, the displayed "Created at" time is usually near 1970-01-01 rather than the real creation time. Treat the creation timestamp shown by `info` as unreliable.

## Player login behavior

On login, the manager remembers the player's current name, purges expired invitations, and replays still-valid invitations as system messages. On logout, it only removes that player's pending disband request.

[Back to the Bonded Peaks index](index)
