---
title: Getting Started
navigation:
  title: Getting Started
description: Obtaining both blocks, reading the block face, and the four connection states.
---

# Getting Started

## Obtaining the blocks

**Neither block is craftable.** The mod ships no `recipe/` directory, so use the creative tab (**"Phone Generator"**) or:

```
/give @s phone_generator:generator
/give @s phone_generator:motor_block
```

Both blocks **do** have loot tables and drop themselves when mined. They are tagged `minecraft:mineable/pickaxe` and `needs_stone_tool`, so **a stone pickaxe or better is required** to recover them.

## Placing the generator

Place it and it immediately tries to create a room on the API server. The block's face then shows one of four states, and the on-block text tells you exactly where the process is:

| Face shows | Meaning |
|:---|:---|
| **Connecting…** | Room creation request in flight |
| **Server unreachable** | The HTTP call failed — the API server is down or blocked |
| **Reconnecting…** | Room exists but the Socket.IO link dropped; retrying |
| **Connected** + QR code + **Current level: N** | Working |

::: tip
Those four strings are real translation keys (`screen.phone_generator.connecting` / `api_failed` / `socket_failed` / `connected`), so **the block itself is the diagnostic**. If you see "Server unreachable", the problem is network or server availability — not the block, not placement, and not a missing dependency.
:::

## Scanning the code

Once connected, the face renders a QR code. It encodes a **join URL** — and that URL is built per-player:

```
<joinUrl>&playername=<your name>&uuid=<your UUID>
```

So the code a given player sees identifies that player to the service. Scan it with an ordinary phone camera; what happens on the phone side is the service's business, not the mod's.

::: warning
Because the URL carries your **player name and UUID**, and the default endpoint is a **third-party server over plain HTTP**, anyone able to observe the traffic — or running that server — sees both. This is worth understanding before use; see [Network, privacy and self-hosting](03_network_privacy_and_hosting).
:::

The QR code is generated client-side with error-correction level **L** and a 1-module margin. `qrCodeSize` defaults to **21** (the standard minimum) and accepts 5–100; the renderer caches the matrix per URL, so the code is not regenerated every frame.

If encoding fails the face shows `[QR Error]`.

## Reading the level

When connected, the face also shows **Current level: N**. That number is what the phone side produced, and it is the only input to energy output — see [Power and the fan](02_power_and_fan).

## What a server owner should set up first

1. Decide whether the default third-party endpoint is acceptable, or **point the mod at your own server** with `/phone_generator_server set <url>` (gamemaster only).
2. Confirm the server can reach it outbound — the mod makes **no inbound connections**, so no port forwarding is needed.
3. Tune `energyBufferCapacity` (default 100000 FE) and `pushEnergyPerTick` (default 100) to your pack's power scale.

[Back to index](index)
