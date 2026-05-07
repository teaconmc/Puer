---
title: Channels
navigation:
  title: Channels
description: How a lodestone becomes a frequency, and why a channel only ever outputs one signal.
---

# Channels

## A frequency is a position

A channel is identified by a **`GlobalPos`** — a dimension plus a block position — taken from a lodestone. Internally the mod keeps a single map from that position to a channel object, so two radios tuned to the same lodestone coordinates are on the same channel no matter where in the world they physically are.

Consequences worth knowing:

- **Distance is irrelevant.** A transmitter in the Overworld and a receiver in the End are on the same channel if both were bound to the same lodestone.
- **The lodestone does not have to exist any more.** It is read once when you capture the frequency; nothing revalidates it afterwards.
- **Two lodestones at the same coordinates in different dimensions are different channels**, because the dimension is part of the identity.

## A channel keeps many signals but outputs only the newest

Each channel tracks one signal per transmitter, and keeps them in a stack ordered by recency. Receivers are always handed the **most recently pushed** signal.

The rules that follow from this:

- When a transmitter sends a new signal, its previous signal is discarded and the new one goes to the front. Every receiver immediately gets the new value.
- **The newest transmitter wins.** If transmitter A is holding strength 15 and transmitter B then sends strength 3, receivers output 3 — the higher value does not win, the newer one does.
- When a transmitter stops (goes unpowered, or is unloaded), it sends an empty signal, which **removes its entry**. Receivers then fall back to the next-newest signal still on the stack, not to zero — unless no signals remain.
- A channel with no receivers and no transmitters left is discarded.

This "latest speaker wins" behaviour is the single most important thing to understand before building anything non-trivial. If you need "highest wins", combine the outputs of several receivers on separate channels with vanilla redstone instead.

## Signal values

A signal carries a **byte code**. Code `0` means empty.

- For redstone use the code **is** the strength, clamped to `0`–`15`.
- For portable-radio use the code selects a buzzer sound, so it may run past 15 — up to the number of configured sounds.

When a non-empty signal is created it also gets a random seed, which the client uses for sounds configured with random pitch.

## Joining and leaving

Anything that can be on a channel — a receiver block, a transmitter block, or a player's portable radio session — registers itself with the channel when it joins and unregisters when it leaves.

- A **receiver** immediately receives the channel's current signal on joining, and receives an empty signal on leaving. That is why an unbound receiver reliably drops to zero.
- A **transmitter** immediately pushes whatever it currently has to transmit on joining, and pushes empty on leaving.
- Radio blocks join automatically when their chunk loads and leave automatically when it unloads. **An unloaded transmitter stops holding the channel**, so a redstone contraption that relies on a far-away transmitter needs that chunk kept loaded.

## Reading on

- Handheld endpoint: [03 Portable radio](03_portable_radio)
- Block endpoints: [04 Radio blocks](04_radio_blocks)

[Back to index](index)
