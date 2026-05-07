---
title: "Commands and Permissions"
navigation:
  title: "06 Commands and Permissions"
---

# Commands and Permissions

## Command root

`/ch` owns the actual command tree, and `/channel` redirects to it. Every current subcommand requires game-master command permission. There are no ordinary-player subcommands.

Command literals are case-sensitive. Preserve the uppercase `OP` in the command below.

## Restricting non-operator speech

`/ch mute_none_OP` toggles server setting `muteNoneOP`. When enabled, the standard server relay drops audio from players without game-master permission and sends clients the OP Only state. Run it again to restore speech for everyone.

The value is written back to server configuration and synchronized when players log in. It is not per-player muting and does not replace client-side individual volume control.

## Resetting Subspace

`/ch reset_subspace` resets the Minecraft server's connection to Subspace. Current code only adds a Not Enabled message when `useSubspace=false` and then still calls reset; running it without relay enabled has no practical benefit.

A reset affects everyone relying on that relay connection. Record logs and configuration first so repeated resets do not hide an address, port, or passphrase problem.

## Device-setting permission

The standard screens have no owner or administrator restriction. A player can empty-hand right-click a Channel block to edit it, and the holder can change a Handheld Microphone. Use map permissions, claims, or another mod to limit physical access in a controlled broadcast system.

More importantly, the current `SetBlockChannelPacket` server handler checks only that the position is loaded and hosts a Channel block entity. It does not validate player distance, interaction permission, or administrator status. The client screen is not an access-control boundary.

::: danger
Public servers should add server-side distance and permission validation for device-setting packets before deployment, or mitigate with trusted clients and controlled areas. Hiding the screen is not enough to protect a channel.
:::

## Current-content discrepancy

The README TODO still calls the walkie-talkie item unfinished, but current source registers and implements `channel:handheld_mic`. These pages follow current registration and routing code. Conversely, README entries for UDP, GRPC, fluid acoustics, and absolute loudness are still unfinished.

[Back to the Channel index](index)
