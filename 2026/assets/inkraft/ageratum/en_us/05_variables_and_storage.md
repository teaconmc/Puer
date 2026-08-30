---
title: "Variables and Storage"
navigation:
  title: "05 Variables and Storage"
---

# Variables and Storage

Story variables persist per player, survive a restart, and are typed. That combination is what lets an ink story act as long-running quest state rather than a one-session conversation.

## Value Types

Inkraft wraps ink values in its own typed hierarchy so they can be serialized:

| Type | Holds |
|:---|:---|
| `IntStoryValue` | Integer |
| `FloatStoryValue` | Float |
| `BoolStoryValue` | Boolean |
| `StringStoryValue` | String |
| `ArrayStoryValue` | An ordered list |
| `MapStoryValue` | A key/value map |
| `JsonStoryValue` | Arbitrary JSON |
| `InkListStoryValue` | An ink list — ink's own set-like type |
| `StringifyStoryValue` | A value rendered to text |

A serialization type tag travels with each value, so an array of maps round-trips through save and reload with its structure intact rather than collapsing to a string.

::: info
`InkListStoryValue` exists because ink lists are not ordinary arrays — they are ordered enumerations with their own semantics. Keeping them as a distinct type means a story's ink lists behave the same after a server restart as they did before it, which a plain array would not guarantee.
:::

## Per-Player Persistence

Each player has Inkraft player data holding their current story position and their variables. The stored form is a **stored variable** record carrying both the value and its type tag.

This is per player, not per world and not global. Two players running the same story have entirely separate variable sets, so a puzzle answer one player discovers does not leak into another player's run — the opposite of engine mods that keep a single shared variable table.

## Inspecting and Editing

`/variables` is the maintenance interface, and every branch of it requires admin:

| Command | Effect |
|:---|:---|
| `/variables get <name>` | Print a variable's value |
| `/variables set <name> <value>` | Overwrite a variable |
| `/variables unset <name>` | Delete a variable |

Each accepts a trailing player argument to target someone else, also admin-gated. The value is a greedy string argument, so spaces need no quoting.

This is the supported way to repair a stuck quest: read the flag, correct it, and let the player continue. It is also the reason variable names deserve a namespace-like prefix in your own stories — an operator reading `stage` out of context cannot tell which story it belongs to, while `myquest_stage` is self-describing.

## Script-Side Access

From inside the story, the same state is reachable through the variable functions described in [Story Functions](04_story_functions): `setVariable`, `getVariable`, `hasVariable`, `unsetVariable` and `clearVariables`.

Two neighbouring facilities are worth distinguishing from story variables:

- **Scoreboard functions** read and write vanilla scoreboard objectives, which are world state visible to every other datapack and command.
- **Storage functions** read and write vanilla command storage, likewise shared world state.

So a story has three tiers available: private per-player variables, shared scoreboard values, and shared command storage. Use the first for story bookkeeping and the latter two only when you deliberately want other systems to see the value.

::: warning
`clearVariables` removes **all** of the player's story variables, not just the ones your story created. If several stories are installed and they all keep flags in the same per-player table, one story calling `clearVariables` will wipe the others' progress too. Prefer `unsetVariable` on specific names.
:::

## Resetting

`/inkraft reset` clears a player's story state and requires admin even when used on yourself. Use it when a story has been rewritten incompatibly and old saved positions no longer make sense — a reload replaces the story text, but it does not migrate a player who is standing in the middle of the old version.

[Back to the index](index)
