---
title: "Networking and Server Notes"
navigation:
  title: "07 Networking and Server Notes"
---

# Networking and Server Notes

Extra Interaction uses two payloads, both registered under the `extra_interaction` namespace.

## Payloads

| Payload | Direction | Contents |
|:---|:---|:---|
| `extra_interaction:send_interaction` | client to server | The option name, plus either an entity network ID or a block position |
| `extra_interaction:send_talk_data` | server to client | The full map of loaded entity-talk files, keyed by file identifier |

The interaction payload writes a boolean discriminator followed by either an entity ID or a block position. A target that is neither is written as entity ID `-1`, which resolves to no entity on the server and results in no action.

## Talk Data Sync

Entity-talk data is loaded on the server by the `extra_interaction:entity_talk` reload listener, then broadcast on datapack sync:

- When a single player syncs — on join — the data is sent to that player.
- When there is no single player, for example after a server-side `/reload`, it is sent to every online player.

The client needs this table because the option's condition is evaluated client side to decide whether the row should be drawn as usable.

## Server-Side Trust Model

This section matters before you install the mod on a public server.

::: danger
The server handler for `extra_interaction:send_interaction` looks up the named interaction for the given target and runs its action directly. It performs **no** condition re-test, **no** distance or line-of-sight check, and **no** permission check. A client that sends a crafted payload can therefore invoke any registered interaction, by name, against any block position or entity ID it chooses, regardless of where the player is or whether the interaction's own condition would allow it.
:::

Three consequences follow:

1. **Range is not enforced.** Nothing ties the payload's target to the player's reach or even to a loaded area near the player. An interaction whose action assumes proximity can be triggered from arbitrarily far away.
2. **Conditions are advisory.** The condition decides what the *list* shows and whether the *client* considers a row usable. It is not a server-side gate, because the re-check in the apply path is commented out in the current source.
3. **Datapack commands inherit level 2.** Entity-talk commands execute with Game Master permission and suppressed output, independent of the triggering player's own permission level. See [Entity Talk Datapacks](03_entity_talk).

Combining points 1 and 3: on a server whose datapack defines entity-talk entries, any player who can send the payload can run those level-2 commands, whether or not a matching entity is actually in front of them.

## Recommended Handling

- Treat every `entity_talk` file as trusted operator content, reviewed as carefully as a function or a command block.
- Prefer commands that are safe when run by any player and that use `@s` rather than broad selectors, so a spoofed trigger cannot affect other players.
- If you ship interactions through the [developer API](06_developer_api), validate all preconditions inside the action itself — the player's distance to the target, the target's state, and the player's permission — rather than relying on the condition.
- Keep in mind that the action runs on both sides, so guard server-only effects explicitly.

## What Is Not Present

For completeness, the mod contains none of the following: server or common config, commands, permission nodes, rate limiting on the payload, or any dependency declaration beyond `neoforge` and `minecraft`.

[Back to the Extra Interaction index](index)
