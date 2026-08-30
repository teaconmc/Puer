---
title: Phones and Voice Calls
navigation:
  title: Phones and Voice Calls
description: Registering numbers at the card writer, installing cards, placing calls and the voice settings.
---

# Phones and Voice Calls

The phone system carries **real voice audio over UDP**, not just text.

## Card writer

`card_writer` is where numbers are issued.

<recipe id="letter_signal_phone:card_writer"/>

Using it:

- With a **blank phone card** → a number is registered: "Registered phone number %s."
- With an **already registered card** → the number is released: "Unregistered phone number %s."
- With anything else → "Please use a blank or registered phone card here."
- If the number space is exhausted → "No phone numbers available."

The item tooltip on a card reminds you: *use on the card writer to unregister the number*.

<recipe id="letter_signal_phone:blank_phone_card"/>

## Phone and cards

<recipe id="letter_signal_phone:phone"/>

`phone` stacks to 1 and holds one card:

- **Install** — use the phone while holding a phone card in the **off-hand**: "Phone card %s installed."
- **Remove** — **sneak + use**: "Phone card %s ejected."

Tooltips show `Number: %s`, or "No phone card installed" when empty.

Failure messages you may see:

- "This phone has no usable phone card." — no card installed
- "This phone card is invalid or unregistered." — the card's number is no longer registered

## Calling

The phone screen shows a status line and a call page:

| State | Shown as |
|:---|:---|
| Idle | Idle |
| Dialling out | Calling |
| Being called | Incoming |
| In conversation | Connected |

An incoming call is announced as "Incoming call from %s (%s)." and rings with the `default_ring` sound (subtitle "Phone ringing").

Calls can fail with:

- "That number is currently unavailable."
- "The line is busy."

## Voice settings

The phone screen has a **Settings** button opening microphone and volume controls:

- **Microphone** — device selection, with a "Default" entry
- **Input** volume
- **Output** volume
- **Ringtone** volume

If audio cannot start you get: "Voice chat could not start; please check your microphone."

## Networking requirement

Voice runs over **UDP**, separate from the normal Minecraft connection. On a dedicated server the port must be reachable — see [Commands and configuration](09_commands_and_configuration.md) for the `voice.udpPort` option (default **24455**). If that port is not exposed, calls will not carry audio even though the rest of the phone UI works.

[Back to index](index)
