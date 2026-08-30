---
title: Sealing a Capsule
navigation:
  title: 01 Sealing a Capsule
items:
  - time_capsule:time_capsule
---

# Sealing a Capsule

## Getting one

The mod ships **2 recipes** and **8 loot tables** — one per block, so every weathering stage drops itself when mined. Both the item form `time_capsule:time_capsule` and the block form are obtainable in survival.

## The sealing screen

Right-click a placed capsule to open the **Time Capsule** menu. It has more in it than a normal container:

| Element | Purpose |
|:---|:---|
| **25 slots** | The contents to seal (a 5 × 5 grid) |
| **Message field** | Placeholder reads *"Seal a message…"* |
| **Six time fields** | Year, Month, Day, Hour, Minute, Second |
| **Mode toggle** | Switches between **Game Time** and **Real Time** |
| **Seal Time Capsule** | Commits everything above |

All four pieces — items, message, mode and unlock time — are stored together in a single data component, `time_capsule:time_capsule_data`.

::: info
The six time fields are separate inputs rather than a single duration box, which means you set **a moment**, not "an hour from now". What that moment is measured against depends entirely on the mode — see [Game time versus real time](02_game_time_vs_real_time).
:::

## After sealing

The tooltip becomes your only status readout, and it carries two states:

| Tooltip | Meaning |
|:---|:---|
| **Sealed** + `Remaining: N d N h N m N s` | Still counting down |
| **Ready to open** | The moment has passed |

The countdown is live, so a sealed capsule doubles as a visible timer.

## Opening early

You cannot. Interacting with a sealed capsule prints one of five messages at random and nothing else happens:

```
This memory is not yet ready to be unsealed...
You feel it is not yet time.
Perhaps... wait a little longer?
You think it over, and put it back.
But it refused.
```

There is **no command, no config option and no creative-mode override** in the mod to bypass this — it ships zero commands and zero config entries. The only ways past a sealed capsule are to wait, or to lose the contents.

## A practical sequence

1. Place a capsule where it will not be disturbed.
2. Put in what you want to keep, and write the message.
3. Pick the mode **first** — it changes what the numbers mean.
4. Fill in year through second.
5. Press **Seal Time Capsule**.
6. Leave it alone. Check the tooltip when curious.

::: warning
**Decide the mode before you seal, not after.** The mode is part of the sealed component; there is no screen to edit a sealed capsule, so a capsule sealed with the wrong mode can only be waited out.
:::

## Waxing it shut

Applying honeycomb converts the capsule to its waxed variant, which stops weathering. That is purely cosmetic with respect to sealing — **waxing does not affect the countdown** — but it does fix the appearance at the stage you liked. See [Weathering, waxing and technical notes](03_weathering_and_technical_notes).

[Back to index](index)
