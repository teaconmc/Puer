---
title: Configuration
navigation:
  title: Configuration
description: The single server option, its syntax, its limits, and the translation-key caveat.
---

# Configuration

MorSneak registers exactly **one config spec**, of type **`SERVER`**. There is no client config and no common config, so the sound list is dictated by whoever runs the world — every player on a server sees the same list in Sound Setting Mode.

A config screen is available from the mod list.

## The only option: `buzz_sounds`

A list of sound entries, at most **64** long. Each entry is a sound event id with an optional suffix:

```
<sound>[<suffix>]
```

| Suffix | Effect |
|:---|:---|
| *(none)* | play once |
| `_loop` | loop while the signal is held |
| `_random` | randomize pitch per signal |

Entries are validated against the sound-event registry, so a typo or a sound from an uninstalled mod is rejected rather than silently producing silence. The mod's own `cc_ms:beep` and `cc_ms:fa` are always accepted even during early loading.

## The 16 shipped defaults

In order — so index 1 is the first row, which is what signal code 1 selects:

| # | Sound | Suffix |
|--:|:---|:---|
| 1 | `cc_ms:beep` | `_loop` |
| 2 | `cc_ms:fa` | `_loop` |
| 3 | villager celebrate | — |
| 4 | villager no | — |
| 5 | generic eat | — |
| 6 | generic drink | — |
| 7 | armor equip generic | — |
| 8 | stone break | — |
| 9 | note block trumpet (oxidized) | `_random` |
| 10 | creeper primed | — |
| 11 | cat hiss (baby) | — |
| 12 | cat beg for food (baby) | — |
| 13 | note block bell | `_loop` |
| 14 | firework rocket blast | — |
| 15 | anvil place | — |
| 16 | crossbow shoot | — |

Three of the sixteen loop, one has random pitch. Remember from [05 Sounds and direction](05_sounds_and_direction) that only **looping** entries keep updating the direction hint — so out of the box, entries 1, 2 and 13 are your direction-finding sounds.

## Two behaviours to be aware of

**An empty list silently falls back to the defaults.** If you clear `buzz_sounds` entirely, the mod does not run with zero sounds — it uses the built-in 16 instead. There is no way to configure "no sounds at all" through this option.

**A list longer than 64 is truncated with a warning.** The mod logs that too many sounds are configured and uses only the **first 64**. Entries past that point are ignored, so keep your important sounds near the top.

## Reloading

The looping-flag cache is rebuilt whenever the config **loads or reloads**, so switching an entry between `_loop` and plain takes effect without restarting the server. Because this is a `SERVER` config, it lives in the world's `serverconfig` directory and can differ per world.

## A note on translation keys

Most of this mod's translation keys are properly namespaced — blocks, items, sounds and config labels all use `cc_ms.`-prefixed or vanilla-standard keys. Two groups are not:

- **`tab_title`** — the creative tab's title
- **`portable_radio.*`** — the ten radio screen strings

These carry no mod id prefix at all. They work correctly on their own, but any other mod that happens to define the same bare key will collide with them, and whichever resource pack or mod loads later wins. If you see the radio screen showing text from an unrelated mod, this is why.

This is a naming concern, not a functional defect. Both language files are otherwise **fully paired at 23 keys each** — English and Chinese cover exactly the same set, which makes this one of the better-localized mods in the batch.

[Back to index](index)
