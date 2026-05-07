---
title: "Getting Started"
navigation:
  title: "01 Getting Started"
---

# Getting Started

## Environment and purpose

The current source targets Minecraft `26.1.2` on NeoForge and declares T88 as required. MadParticle contains both server commands and client rendering, packets, and screens, so both the client and server need it in multiplayer.

The mod does not have a conventional progression loop. Its main output is an `/mp` command suitable for command blocks, functions, or administrator scripts. A Tada packages such a command as a handheld performance prop.

## Opening the Designer

Press `Alt+M` by default to open MadParticle Designer. It changes the camera to third-person back view and restores the previous view when closed. The binding can be changed in the vanilla Controls screen.

`Ctrl+M` discards the current Designer instance and creates a fresh one. Use it when the screen state is broken or when the current workspace must be cleared; ordinary opening reuses the existing instance.

## First working workflow

1. Open the Designer and choose an existing particle texture in the particle browser.
2. Fill in lifetime, amount, position, velocity, and appearance in the right parameter panel.
3. Keep the emission period on the left positive and inspect the in-world preview.
4. Use Copy to obtain the complete command.
5. Have a permitted player execute it in chat or a command block.

The preview is generated only on the local client. It does not mean that the server has executed the command; test the final command again at its intended position and viewer scope.

## Command permission

Both `/mp` and `/madparticle` require game-master command permission. An unprivileged player cannot execute them directly or ask the server to create a Tada through the Designer.

Command blocks, functions, and `execute ... run mp ...` remain subject to their respective command-source permissions. A Tada stores a MadParticle command; it is not a general arbitrary-command runner.

## Login welcome screen

The server sends a welcome-screen request when a player logs in. When the client setting `noWelcomeScreen` is `false`, it waits for other screens to close and then opens. Selecting Hide Forever sets that option to `true`. This hides only the welcome screen and does not disable the Designer.

[Back to the MadParticle index](index)
