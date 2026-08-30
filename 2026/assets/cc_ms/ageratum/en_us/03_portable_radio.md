---
title: Portable Radio
navigation:
  title: Portable Radio
description: The four screen modes, the 16-channel limit, and sending by sneaking.
---

# Portable radio

`cc_ms:portable_radio` is the handheld endpoint. It stacks to 1 and stores everything on item components, so each radio keeps its own channel list and settings.

## Collecting channels

A radio holds up to **16 frequencies**. There are two ways to add one:

- **Use the radio on a lodestone block.** The block must actually be a lodestone; using it on anything else does nothing. On success you hear the lodestone-compass lock sound.
- **Right-click the radio with a lodestone compass in the inventory screen.** Pick up a compass that is locked to a lodestone and secondary-click it onto the radio. The compass is not consumed.

If the frequency is **already in the list**, the radio does not add a duplicate — it **selects** that entry instead, which is a convenient shortcut for switching. If the list is already at 16, you get the "Radio is full of positions" overlay message and a villager "no" sound, and nothing is added.

## The radio screen

Using the radio in hand opens its screen. Four controls are available:

| Mode | Purpose |
|:---|:---|
| **Channel Selection Mode** | Lists held frequencies; click one to join, click the joined one to leave |
| **Channel Deletion Mode** | Lists held frequencies; click one to delete it from the radio |
| **Sound Setting Mode** | Lists the buzzer sounds the **server** offers; click to pick the sound you transmit |
| **Toggle Broadcast State** | Switches transmitting on or off — **off by default** |

Two constraints apply:

- **You can only be joined to one channel at a time.** Joining a new one leaves the old one.
- **You cannot have two radios open at once.** Attempting it shows "Cannot open multiple radios at the same time".

## Only one radio in your inventory can be joined

The server ticks every portable radio in your inventory that has a selected frequency, but only the **first** one becomes your active session. Every other joined radio has its selected frequency **silently cleared**.

There is no warning message for this. If you carry a spare radio that was tuned to something, expect to find it un-joined the next time you look. Keep one radio joined and leave the others unselected.

## Sending: sneak

There is **no key binding to send**. Transmitting is tied directly to your sneak state, checked on the server:

- **Hold sneak** → your radio transmits its configured signal code onto the joined channel.
- **Release sneak** → your radio transmits empty, removing your signal from the channel.

This works while the radio is anywhere in your inventory — it does not need to be held. Broadcast state must be switched on first.

Because the mod re-sends only when the value actually changes, holding sneak transmits once rather than spamming the channel every tick.

## You hear yourself

A portable-radio session registers as **both a receiver and a transmitter** on its channel. Your own transmissions therefore come back to you, played centred on your own position with no directional offset. This is useful confirmation that broadcast is on and you are on the channel you think you are.

## What the components store

| Component | Contents |
|:---|:---|
| `cc_ms:frequencies` | the list of held frequencies, up to 16 |
| `cc_ms:selected_frequency` | the currently joined frequency, if any |
| `cc_ms:signal_code` | the signal code you transmit — i.e. your chosen sound |
| `cc_ms:sound_code` | the sound selection state |

All four are persistent and network-synchronized, so a radio keeps its channel list when dropped, stored in a chest or given to another player.

## Reading on

- Sound behaviour and the direction hint: [05 Sounds and direction](05_sounds_and_direction)
- Binding blocks with a radio: [04 Radio blocks](04_radio_blocks)

[Back to index](index)
