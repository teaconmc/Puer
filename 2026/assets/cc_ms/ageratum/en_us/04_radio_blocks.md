---
title: Radio Blocks
navigation:
  title: Radio Blocks
description: Transmitter and receiver wiring, block states, and how to bind them to a channel.
---

# Radio blocks

Both blocks share the same shell: two boolean block states, a block entity that remembers its channel, and the same binding interaction. They differ only in which direction they convert between redstone and radio.

## Block states

| State | Meaning |
|:---|:---|
| `enabled` | the block is bound to a channel |
| `powered` | the block's current power is above zero |

Both default to `false`, and both drive the block's appearance — there are separate textures for the plain, `enabled`, `powered` and `powered + enabled` combinations on the sides, plus a distinct top texture for the powered state. You can read a whole installation's state at a glance without opening anything.

## Binding to a channel

Use an item on the block. The block accepts a frequency from either of two sources:

1. A **lodestone compass** — its lodestone target is used.
2. A **portable radio** — its currently selected frequency is used.

The interaction is a **toggle**:

- If the frequency differs from the block's current one, the block **joins** it: enchanting-table sound, `enabled` becomes `true`.
- If it is the **same** frequency, the block **leaves** the channel: grindstone sound, `enabled` becomes `false`.

Holding anything else, or a compass that is not locked to a lodestone, does nothing and falls through to normal block interaction.

## Automatic join and leave

Radio blocks register with their channel when loaded and unregister when unloaded. Two practical consequences:

- A receiver whose transmitter's chunk unloads **drops to zero**, because the unloading transmitter pushes an empty signal.
- Reloading the chunk re-joins automatically; you never need to re-bind after a restart. The binding lives in the block entity.

When placed, the block resets its power to zero, sets `enabled` if it already carries a frequency, and schedules an immediate tick so it picks up its surroundings straight away.

## Radio transmitter

The transmitter turns redstone into a radio signal.

- It reads the **best neighbouring signal** — any adjacent redstone source counts, from any side.
- When a neighbour changes it schedules a tick with a **2-tick delay at extremely high priority**, and skips scheduling if a tick is already due this tick. This is the debounce that keeps rapid redstone edges from flooding the channel.
- On an actual power change it transmits that strength (clamped to `0`–`15`) onto the channel, with a fresh random seed.

Because the channel keeps only the newest signal, a transmitter that stops being powered does not merely send zero — it **withdraws** its entry, letting an older transmitter's value resurface.

## Radio receiver

The receiver turns a radio signal back into redstone.

- Its power comes from the channel's current signal strength.
- It emits that strength **in all directions**, like a redstone block, but only while `powered` is true.
- On any change it triggers a neighbour update so redstone downstream reacts immediately.

## One asymmetry worth knowing

Both blocks report themselves as redstone signal sources, but only the **receiver** actually implements an output. The transmitter claims to be a source and always emits zero. It is harmless — but do not expect a transmitter to power anything next to it just because it is lit up.

## A minimal working setup

1. Bind a transmitter and a receiver to the same lodestone frequency.
2. Put a lever next to the transmitter.
3. Put a redstone lamp next to the receiver.

Flip the lever and the lamp follows, at any distance and across dimensions. Add a second transmitter on the same channel and remember the rule from [02 Channels](02_channels): whichever transmitter changed **last** controls the receiver, regardless of which one is stronger.

[Back to index](index)
