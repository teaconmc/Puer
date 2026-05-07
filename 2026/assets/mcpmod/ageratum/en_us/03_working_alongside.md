---
title: Working Alongside the Game
navigation:
  title: Working Alongside the Game
description: Releasing the mouse so you can use your IDE without the game auto-pausing.
---

# Working Alongside the Game

There is a practical problem with driving Minecraft from an external tool: the moment you `Alt+Tab` to your IDE, the client loses focus and opens the pause screen. Your agent's next screenshot then shows a pause menu instead of the thing you wanted to test.

The mod solves this with a **mouse release** control, exposed in two places.

## Two ways to release the mouse

| Where | How |
|:---|:---|
| Pause screen | Press `Esc`, then click the MCP overlay's **release mouse** button |
| In the 3D view | Click the MCP overlay button in the **top-right corner** |

Either one detaches the cursor from the game. After that you can switch windows freely — the client will **not** auto-pause on focus loss, and the MCP connection stays alive.

## Why this matters for the workflow

Without it, the intended loop breaks down:

1. You ask your agent to test something.
2. You switch to the AI tool to read its output.
3. The game pauses.
4. Everything the agent sees from that point is the pause menu.

With the mouse released, steps 2–4 collapse into "the game keeps running while you read". This is the difference between the tool being usable and being a curiosity.

::: tip
Release the mouse **before** you start a long agent run, not after. If the agent is mid-workflow when the game pauses, whatever it was doing gets interpreted against a pause screen — and depending on where it clicks, it may end up in Options or back at the title screen.
:::

## The pause-screen route exists for a reason

Note that the pause-screen button is described as letting you "switch windows freely **without re-triggering the pause screen**". That wording is precise: you have already paused by pressing `Esc`, and clicking release is what stops it happening *again* on every subsequent focus loss. The in-game overlay button is the version you use when you have not paused at all.

## What the overlay is not

The overlay is only this control. It is not a status panel, not a log view and not a configuration screen — those live on the `/debug` web page instead (see [Getting started](01_getting_started)). Keeping the in-game surface to a single button is consistent with the mod adding no registry content: it tries to be invisible to the game itself.

[Back to index](index)
