---
title: Telegraph
navigation:
  title: Telegraph
description: The telegraph machine, setting a frequency, and sending dot/dash signals to telegram paper.
---

# Telegraph

The telegraph machine is the "signal" in *Letter, Signal, Phone*: a broadcast channel keyed by frequency, operated one symbol at a time.

## The machine

`telegraph_machine` is a metal block (strength 2.5 / 6.0, requires the correct tool for drops) with its own block entity and screen.

<recipe id="letter_signal_phone:telegraph_machine"/>

**Only one player may operate a given machine at a time.** A second player trying to open it is refused with "This telegraph machine is being used by another player."

## Operating

The screen reports its state through a small set of status strings:

| Status | Meaning |
|:---|:---|
| Frequency set | A frequency has been chosen |
| Cannot start | Transmission cannot begin in the current state |
| Started | Transmission is running |
| Dot | A dot was keyed |
| Dash | A dash was keyed |
| Space | A gap was keyed |
| Ended | Transmission finished |

So a message is built up as a sequence of **dots, dashes and spaces** — Morse-style keying rather than typed text.

## Frequency

Transmissions are tied to a **frequency**. Machines set to the same frequency form one channel, which is how a message reaches receivers rather than only the operating machine.

## Telegram paper

`telegram_paper` (stack size 1) is the received-message item. Its tooltip shows the decoded content as `Telegram: %s`.

Telegram paper has **no crafting recipe** — it comes from the telegraph mechanic itself.

[Back to index](index)
