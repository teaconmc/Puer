---
title: "Bonded Peaks"
navigation:
  title: "Bonded Peaks (464)"
---

# Bonded Peaks

Bonded Peaks (mod id `bonded_peaks`, displayed in Chinese as 山河同契) is a server-side team mod. Players create named teams with `/bondedpeaks`, invite others, send team-only chat, and manage ownership through a small set of commands. All data is stored per world under the server's `serverconfig` directory.

The mod registers no items, blocks, entities, recipes, advancements, sounds or network payloads. The whole gameplay surface is the command tree and its in-memory plus on-disk team state.

## Reading order

1. [Team lifecycle](01_team_lifecycle): creating, inviting, joining, leaving, kicking, transferring and disbanding teams.
2. [Command reference](02_commands): every `/bondedpeaks` command and the `/bp` shortcut.
3. [Storage and persistence](03_storage_and_persistence): where team data is saved, name rules, invite expiry and current data quirks.
4. [Compatibility and registry](04_compatibility): the mod's dependency surface and integration with Middle Key Ping.

## At a glance

| Topic | Current implementation |
|:---|:---|
| Mod id | `bonded_peaks` |
| Display name | Bonded Peaks / 山河同契 |
| Main command | `/bondedpeaks` |
| Chat shortcut | `/bp <message...>` |
| Team name limit | 1 to 12 letters or digits, case-insensitive |
| Invite expiry text | 60 seconds |
| Storage | `<world>/serverconfig/bonded_peaks/` |
| Registered items/blocks/entities/recipes | none |
| Config | none |

**Note:** all commands are available to online players without an operator permission check; team ownership rules are enforced inside the command handlers.
