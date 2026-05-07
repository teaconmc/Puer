---
title: Commands and Configuration
navigation:
  title: Commands and Configuration
description: The /lsp mail commands and the single server config option for voice UDP.
---

# Commands and Configuration

## Commands

All commands live under the root `/lsp`:

| Command | Effect |
|:---|:---|
| `/lsp mail refresh` | Re-syncs your own mailbox binding. |
| `/lsp mail locate` | Locates **your** mailbox. |
| `/lsp mail locate <player>` | Locates the named player's mailbox. |

### refresh

Run by a player on themselves. It reports one of two outcomes:

- "Mailbox binding refreshed; missing or invalid mailboxes cleared."
- "Mailbox binding refreshed."

Use it when a mailbox block was destroyed or the world was edited outside the game and your binding no longer matches reality.

### locate

Reports `<player>'s mailbox is at <coords>`, or "No mailbox found for `<player>`." if that player owns none.

The coordinate display is **permission-sensitive**:

- Ordinary players see plain coordinates, e.g. `[123, 64, -456]`.
- Players with **gamemaster** permission get the coordinates rendered as an aqua, underlined, clickable link that runs `/tp @s x y z`, with the hover text "Click to teleport".

Note the command itself is **not permission-gated** — any player may locate any other player's mailbox and read its coordinates. Only the click-to-teleport convenience is restricted. On a server where mailbox locations are meant to be private, this is worth knowing.

## Configuration

The mod has exactly one config option, in the **server** config:

```
[voice]
  udpPort = 24455
```

| Option | Type | Default | Range |
|:---|:---|:---|:---|
| `voice.udpPort` | int | **24455** | 1 – 65535 |

The bundled comment states it plainly: if you are running a server, you **must expose the corresponding port** to enable the voice calling feature.

This is the only knob in the mod — there is no client config, and nothing else about mail, stamps, telegraphs or owls is configurable. See [Phones and voice calls](07_phones_and_voice_calls.md) for what depends on it.

[Back to index](index)
