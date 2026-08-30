---
title: "Security and Server Notes"
navigation:
  title: "06 Security and Server Notes"
---

# Security and Server Notes

Inkraft's command permissions are well built. Its **story** permissions are a different matter, and the distinction is what a server operator needs to understand before installing it.

## The Trust Boundary Is the Datapack

The `/inkraft` command tree is properly gated: starting a story needs admin, and reaching into another player's story needs admin. That protects the *command surface*.

It does not bound what the story itself does once running. A story is compiled ink shipped in a datapack, and it can call the command functions listed in [Story Functions](04_story_functions):

| Story function | Command source permission |
|:---|:---|
| `runCommand` | the triggering player's own permission level |
| `runUnlimitedCommand` | **owner level (4)** |
| `runSilentUnlimitedCommand` | **owner level (4)**, with output suppressed |
| `runServerCommand` | the server's own command source |

::: danger
`runUnlimitedCommand` and `runSilentUnlimitedCommand` construct the command source with **`LevelBasedPermissionSet.OWNER`** — permission level 4, the highest there is. This is not derived from the player and not derived from the admin who started the story. Any datapack that ships a story therefore has unrestricted command execution on your server, and the silent variant additionally suppresses the command's output so nothing appears in chat to indicate it ran.

The practical consequence: **installing a datapack that contains an Inkraft story is equivalent to granting that datapack's author level-4 command access.** Treat a third-party story datapack exactly as you would treat a datapack full of `function` files — because it is strictly more powerful than one.
:::

The naming is honest — a function called `runUnlimitedCommand` is not pretending to be safe — but the escalation is easy to miss if you only audit the command tree and conclude "starting a story needs admin, so this is fine".

### Why `runCommand` is the safe one

`runCommand` builds the source from the player with `ServerPlayer::createCommandSourceStack`, so it inherits that player's actual permission level. A story that only uses `runCommand` cannot do anything the player could not have typed themselves. If you are authoring a story for a public server, use only `runCommand` and you remain inside the player's own authority.

## Reviewing a Story You Did Not Write

Stories arrive as compiled `.ink.json`, which is machine-generated and unpleasant to read, but the function names survive compilation as plain strings. A practical pre-flight check is to search the compiled JSON for the four call names:

| Search for | Meaning if present |
|:---|:---|
| `runUnlimitedCommand` | level-4 execution |
| `runSilentUnlimitedCommand` | level-4 execution with no visible output |
| `runServerCommand` | execution as the server console |
| `runCommand` | execution at the player's own level — the acceptable one |

Also search for `giveItem` and the scoreboard and storage functions if your server's economy depends on them, since those write shared world state.

## What Inkraft Does Not Add

For completeness, and because it narrows the audit surface considerably:

- **No custom network packets.** There is no client-to-server payload of its own to forge; the player drives a story through the ordinary command system, which means normal command permissions and logging apply to that path.
- **No configuration file.** There is no server or client config, so there is no switch to turn off the unlimited command functions. If you do not want them available, you must control which datapacks are installed.
- **No items, blocks or entities**, so no world-interaction surface of its own.

::: warning
Because there is no config, the level-4 story functions cannot be disabled. Datapack review is the only control available. On a server where operators and datapack authors are not the same people, that is a policy decision to make before installation, not after.
:::

## Reload and Live Content Changes

`/reload` fully replaces the story registry — the listener clears it and repopulates from the packs currently loaded. Two consequences worth planning for:

- A story removed from a datapack is genuinely gone after reload, not cached.
- A player mid-story keeps their saved position, which may no longer be valid against a rewritten story. `/inkraft reset <player>` is the intended remedy.

Read failures during load are printed as a stack trace to standard output rather than surfaced in game, so after changing story content check the console rather than assuming a silent `/inkraft start` means the id was mistyped.

## Recommended Posture

| Situation | Recommendation |
|:---|:---|
| Single-player or a map you authored | Use freely, including the unlimited functions |
| Server where you control every datapack | Fine; keep story datapacks under the same review as functions |
| Server accepting third-party story packs | Audit each pack for the three escalating functions first, or do not install Inkraft |
| Public server with untrusted content | Do not install |

Nothing here is a defect report — the escalation is deliberate and named accordingly. It is a statement of where the trust boundary actually sits, which is one layer further out than the command permissions suggest.

[Back to the index](index)
