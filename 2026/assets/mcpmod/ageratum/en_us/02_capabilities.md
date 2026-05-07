---
title: What the AI Can Do
navigation:
  title: What the AI Can Do
description: The complete action surface exposed to a connected agent, and the five HTTP endpoints behind it.
---

# What the AI Can Do

The README summarises the mod as **See · Act · Know · Record**. Here is what that means concretely.

## The action surface

`ReflectedInputHandler` is the class the HTTP layer calls into. Its public methods are the complete list of what a connected agent can make your client do:

| Method | Effect |
|:---|:---|
| `click(x, y, button)` | Click at screen coordinates with a chosen mouse button |
| `rightClick()` | Right-click |
| `pressKey(key, holdSeconds)` | Press and hold any key for a duration |
| `hotkey(keys[])` | A key combination |
| `typeText(text)` | Type a string |
| `pasteText(text)` | Paste a string |
| `scroll(clicks)` / `scrollAt(x, y, clicks)` | Scroll, optionally at a position |
| `mouseDrag(x1, y1, x2, y2, button)` | Drag between two points |
| `setViewAngle(yaw, pitch)` | Set the camera orientation absolutely |
| `lookDelta(dYaw, dPitch)` | Turn the camera relatively |
| **`executeCommand(command)`** | **Run any command as the player** |
| `getPlayerInfo()` / `getWorldInfo()` / `debugFields()` | Read state |

That is a complete input device. There is no allow-list of permitted keys, no restriction on which screens can be clicked, and no filter on command text.

::: danger
**`executeCommand` runs with your player's permissions.** On a single-player world or a server where you are an operator, that includes `/op`, `/ban`, `/stop`, `/kill @a` and everything else. The mod does not inspect, filter or log-and-confirm the command string — it passes it through. This is appropriate for a development tool driving a scratch world, and inappropriate anywhere else.
:::

## Execution thread

All input is marshalled onto the render thread via `ReflectedInputHandler::executeOnRenderThread`. This is what makes the clicks real — they go through the same path as your own input rather than poking at game state from a network thread, so anything that works for a human works for the agent.

## The HTTP endpoints

Five contexts are registered on the server:

| Endpoint | Purpose |
|:---|:---|
| `/api/status` | Version, loader, port, pid, uptime — used for auto-discovery |
| `/api/cmd` | The action surface above |
| `/api/screenshot` | Capture the framebuffer, optionally with a coordinate grid |
| `/api/events` | Server-sent events stream for real-time observation |
| `/api/calls` | Call log |
| `/debug` | The human-facing dashboard |

The screenshot endpoint's **coordinate grid** is the piece that makes the rest usable: an agent takes a screenshot with the grid overlaid, reads off where the button is, and sends a click at those coordinates. Without it the model would be guessing pixel positions.

## What it is good at

The intended loop is testing your own mod:

1. Ask the agent to open your GUI.
2. Have it screenshot and describe what it sees.
3. Have it click through a workflow.
4. Have it verify a block or item behaved correctly via `getPlayerInfo` / `getWorldInfo` or a command.

Because everything goes through reflection rather than version-specific APIs, the same agent script works across Minecraft versions — see [How it works](04_how_it_works).

[Back to index](index)
