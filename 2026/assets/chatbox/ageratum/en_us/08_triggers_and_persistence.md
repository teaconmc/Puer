---
title: "Triggers and Persistence"
navigation:
  title: "08 Triggers and Persistence"
---

# Triggers and Persistence

Besides `/chatbox skip`, a conversation can start by itself when the player meets an advancement criterion. Both routes share one budget: the per-player trigger count.

## Advancement Criteria

A dialogue file may carry a `criteria` object using the same shape as advancement criteria. The mod hooks the vanilla criterion trigger, so whenever any criterion fires for a player, it checks every registered dialogue criterion and starts the matching conversation.

The practical effect: you can open a conversation the moment a player picks up an item, enters a biome, kills a mob, or anything else vanilla advancements can detect — without a command block or a ticking function.

Criteria are parsed when the server starts and again on datapack sync. A criteria block that fails to parse is logged with the file name and skipped; the rest of the file still works as a normal `/chatbox skip` target.

::: warning
Criteria bind to the file's **first group only**. A file with several groups can therefore auto-trigger just one of them, and which one is not under your control. Give any file that uses `criteria` exactly one group.
:::

## Trigger Counts

`maxTriggerCount` in a dialogue file sets how many times each player may start it. The default `-1` means unlimited.

The gate runs on every start, whether from a command or a criterion:

1. Read the player's remaining count for that dialogue.
2. If it is exactly `0`, do nothing — no dialogue, no message, no error.
3. Otherwise decrement it by one and start the conversation.

Because the check is "not equal to zero" rather than "greater than zero", the default `-1` counts downward forever and never reaches `0`, which is how unlimited is implemented.

A one-shot scene is therefore just `maxTriggerCount: 1`.

## Saved Data

Counts live in a per-world saved data file, `chatbox:chatbox_trigger_count`, keyed by player UUID and dialogue identifier. It is attached to the **Overworld** and shared by the whole server, so counts survive restarts and follow the player between dimensions.

`/chatbox maxTriggerCount <dialogue> <n>` sets one entry; `/chatbox maxTriggerCount reset` clears the executing player's whole record so file defaults apply again.

::: danger
Trigger counts do not currently isolate players from one another. When a player has no record yet, the code hands that player the loader's **shared default table** instead of a fresh copy, and the subsequent decrement writes into that shared table. The observable consequences are that one player consuming a limited dialogue can lower or exhaust the remaining count for other players who have no record yet, and that the recorded defaults drift away from what the datapack declares until the next reload rebuilds them. Until this is fixed, treat `maxTriggerCount` as an unreliable gate on a multiplayer server: prefer a scoreboard or an advancement to make a scene one-shot per player, and use `/chatbox maxTriggerCount reset` if counts look wrong.
:::

Single-player is unaffected in practice, since there is only ever one player to share with.

## Choosing a Gate

| Goal | Recommended mechanism |
|:---|:---|
| Play once per player, single-player map | `maxTriggerCount: 1` |
| Play once per player, multiplayer server | Advancement or scoreboard checked in the option/event condition |
| Play on a world event | `criteria`, one group per file |
| Play on demand from a map's own logic | `/chatbox skip` from a function or command block |

[Back to the ChatBox index](index)
