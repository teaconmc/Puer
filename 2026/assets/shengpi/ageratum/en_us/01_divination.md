---
title: "Honeycomb divination"
navigation:
  title: "01 Honeycomb divination"
---

# Honeycomb divination

## Throwing

Hold a **honeycomb** stack with at least **2** items and use it (right-click) while the feature is enabled. The mod consumes exactly **2 honeycombs** from the stack and tosses a pair of honeycomb item entities forward with a small random spread and a slight upward lift.

A throw is cancelled (the honeycombs are not spent) while you are:

- **swimming** or **underwater**,
- **riding** an entity (a passenger),
- a **spectator**, or
- **sleeping**,

or when the `enabled` config option is turned off (see [Config](#config)).

Only the number of honeycombs in the held stack matters; a stack larger than 2 still spends only two.

## Reading the result

When the two honeycombs land (touch the ground and stop moving), each is assigned a random facing — face-up or face-down. The combination decides the fortune:

| First honeycomb | Second honeycomb | Result |
|:---|:---|:---|
| Face-up | Face-up | Xiao (笑脉 / Smile) |
| Face-down | Face-down | Nu (怒脉 / Fury) |
| One up, one down | — | Sheng (圣脉 / Saint) |

The result is shown for a short moment: the two honeycombs are re-rendered as glowing displays above the landing spot (green glow when face-up, red glow when face-down) with the result name floating above them, along with a sound — an experience-orb chime for Sheng, a note chime for Xiao, and a bass note for Nu. The two honeycombs are then dropped as normally pick-up-able items.

::: note
A throw that takes too long to land (about five minutes) is cleaned up on its own, and the honeycombs are discarded rather than left stuck in a loaded chunk.
:::

## Config

The single common config option, `enabled` (default `true`), switches the whole honeycomb divination mechanic on or off. When it is `false`, right-clicking honeycombs does nothing.

[Back to the Shengpi index](index)
