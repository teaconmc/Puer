---
title: Server Administration and Data Packs
navigation:
  title: Server Administration and Data Packs
---

# Server Administration and Data Packs

## Server Configuration

The current version declares one server option, `enableConditionalFriendship`, which defaults to `false`. It controls whether actions must first pass friendship-tree unlock progression. See [Unlock Costs and Data Layout](04_costs_and_data) for the unlock code's exact cost behavior.

After changing server configuration, reload or restart in the actual server environment and let clients receive fresh synchronized state.

## Administration Commands

The command root is `/thatskyinteractions`, with `/tsi` as its short alias. The root requires gamemaster-level command permission. Common subcommands are:

| Command | Effect |
|:---|:---|
| `/tsi friendship unlock <player> <node>` | Request a node unlock; the executor still pays its cost |
| `/tsi friendship reset <player>` | Reset friendship-tree data between executor and target |
| `/tsi friendship complete <player>` | Complete the entire tree between executor and target |
| `/tsi friendship drop` | Clear friendship relationship data held by the executor |
| `/tsi handholding lead <player>` | Make the executor lead the target |
| `/tsi handholding follow <player>` | Make the executor follow the target |
| `/tsi handholding unhold [player]` | Remove one or all handholding relations |
| `/tsi preference voice set <voice>` | Set the executor's call voice |
| `/tsi preference voice set <player> <voice>` | Set a target player's call voice |
| `/tsi preference voice get <player>` | Read a target player's call voice |

Command arguments provide dynamic suggestions: friendship nodes come from the active tree, and voice IDs come from the currently loaded voice data.

::: warning
Friendship commands require a player executor. `friendship unlock` is not a free forced unlock; it uses the same cost and state path as player requests. The current conditional-mode logic can also write state before checking the balance, or skip persistent state entirely; see [Unlock Costs and Data Layout](04_costs_and_data). In addition, a new relationship has an empty state set, while a reset relationship records only its unlocked root. The completion check inspects only recorded states and misclassifies both as already complete, causing `friendship complete` to fail immediately. Back up player data before repairing a relationship with commands, then verify it after both players reconnect.
:::

## Data Pack Directories

| Content | Data path |
|:---|:---|
| Friendship-tree nodes | `data/<namespace>/friendship/tree/<tree>/<node>.json` |
| Paired interaction definitions | `data/<namespace>/interaction/definition/<id>.json` |
| Solo expression definitions | `data/<namespace>/expression/definition/<id>.json` |
| Animation definitions and sources | `data/<namespace>/animation/...` |
| Player call voices | `data/<namespace>/preference/voice/<id>.json` |

Resource IDs need not use only the `thatskyinteractions` namespace, but parent, behavior, interaction, and animation references in each node must resolve to loaded, registered content.

## Reload and Synchronization

The mod registers server data-reload listeners for these managers. On a data-pack synchronization event, the server sends its cached data sets to relevant remote players; clients do not need a separately copied version of the same data pack to read server definitions.

After changing a data pack, perform a normal data-pack reload and check the server log for parse failures. Then use two players to open the friendship tree and expression menu, verifying that node order, icons, costs, levels, and actions match on both clients.

::: warning
The current Java registration code registers no items or blocks. Legacy language keys and textures for clouds, Wing of Light, murals, candle clusters, and editing tools are not obtainable content in the current 2.1.0-rc2 snapshot. Do not create recipes or item bindings for them.
:::

[Back to the That Sky Interactions index](index)
