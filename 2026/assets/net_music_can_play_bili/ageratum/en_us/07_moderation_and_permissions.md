---
title: Moderation and Permissions
navigation:
  title: Moderation and Permissions
description: The link whitelist, its six enforcement points, human review, audit logging and permission nodes.
---

# Moderation and permissions

A mod that lets any player make every nearby client fetch arbitrary internet media is a moderation problem. This addon takes that problem seriously, and the result is the most complete moderation layer in this batch.

## The link whitelist

A server can enable a whitelist of permitted Bilibili resources. When enabled, only approved resources can be played.

### It is enforced at six separate points

| Enforcement point | Action it guards |
|:---|:---|
| NetMusic's set-music message | **creating a disc or source head** |
| NetMusic's music player block | playing through the parent mod's own player |
| Modern Turntable block entity | playing on this addon's turntable |
| MP4 playback control packet | starting MP4 playback |
| MP4 playback sync manager | MP4 synchronisation |
| Pad playback control packet | Pad playback |

There is no side door: the check sits both at **creation** time and at every **playback** path, including inside the parent mod through mixins. A refusal produces a message naming what you attempted — "play", "create disc/source head", or "Pad playback".

### How a link is matched

Raw input is **canonicalised** before comparison, so a `BV…` id, an `av…` id and a full URL for the same video resolve to one whitelist entry. You whitelist a video once, not once per link format.

**One nuance matters.** If an input cannot be canonicalised as a Bilibili resource, the whitelist does **not** apply to it. The whitelist governs recognisable Bilibili resources; it is not a general-purpose URL allowlist for whatever else NetMusic accepts. Server owners should not read it as blanket protection against every possible source.

Complementing it, raw Bilibili stream URLs are independently recognised as **forbidden direct URLs**, so the obvious bypass — pasting a CDN link instead of an id — is closed.

### Where the list lives

The whitelist is stored **per world**, as pretty-printed JSON under the world directory in a folder named after the mod. It is loaded lazily and reloaded when the world path changes, and a read failure falls back to an **empty** list with a warning — failing closed rather than open.

## Human review

The whitelist is not only a command-line list. There is a **review interface**, reachable by an operator, backed by four packets:

| Packet | Purpose |
|:---|:---|
| Review | send the current entry list to the reviewing operator |
| Review action | act on an entry — including removal |
| Preview | inspect an entry before deciding |
| CSV export | export the whole list |

CSV export is the detail that shows this was designed for real administration: a list you can take out of the game, read in a spreadsheet, and archive.

## Audit logging

A **playback audit manager** records what is played. Combined with the `sources` command below, an operator can both see what is playing now and review what was played.

## Permission nodes, done properly

Permissions are declared as **NeoForge permission nodes** rather than hardcoded operator-level checks. That means a server can wire them to a permissions plugin and grant them to roles instead of handing out operator status.

| Node | Default | Grants |
|:---|:---|:---|
| `audit.sources` | **operator level 2** | query which turntable/MP4 sources are currently playing |
| `pad.refresh` | **operator level 2** | refresh server-side Pad state |
| `whitelist.manage` | **operator level 4** | manage the whitelist and open the review interface |

Two deliberate bypasses exist, both sensible:

- a source with **no player** — the console or a command block — always passes;
- the **single-player host** always passes, so a solo world needs no permission setup.

A failure to evaluate a permission returns **false**, which again fails closed.

## Commands

A server command root and a short alias are registered, both with the same tree:

| Command | Node required |
|:---|:---|
| `sources [limit <1–100>]` | `audit.sources` |
| `pad refresh` | `pad.refresh` |
| `whitelist add <id or link>` | `whitelist.manage` |
| `whitelist list` | `whitelist.manage` |
| `whitelist remove <id or link>` | `whitelist.manage` |
| `whitelist export` | `whitelist.manage` |
| `whitelist review` | `whitelist.manage` |

A separate **client** command root exists for local operations such as refreshing the Pad map cache — a different thing from refreshing server Pad state, and the server command's reply says so.

Note that command output is written as **hardcoded Chinese text**, so an English-speaking operator will see Chinese responses from these commands. See [08 Technical notes and limits](08_technical_and_limits).

## Rate limiting

A network rate limiter guards the addon's packets. Given how many control and sync packets exist — device ids, playback control, timelines, state mirrors, Pad documents, whitelist review — that is a necessary rather than decorative addition.

## Recommended server posture

| If you run | Do this |
|:---|:---|
| A public server | **enable the whitelist**, grant `whitelist.manage` to trusted staff only, and keep audit logs |
| A private server with friends | the whitelist can stay off; `audit.sources` at level 2 is a reasonable default |
| A single-player world | nothing — you always pass |

And regardless of scale: remember that **each client fetches media itself**, so a permitted source is a source every listener's machine will connect to.

[Back to index](index)
