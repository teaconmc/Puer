---
title: Sounds and Direction
navigation:
  title: Sounds and Direction
description: Buzzer sounds, signal codes, and the 8-block directional offset.
---

# Sounds and direction

## Signal codes select sounds

For a portable radio the signal code is not a redstone strength — it is an **index into the server's buzzer sound list**. Code `0` is empty (silence); **code 1 is the first configured sound**, code 2 the second, and so on.

Because the list can hold up to 64 entries, codes for sound purposes run well past the redstone range of 15. The same channel can therefore carry a "sound" from a player and a "strength" from a transmitter — a redstone strength of 3 will be heard by a listening player as whichever sound sits at index 3.

That overlap is a feature, not a bug: it is how a redstone contraption can ring a player's radio.

## The two shipped sounds

The mod registers two sound events of its own, `cc_ms:beep` and `cc_ms:fa`, subtitled "Beep" and "Fa". Both appear at the top of the default sound list and both are configured to **loop**.

Everything else in the default list is a vanilla sound — see [06 Configuration](06_configuration) for the full default set.

## The direction hint

When you receive a signal from somebody else, the sound is not played flatly at your own position. It is **offset toward the transmitter**, so you can hear roughly which way the sender is.

| Property | Behaviour |
|:---|:---|
| Maximum offset | **8 blocks** |
| Axis | **horizontal only** — the vertical axis is ignored entirely |
| Longer distances | the offset is clamped to 8 blocks in the sender's direction |
| Your own transmissions | offset is exactly zero, centred on you |
| Different dimension | the **previous offset is kept**, deliberately, as a cue that the sender is unreachable |

Because Y is ignored, a sender directly above or below you sounds like they are at your own position. Do not expect the hint to help you find someone vertically.

The offset is transmitted as two bytes at a scale of 8/127 per unit, so it is a coarse direction hint rather than a precise bearing.

## Looping sounds track the sender; one-shot sounds do not

This is the subtlest behaviour in the mod, and it is worth understanding before you design around it.

- A **looping** sound has its offset **re-synced as positions change**. Walk around while someone holds sneak on a looping sound and the direction hint follows them in real time.
- A **non-looping** sound gets its offset **once, when the signal starts**. It plays out from wherever the sender was at that instant.

So if you want a usable direction finder, configure a looping sound. If you want a simple notification chime, a one-shot sound is cheaper and behaves like a fire-and-forget alert.

The server keeps a cached table of which configured sounds loop, rebuilt whenever the config loads or reloads — so switching a sound between looping and non-looping in the config takes effect on the next config reload without a restart.

## Random pitch

A sound configured with the random-pitch suffix uses the signal's random seed, which is generated fresh each time a non-empty signal is created. Repeated transmissions of the same code therefore sound slightly different each time, while a single sustained transmission keeps one pitch.

## Reading on

- How to change the sound list: [06 Configuration](06_configuration)
- How to pick your sound in-game: [03 Portable radio](03_portable_radio)

[Back to index](index)
