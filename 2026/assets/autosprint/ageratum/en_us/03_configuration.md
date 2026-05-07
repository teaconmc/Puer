---
title: "Configuration"
navigation:
  title: "03 Configuration"
---

# Configuration

The mod registers a COMMON config (`autosprint-common.toml`) and an in-game config screen, so you can edit it from the mod list.

## Options

| Key | Default | Meaning |
|:---|:---|:---|
| `autoSprint` | `true` | Whether auto-move sprints instead of walking by default |
| `customMessage` | `true` | Whether to show a random hint message when toggling auto-move |

That is the complete set. Both are booleans and take effect immediately.

Setting `autoSprint` to `false` makes auto-move always walk; the mid-run sprint toggle then has no visible effect (see [02 Auto-move behaviour](02_auto_move_behaviour)).

Setting `customMessage` to `false` silences the hint messages entirely — auto-move still works, it just says nothing.

## The hint messages

When `customMessage` is on, toggling auto-move prints one of five slots picked at random, drawn from a separate pool for on and off.

The catch is that the pools contain duplicates. Slots 1, 4, and 5 are all the plain generic line, while slots 2 and 3 are flavour text. In practice each pool has **three distinct messages**, and the plain one appears about three times out of five:

| Pool | Distinct texts |
|:---|:---|
| On | the generic "enabled" line (×3 slots), plus two flavour lines |
| Off | the generic "disabled" line (×3 slots), plus two flavour lines |

The flavour lines are song and meme references, and they differ between languages rather than being direct translations of one another — the English and Chinese files each pick their own quips.

The selection is a fresh random roll each time, so the same message can repeat.

## A commented-out option

The source also contains an `autoJump` option, but both the config entry and its implementation are commented out. It will not appear in your config file or the config screen, and auto-move performs no jumping. Do not expect an auto-jump setting.

## Note on config type

The config is registered as COMMON even though the mod is client-only. This works, but it means the file lives with your common configs rather than the client ones.

[Back to index](index)
