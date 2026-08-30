---
title: "Channels and Devices"
navigation:
  title: "05 Channels and Devices"
items:
  - "channel:handheld_mic"
  - "channel:mic"
  - "channel:speaker"
  - "channel:speaker_stand"
  - "channel:speaker_hang"
---

# Channels and Devices

## Handheld Microphone

<item id="channel:handheld_mic"/>

The Handheld Microphone stacks to `1`. Right-click it in either hand to open channel settings. A positive channel routes captured nearby speech to speakers with the same number.

It does not capture only its holder. For each talker, the server checks every player within `2` blocks of the talker's eyes. If anyone there holds a positive-channel microphone in either hand, the talker's voice joins that channel. A host can therefore hold a microphone near a guest.

## Fixed Microphone

<block id="channel:mic"/>

The Fixed Microphone captures talkers within `2` blocks of the block center. Empty-hand right-click opens channel settings. Placing another microphone into an existing one without sneaking changes its model from one unit up to four; they still share one block entity and one channel.

The multi-microphone model does not expand capture range. Routes update every `10` server ticks, so allow about half a second after placement, removal, or channel changes.

## Speaker

<block id="channel:speaker"/>

The ordinary Speaker lies horizontally according to placement direction. Empty-hand right-click sets its channel. Voice captured on a matching channel plays from the speaker position, and players within `64` blocks of it become channel recipients.

## Standing Speaker

<block id="channel:speaker_stand"/>

The Standing Speaker uses a full-height stand collision shape. Channel, range, mixing, and spatial-acoustic behavior match the ordinary Speaker; the difference is chiefly its model and placement.

## Hanging Speaker

<block id="channel:speaker_hang"/>

The Hanging Speaker sits toward the corresponding side according to horizontal facing. It uses the same speaker block entity and routing rules and has no separate gain or directional setting.

## Channel rules

Channel `0` is displayed as Not Specified, and negative values or zero do not participate in routing. The slider covers `0` through `64`, but the text field currently accepts any 32-bit integer. Any matching positive integer can route.

The channel receiver table is not separated by dimension. A microphone in the Overworld can relay into a same-numbered speaker near players in the Nether. Normal `64`-block proximity voice remains within the talker's dimension.

::: warning
Current resources contain no recipes or loot tables for these items. They are available only from the Channel creative tab or commands; normal Survival acquisition is not implemented.
:::

[Back to the Channel index](index)
