---
title: "Beedi Music"
navigation:
  title: "10 Beedi Music"
items:
  - "beecrasy:buzzer"
  - "beecrasy:beedibox"
  - "beecrasy:flight_of_the_bumble_bee"
  - "beecrasy:flight_of_the_bumble_bee_bits"
  - "beecrasy:seikilos_epitaph"
---

# Beedi Music

<block id="beecrasy:buzzer"/>

<recipe id="beecrasy:crafting/buzzer"/>

The Buzzer is an independent note-block-like device and does not join the Beedibox MIDI or record path. Keep the block above it clear. Right-click cycles pitch and plays, left-click plays directly, and a rising redstone edge also triggers it. Its recipe requires `beecrasy:bumblebee_jasper`, which currently has no output source.

<block id="beecrasy:beedibox"/>

<recipe id="beecrasy:crafting/beedibox"/>

The Beedibox recipe requires `beecrasy:apite`, which currently has no output source. Once obtained, it plays the mod's records: Flight of the Bumblebee, its bit-timbre variant, and Seikilos Epitaph. Each is non-stackable. Place the Beedibox where it can be heard; inserting a record starts playback immediately without another redstone or interaction trigger.

::: note
Debug commands can also trigger MIDI behavior, but they are not part of normal performance and currently have no permission requirement. Public servers should restrict those commands and expose music through blocks and records instead.
:::

[Back to the Beecrasy index](index)
