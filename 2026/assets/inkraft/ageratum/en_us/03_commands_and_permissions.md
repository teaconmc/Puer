---
title: "Commands and Permissions"
navigation:
  title: "03 Commands and Permissions"
---

# Commands and Permissions

Inkraft adds two command roots and gates them with its own two-level permission abstraction rather than raw vanilla levels.

## The Two Levels

| Level | Meaning | Fabric | NeoForge |
|:---|:---|:---|:---|
| `couldUse` | May drive one's own story | vanilla level `0` (everyone) | permission node `inkraft:use`, default level `0` |
| `isAdmin` | May start, reset, or act on others | vanilla level `2` (gamemaster) | permission node `inkraft:admin`, default level `2` |

::: warning
The two platforms are deliberately different here, and it matters operationally. On **NeoForge** these are real permission nodes registered through `PermissionGatherEvent.Nodes`, so a permissions plugin can grant or revoke `inkraft:use` and `inkraft:admin` independently of op status. On **Fabric** the same two methods are hard-coded vanilla level checks with no node and no hook — a permissions plugin has nothing to attach to, and the only way to grant admin is to give the player level 2. If your permission policy relies on nodes, it applies to Inkraft on NeoForge only.
:::

On NeoForge, when the command source is not a player — the console, a command block, a function — the node lookup is bypassed and the raw command level is checked instead, so automation behaves predictably.

## `/inkraft`

| Command | Permission | Effect |
|:---|:---|:---|
| `/inkraft version` | **none** | Report the engine version |
| `/inkraft start <id>` | `isAdmin` | Start story `<id>` for yourself |
| `/inkraft start <id> <player>` | `isAdmin` | Start story `<id>` for another player |
| `/inkraft next` | `couldUse` | Advance your own story one step |
| `/inkraft next <token> <choice>` | `couldUse` | Answer a choice using its token |
| `/inkraft next <player> <choice>` | `isAdmin` | Answer a choice on another player's behalf |
| `/inkraft current` | `couldUse` | Show your current line |
| `/inkraft current <player>` | `isAdmin` | Show another player's current line |
| `/inkraft reset` | `isAdmin` | Reset your own story state |
| `/inkraft reset <player>` | `isAdmin` | Reset another player's story state |

The split is coherent: anything that reads or advances **your own** story needs only `couldUse`, while anything that starts a story, wipes state, or reaches into **another player's** story needs `isAdmin`. Note that `reset` requires admin even for yourself — resetting is treated as an authoring action, not a player convenience.

`/inkraft version` is the single ungated branch. It reports a version string and nothing more.

### Choice tokens

Choices are answered with a UUID token plus an integer index. The token identifies the specific pending choice, which is what stops a queued or stale click from being applied to a different question than the one the player saw.

## `/variables`

The whole `/variables` root requires `isAdmin`, including every subcommand and every per-player variant:

| Command | Permission | Effect |
|:---|:---|:---|
| `/variables get <name>` | `isAdmin` | Read a story variable |
| `/variables get <name> <player>` | `isAdmin` | Read another player's variable |
| `/variables set <name> <value>` | `isAdmin` | Write a story variable |
| `/variables set <name> <value> <player>` | `isAdmin` | Write another player's variable |
| `/variables unset <name>` | `isAdmin` | Remove a story variable |
| `/variables unset <name> <player>` | `isAdmin` | Remove another player's variable |

The value argument is a greedy string, so a value may contain spaces without quoting.

::: info
Variable inspection being admin-only is the right default: story variables routinely encode quest flags and puzzle answers, so letting players read their own would spoil content. If you want a player-visible variable, surface it through story text instead.
:::

[Back to the index](index)
