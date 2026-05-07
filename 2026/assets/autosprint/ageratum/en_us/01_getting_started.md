---
title: "Getting started"
navigation:
  title: "01 Getting started"
---

# Getting started

The whole mod is one key binding. There is nothing to craft and nothing to place.

## The key binding

| Property | Value |
|:---|:---|
| Translation key | `key.autosprint.auto_run` |
| Default binding | **Mouse button 5** |
| Category | `autosprint:category` |
| Conflict context | In-game only |

Rebind it in Options → Controls. Because the binding is registered with an in-game conflict context, it does not fire while a screen or the chat box has focus.

Note that the mod's README says the default is "Mouse-4". The source binds `GLFW_MOUSE_BUTTON_5`, which Minecraft displays as **Mouse 5**. Trust the in-game control list, not the README.

## Toggling auto-move

Press the key once to start auto-moving; press it again to stop. While auto-moving:

- Your character keeps holding the forward key on its own.
- By default it **sprints** rather than walks (configurable — see [03 Configuration](03_configuration)).
- A random hint message appears in chat each time you switch it on or off.

You do not need to hold anything down. Turning and looking around work normally, so you can steer while auto-moving.

## Stopping

There are three ways to end auto-moving, and they are not equivalent:

| Action | Result |
|:---|:---|
| Press the auto-move key again | Stops moving entirely |
| Press **forward** (W) | Auto-move ends but you **keep moving** — you have simply taken over manually |
| Press **back** (S) | Stops moving entirely |

The forward-key case is the useful one: tapping W hands control back to you without interrupting your movement. See [02 Auto-move behaviour](02_auto_move_behaviour) for the exact rules.

## Client-side only

The mod is declared client-only and never talks to the server. That means:

- You can use it on any server without the server installing anything.
- It does not appear in any server-side mod list requirement.
- All it does is hold your own forward key and set your own sprint flag, exactly as if you were pressing the keys yourself.

[Back to index](index)
