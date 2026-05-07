---
title: Game Time versus Real Time
navigation:
  title: 02 Game Time vs Real Time
---

# Game Time versus Real Time

The mode toggle is the single most consequential choice in the mod, and the two options behave completely differently. The enum has exactly two values — `GAME_TICK` and `REAL_TIME` — and the sealed capsule remembers which one you used.

## Game Time

Displayed as **Game Time**. The countdown is measured against the world's own clock, which means:

- It advances **only while the world is running**.
- Closing a single-player world **pauses it**.
- Sleeping through the night, or anything else that moves the world clock forward, **advances it**.
- It is unaffected by how long the save sits untouched on disk.

This is the mode to pick when you want "in-game days from now" semantics — a capsule that opens after a certain amount of *played* time.

## Real Time

Displayed as **Real Time**. The countdown is measured against wall-clock time, which means:

- It advances **whether or not the world is loaded**.
- **Closing the game does not pause it.**
- Sleeping through in-game nights does nothing for it.
- A capsule sealed for one real week is openable one real week later, even if you never launched the game in between.

This is the mode for genuine "open this next month" letters.

## The comparison that matters

| Situation | Game Time | Real Time |
|:---|:---|:---|
| World closed for a month | No progress | **Fully elapsed** |
| Playing a long session | Advances | Advances |
| Sleeping repeatedly | **Advances quickly** | No effect |
| Server running 24/7 | Roughly tracks real time | Tracks real time |
| Single-player, played weekly | Very slow | Normal |

::: warning
**On a single-player world these two can diverge by a lot.** A capsule set to "30 days" in Game Time may take many months of real weekends to open; the same capsule in Real Time opens in exactly 30 days whether you play or not. Neither is wrong — but they are not interchangeable, and **a sealed capsule cannot be switched between them**.
:::

::: tip
On an always-on server the difference shrinks, because the world clock keeps running too. If you are writing capsules for other players on such a server, **Real Time is the more predictable promise** — it means the same thing to everyone regardless of when they log in.
:::

## Sleeping is the sharp edge

Game Time responds to anything that advances the world clock, and **sleeping advances it by a full night in a few seconds**. A group of players cycling through nights can burn through a Game Time countdown far faster than the elapsed session suggests.

If a capsule is meant as a commitment rather than a mechanic, that alone is a reason to prefer Real Time.

## What the capsule stores

The mode is one of four fields inside the `time_capsule:time_capsule_data` component, alongside the items, the message, and the unlock time as a single long value. The unlock time is therefore **interpreted** according to the stored mode — the same number means different things under the two modes, which is exactly why the mode cannot be changed after sealing.

See [Weathering, waxing and technical notes](03_weathering_and_technical_notes) for the full component shape and one caveat about mining sealed capsules.

[Back to index](index)
