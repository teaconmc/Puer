---
title: "Story Functions"
navigation:
  title: "04 Story Functions"
---

# Story Functions

Story functions are what let an ink script do more than print prose. They live in the mod's own registry, `inkraft:story_functions`, so an addon can register more.

Each function has a **registry id** (snake_case, used when registering) and a **call name** (camelCase, what you write in ink). The tables below list the call names.

## System: Flow Control

An ink story can have multiple named flows running in parallel.

| Call name | Purpose |
|:---|:---|
| `newFlow` | Create a new flow |
| `flowTo` | Switch to a named flow |
| `flowToDefault` | Switch back to the default flow |
| `removeFlow` | Delete a flow |
| `isInFlow` | Whether the story is in a named flow |
| `isInDefaultFlow` | Whether the story is in the default flow |

## System: Line Pacing

| Call name | Purpose |
|:---|:---|
| `pause` | Pause the story |
| `isEnded` | Whether the story has finished |
| `setLineTicks` | Set the tick delay between lines |
| `unsetLineTicks` | Clear the tick delay, returning to manual advance |

`setLineTicks` is how a story plays itself: with a delay set, lines advance on a timer instead of waiting for `/inkraft next`. `unsetLineTicks` hands control back to the player.

## System: Variables

| Call name | Purpose |
|:---|:---|
| `setVariable` | Store a variable |
| `getVariable` | Read a variable |
| `hasVariable` | Whether a variable exists |
| `unsetVariable` | Remove one variable |
| `clearVariables` | Remove all variables |

## System: Parsing and Debug

| Call name | Purpose |
|:---|:---|
| `parseInt` | String to integer |
| `parseFloat` | String to float |
| `parseBool` | String to boolean |
| `toString` | Value to string |
| `isDebug` | Whether the engine is in debug mode |
| `log` | Write to the log |

## Game: Player and Time

| Call name | Purpose |
|:---|:---|
| `getPlayerName` | The player's name |
| `getRealTime` | Real-world time |
| `getWorldTime` | In-game world time |

## Game: Inventory

| Call name | Purpose |
|:---|:---|
| `hasItem` | Whether the player holds an item |
| `countItem` | How many of an item the player holds |
| `giveItem` | Give the player an item |
| `takeItem` | Remove an item from the player |

## Game: Scoreboard

| Call name | Purpose |
|:---|:---|
| `getScoreboard` | Read a score |
| `setScoreboard` | Set a score |
| `addScoreboard` | Add to a score |
| `subScoreboard` | Subtract from a score, **clamped at zero** |
| `multiplyScoreboard` | Multiply a score |

`subScoreboard` will not go negative — it applies `max(current - value, 0)`. If your story logic depends on detecting a negative balance, use `setScoreboard` with a computed value instead.

## Game: Command Storage

| Call name | Purpose |
|:---|:---|
| `getStorage` | Read from vanilla command storage |
| `setStorage` | Write to vanilla command storage |

## Game: Commands

| Call name | Command source permission |
|:---|:---|
| `runCommand` | the **player's own** permission |
| `runUnlimitedCommand` | **owner level (4)** |
| `runSilentUnlimitedCommand` | **owner level (4)**, output suppressed |
| `runServerCommand` | the **server's** command source |

::: danger
Three of these four escalate beyond the triggering player. `runUnlimitedCommand` and `runSilentUnlimitedCommand` run at owner level regardless of who is playing the story, and the silent variant leaves no chat trace. See [Security and Server Notes](06_security_and_server_notes) for what that means for a server operator.
:::

## Language Helpers

Array and map helper functions are also registered, giving ink scripts collection operations it does not have natively. Combined with the `parse*` and `toString` functions, this is how a story keeps structured state rather than a flat pile of numbers.

## Extending

Because `inkraft:story_functions` is a real registry, another mod can register its own `IStoryFunction`. A function receives the running `StoryInstance` plus its arguments, and the `FunctionArgs` helper provides argument-count and type assertions, so a badly called function fails with a clear error rather than a silent wrong answer.

[Back to the index](index)
