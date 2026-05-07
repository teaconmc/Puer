---
title: "Command reference"
navigation:
  title: "02 Command reference"
---

# Command reference

All commands below are registered for every online player. None of them requires an operator permission level; ownership checks are done inside the handlers.

## Main command

`/bondedpeaks` with no arguments prints three help lines listing the subcommands, the `/bp` chat shortcut, and the team name rule.

| Command | Permission behavior | Result |
|:---|:---|:---|
| `/bondedpeaks create <name>` | any player | Creates a team owned by the executor. |
| `/bondedpeaks invite <player>` | team owner | Sends a team invitation to the target player. |
| `/bondedpeaks accept` | any player | Accepts the newest invitation for the executor. |
| `/bondedpeaks accept <inviter>` | any player | Accepts the invitation from that specific inviter. |
| `/bondedpeaks leave` | non-owner member | Leaves the executor's current team. |
| `/bondedpeaks disband` | team owner | Marks the owner's disband confirmation as pending. |
| `/bondedpeaks confirm` | team owner | Deletes the team after a pending disband request. |
| `/bondedpeaks kick <player>` | team owner | Removes a member from the team. |
| `/bondedpeaks transfer <player>` | team owner | Transfers ownership to a current member. |
| `/bondedpeaks list` | any player | Lists all teams: name, member count and owner name. |
| `/bondedpeaks info` | any player in a team | Shows the executor's own team: owner, count, roster and creation time. |
| `/bondedpeaks info <name>` | any player in a team | Registered with a name argument, but currently ignores it and shows the executor's own team. |
| `/bondedpeaks chat <message...>` | any team member | Sends a team-only message to online members. |

`/bp <message...>` is a direct shortcut for `/bondedpeaks chat <message...>`; it has no other subcommands.

## Team chat format

The chat message is delivered as a system message only to online members of the sender's team, using the localized format `[Bonded · <team>] <display name>: <message>` (English). It is not broadcast to the server and has no cross-team delivery.

## Command facts

- Target players use `GameProfileArgument`, so the target must resolve to exactly one server-known profile.
- The team owner is always stored first in the member roster.
- `list` sorts teams by creation time, then case-insensitive name.
- The `info` creation time is formatted from the stored value, but see [Storage and persistence](03_storage_and_persistence) for the current time handling bug.

[Back to the Bonded Peaks index](index)
