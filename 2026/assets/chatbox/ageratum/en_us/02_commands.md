---
title: "Commands"
navigation:
  title: "02 Commands"
---

# Commands

The mod registers a single root, `/chatbox`. The whole root is gated: it requires Game Master permission (level `2`), so ordinary players cannot call any subcommand.

Every subcommand that acts on a player fails with a "target should be a player" message when the command source is not a player — for example when run from a command block or the server console.

## `/chatbox skip`

```
/chatbox skip <Dialogues> <Group> [Index] [Target1] [Target2] ...
```

Starts a conversation for the executing player.

- `Dialogues` — a dialogue identifier; suggestions come from the loaded dialogue files.
- `Group` — a group key inside that file; suggestions come from the groups actually present in the chosen file.
- `Index` — optional zero-based line index inside the group; defaults to `0`.
- `Target1`, `Target2`, … — optional entity arguments, up to 100 of them. They become the conversation's targets and can be read back as `` `<target>` `` / `` `<target2>` `` placeholders and as the `targets` array in MVEL.

Duplicate entities in the target list are skipped, and unresolved target arguments are quietly ignored.

::: warning
`skip` is also the trigger-count gate. It reads the player's remaining count for that dialogue, and when the count is exactly `0` it does **nothing at all** — no dialogue, no message. Otherwise it decrements the count by one and starts the conversation. If a `/chatbox skip` appears to do nothing, check the trigger count before suspecting the file. See [Triggers and Persistence](08_triggers_and_persistence).
:::

## `/chatbox theme`

```
/chatbox theme <Theme>
```

Switches the executing player's active theme; suggestions come from the loaded theme files. This only sends the theme to that one client, so themes are per-player state, not world state.

## `/chatbox open`

```
/chatbox open
```

Re-opens the dialogue box on the client using the identifier, group and index the client last had. If the client has never received a conversation, nothing happens.

## `/chatbox maxTriggerCount`

```
/chatbox maxTriggerCount <Dialogues> <MaxTriggerCount>
/chatbox maxTriggerCount reset
```

Sets the executing player's remaining trigger count for one dialogue, or clears all of that player's recorded counts so the file defaults apply again.

## `/chatbox command`

Client-state helpers, each pushed to the executing player's client:

| Subcommand | Effect |
|:---|:---|
| `command nextDialogue` | Advance one line, if the client currently allows advancing |
| `command autoPlay <true\|false>` | Turn auto-play on or off |
| `command isScreen <true\|false>` | Switch between screen mode and overlay mode |

## `/chatbox mvelTest`

```
/chatbox mvelTest <expression> <onServer>
```

Evaluates an MVEL expression and prints the result to the executing player. `onServer` chooses where evaluation happens: `true` evaluates on the server, `false` sends the expression to the player's client and evaluates it there. This is the intended way to debug expressions before putting them in a file — see [MVEL and Placeholders](06_mvel_and_placeholders).

## What Is Not a Command

Advancing dialogue, choosing options, opening the history log, fast-forwarding and toggling auto-play are all normal client input, not commands. They are covered in [Player Controls](07_player_controls).

Reloading data uses the vanilla `/reload`; the debug-mode reload shortcut simply sends that vanilla command on the player's behalf, so it obeys vanilla `/reload` permissions.

[Back to the ChatBox index](index)
