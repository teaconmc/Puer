---
title: "Drinks and the Cup-Count System"
navigation:
  title: "03 Drinks and the Cup Count"
---

# Drinks and the Cup-Count System

This is the mod's central mechanic, and it is more interesting than "drinking applies a potion effect".

## A custom datapack registry

Drinks are defined in **`data/kaleidoscope_tavern/kaleidoscope_tavern/drink_effect/`** — a custom registry with **24 entries**, one per drink. Each file names an item and lists effects **keyed by cup number**:

```json
{
  "item": { "id": "kaleidoscope_tavern:brandy" },
  "effects": {
    "1": [ { "effect": "minecraft:nausea", "duration": 30, "amplifier": 0, "probability": 1.0 } ],
    "2": [ { "effect": "kaleidoscope_tavern:slightly_tipsy", "duration": 45, ... } ],
    "3": [ slightly_tipsy 30, high_heels 80 ],
    "4": [ slightly_tipsy 30, high_heels 240 ],
    "5": [ slightly_tipsy 20, high_heels 720 ],
    "6": [ slightly_tipsy 10, high_heels 2160 ]
  }
}
```

**The keys `"1"` through `"6"` are how many cups you have had.** The same item does six different things depending on where you are in the sequence.

## Read the numbers and the design becomes clear

Take Brandy's progression:

| Cup | `slightly_tipsy` | `high_heels` |
|---:|---:|---:|
| 1 | — (nausea instead) | — |
| 2 | 45 | — |
| 3 | 30 | 80 |
| 4 | 30 | 240 |
| 5 | **20** | 720 |
| 6 | **10** | **2160** |

Two opposite trends run at once:

::: tip
**The tipsy duration goes *down* while the main effect goes *up*.** From cup 3 to cup 6, `slightly_tipsy` shrinks 30 → 30 → 20 → 10 while `high_heels` grows 80 → 240 → 720 → 2160.

That reads as **building a tolerance**: each additional drink leaves you less woozy but carries a longer-lasting effect. It is a genuinely elegant way to express "getting used to it" purely in data, with no code branching.
:::

::: warning
**The first cup is deliberately unpleasant.** Cup 1 of Brandy gives `minecraft:nausea` for 30 ticks and nothing else — no beneficial effect at all. Several drinks share this pattern.

So a player who tries a drink once, feels sick, and concludes the drink is bad **has only seen cup 1**. The system does not reward you until the second or third.
:::

## Not every drink escalates the same way

Compare **Carignan**, which swaps the second effect for healing that scales in *amplifier* rather than duration:

| Cup | `slightly_tipsy` | Other |
|---:|---:|:---|
| 1 | — | nausea 30 |
| 2 | 45 | — |
| 3 | 30 | `instant_health` **amplifier 0** |
| 4 | 30 | `instant_health` **amplifier 1** |
| 5 | 20 | `instant_health` **amplifier 2** |
| 6 | 10 | `instant_health` **amplifier 3** |

`instant_health` has `duration: 0` because it is an instant effect — the escalation is entirely in the amplifier. **Champagne** follows Brandy's `high_heels` pattern instead.

::: info
So the 24 entries are not 24 copies of one curve. Some drinks escalate duration, some escalate amplifier, and which one a drink uses is part of its identity. **Reading a drink's file is the only way to know what its sixth cup does.**
:::

## Two custom effects

| Effect | Role |
|:---|:---|
| `kaleidoscope_tavern:slightly_tipsy` | The intoxication marker, present from cup 2 onward |
| `kaleidoscope_tavern:high_heels` | The escalating effect on several drinks |

The mod also uses vanilla effects directly — `minecraft:nausea` for first cups, `minecraft:instant_health` for Carignan.

## `probability` is a field, and it is 1.0 here

Every effect entry carries `"probability": 1.0` in the files examined, so those applications are certain. **The field exists**, which means a datapack can define chance-based drink effects — but the shipped drinks do not use it for randomness.

## What this means for a datapack author

The registry is fully data-driven, so adding a drink needs no code:

1. Register or reuse an item.
2. Drop a JSON into `drink_effect/` keyed `"1"` … `"6"`.
3. Decide whether your escalation is in duration, amplifier, or probability.

Six cup levels appear to be the shipped convention rather than a hard limit stated in these files; **this page does not assert what happens on a seventh cup**, since the data does not say.

[Back to index](index)
