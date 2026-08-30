---
title: "Events and Conditions"
navigation:
  title: "05 Events and Conditions"
---

# Events and Conditions

Render events are how a conversation does something other than print text. They can be attached to a dialogue line, to any theme component, or to an option's `click`.

## Event Shape

```json
{
  "trigger": "on_start",
  "condition": "",
  "type": "PLAY_SOUND",
  "value": "minecraft:block.note_block.bell"
}
```

| Field | Default | Meaning |
|:---|:---|:---|
| `trigger` | `on_start` | When the event fires |
| `condition` | `""` | Whether it is allowed to fire; empty means unconditional |
| `type` | `""` | Which event to run |
| `value` | `""` | The event's argument |

## Triggers

| Trigger | Fires when |
|:---|:---|
| `ON_START` | The line or component begins |
| `ON_END` | It finishes |
| `ON_CLICK` | The component is clicked |
| `TICK` | Every tick while active |
| `CHECK` | On a state re-check |
| `ON_MOUSE_OVER` | The cursor enters the component |
| `ON_MOUSE_OUT` | The cursor leaves it |
| `NONE` | Never fires by itself |

Trigger parsing is deliberately forgiving: the string is upper-cased and matched by substring, so `on_start`, `START` and `onStart` all reach `ON_START`, and mouse triggers are picked by containing `MOUSE` plus `OVER` or `OUT`. An unrecognised trigger logs a warning listing the valid ones and becomes `NONE` — the event is kept but never fires, which is exactly what a silently dead event looks like in game.

## Event Types

| Type | Runs on | Effect |
|:---|:---|:---|
| `COMMAND` | server | Run one or more commands, `;`-separated |
| `MVEL` | client, or server with a `server:` prefix | Evaluate an expression |
| `JUMP` | client | Jump to a line index, a group, or the next line |
| `GOTO_NEXT` | client | Advance one line if allowed |
| `PLAY_VOICE` | client | Play a voice clip for the current line |
| `PLAY_SOUND` | client | Play a sound |
| `STOP_SOUND` | client | Stop a sound |
| `SHOW` | client | Un-hide components |
| `HIDE` | client | Hide components |
| `REPLACE` | client | Hide the current component, then show the named one |
| `LOCK` | client | Lock components |
| `UNLOCK` | client | Unlock components |
| `SET_NORMAL` | client | Reset components to their normal state |
| `SET_AUTOPLAY` | client | Turn auto-play on or off |
| `SCALE` | client | Set the current component's scale |
| `RESTART_ANIMATION` | client | Restart a portrait's animation |
| `PLAY_ANIMATION` | client | Switch a portrait to another animation |

Type matching ignores case. An unknown type logs a warning that lists every registered type and does nothing else, so a typo is visible in the log rather than crashing the conversation.

`REPLACE` differs from `SHOW` only when it is attached to a component: it hides that component first. Attached to a line, where there is no owning component, it behaves exactly like `SHOW`.

## Conditions

A condition decides whether an already-triggered event actually runs. Three forms exist, chosen by prefix:

| Condition form | Where it is evaluated |
|:---|:---|
| empty string | Nowhere — the event always runs |
| starts with `execute` | Server: run as a command; success means "true" |
| starts with `server:` | Server: evaluate as MVEL; a `true` result means "true" |
| anything else | Client: evaluate as MVEL; a `true` result means "true" |

Client-side conditions are cheap and instant. The two server-side forms are not: the client sends the condition string to the server, the server evaluates it, and only then sends a message back that fires the event. That round trip means a server-evaluated condition resolves **a tick or more later** than a client-side one, so do not use one where the visual result must land on the same frame.

::: warning
The `execute` form runs its condition string as a command with Game Master permission, and the `server:` form compiles and evaluates it as MVEL on the server. Both are meant for map authors who control the datapack. See [Networking and Server Notes](10_networking_and_server_notes) for why that matters on a public server.
:::

## Option Unlocking

An option's `unlockCommand` is a condition in exactly the same three forms. Combined with `isLock`, that gives the usual pattern: mark the option `isLock: true`, then give it an `unlockCommand` that becomes true once the player qualifies. The bundled demo uses an inventory check for its locked option, with a `tooltip` explaining the requirement.

`LOCK` and `UNLOCK` events can also flip an option at runtime, and `clientSetChatOption` lets the server relabel, re-tooltip, lock or hide an option by index.

## Custom Event Types

Event types live in a registry keyed by upper-cased name, so an add-on mod can register its own. A registration supplies the client action, whether the server also needs to act, and the server action. Client-only registrations are the common case.

The important half of the contract: when an event declares that it needs the server, the client runs its own half **and** sends a packet so the server runs the server half. Both halves fire for one activation.

[Back to the ChatBox index](index)
