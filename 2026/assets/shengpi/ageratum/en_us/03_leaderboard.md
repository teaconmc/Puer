---
title: "The streak leaderboard"
navigation:
  title: "03 The streak leaderboard"
items:
  - "shengpi:leaderboard"
---

# The streak leaderboard

## The block

<block id="shengpi:leaderboard"/>

The mod registers a single block, `shengpi:leaderboard` (and the matching block item of the same name). Placing it spawns a set of floating **text-display** lines above it, and mining it drops the block itself (it survives explosions). The block is rendered from honeycomb and copper block textures with a gold-tinted map colour.

## What it shows

On placement, and then refreshed every 40 ticks, the leaderboard renders **12 floating text lines**:

- a title line (Streak Leaderboard),
- a separator, and
- the **top 10 players** ranked by **best streak**, highest first.

Each ranking line reads like `#1  <name>  ⧩×<streak>`. Only players with a best streak greater than zero are listed, so an empty board shows no players until someone has a winning run.

::: note
The leaderboard ranks the **best streak**, not the current streak. A player shown on the board does not have to be online to keep their ranking, but the name shown is resolved from the online player list — an offline player may appear under a truncated id instead of their name.
:::

[Back to the Shengpi index](index)
