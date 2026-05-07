---
title: "Player Controls"
navigation:
  title: "07 Player Controls"
---

# Player Controls

A conversation runs in one of two modes, and the mode decides how much of the game you can still touch.

## Screen Mode and Overlay Mode

| Mode | Set by | Behaviour |
|:---|:---|:---|
| Screen mode | `isScreen: true` | A real GUI screen. The mouse drives the dialogue; normal gameplay is blocked. Debug mode is available. |
| Overlay mode | `isScreen: false` | Drawn over the HUD. You keep playing normally, but several dialogue interactions are unavailable. |

The mode can be fixed in the dialogue file, or switched live with `/chatbox command isScreen <true|false>`. Overlay mode suits ambient or adventure narration; screen mode suits choice-heavy scenes that need reliable clicking.

## Controls

| Input | Effect |
|:---|:---|
| Right-click | Confirm — advance the line or accept the highlighted option |
| Mouse wheel | Move between options |
| Escape | Close the dialogue, when the file allows it |
| Ctrl | Fast-forward |
| F6 | Toggle auto-play |

Escape is gated by the dialogue file's `isEsc`. A file that sets `isEsc: false` cannot be dismissed with Escape, which is how a scripted scene keeps a player in place.

## The Function Buttons

A theme may place up to three buttons, each with built-in art and hover art:

| Button | Effect |
|:---|:---|
| Log | Open the history-log screen |
| Fast-forward | Turn on fast-forward and switch auto-play off |
| Auto-play | Toggle auto-play |

## Fast-Forward and Auto-Play

Fast-forward keeps advancing lines by itself. It stops on any left-click or mouse-wheel input, so a player regains control simply by touching the mouse.

::: info
Clicking the fast-forward *button* does not stop fast-forward — only left-clicking elsewhere or scrolling does. The source notes this as a known rough edge rather than intended behaviour.
:::

Auto-play waits on each finished line for the dialogue file's `autoPlayTick` (default `20` ticks, one second) and then advances. It only turns off when the player clicks the auto-play or fast-forward button, so it survives ordinary clicking. The wait is clamped to at most 20 ticks while counting down.

Whether a line may be fast-forwarded at all also depends on the file's `isHistoricalSkip`, which is what stops a player from skipping text they have not yet seen.

## History Log

The log button opens a scrollable transcript of the conversation so far. Scroll speed comes from the client config's `historicalScrollSpeed`. When the server rewrites the current line — for example to substitute a name — the history entry is rewritten to match, so the log shows what the player actually read.

## Text Speed

Body text types out at `charPerSecond` characters per second, a client option with a wide range (`1`–`721`). It is a personal comfort setting; it never changes what the dialogue says or which options exist.

## Debug Mode

In **screen mode** only, `F3` toggles debug mode. It is intended for laying out themes without editing JSON by hand:

| Input | Effect |
|:---|:---|
| `F3` | Toggle debug mode |
| Hold Shift | Show component borders and the cursor position |
| Hold the modifier | Show the hovered component's information |
| Modifier + left-drag | Move a component |
| Modifier + wheel | Adjust a property; hold Alt to pick which property |
| Modifier + `C` | Copy the hovered component's information |
| Modifier + `R` | Reload data |

Debug mode is also why fast-forward is suppressed while debugging — the two would fight over the same clicks.

::: warning
The debug reload shortcut works by sending the vanilla `/reload` command on your behalf, so it only succeeds if you have permission to run `/reload`. On a server without that permission the shortcut simply does nothing.
:::

[Back to the ChatBox index](index)
